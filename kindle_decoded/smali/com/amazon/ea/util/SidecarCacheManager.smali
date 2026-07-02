.class public Lcom/amazon/ea/util/SidecarCacheManager;
.super Ljava/lang/Object;
.source "SidecarCacheManager.java"


# static fields
.field private static final SIDECAR_CACHE_MAX_SIZE:I = 0x4

.field private static final TAG:Ljava/lang/String; = "com.amazon.ea.util.SidecarCacheManager"

.field private static final cache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lcom/amazon/ea/sidecar/def/Sidecar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    new-instance v0, Landroid/util/LruCache;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/amazon/ea/util/SidecarCacheManager;->cache:Landroid/util/LruCache;

    return-void
.end method

.method public static getSidecar(Ljava/lang/String;)Lcom/amazon/ea/sidecar/def/Sidecar;
    .locals 3

    .line 50
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    sget-object v0, Lcom/amazon/ea/util/SidecarCacheManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getting sidecar from cache [asin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p0, :cond_1

    .line 54
    sget-object v0, Lcom/amazon/ea/util/SidecarCacheManager;->cache:Landroid/util/LruCache;

    invoke-virtual {v0, p0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/ea/sidecar/def/Sidecar;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static putSidecar(Ljava/lang/String;Lcom/amazon/ea/sidecar/def/Sidecar;)V
    .locals 3

    .line 33
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    sget-object v0, Lcom/amazon/ea/util/SidecarCacheManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "storing sidecar in cache [asin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 37
    sget-object v0, Lcom/amazon/ea/util/SidecarCacheManager;->cache:Landroid/util/LruCache;

    invoke-virtual {v0, p0, p1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public static removeAllSidecars()V
    .locals 2

    .line 64
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    sget-object v0, Lcom/amazon/ea/util/SidecarCacheManager;->TAG:Ljava/lang/String;

    const-string v1, "clearing sidecar cache"

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :cond_0
    sget-object v0, Lcom/amazon/ea/util/SidecarCacheManager;->cache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    return-void
.end method
