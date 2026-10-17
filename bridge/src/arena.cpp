#include "arena.h"

#include <sys/mman.h>
#include <unistd.h>

#include <map>
#include <mutex>
#include <vector>

#include "common.h"

extern "C" {
void* gheap_malloc(size_t);
void* gheap_calloc(size_t, size_t);
void* gheap_realloc(void*, size_t);
void* gheap_memalign(size_t, size_t);
size_t gheap_usable(void*);
void gheap_free(void*);
void* arena_morecore(ptrdiff_t increment);
}

namespace arena {

uint8_t* base = nullptr;
static size_t host_page = 4096;
static std::mutex mu;
static uint32_t data_top = kDataBase;
static uint32_t module_top = kModuleBase;
static uint32_t stack_top = kStackBase;
static std::vector<uint32_t> free_stacks;
static std::map<uint32_t, uint32_t> stack_sizes;
static uint32_t heap_brk = kHeapBase;
static uint32_t heap_committed = kHeapBase;

void init() {
    host_page = static_cast<size_t>(sysconf(_SC_PAGESIZE));
    const size_t span = (size_t{1} << 32) + 0x10000;
    void* p = mmap(nullptr, span, PROT_NONE, MAP_PRIVATE | MAP_ANONYMOUS | MAP_NORESERVE, -1, 0);
    if (p == MAP_FAILED) fatal("arena reservation failed");
    base = static_cast<uint8_t*>(p);
    commit(kThunkBase, kDataEnd - kThunkBase);
    LOGI("arena base=%p host_page=%zu", base, host_page);
}

void commit(uint32_t addr, uint32_t size) {
    uintptr_t lo = reinterpret_cast<uintptr_t>(base) + addr;
    uintptr_t hi = lo + size;
    lo &= ~(host_page - 1);
    hi = (hi + host_page - 1) & ~(host_page - 1);
    if (mprotect(reinterpret_cast<void*>(lo), hi - lo, PROT_READ | PROT_WRITE) != 0)
        fatal("commit 0x%x+0x%x failed", addr, size);
}

bool contains(const void* p, size_t len) {
    auto a = reinterpret_cast<uintptr_t>(p), b = reinterpret_cast<uintptr_t>(base);
    return a >= b && a + len <= b + (size_t{1} << 32);
}

uint32_t static_alloc(uint32_t size, uint32_t align) {
    std::lock_guard l(mu);
    data_top = (data_top + align - 1) & ~(align - 1);
    uint32_t a = data_top;
    data_top += size;
    if (data_top > kDataEnd) fatal("static guest data exhausted");
    return a;
}

uint32_t static_strdup(const char* s) {
    uint32_t n = static_cast<uint32_t>(strlen(s)) + 1;
    uint32_t a = static_alloc(n, 1);
    memcpy(h(a), s, n);
    return a;
}

uint32_t module_alloc(uint32_t size) {
    std::lock_guard l(mu);
    size = (size + 0xFFFF) & ~0xFFFFu;
    uint32_t a = module_top;
    module_top += size + 0x10000;  // keep a guard gap between images
    if (module_top > kModuleEnd) fatal("module space exhausted");
    commit(a, size);
    return a;
}

uint32_t stack_alloc(uint32_t size) {
    std::lock_guard l(mu);
    size = (size + 0xFFFF) & ~0xFFFFu;
    for (size_t i = 0; i < free_stacks.size(); ++i) {
        uint32_t top = free_stacks[i];
        if (stack_sizes[top] >= size) {
            free_stacks.erase(free_stacks.begin() + static_cast<long>(i));
            return top;
        }
    }
    uint32_t lo = stack_top + 0x10000;  // 64 KiB guard below each stack
    stack_top = lo + size;
    if (stack_top > kStackEnd) fatal("stack space exhausted");
    commit(lo, size);
    stack_sizes[stack_top] = size;
    return stack_top;
}

void stack_free(uint32_t top) {
    std::lock_guard l(mu);
    free_stacks.push_back(top);
}

uint32_t gmalloc(uint32_t n) { return g(gheap_malloc(n)); }
uint32_t gcalloc(uint32_t n, uint32_t sz) { return g(gheap_calloc(n, sz)); }
uint32_t grealloc(uint32_t a, uint32_t n) { return g(gheap_realloc(hp<void>(a), n)); }
uint32_t gmemalign(uint32_t al, uint32_t n) { return g(gheap_memalign(al, n)); }
uint32_t gusable(uint32_t a) { return static_cast<uint32_t>(gheap_usable(hp<void>(a))); }
void gfree(uint32_t a) { gheap_free(hp<void>(a)); }
uint32_t gstrdup(const char* s) {
    if (!s) return 0;
    uint32_t n = static_cast<uint32_t>(strlen(s)) + 1;
    uint32_t a = gmalloc(n);
    if (a) memcpy(h(a), s, n);
    return a;
}

}  // namespace arena

extern "C" void absw_heap_abort() { fatal("guest heap corruption detected"); }

// dlmalloc MORECORE: grows the contiguous guest heap, committing host pages on demand.
extern "C" void* arena_morecore(ptrdiff_t increment) {
    using namespace arena;
    // dlmalloc serializes MORECORE calls under its own lock.
    uint32_t old = heap_brk;
    if (increment < 0) return reinterpret_cast<void*>(~uintptr_t{0});
    uint64_t next = uint64_t{heap_brk} + static_cast<uint64_t>(increment);
    if (next > kHeapEnd) return reinterpret_cast<void*>(~uintptr_t{0});
    if (next > heap_committed) {
        uint32_t want = static_cast<uint32_t>((next + 0x3FFFFF) & ~uint64_t{0x3FFFFF});  // 4 MiB steps
        if (want > kHeapEnd) want = kHeapEnd;
        commit(heap_committed, want - heap_committed);
        heap_committed = want;
    }
    heap_brk = static_cast<uint32_t>(next);
    return base + old;
}
