// Guest CPU (dynarmic A32) per host thread, and host->guest calls with AAPCS (softfp) arguments.
#pragma once

#include <cstdint>
#include <initializer_list>
#include <optional>
#include <string>
#include <vector>

namespace Dynarmic::A32 {
class Jit;
}

namespace cpu {

constexpr uint32_t kSvcReturn = 0xFFFF00;  // svc immediate that ends a host->guest call

void init();

// View of the guest CPU that executed an import thunk.
struct Ctx {
    Dynarmic::A32::Jit* jit;
    uint32_t& r(int i);
    uint32_t arg(int n);  // n-th AAPCS argument word: r0-r3, then the caller's stack
    void ret(uint32_t r0);
    void ret64(uint64_t v);
};

// Guest word list for a call; 64-bit values must already sit on an even word index.
class Args {
public:
    Args& w(uint32_t v) { words.push_back(v); return *this; }
    Args& f(float v);
    Args& d64(uint64_t v);
    std::vector<uint32_t> words;
};

uint64_t call(uint32_t fn, const std::vector<uint32_t>& words);
inline uint64_t call(uint32_t fn, std::initializer_list<uint32_t> words) {
    return call(fn, std::vector<uint32_t>(words));
}

uint32_t thread_tls();        // guest TLS block of the calling host thread
uint32_t thread_errno_addr(); // guest errno slot of the calling host thread
void set_guest_errno(int e);

// Profiling: guest address of the compiled block that contains host_pc, if host_pc lies in the code
// cache of one of the calling thread's JITs. Call it from that thread, outside signal handlers.
std::optional<uint32_t> guest_block_for_host_pc(const void* host_pc);

// Profiling: dynarmic IR and emitted host code of the calling thread's blocks starting at guest pc.
std::string dump_block(uint32_t pc);

// Run `fn(arg)` as the body of a new guest thread on the calling host thread.
uint32_t run_thread_entry(uint32_t fn, uint32_t arg);

[[noreturn]] void dump_and_die(Dynarmic::A32::Jit* jit, const char* why);

// Diagnostics: logs the words among the `words` above guest sp that point into a loaded module (return
// addresses, mostly).
void log_guest_stack(uint32_t sp, int words);

}  // namespace cpu
