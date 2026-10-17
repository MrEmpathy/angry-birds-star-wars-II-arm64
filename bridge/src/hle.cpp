#include "hle.h"

#include <array>
#include <atomic>
#include <cstdarg>
#include <cstdlib>
#include <mutex>
#include <unordered_map>
#include <vector>

#include "elf32.h"
#include "perf.h"

void fatal(const char* fmt, ...) {
    char buf[1024];
    va_list ap;
    va_start(ap, fmt);
    vsnprintf(buf, sizeof buf, fmt, ap);
    va_end(ap);
    __android_log_print(ANDROID_LOG_FATAL, ABSW_TAG, "FATAL: %s", buf);
    abort();
}

namespace hle {
namespace {

struct Entry {
    std::string name;
    Fn fn;
};

constexpr uint32_t kMaxThunks = arena::kThunkSize / 8;
std::mutex g_mu;
std::vector<Entry> g_entries;  // index = svc immediate; guarded by g_mu
std::array<std::atomic<Fn>, kMaxThunks> g_fns{};  // lock-free dispatch view of g_entries
std::unordered_map<std::string, uint32_t> g_by_name;  // name -> guest address (thunk or data)

void unresolved_called(cpu::Ctx& c) {
    uint32_t pc = c.r(15);
    fatal("unresolved import called: %s (from %s)", thunk_name(pc - 4).c_str(), elf::describe(c.r(14)).c_str());
}

}  // namespace

uint32_t add(const std::string& name, Fn fn) {
    std::lock_guard l(g_mu);
    if (auto it = g_by_name.find(name); it != g_by_name.end()) return it->second;
    uint32_t idx = static_cast<uint32_t>(g_entries.size());
    if (idx >= kMaxThunks) fatal("thunk table full");
    g_entries.push_back({name, fn});
    g_fns[idx].store(fn, std::memory_order_release);
    uint32_t addr = arena::kThunkBase + idx * 8;
    auto* code = arena::hp<uint32_t>(addr);
    code[0] = 0xEF000000u | idx;  // svc #idx
    code[1] = 0xE12FFF1Eu;        // bx lr
    g_by_name[name] = addr;
    return addr;
}

void add_defs(const Def* defs, size_t n) {
    for (size_t i = 0; i < n; ++i) add(defs[i].name, defs[i].fn);
}

void add_data(const std::string& name, uint32_t addr) {
    std::lock_guard l(g_mu);
    g_by_name[name] = addr;
}

uint32_t resolve(const std::string& name) {
    std::lock_guard l(g_mu);
    auto it = g_by_name.find(name);
    return it == g_by_name.end() ? 0 : it->second;
}

uint32_t unresolved_thunk(const std::string& name) { return add("<unresolved>" + name, &unresolved_called); }

std::string thunk_name(uint32_t addr) {
    if (addr < arena::kThunkBase || addr >= arena::kThunkBase + arena::kThunkSize) return {};
    std::lock_guard l(g_mu);
    uint32_t idx = (addr - arena::kThunkBase) / 8;
    return idx < g_entries.size() ? g_entries[idx].name : std::string();
}

void dispatch(uint32_t idx, cpu::Ctx& c) {
    Fn fn = idx < kMaxThunks ? g_fns[idx].load(std::memory_order_acquire) : nullptr;
    if (!fn) fatal("bad svc #%u at %s", idx, elf::describe(c.r(15)).c_str());
#if ABSW_TRACE
    LOGI("call %s from %s", thunk_name(arena::kThunkBase + idx * 8).c_str(), elf::describe(c.r(14)).c_str());
#endif
    if (perf::enabled()) {
        uint64_t t0 = perf::now_ns();
        fn(c);
        perf::hle_call(idx, perf::now_ns() - t0);
        return;
    }
    fn(c);
}

void init() {
    register_libc();
    register_stdio();
    register_pthread();
    register_gles();
    register_android();
}

}  // namespace hle
