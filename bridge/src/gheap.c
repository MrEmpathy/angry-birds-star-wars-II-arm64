/* dlmalloc instance that manages the guest heap inside the arena. */
#include <stddef.h>

void* arena_morecore(ptrdiff_t increment);
void absw_heap_abort(void);

#define USE_DL_PREFIX 1
#define ONLY_MSPACES 0
#define HAVE_MMAP 0
#define HAVE_MREMAP 0
#define HAVE_MORECORE 1
#define MORECORE arena_morecore
#define MORECORE_CONTIGUOUS 1
#define MORECORE_CANNOT_TRIM 1
#define USE_LOCKS 1
#define DEFAULT_GRANULARITY ((size_t)1U << 20)
#define MALLOC_ALIGNMENT ((size_t)16U)
#define ABORT absw_heap_abort()
#define NO_MALLINFO 1
#define NO_MALLOC_STATS 1

#include "../third_party/malloc.c"

void* gheap_malloc(size_t n) { return dlmalloc(n); }
void* gheap_calloc(size_t n, size_t s) { return dlcalloc(n, s); }
void* gheap_realloc(void* p, size_t n) { return dlrealloc(p, n); }
void* gheap_memalign(size_t a, size_t n) { return dlmemalign(a, n); }
size_t gheap_usable(void* p) { return dlmalloc_usable_size(p); }
void gheap_free(void* p) { dlfree(p); }
