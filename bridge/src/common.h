// Shared helpers for the ARM32 bridge.
#pragma once

#include <android/log.h>

#include <bit>
#include <cstdint>
#include <cstring>

#define ABSW_TAG "absw"
#define LOGI(...) __android_log_print(ANDROID_LOG_INFO, ABSW_TAG, __VA_ARGS__)
#define LOGW(...) __android_log_print(ANDROID_LOG_WARN, ABSW_TAG, __VA_ARGS__)
#define LOGE(...) __android_log_print(ANDROID_LOG_ERROR, ABSW_TAG, __VA_ARGS__)

[[noreturn]] void fatal(const char* fmt, ...) __attribute__((format(printf, 1, 2)));

// Verbose tracing of every import call (set ABSW_TRACE=1 at build time).
#ifndef ABSW_TRACE
#define ABSW_TRACE 0
#endif
