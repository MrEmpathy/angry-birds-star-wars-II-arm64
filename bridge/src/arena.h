// Guest (ARM32) address space: a 4 GiB host reservation where guest address A lives at base + A.
#pragma once

#include <cstddef>
#include <cstdint>

namespace arena {

extern uint8_t* base;

// Fixed layout of the guest address space.
constexpr uint32_t kThunkBase = 0x00010000;   // import thunks (svc #n; bx lr)
constexpr uint32_t kThunkSize = 0x00010000;
constexpr uint32_t kDataBase = 0x00020000;    // bridge-owned static guest data
constexpr uint32_t kDataEnd = 0x01000000;
constexpr uint32_t kModuleBase = 0x01000000;  // loaded ELF images
constexpr uint32_t kModuleEnd = 0x10000000;
constexpr uint32_t kStackBase = 0x10000000;   // guest thread stacks
constexpr uint32_t kStackEnd = 0x20000000;
constexpr uint32_t kHeapBase = 0x20000000;    // dlmalloc heap
constexpr uint32_t kHeapEnd = 0xF0000000;

void init();
void commit(uint32_t addr, uint32_t size);

inline void* h(uint32_t a) { return base + a; }
template <typename T>
inline T* hp(uint32_t a) { return a ? reinterpret_cast<T*>(base + a) : nullptr; }
inline uint32_t g(const void* p) {
    return p ? static_cast<uint32_t>(static_cast<const uint8_t*>(p) - base) : 0;
}
bool contains(const void* p, size_t len = 1);

uint32_t static_alloc(uint32_t size, uint32_t align = 8);  // bridge data, never freed
uint32_t static_strdup(const char* s);
uint32_t module_alloc(uint32_t size);                      // 64 KiB aligned, committed
uint32_t stack_alloc(uint32_t size);                       // returns stack top (exclusive)
void stack_free(uint32_t top);

// Guest heap.
uint32_t gmalloc(uint32_t n);
uint32_t gcalloc(uint32_t n, uint32_t sz);
uint32_t grealloc(uint32_t a, uint32_t n);
uint32_t gmemalign(uint32_t align, uint32_t n);
uint32_t gusable(uint32_t a);
void gfree(uint32_t a);
uint32_t gstrdup(const char* s);

}  // namespace arena
