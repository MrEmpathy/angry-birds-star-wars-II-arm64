/* Guest-side (ARM32) runtime: libc pieces that are variadic or call back into guest code.
 * Everything else the game imports is serviced by host thunks. */
#include <stdarg.h>
#include <stddef.h>
#include <stdint.h>

#define STB_SPRINTF_IMPLEMENTATION
#define STB_SPRINTF_STATIC
#include "../third_party/stb_sprintf.h"

typedef struct FILE FILE;
extern char __sF[];  /* bionic FILE[3], 84 bytes each */
#define GUEST_STDOUT ((FILE*)(__sF + 84))

size_t fwrite(const void*, size_t, size_t, FILE*);
int __android_log_write(int, const char*, const char*);
int sched_yield(void);
void* malloc(size_t);
void free(void*);

int vsnprintf(char* buf, size_t n, const char* fmt, va_list ap) {
    return stbsp_vsnprintf(buf, n > 0x7fffffff ? 0x7fffffff : (int)n, fmt, ap);
}
int vsprintf(char* buf, const char* fmt, va_list ap) { return stbsp_vsprintf(buf, fmt, ap); }
int snprintf(char* buf, size_t n, const char* fmt, ...) {
    va_list ap;
    va_start(ap, fmt);
    int r = vsnprintf(buf, n, fmt, ap);
    va_end(ap);
    return r;
}
int sprintf(char* buf, const char* fmt, ...) {
    va_list ap;
    va_start(ap, fmt);
    int r = stbsp_vsprintf(buf, fmt, ap);
    va_end(ap);
    return r;
}
int vfprintf(FILE* f, const char* fmt, va_list ap) {
    char small[1024];
    va_list copy;
    va_copy(copy, ap);
    int n = stbsp_vsnprintf(small, sizeof small, fmt, ap);
    if (n < 0) { va_end(copy); return n; }
    if ((size_t)n < sizeof small) {
        fwrite(small, 1, (size_t)n, f);
    } else {
        char* big = (char*)malloc((size_t)n + 1);
        if (big) {
            stbsp_vsnprintf(big, n + 1, fmt, copy);
            fwrite(big, 1, (size_t)n, f);
            free(big);
        }
    }
    va_end(copy);
    return n;
}
int fprintf(FILE* f, const char* fmt, ...) {
    va_list ap;
    va_start(ap, fmt);
    int r = vfprintf(f, fmt, ap);
    va_end(ap);
    return r;
}
int vprintf(const char* fmt, va_list ap) { return vfprintf(GUEST_STDOUT, fmt, ap); }
int printf(const char* fmt, ...) {
    va_list ap;
    va_start(ap, fmt);
    int r = vfprintf(GUEST_STDOUT, fmt, ap);
    va_end(ap);
    return r;
}
int puts(const char* s) {
    size_t n = 0;
    while (s[n]) ++n;
    fwrite(s, 1, n, GUEST_STDOUT);
    fwrite("\n", 1, 1, GUEST_STDOUT);
    return 1;
}
int __android_log_vprint(int prio, const char* tag, const char* fmt, va_list ap) {
    char buf[1024];
    stbsp_vsnprintf(buf, sizeof buf, fmt, ap);
    return __android_log_write(prio, tag, buf);
}
int __android_log_print(int prio, const char* tag, const char* fmt, ...) {
    va_list ap;
    va_start(ap, fmt);
    int r = __android_log_vprint(prio, tag, fmt, ap);
    va_end(ap);
    return r;
}

/* ---------------------------------------------------------------- sorting / searching */
static void swap_bytes(char* a, char* b, size_t n) {
    while (n--) { char t = *a; *a++ = *b; *b++ = t; }
}
typedef int (*cmp_fn)(const void*, const void*);

static void insertion_sort(char* base, size_t n, size_t sz, cmp_fn cmp) {
    for (size_t i = 1; i < n; ++i)
        for (size_t j = i; j > 0 && cmp(base + (j - 1) * sz, base + j * sz) > 0; --j)
            swap_bytes(base + (j - 1) * sz, base + j * sz, sz);
}

void qsort(void* vbase, size_t n, size_t sz, cmp_fn cmp) {
    char* base = (char*)vbase;
    while (n > 12) {
        char* lo = base;
        char* mid = base + (n / 2) * sz;
        char* hi = base + (n - 1) * sz;
        if (cmp(mid, lo) < 0) swap_bytes(mid, lo, sz);
        if (cmp(hi, mid) < 0) {
            swap_bytes(hi, mid, sz);
            if (cmp(mid, lo) < 0) swap_bytes(mid, lo, sz);
        }
        swap_bytes(mid, hi - sz, sz);  /* pivot at hi - 1 */
        char* pivot = hi - sz;
        char* i = lo;
        char* j = pivot;
        for (;;) {
            do i += sz; while (cmp(i, pivot) < 0);
            do j -= sz; while (j > lo && cmp(j, pivot) > 0);
            if (i >= j) break;
            swap_bytes(i, j, sz);
        }
        swap_bytes(i, pivot, sz);
        size_t left = (size_t)(i - base) / sz;
        size_t right = n - left - 1;
        if (left < right) {
            qsort(base, left, sz, cmp);
            base = i + sz;
            n = right;
        } else {
            qsort(i + sz, right, sz, cmp);
            n = left;
        }
    }
    insertion_sort(base, n, sz, cmp);
}

void* bsearch(const void* key, const void* base, size_t n, size_t sz, cmp_fn cmp) {
    const char* b = (const char*)base;
    while (n > 0) {
        const char* mid = b + (n / 2) * sz;
        int c = cmp(key, mid);
        if (c == 0) return (void*)mid;
        if (c > 0) { b = mid + sz; n -= n / 2 + 1; }
        else n /= 2;
    }
    return 0;
}

/* ---------------------------------------------------------------- pthread_once (callback runs in guest) */
int pthread_once(volatile int* once, void (*fn)(void)) {
    if (__atomic_load_n(once, __ATOMIC_ACQUIRE) == 2) return 0;
    int expected = 0;
    if (__atomic_compare_exchange_n(once, &expected, 1, 0, __ATOMIC_ACQ_REL, __ATOMIC_ACQUIRE)) {
        fn();
        __atomic_store_n(once, 2, __ATOMIC_RELEASE);
        return 0;
    }
    while (__atomic_load_n(once, __ATOMIC_ACQUIRE) != 2) sched_yield();
    return 0;
}
