.class public Lcom/amazon/android/webkit/android/AndroidCacheManager;
.super Lcom/amazon/android/webkit/AmazonCacheManager;
.source "AndroidCacheManager.java"


# static fields
.field private static final CACHE_MANAGER_CLASS:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "android.webkit.CacheManager"

    .line 20
    invoke-static {v0}, Lcom/amazon/android/webkit/android/Reflect;->getOptionalClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/amazon/android/webkit/android/AndroidCacheManager;->CACHE_MANAGER_CLASS:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/amazon/android/webkit/AmazonCacheManager;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Class;
    .locals 1

    .line 19
    sget-object v0, Lcom/amazon/android/webkit/android/AndroidCacheManager;->CACHE_MANAGER_CLASS:Ljava/lang/Class;

    return-object v0
.end method


# virtual methods
.method public clearCache(Landroid/content/Context;Z)V
    .locals 2

    const/4 v0, 0x0

    .line 86
    :try_start_0
    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 87
    :try_start_1
    invoke-virtual {v1, p2}, Landroid/webkit/WebView;->clearCache(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    invoke-virtual {v1}, Landroid/webkit/WebView;->destroy()V

    return-void

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    :cond_0
    throw p1
.end method

.method public setCacheMaxSize(J)V
    .locals 2

    .line 35
    sget-object v0, Lcom/amazon/android/webkit/android/AndroidCacheManager;->CACHE_MANAGER_CLASS:Ljava/lang/Class;

    if-eqz v0, :cond_0

    const-string v1, "CACHE_MAX_SIZE"

    .line 36
    invoke-static {v0, v1}, Lcom/amazon/android/webkit/android/Reflect;->getRequiredPrivateField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 38
    sget-object v1, Lcom/amazon/android/webkit/android/AndroidCacheManager;->CACHE_MANAGER_CLASS:Ljava/lang/Class;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/amazon/android/webkit/android/Reflect;->writeField(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setCacheThreshold(J)V
    .locals 2

    .line 25
    sget-object v0, Lcom/amazon/android/webkit/android/AndroidCacheManager;->CACHE_MANAGER_CLASS:Ljava/lang/Class;

    if-eqz v0, :cond_0

    const-string v1, "CACHE_THRESHOLD"

    .line 26
    invoke-static {v0, v1}, Lcom/amazon/android/webkit/android/Reflect;->getRequiredPrivateField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 28
    sget-object v1, Lcom/amazon/android/webkit/android/AndroidCacheManager;->CACHE_MANAGER_CLASS:Ljava/lang/Class;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/amazon/android/webkit/android/Reflect;->writeField(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setWebCoreCache(I)V
    .locals 2

    const-string v0, "android.webkit.WebViewCore"

    .line 46
    invoke-static {v0}, Lcom/amazon/android/webkit/android/Reflect;->getRequiredClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "sWebCoreHandler"

    .line 48
    invoke-static {v0, v1}, Lcom/amazon/android/webkit/android/Reflect;->getRequiredPrivateField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 50
    invoke-static {v1, v0}, Lcom/amazon/android/webkit/android/Reflect;->readField(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 55
    new-instance v1, Lcom/amazon/android/webkit/android/AndroidCacheManager$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/android/webkit/android/AndroidCacheManager$1;-><init>(Lcom/amazon/android/webkit/android/AndroidCacheManager;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateAppCache(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/android/webkit/AmazonCacheManager$UpdateAppCacheCallback;)V
    .locals 0

    .line 99
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
