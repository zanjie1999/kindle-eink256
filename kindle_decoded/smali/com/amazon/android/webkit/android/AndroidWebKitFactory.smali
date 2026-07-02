.class public Lcom/amazon/android/webkit/android/AndroidWebKitFactory;
.super Lcom/amazon/android/webkit/AmazonWebKitFactory;
.source "AndroidWebKitFactory.java"


# instance fields
.field private final cacheManager:Lcom/amazon/android/webkit/AmazonCacheManager;

.field private final cookieManager:Lcom/amazon/android/webkit/AmazonCookieManager;

.field private final cookieSyncManager:Lcom/amazon/android/webkit/AmazonCookieSyncManager;

.field private final geolocationPermission:Lcom/amazon/android/webkit/AmazonGeolocationPermissions;

.field private final historyManager:Lcom/amazon/android/webkit/AmazonHistoryManager;

.field private final updateHandler:Lcom/amazon/android/webkit/AmazonWebKitUpdateHandler;

.field private final urlRequestHandler:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/amazon/android/webkit/AmazonUrlRequestHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final webIconDatabase:Lcom/amazon/android/webkit/AmazonWebIconDatabase;

.field private final webKitCapabilities:Lcom/amazon/android/webkit/AmazonWebKitCapabilities;

.field private final webStorage:Lcom/amazon/android/webkit/AmazonWebStorage;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Lcom/amazon/android/webkit/AmazonWebKitFactory;-><init>()V

    .line 65
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebKitFactory;->urlRequestHandler:Ljava/util/concurrent/atomic/AtomicReference;

    .line 72
    new-instance v0, Lcom/amazon/android/webkit/android/AndroidCacheManager;

    invoke-direct {v0}, Lcom/amazon/android/webkit/android/AndroidCacheManager;-><init>()V

    iput-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebKitFactory;->cacheManager:Lcom/amazon/android/webkit/AmazonCacheManager;

    .line 73
    new-instance v0, Lcom/amazon/android/webkit/android/AndroidCookieManager;

    invoke-direct {v0}, Lcom/amazon/android/webkit/android/AndroidCookieManager;-><init>()V

    iput-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebKitFactory;->cookieManager:Lcom/amazon/android/webkit/AmazonCookieManager;

    .line 74
    new-instance v0, Lcom/amazon/android/webkit/android/AndroidCookieSyncManager;

    invoke-direct {v0}, Lcom/amazon/android/webkit/android/AndroidCookieSyncManager;-><init>()V

    iput-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebKitFactory;->cookieSyncManager:Lcom/amazon/android/webkit/AmazonCookieSyncManager;

    .line 75
    new-instance v0, Lcom/amazon/android/webkit/android/AndroidGeolocationPermissions;

    invoke-direct {v0}, Lcom/amazon/android/webkit/android/AndroidGeolocationPermissions;-><init>()V

    iput-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebKitFactory;->geolocationPermission:Lcom/amazon/android/webkit/AmazonGeolocationPermissions;

    .line 76
    new-instance v0, Lcom/amazon/android/webkit/android/AndroidWebIconDatabase;

    invoke-direct {v0}, Lcom/amazon/android/webkit/android/AndroidWebIconDatabase;-><init>()V

    iput-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebKitFactory;->webIconDatabase:Lcom/amazon/android/webkit/AmazonWebIconDatabase;

    .line 77
    new-instance v0, Lcom/amazon/android/webkit/android/AndroidWebKitCapabilities;

    invoke-direct {v0}, Lcom/amazon/android/webkit/android/AndroidWebKitCapabilities;-><init>()V

    iput-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebKitFactory;->webKitCapabilities:Lcom/amazon/android/webkit/AmazonWebKitCapabilities;

    .line 78
    new-instance v0, Lcom/amazon/android/webkit/android/AndroidWebStorage;

    invoke-direct {v0}, Lcom/amazon/android/webkit/android/AndroidWebStorage;-><init>()V

    iput-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebKitFactory;->webStorage:Lcom/amazon/android/webkit/AmazonWebStorage;

    .line 79
    new-instance v0, Lcom/amazon/android/webkit/android/AndroidWebKitUpdateHandler;

    invoke-direct {v0}, Lcom/amazon/android/webkit/android/AndroidWebKitUpdateHandler;-><init>()V

    iput-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebKitFactory;->updateHandler:Lcom/amazon/android/webkit/AmazonWebKitUpdateHandler;

    .line 81
    new-instance v0, Lcom/amazon/android/webkit/android/AndroidWebKitFactory$1;

    invoke-direct {v0, p0}, Lcom/amazon/android/webkit/android/AndroidWebKitFactory$1;-><init>(Lcom/amazon/android/webkit/android/AndroidWebKitFactory;)V

    iput-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebKitFactory;->historyManager:Lcom/amazon/android/webkit/AmazonHistoryManager;

    return-void
.end method


# virtual methods
.method public clearAllVisitedLinkHistory()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public clearFormData(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    .line 202
    :try_start_0
    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 203
    :try_start_1
    invoke-virtual {v1}, Landroid/webkit/WebView;->clearFormData()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 207
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

.method public createWebViewDelegate(Lcom/amazon/android/webkit/AmazonWebView;IZLandroid/os/Bundle;)Lcom/amazon/android/webkit/AmazonWebViewDelegate;
    .locals 0

    if-eqz p3, :cond_0

    .line 93
    const-class p3, Lcom/amazon/android/webkit/android/AndroidWebKitFactory;

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    const-string p4, "Ignoring unsupported isPrivate=true"

    invoke-static {p3, p4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_0
    new-instance p3, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;

    iget-object p4, p0, Lcom/amazon/android/webkit/android/AndroidWebKitFactory;->urlRequestHandler:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p3, p1, p2, p4}, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;-><init>(Lcom/amazon/android/webkit/AmazonWebView;ILjava/util/concurrent/atomic/AtomicReference;)V

    return-object p3
.end method

.method public createWebViewDelegate(Lcom/amazon/android/webkit/AmazonWebView;IZLandroid/os/Bundle;I)Lcom/amazon/android/webkit/AmazonWebViewDelegate;
    .locals 0

    .line 101
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/amazon/android/webkit/android/AndroidWebKitFactory;->createWebViewDelegate(Lcom/amazon/android/webkit/AmazonWebView;IZLandroid/os/Bundle;)Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object p1

    return-object p1
.end method

.method public getAmazonPluginManager(Landroid/content/Context;)Lcom/amazon/android/webkit/AmazonPluginManager;
    .locals 1

    .line 154
    new-instance v0, Lcom/amazon/android/webkit/android/AndroidPluginManager;

    invoke-direct {v0, p1}, Lcom/amazon/android/webkit/android/AndroidPluginManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public declared-synchronized getCacheManager()Lcom/amazon/android/webkit/AmazonCacheManager;
    .locals 1

    monitor-enter p0

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebKitFactory;->cacheManager:Lcom/amazon/android/webkit/AmazonCacheManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCookieManager()Lcom/amazon/android/webkit/AmazonCookieManager;
    .locals 1

    monitor-enter p0

    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebKitFactory;->cookieManager:Lcom/amazon/android/webkit/AmazonCookieManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCookieSyncManager()Lcom/amazon/android/webkit/AmazonCookieSyncManager;
    .locals 1

    monitor-enter p0

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebKitFactory;->cookieSyncManager:Lcom/amazon/android/webkit/AmazonCookieSyncManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getGeolocationPermissions()Lcom/amazon/android/webkit/AmazonGeolocationPermissions;
    .locals 1

    monitor-enter p0

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebKitFactory;->geolocationPermission:Lcom/amazon/android/webkit/AmazonGeolocationPermissions;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getHistoryManager()Lcom/amazon/android/webkit/AmazonHistoryManager;
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebKitFactory;->historyManager:Lcom/amazon/android/webkit/AmazonHistoryManager;

    return-object v0
.end method

.method public declared-synchronized getMediaDeviceSettings()Lcom/amazon/android/webkit/AmazonMediaDeviceSettings;
    .locals 2

    monitor-enter p0

    .line 127
    :try_start_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unsupported method"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getUpdateHandler()Lcom/amazon/android/webkit/AmazonWebKitUpdateHandler;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebKitFactory;->updateHandler:Lcom/amazon/android/webkit/AmazonWebKitUpdateHandler;

    return-object v0
.end method

.method public declared-synchronized getWebIconDatabase()Lcom/amazon/android/webkit/AmazonWebIconDatabase;
    .locals 1

    monitor-enter p0

    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebKitFactory;->webIconDatabase:Lcom/amazon/android/webkit/AmazonWebIconDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getWebKitCapabilities()Lcom/amazon/android/webkit/AmazonWebKitCapabilities;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebKitFactory;->webKitCapabilities:Lcom/amazon/android/webkit/AmazonWebKitCapabilities;

    return-object v0
.end method

.method public declared-synchronized getWebStorage()Lcom/amazon/android/webkit/AmazonWebStorage;
    .locals 1

    monitor-enter p0

    .line 142
    :try_start_0
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebKitFactory;->webStorage:Lcom/amazon/android/webkit/AmazonWebStorage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getWebViewDatabase(Landroid/content/Context;)Lcom/amazon/android/webkit/AmazonWebViewDatabase;
    .locals 1

    monitor-enter p0

    .line 148
    :try_start_0
    new-instance v0, Lcom/amazon/android/webkit/android/AndroidWebViewDatabase;

    invoke-direct {v0, p1}, Lcom/amazon/android/webkit/android/AndroidWebViewDatabase;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 168
    invoke-virtual {p0, p1, v0}, Lcom/amazon/android/webkit/android/AndroidWebKitFactory;->initialize(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method public initialize(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 173
    invoke-virtual {p0}, Lcom/amazon/android/webkit/android/AndroidWebKitFactory;->getCookieSyncManager()Lcom/amazon/android/webkit/AmazonCookieSyncManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/amazon/android/webkit/AmazonCookieSyncManager;->createInstance(Landroid/content/Context;)V

    .line 174
    invoke-virtual {p0}, Lcom/amazon/android/webkit/android/AndroidWebKitFactory;->getCookieManager()Lcom/amazon/android/webkit/AmazonCookieManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/android/webkit/AmazonCookieManager;->removeExpiredCookie()V

    return-void
.end method

.method public isRenderProcess(Landroid/content/Context;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public javaScriptToUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public preconnect(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 232
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public sendOutOfBandRequest(Ljava/util/concurrent/Executor;Lcom/amazon/android/webkit/AmazonWebKitFactory$OutOfBandResponseListener;Lcom/amazon/android/webkit/AmazonUrlRequest;)V
    .locals 0

    .line 227
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setWebKitErrorListener(Lcom/amazon/android/webkit/AmazonWebKitErrorListener;)V
    .locals 0

    return-void
.end method

.method public setWebKitUrlRequestHandler(Lcom/amazon/android/webkit/AmazonUrlRequestHandler;)V
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebKitFactory;->urlRequestHandler:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public warmUp(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 159
    invoke-virtual {p0, p1, v0}, Lcom/amazon/android/webkit/android/AndroidWebKitFactory;->warmUp(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method public warmUp(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
