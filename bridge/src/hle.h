// Import registry (guest thunks -> host implementations) and AAPCS softfp argument marshaling.
#pragma once

#include <cerrno>
#include <cstdint>
#include <string>
#include <tuple>
#include <type_traits>

#include "arena.h"
#include "common.h"
#include "cpu.h"

// Guest pointer (32-bit guest address) typed for readability of implementations.
template <typename T>
struct GPtr {
    uint32_t a = 0;
    T* h() const { return arena::hp<T>(a); }
    explicit operator bool() const { return a != 0; }
};
using GStr = GPtr<const char>;

namespace hle {

using Fn = void (*)(cpu::Ctx&);
struct Def {
    const char* name;
    Fn fn;
};

void init();
void add_defs(const Def* defs, size_t n);
uint32_t add(const std::string& name, Fn fn);           // returns thunk address
void add_data(const std::string& name, uint32_t addr);  // data import (e.g. __sF)
uint32_t resolve(const std::string& name);
uint32_t unresolved_thunk(const std::string& name);
std::string thunk_name(uint32_t addr);
void dispatch(uint32_t idx, cpu::Ctx& c);

// Per-module registration (each hle_*.cpp provides one).
void register_libc();
void register_stdio();
void register_pthread();
void register_gles();
void register_android();

namespace detail {

template <typename T>
struct is_gptr : std::false_type {};
template <typename T>
struct is_gptr<GPtr<T>> : std::true_type {};

struct Reader {
    cpu::Ctx& c;
    int n = 0;
    uint32_t word() { return c.arg(n++); }
    uint64_t dword() {
        n = (n + 1) & ~1;
        uint64_t lo = c.arg(n++);
        uint64_t hi = c.arg(n++);
        return lo | (hi << 32);
    }
};

template <typename T>
T get(Reader& r) {
    if constexpr (is_gptr<T>::value) return T{r.word()};
    else if constexpr (std::is_same_v<T, cpu::Ctx*>) return &r.c;
    else if constexpr (std::is_same_v<T, float>) return std::bit_cast<float>(r.word());
    else if constexpr (std::is_same_v<T, double>) return std::bit_cast<double>(r.dword());
    else if constexpr (sizeof(T) == 8) return static_cast<T>(r.dword());
    else return static_cast<T>(r.word());
}

template <typename T>
void put(cpu::Ctx& c, T v) {
    if constexpr (is_gptr<T>::value) c.ret(v.a);
    else if constexpr (std::is_same_v<T, bool>) c.ret(v ? 1 : 0);
    else if constexpr (std::is_same_v<T, float>) c.ret(std::bit_cast<uint32_t>(v));
    else if constexpr (std::is_same_v<T, double>) c.ret64(std::bit_cast<uint64_t>(v));
    else if constexpr (sizeof(T) == 8) c.ret64(static_cast<uint64_t>(v));
    else if constexpr (std::is_signed_v<T>) c.ret(static_cast<uint32_t>(static_cast<int32_t>(v)));
    else c.ret(static_cast<uint32_t>(v));
}

template <typename F>
struct traits;
template <typename R, typename... A>
struct traits<R (*)(A...)> {
    using ret = R;
    using args = std::tuple<A...>;
};

template <auto F, bool Errno, typename... A>
void invoke(cpu::Ctx& c, std::tuple<A...>*) {
    Reader r{c};
    std::tuple<A...> args{get<A>(r)...};  // braced init: left-to-right
    if constexpr (Errno) errno = 0;
    using R = typename traits<decltype(F)>::ret;
    if constexpr (std::is_void_v<R>) {
        std::apply(F, args);
    } else {
        put(c, std::apply(F, args));
    }
    if constexpr (Errno) {
        if (errno) cpu::set_guest_errno(errno);
    }
}

template <auto F, bool Errno>
void thunk(cpu::Ctx& c) {
    invoke<F, Errno>(c, static_cast<typename traits<decltype(F)>::args*>(nullptr));
}

}  // namespace detail
}  // namespace hle

// H: plain import; HE: also mirrors host errno into the guest errno slot.
#define H(name, fn) hle::Def{name, &hle::detail::thunk<fn, false>}
#define HE(name, fn) hle::Def{name, &hle::detail::thunk<fn, true>}
#define HRAW(name, fn) hle::Def{name, fn}
