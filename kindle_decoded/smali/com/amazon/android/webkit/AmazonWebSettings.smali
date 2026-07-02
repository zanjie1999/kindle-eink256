.class public abstract Lcom/amazon/android/webkit/AmazonWebSettings;
.super Ljava/lang/Object;
.source "AmazonWebSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/android/webkit/AmazonWebSettings$RenderPriority;,
        Lcom/amazon/android/webkit/AmazonWebSettings$PluginState;,
        Lcom/amazon/android/webkit/AmazonWebSettings$LayoutAlgorithm;,
        Lcom/amazon/android/webkit/AmazonWebSettings$TextSize;,
        Lcom/amazon/android/webkit/AmazonWebSettings$ZoomDensity;
    }
.end annotation


# static fields
.field public static final LOAD_CACHE_ELSE_NETWORK:I = 0x1

.field public static final LOAD_CACHE_ONLY:I = 0x3

.field public static final LOAD_DEFAULT:I = -0x1

.field public static final LOAD_NORMAL:I = 0x0

.field public static final LOAD_NO_CACHE:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract enableSmoothTransition()Z
.end method

.method public abstract getAllowContentAccess()Z
.end method

.method public abstract getAllowFileAccess()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getAllowFileAccessFromFileURLs()Z
.end method

.method public abstract getAllowRunningInsecureContent()Z
.end method

.method public abstract getAllowUniversalAccessFromFileURLs()Z
.end method

.method public abstract getBlockNetworkImage()Z
.end method

.method public abstract getBlockNetworkLoads()Z
.end method

.method public abstract getBuiltInZoomControls()Z
.end method

.method public abstract getCacheMode()I
.end method

.method public abstract getCursiveFontFamily()Ljava/lang/String;
.end method

.method public abstract getDatabaseEnabled()Z
.end method

.method public abstract getDatabasePath()Ljava/lang/String;
.end method

.method public abstract getDefaultFixedFontSize()I
.end method

.method public abstract getDefaultFontSize()I
.end method

.method public abstract getDefaultTextEncodingName()Ljava/lang/String;
.end method

.method public abstract getDefaultZoom()Lcom/amazon/android/webkit/AmazonWebSettings$ZoomDensity;
.end method

.method public abstract getDisplayZoomControls()Z
.end method

.method public abstract getDomStorageEnabled()Z
.end method

.method public abstract getFantasyFontFamily()Ljava/lang/String;
.end method

.method public abstract getFixedFontFamily()Ljava/lang/String;
.end method

.method public abstract getJavaScriptCanOpenWindowsAutomatically()Z
.end method

.method public abstract getJavaScriptEnabled()Z
.end method

.method public abstract getLayoutAlgorithm()Lcom/amazon/android/webkit/AmazonWebSettings$LayoutAlgorithm;
.end method

.method public abstract getLightTouchEnabled()Z
.end method

.method public abstract getLoadWithOverviewMode()Z
.end method

.method public abstract getLoadsImagesAutomatically()Z
.end method

.method public abstract getMediaPlaybackRequiresUserGesture()Z
.end method

.method public abstract getMinimumFontSize()I
.end method

.method public abstract getMinimumLogicalFontSize()I
.end method

.method public abstract getPluginState()Lcom/amazon/android/webkit/AmazonWebSettings$PluginState;
.end method

.method public abstract getSansSerifFontFamily()Ljava/lang/String;
.end method

.method public abstract getSaveFormData()Z
.end method

.method public abstract getSavePassword()Z
.end method

.method public abstract getSerifFontFamily()Ljava/lang/String;
.end method

.method public abstract getStandardFontFamily()Ljava/lang/String;
.end method

.method public abstract getTextSize()Lcom/amazon/android/webkit/AmazonWebSettings$TextSize;
.end method

.method public abstract getTextZoom()I
.end method

.method public abstract getUseWideViewPort()Z
.end method

.method public abstract getUserAgent()I
.end method

.method public abstract getUserAgentString()Ljava/lang/String;
.end method

.method public abstract isDoubleTapToZoomEnabled()Z
.end method

.method public abstract setAllowContentAccess(Z)V
.end method

.method public abstract setAllowFileAccess(Z)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setAllowFileAccessFromFileURLs(Z)V
.end method

.method public abstract setAllowRunningInsecureContent(Z)V
.end method

.method public abstract setAllowUniversalAccessFromFileURLs(Z)V
.end method

.method public abstract setAppCacheEnabled(Z)V
.end method

.method public abstract setAppCacheMaxSize(J)V
.end method

.method public abstract setAppCachePath(Ljava/lang/String;)V
.end method

.method public abstract setBlockNetworkImage(Z)V
.end method

.method public setBlockNetworkLoads(Z)V
    .locals 0

    return-void
.end method

.method public abstract setBuiltInZoomControls(Z)V
.end method

.method public abstract setCacheMode(I)V
.end method

.method public abstract setCursiveFontFamily(Ljava/lang/String;)V
.end method

.method public abstract setDatabaseEnabled(Z)V
.end method

.method public abstract setDatabasePath(Ljava/lang/String;)V
.end method

.method public abstract setDefaultFixedFontSize(I)V
.end method

.method public abstract setDefaultFontSize(I)V
.end method

.method public abstract setDefaultTextEncodingName(Ljava/lang/String;)V
.end method

.method public abstract setDefaultZoom(Lcom/amazon/android/webkit/AmazonWebSettings$ZoomDensity;)V
.end method

.method public abstract setDisplayZoomControls(Z)V
.end method

.method public abstract setDomStorageEnabled(Z)V
.end method

.method public abstract setDoubleTapToZoomEnabled(Z)V
.end method

.method public abstract setEnableSmoothTransition(Z)V
.end method

.method public abstract setFantasyFontFamily(Ljava/lang/String;)V
.end method

.method public abstract setFixedFontFamily(Ljava/lang/String;)V
.end method

.method public abstract setGeolocationDatabasePath(Ljava/lang/String;)V
.end method

.method public abstract setGeolocationEnabled(Z)V
.end method

.method public abstract setJavaScriptCanOpenWindowsAutomatically(Z)V
.end method

.method public abstract setJavaScriptEnabled(Z)V
.end method

.method public abstract setLayoutAlgorithm(Lcom/amazon/android/webkit/AmazonWebSettings$LayoutAlgorithm;)V
.end method

.method public abstract setLightTouchEnabled(Z)V
.end method

.method public abstract setLoadWithOverviewMode(Z)V
.end method

.method public abstract setLoadsImagesAutomatically(Z)V
.end method

.method public abstract setMediaPlaybackRequiresUserGesture(Z)V
.end method

.method public abstract setMinimumFontSize(I)V
.end method

.method public abstract setMinimumLogicalFontSize(I)V
.end method

.method public abstract setNavDump(Z)V
.end method

.method public abstract setNeedInitialFocus(Z)V
.end method

.method public abstract setPageCacheCapacity(I)V
.end method

.method public abstract setPluginState(Lcom/amazon/android/webkit/AmazonWebSettings$PluginState;)V
.end method

.method public abstract setPrerenderTimeout(I)V
.end method

.method public abstract setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setRenderPriority(Lcom/amazon/android/webkit/AmazonWebSettings$RenderPriority;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setSansSerifFontFamily(Ljava/lang/String;)V
.end method

.method public abstract setSaveFormData(Z)V
.end method

.method public abstract setSavePassword(Z)V
.end method

.method public abstract setSerifFontFamily(Ljava/lang/String;)V
.end method

.method public abstract setStandardFontFamily(Ljava/lang/String;)V
.end method

.method public abstract setSupportMultipleWindows(Z)V
.end method

.method public abstract setSupportZoom(Z)V
.end method

.method public abstract setTextSize(Lcom/amazon/android/webkit/AmazonWebSettings$TextSize;)V
.end method

.method public abstract setTextZoom(I)V
.end method

.method public abstract setUseWideViewPort(Z)V
.end method

.method public abstract setUserAgent(I)V
.end method

.method public abstract setUserAgentString(Ljava/lang/String;)V
.end method

.method public abstract supportMultipleWindows()Z
.end method

.method public abstract supportZoom()Z
.end method
