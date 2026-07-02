.class public Lcom/amazon/klo/sidecar/CacheableSidecarLoader;
.super Lcom/amazon/klo/sidecar/SidecarLoader;
.source "CacheableSidecarLoader.java"


# static fields
.field private static cachedKey:Ljava/lang/String;

.field private static cachedSidecar:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/amazon/klo/sidecar/SidecarLoader;-><init>()V

    return-void
.end method

.method private static getCacheKey(Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 49
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getGuid()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSidecarJson(Lcom/amazon/kindle/krx/content/IBook;)Lorg/json/JSONObject;
    .locals 3

    .line 23
    const-class v0, Lcom/amazon/klo/sidecar/CacheableSidecarLoader;

    monitor-enter v0

    .line 25
    :try_start_0
    invoke-static {p0}, Lcom/amazon/klo/sidecar/CacheableSidecarLoader;->getCacheKey(Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 26
    sget-object v2, Lcom/amazon/klo/sidecar/CacheableSidecarLoader;->cachedKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 28
    sget-object p0, Lcom/amazon/klo/sidecar/CacheableSidecarLoader;->cachedSidecar:Lorg/json/JSONObject;

    monitor-exit v0

    return-object p0

    .line 32
    :cond_0
    invoke-static {p0}, Lcom/amazon/klo/sidecar/SidecarLoader;->getSidecarJson(Lcom/amazon/kindle/krx/content/IBook;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 35
    sput-object v1, Lcom/amazon/klo/sidecar/CacheableSidecarLoader;->cachedKey:Ljava/lang/String;

    .line 36
    sput-object p0, Lcom/amazon/klo/sidecar/CacheableSidecarLoader;->cachedSidecar:Lorg/json/JSONObject;

    .line 38
    :cond_1
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 40
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static release()V
    .locals 2

    .line 54
    const-class v0, Lcom/amazon/klo/sidecar/CacheableSidecarLoader;

    monitor-enter v0

    const/4 v1, 0x0

    .line 56
    :try_start_0
    sput-object v1, Lcom/amazon/klo/sidecar/CacheableSidecarLoader;->cachedSidecar:Lorg/json/JSONObject;

    .line 57
    sput-object v1, Lcom/amazon/klo/sidecar/CacheableSidecarLoader;->cachedKey:Ljava/lang/String;

    .line 58
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
