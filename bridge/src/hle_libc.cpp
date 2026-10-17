// libc / libm / libdl imports of the guest, implemented on the host bionic.
#include <arpa/inet.h>
#include <dirent.h>
#include <dlfcn.h>
#include <fcntl.h>
#include <fnmatch.h>
#include <math.h>
#include <netinet/in.h>
#include <poll.h>
#include <pwd.h>
#include <sched.h>
#include <signal.h>
#include <sys/auxv.h>
#include <sys/ioctl.h>
#include <sys/socket.h>
#include <sys/stat.h>
#include <sys/statfs.h>
#include <sys/syscall.h>
#include <sys/system_properties.h>
#include <sys/time.h>
#include <sys/uio.h>
#include <sys/utsname.h>
#include <linux/futex.h>
#include <time.h>
#include <unistd.h>
#include <utime.h>
#include <wchar.h>
#include <wctype.h>

#include <climits>
#include <cstdlib>
#include <map>
#include <mutex>
#include <random>
#include <string>
#include <unordered_map>
#include <vector>

#include "elf32.h"
#include "hle.h"

namespace {

using arena::g;
using arena::h;
using arena::hp;

// ---------------------------------------------------------------- memory
GPtr<void> g_malloc(uint32_t n) { return {arena::gmalloc(n)}; }
GPtr<void> g_calloc(uint32_t n, uint32_t s) { return {arena::gcalloc(n, s)}; }
GPtr<void> g_realloc(GPtr<void> p, uint32_t n) { return {arena::grealloc(p.a, n)}; }
void g_free(GPtr<void> p) { if (p) arena::gfree(p.a); }

std::mutex g_mmap_mu;
std::unordered_map<uint32_t, uint32_t> g_mmaps;

uint32_t g_mmap(GPtr<void> addr, uint32_t len, int32_t prot, int32_t flags, int32_t fd, int32_t off) {
    constexpr int32_t kMapFixed = 0x10, kMapAnon = 0x20;
    (void)prot;
    if (flags & kMapFixed) {
        LOGW("mmap MAP_FIXED at 0x%x unsupported", addr.a);
        cpu::set_guest_errno(EINVAL);
        return 0xFFFFFFFFu;
    }
    uint32_t a = arena::gmemalign(4096, len);
    if (!a) { cpu::set_guest_errno(ENOMEM); return 0xFFFFFFFFu; }
    memset(h(a), 0, len);
    if (!(flags & kMapAnon) && fd >= 0) {
        if (pread(fd, h(a), len, off) < 0) { arena::gfree(a); cpu::set_guest_errno(errno); return 0xFFFFFFFFu; }
    }
    std::lock_guard l(g_mmap_mu);
    g_mmaps[a] = len;
    return a;
}

int32_t g_munmap(GPtr<void> addr, uint32_t) {
    std::lock_guard l(g_mmap_mu);
    if (g_mmaps.erase(addr.a)) arena::gfree(addr.a);
    return 0;
}

// ---------------------------------------------------------------- strings
GPtr<void> g_memcpy(GPtr<void> d, GPtr<const void> s, uint32_t n) { if (n) memcpy(d.h(), s.h(), n); return d; }
GPtr<void> g_memmove(GPtr<void> d, GPtr<const void> s, uint32_t n) { if (n) memmove(d.h(), s.h(), n); return d; }
GPtr<void> g_memset(GPtr<void> d, int32_t c, uint32_t n) { if (n) memset(d.h(), c, n); return d; }
int32_t g_memcmp(GPtr<const void> a, GPtr<const void> b, uint32_t n) { return n ? memcmp(a.h(), b.h(), n) : 0; }
GPtr<void> g_memchr(GPtr<const void> s, int32_t c, uint32_t n) { return {n ? g(memchr(s.h(), c, n)) : 0}; }
GPtr<void> g_memrchr(GPtr<const void> s, int32_t c, uint32_t n) { return {n ? g(memrchr(s.h(), c, n)) : 0}; }
GPtr<void> g_memmem(GPtr<const void> a, uint32_t an, GPtr<const void> b, uint32_t bn) {
    return {g(memmem(a.h(), an, b.h(), bn))};
}
uint32_t g_strlen(GStr s) { return static_cast<uint32_t>(strlen(s.h())); }
int32_t g_strcmp(GStr a, GStr b) { return strcmp(a.h(), b.h()); }
int32_t g_strncmp(GStr a, GStr b, uint32_t n) { return strncmp(a.h(), b.h(), n); }
int32_t g_strcasecmp(GStr a, GStr b) { return strcasecmp(a.h(), b.h()); }
int32_t g_strncasecmp(GStr a, GStr b, uint32_t n) { return strncasecmp(a.h(), b.h(), n); }
int32_t g_strcoll(GStr a, GStr b) { return strcoll(a.h(), b.h()); }
uint32_t g_strxfrm(GPtr<char> d, GStr s, uint32_t n) { return static_cast<uint32_t>(strxfrm(d.h(), s.h(), n)); }
GPtr<char> g_strcpy(GPtr<char> d, GStr s) { strcpy(d.h(), s.h()); return d; }
GPtr<char> g_strncpy(GPtr<char> d, GStr s, uint32_t n) { strncpy(d.h(), s.h(), n); return d; }
GPtr<char> g_strcat(GPtr<char> d, GStr s) { strcat(d.h(), s.h()); return d; }
GPtr<char> g_strncat(GPtr<char> d, GStr s, uint32_t n) { strncat(d.h(), s.h(), n); return d; }
GPtr<char> g_strchr(GStr s, int32_t c) { return {g(strchr(s.h(), c))}; }
GPtr<char> g_strrchr(GStr s, int32_t c) { return {g(strrchr(s.h(), c))}; }
GPtr<char> g_strstr(GStr a, GStr b) { return {g(strstr(a.h(), b.h()))}; }
GPtr<char> g_strpbrk(GStr a, GStr b) { return {g(strpbrk(a.h(), b.h()))}; }
uint32_t g_strcspn(GStr a, GStr b) { return static_cast<uint32_t>(strcspn(a.h(), b.h())); }
GPtr<char> g_strdup(GStr s) { return {arena::gstrdup(s.h())}; }
GPtr<char> g_strtok_r(GPtr<char> s, GStr delim, GPtr<uint32_t> save) {
    char* hs = hp<char>(*save.h());
    char* r = strtok_r(s.h(), delim.h(), &hs);
    *save.h() = g(hs);
    return {g(r)};
}

std::mutex g_static_mu;
std::unordered_map<std::string, uint32_t> g_static_strings;
uint32_t interned(const std::string& s) {  // stable guest copy of a host string
    std::lock_guard l(g_static_mu);
    auto [it, fresh] = g_static_strings.try_emplace(s, 0);
    if (fresh) it->second = arena::static_strdup(s.c_str());
    return it->second;
}

GPtr<char> g_strerror(int32_t e) { return {interned(strerror(e))}; }
int32_t g_strerror_r(int32_t e, GPtr<char> buf, uint32_t n) {
    if (n) snprintf(buf.h(), n, "%s", strerror(e));
    return 0;
}
GPtr<char> g_basename(GStr path) {
    static thread_local uint32_t buf = arena::static_alloc(PATH_MAX + 1, 4);
    const char* p = path ? path.h() : "";
    std::string s(p);
    while (s.size() > 1 && s.back() == '/') s.pop_back();
    auto slash = s.rfind('/');
    if (slash != std::string::npos && s.size() > 1) s = s.substr(slash + 1);
    if (s.empty()) s = ".";
    snprintf(hp<char>(buf), PATH_MAX + 1, "%s", s.c_str());
    return {buf};
}
int32_t g_fnmatch(GStr pat, GStr str, int32_t flags) { return fnmatch(pat.h(), str.h(), flags); }

// ---------------------------------------------------------------- wide chars (wchar_t is 32-bit on both sides)
uint32_t g_wcslen(GPtr<const wchar_t> s) { return static_cast<uint32_t>(wcslen(s.h())); }
GPtr<wchar_t> g_wmemchr(GPtr<const wchar_t> s, int32_t c, uint32_t n) { return {n ? g(wmemchr(s.h(), c, n)) : 0}; }
int32_t g_wmemcmp(GPtr<const wchar_t> a, GPtr<const wchar_t> b, uint32_t n) { return n ? wmemcmp(a.h(), b.h(), n) : 0; }
GPtr<wchar_t> g_wmemcpy(GPtr<wchar_t> d, GPtr<const wchar_t> s, uint32_t n) { if (n) wmemcpy(d.h(), s.h(), n); return d; }
GPtr<wchar_t> g_wmemmove(GPtr<wchar_t> d, GPtr<const wchar_t> s, uint32_t n) { if (n) wmemmove(d.h(), s.h(), n); return d; }
GPtr<wchar_t> g_wmemset(GPtr<wchar_t> d, int32_t c, uint32_t n) { if (n) wmemset(d.h(), c, n); return d; }
int32_t g_wcscoll(GPtr<const wchar_t> a, GPtr<const wchar_t> b) { return wcscoll(a.h(), b.h()); }
uint32_t g_wcsxfrm(GPtr<wchar_t> d, GPtr<const wchar_t> s, uint32_t n) { return static_cast<uint32_t>(wcsxfrm(d.h(), s.h(), n)); }
uint32_t g_btowc(int32_t c) { return btowc(c); }
int32_t g_wctob(uint32_t c) { return wctob(c); }
uint32_t g_towlower(uint32_t c) { return towlower(c); }
uint32_t g_towupper(uint32_t c) { return towupper(c); }
uint32_t g_wctype(GStr name) { return static_cast<uint32_t>(wctype(name.h())); }
int32_t g_iswctype(uint32_t c, uint32_t t) { return iswctype(c, static_cast<wctype_t>(t)); }
uint32_t g_mbrtowc(GPtr<wchar_t> pwc, GStr s, uint32_t n, GPtr<uint32_t> ps) {
    mbstate_t st{};
    if (ps) memcpy(&st, ps.h(), 4);
    size_t r = mbrtowc(pwc.h(), s.h(), n, ps ? &st : nullptr);
    if (ps) memcpy(ps.h(), &st, 4);
    return static_cast<uint32_t>(r);
}
uint32_t g_wcrtomb(GPtr<char> s, uint32_t wc, GPtr<uint32_t> ps) {
    mbstate_t st{};
    if (ps) memcpy(&st, ps.h(), 4);
    size_t r = wcrtomb(s.h(), static_cast<wchar_t>(wc), ps ? &st : nullptr);
    if (ps) memcpy(ps.h(), &st, 4);
    return static_cast<uint32_t>(r);
}

// ---------------------------------------------------------------- conversions
int32_t g_atoi(GStr s) { return atoi(s.h()); }
int32_t g_strtol(GStr s, GPtr<uint32_t> end, int32_t base) {
    char* e;
    long v = strtol(s.h(), &e, base);
    if (end) *end.h() = g(e);
    if (v > INT32_MAX) { errno = ERANGE; return INT32_MAX; }
    if (v < INT32_MIN) { errno = ERANGE; return INT32_MIN; }
    return static_cast<int32_t>(v);
}
uint32_t g_strtoul(GStr s, GPtr<uint32_t> end, int32_t base) {
    char* e;
    unsigned long v = strtoul(s.h(), &e, base);
    if (end) *end.h() = g(e);
    if (v > UINT32_MAX && v < 0xFFFFFFFF00000000ul) { errno = ERANGE; return UINT32_MAX; }
    return static_cast<uint32_t>(v);
}
int64_t g_strtoll(GStr s, GPtr<uint32_t> end, int32_t base) {
    char* e;
    long long v = strtoll(s.h(), &e, base);
    if (end) *end.h() = g(e);
    return v;
}
uint64_t g_strtoull(GStr s, GPtr<uint32_t> end, int32_t base) {
    char* e;
    unsigned long long v = strtoull(s.h(), &e, base);
    if (end) *end.h() = g(e);
    return v;
}
double g_strtod(GStr s, GPtr<uint32_t> end) {
    char* e;
    double v = strtod(s.h(), &e);
    if (end) *end.h() = g(e);
    return v;
}

// sscanf: pointers that address same-size objects are translated in place; 32-bit `long`,
// `size_t`, `ptrdiff_t` and `%p` targets go through 64-bit temporaries.
void g_sscanf(cpu::Ctx& c) {
    const char* str = hp<char>(c.arg(0));
    const char* fmt = hp<char>(c.arg(1));
    void* ptrs[32] = {};
    struct Fix { int64_t v; uint32_t ga; bool is_unsigned; };
    Fix fixes[32];
    int np = 0, nf = 0, argi = 2;
    for (const char* p = fmt; *p && np < 32; ++p) {
        if (*p != '%') continue;
        ++p;
        if (*p == '%') continue;
        bool suppress = *p == '*';
        if (suppress) ++p;
        while (*p >= '0' && *p <= '9') ++p;
        char len = 0;
        if (*p == 'h' || *p == 'l' || *p == 'L' || *p == 'j' || *p == 'z' || *p == 't' || *p == 'q') {
            len = *p++;
            if ((len == 'h' && *p == 'h') || (len == 'l' && *p == 'l')) { len = len == 'l' ? 'q' : 'H'; ++p; }
        }
        char conv = *p;
        if (conv == '[') {
            ++p;
            if (*p == '^') ++p;
            if (*p == ']') ++p;
            while (*p && *p != ']') ++p;
        }
        if (suppress) continue;
        uint32_t ga = c.arg(argi++);
        bool integer = strchr("diouxXn", conv) != nullptr;
        bool widen = (integer && (len == 'l' || len == 'z' || len == 't')) || conv == 'p';
        if (widen) {
            int32_t cur;
            memcpy(&cur, h(ga), 4);
            fixes[nf] = {cur, ga, conv == 'u' || conv == 'x' || conv == 'X' || conv == 'o' || conv == 'p'};
            ptrs[np++] = &fixes[nf++].v;
        } else {
            ptrs[np++] = h(ga);
        }
    }
    int r = sscanf(str, fmt, ptrs[0], ptrs[1], ptrs[2], ptrs[3], ptrs[4], ptrs[5], ptrs[6], ptrs[7], ptrs[8], ptrs[9],
                   ptrs[10], ptrs[11], ptrs[12], ptrs[13], ptrs[14], ptrs[15], ptrs[16], ptrs[17], ptrs[18], ptrs[19],
                   ptrs[20], ptrs[21], ptrs[22], ptrs[23], ptrs[24], ptrs[25], ptrs[26], ptrs[27], ptrs[28], ptrs[29],
                   ptrs[30], ptrs[31]);
    for (int i = 0; i < nf; ++i) {
        uint32_t v = static_cast<uint32_t>(fixes[i].v);
        memcpy(h(fixes[i].ga), &v, 4);
    }
    c.ret(static_cast<uint32_t>(r));
}

// ---------------------------------------------------------------- math (softfp: doubles in core register pairs)
#define M1(n) double m_##n(double x) { return ::n(x); }
#define M1F(n) float m_##n(float x) { return ::n(x); }
#define M2(n) double m_##n(double x, double y) { return ::n(x, y); }
#define M2F(n) float m_##n(float x, float y) { return ::n(x, y); }
M1(acos) M1(asin) M1(atan) M1(ceil) M1(cos) M1(cosh) M1(exp) M1(floor) M1(log) M1(log10) M1(rint) M1(sin)
M1(sinh) M1(sqrt) M1(tan) M1(tanh) M1(trunc)
M1F(ceilf) M1F(cosf) M1F(floorf) M1F(sinf) M1F(sqrtf) M1F(tanf)
M2(atan2) M2(fmod) M2(pow) M2F(atan2f) M2F(fmodf) M2F(powf)
double m_ldexp(double x, int32_t e) { return ldexp(x, e); }
double m_frexp(double x, GPtr<int32_t> e) { int ee; double r = frexp(x, &ee); *e.h() = ee; return r; }
double m_modf(double x, GPtr<double> ip) { double i; double r = modf(x, &i); memcpy(ip.h(), &i, 8); return r; }
int32_t m_isnan(double x) { return std::isnan(x); }
int32_t g_lrand48() { return static_cast<int32_t>(lrand48()); }
void g_srand48(int32_t s) { srand48(s); }

// ---------------------------------------------------------------- time
struct GTimeval { int32_t sec, usec; };
struct GTimespec { int32_t sec, nsec; };
struct GTm { int32_t sec, min, hour, mday, mon, year, wday, yday, isdst, gmtoff; uint32_t zone; };

void tm_to_guest(const struct tm& t, GTm* o) {
    *o = {t.tm_sec, t.tm_min, t.tm_hour, t.tm_mday, t.tm_mon, t.tm_year, t.tm_wday, t.tm_yday, t.tm_isdst,
          static_cast<int32_t>(t.tm_gmtoff), t.tm_zone ? interned(t.tm_zone) : 0};
}
struct tm tm_from_guest(const GTm* o) {
    struct tm t{};
    t.tm_sec = o->sec; t.tm_min = o->min; t.tm_hour = o->hour; t.tm_mday = o->mday; t.tm_mon = o->mon;
    t.tm_year = o->year; t.tm_wday = o->wday; t.tm_yday = o->yday; t.tm_isdst = o->isdst; t.tm_gmtoff = o->gmtoff;
    t.tm_zone = o->zone ? hp<const char>(o->zone) : nullptr;
    return t;
}

int32_t g_time(GPtr<int32_t> t) {
    int32_t v = static_cast<int32_t>(time(nullptr));
    if (t) *t.h() = v;
    return v;
}
int32_t g_gettimeofday(GPtr<GTimeval> tv, GPtr<void>) {
    struct timeval t;
    int r = gettimeofday(&t, nullptr);
    if (tv) *tv.h() = {static_cast<int32_t>(t.tv_sec), static_cast<int32_t>(t.tv_usec)};
    return r;
}
int32_t g_clock_gettime(int32_t clk, GPtr<GTimespec> ts) {
    struct timespec t;
    int r = clock_gettime(clk, &t);
    if (r == 0 && ts) *ts.h() = {static_cast<int32_t>(t.tv_sec), static_cast<int32_t>(t.tv_nsec)};
    return r;
}
int32_t g_nanosleep(GPtr<const GTimespec> req, GPtr<GTimespec> rem) {
    struct timespec rq{req.h()->sec, req.h()->nsec}, rm{};
    int r = nanosleep(&rq, &rm);
    if (rem) *rem.h() = {static_cast<int32_t>(rm.tv_sec), static_cast<int32_t>(rm.tv_nsec)};
    return r;
}
int32_t g_clock() { return static_cast<int32_t>(clock()); }
double g_difftime(int32_t a, int32_t b) { return static_cast<double>(a) - static_cast<double>(b); }
GPtr<GTm> g_gmtime_r(GPtr<const int32_t> t, GPtr<GTm> out) {
    time_t tt = *t.h();
    struct tm r;
    if (!gmtime_r(&tt, &r)) return {0};
    tm_to_guest(r, out.h());
    return out;
}
GPtr<GTm> g_localtime_r(GPtr<const int32_t> t, GPtr<GTm> out) {
    time_t tt = *t.h();
    struct tm r;
    if (!localtime_r(&tt, &r)) return {0};
    tm_to_guest(r, out.h());
    return out;
}
uint32_t g_tm_static() {
    static uint32_t a = arena::static_alloc(sizeof(GTm), 4);
    return a;
}
GPtr<GTm> g_gmtime(GPtr<const int32_t> t) { return g_gmtime_r(t, {g_tm_static()}); }
GPtr<GTm> g_localtime(GPtr<const int32_t> t) { return g_localtime_r(t, {g_tm_static()}); }
int32_t g_mktime(GPtr<GTm> t) {
    struct tm ht = tm_from_guest(t.h());
    time_t r = mktime(&ht);
    tm_to_guest(ht, t.h());
    return static_cast<int32_t>(r);
}
uint32_t g_strftime(GPtr<char> s, uint32_t max, GStr fmt, GPtr<const GTm> t) {
    struct tm ht = tm_from_guest(t.h());
    return static_cast<uint32_t>(strftime(s.h(), max, fmt.h(), &ht));
}
uint32_t g_wcsftime(GPtr<wchar_t> s, uint32_t max, GPtr<const wchar_t> fmt, GPtr<const GTm> t) {
    struct tm ht = tm_from_guest(t.h());
    return static_cast<uint32_t>(wcsftime(s.h(), max, fmt.h(), &ht));
}
int32_t g_utime(GStr path, GPtr<const int32_t> times) {
    if (!times) return utime(path.h(), nullptr);
    struct utimbuf u{times.h()[0], times.h()[1]};
    return utime(path.h(), &u);
}

// ---------------------------------------------------------------- file system
int host_open_flags(int32_t f) {
    // ARM and arm64 share these values; x86_64 uses the asm-generic ones.
    constexpr int kDirectory = 040000, kNoFollow = 0100000, kDirect = 0200000, kLargeFile = 0400000;
    int r = f & ~(kDirectory | kNoFollow | kDirect | kLargeFile);
    if (f & kDirectory) r |= O_DIRECTORY;
    if (f & kNoFollow) r |= O_NOFOLLOW;
    if (f & kDirect) r |= O_DIRECT;
    return r;
}
int32_t guest_open_flags(int f) {
    int32_t r = f & ~(O_DIRECTORY | O_NOFOLLOW | O_DIRECT);
    if (f & O_DIRECTORY) r |= 040000;
    if (f & O_NOFOLLOW) r |= 0100000;
    if (f & O_DIRECT) r |= 0200000;
    return r;
}

int32_t g_open(GStr path, int32_t flags, int32_t mode) { return open(path.h(), host_open_flags(flags), mode); }
int32_t g_close(int32_t fd) { return close(fd); }
int32_t g_read(int32_t fd, GPtr<void> b, uint32_t n) { return static_cast<int32_t>(read(fd, b.h(), n)); }
int32_t g_write(int32_t fd, GPtr<const void> b, uint32_t n) { return static_cast<int32_t>(write(fd, b.h(), n)); }
int32_t g_lseek(int32_t fd, int32_t off, int32_t whence) { return static_cast<int32_t>(lseek(fd, off, whence)); }
int32_t g_fsync(int32_t fd) { return fsync(fd); }
int32_t g_dup(int32_t fd) { return dup(fd); }
int32_t g_pipe(GPtr<int32_t> fds) { return pipe(reinterpret_cast<int*>(fds.h())); }
int32_t g_poll(GPtr<struct pollfd> fds, uint32_t n, int32_t timeout) { return poll(fds.h(), n, timeout); }
int32_t g_writev(int32_t fd, GPtr<const uint32_t> iov, int32_t cnt) {
    std::vector<struct iovec> v(static_cast<size_t>(cnt > 0 ? cnt : 0));
    for (int32_t i = 0; i < cnt; ++i)
        v[static_cast<size_t>(i)] = {h(iov.h()[2 * i]), iov.h()[2 * i + 1]};
    return static_cast<int32_t>(writev(fd, v.data(), cnt));
}
int32_t g_access(GStr p, int32_t m) { return access(p.h(), m); }
int32_t g_chmod(GStr p, uint32_t m) { return chmod(p.h(), m); }
int32_t g_mkdir(GStr p, uint32_t m) { return mkdir(p.h(), m); }
int32_t g_rmdir(GStr p) { return rmdir(p.h()); }
int32_t g_unlink(GStr p) { return unlink(p.h()); }
int32_t g_remove(GStr p) { return remove(p.h()); }
int32_t g_rename(GStr a, GStr b) { return rename(a.h(), b.h()); }
int32_t g_ftruncate(int32_t fd, int32_t len) { return ftruncate(fd, len); }
int32_t g_mkstemp(GPtr<char> tmpl) { return mkstemp(tmpl.h()); }
int32_t g_pathconf(GStr p, int32_t n) { return static_cast<int32_t>(pathconf(p.h(), n)); }
GPtr<char> g_getcwd(GPtr<char> buf, uint32_t size) {
    char tmp[PATH_MAX];
    if (!getcwd(tmp, sizeof tmp)) return {0};
    if (!buf) return {arena::gstrdup(tmp)};
    if (strlen(tmp) + 1 > size) { errno = ERANGE; return {0}; }
    strcpy(buf.h(), tmp);
    return buf;
}

int32_t g_fcntl(int32_t fd, int32_t cmd, uint32_t arg) {
    switch (cmd) {
    case F_GETFL: { int r = fcntl(fd, F_GETFL); return r < 0 ? r : guest_open_flags(r); }
    case F_SETFL: return fcntl(fd, F_SETFL, host_open_flags(static_cast<int32_t>(arg)));
    case F_GETFD: case F_SETFD: case F_DUPFD: case F_DUPFD_CLOEXEC: return fcntl(fd, cmd, static_cast<int32_t>(arg));
    default:
        LOGW("fcntl cmd %d unsupported", cmd);
        errno = EINVAL;
        return -1;
    }
}
int32_t g_ioctl(int32_t fd, uint32_t req, uint32_t arg) {
    // FIONBIO, FIONREAD and most others take a pointer to an int-sized object.
    return ioctl(fd, req, arg ? h(arg) : nullptr);
}

void put_stat(const struct stat& s, uint8_t* o) {
    memset(o, 0, 104);
    auto p32 = [&](int off, uint32_t v) { memcpy(o + off, &v, 4); };
    auto p64 = [&](int off, uint64_t v) { memcpy(o + off, &v, 8); };
    p64(0, s.st_dev); p32(12, static_cast<uint32_t>(s.st_ino)); p32(16, s.st_mode); p32(20, static_cast<uint32_t>(s.st_nlink));
    p32(24, s.st_uid); p32(28, s.st_gid); p64(32, s.st_rdev); p64(48, static_cast<uint64_t>(s.st_size));
    p32(56, static_cast<uint32_t>(s.st_blksize)); p64(64, static_cast<uint64_t>(s.st_blocks));
    p32(72, static_cast<uint32_t>(s.st_atim.tv_sec)); p32(76, static_cast<uint32_t>(s.st_atim.tv_nsec));
    p32(80, static_cast<uint32_t>(s.st_mtim.tv_sec)); p32(84, static_cast<uint32_t>(s.st_mtim.tv_nsec));
    p32(88, static_cast<uint32_t>(s.st_ctim.tv_sec)); p32(92, static_cast<uint32_t>(s.st_ctim.tv_nsec));
    p64(96, s.st_ino);
}
int32_t g_stat(GStr p, GPtr<uint8_t> out) {
    struct stat s;
    int r = stat(p.h(), &s);
    if (r == 0) put_stat(s, out.h());
    return r;
}
int32_t g_fstat(int32_t fd, GPtr<uint8_t> out) {
    struct stat s;
    int r = fstat(fd, &s);
    if (r == 0) put_stat(s, out.h());
    return r;
}
int32_t g_statfs(GStr p, GPtr<uint8_t> out) {
    struct statfs s;
    int r = statfs(p.h(), &s);
    if (r != 0) return r;
    uint8_t* o = out.h();
    memset(o, 0, 84);
    auto p32 = [&](int off, uint32_t v) { memcpy(o + off, &v, 4); };
    auto p64 = [&](int off, uint64_t v) { memcpy(o + off, &v, 8); };
    p32(0, static_cast<uint32_t>(s.f_type)); p32(4, static_cast<uint32_t>(s.f_bsize));
    p64(8, s.f_blocks); p64(16, s.f_bfree); p64(24, s.f_bavail); p64(32, s.f_files); p64(40, s.f_ffree);
    memcpy(o + 48, &s.f_fsid, 8);
    p32(56, static_cast<uint32_t>(s.f_namelen)); p32(60, static_cast<uint32_t>(s.f_frsize));
    p32(64, static_cast<uint32_t>(s.f_flags));
    return 0;
}

std::mutex g_dir_mu;
std::unordered_map<uint32_t, DIR*> g_dirs;
uint32_t g_opendir(GStr p) {
    DIR* d = opendir(p.h());
    if (!d) return 0;
    uint32_t token = arena::gmalloc(16);
    std::lock_guard l(g_dir_mu);
    g_dirs[token] = d;
    return token;
}
DIR* host_dir(uint32_t t) {
    std::lock_guard l(g_dir_mu);
    auto it = g_dirs.find(t);
    return it == g_dirs.end() ? nullptr : it->second;
}
int32_t g_closedir(uint32_t t) {
    DIR* d;
    {
        std::lock_guard l(g_dir_mu);
        auto it = g_dirs.find(t);
        if (it == g_dirs.end()) return -1;
        d = it->second;
        g_dirs.erase(it);
    }
    arena::gfree(t);
    return closedir(d);
}
int32_t g_readdir_r(uint32_t t, GPtr<uint8_t> entry, GPtr<uint32_t> result) {
    DIR* d = host_dir(t);
    if (!d) return EBADF;
    errno = 0;
    struct dirent* e = readdir(d);
    if (!e) { *result.h() = 0; return errno; }
    static_assert(sizeof(struct dirent) == 280, "bionic dirent layout");
    memcpy(entry.h(), e, sizeof(struct dirent));
    *result.h() = entry.a;
    return 0;
}

// ---------------------------------------------------------------- sockets (sockaddr layouts are ABI-neutral)
int32_t g_socket(int32_t d, int32_t t, int32_t p) { return socket(d, t, p); }
int32_t g_bind(int32_t fd, GPtr<const sockaddr> a, uint32_t l) { return bind(fd, a.h(), l); }
int32_t g_connect(int32_t fd, GPtr<const sockaddr> a, uint32_t l) { return connect(fd, a.h(), l); }
int32_t g_getsockname(int32_t fd, GPtr<sockaddr> a, GPtr<socklen_t> l) { return getsockname(fd, a.h(), l.h()); }
int32_t g_getpeername(int32_t fd, GPtr<sockaddr> a, GPtr<socklen_t> l) { return getpeername(fd, a.h(), l.h()); }
int32_t g_send(int32_t fd, GPtr<const void> b, uint32_t n, int32_t f) {
    return static_cast<int32_t>(send(fd, b.h(), n, f | MSG_NOSIGNAL));
}
int32_t g_recv(int32_t fd, GPtr<void> b, uint32_t n, int32_t f) { return static_cast<int32_t>(recv(fd, b.h(), n, f)); }
int32_t g_recvfrom(int32_t fd, GPtr<void> b, uint32_t n, int32_t f, GPtr<sockaddr> a, GPtr<socklen_t> l) {
    return static_cast<int32_t>(recvfrom(fd, b.h(), n, f, a.h(), l.h()));
}
bool is_timeo(int32_t level, int32_t name) { return level == SOL_SOCKET && (name == SO_RCVTIMEO || name == SO_SNDTIMEO); }
int32_t g_setsockopt(int32_t fd, int32_t level, int32_t name, GPtr<const void> v, uint32_t l) {
    if (is_timeo(level, name) && l >= 8) {
        auto* gt = reinterpret_cast<const GTimeval*>(v.h());
        struct timeval t{gt->sec, gt->usec};
        return setsockopt(fd, level, name, &t, sizeof t);
    }
    return setsockopt(fd, level, name, v.h(), l);
}
int32_t g_getsockopt(int32_t fd, int32_t level, int32_t name, GPtr<void> v, GPtr<socklen_t> l) {
    if (is_timeo(level, name)) {
        struct timeval t{};
        socklen_t tl = sizeof t;
        int r = getsockopt(fd, level, name, &t, &tl);
        *reinterpret_cast<GTimeval*>(v.h()) = {static_cast<int32_t>(t.tv_sec), static_cast<int32_t>(t.tv_usec)};
        *l.h() = 8;
        return r;
    }
    return getsockopt(fd, level, name, v.h(), l.h());
}
uint32_t g_inet_addr(GStr s) { return inet_addr(s.h()); }
GPtr<char> g_inet_ntop(int32_t af, GPtr<const void> src, GPtr<char> dst, uint32_t n) {
    return inet_ntop(af, src.h(), dst.h(), n) ? dst : GPtr<char>{0};
}
int32_t g_inet_pton(int32_t af, GStr src, GPtr<void> dst) { return inet_pton(af, src.h(), dst.h()); }
int32_t g_gethostname(GPtr<char> b, uint32_t n) { return gethostname(b.h(), n); }

// ---------------------------------------------------------------- process / environment
int32_t g_getpid() { return getpid(); }
uint32_t g_geteuid() { return geteuid(); }
uint32_t g_getpwuid(uint32_t uid) {
    static uint32_t pw = arena::static_alloc(24, 4);
    struct passwd* p = getpwuid(uid);
    if (!p) return 0;
    auto* o = hp<uint32_t>(pw);
    o[0] = interned(p->pw_name ? p->pw_name : "");
    o[1] = interned("");
    o[2] = p->pw_uid;
    o[3] = p->pw_gid;
    o[4] = interned(p->pw_dir ? p->pw_dir : "/");
    o[5] = interned(p->pw_shell ? p->pw_shell : "");
    return pw;
}
GPtr<char> g_getenv(GStr name) {
    const char* v = getenv(name.h());
    return {v ? interned(v) : 0};
}
GPtr<char> g_setlocale(int32_t, GStr) { return {interned("C")}; }
int32_t g_sysconf(int32_t n) {
    long v = sysconf(n);
    return v > INT32_MAX ? INT32_MAX : static_cast<int32_t>(v);
}
uint32_t g_getauxval(uint32_t type) {
    constexpr uint32_t kHwcapArm = 1 | 2 | 4 | 16 | 64 | 128 | 4096 | 8192 | 32768 | 65536 | 131072 | 262144 | 524288;
    switch (type) {
    case 16: return kHwcapArm;  // AT_HWCAP: swp half thumb fastmult vfp edsp neon vfpv3 tls vfpv4 idiva idivt vfpd32
    case 26: return 0;          // AT_HWCAP2: no crypto extensions advertised
    case 6: return 4096;        // AT_PAGESZ
    default: return 0;
    }
}
int32_t g_system_property_get(GStr name, GPtr<char> value) { return __system_property_get(name.h(), value.h()); }
int32_t g_sched_yield() { return sched_yield(); }
int32_t g_sigaction(int32_t, GPtr<const void>, GPtr<uint8_t> old) {
    if (old) memset(old.h(), 0, 16);
    return 0;
}
int32_t g_sigprocmask(int32_t, GPtr<const void>, GPtr<uint8_t> old) {
    if (old) memset(old.h(), 0, 4);
    return 0;
}
void g_abort(cpu::Ctx& c) { fatal("guest abort() from %s", elf::describe(c.r(14)).c_str()); }
void g_exit(int32_t code) {
    LOGW("guest exit(%d)", code);
    exit(code);
}
void g__exit(int32_t code) {
    LOGW("guest _exit(%d)", code);
    _exit(code);
}
// struct utsname is six 65-byte fields on every ABI. The machine field reports the guest CPU.
int32_t g_uname(GPtr<struct utsname> u) {
    int32_t r = uname(u.h());
    if (r == 0) snprintf(u.h()->machine, sizeof u.h()->machine, "armv7l");
    return r;
}
int32_t g_raise(int32_t sig) {
    LOGW("guest raise(%d)", sig);
    if (sig == SIGABRT || sig == SIGSEGV || sig == SIGKILL) fatal("guest raised signal %d", sig);
    return 0;
}
void g_stack_chk_fail(cpu::Ctx& c) { fatal("guest stack smashing detected near %s", elf::describe(c.r(14)).c_str()); }

void g_syscall(cpu::Ctx& c) {
    int32_t nr = static_cast<int32_t>(c.arg(0));
    long r;
    switch (nr) {
    case 20: r = getpid(); break;                    // getpid
    case 158: r = sched_yield(); break;              // sched_yield
    case 224: r = gettid(); break;                   // gettid
    case 263: {                                      // clock_gettime
        struct timespec t;
        r = clock_gettime(static_cast<int>(c.arg(1)), &t);
        if (r == 0) *hp<GTimespec>(c.arg(2)) = {static_cast<int32_t>(t.tv_sec), static_cast<int32_t>(t.tv_nsec)};
        break;
    }
    case 240: {                                      // futex(uaddr, op, val, timeout, uaddr2, val3)
        int op = static_cast<int>(c.arg(2));
        struct timespec ts, *tsp = nullptr;
        int cmd = op & FUTEX_CMD_MASK;
        if ((cmd == FUTEX_WAIT || cmd == FUTEX_WAIT_BITSET) && c.arg(4)) {
            auto* gt = hp<GTimespec>(c.arg(4));
            ts = {gt->sec, gt->nsec};
            tsp = &ts;
        }
        r = syscall(SYS_futex, h(c.arg(1)), op, c.arg(3), tsp, c.arg(5) ? h(c.arg(5)) : nullptr, c.arg(6));
        break;
    }
    default:
        LOGW("unsupported guest syscall %d from %s", nr, elf::describe(c.r(14)).c_str());
        errno = ENOSYS;
        r = -1;
    }
    if (r < 0) cpu::set_guest_errno(errno);
    c.ret(static_cast<uint32_t>(r));
}

// ---------------------------------------------------------------- dynamic linking
thread_local uint32_t t_dlerror = 0;
uint32_t g_dlopen(GStr name, int32_t) {
    LOGI("guest dlopen(%s)", name ? name.h() : "NULL");
    return 1;
}
uint32_t g_dlsym(uint32_t, GStr name) {
    std::string n = name.h();
    uint32_t a = elf::find_export(n);
    if (!a) a = hle::resolve(n);
    if (!a) {
        LOGW("guest dlsym(%s) not found", n.c_str());
        t_dlerror = interned("undefined symbol: " + n);
    }
    return a;
}
int32_t g_dlclose(uint32_t) { return 0; }
uint32_t g_dlerror() { uint32_t e = t_dlerror; t_dlerror = 0; return e; }

// ---------------------------------------------------------------- C++ runtime support
int32_t g_cxa_atexit(uint32_t, uint32_t, uint32_t) { return 0; }
void g_cxa_finalize(uint32_t) {}
uint32_t g_errno() { return cpu::thread_errno_addr(); }
uint32_t g_unwind_find_exidx(uint32_t pc, GPtr<int32_t> count) { return elf::find_exidx(pc, count.h()); }

// Old bionic (OpenBSD-derived) exports pointer variables: `const char* _ctype_ = _C_ctype_;`.
void add_table_pointer(const char* name, uint32_t table) {
    uint32_t var = arena::static_alloc(4, 4);
    *hp<uint32_t>(var) = table;
    hle::add_data(name, var);
}

void make_data() {
    // BSD-style ctype table used by bionic's ctype macros: _ctype_[1 + c].
    enum { U = 1, L = 2, N = 4, S = 8, P = 16, C = 32, X = 64, B = 128 };
    uint32_t ct = arena::static_alloc(257, 4);
    auto* t = hp<uint8_t>(ct);
    t[0] = 0;
    for (int c = 0; c < 256; ++c) {
        uint8_t f = 0;
        if (c < 32 || c == 127) f |= C;
        if (c >= 9 && c <= 13) f |= S;
        if (c == ' ') f |= S | B;
        if (c >= '0' && c <= '9') f |= N;
        if (c >= 'A' && c <= 'Z') f |= U;
        if (c >= 'a' && c <= 'z') f |= L;
        if ((c >= 'A' && c <= 'F') || (c >= 'a' && c <= 'f')) f |= X;
        if (c > 32 && c < 127 && !(f & (U | L | N))) f |= P;
        t[1 + c] = f;
    }
    add_table_pointer("_ctype_", ct);
    uint32_t lo = arena::static_alloc(257 * 2, 4), up = arena::static_alloc(257 * 2, 4);
    auto* lt = hp<int16_t>(lo);
    auto* ut = hp<int16_t>(up);
    lt[0] = ut[0] = -1;
    for (int c = 0; c < 256; ++c) {
        lt[1 + c] = static_cast<int16_t>(c >= 'A' && c <= 'Z' ? c + 32 : c);
        ut[1 + c] = static_cast<int16_t>(c >= 'a' && c <= 'z' ? c - 32 : c);
    }
    add_table_pointer("_tolower_tab_", lo);
    add_table_pointer("_toupper_tab_", up);
    uint32_t guard = arena::static_alloc(4, 4);
    *hp<uint32_t>(guard) = std::random_device{}() | 0x00FF0000u;
    hle::add_data("__stack_chk_guard", guard);
    uint32_t page = arena::static_alloc(4, 4);
    *hp<uint32_t>(page) = 4096;
    hle::add_data("__page_size", page);
}

const hle::Def kDefs[] = {
    H("malloc", g_malloc), H("calloc", g_calloc), H("realloc", g_realloc), H("free", g_free),
    HE("mmap", g_mmap), H("munmap", g_munmap),
    H("memcpy", g_memcpy), H("memmove", g_memmove), H("memset", g_memset), H("memcmp", g_memcmp),
    H("memchr", g_memchr), H("memrchr", g_memrchr), H("memmem", g_memmem),
    H("__aeabi_memcpy", g_memcpy), H("__aeabi_memmove", g_memmove),
    H("strlen", g_strlen), H("strcmp", g_strcmp), H("strncmp", g_strncmp), H("strcasecmp", g_strcasecmp),
    H("strncasecmp", g_strncasecmp), H("strcoll", g_strcoll), H("strxfrm", g_strxfrm), H("strcpy", g_strcpy),
    H("strncpy", g_strncpy), H("strcat", g_strcat), H("strncat", g_strncat), H("strchr", g_strchr),
    H("strrchr", g_strrchr), H("strstr", g_strstr), H("strpbrk", g_strpbrk), H("strcspn", g_strcspn),
    H("strdup", g_strdup), H("strtok_r", g_strtok_r), H("strerror", g_strerror), H("strerror_r", g_strerror_r),
    H("basename", g_basename), H("fnmatch", g_fnmatch),
    H("wcslen", g_wcslen), H("wmemchr", g_wmemchr), H("wmemcmp", g_wmemcmp), H("wmemcpy", g_wmemcpy),
    H("wmemmove", g_wmemmove), H("wmemset", g_wmemset), H("wcscoll", g_wcscoll), H("wcsxfrm", g_wcsxfrm),
    H("btowc", g_btowc), H("wctob", g_wctob), H("towlower", g_towlower), H("towupper", g_towupper),
    H("wctype", g_wctype), H("iswctype", g_iswctype), H("mbrtowc", g_mbrtowc), H("wcrtomb", g_wcrtomb),
    H("atoi", g_atoi), HE("strtol", g_strtol), HE("strtoul", g_strtoul), HE("strtoll", g_strtoll),
    HE("strtoull", g_strtoull), HE("strtod", g_strtod), HRAW("sscanf", g_sscanf),
    H("acos", m_acos), H("asin", m_asin), H("atan", m_atan), H("ceil", m_ceil), H("cos", m_cos), H("cosh", m_cosh),
    H("exp", m_exp), H("floor", m_floor), H("log", m_log), H("log10", m_log10), H("rint", m_rint), H("sin", m_sin),
    H("sinh", m_sinh), H("sqrt", m_sqrt), H("tan", m_tan), H("tanh", m_tanh), H("trunc", m_trunc),
    H("ceilf", m_ceilf), H("cosf", m_cosf), H("floorf", m_floorf), H("sinf", m_sinf), H("sqrtf", m_sqrtf),
    H("tanf", m_tanf), H("atan2", m_atan2), H("fmod", m_fmod), H("pow", m_pow), H("atan2f", m_atan2f),
    H("fmodf", m_fmodf), H("powf", m_powf), H("ldexp", m_ldexp), H("frexp", m_frexp), H("modf", m_modf),
    H("isnan", m_isnan), H("lrand48", g_lrand48), H("srand48", g_srand48),
    H("time", g_time), HE("gettimeofday", g_gettimeofday), HE("clock_gettime", g_clock_gettime),
    HE("nanosleep", g_nanosleep), H("clock", g_clock), H("difftime", g_difftime), H("gmtime_r", g_gmtime_r),
    H("localtime_r", g_localtime_r), H("gmtime", g_gmtime), H("localtime", g_localtime), H("mktime", g_mktime),
    H("strftime", g_strftime), H("wcsftime", g_wcsftime), HE("utime", g_utime),
    HE("open", g_open), HE("close", g_close), HE("read", g_read), HE("write", g_write), HE("lseek", g_lseek),
    HE("fsync", g_fsync), HE("dup", g_dup), HE("pipe", g_pipe), HE("poll", g_poll), HE("writev", g_writev), HE("access", g_access),
    HE("chmod", g_chmod), HE("mkdir", g_mkdir), HE("rmdir", g_rmdir), HE("unlink", g_unlink),
    HE("remove", g_remove), HE("rename", g_rename), HE("pathconf", g_pathconf), HE("getcwd", g_getcwd),
    HE("ftruncate", g_ftruncate), HE("mkstemp", g_mkstemp),
    HE("fcntl", g_fcntl), HE("ioctl", g_ioctl), HE("stat", g_stat), HE("fstat", g_fstat), HE("statfs", g_statfs),
    HE("opendir", g_opendir), HE("closedir", g_closedir), H("readdir_r", g_readdir_r),
    HE("socket", g_socket), HE("bind", g_bind), HE("connect", g_connect), HE("getsockname", g_getsockname),
    HE("getpeername", g_getpeername), HE("send", g_send), HE("recv", g_recv), HE("recvfrom", g_recvfrom),
    HE("setsockopt", g_setsockopt), HE("getsockopt", g_getsockopt), H("inet_addr", g_inet_addr),
    H("inet_ntop", g_inet_ntop), H("inet_pton", g_inet_pton), HE("gethostname", g_gethostname),
    H("getpid", g_getpid), H("geteuid", g_geteuid), H("getpwuid", g_getpwuid), H("getenv", g_getenv),
    H("setlocale", g_setlocale), H("sysconf", g_sysconf), H("getauxval", g_getauxval),
    H("__system_property_get", g_system_property_get), H("sched_yield", g_sched_yield),
    H("sigaction", g_sigaction), H("sigprocmask", g_sigprocmask), HRAW("abort", g_abort), H("exit", g_exit),
    H("_exit", g__exit), HE("uname", g_uname),
    H("raise", g_raise), HRAW("__stack_chk_fail", g_stack_chk_fail), HRAW("syscall", g_syscall),
    H("dlopen", g_dlopen), H("dlsym", g_dlsym), H("dlclose", g_dlclose), H("dlerror", g_dlerror),
    H("__cxa_atexit", g_cxa_atexit), H("__cxa_finalize", g_cxa_finalize), H("__errno", g_errno),
    H("__gnu_Unwind_Find_exidx", g_unwind_find_exidx),
};

}  // namespace

void hle::register_libc() {
    make_data();
    add_defs(kDefs, std::size(kDefs));
}
