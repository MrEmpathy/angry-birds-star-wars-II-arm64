#include "seed.h"

#include <android/asset_manager.h>
#include <android/asset_manager_jni.h>
#include <sys/stat.h>
#include <unistd.h>

#include <cerrno>
#include <cstdio>
#include <string>
#include <string_view>
#include <vector>

#include "common.h"

namespace seed {
namespace {

// Written by tools/stage_cloud_data.py: one path per line, relative to the app's files directory.
constexpr const char* kListAsset = "absw2/seed.list";
constexpr const char* kFilesAssetDir = "absw2/files/";

bool clear(JNIEnv* e, const char* what) {
    if (!e->ExceptionCheck()) return false;
    e->ExceptionClear();
    LOGW("seed: %s failed", what);
    return true;
}

jobject call_obj(JNIEnv* e, jobject o, const char* cls, const char* name, const char* sig) {
    jclass c = e->FindClass(cls);
    if (clear(e, cls) || !c) return nullptr;
    jmethodID m = e->GetMethodID(c, name, sig);
    if (clear(e, name) || !m) return nullptr;
    jobject r = e->CallObjectMethod(o, m);
    return clear(e, name) ? nullptr : r;
}

jobject application(JNIEnv* e) {
    jclass at = e->FindClass("android/app/ActivityThread");
    if (clear(e, "ActivityThread") || !at) return nullptr;
    jmethodID m = e->GetStaticMethodID(at, "currentApplication", "()Landroid/app/Application;");
    if (clear(e, "currentApplication id") || !m) return nullptr;
    jobject app = e->CallStaticObjectMethod(at, m);
    return clear(e, "currentApplication") ? nullptr : app;
}

std::string files_dir(JNIEnv* e, jobject app) {
    jobject dir = call_obj(e, app, "android/content/Context", "getFilesDir", "()Ljava/io/File;");
    auto path = dir ? static_cast<jstring>(call_obj(e, dir, "java/io/File", "getAbsolutePath", "()Ljava/lang/String;"))
                    : nullptr;
    if (!path) return {};
    const char* s = e->GetStringUTFChars(path, nullptr);
    std::string r = s ? s : "";
    if (s) e->ReleaseStringUTFChars(path, s);
    return r;
}

std::vector<char> read_asset(AAssetManager* am, const std::string& name) {
    std::vector<char> data;
    AAsset* a = AAssetManager_open(am, name.c_str(), AASSET_MODE_STREAMING);
    if (!a) return data;
    char buf[64 * 1024];
    for (int n; (n = AAsset_read(a, buf, sizeof buf)) > 0;) data.insert(data.end(), buf, buf + n);
    AAsset_close(a);
    return data;
}

// Relative path with no empty, "." or ".." components.
bool safe_relative(std::string_view p) {
    if (p.empty() || p.front() == '/') return false;
    size_t start = 0;
    while (start <= p.size()) {
        size_t end = p.find('/', start);
        if (end == std::string_view::npos) end = p.size();
        std::string_view part = p.substr(start, end - start);
        if (part.empty() || part == "." || part == "..") return false;
        start = end + 1;
    }
    return true;
}

bool make_parents(const std::string& path) {
    for (size_t i = path.find('/', 1); i != std::string::npos; i = path.find('/', i + 1)) {
        std::string dir = path.substr(0, i);
        if (mkdir(dir.c_str(), 0700) != 0 && errno != EEXIST) return false;
    }
    return true;
}

// Writes next to the target and renames, so an interrupted copy never leaves a partial file
// that the game would later treat as its cached download.
bool write_file(const std::string& path, const std::vector<char>& data) {
    std::string tmp = path + ".absw2-tmp";
    FILE* f = fopen(tmp.c_str(), "wb");
    if (!f) return false;
    bool ok = fwrite(data.data(), 1, data.size(), f) == data.size();
    ok = (fclose(f) == 0) && ok;
    if (ok && rename(tmp.c_str(), path.c_str()) == 0) return true;
    unlink(tmp.c_str());
    return false;
}

}  // namespace

void copy_missing_files(JNIEnv* e) {
    jobject app = application(e);
    if (!app) return;
    jobject jam = call_obj(e, app, "android/content/Context", "getAssets", "()Landroid/content/res/AssetManager;");
    AAssetManager* am = jam ? AAssetManager_fromJava(e, jam) : nullptr;
    std::string root = files_dir(e, app);
    if (!am || root.empty()) {
        LOGW("seed: no asset manager or files directory");
        return;
    }
    std::vector<char> list = read_asset(am, kListAsset);
    if (list.empty()) return;  // an APK without seeded files

    int copied = 0, present = 0, failed = 0;
    std::string_view rest(list.data(), list.size());
    while (!rest.empty()) {
        size_t nl = rest.find('\n');
        std::string_view rel = rest.substr(0, nl);
        rest = nl == std::string_view::npos ? std::string_view() : rest.substr(nl + 1);
        if (!rel.empty() && rel.back() == '\r') rel.remove_suffix(1);
        if (rel.empty()) continue;
        if (!safe_relative(rel)) {
            LOGW("seed: skipping unsafe path %.*s", static_cast<int>(rel.size()), rel.data());
            ++failed;
            continue;
        }
        std::string dst = root + "/" + std::string(rel);
        if (access(dst.c_str(), F_OK) == 0) {
            ++present;
            continue;
        }
        std::vector<char> data = read_asset(am, kFilesAssetDir + std::string(rel));
        if (data.empty() || !make_parents(dst) || !write_file(dst, data)) {
            LOGW("seed: could not copy %s (errno %d)", dst.c_str(), errno);
            ++failed;
            continue;
        }
        ++copied;
    }
    LOGI("seed: %d copied, %d already present, %d failed (%s)", copied, present, failed, root.c_str());
}

}  // namespace seed
