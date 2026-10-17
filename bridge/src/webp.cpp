#include "webp.h"

#include <dlfcn.h>
#include <sys/system_properties.h>

#include <algorithm>
#include <atomic>
#include <cstddef>
#include <cstdlib>
#include <cstring>
#include <mutex>
#include <set>
#include <string>
#include <vector>

#include "arena.h"
#include "common.h"
#include "cpu.h"
#include "elf32.h"
#include "hle.h"
#include "perf.h"

namespace webp {
namespace {

// The game links libwebp 0.5 (WEBP_DECODER_ABI_VERSION 0x0208). Its texture loader fills a
// WebPDecoderConfig with WebPInitDecoderConfig, points config.output at its own buffer
// (is_external_memory = 1) and calls WebPDecode(data, size, &config).
constexpr uint32_t kDecoderAbi = 0x0208;

struct Features {  // WebPBitstreamFeatures
    int32_t width, height, has_alpha, has_animation, format;
    uint32_t pad[5];
};
struct RgbaBuffer {  // WebPRGBABuffer
    uint32_t rgba;
    int32_t stride;
    uint32_t size;
};
struct DecBuffer {  // WebPDecBuffer
    int32_t colorspace, width, height, is_external_memory;
    union {
        RgbaBuffer RGBA;
        uint32_t YUVA[12];
    } u;
    uint32_t pad[4];
    uint32_t private_memory;
};
struct Options {  // WebPDecoderOptions: bypass_filtering ... alpha_dithering_strength, then padding
    int32_t fields[14];
    uint32_t pad[5];
};
constexpr int kUseThreads = 10;  // the only option that does not change the output
struct Config {  // WebPDecoderConfig
    Features input;
    DecBuffer output;
    Options options;
};
static_assert(sizeof(Config) == 200);  // the size WebPInitDecoderConfigInternal clears
static_assert(offsetof(Config, output) == 40 && offsetof(Config, output) + offsetof(DecBuffer, u) == 56);

// WEBP_CSP_MODE values the native path produces.
enum Mode : int32_t {
    kRGB = 0, kRGBA = 1, kBGR = 2, kBGRA = 3, kRGBA4444 = 5, kPremulRGBA = 7, kPremulBGRA = 8, kPremulRGBA4444 = 10,
};

int bytes_per_pixel(int32_t mode) {
    switch (mode) {
        case kRGB: case kBGR: return 3;
        case kRGBA: case kBGRA: case kPremulRGBA: case kPremulBGRA: return 4;
        case kRGBA4444: case kPremulRGBA4444: return 2;
        default: return 0;
    }
}

// Android's AImageDecoder (libjnigraphics, API 30), looked up at run time: the bridge targets API 26.
struct AImageDecoder;
struct AImageDecoderHeaderInfo;
constexpr int32_t kBitmapRgba8888 = 1;  // ANDROID_BITMAP_FORMAT_RGBA_8888
struct Api {
    int (*create)(const void*, size_t, AImageDecoder**);
    void (*destroy)(AImageDecoder*);
    int (*set_format)(AImageDecoder*, int32_t);
    int (*set_unpremultiplied)(AImageDecoder*, bool);
    const AImageDecoderHeaderInfo* (*header)(const AImageDecoder*);
    int32_t (*width)(const AImageDecoderHeaderInfo*);
    int32_t (*height)(const AImageDecoderHeaderInfo*);
    int (*decode)(AImageDecoder*, void*, size_t, size_t);
};
Api g_api;
bool g_native = false;
bool g_verify = false;
std::atomic<uint32_t> g_verified{0}, g_verify_mismatches{0};

uint32_t g_original = 0;      // guest trampoline: the original WebPDecode
uint32_t g_get_features = 0;  // guest WebPGetFeaturesInternal

std::atomic<uint32_t> g_native_count{0}, g_guest_count{0};
std::atomic<uint64_t> g_native_ns{0}, g_guest_ns{0};
std::mutex g_reasons_mu;
std::set<std::string> g_reasons;

template <typename F>
bool sym(void* lib, const char* name, F* out) {
    *out = reinterpret_cast<F>(dlsym(lib, name));
    return *out != nullptr;
}

bool load_api() {
    void* lib = dlopen("libjnigraphics.so", RTLD_NOW);
    return lib && sym(lib, "AImageDecoder_createFromBuffer", &g_api.create) &&
           sym(lib, "AImageDecoder_delete", &g_api.destroy) &&
           sym(lib, "AImageDecoder_setAndroidBitmapFormat", &g_api.set_format) &&
           sym(lib, "AImageDecoder_setUnpremultipliedRequired", &g_api.set_unpremultiplied) &&
           sym(lib, "AImageDecoder_getHeaderInfo", &g_api.header) &&
           sym(lib, "AImageDecoderHeaderInfo_getWidth", &g_api.width) &&
           sym(lib, "AImageDecoderHeaderInfo_getHeight", &g_api.height) &&
           sym(lib, "AImageDecoder_decodeImage", &g_api.decode);
}

// A still image in a RIFF container without an ICC profile or EXIF data, which AImageDecoder would apply
// (color conversion, orientation) and libwebp ignores.
bool plain_container(const uint8_t* d, uint32_t n) {
    if (n < 21 || memcmp(d, "RIFF", 4) != 0 || memcmp(d + 8, "WEBP", 4) != 0) return false;
    if (memcmp(d + 12, "VP8 ", 4) == 0 || memcmp(d + 12, "VP8L", 4) == 0) return true;
    constexpr uint8_t kIcc = 0x20, kExif = 0x08, kAnimation = 0x02;
    return memcmp(d + 12, "VP8X", 4) == 0 && !(d[20] & (kIcc | kExif | kAnimation));
}

// libwebp 0.5's premultiplication (WebPApplyAlphaMultiply, WebPApplyAlphaMultiply4444; C versions).
void premultiply_rgba(uint8_t* p, int w) {
    for (int i = 0; i < w; ++i, p += 4) {
        const uint32_t a = p[3];
        if (a == 0xff) continue;
        const uint32_t m = a * 32897u;
        p[0] = static_cast<uint8_t>((p[0] * m) >> 23);
        p[1] = static_cast<uint8_t>((p[1] * m) >> 23);
        p[2] = static_cast<uint8_t>((p[2] * m) >> 23);
    }
}

void premultiply_4444(uint8_t* p, int w) {
    auto hi = [](uint32_t x) { return (x & 0xf0) | (x >> 4); };
    auto lo = [](uint32_t x) { return (x & 0x0f) | ((x << 4) & 0xf0); };
    for (int i = 0; i < w; ++i, p += 2) {
        const uint32_t rg = p[0], ba = p[1], a = ba & 0x0f, m = a * 0x1111;
        const uint32_t r = (hi(rg) * m) >> 16, g = (lo(rg) * m) >> 16, b = (hi(ba) * m) >> 16;
        p[0] = static_cast<uint8_t>((r & 0xf0) | ((g >> 4) & 0x0f));
        p[1] = static_cast<uint8_t>((b & 0xf0) | a);
    }
}

// One row of straight RGBA (as AImageDecoder returns it) in the requested layout.
void convert_row(const uint8_t* s, uint8_t* d, int w, int32_t mode) {
    switch (mode) {
        case kRGBA: case kPremulRGBA:
            memcpy(d, s, static_cast<size_t>(w) * 4);
            if (mode == kPremulRGBA) premultiply_rgba(d, w);
            break;
        case kBGRA: case kPremulBGRA:
            for (int i = 0; i < w; ++i, s += 4, d += 4) d[0] = s[2], d[1] = s[1], d[2] = s[0], d[3] = s[3];
            if (mode == kPremulBGRA) premultiply_rgba(d - 4 * w, w);  // same arithmetic, channel order aside
            break;
        case kRGB:
            for (int i = 0; i < w; ++i, s += 4, d += 3) d[0] = s[0], d[1] = s[1], d[2] = s[2];
            break;
        case kBGR:
            for (int i = 0; i < w; ++i, s += 4, d += 3) d[0] = s[2], d[1] = s[1], d[2] = s[0];
            break;
        case kRGBA4444: case kPremulRGBA4444:
            for (int i = 0; i < w; ++i, s += 4)
                d[2 * i] = (s[0] & 0xf0) | (s[1] >> 4), d[2 * i + 1] = (s[2] & 0xf0) | (s[3] >> 4);
            if (mode == kPremulRGBA4444) premultiply_4444(d, w);
            break;
    }
}

struct Decoder {
    AImageDecoder* d = nullptr;
    ~Decoder() {
        if (d) g_api.destroy(d);
    }
};

// Decodes like the game's WebPDecode would, or returns why the guest decoder has to do it.
const char* decode_natively(uint32_t data, uint32_t size, uint32_t config) {
    auto* cfg = arena::hp<Config>(config);
    const uint8_t* bytes = arena::hp<const uint8_t>(data);
    DecBuffer& out = cfg->output;
    const int32_t mode = out.colorspace;
    const int bpp = bytes_per_pixel(mode);
    if (!out.is_external_memory) return "output buffer owned by the decoder";
    if (!bpp) return "output mode";
    for (int i = 0; i < 14; ++i)
        if (i != kUseThreads && cfg->options.fields[i]) return "decoding options";
    if (!bytes || !plain_container(bytes, size)) return "container";
    // config->input comes from the game's own parser, exactly as its WebPDecode fills it.
    if (static_cast<uint32_t>(cpu::call(g_get_features, {data, size, config, kDecoderAbi})) != 0) return "header";
    const Features& f = cfg->input;
    const int w = f.width, h = f.height;
    const RgbaBuffer& b = out.u.RGBA;
    const uint64_t row = static_cast<uint64_t>(w) * bpp;
    if (f.has_animation || w <= 0 || h <= 0) return "animation";
    if (b.stride < 0 || static_cast<uint64_t>(b.stride) < row ||
        b.size < static_cast<uint64_t>(b.stride) * (h - 1) + row || !arena::contains(arena::h(b.rgba), b.size))
        return "output buffer";  // the guest reports VP8_STATUS_INVALID_PARAM

    Decoder dec;
    if (g_api.create(bytes, size, &dec.d) != 0 || !dec.d) return "AImageDecoder_createFromBuffer";
    const AImageDecoderHeaderInfo* info = g_api.header(dec.d);
    if (g_api.width(info) != w || g_api.height(info) != h) return "AImageDecoder size";
    if (g_api.set_format(dec.d, kBitmapRgba8888) != 0) return "AImageDecoder format";
    if (g_api.set_unpremultiplied(dec.d, true) != 0 && f.has_alpha) return "AImageDecoder unpremultiplied";
    uint8_t* dst = arena::hp<uint8_t>(b.rgba);
    if ((mode == kRGBA || mode == kPremulRGBA) && b.stride % 4 == 0) {
        if (g_api.decode(dec.d, dst, static_cast<size_t>(b.stride), b.size) != 0) return "AImageDecoder_decodeImage";
        if (mode == kPremulRGBA && f.has_alpha)
            for (int y = 0; y < h; ++y) premultiply_rgba(dst + static_cast<size_t>(y) * b.stride, w);
    } else {
        std::vector<uint8_t> rgba(static_cast<size_t>(w) * 4 * h);
        if (g_api.decode(dec.d, rgba.data(), static_cast<size_t>(w) * 4, rgba.size()) != 0)
            return "AImageDecoder_decodeImage";
        for (int y = 0; y < h; ++y)
            convert_row(rgba.data() + static_cast<size_t>(y) * w * 4, dst + static_cast<size_t>(y) * b.stride, w, mode);
    }
    out.width = w;
    out.height = h;
    return nullptr;
}

// debug.absw.native_webp=2: decodes each natively decoded image again with the game's decoder and logs
// how far the two results are apart. The game gets the game decoder's pixels.
void verify(uint32_t data, uint32_t size, uint32_t config) {
    const DecBuffer& out = arena::hp<Config>(config)->output;
    const RgbaBuffer b = out.u.RGBA;
    const size_t row = static_cast<size_t>(out.width) * bytes_per_pixel(out.colorspace);
    const uint8_t* px = arena::hp<const uint8_t>(b.rgba);
    std::vector<uint8_t> native;
    for (int y = 0; y < out.height; ++y) {
        const uint8_t* line = px + static_cast<size_t>(y) * b.stride;
        native.insert(native.end(), line, line + row);
    }
    const uint32_t status = static_cast<uint32_t>(cpu::call(g_original, {data, size, config}));
    size_t differ = 0;
    int max_diff = 0;
    for (int y = 0; y < out.height; ++y)
        for (size_t x = 0; x < row; ++x) {
            const int d = std::abs(native[y * row + x] - px[static_cast<size_t>(y) * b.stride + x]);
            differ += d != 0;
            max_diff = std::max(max_diff, d);
        }
    ++g_verified;
    if (differ) ++g_verify_mismatches;
    LOGI("webp: verify %dx%d mode %d: %zu of %zu bytes differ (max %d), game decoder status %u; %u of %u images differ",
         out.width, out.height, out.colorspace, differ, native.size(), max_diff, status, g_verify_mismatches.load(),
         g_verified.load());
}

void log_totals() {
    const uint32_t n = g_native_count.load(), g = g_guest_count.load();
    LOGI("webp: %u images decoded natively (%.0f ms), %u by the game's decoder (%.0f ms)", n,
         static_cast<double>(g_native_ns.load()) / 1e6, g, static_cast<double>(g_guest_ns.load()) / 1e6);
}

// WebPDecode(const uint8_t* data, size_t data_size, WebPDecoderConfig* config) -> VP8StatusCode
uint32_t decode(GPtr<const uint8_t> data, uint32_t size, GPtr<Config> config) {
    const uint64_t t0 = perf::now_ns();
    const char* why = !g_native ? "native decoding off" : !data || !config ? "null argument"
                                                                            : decode_natively(data.a, size, config.a);
    uint32_t status = 0;
    if (why) {
        status = static_cast<uint32_t>(cpu::call(g_original, {data.a, size, config.a}));
        g_guest_ns += perf::now_ns() - t0;
        ++g_guest_count;
        std::lock_guard l(g_reasons_mu);
        if (g_reasons.insert(why).second)
            LOGI("webp: game decoder used for %s (mode %d, status %u)", why,
                 config ? config.h()->output.colorspace : -1, status);
    } else {
        g_native_ns += perf::now_ns() - t0;
        ++g_native_count;
        if (g_verify) verify(data.a, size, config.a);
    }
    if (const uint32_t total = g_native_count.load() + g_guest_count.load(); total <= 32 || total % 32 == 0) log_totals();
    return status;
}

// An unconditional A32 instruction that behaves the same at another address: push without pc, or data
// processing without a pc operand.
bool relocatable(uint32_t w) {
    if (w >> 28 != 0xE) return false;
    if ((w & 0xFFFF8000u) == 0xE92D0000u) return true;  // push {...}
    const uint32_t rn = (w >> 16) & 15, rd = (w >> 12) & 15, rm = w & 15, op = (w >> 21) & 15;
    if (op >= 8 && op <= 11 && !(w & (1u << 20))) return false;  // MRS, MSR and other miscellaneous forms
    if ((w & 0x0E000000u) == 0x02000000u) return rn != 15 && rd != 15;                          // immediate
    if ((w & 0x0E000010u) == 0x00000000u) return rn != 15 && rd != 15 && rm != 15;              // shifted register
    return false;
}

}  // namespace

void install(elf::Module* game) {
    char v[PROP_VALUE_MAX] = {};
    const bool set = __system_property_get("debug.absw.native_webp", v) > 0;
    g_native = !(set && v[0] == '0');
    g_verify = set && v[0] == '2';
    auto entry = game->exports.find("WebPDecode");
    auto features = game->exports.find("WebPGetFeaturesInternal");
    if (entry == game->exports.end() || features == game->exports.end() || (entry->second & 1)) {
        LOGW("webp: WebPDecode not found as an ARM function; native decoding off");
        return;
    }
    if (g_native && !load_api()) {
        LOGI("webp: AImageDecoder not available (Android 11+); native decoding off");
        return;
    }
    const uint32_t fn = entry->second;
    auto* code = arena::hp<uint32_t>(fn);
    if (!relocatable(code[0]) || !relocatable(code[1])) {
        LOGW("webp: unexpected WebPDecode prologue %08x %08x; native decoding off", code[0], code[1]);
        return;
    }
    constexpr uint32_t kLdrPcLiteral = 0xE51FF004u;  // ldr pc, [pc, #-4]: jump to the next word
    g_original = arena::static_alloc(16);
    auto* tramp = arena::hp<uint32_t>(g_original);
    tramp[0] = code[0];
    tramp[1] = code[1];
    tramp[2] = kLdrPcLiteral;
    tramp[3] = fn + 8;
    g_get_features = features->second;
    code[0] = kLdrPcLiteral;
    code[1] = hle::add("WebPDecode (native)", &hle::detail::thunk<decode, false>);
    LOGI("webp: WebPDecode at %s %s", elf::describe(fn).c_str(),
         g_native ? "decodes with AImageDecoder" : "kept on the game's decoder (debug.absw.native_webp=0)");
}

}  // namespace webp
