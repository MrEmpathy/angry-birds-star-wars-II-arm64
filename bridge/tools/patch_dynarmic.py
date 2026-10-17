#!/usr/bin/env python3
"""Local changes to dynarmic, applied in place before each bridge build (idempotent, per file).

1. Jit::GuestBlockForHostPc (marker "absw: GuestBlockForHostPc").
   The bridge's sampling profiler (bridge/src/perf.cpp, debug.absw.perf=1) records host program counters
   on the rendering thread and maps those inside the JIT code cache back to guest addresses. The arm64
   backend already keeps that map (AddressSpace::ReverseGetLocation); this exposes it. The x64 backend,
   used only for the emulator build, returns no location.

2. FastDispatch for the arm64 backend's A32 frontend (marker "absw: FastDispatch").
   Upstream leaves FastDispatchHint as a TODO, so every indirect branch (jump tables, BX/BLX reg, calls
   through pointers) and every return the return stack buffer misses goes back to the dispatcher, which
   calls into C++ and looks the target up in a hash map. The game's Lua interpreter takes such a branch
   for every bytecode instruction; on a Galaxy S26 Ultra that lookup was about 15-18% of the rendering
   thread's CPU time. This adds a small direct-mapped cache (8192 entries per JIT, keyed by the full
   location descriptor) that emitted code checks before falling back to the dispatcher. It is emptied
   whenever blocks are invalidated or the code cache is cleared.

3. ALU writes to PC use fast dispatch (marker "absw: ALUWritePC fast dispatch").
   A32 data-processing instructions that write PC (`addls pc, pc, rN, lsl #2`, the jump table GCC emits
   for switch statements, including the Lua interpreter's opcode dispatch) ended their block with
   ReturnToDispatch, which skips the fast dispatch cache. FastDispatchHint has the same meaning: continue
   at the location now held in the guest state, which ALUWritePC has already updated (PC and the Thumb
   bit). The S-bit forms that would change the processor mode are already rejected as unpredictable
   before this point.

4. Jit::DumpBlockForProfiling (marker "absw: DumpBlockForProfiling").
   For the profiler's hottest guest blocks: the dynarmic IR and the emitted arm64 code, to study code
   generation. The x64 backend returns nothing.

5. OptimizationFlag::Unsafe_HostFpsr for the arm64 backend's A32 frontend (marker "absw: HostFpsr").
   Upstream clears the host FPSR (`msr fpsr, xzr`) before the first floating-point operation of every
   block and merges it into the guest state (`mrs fpsr` / orr / str) at the end of the block and before
   every host call, so that the guest's cumulative exception flags (FPSCR IOC..IDC, QC) are exact. Writes
   to FPSR serialize the pipeline: in Naboo 1-1 the instruction at or right after `msr fpsr` was about a
   quarter of the rendering thread's samples. With this flag the host FPSR holds the guest's cumulative
   flags for as long as JIT code runs: loaded on entry, merged back into the state on exit, and read or
   written directly by guest VMRS/VMSR FPSCR. The host's own FPSR is saved and restored around each run.
   Not exact: flags raised by host code that JIT code calls (callbacks, fallbacks) also reach the guest.
   The game never reads or writes FPSCR other than VMRS APSR_nzcv (the compare flags, kept apart).

6. OptimizationFlag::RelaxedHaltCheck for the arm64 backend's A32 frontend (marker "absw: RelaxedHaltCheck").
   The halt checks between blocks (block links, CheckHalt terminals, the dispatchers) read the halt flag
   with LDAR. A plain load is enough there: another thread's HaltExecution only has to become visible
   eventually, a halt requested by the running thread itself is visible in program order, and the exit
   path reads and clears the flag again with LDAXR/STLXR. About 10% of the samples were at those LDARs.

Usage: patch_dynarmic.py <dynarmic source tree>
"""
import pathlib
import sys

HOSTPC = "absw: GuestBlockForHostPc"
FAST = "absw: FastDispatch"
ALUPC = "absw: ALUWritePC fast dispatch"
DUMP = "absw: DumpBlockForProfiling"
HOSTFPSR = "absw: HostFpsr"
RELAXED = "absw: RelaxedHaltCheck"

PATCHES = [
    (HOSTPC, "src/dynarmic/interface/A32/a32.h", [
        ("#include <memory>\n", "#include <memory>\n#include <optional>\n"),
        ("    std::vector<std::string> Disassemble() const;\n",
         "    std::vector<std::string> Disassemble() const;\n\n"
         f"    /// {HOSTPC}: guest PC at the start of the compiled block containing host_pc, if host_pc is in\n"
         "    /// this JIT's code cache. Profiling only; call it from the thread that runs this JIT.\n"
         "    std::optional<std::uint32_t> GuestBlockForHostPc(const void* host_pc);\n"),
    ]),
    (HOSTPC, "src/dynarmic/backend/arm64/a32_interface.cpp", [
        ("    HaltReason Run() {\n        ASSERT(!jit_interface->is_executing);",
         f"    // {HOSTPC}\n"
         "    std::optional<u32> GuestBlockForHostPc(const void* host_pc) {\n"
         "        auto loc = current_address_space.ReverseGetLocation(static_cast<CodePtr>(const_cast<void*>(host_pc)));\n"
         "        if (!loc) return std::nullopt;\n"
         "        return A32::LocationDescriptor{*loc}.PC();\n"
         "    }\n\n"
         "    HaltReason Run() {\n        ASSERT(!jit_interface->is_executing);"),
        ("void Jit::ClearCache() {\n",
         "std::optional<std::uint32_t> Jit::GuestBlockForHostPc(const void* host_pc) {\n"
         "    return impl->GuestBlockForHostPc(host_pc);\n"
         "}\n\n"
         "void Jit::ClearCache() {\n"),
    ]),
    (HOSTPC, "src/dynarmic/backend/x64/a32_interface.cpp", [
        ("void Jit::ClearCache() {\n",
         f"// {HOSTPC}: not tracked by the x64 backend.\n"
         "std::optional<std::uint32_t> Jit::GuestBlockForHostPc(const void*) {\n"
         "    return std::nullopt;\n"
         "}\n\n"
         "void Jit::ClearCache() {\n"),
    ]),

    (FAST, "src/dynarmic/backend/arm64/emit_arm64.h", [
        ("    GetTicksRemaining,\n};\n",
         f"    GetTicksRemaining,\n    FastDispatch,  // {FAST}\n}};\n"),
    ]),
    (FAST, "src/dynarmic/backend/arm64/address_space.h", [
        ("#include <map>\n", "#include <map>\n#include <memory>\n"),
        ("    void ClearCache();\n",
         "    void ClearCache();\n\n"
         f"    // {FAST}: direct-mapped cache of location descriptor -> entry point, read by emitted code.\n"
         "    struct FastDispatchEntry {\n"
         "        u64 location_descriptor = ~u64{0};\n"
         "        CodePtr code_ptr = nullptr;\n"
         "    };\n"
         "    static constexpr size_t fast_dispatch_table_bits = 13;\n"
         "    static size_t FastDispatchIndex(u64 location_descriptor) {\n"
         "        return (location_descriptor >> 1) & ((size_t{1} << fast_dispatch_table_bits) - 1);\n"
         "    }\n"
         "    void SetFastDispatchEntry(u64 location_descriptor, CodePtr code_ptr);\n"
         "    void ClearFastDispatchTable();\n"),
        ("    tsl::robin_map<IR::LocationDescriptor, CodePtr> block_entries;\n",
         "    tsl::robin_map<IR::LocationDescriptor, CodePtr> block_entries;\n"
         "    std::unique_ptr<FastDispatchEntry[]> fast_dispatch_table;\n"),
        ("        void* return_from_run_code;\n",
         "        void* return_from_run_code;\n"
         "        void* fast_dispatch = nullptr;\n"),
    ]),
    (FAST, "src/dynarmic/backend/arm64/address_space.cpp", [
        ("#include <cstdio>\n", "#include <algorithm>\n#include <cstdio>\n"),
        ('    ASSERT_MSG(code_cache_size <= 128 * 1024 * 1024, "code_cache_size > 128 MiB not currently supported");\n',
         '    ASSERT_MSG(code_cache_size <= 128 * 1024 * 1024, "code_cache_size > 128 MiB not currently supported");\n'
         f"    fast_dispatch_table = std::make_unique<FastDispatchEntry[]>(size_t{{1}} << fast_dispatch_table_bits);  // {FAST}\n"),
        ("void AddressSpace::InvalidateBasicBlocks(const tsl::robin_set<IR::LocationDescriptor>& descriptors) {\n"
         "    UnprotectCodeMemory();\n",
         "void AddressSpace::InvalidateBasicBlocks(const tsl::robin_set<IR::LocationDescriptor>& descriptors) {\n"
         "    UnprotectCodeMemory();\n"
         "    ClearFastDispatchTable();\n"),
        ("void AddressSpace::ClearCache() {\n",
         "void AddressSpace::SetFastDispatchEntry(u64 location_descriptor, CodePtr code_ptr) {\n"
         "    auto& entry = fast_dispatch_table[FastDispatchIndex(location_descriptor)];\n"
         "    entry.location_descriptor = location_descriptor;\n"
         "    entry.code_ptr = code_ptr;\n"
         "}\n\n"
         "void AddressSpace::ClearFastDispatchTable() {\n"
         "    std::fill_n(fast_dispatch_table.get(), size_t{1} << fast_dispatch_table_bits, FastDispatchEntry{});\n"
         "}\n\n"
         "void AddressSpace::ClearCache() {\n"
         "    ClearFastDispatchTable();\n"),
        ("        case LinkTarget::GetTicksRemaining:\n"
         "            c.BL(prelude_info.get_ticks_remaining);\n"
         "            break;\n",
         "        case LinkTarget::GetTicksRemaining:\n"
         "            c.BL(prelude_info.get_ticks_remaining);\n"
         "            break;\n"
         "        case LinkTarget::FastDispatch:\n"
         "            c.B(prelude_info.fast_dispatch ? prelude_info.fast_dispatch : prelude_info.return_to_dispatcher);\n"
         "            break;\n"),
    ]),
    (FAST, "src/dynarmic/backend/arm64/a32_address_space.cpp", [
        ("    prelude_info.return_from_run_code = code.xptr<void*>();\n",
         f"    // {FAST}: same halt/tick checks as return_to_dispatcher, then a lookup in fast_dispatch_table\n"
         "    // keyed by the full location descriptor (regs[15] | upper_location_descriptor << 32).\n"
         "    if (conf.HasOptimization(OptimizationFlag::FastDispatch)) {\n"
         "        prelude_info.fast_dispatch = code.xptr<void*>();\n"
         "        oaknut::Label l_this, l_table, l_fill, l_miss;\n"
         "\n"
         "        code.LDAR(Wscratch0, Xhalt);\n"
         "        code.CBNZ(Wscratch0, return_from_run_code);\n"
         "        if (conf.enable_cycle_counting) {\n"
         "            code.CMP(Xticks, 0);\n"
         "            code.B(LE, return_from_run_code);\n"
         "        }\n"
         "\n"
         "        static_assert(offsetof(A32JitState, regs) + 16 * sizeof(u32) == offsetof(A32JitState, upper_location_descriptor));\n"
         "        code.LDUR(X0, Xstate, offsetof(A32JitState, regs) + 15 * sizeof(u32));\n"
         "        code.LDR(Xscratch0, l_table);\n"
         "        code.UBFX(Xscratch1, X0, 1, fast_dispatch_table_bits);\n"
         "        code.ADD(Xscratch0, Xscratch0, Xscratch1, LSL, 4);\n"
         "        static_assert(sizeof(FastDispatchEntry) == 16);\n"
         "        code.LDP(Xscratch1, X2, Xscratch0, 0);\n"
         "        code.CMP(Xscratch1, X0);\n"
         "        code.B(NE, l_miss);\n"
         "        code.BR(X2);\n"
         "\n"
         "        code.l(l_miss);\n"
         "        code.LDR(X0, l_this);\n"
         "        code.MOV(X1, Xstate);\n"
         "        code.LDR(Xscratch0, l_fill);\n"
         "        code.BLR(Xscratch0);\n"
         "        code.BR(X0);\n"
         "\n"
         "        const auto fill = [](A32AddressSpace& self, A32JitState& context) -> CodePtr {\n"
         "            const IR::LocationDescriptor location = context.GetLocationDescriptor();\n"
         "            const CodePtr entry = self.GetOrEmit(location);\n"
         "            self.SetFastDispatchEntry(location.Value(), entry);\n"
         "            return entry;\n"
         "        };\n"
         "\n"
         "        code.align(8);\n"
         "        code.l(l_this);\n"
         "        code.dx(mcl::bit_cast<u64>(this));\n"
         "        code.l(l_table);\n"
         "        code.dx(mcl::bit_cast<u64>(fast_dispatch_table.get()));\n"
         "        code.l(l_fill);\n"
         "        code.dx(mcl::bit_cast<u64>(Common::FptrCast(fill)));\n"
         "    }\n"
         "\n"
         "    prelude_info.return_from_run_code = code.xptr<void*>();\n"),
    ]),
    (ALUPC, "src/dynarmic/frontend/A32/translate/impl/data_processing.cpp", [
        ("namespace Dynarmic::A32 {\n",
         f"namespace Dynarmic::A32 {{\n\n// {ALUPC}: blocks that end with an ALU write to PC use FastDispatchHint.\n"),
        ("        ir.SetTerm(IR::Term::ReturnToDispatch{});\n",
         "        ir.SetTerm(IR::Term::FastDispatchHint{});\n", "all"),
    ]),
    (FAST, "src/dynarmic/backend/arm64/emit_arm64_a32.cpp", [
        ("        code.CMP(X0, Xscratch0);\n"
         "        code.B(NE, fail);\n"
         "        code.BR(Xscratch1);\n"
         "\n"
         "        code.l(fail);\n"
         "    }\n"
         "\n"
         "    EmitRelocation(code, ctx, LinkTarget::ReturnToDispatcher);\n",
         "        code.CMP(X0, Xscratch0);\n"
         "        code.B(NE, fail);\n"
         "        code.BR(Xscratch1);\n"
         "\n"
         "        code.l(fail);\n"
         "    }\n"
         "\n"
         f"    // {FAST}: a return the RSB did not predict goes through the fast dispatch cache.\n"
         "    const bool fast = ctx.conf.HasOptimization(OptimizationFlag::FastDispatch) && !is_single_step;\n"
         "    EmitRelocation(code, ctx, fast ? LinkTarget::FastDispatch : LinkTarget::ReturnToDispatcher);\n"),
        ("void EmitA32Terminal(oaknut::CodeGenerator& code, EmitContext& ctx, IR::Term::FastDispatchHint, IR::LocationDescriptor, bool) {\n"
         "    EmitRelocation(code, ctx, LinkTarget::ReturnToDispatcher);\n"
         "\n"
         "    // TODO: Implement FastDispatchHint optimization\n"
         "}\n",
         "void EmitA32Terminal(oaknut::CodeGenerator& code, EmitContext& ctx, IR::Term::FastDispatchHint, IR::LocationDescriptor, bool is_single_step) {\n"
         f"    // {FAST}\n"
         "    const bool fast = ctx.conf.HasOptimization(OptimizationFlag::FastDispatch) && !is_single_step;\n"
         "    EmitRelocation(code, ctx, fast ? LinkTarget::FastDispatch : LinkTarget::ReturnToDispatcher);\n"
         "}\n"),
    ]),

    (DUMP, "src/dynarmic/interface/A32/a32.h", [
        ("    std::optional<std::uint32_t> GuestBlockForHostPc(const void* host_pc);\n",
         "    std::optional<std::uint32_t> GuestBlockForHostPc(const void* host_pc);\n\n"
         f"    /// {DUMP}: IR and emitted host code of the compiled blocks that start at guest pc.\n"
         "    /// Profiling only; call it from the thread that runs this JIT.\n"
         "    std::string DumpBlockForProfiling(std::uint32_t pc);\n"),
    ]),
    (DUMP, "src/dynarmic/backend/arm64/address_space.h", [
        ("    void ClearFastDispatchTable();\n",
         "    void ClearFastDispatchTable();\n\n"
         f"    // {DUMP}\n"
         "    std::string DumpBlockForProfiling(u32 pc);\n"),
    ]),
    (DUMP, "src/dynarmic/backend/arm64/address_space.cpp", [
        ("#include <mcl/bit_cast.hpp>\n",
         "#include <fmt/format.h>\n#include <mcl/bit_cast.hpp>\n"),
        ('#include "dynarmic/interface/exclusive_monitor.h"\n',
         '#include "dynarmic/interface/exclusive_monitor.h"\n#include "dynarmic/ir/basic_block.h"\n'),
        ("void AddressSpace::ClearFastDispatchTable() {\n",
         f"// {DUMP}\n"
         "std::string AddressSpace::DumpBlockForProfiling(u32 pc) {\n"
         "    std::string out;\n"
         "    for (const auto& [descriptor, entry] : block_entries) {\n"
         "        if (static_cast<u32>(descriptor.Value()) != pc) {\n"
         "            continue;\n"
         "        }\n"
         "        out += IR::DumpBlock(GenerateIR(descriptor));\n"
         "        if (const auto info = block_infos.find(entry); info != block_infos.end()) {\n"
         "            out += fmt::format(\"host code: {} bytes\\n\", info->second.size);\n"
         "            const u32* words = reinterpret_cast<const u32*>(entry);\n"
         "            for (size_t i = 0; i < info->second.size / 4; ++i) {\n"
         "                out += fmt::format(\"{:08x}{}\", words[i], i % 8 == 7 ? \"\\n\" : \" \");\n"
         "            }\n"
         "            out += \"\\n\";\n"
         "        }\n"
         "    }\n"
         "    return out;\n"
         "}\n\n"
         "void AddressSpace::ClearFastDispatchTable() {\n"),
    ]),
    (DUMP, "src/dynarmic/backend/arm64/a32_interface.cpp", [
        ("    HaltReason Run() {\n        ASSERT(!jit_interface->is_executing);",
         f"    // {DUMP}\n"
         "    std::string DumpBlockForProfiling(u32 pc) {\n"
         "        return current_address_space.DumpBlockForProfiling(pc);\n"
         "    }\n\n"
         "    HaltReason Run() {\n        ASSERT(!jit_interface->is_executing);"),
        ("void Jit::ClearCache() {\n",
         "std::string Jit::DumpBlockForProfiling(std::uint32_t pc) {\n"
         "    return impl->DumpBlockForProfiling(pc);\n"
         "}\n\n"
         "void Jit::ClearCache() {\n"),
    ]),
    (DUMP, "src/dynarmic/backend/x64/a32_interface.cpp", [
        ("void Jit::ClearCache() {\n",
         f"// {DUMP}: not provided by the x64 backend.\n"
         "std::string Jit::DumpBlockForProfiling(std::uint32_t) {\n"
         "    return {};\n"
         "}\n\n"
         "void Jit::ClearCache() {\n"),
    ]),

    (HOSTFPSR, "src/dynarmic/interface/optimization_flags.h", [
        ("    Unsafe_IgnoreGlobalMonitor = 0x00100000,\n",
         "    Unsafe_IgnoreGlobalMonitor = 0x00100000,\n"
         f"    /// {HOSTFPSR}: this is an UNSAFE optimization (arm64 backend, A32 only) that keeps the guest's\n"
         "    /// cumulative floating-point exception flags in the host FPSR while JIT code runs, instead of\n"
         "    /// clearing and merging the host FPSR around the floating-point operations of each block.\n"
         "    /// Flags raised by host code called from JIT code (callbacks, fallbacks) reach the guest too.\n"
         "    Unsafe_HostFpsr = 0x00200000,\n"),
    ]),
    (HOSTFPSR, "src/dynarmic/backend/arm64/stack_layout.h", [
        ("    u32 save_host_fpcr;\n",
         "    u32 save_host_fpcr;\n\n"
         f"    u32 save_host_fpsr;  // {HOSTFPSR}\n"),
    ]),
    (HOSTFPSR, "src/dynarmic/backend/arm64/fpsr_manager.h", [
        ("    explicit FpsrManager(oaknut::CodeGenerator& code, size_t state_fpsr_offset);\n",
         f"    // {HOSTFPSR}: with host_fpsr the host FPSR always holds the guest's flags (see Unsafe_HostFpsr):\n"
         "    // Load and Spill emit nothing and GetFpsr merges the host FPSR into the state's value.\n"
         "    explicit FpsrManager(oaknut::CodeGenerator& code, size_t state_fpsr_offset, bool host_fpsr = false);\n"),
        ("    void Overwrite() { fpsr_loaded = false; }\n",
         "    void Overwrite() { fpsr_loaded = host_fpsr; }\n"),
        ("    size_t state_fpsr_offset;\n    bool fpsr_loaded = false;\n",
         "    size_t state_fpsr_offset;\n    bool host_fpsr;\n    bool fpsr_loaded;\n"),
    ]),
    (HOSTFPSR, "src/dynarmic/backend/arm64/fpsr_manager.cpp", [
        ("FpsrManager::FpsrManager(oaknut::CodeGenerator& code, size_t state_fpsr_offset)\n"
         "        : code{code}, state_fpsr_offset{state_fpsr_offset} {}\n",
         f"// {HOSTFPSR}\n"
         "FpsrManager::FpsrManager(oaknut::CodeGenerator& code, size_t state_fpsr_offset, bool host_fpsr)\n"
         "        : code{code}, state_fpsr_offset{state_fpsr_offset}, host_fpsr{host_fpsr}, fpsr_loaded{host_fpsr} {}\n"),
        ("void FpsrManager::Spill() {\n    if (!fpsr_loaded)\n        return;\n",
         "void FpsrManager::Spill() {\n    if (!fpsr_loaded || host_fpsr)\n        return;\n"),
    ]),
    (HOSTFPSR, "src/dynarmic/backend/arm64/emit_arm64.cpp", [
        ("    FpsrManager fpsr_manager{code, conf.state_fpsr_offset};\n",
         f"    FpsrManager fpsr_manager{{code, conf.state_fpsr_offset, conf.HasOptimization(OptimizationFlag::Unsafe_HostFpsr)}};  // {HOSTFPSR}\n"),
    ]),
    (HOSTFPSR, "src/dynarmic/backend/arm64/emit_arm64_a32.cpp", [
        ("    code.AND(Wfpscr, Wfpscr, 0xffff'0000);\n"
         "    code.ORR(Wscratch0, Wscratch0, Wscratch1);\n"
         "    code.ORR(Wfpscr, Wfpscr, Wscratch0);\n",
         "    code.AND(Wfpscr, Wfpscr, 0xffff'0000);\n"
         "    code.ORR(Wscratch0, Wscratch0, Wscratch1);\n"
         "    code.ORR(Wfpscr, Wfpscr, Wscratch0);\n"
         f"    if (ctx.conf.HasOptimization(OptimizationFlag::Unsafe_HostFpsr)) {{  // {HOSTFPSR}\n"
         "        code.MRS(Xscratch0, oaknut::SystemReg::FPSR);\n"
         "        code.ORR(Wfpscr, Wfpscr, Wscratch0);\n"
         "    }\n"),
        ("    code.AND(Wscratch1, Wfpscr, 0xf000'0000);\n"
         "    code.STP(Wscratch0, Wscratch1, Xstate, offsetof(A32JitState, fpsr));\n",
         "    code.AND(Wscratch1, Wfpscr, 0xf000'0000);\n"
         "    code.STP(Wscratch0, Wscratch1, Xstate, offsetof(A32JitState, fpsr));\n"
         f"    if (ctx.conf.HasOptimization(OptimizationFlag::Unsafe_HostFpsr)) {{  // {HOSTFPSR}\n"
         "        code.MSR(oaknut::SystemReg::FPSR, Xscratch0);\n"
         "    }\n"),
    ]),
    (HOSTFPSR, "src/dynarmic/backend/arm64/a32_address_space.cpp", [
        # Entry, in both run_code and step_code: save the host FPSR, load the guest's flags.
        ("        code.STR(Wscratch1, SP, offsetof(StackLayout, save_host_fpcr));\n"
         "        code.MSR(oaknut::SystemReg::FPCR, Xscratch0);\n",
         "        code.STR(Wscratch1, SP, offsetof(StackLayout, save_host_fpcr));\n"
         "        code.MSR(oaknut::SystemReg::FPCR, Xscratch0);\n"
         f"        if (conf.HasOptimization(OptimizationFlag::Unsafe_HostFpsr)) {{  // {HOSTFPSR}\n"
         "            code.MRS(Xscratch1, oaknut::SystemReg::FPSR);\n"
         "            code.STR(Wscratch1, SP, offsetof(StackLayout, save_host_fpsr));\n"
         "            code.LDR(Wscratch0, Xstate, offsetof(A32JitState, fpsr));\n"
         "            code.MSR(oaknut::SystemReg::FPSR, Xscratch0);\n"
         "        }\n", "all"),
        # Exit: merge the guest's flags into the state, restore the host FPSR.
        ("        code.LDR(Wscratch0, SP, offsetof(StackLayout, save_host_fpcr));\n"
         "        code.MSR(oaknut::SystemReg::FPCR, Xscratch0);\n",
         f"        if (conf.HasOptimization(OptimizationFlag::Unsafe_HostFpsr)) {{  // {HOSTFPSR}\n"
         "            code.LDR(Wscratch0, Xstate, offsetof(A32JitState, fpsr));\n"
         "            code.MRS(Xscratch1, oaknut::SystemReg::FPSR);\n"
         "            code.ORR(Wscratch0, Wscratch0, Wscratch1);\n"
         "            code.STR(Wscratch0, Xstate, offsetof(A32JitState, fpsr));\n"
         "            code.LDR(Wscratch0, SP, offsetof(StackLayout, save_host_fpsr));\n"
         "            code.MSR(oaknut::SystemReg::FPSR, Xscratch0);\n"
         "        }\n"
         "        code.LDR(Wscratch0, SP, offsetof(StackLayout, save_host_fpcr));\n"
         "        code.MSR(oaknut::SystemReg::FPCR, Xscratch0);\n"),
    ]),

    (RELAXED, "src/dynarmic/interface/optimization_flags.h", [
        ("    MiscIROpt = 0x00000020,\n",
         "    MiscIROpt = 0x00000020,\n"
         f"    /// {RELAXED}: the halt checks between blocks (arm64 backend, A32 only) read the halt flag with\n"
         "    /// a plain load instead of a load-acquire; the exit path still reads it with LDAXR.\n"
         "    /// This is a safe optimization.\n"
         "    RelaxedHaltCheck = 0x00000040,\n"),
    ]),
    (RELAXED, "src/dynarmic/backend/arm64/abi.h", [
        ("constexpr oaknut::XReg Xscratch0{16}, Xscratch1{17}, Xscratch2{30};\n"
         "constexpr oaknut::WReg Wscratch0{16}, Wscratch1{17}, Wscratch2{30};\n",
         "constexpr oaknut::XReg Xscratch0{16}, Xscratch1{17}, Xscratch2{30};\n"
         "constexpr oaknut::WReg Wscratch0{16}, Wscratch1{17}, Wscratch2{30};\n\n"
         f"// {RELAXED}: the halt flag read of a halt check between blocks.\n"
         "inline void LoadHaltFlag(oaknut::CodeGenerator& code, oaknut::WReg dest, bool relaxed) {\n"
         "    if (relaxed) {\n"
         "        code.LDR(dest, Xhalt, 0);\n"
         "    } else {\n"
         "        code.LDAR(dest, Xhalt);\n"
         "    }\n"
         "}\n"),
    ]),
    (RELAXED, "src/dynarmic/backend/arm64/a32_address_space.cpp", [
        ("    prelude_info.run_code = code.xptr<PreludeInfo::RunCodeFuncType>();\n",
         f"    // {RELAXED}: the halt checks below use LoadHaltFlag (abi.h); the exit path keeps LDAXR.\n"
         "    const bool relaxed_halt = conf.HasOptimization(OptimizationFlag::RelaxedHaltCheck);\n"
         "    prelude_info.run_code = code.xptr<PreludeInfo::RunCodeFuncType>();\n"),
        ("code.LDAR(Wscratch0, Xhalt);\n", "LoadHaltFlag(code, Wscratch0, relaxed_halt);\n", "all"),
    ]),
    (RELAXED, "src/dynarmic/backend/arm64/emit_arm64_a32.cpp", [
        ("void EmitA32Terminal(oaknut::CodeGenerator& code, EmitContext& ctx, IR::Term::LinkBlock terminal, IR::LocationDescriptor initial_location, bool is_single_step) {\n",
         f"// {RELAXED}: block links and CheckHalt read the halt flag with LoadHaltFlag (abi.h).\n"
         "void EmitA32Terminal(oaknut::CodeGenerator& code, EmitContext& ctx, IR::Term::LinkBlock terminal, IR::LocationDescriptor initial_location, bool is_single_step) {\n"),
        ("code.LDAR(Wscratch0, Xhalt);\n",
         "LoadHaltFlag(code, Wscratch0, ctx.conf.HasOptimization(OptimizationFlag::RelaxedHaltCheck));\n", "all"),
    ]),
]


def main() -> int:
    root = pathlib.Path(sys.argv[1])
    for marker, rel, edits in PATCHES:
        path = root / rel
        text = path.read_bytes().decode()
        if marker in text:
            continue
        for old, new, *mode in edits:
            count = text.count(old)
            if count != 1 and not (mode == ["all"] and count > 0):
                sys.exit(f"{rel}: expected {'some matches' if mode else 'one match'} for {old[:60]!r}, found {count}")
            text = text.replace(old, new)
        path.write_bytes(text.encode())
        print(f"patched {rel} ({marker})")
    return 0


if __name__ == "__main__":
    sys.exit(main())
