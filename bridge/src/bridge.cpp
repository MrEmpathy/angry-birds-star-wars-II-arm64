// Entry point: the arm64/x86_64 libAngryBirdsStarWarsII.so that hosts the original ARM32 engine.
#include <dlfcn.h>
#include <jni.h>

#include <cstdio>
#include <string>
#include <vector>

#include "arena.h"
#include "common.h"
#include "cpu.h"
#include "elf32.h"
#include "hle.h"
#include "jni_bridge.h"
#include "seed.h"

namespace {

const uint8_t kGuestRt[] = {
#include "guest_rt_blob.inc"
};

constexpr const char* kGuestLibFile = "libabsw2_arm32.so";

std::vector<uint8_t> read_file(const std::string& path) {
    std::vector<uint8_t> data;
    FILE* f = fopen(path.c_str(), "rb");
    if (!f) return data;
    fseek(f, 0, SEEK_END);
    long n = ftell(f);
    fseek(f, 0, SEEK_SET);
    data.resize(static_cast<size_t>(n));
    if (fread(data.data(), 1, data.size(), f) != data.size()) data.clear();
    fclose(f);
    return data;
}

std::string own_dir() {
    Dl_info info{};
    dladdr(reinterpret_cast<void*>(&read_file), &info);
    std::string p = info.dli_fname ? info.dli_fname : "";
    auto slash = p.rfind('/');
    return slash == std::string::npos ? "." : p.substr(0, slash);
}

}  // namespace

extern "C" JNIEXPORT jint JNI_OnLoad(JavaVM* vm, void*) {
    JNIEnv* env = nullptr;
    if (vm->GetEnv(reinterpret_cast<void**>(&env), JNI_VERSION_1_6) != JNI_OK) return JNI_ERR;
#if defined(__aarch64__)
    LOGI("absw2 ARM32 bridge starting (host arm64)");
#else
    LOGI("absw2 ARM32 bridge starting (host x86_64)");
#endif
    seed::copy_missing_files(env);
    arena::init();
    cpu::init();
    hle::init();
    jni::init(vm, env);

    elf::Module* rt = elf::load("libabsw_rt.so", kGuestRt, sizeof kGuestRt);
    elf::run_init(rt);

    std::string path = own_dir() + "/" + kGuestLibFile;
    std::vector<uint8_t> image = read_file(path);
    if (image.empty()) fatal("cannot read guest library %s", path.c_str());
    elf::Module* game = elf::load("libAngryBirdsStarWarsII.so", image.data(), image.size());
    elf::run_init(game);

    int bound = jni::bind_exports(env);
    LOGI("bound %d native methods", bound);

    jint version = JNI_VERSION_1_6;
    if (auto it = game->exports.find("JNI_OnLoad"); it != game->exports.end()) {
        jni::Scope scope(env);
        version = static_cast<jint>(cpu::call(it->second, {jni::guest_vm(), 0}));
        LOGI("guest JNI_OnLoad returned 0x%x", version);
    }
    return version;
}
