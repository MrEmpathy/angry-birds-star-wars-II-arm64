// libandroid asset imports. Guest AAssetManager/AAsset values are guest cells mapped to host objects.
#include <android/asset_manager.h>
#include <android/asset_manager_jni.h>

#include <mutex>
#include <unordered_map>

#include "hle.h"
#include "jni_bridge.h"

namespace {

struct Asset {
    AAsset* host = nullptr;
    uint32_t buffer = 0;  // guest copy for AAsset_getBuffer
};

std::mutex g_mu;
std::unordered_map<uint32_t, AAssetManager*> g_managers;
std::unordered_map<uint32_t, Asset> g_assets;

AAssetManager* manager(uint32_t token) {
    std::lock_guard l(g_mu);
    auto it = g_managers.find(token);
    return it == g_managers.end() ? nullptr : it->second;
}
Asset* asset(uint32_t token) {
    std::lock_guard l(g_mu);
    auto it = g_assets.find(token);
    return it == g_assets.end() ? nullptr : &it->second;
}

uint32_t g_AAssetManager_fromJava(uint32_t, uint32_t jmgr) {
    AAssetManager* m = AAssetManager_fromJava(jni::env(), jni::obj(jmgr));
    if (!m) return 0;
    std::lock_guard l(g_mu);
    for (auto& [token, host] : g_managers)
        if (host == m) return token;
    uint32_t token = arena::static_alloc(4, 4);
    g_managers[token] = m;
    return token;
}

uint32_t g_AAssetManager_open(uint32_t mgr, GStr name, int32_t mode) {
    AAssetManager* m = manager(mgr);
    if (!m) return 0;
    AAsset* a = AAssetManager_open(m, name.h(), mode);
    if (!a) return 0;
    uint32_t token = arena::gcalloc(1, 16);
    std::lock_guard l(g_mu);
    g_assets[token].host = a;
    return token;
}

void g_AAsset_close(uint32_t t) {
    Asset copy;
    {
        std::lock_guard l(g_mu);
        auto it = g_assets.find(t);
        if (it == g_assets.end()) return;
        copy = it->second;
        g_assets.erase(it);
    }
    AAsset_close(copy.host);
    if (copy.buffer) arena::gfree(copy.buffer);
    arena::gfree(t);
}

uint32_t g_AAsset_getBuffer(uint32_t t) {
    Asset* a = asset(t);
    if (!a) return 0;
    if (!a->buffer) {
        const void* p = AAsset_getBuffer(a->host);
        if (!p) return 0;
        auto len = static_cast<uint32_t>(AAsset_getLength64(a->host));
        a->buffer = arena::gmalloc(len ? len : 1);
        memcpy(arena::h(a->buffer), p, len);
    }
    return a->buffer;
}

int64_t g_AAsset_getLength64(uint32_t t) {
    Asset* a = asset(t);
    return a ? AAsset_getLength64(a->host) : 0;
}
int32_t g_AAsset_getLength(uint32_t t) { return static_cast<int32_t>(g_AAsset_getLength64(t)); }
int64_t g_AAsset_getRemainingLength64(uint32_t t) {
    Asset* a = asset(t);
    return a ? AAsset_getRemainingLength64(a->host) : 0;
}
int32_t g_AAsset_read(uint32_t t, GPtr<void> buf, uint32_t n) {
    Asset* a = asset(t);
    return a ? AAsset_read(a->host, buf.h(), n) : -1;
}
int32_t g_AAsset_seek(uint32_t t, int32_t off, int32_t whence) {
    Asset* a = asset(t);
    return a ? static_cast<int32_t>(AAsset_seek(a->host, off, whence)) : -1;
}

const hle::Def kDefs[] = {
    H("AAssetManager_fromJava", g_AAssetManager_fromJava), H("AAssetManager_open", g_AAssetManager_open),
    H("AAsset_close", g_AAsset_close), H("AAsset_getBuffer", g_AAsset_getBuffer),
    H("AAsset_getLength64", g_AAsset_getLength64), H("AAsset_getLength", g_AAsset_getLength),
    H("AAsset_getRemainingLength64", g_AAsset_getRemainingLength64), H("AAsset_read", g_AAsset_read),
    H("AAsset_seek", g_AAsset_seek),
};

}  // namespace

void hle::register_android() { add_defs(kDefs, std::size(kDefs)); }
