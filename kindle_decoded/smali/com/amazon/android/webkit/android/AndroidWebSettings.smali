.class public Lcom/amazon/android/webkit/android/AndroidWebSettings;
.super Lcom/amazon/android/webkit/AmazonWebSettings;
.source "AndroidWebSettings.java"


# static fields
.field private static final GET_ENABLE_SMOOTH_TRANSITION:Ljava/lang/reflect/Method;

.field private static final GET_MEDIA_PLAYBACK:Ljava/lang/reflect/Method;

.field private static final GET_USER_AGENT:Ljava/lang/reflect/Method;

.field private static final SET_DISPLAY_ZOOM_CONTROLS:Ljava/lang/reflect/Method;

.field private static final SET_ENABLE_SMOOTH_TRANSITION:Ljava/lang/reflect/Method;

.field private static final SET_MEDIA_PLAYBACK:Ljava/lang/reflect/Method;

.field private static final SET_NAV_DUMP:Ljava/lang/reflect/Method;

.field private static final SET_PAGE_CACHE_CAPACITY:Ljava/lang/reflect/Method;

.field private static final SET_PROPERTY:Ljava/lang/reflect/Method;

.field private static final SET_USER_AGENT:Ljava/lang/reflect/Method;

.field private static final TAG:Ljava/lang/String; = "AndroidWebSettings"


# instance fields
.field private final webSettingsDelegate:Landroid/webkit/WebSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 18
    const-class v0, Ljava/lang/String;

    const-class v1, Landroid/webkit/WebSettings;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string/jumbo v4, "setPageCacheCapacity"

    invoke-static {v1, v4, v3}, Lcom/amazon/android/webkit/android/Reflect;->getOptionalMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/amazon/android/webkit/android/AndroidWebSettings;->SET_PAGE_CACHE_CAPACITY:Ljava/lang/reflect/Method;

    .line 23
    const-class v1, Landroid/webkit/WebSettings;

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v5

    const-string/jumbo v4, "setDisplayZoomControls"

    invoke-static {v1, v4, v3}, Lcom/amazon/android/webkit/android/Reflect;->getOptionalMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/amazon/android/webkit/android/AndroidWebSettings;->SET_DISPLAY_ZOOM_CONTROLS:Ljava/lang/reflect/Method;

    .line 26
    const-class v1, Landroid/webkit/WebSettings;

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v5

    const-string/jumbo v4, "setEnableSmoothTransition"

    invoke-static {v1, v4, v3}, Lcom/amazon/android/webkit/android/Reflect;->getOptionalMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/amazon/android/webkit/android/AndroidWebSettings;->SET_ENABLE_SMOOTH_TRANSITION:Ljava/lang/reflect/Method;

    .line 29
    const-class v1, Landroid/webkit/WebSettings;

    new-array v3, v5, [Ljava/lang/Class;

    const-string v4, "getEnableSmoothTransition"

    invoke-static {v1, v4, v3}, Lcom/amazon/android/webkit/android/Reflect;->getOptionalMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/amazon/android/webkit/android/AndroidWebSettings;->GET_ENABLE_SMOOTH_TRANSITION:Ljava/lang/reflect/Method;

    .line 32
    const-class v1, Landroid/webkit/WebSettings;

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v5

    const-string/jumbo v4, "setUserAgent"

    invoke-static {v1, v4, v3}, Lcom/amazon/android/webkit/android/Reflect;->getOptionalMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/amazon/android/webkit/android/AndroidWebSettings;->SET_USER_AGENT:Ljava/lang/reflect/Method;

    .line 35
    const-class v1, Landroid/webkit/WebSettings;

    new-array v3, v5, [Ljava/lang/Class;

    const-string v4, "getUserAgent"

    invoke-static {v1, v4, v3}, Lcom/amazon/android/webkit/android/Reflect;->getOptionalMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/amazon/android/webkit/android/AndroidWebSettings;->GET_USER_AGENT:Ljava/lang/reflect/Method;

    .line 38
    const-class v1, Landroid/webkit/WebSettings;

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v5

    const-string/jumbo v4, "setNavDump"

    invoke-static {v1, v4, v3}, Lcom/amazon/android/webkit/android/Reflect;->getOptionalMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/amazon/android/webkit/android/AndroidWebSettings;->SET_NAV_DUMP:Ljava/lang/reflect/Method;

    .line 41
    const-class v1, Landroid/webkit/WebSettings;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    aput-object v0, v3, v5

    aput-object v0, v3, v2

    const-string/jumbo v0, "setProperty"

    invoke-static {v1, v0, v3}, Lcom/amazon/android/webkit/android/Reflect;->getOptionalMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/amazon/android/webkit/android/AndroidWebSettings;->SET_PROPERTY:Ljava/lang/reflect/Method;

    .line 45
    const-class v0, Landroid/webkit/WebSettings;

    new-array v1, v2, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v5

    const-string/jumbo v2, "setMediaPlaybackRequiresUserGesture"

    invoke-static {v0, v2, v1}, Lcom/amazon/android/webkit/android/Reflect;->getOptionalMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/amazon/android/webkit/android/AndroidWebSettings;->SET_MEDIA_PLAYBACK:Ljava/lang/reflect/Method;

    .line 48
    const-class v0, Landroid/webkit/WebSettings;

    new-array v1, v5, [Ljava/lang/Class;

    const-string v2, "getMediaPlaybackRequiresUserGesture"

    invoke-static {v0, v2, v1}, Lcom/amazon/android/webkit/android/Reflect;->getOptionalMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/amazon/android/webkit/android/AndroidWebSettings;->GET_MEDIA_PLAYBACK:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>(Landroid/webkit/WebSettings;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/amazon/android/webkit/AmazonWebSettings;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/amazon/android/webkit/android/AndroidWebSettings;->webSettingsDelegate:Landroid/webkit/WebSettings;

    return-void
.end method


# virtual methods
.method public enableSmoothTransition()Z
    .locals 4

    .line 372
    sget-object v0, Lcom/amazon/android/webkit/android/AndroidWebSettings;->GET_ENABLE_SMOOTH_TRANSITION:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 373
    iget-object v2, p0, Lcom/amazon/android/webkit/android/AndroidWebSettings;->webSettingsDelegate:Landroid/webkit/WebSettings;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/amazon/android/webkit/android/Reflect;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    :cond_0
    return v1
.end method

.method public getAllowContentAccess()Z
    .locals 1

    .line 469
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebSettings;->webSettingsDelegate:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getAllowContentAccess()Z

    move-result v0

    return v0
.end method

.method public getAllowFileAccess()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 414
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebSettings;->webSettingsDelegate:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getAllowFileAccess()Z

    move-result v0

    return v0
.end method

.method public getAllowFileAccessFromFileURLs()Z
    .locals 1

    .line 479
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebSettings;->webSettingsDelegate:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getAllowFileAccessFromFileURLs()Z

    move-result v0

    return v0
.end method

.method public getAllowRunningInsecureContent()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getAllowUniversalAccessFromFileURLs()Z
    .locals 1

    .line 489
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebSettings;->webSettingsDelegate:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getAllowUniversalAccessFromFileURLs()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized getBlockNetworkImage()Z
    .locals 1

    monitor-enter p0

    .line 499
    :try_start_0
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebSettings;->webSettingsDelegate:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getBlockNetworkImage()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBlockNetworkLoads()Z
    .locals 1

    monitor-enter p0

    .line 509
    :try_start_0
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebSettings;->webSettingsDelegate:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getBlockNetworkLoads()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getBuiltInZoomControls()Z
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebSettings;->webSettingsDelegate:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getBuiltInZoomControls()Z

    move-result v0

    return v0
.end method

.method public getCacheMode()I
    .locals 1

    .line 433
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebSettings;->webSettingsDelegate:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getCacheMode()I

    move-result v0

    return v0
.end method

.method public declared-synchronized getCursiveFontFamily()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 519
    :try_start_0
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebSettings;->webSettingsDelegate:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getCursiveFontFamily()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDatabaseEnabled()Z
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebSettings;->webSettingsDelegate:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getDatabaseEnabled()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized getDatabasePath()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 304
    :try_start_0
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebSettings;->webSettingsDelegate:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getDatabasePath()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDefaultFixedFontSize()I
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebSettings;->webSettingsDelegate:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getDefaultFixedFontSize()I

    move-result v0

    return v0
.end method

.method public getDefaultFontSize()I
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebSettings;->webSettingsDelegate:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getDefaultFontSize()I

    move-result v0

    return v0
.end method

.method public getDefaultTextEncodingName()Ljava/lang/String;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebSettings;->webSettingsDelegate:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getDefaultTextEncodingName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultZoom()Lcom/amazon/android/webkit/AmazonWebSettings$ZoomDensity;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebSettings;->webSettingsDelegate:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getDefaultZoom()Landroid/webkit/WebSettings$ZoomDensity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings$ZoomDensity;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/android/webkit/AmazonWebSettings$ZoomDensity;->valueOf(Ljava/lang/String;)Lcom/amazon/android/webkit/AmazonWebSettings$ZoomDensity;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayZoomControls()Z
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebSettings;->webSettingsDelegate:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getDisplayZoomControls()Z

    move-result v0

    return v0
.end method

.method public getDomStorageEnabled()Z
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebSettings;->webSettingsDelegate:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getDomStorageEnabled()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized getFantasyFontFamily()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 529
    :try_start_0
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebSettings;->webSettingsDelegate:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getFantasyFontFamily()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFixedFontFamily()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 539
    :try_start_0
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebSettings;->webSettingsDelegate:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getFixedFontFamily()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getJavaScriptCanOpenWindowsAutomatically()Z
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebSettings;->webSettingsDelegate:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getJavaScriptCanOpenWindowsAutomatically()Z

    move-result v0

    return v0
.end method

.method public getJavaScriptEnabled()Z
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebSettings;->webSettingsDelegate:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getJavaScriptEnabled()Z

    move-result v0

    return v0
.end method

.method public getLayoutAlgorithm()Lcom/amazon/android/webkit/AmazonWebSettings$LayoutAlgorithm;
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebSettings;->webSettingsDelegate:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getLayoutAlgorithm()Landroid/webkit/WebSettings$LayoutAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings$LayoutAlgorithm;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/android/webkit/AmazonWebSettings$LayoutAlgorithm;->valueOf(Ljava/lang/String;)Lcom/amazon/android/webkit/AmazonWebSettings$LayoutAlgorithm;

    move-result-object v0

    return-object v0
.end method

.method public getLightTouchEnabled()Z
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebSettings;->webSettingsDelegate:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getLightTouchEnabled()Z

    move-result v0

    return v0
.end method

.method public getLoadWithOverviewMode()Z
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebSettings;->webSettingsDelegate:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getLoadWithOverviewMode()Z

    move-result v0

    return v0
.end method

.method public getLoadsImagesAutomatically()Z
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebSettings;->webSettingsDelegate:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getLoadsImagesAutomatically()Z

    move-result v0

    return v0
.end method

.method public getMediaPlaybackRequiresUserGesture()Z
    .locals 3

    .line 588
    sget-object v0, Lcom/amazon/android/webkit/android/AndroidWebSettings;->GET_MEDIA_PLAYBACK:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 589
    iget-object v2, p0, Lcom/amazon/android/webkit/android/AndroidWebSettings;->webSettingsDelegate:Landroid/webkit/WebSettings;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/amazon/android/webkit/android/Reflect;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "AndroidWebSettings"

    const-string v2, "getMediaPlaybackRequiresUserGesture() is not available"

    .line 591
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public getMinimumFontSize()I
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebSettings;->webSettingsDelegate:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getMinimumFontSize()I

    move-result v0

    return v0
.end method

.method public getMinimumLogicalFontSize()I
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebSettings;->webSettingsDelegate:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getMinimumLogicalFontSize()I

    move-result v0

    return v0
.end method

.method public getPluginState()Lcom/amazon/android/webkit/AmazonWebSettings$PluginState;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebSettings;->webSettingsDelegate:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getPluginState()Landroid/webkit/WebSettings$PluginState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings$PluginState;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/android/webkit/AmazonWebSettings$PluginState;->valueOf(Ljava/lang/String;)Lcom/amazon/android/webkit/AmazonWebSettings$PluginState;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getSansSerifFontFamily()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 549
    :try_start_0
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebSettings;->webSettingsDelegate:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getSansSerifFontFamily()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSaveFormData()Z
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebSettings;->webSettingsDelegate:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getSaveFormData()Z

    move-result v0

    return v0
.end method

.method public getSavePassword()Z
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebSettings;->webSettingsDelegate:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getSavePassword()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized getSerifFontFamily()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 559
    :try_start_0
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebSettings;->webSettingsDelegate:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getSerifFontFamily()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getStandardFontFamily()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 569
    :try_start_0
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebSettings;->webSettingsDelegate:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getStandardFontFamily()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTextSize()Lcom/amazon/android/webkit/AmazonWebSettings$TextSize;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 213
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebSettings;->webSettingsDelegate:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getTextSize()Landroid/webkit/WebSettings$TextSize;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings$TextSize;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/android/webkit/AmazonWebSettings$TextSize;->valueOf(Ljava/lang/String;)Lcom/amazon/android/webkit/AmazonWebSettings$TextSize;

    move-result-object v0

    return-object v0
.end method

.method public getTextZoom()I
    .locals 1

    .line 408
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebSettings;->webSettingsDelegate:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getTextZoom()I

    move-result v0

    return v0
.end method

.method public getUseWideViewPort()Z
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebSettings;->webSettingsDelegate:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUseWideViewPort()Z

    move-result v0

    return v0
.end method

.method public getUserAgent()I
    .locals 3

    .line 389
    sget-object v0, Lcom/amazon/android/webkit/android/AndroidWebSettings;->GET_USER_AGENT:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 390
    iget-object v2, p0, Lcom/amazon/android/webkit/android/AndroidWebSettings;->webSettingsDelegate:Landroid/webkit/WebSettings;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/amazon/android/webkit/android/Reflect;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    return v1
.end method

.method public getUserAgentString()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebSettings;->webSettingsDelegate:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isDoubleTapToZoomEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setAllowContentAccess(Z)V
    .locals 1

    .line 474
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebSettings;->webSettingsDelegate:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    return-void
.end method

.method public setAllowFileAccess(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 420
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebSettings;->webSettingsDelegate:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    return-void
.end method

.method public setAllowFileAccessFromFileURLs(Z)V
    .locals 1

    .line 484
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebSettings;->webSettingsDelegate:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    return-void
.end method

.method public setAllowRunningInsecureContent(Z)V
    .locals 1

    if-eqz p1, :cond_0

    return-void

    .line 443
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v0, "setAllowRunningInsecureContent(false) is unsupported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setAllowUniversalAccessFromFileURLs(Z)V
    .locals 1

    .line 494
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebSettings;->webSettingsDelegate:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    return-void
.end method

.method public setAppCacheEnabled(Z)V
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebSettings;->webSettingsDelegate:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    return-void
.end method

.method public setAppCacheMaxSize(J)V
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebSettings;->webSettingsDelegate:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebSettings;->setAppCacheMaxSize(J)V

    return-void
.end method

.method public setAppCachePath(Ljava/lang/String;)V
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebSettings;->webSettingsDelegate:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized setBlockNetworkImage(Z)V
    .locals 1

    monitor-enter p0

    .line 504
    :try_start_0
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebSettings;->webSettingsDelegate:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 505
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setBlockNetworkLoads(Z)V
    .locals 1

    monitor-enter p0

    .line 514
    :try_start_0
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebSettings;->webSettingsDelegate:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setBlockNetworkLoads(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 515
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setBuiltInZoomControls(Z)V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebSettings;->webSettingsDelegate:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    return-void
.end method

.method public setCacheMode(I)V
    .locals 1

    .line 438
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebSettings;->webSettingsDelegate:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    return-void
.end method

.method public declared-synchronized setCursiveFontFamily(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 524
    :try_start_0
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebSettings;->webSettingsDelegate:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setCursiveFontFamily(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 525
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setDatabaseEnabled(Z)V
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebSettings;->webSettingsDelegate:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    return-void
.end method

.method public setDatabasePath(Ljava/lang/String;)V
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebSettings;->webSettingsDelegate:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    return-void
.end method

.method public setDefaultFixedFontSize(I)V
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebSettings;->webSettingsDelegate:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setDefaultFixedFontSize(I)V

    return-void
.end method

.method public setDefaultFontSize(I)V
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebSettings;->webSettingsDelegate:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    return-void
.end method

.method public setDefaultTextEncodingName(Ljava/lang/String;)V
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebSettings;->webSettingsDelegate:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    return-void
.end method

.method public setDefaultZoom(Lcom/amazon/android/webkit/AmazonWebSettings$ZoomDensity;)V
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebSettings;->webSettingsDelegate:Landroid/webkit/WebSettings;

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/webkit/WebSettings$ZoomDensity;->valueOf(Ljava/lang/String;)Landroid/webkit/WebSettings$ZoomDensity;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    return-void
.end method

.method public setDisplayZoomControls(Z)V
    .locals 4

    .line 364
    sget-object v0, Lcom/amazon/android/webkit/android/AndroidWebSettings;->SET_DISPLAY_ZOOM_CONTROLS:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 365
    iget-object v1, p0, Lcom/amazon/android/webkit/android/AndroidWebSettings;->webSettingsDelegate:Landroid/webkit/WebSettings;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/amazon/android/webkit/android/Reflect;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setDomStorageEnabled(Z)V
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebSettings;->webSettingsDelegate:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    return-void
.end method

.method public setDoubleTapToZoomEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setEnableSmoothTransition(Z)V
    .locals 4

    .line 381
    sget-object v0, Lcom/amazon/android/webkit/android/AndroidWebSettings;->SET_ENABLE_SMOOTH_TRANSITION:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 382
    iget-object v1, p0, Lcom/amazon/android/webkit/android/AndroidWebSettings;->webSettingsDelegate:Landroid/webkit/WebSettings;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/amazon/android/webkit/android/Reflect;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public declared-synchronized setFantasyFontFamily(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 534
    :try_start_0
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebSettings;->webSettingsDelegate:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setFantasyFontFamily(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 535
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setFixedFontFamily(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 544
    :try_start_0
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebSettings;->webSettingsDelegate:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setFixedFontFamily(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 545
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setGeolocationDatabasePath(Ljava/lang/String;)V
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebSettings;->webSettingsDelegate:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setGeolocationDatabasePath(Ljava/lang/String;)V

    return-void
.end method

.method public setGeolocationEnabled(Z)V
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebSettings;->webSettingsDelegate:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    return-void
.end method

.method public setJavaScriptCanOpenWindowsAutomatically(Z)V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebSettings;->webSettingsDelegate:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    return-void
.end method

.method public setJavaScriptEnabled(Z)V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebSettings;->webSettingsDelegate:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    return-void
.end method

.method public setLayoutAlgorithm(Lcom/amazon/android/webkit/AmazonWebSettings$LayoutAlgorithm;)V
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebSettings;->webSettingsDelegate:Landroid/webkit/WebSettings;

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/webkit/WebSettings$LayoutAlgorithm;->valueOf(Ljava/lang/String;)Landroid/webkit/WebSettings$LayoutAlgorithm;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    return-void
.end method

.method public setLightTouchEnabled(Z)V
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebSettings;->webSettingsDelegate:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setLightTouchEnabled(Z)V

    return-void
.end method

.method public setLoadWithOverviewMode(Z)V
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebSettings;->webSettingsDelegate:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    return-void
.end method

.method public setLoadsImagesAutomatically(Z)V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebSettings;->webSettingsDelegate:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    return-void
.end method

.method public setMediaPlaybackRequiresUserGesture(Z)V
    .locals 4

    .line 579
    sget-object v0, Lcom/amazon/android/webkit/android/AndroidWebSettings;->SET_MEDIA_PLAYBACK:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 580
    iget-object v1, p0, Lcom/amazon/android/webkit/android/AndroidWebSettings;->webSettingsDelegate:Landroid/webkit/WebSettings;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/amazon/android/webkit/android/Reflect;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    const-string p1, "AndroidWebSettings"

    const-string/jumbo v0, "setMediaPlaybackRequiresUserGesture() is not available"

    .line 583
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setMinimumFontSize(I)V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebSettings;->webSettingsDelegate:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    return-void
.end method

.method public setMinimumLogicalFontSize(I)V
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebSettings;->webSettingsDelegate:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    return-void
.end method

.method public setNavDump(Z)V
    .locals 4

    .line 204
    sget-object v0, Lcom/amazon/android/webkit/android/AndroidWebSettings;->SET_NAV_DUMP:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 205
    iget-object v1, p0, Lcom/amazon/android/webkit/android/AndroidWebSettings;->webSettingsDelegate:Landroid/webkit/WebSettings;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/amazon/android/webkit/android/Reflect;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setNeedInitialFocus(Z)V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebSettings;->webSettingsDelegate:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setNeedInitialFocus(Z)V

    return-void
.end method

.method public setPageCacheCapacity(I)V
    .locals 4

    .line 351
    sget-object v0, Lcom/amazon/android/webkit/android/AndroidWebSettings;->SET_PAGE_CACHE_CAPACITY:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 352
    iget-object v1, p0, Lcom/amazon/android/webkit/android/AndroidWebSettings;->webSettingsDelegate:Landroid/webkit/WebSettings;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/amazon/android/webkit/android/Reflect;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setPluginState(Lcom/amazon/android/webkit/AmazonWebSettings$PluginState;)V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebSettings;->webSettingsDelegate:Landroid/webkit/WebSettings;

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/webkit/WebSettings$PluginState;->valueOf(Ljava/lang/String;)Landroid/webkit/WebSettings$PluginState;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    return-void
.end method

.method public setPrerenderTimeout(I)V
    .locals 0

    .line 398
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 461
    sget-object v0, Lcom/amazon/android/webkit/android/AndroidWebSettings;->SET_PROPERTY:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 462
    iget-object v1, p0, Lcom/amazon/android/webkit/android/AndroidWebSettings;->webSettingsDelegate:Landroid/webkit/WebSettings;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    invoke-static {v0, v1, v2}, Lcom/amazon/android/webkit/android/Reflect;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setRenderPriority(Lcom/amazon/android/webkit/AmazonWebSettings$RenderPriority;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 455
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebSettings;->webSettingsDelegate:Landroid/webkit/WebSettings;

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/webkit/WebSettings$RenderPriority;->valueOf(Ljava/lang/String;)Landroid/webkit/WebSettings$RenderPriority;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    return-void
.end method

.method public declared-synchronized setSansSerifFontFamily(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 554
    :try_start_0
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebSettings;->webSettingsDelegate:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setSansSerifFontFamily(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 555
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setSaveFormData(Z)V
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebSettings;->webSettingsDelegate:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    return-void
.end method

.method public setSavePassword(Z)V
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebSettings;->webSettingsDelegate:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    return-void
.end method

.method public declared-synchronized setSerifFontFamily(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 564
    :try_start_0
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebSettings;->webSettingsDelegate:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setSerifFontFamily(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 565
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setStandardFontFamily(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 574
    :try_start_0
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebSettings;->webSettingsDelegate:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setStandardFontFamily(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 575
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setSupportMultipleWindows(Z)V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebSettings;->webSettingsDelegate:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    return-void
.end method

.method public setSupportZoom(Z)V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebSettings;->webSettingsDelegate:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    return-void
.end method

.method public setTextSize(Lcom/amazon/android/webkit/AmazonWebSettings$TextSize;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 219
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebSettings;->webSettingsDelegate:Landroid/webkit/WebSettings;

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/webkit/WebSettings$TextSize;->valueOf(Ljava/lang/String;)Landroid/webkit/WebSettings$TextSize;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setTextSize(Landroid/webkit/WebSettings$TextSize;)V

    return-void
.end method

.method public setTextZoom(I)V
    .locals 1

    .line 403
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebSettings;->webSettingsDelegate:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    return-void
.end method

.method public setUseWideViewPort(Z)V
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebSettings;->webSettingsDelegate:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    return-void
.end method

.method public setUserAgent(I)V
    .locals 4

    .line 75
    sget-object v0, Lcom/amazon/android/webkit/android/AndroidWebSettings;->SET_USER_AGENT:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 76
    iget-object v1, p0, Lcom/amazon/android/webkit/android/AndroidWebSettings;->webSettingsDelegate:Landroid/webkit/WebSettings;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/amazon/android/webkit/android/Reflect;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setUserAgentString(Ljava/lang/String;)V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebSettings;->webSettingsDelegate:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    return-void
.end method

.method public supportMultipleWindows()Z
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebSettings;->webSettingsDelegate:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->supportMultipleWindows()Z

    move-result v0

    return v0
.end method

.method public supportZoom()Z
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebSettings;->webSettingsDelegate:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->supportZoom()Z

    move-result v0

    return v0
.end method
