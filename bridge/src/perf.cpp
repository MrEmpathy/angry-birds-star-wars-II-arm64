#include "perf.h"

#include <dlfcn.h>
#include <linux/perf_event.h>
#include <sched.h>
#include <signal.h>
#include <sys/resource.h>
#include <sys/syscall.h>
#include <sys/system_properties.h>
#include <time.h>
#include <ucontext.h>
#include <unistd.h>

#include <algorithm>
#include <cerrno>
#include <array>
#include <atomic>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <map>
#include <string>
#include <unordered_map>
#include <vector>

#include "arena.h"
#include "common.h"
#include "cpu.h"
#include "elf32.h"
#include "hle.h"

namespace perf {
namespace {

constexpr uint64_t kReportNs = 5'000'000'000ull;
constexpr size_t kMaxThunks = arena::kThunkSize / 8;

bool g_on = false;
double g_process_start_ms = 0;  // CLOCK_BOOTTIME at process start

std::array<std::atomic<uint64_t>, kMaxThunks> g_hle_ns{};
std::array<std::atomic<uint32_t>, kMaxThunks> g_hle_calls{};
thread_local uint64_t t_hle_ns = 0;

struct Window {
    uint64_t start_ns = 0;
    uint64_t frames = 0, updates = 0;
    uint64_t update_wall = 0, update_cpu = 0, update_hle = 0;
    uint64_t render_wall = 0, render_cpu = 0, render_hle = 0;
    uint64_t rusage_us = 0;
    uint64_t cycles = 0, instructions = 0;  // counter values at the start of the window
};
Window g_win;  // touched only by the rendering thread (update and render run there)

// Hardware counters of the rendering thread, user space only: core cycles and instructions retired do not
// depend on the clock frequency or on which core the scheduler picked, unlike CPU time.
int g_cycles_fd = -1, g_instructions_fd = -1;

int open_counter(uint64_t config) {
    perf_event_attr a{};
    a.type = PERF_TYPE_HARDWARE;
    a.size = sizeof a;
    a.config = config;
    a.exclude_kernel = 1;
    a.exclude_hv = 1;
    return static_cast<int>(syscall(__NR_perf_event_open, &a, 0, -1, -1, PERF_FLAG_FD_CLOEXEC));
}

uint64_t read_counter(int fd) {
    uint64_t v = 0;
    return fd >= 0 && read(fd, &v, sizeof v) == sizeof v ? v : 0;
}

void open_counters() {
    g_cycles_fd = open_counter(PERF_COUNT_HW_CPU_CYCLES);
    g_instructions_fd = open_counter(PERF_COUNT_HW_INSTRUCTIONS);
    if (g_cycles_fd < 0 || g_instructions_fd < 0) LOGW("perf: hardware counters unavailable (errno %d)", errno);
}

// Sampling profiler for the rendering thread: a CPU-time timer delivers SIGPROF to that thread every
// millisecond of its CPU time, and the handler stores the interrupted host PC. Samples are resolved at
// report time on the same thread: JIT code maps to the guest block it was compiled from, other code to
// the host library (and symbol, when exported) that contains it.
constexpr size_t kMaxSamples = 1 << 16;
std::array<uintptr_t, kMaxSamples> g_samples;
std::atomic<size_t> g_nsamples{0};
pid_t g_sampled_tid = 0;

uintptr_t interrupted_pc(void* ctx) {
    auto* uc = static_cast<ucontext_t*>(ctx);
#if defined(__aarch64__)
    return uc->uc_mcontext.pc;
#elif defined(__x86_64__)
    return static_cast<uintptr_t>(uc->uc_mcontext.gregs[REG_RIP]);
#else
    return 0;
#endif
}

void on_sigprof(int, siginfo_t*, void* ctx) {
    if (gettid() != g_sampled_tid) return;
    size_t i = g_nsamples.load(std::memory_order_relaxed);
    if (i < kMaxSamples) {
        g_samples[i] = interrupted_pc(ctx);
        g_nsamples.store(i + 1, std::memory_order_relaxed);
    }
}

// For comparing measurements: `adb shell setprop debug.absw.perf_cpus <hex mask>` keeps the rendering
// thread on those cores (one cluster: same core type and clock), so CPU time x clock compares across runs.
void pin_to_cpus() {
    char v[PROP_VALUE_MAX] = {};
    if (__system_property_get("debug.absw.perf_cpus", v) <= 0) return;
    unsigned long mask = strtoul(v, nullptr, 16);
    cpu_set_t set;
    CPU_ZERO(&set);
    for (int c = 0; c < 64 && c < CPU_SETSIZE; ++c)
        if (mask >> c & 1) CPU_SET(c, &set);
    if (mask && sched_setaffinity(0, sizeof set, &set) == 0)
        LOGI("perf: rendering thread kept on cpus %#lx", mask);
    else
        LOGW("perf: cannot keep the rendering thread on cpus %s (errno %d)", v, errno);
}

void start_sampler() {
    g_sampled_tid = gettid();
    open_counters();
    pin_to_cpus();
    struct sigaction sa{};
    sa.sa_sigaction = on_sigprof;
    sa.sa_flags = SA_SIGINFO | SA_RESTART;
    sigemptyset(&sa.sa_mask);
    sigaction(SIGPROF, &sa, nullptr);
    sigevent sev{};
    sev.sigev_notify = SIGEV_THREAD_ID;
    sev.sigev_signo = SIGPROF;
    sev.sigev_notify_thread_id = g_sampled_tid;
    timer_t timer;
    if (timer_create(CLOCK_THREAD_CPUTIME_ID, &sev, &timer) != 0) {
        LOGW("perf: sampler timer_create failed (errno %d)", errno);
        return;
    }
    itimerspec its{{0, 1'000'000}, {0, 1'000'000}};
    timer_settime(timer, 0, &its, nullptr);
    LOGI("perf: sampling tid %d every 1 ms of CPU time", g_sampled_tid);
}

// Coarse classes of AArch64 instructions emitted by dynarmic, for the JIT code profile.
const char* classify_a64(uint32_t w) {
    if ((w & 0xffffffe0) == 0xd51b4420) return "msr fpsr";
    if ((w & 0xffffffe0) == 0xd53b4420) return "mrs fpsr";
    if ((w & 0xffffffe0) == 0xd51b4400) return "msr fpcr";
    if ((w & 0xffffffe0) == 0xd53b4400) return "mrs fpcr";
    if ((w & 0xffffffe0) == 0xd51b4200) return "msr nzcv";
    if ((w & 0xffffffe0) == 0xd53b4200) return "mrs nzcv";
    if ((w & 0x3ffffc00) == 0x08dffc00) return "ldar";
    if ((w & 0x3ffffc00) == 0x089ffc00) return "stlr";
    if ((w & 0xfffffc1f) == 0xd61f0000) return "br";
    if ((w & 0xfffffc1f) == 0xd63f0000) return "blr";
    if ((w & 0xfc000000) == 0x94000000) return "bl";
    if ((w & 0xfc000000) == 0x14000000) return "b";
    if ((w & 0xff000010) == 0x54000000) return "b.cond";
    if ((w & 0x7e000000) == 0x34000000) return "cbz/cbnz";
    if ((w & 0x3b200c00) == 0x38200800) return "ld/st reg-offset";  // fastmem guest accesses
    if ((w & 0x3b000000) == 0x39000000) return "ld/st imm";          // guest state, spills
    if ((w & 0x3a000000) == 0x28000000) return "ldp/stp";
    if ((w & 0x5f000000) == 0x1e000000) return "fp scalar";
    if ((w & 0x9f000000) == 0x0e000000) return "simd";
    return "other";
}

void report_samples(const char* label = "frames") {
    size_t n = g_nsamples.exchange(0, std::memory_order_relaxed);
    if (!n) return;
    LOGI("perf: profile of %s", label);
    std::unordered_map<uint32_t, uint32_t> guest;  // guest block -> samples
    std::map<std::string, uint32_t> host;           // library!symbol -> samples
    std::unordered_map<uintptr_t, uint32_t> own;    // offsets inside this library (symbolize offline)
    Dl_info self{};
    dladdr(reinterpret_cast<void*>(&report_samples), &self);
    uint32_t unknown = 0, in_guest = 0;
    std::map<const char*, uint32_t> insn_kind, prev_kind;
    for (size_t i = 0; i < n; ++i) {
        const void* pc = reinterpret_cast<const void*>(g_samples[i]);
        Dl_info info{};
        if (dladdr(pc, &info) && info.dli_fname) {
            const char* lib = strrchr(info.dli_fname, '/');
            std::string key = lib ? lib + 1 : info.dli_fname;
            if (info.dli_sname) key += std::string("!") + info.dli_sname;
            ++host[key];
            if (info.dli_fbase == self.dli_fbase)
                ++own[reinterpret_cast<uintptr_t>(pc) - reinterpret_cast<uintptr_t>(self.dli_fbase)];
        } else if (auto g = cpu::guest_block_for_host_pc(pc)) {
            ++guest[*g];
            ++in_guest;
#if defined(__aarch64__)
            // Which emitted instruction was executing (or had just executed: sampling skid).
            const auto* insn = static_cast<const uint32_t*>(pc);
            ++insn_kind[classify_a64(insn[0])];
            ++prev_kind[classify_a64(insn[-1])];
#endif
        } else {
            ++unknown;
        }
    }
    auto pct = [n](uint32_t c) { return 100.0 * c / static_cast<double>(n); };
    LOGI("perf: %zu samples: guest JIT %.1f%%, host %.1f%%, unresolved %.1f%%", n, pct(in_guest),
         pct(static_cast<uint32_t>(n) - in_guest - unknown), pct(unknown));
    std::vector<std::pair<uint32_t, std::string>> hs;
    for (auto& [k, c] : host) hs.emplace_back(c, k);
    std::sort(hs.rbegin(), hs.rend());
    for (size_t k = 0; k < hs.size() && k < 8; ++k) LOGI("perf:   host %5.1f%% %s", pct(hs[k].first), hs[k].second.c_str());
    std::vector<std::pair<uint32_t, uintptr_t>> os;
    for (auto& [off, c] : own) os.emplace_back(c, off);
    std::sort(os.rbegin(), os.rend());
    std::string offs;
    for (size_t k = 0; k < os.size() && k < 24; ++k) {
        char item[48];
        snprintf(item, sizeof item, "%s0x%zx:%u", k ? " " : "", static_cast<size_t>(os[k].second), os[k].first);
        offs += item;
    }
    if (!offs.empty()) LOGI("perf:   bridge offsets: %s", offs.c_str());
    std::vector<std::pair<uint32_t, uint32_t>> gs;
    for (auto& [a, c] : guest) gs.emplace_back(c, a);
    std::sort(gs.rbegin(), gs.rend());
    for (size_t k = 0; k < gs.size() && k < 40; ++k)
        LOGI("perf:   guest %5.1f%% %s", pct(gs[k].first), elf::describe(gs[k].second).c_str());
    auto log_kinds = [&](const char* what, const std::map<const char*, uint32_t>& kinds) {
        std::vector<std::pair<uint32_t, const char*>> ks;
        for (auto& [k, c] : kinds) ks.emplace_back(c, k);
        std::sort(ks.rbegin(), ks.rend());
        std::string line;
        for (auto& [c, k] : ks) {
            char item[48];
            snprintf(item, sizeof item, "%s%s %.1f%%", line.empty() ? "" : ", ", k, pct(c));
            line += item;
        }
        if (!line.empty()) LOGI("perf:   JIT %s: %s", what, line.c_str());
    };
    log_kinds("at pc", insn_kind);
    log_kinds("at pc-4", prev_kind);
    // IR and host code of the hottest blocks, for code generation work: logged once each time
    // `adb shell setprop debug.absw.perf_dump <new value>` changes the property.
    static std::string dumped;
    char want[PROP_VALUE_MAX] = {};
    if (__system_property_get("debug.absw.perf_dump", want) > 0 && dumped != want && n >= 300) {
        dumped = want;
        for (size_t k = 0; k < gs.size() && k < 6; ++k) {
            LOGI("perf: block dump %zu: 0x%08x %s", k, gs[k].second, elf::describe(gs[k].second).c_str());
            std::string d = cpu::dump_block(gs[k].second);
            size_t start = 0;
            while (start < d.size()) {
                size_t end = d.find('\n', start);
                if (end == std::string::npos) end = d.size();
                LOGI("perfdump: %.*s", static_cast<int>(end - start), d.data() + start);
                start = end + 1;
            }
        }
    }
}

uint64_t clock_ns(clockid_t id) {
    timespec ts{};
    clock_gettime(id, &ts);
    return static_cast<uint64_t>(ts.tv_sec) * 1'000'000'000ull + static_cast<uint64_t>(ts.tv_nsec);
}

uint64_t process_cpu_us() {
    rusage ru{};
    getrusage(RUSAGE_SELF, &ru);
    auto us = [](const timeval& t) { return static_cast<uint64_t>(t.tv_sec) * 1'000'000ull + t.tv_usec; };
    return us(ru.ru_utime) + us(ru.ru_stime);
}

// Process start in CLOCK_BOOTTIME milliseconds (field 22 of /proc/self/stat, in clock ticks since boot).
double process_start_ms() {
    FILE* f = fopen("/proc/self/stat", "r");
    if (!f) return 0;
    char buf[1024];
    size_t n = fread(buf, 1, sizeof buf - 1, f);
    fclose(f);
    buf[n] = 0;
    const char* p = strrchr(buf, ')');  // the command name may contain spaces
    if (!p) return 0;
    unsigned long long start = 0;
    int field = 2;
    for (const char* s = p + 1; *s && field < 22; ++s)
        if (*s == ' ' && ++field == 22) start = strtoull(s + 1, nullptr, 10);
    return static_cast<double>(start) * 1000.0 / static_cast<double>(sysconf(_SC_CLK_TCK));
}

double ms(uint64_t ns, uint64_t n) { return n ? static_cast<double>(ns) / 1e6 / static_cast<double>(n) : 0.0; }

void report(uint64_t now) {
    Window& w = g_win;
    double secs = static_cast<double>(now - w.start_ns) / 1e9;
    uint64_t cpu_us = process_cpu_us();
    // With the single-thread wrapper the game updates and draws inside nativeUpdate (no nativeRender).
    uint64_t frames = w.frames ? w.frames : w.updates;
    char counters[96] = "";
    if (g_cycles_fd >= 0 && g_instructions_fd >= 0 && frames) {
        double mcycles = static_cast<double>(read_counter(g_cycles_fd) - w.cycles) / 1e6 / static_cast<double>(frames);
        double minstr = static_cast<double>(read_counter(g_instructions_fd) - w.instructions) / 1e6 / static_cast<double>(frames);
        snprintf(counters, sizeof counters, " | user %.2f Mcycles %.2f Minstr per frame (IPC %.2f)", mcycles, minstr,
                 mcycles > 0 ? minstr / mcycles : 0.0);
    }
    LOGI("perf: %.1f fps | update %.2f ms (cpu %.2f, imports %.2f) | render %.2f ms (cpu %.2f, imports %.2f) | "
         "process cpu %.0f%% of one core%s",
         static_cast<double>(frames) / secs, ms(w.update_wall, w.updates), ms(w.update_cpu, w.updates),
         ms(w.update_hle, w.updates), ms(w.render_wall, w.frames), ms(w.render_cpu, w.frames),
         ms(w.render_hle, w.frames), static_cast<double>(cpu_us - w.rusage_us) / 1e4 / secs, counters);

    std::vector<std::pair<uint64_t, uint32_t>> top;
    for (uint32_t i = 0; i < kMaxThunks; ++i)
        if (uint64_t ns = g_hle_ns[i].exchange(0, std::memory_order_relaxed)) top.emplace_back(ns, i);
    std::sort(top.rbegin(), top.rend());
    std::string line;
    for (size_t k = 0; k < top.size() && k < 8; ++k) {
        uint32_t i = top[k].second;
        char item[128];
        snprintf(item, sizeof item, "%s%s %.1fms/%u", k ? ", " : "",
                 hle::thunk_name(arena::kThunkBase + i * 8).c_str(), static_cast<double>(top[k].first) / 1e6 / secs,
                 g_hle_calls[i].load(std::memory_order_relaxed) / static_cast<uint32_t>(secs > 1 ? secs : 1));
        line += item;
    }
    for (auto& c : g_hle_calls) c.store(0, std::memory_order_relaxed);
    LOGI("perf: imports per second (time/calls): %s", line.c_str());
    report_samples();
    w = Window{};
    w.start_ns = now;
    w.rusage_us = cpu_us;
    w.cycles = read_counter(g_cycles_fd);
    w.instructions = read_counter(g_instructions_fd);
}

}  // namespace

void init() {
    g_process_start_ms = process_start_ms();
    char v[PROP_VALUE_MAX] = {};
    g_on = __system_property_get("debug.absw.perf", v) > 0 && v[0] == '1';
    if (g_on) LOGI("perf: profiling on (debug.absw.perf=1)");
}

bool enabled() { return g_on; }
uint64_t now_ns() { return clock_ns(CLOCK_MONOTONIC); }
uint64_t thread_hle_ns() { return t_hle_ns; }
uint64_t thread_cpu_ns() { return clock_ns(CLOCK_THREAD_CPUTIME_ID); }

void mark(const char* what) {
    double now_ms = static_cast<double>(clock_ns(CLOCK_BOOTTIME)) / 1e6;
    LOGI("startup: %s at %.0f ms (process cpu %.0f ms, this thread cpu %.0f ms)", what,
         g_process_start_ms > 0 ? now_ms - g_process_start_ms : -1.0, static_cast<double>(process_cpu_us()) / 1e3,
         static_cast<double>(clock_ns(CLOCK_THREAD_CPUTIME_ID)) / 1e6);
}

void sample_this_thread() {
    if (g_on && !g_sampled_tid) start_sampler();
}

void report_samples_now(const char* label) {
    if (g_on && gettid() == g_sampled_tid) report_samples(label);
}

void hle_call(uint32_t idx, uint64_t ns) {
    t_hle_ns += ns;
    if (idx < kMaxThunks) {
        g_hle_ns[idx].fetch_add(ns, std::memory_order_relaxed);
        g_hle_calls[idx].fetch_add(1, std::memory_order_relaxed);
    }
}

void native_call(Native kind, uint64_t wall, uint64_t cpu, uint64_t hle) {
    Window& w = g_win;
    uint64_t now = now_ns();
    if (!w.start_ns) {
        if (!g_sampled_tid) start_sampler();
        w.start_ns = now;
        w.rusage_us = process_cpu_us();
        w.cycles = read_counter(g_cycles_fd);
        w.instructions = read_counter(g_instructions_fd);
    }
    if (kind == Native::kUpdate) {
        ++w.updates;
        w.update_wall += wall;
        w.update_cpu += cpu;
        w.update_hle += hle;
    } else {
        ++w.frames;
        w.render_wall += wall;
        w.render_cpu += cpu;
        w.render_hle += hle;
    }
    if (now - w.start_ns >= kReportNs) report(now);
}

}  // namespace perf
