// JNI bridge: a synthetic 32-bit JNIEnv/JavaVM for the guest, backed by the host JVM.
#pragma once

#include <jni.h>

#include <cstdint>

namespace jni {

void init(JavaVM* vm, JNIEnv* env);
uint32_t guest_env();
uint32_t guest_vm();

JNIEnv* env();          // host env of the calling thread (attaches leniently if needed)
uint32_t local(jobject o);  // guest local handle for a host local ref of the current frame
jobject obj(uint32_t h);    // host reference for a guest handle

// Local-handle frame for one Java -> guest native call.
class Scope {
public:
    explicit Scope(JNIEnv* e);
    ~Scope();

private:
    size_t mark_;
};

// Binds guest Java_* exports to host trampolines; returns the number bound.
int bind_exports(JNIEnv* e);

}  // namespace jni
