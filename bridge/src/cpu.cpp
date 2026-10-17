#include "cpu.h"

#include <dlfcn.h>
#include <pthread.h>
#include <sys/prctl.h>
#include <ucontext.h>
#include <signal.h>
#include <unistd.h>

#include <array>
#include <atomic>
#include <bitset>
#include <cinttypes>
#include <cstdarg>
#include <memory>
#include <mutex>

#include <dynarmic/interface/A32/a32.h>
#include <dynarmic/interface/A32/config.h>
#include <dynarmic/interface/A32/coprocessor.h>
#include <dynarmic/interface/exclusive_monitor.h>

#include "arena.h"
#include "common.h"
#include "elf32.h"
#include "hle.h"

namespace cpu {
namespace {

using Dynarmic::A32::CoprocReg;
using Dynarmic::A32::Jit;
using Dynarmic::A32::VAddr;

constexpr size_t kMaxCpus = 128;
constexpr uint32_t kStackSize = 2u << 20;

Dynarmic::ExclusiveMonitor* g_monitor;
std::mutex g_pid_mu;
std::bitset<kMaxCpus> g_pid_used;
uint32_t g_return_pc;  // guest address of "svc #kSvcReturn"

size_t alloc_pid() {
    std::lock_guard l(g_pid_mu);
    for (size_t i = 0; i < kMaxCpus; ++i)
        if (!g_pid_used[i]) { g_pid_used[i] = true; return i; }
    fatal("too many guest CPUs");
}
void free_pid(size_t p) {
    std::lock_guard l(g_pid_mu);
    g_pid_used[p] = false;
}

struct GuestCpu;

// CP15 c13 (TPIDRURO) read-only thread register used by bionic's __get_tls().
class Cp15 final : public Dynarmic::A32::Coprocessor {
public:
    uint32_t tpidruro = 0;
    std::optional<Callback> CompileInternalOperation(bool, unsigned, CoprocReg, CoprocReg, CoprocReg, unsigned) override { return std::nullopt; }
    CallbackOrAccessOneWord CompileSendOneWord(bool, unsigned, CoprocReg, CoprocReg, unsigned) override { return std::monostate{}; }
    CallbackOrAccessTwoWords CompileSendTwoWords(bool, unsigned, CoprocReg) override { return std::monostate{}; }
    CallbackOrAccessOneWord CompileGetOneWord(bool two, unsigned opc1, CoprocReg crn, CoprocReg crm, unsigned opc2) override {
        if (!two && opc1 == 0 && crn == CoprocReg::C13 && crm == CoprocReg::C0 && opc2 == 3) return &tpidruro;
        return std::monostate{};
    }
    CallbackOrAccessTwoWords CompileGetTwoWords(bool, unsigned, CoprocReg) override { return std::monostate{}; }
    std::optional<Callback> CompileLoadWords(bool, bool, CoprocReg, std::optional<uint8_t>) override { return std::nullopt; }
    std::optional<Callback> CompileStoreWords(bool, bool, CoprocReg, std::optional<uint8_t>) override { return std::nullopt; }
};

struct Callbacks final : Dynarmic::A32::UserCallbacks {
    GuestCpu* owner = nullptr;

    template <typename T>
    static T rd(VAddr a) { T v; memcpy(&v, arena::base + a, sizeof v); return v; }
    template <typename T>
    static void wr(VAddr a, T v) { memcpy(arena::base + a, &v, sizeof v); }
    template <typename T>
    static bool cas(VAddr a, T v, T expected) {
        return __atomic_compare_exchange_n(reinterpret_cast<T*>(arena::base + a), &expected, v, false,
                                           __ATOMIC_SEQ_CST, __ATOMIC_SEQ_CST);
    }

    std::optional<uint32_t> MemoryReadCode(VAddr a) override { return rd<uint32_t>(a); }
    uint8_t MemoryRead8(VAddr a) override { return rd<uint8_t>(a); }
    uint16_t MemoryRead16(VAddr a) override { return rd<uint16_t>(a); }
    uint32_t MemoryRead32(VAddr a) override { return rd<uint32_t>(a); }
    uint64_t MemoryRead64(VAddr a) override { return rd<uint64_t>(a); }
    void MemoryWrite8(VAddr a, uint8_t v) override { wr(a, v); }
    void MemoryWrite16(VAddr a, uint16_t v) override { wr(a, v); }
    void MemoryWrite32(VAddr a, uint32_t v) override { wr(a, v); }
    void MemoryWrite64(VAddr a, uint64_t v) override { wr(a, v); }
    bool MemoryWriteExclusive8(VAddr a, uint8_t v, uint8_t e) override { return cas(a, v, e); }
    bool MemoryWriteExclusive16(VAddr a, uint16_t v, uint16_t e) override { return cas(a, v, e); }
    bool MemoryWriteExclusive32(VAddr a, uint32_t v, uint32_t e) override { return cas(a, v, e); }
    bool MemoryWriteExclusive64(VAddr a, uint64_t v, uint64_t e) override { return cas(a, v, e); }

    void InterpreterFallback(VAddr pc, size_t n) override;
    void CallSVC(uint32_t swi) override;
    void ExceptionRaised(VAddr pc, Dynarmic::A32::Exception e) override;
    void AddTicks(uint64_t) override {}
    uint64_t GetTicksRemaining() override { return ~uint64_t{0} >> 2; }
};

struct GuestCpu {
    Callbacks cb;
    std::shared_ptr<Cp15> cp15 = std::make_shared<Cp15>();
    std::unique_ptr<Jit> jit;
    size_t pid;
    bool returned = false;

    GuestCpu(uint32_t tls, size_t cache) : pid(alloc_pid()) {
        cb.owner = this;
        cp15->tpidruro = tls;
        Dynarmic::A32::UserConfig cfg;
        cfg.callbacks = &cb;
        cfg.processor_id = pid;
        cfg.global_monitor = g_monitor;
        cfg.arch_version = Dynarmic::A32::ArchVersion::v8;
        cfg.fastmem_pointer = reinterpret_cast<uintptr_t>(arena::base);
        cfg.recompile_on_fastmem_failure = true;
        cfg.coprocessors[15] = cp15;
        cfg.enable_cycle_counting = false;
        cfg.define_unpredictable_behaviour = true;
        cfg.code_cache_size = cache;
        jit = std::make_unique<Jit>(cfg);
    }
    ~GuestCpu() {
        jit.reset();
        g_monitor->ClearProcessor(pid);
        free_pid(pid);
    }
};

struct ThreadState {
    std::vector<std::unique_ptr<GuestCpu>> cpus;  // index = host->guest nesting depth
    size_t depth = 0;
    uint32_t stack_top = 0;
    uint32_t tls = 0;
    ~ThreadState() {
        cpus.clear();
        if (stack_top) arena::stack_free(stack_top);
        if (tls) arena::gfree(tls);
    }
};

pthread_key_t g_state_key;
thread_local ThreadState* t_state;

ThreadState& state() {
    if (!t_state) {
        t_state = new ThreadState();
        t_state->stack_top = arena::stack_alloc(kStackSize);
        t_state->tls = arena::gcalloc(64, 4);
        auto* slots = arena::hp<uint32_t>(t_state->tls);
        slots[0] = t_state->tls;            // TLS_SLOT_SELF
        slots[1] = static_cast<uint32_t>(gettid());  // TLS_SLOT_THREAD_ID
        pthread_setspecific(g_state_key, t_state);
    }
    return *t_state;
}

void Callbacks::CallSVC(uint32_t swi) {
    if (swi == kSvcReturn) {
        owner->returned = true;
        owner->jit->HaltExecution();
        return;
    }
    Ctx ctx{owner->jit.get()};
    hle::dispatch(swi, ctx);
}

void Callbacks::InterpreterFallback(VAddr pc, size_t n) {
    LOGE("interpreter fallback requested at %s (n=%zu)", elf::describe(pc).c_str(), n);
    dump_and_die(owner->jit.get(), "unsupported instruction");
}

void Callbacks::ExceptionRaised(VAddr pc, Dynarmic::A32::Exception e) {
    using E = Dynarmic::A32::Exception;
    switch (e) {
    case E::Yield:
    case E::SendEvent:
    case E::SendEventLocal:
    case E::WaitForEvent:
    case E::WaitForInterrupt:
    case E::PreloadData:
    case E::PreloadDataWithIntentToWrite:
    case E::PreloadInstruction:
        owner->jit->Regs()[15] = pc + ((owner->jit->Cpsr() & 0x20) ? 2 : 4);
        return;
    default:
        LOGE("guest exception %d at %s", static_cast<int>(e), elf::describe(pc).c_str());
        dump_and_die(owner->jit.get(), "guest exception");
    }
}

}  // namespace

// Fault logger chained in front of dynarmic's fastmem handler (installed after the first JIT exists).
static struct sigaction g_prev_segv, g_prev_bus;
static std::atomic<int> g_fault_logs{0};

static void fault_logger(int sig, siginfo_t* info, void* ctx);

static uintptr_t host_pc(void* ctx) {
    auto* uc = static_cast<ucontext_t*>(ctx);
#if defined(__aarch64__)
    return uc->uc_mcontext.pc;
#elif defined(__x86_64__)
    return static_cast<uintptr_t>(uc->uc_mcontext.gregs[REG_RIP]);
#else
    return 0;
#endif
}

// A fault inside this library (not in JIT code) is a guest access that the memory callbacks could not
// serve, i.e. a real guest crash: log the guest thread's registers before the process dies. The JIT
// writes the guest PC back at block boundaries, so pc is the start of the faulting block.
static void dump_guest_context(void* ctx) {
    Dl_info self{}, at{};
    if (!dladdr(reinterpret_cast<void*>(&fault_logger), &self) || !dladdr(reinterpret_cast<void*>(host_pc(ctx)), &at) ||
        self.dli_fbase != at.dli_fbase || !t_state || t_state->depth == 0)
        return;
    const auto& R = t_state->cpus[t_state->depth - 1]->jit->Regs();
    LOGE("guest context: pc=%s lr=%s", elf::describe(R[15]).c_str(), elf::describe(R[14]).c_str());
    for (int i = 0; i < 16; i += 4)
        LOGE("r%-2d=%08x r%-2d=%08x r%-2d=%08x r%-2d=%08x", i, R[i], i + 1, R[i + 1], i + 2, R[i + 2], i + 3, R[i + 3]);
    for (int i = 0; i < 64; ++i) {
        uint32_t v;
        memcpy(&v, arena::base + R[13] + 4 * i, 4);
        if (elf::owns(v)) LOGE("  stack[%d] %s", i, elf::describe(v).c_str());
    }
}

static void fault_logger(int sig, siginfo_t* info, void* ctx) {
    if (g_fault_logs.fetch_add(1) < 8) {
        auto addr = reinterpret_cast<uintptr_t>(info->si_addr);
        auto base = reinterpret_cast<uintptr_t>(arena::base);
        if (addr >= base && addr < base + (uintptr_t{1} << 32))
            LOGW("signal %d: guest address 0x%08x (tid %d)", sig, static_cast<uint32_t>(addr - base), gettid());
        else
            LOGW("signal %d: host address %p (tid %d)", sig, info->si_addr, gettid());
        dump_guest_context(ctx);
    }
    const struct sigaction& prev = sig == SIGSEGV ? g_prev_segv : g_prev_bus;
    if (prev.sa_flags & SA_SIGINFO) {
        prev.sa_sigaction(sig, info, ctx);
    } else if (prev.sa_handler == SIG_DFL || prev.sa_handler == SIG_IGN) {
        signal(sig, SIG_DFL);
        raise(sig);
    } else {
        prev.sa_handler(sig);
    }
}

static void install_fault_logger() {
    struct sigaction sa{};
    sa.sa_sigaction = fault_logger;
    sa.sa_flags = SA_SIGINFO | SA_ONSTACK | SA_RESTART;
    sigemptyset(&sa.sa_mask);
    sigaction(SIGSEGV, &sa, &g_prev_segv);
    sigaction(SIGBUS, &sa, &g_prev_bus);
}

uint32_t& Ctx::r(int i) { return jit->Regs()[static_cast<size_t>(i)]; }

uint32_t Ctx::arg(int n) {
    if (n < 4) return jit->Regs()[static_cast<size_t>(n)];
    uint32_t sp = jit->Regs()[13];
    uint32_t v;
    memcpy(&v, arena::base + sp + 4u * static_cast<uint32_t>(n - 4), 4);
    return v;
}

void Ctx::ret(uint32_t r0) { jit->Regs()[0] = r0; }
void Ctx::ret64(uint64_t v) {
    jit->Regs()[0] = static_cast<uint32_t>(v);
    jit->Regs()[1] = static_cast<uint32_t>(v >> 32);
}

Args& Args::f(float v) { return w(std::bit_cast<uint32_t>(v)); }
Args& Args::d64(uint64_t v) {
    if (words.size() & 1) words.push_back(0);
    words.push_back(static_cast<uint32_t>(v));
    words.push_back(static_cast<uint32_t>(v >> 32));
    return *this;
}

void init() {
    g_monitor = new Dynarmic::ExclusiveMonitor(kMaxCpus);
    pthread_key_create(&g_state_key, [](void* p) {
        t_state = static_cast<ThreadState*>(p);
        delete t_state;
        t_state = nullptr;
    });
    // Kernel user helpers at their fixed ARM Linux addresses (old libgcc atomics jump there).
    static const uint8_t kKuser[] = {
#include "kuser_blob.inc"
    };
    arena::commit(0xFFFF0000u, 0x1000);
    memcpy(arena::h(0xFFFF0F60u), kKuser, sizeof kKuser);

    // ARM-mode return trampoline: svc #kSvcReturn ; b .
    g_return_pc = arena::static_alloc(8, 8);
    auto* code = arena::hp<uint32_t>(g_return_pc);
    code[0] = 0xEF000000u | kSvcReturn;
    code[1] = 0xEAFFFFFEu;
}

// Set on threads that the guest created with pthread_create (see run_thread_entry).
static thread_local bool t_guest_created = false;

// JIT code cache per guest CPU. The game logic and rendering run on the Java thread "GraphicsThread". Java
// threads that call into the guest (UI, audio mixing, callbacks) and the guest's own threads (workers, which
// the kernel names after their creator, usually GraphicsThread) run far less code, so they get smaller
// caches. dynarmic flushes a full cache and retranslates, so a small cache costs speed, not correctness.
static size_t code_cache_size(bool first_on_thread) {
    static std::atomic<int> threads{0};
    if (!first_on_thread) return 16u << 20;
    char name[16] = {};
    prctl(PR_GET_NAME, name);
    size_t size = t_guest_created ? (16u << 20) : strcmp(name, "GraphicsThread") == 0 ? (96u << 20) : (32u << 20);
    LOGI("guest thread %d entered on %s (tid %d), code cache %zu MiB", threads.fetch_add(1) + 1, name, gettid(),
         size >> 20);
    return size;
}

uint64_t call(uint32_t fn, const std::vector<uint32_t>& words) {
    ThreadState& t = state();
    const size_t d = t.depth;
    while (t.cpus.size() <= d) t.cpus.push_back(std::make_unique<GuestCpu>(t.tls, code_cache_size(t.cpus.empty())));
    static std::once_flag logger_once;  // dynarmic installs its handler with the first JIT
    std::call_once(logger_once, install_fault_logger);
    GuestCpu& c = *t.cpus[d];
    auto& R = c.jit->Regs();

    uint32_t sp = d == 0 ? t.stack_top : t.cpus[d - 1]->jit->Regs()[13] - 256;
    const size_t nstack = words.size() > 4 ? words.size() - 4 : 0;
    sp = (sp - static_cast<uint32_t>(nstack * 4)) & ~7u;
    for (size_t i = 0; i < nstack; ++i)
        memcpy(arena::base + sp + 4 * i, &words[4 + i], 4);
    for (size_t i = 0; i < 4; ++i) R[i] = i < words.size() ? words[i] : 0;
    R[13] = sp;
    R[14] = g_return_pc;
    R[15] = fn & ~1u;
    c.jit->SetCpsr(0x10u | ((fn & 1) ? 0x20u : 0u));

    c.returned = false;
    ++t.depth;
    c.jit->Run();
    --t.depth;
    if (!c.returned) dump_and_die(c.jit.get(), "guest call halted without returning");
    c.jit->ClearHalt(Dynarmic::HaltReason::UserDefined1);
    return R[0] | (uint64_t{R[1]} << 32);
}

uint32_t thread_tls() { return state().tls; }
uint32_t thread_errno_addr() { return state().tls + 8; }  // TLS_SLOT_ERRNO
void set_guest_errno(int e) { *arena::hp<int32_t>(thread_errno_addr()) = e; }

uint32_t run_thread_entry(uint32_t fn, uint32_t arg) {
    t_guest_created = true;
    return static_cast<uint32_t>(call(fn, {arg}));
}

void dump_and_die(Jit* jit, const char* why) {
    const auto& R = jit->Regs();
    LOGE("=== guest fault: %s ===", why);
    LOGE("pc=%s lr=%s", elf::describe(R[15]).c_str(), elf::describe(R[14]).c_str());
    for (int i = 0; i < 16; i += 4)
        LOGE("r%-2d=%08x r%-2d=%08x r%-2d=%08x r%-2d=%08x", i, R[i], i + 1, R[i + 1], i + 2, R[i + 2], i + 3, R[i + 3]);
    LOGE("cpsr=%08x", jit->Cpsr());
    uint32_t sp = R[13];
    for (int i = 0; i < 32; ++i) {
        uint32_t v;
        memcpy(&v, arena::base + sp + 4 * i, 4);
        if (elf::owns(v)) LOGE("  stack[%d] %s", i, elf::describe(v).c_str());
    }
    fatal("%s", why);
}

}  // namespace cpu
