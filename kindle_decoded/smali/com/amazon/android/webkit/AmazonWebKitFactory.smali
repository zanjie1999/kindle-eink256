.class public abstract Lcom/amazon/android/webkit/AmazonWebKitFactory;
.super Ljava/lang/Object;
.source "AmazonWebKitFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/android/webkit/AmazonWebKitFactory$SurfaceType;,
        Lcom/amazon/android/webkit/AmazonWebKitFactory$OutOfBandResponseListener;
    }
.end annotation


# static fields
.field public static final MAX_RENDER_PROCESS_COUNT_AUTOMATIC:I = -0x2

.field public static final MAX_RENDER_PROCESS_COUNT_SINGLE_PROCESS_MODE:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract clearAllVisitedLinkHistory()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract clearFormData(Landroid/content/Context;)V
.end method

.method public createWebView(Landroid/content/Context;ILjava/lang/Object;Z)Lcom/amazon/android/webkit/AmazonWebView;
    .locals 6

    .line 215
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/amazon/android/webkit/AmazonWebKitFactory;->createWebView(Landroid/content/Context;ILjava/lang/Object;ZLandroid/os/Bundle;)Lcom/amazon/android/webkit/AmazonWebView;

    move-result-object p1

    return-object p1
.end method

.method public createWebView(Landroid/content/Context;ILjava/lang/Object;ZLandroid/os/Bundle;)Lcom/amazon/android/webkit/AmazonWebView;
    .locals 7

    .line 149
    sget-object v6, Lcom/amazon/android/webkit/AmazonWebKitFactory$SurfaceType;->SURFACEVIEW:Lcom/amazon/android/webkit/AmazonWebKitFactory$SurfaceType;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/amazon/android/webkit/AmazonWebKitFactory;->createWebView(Landroid/content/Context;ILjava/lang/Object;ZLandroid/os/Bundle;Lcom/amazon/android/webkit/AmazonWebKitFactory$SurfaceType;)Lcom/amazon/android/webkit/AmazonWebView;

    move-result-object p1

    return-object p1
.end method

.method public createWebView(Landroid/content/Context;ILjava/lang/Object;ZLandroid/os/Bundle;Lcom/amazon/android/webkit/AmazonWebKitFactory$SurfaceType;)Lcom/amazon/android/webkit/AmazonWebView;
    .locals 7

    .line 154
    new-instance v6, Lcom/amazon/android/webkit/AmazonWebView;

    invoke-direct {v6, p1, p3}, Lcom/amazon/android/webkit/AmazonWebView;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    move-object v0, p0

    move-object v1, v6

    move v2, p2

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 155
    invoke-virtual/range {v0 .. v5}, Lcom/amazon/android/webkit/AmazonWebKitFactory;->initializeWebView(Lcom/amazon/android/webkit/AmazonWebView;IZLandroid/os/Bundle;Lcom/amazon/android/webkit/AmazonWebKitFactory$SurfaceType;)V

    return-object v6
.end method

.method public abstract createWebViewDelegate(Lcom/amazon/android/webkit/AmazonWebView;IZLandroid/os/Bundle;)Lcom/amazon/android/webkit/AmazonWebViewDelegate;
.end method

.method public abstract createWebViewDelegate(Lcom/amazon/android/webkit/AmazonWebView;IZLandroid/os/Bundle;I)Lcom/amazon/android/webkit/AmazonWebViewDelegate;
.end method

.method public disableDeveloperTools()V
    .locals 0

    return-void
.end method

.method public enableDeveloperToolsTcp(I)V
    .locals 1

    .line 470
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Implementation does not support remote debugging"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public enableDeveloperToolsUnix(Ljava/lang/String;)V
    .locals 1

    .line 446
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Implementation does not support remote debugging"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract getAmazonPluginManager(Landroid/content/Context;)Lcom/amazon/android/webkit/AmazonPluginManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation
.end method

.method public abstract getCacheManager()Lcom/amazon/android/webkit/AmazonCacheManager;
.end method

.method public abstract getCookieManager()Lcom/amazon/android/webkit/AmazonCookieManager;
.end method

.method public abstract getCookieSyncManager()Lcom/amazon/android/webkit/AmazonCookieSyncManager;
.end method

.method public abstract getGeolocationPermissions()Lcom/amazon/android/webkit/AmazonGeolocationPermissions;
.end method

.method public abstract getHistoryManager()Lcom/amazon/android/webkit/AmazonHistoryManager;
.end method

.method public abstract getMediaDeviceSettings()Lcom/amazon/android/webkit/AmazonMediaDeviceSettings;
.end method

.method public getOptimalWebViewCount()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method public abstract getUpdateHandler()Lcom/amazon/android/webkit/AmazonWebKitUpdateHandler;
.end method

.method public abstract getWebIconDatabase()Lcom/amazon/android/webkit/AmazonWebIconDatabase;
.end method

.method public abstract getWebKitCapabilities()Lcom/amazon/android/webkit/AmazonWebKitCapabilities;
.end method

.method public abstract getWebStorage()Lcom/amazon/android/webkit/AmazonWebStorage;
.end method

.method public abstract getWebViewDatabase(Landroid/content/Context;)Lcom/amazon/android/webkit/AmazonWebViewDatabase;
.end method

.method public abstract initialize(Landroid/content/Context;)V
.end method

.method public abstract initialize(Landroid/content/Context;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public initializeWebView(Lcom/amazon/android/webkit/AmazonWebView;IZLandroid/os/Bundle;)V
    .locals 6

    .line 182
    sget-object v5, Lcom/amazon/android/webkit/AmazonWebKitFactory$SurfaceType;->SURFACEVIEW:Lcom/amazon/android/webkit/AmazonWebKitFactory$SurfaceType;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/amazon/android/webkit/AmazonWebKitFactory;->initializeWebView(Lcom/amazon/android/webkit/AmazonWebView;IZLandroid/os/Bundle;Lcom/amazon/android/webkit/AmazonWebKitFactory$SurfaceType;)V

    return-void
.end method

.method public initializeWebView(Lcom/amazon/android/webkit/AmazonWebView;IZLandroid/os/Bundle;Lcom/amazon/android/webkit/AmazonWebKitFactory$SurfaceType;)V
    .locals 6

    if-eqz p1, :cond_0

    .line 188
    invoke-virtual {p5}, Lcom/amazon/android/webkit/AmazonWebKitFactory$SurfaceType;->getValue()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/amazon/android/webkit/AmazonWebKitFactory;->createWebViewDelegate(Lcom/amazon/android/webkit/AmazonWebView;IZLandroid/os/Bundle;I)Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazon/android/webkit/AmazonWebView;->setWebViewDelegate(Lcom/amazon/android/webkit/AmazonWebViewDelegate;)V

    return-void

    .line 192
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Attempting to initialize an invalid WebView"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract isRenderProcess(Landroid/content/Context;)Z
.end method

.method public javaScriptToUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public abstract preconnect(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract sendOutOfBandRequest(Ljava/util/concurrent/Executor;Lcom/amazon/android/webkit/AmazonWebKitFactory$OutOfBandResponseListener;Lcom/amazon/android/webkit/AmazonUrlRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation
.end method

.method public setEmbeddedVideoEnabled(Z)V
    .locals 1

    .line 506
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Implementation cannot toggle embedded video"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setExtraLibraryPath(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setMaxRenderProcessCount(I)V
    .locals 0

    return-void
.end method

.method public setNativeLibraryPackage(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setRenderingStatsEnabled(Z)V
    .locals 0

    return-void
.end method

.method public abstract setWebKitErrorListener(Lcom/amazon/android/webkit/AmazonWebKitErrorListener;)V
.end method

.method public abstract setWebKitUrlRequestHandler(Lcom/amazon/android/webkit/AmazonUrlRequestHandler;)V
.end method

.method public setWebRtcEnabled(Z)V
    .locals 0

    return-void
.end method

.method public abstract warmUp(Landroid/content/Context;)V
.end method

.method public abstract warmUp(Landroid/content/Context;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
