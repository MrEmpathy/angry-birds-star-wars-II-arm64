// stdio: guest FILE objects are 84-byte bionic-shaped tokens mapped to host FILE*.
// Old bionic macros read _flags (offset 12, __SEOF/__SERR) and _file (offset 14) directly.
#include <stdio.h>
#include <wchar.h>

#include <mutex>
#include <string>
#include <unordered_map>

#include "hle.h"

namespace {

using arena::h;
using arena::hp;

constexpr uint32_t kFileSize = 84;
constexpr int16_t kSeof = 0x20, kSerr = 0x40;

struct HostFile {
    FILE* f = nullptr;
    int log_prio = 0;  // stdout/stderr go to logcat instead
    std::string line;
};

std::mutex g_mu;
std::unordered_map<uint32_t, HostFile> g_files;
uint32_t g_sf = 0;  // guest __sF[3]

HostFile* lookup(uint32_t token) {
    std::lock_guard l(g_mu);
    auto it = g_files.find(token);
    return it == g_files.end() ? nullptr : &it->second;
}

void sync(uint32_t token, HostFile* hf) {
    if (!hf || !hf->f) return;
    int16_t flags = 0x4 | 0x8;  // __SRD | __SWR: guest code only inspects EOF/ERR
    if (feof(hf->f)) flags |= kSeof;
    if (ferror(hf->f)) flags |= kSerr;
    auto fd = static_cast<int16_t>(fileno(hf->f));
    memcpy(h(token + 12), &flags, 2);
    memcpy(h(token + 14), &fd, 2);
}

uint32_t wrap(FILE* f) {
    if (!f) return 0;
    uint32_t token = arena::gcalloc(1, kFileSize);
    {
        std::lock_guard l(g_mu);
        g_files[token].f = f;
    }
    sync(token, lookup(token));
    return token;
}

void log_write(HostFile* hf, const char* p, size_t n) {
    std::lock_guard l(g_mu);
    for (size_t i = 0; i < n; ++i) {
        if (p[i] == '\n') {
            __android_log_write(hf->log_prio, "absw-guest", hf->line.c_str());
            hf->line.clear();
        } else {
            hf->line.push_back(p[i]);
        }
    }
}

uint32_t g_fopen(GStr path, GStr mode) { return wrap(fopen(path.h(), mode.h())); }
uint32_t g_fdopen(int32_t fd, GStr mode) { return wrap(fdopen(fd, mode.h())); }
uint32_t g_tmpfile() { return wrap(tmpfile()); }
uint32_t g_freopen(GStr path, GStr mode, uint32_t t) {
    HostFile* hf = lookup(t);
    if (!hf || !hf->f) return 0;
    hf->f = freopen(path ? path.h() : nullptr, mode.h(), hf->f);
    if (!hf->f) return 0;
    sync(t, hf);
    return t;
}
int32_t g_fclose(uint32_t t) {
    HostFile* hf = lookup(t);
    if (!hf) return -1;
    if (!hf->f) return 0;  // std streams stay open
    int r = fclose(hf->f);
    {
        std::lock_guard l(g_mu);
        g_files.erase(t);
    }
    arena::gfree(t);
    return r;
}
uint32_t g_fread(GPtr<void> p, uint32_t sz, uint32_t n, uint32_t t) {
    HostFile* hf = lookup(t);
    if (!hf || !hf->f) return 0;
    size_t r = fread(p.h(), sz, n, hf->f);
    sync(t, hf);
    return static_cast<uint32_t>(r);
}
uint32_t g_fwrite(GPtr<const void> p, uint32_t sz, uint32_t n, uint32_t t) {
    HostFile* hf = lookup(t);
    if (!hf) return 0;
    if (!hf->f) { log_write(hf, static_cast<const char*>(p.h()), size_t{sz} * n); return n; }
    size_t r = fwrite(p.h(), sz, n, hf->f);
    sync(t, hf);
    return static_cast<uint32_t>(r);
}
int32_t g_fputs(GStr s, uint32_t t) {
    HostFile* hf = lookup(t);
    if (!hf) return EOF;
    if (!hf->f) { log_write(hf, s.h(), strlen(s.h())); return 1; }
    return fputs(s.h(), hf->f);
}
int32_t g_fputc(int32_t c, uint32_t t) {
    HostFile* hf = lookup(t);
    if (!hf) return EOF;
    if (!hf->f) { char ch = static_cast<char>(c); log_write(hf, &ch, 1); return c & 0xFF; }
    return fputc(c, hf->f);
}
int32_t g_getc(uint32_t t) {
    HostFile* hf = lookup(t);
    if (!hf || !hf->f) return EOF;
    int r = getc(hf->f);
    sync(t, hf);
    return r;
}
int32_t g_ungetc(int32_t c, uint32_t t) {
    HostFile* hf = lookup(t);
    if (!hf || !hf->f) return EOF;
    int r = ungetc(c, hf->f);
    sync(t, hf);
    return r;
}
GPtr<char> g_fgets(GPtr<char> buf, int32_t n, uint32_t t) {
    HostFile* hf = lookup(t);
    if (!hf || !hf->f) return {0};
    char* r = fgets(buf.h(), n, hf->f);
    sync(t, hf);
    return r ? buf : GPtr<char>{0};
}
int32_t g_fflush(uint32_t t) {
    if (!t) return fflush(nullptr);
    HostFile* hf = lookup(t);
    return hf && hf->f ? fflush(hf->f) : 0;
}
int32_t g_ferror(uint32_t t) {
    HostFile* hf = lookup(t);
    return hf && hf->f ? ferror(hf->f) : 0;
}
int32_t g_feof(uint32_t t) {
    HostFile* hf = lookup(t);
    return hf && hf->f ? feof(hf->f) : 0;
}
int32_t g_fileno(uint32_t t) {
    HostFile* hf = lookup(t);
    return hf && hf->f ? fileno(hf->f) : -1;
}
int32_t g_fseek(uint32_t t, int32_t off, int32_t whence) {
    HostFile* hf = lookup(t);
    if (!hf || !hf->f) return -1;
    int r = fseek(hf->f, off, whence);
    sync(t, hf);
    return r;
}
int32_t g_ftell(uint32_t t) {
    HostFile* hf = lookup(t);
    return hf && hf->f ? static_cast<int32_t>(ftell(hf->f)) : -1;
}
int32_t g_setvbuf(uint32_t t, GPtr<char>, int32_t mode, uint32_t size) {
    HostFile* hf = lookup(t);
    return hf && hf->f ? setvbuf(hf->f, nullptr, mode, size) : 0;
}
uint32_t g_getwc(uint32_t t) {
    HostFile* hf = lookup(t);
    if (!hf || !hf->f) return WEOF;
    wint_t r = getwc(hf->f);
    sync(t, hf);
    return r;
}
uint32_t g_putwc(uint32_t c, uint32_t t) {
    HostFile* hf = lookup(t);
    if (!hf) return WEOF;
    if (!hf->f) { char ch = static_cast<char>(c); log_write(hf, &ch, 1); return c; }
    return putwc(static_cast<wchar_t>(c), hf->f);
}
uint32_t g_ungetwc(uint32_t c, uint32_t t) {
    HostFile* hf = lookup(t);
    if (!hf || !hf->f) return WEOF;
    return ungetwc(c, hf->f);
}
int32_t g_android_log_write(int32_t prio, GStr tag, GStr msg) {
    return __android_log_write(prio, tag ? tag.h() : "absw-guest", msg ? msg.h() : "");
}

const hle::Def kDefs[] = {
    HE("fopen", g_fopen), HE("fdopen", g_fdopen), HE("tmpfile", g_tmpfile), HE("freopen", g_freopen),
    HE("fclose", g_fclose), HE("fread", g_fread), HE("fwrite", g_fwrite), HE("fputs", g_fputs),
    HE("fputc", g_fputc), HE("putc", g_fputc), HE("getc", g_getc), HE("ungetc", g_ungetc), HE("fgets", g_fgets),
    HE("fflush", g_fflush), H("ferror", g_ferror), H("feof", g_feof), H("fileno", g_fileno),
    HE("fseek", g_fseek), HE("fseeko", g_fseek), HE("ftell", g_ftell), HE("ftello", g_ftell),
    H("setvbuf", g_setvbuf), HE("getwc", g_getwc), HE("putwc", g_putwc), HE("ungetwc", g_ungetwc),
    H("__android_log_write", g_android_log_write),
};

}  // namespace

void hle::register_stdio() {
    g_sf = arena::static_alloc(3 * kFileSize, 8);
    memset(h(g_sf), 0, 3 * kFileSize);
    {
        std::lock_guard l(g_mu);
        g_files[g_sf].f = stdin;
        g_files[g_sf + kFileSize].log_prio = ANDROID_LOG_INFO;
        g_files[g_sf + 2 * kFileSize].log_prio = ANDROID_LOG_WARN;
    }
    for (int i = 0; i < 3; ++i) {
        int16_t fd = static_cast<int16_t>(i);
        memcpy(h(g_sf + i * kFileSize + 14), &fd, 2);
    }
    hle::add_data("__sF", g_sf);
    add_defs(kDefs, std::size(kDefs));
}
