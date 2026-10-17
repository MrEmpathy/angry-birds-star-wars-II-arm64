// Loader for ARM32 (EABI) ET_DYN images into the guest arena.
#pragma once

#include <cstdint>
#include <string>
#include <unordered_map>
#include <vector>

namespace elf {

struct Module {
    std::string name;
    uint32_t base = 0;   // first guest byte of the image
    uint32_t size = 0;
    uint32_t bias = 0;   // guest address = vaddr + bias
    uint32_t exidx = 0;
    uint32_t exidx_count = 0;
    uint32_t init = 0;
    std::vector<uint32_t> init_array;
    std::unordered_map<std::string, uint32_t> exports;  // defined dynamic symbols (Thumb bit kept)
    std::vector<std::pair<uint32_t, std::string>> funcs;  // sorted, for diagnostics
    // Guest ranges [first, second) that never change after relocation: PT_LOAD segments without PF_W,
    // and PT_GNU_RELRO (the GOT and other data the dynamic linker makes read-only).
    std::vector<std::pair<uint32_t, uint32_t>> read_only;
};

// Maps and relocates the image; imports resolve against earlier modules, then the HLE registry.
Module* load(const std::string& name, const uint8_t* data, size_t size);
void run_init(Module* m);

uint32_t find_export(const std::string& name);  // across loaded modules, load order
const Module* owner(uint32_t addr);
bool owns(uint32_t addr);
bool is_read_only(uint32_t addr);  // inside a module's read_only ranges (JIT constant folding)
std::string describe(uint32_t addr);
uint32_t find_exidx(uint32_t pc, int32_t* count);

}  // namespace elf
