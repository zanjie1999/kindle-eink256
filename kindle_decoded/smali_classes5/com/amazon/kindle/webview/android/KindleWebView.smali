.class public final Lcom/amazon/kindle/webview/android/KindleWebView;
.super Landroid/webkit/WebView;
.source "KindleWebView.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKindleWebView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KindleWebView.kt\ncom/amazon/kindle/webview/android/KindleWebView\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,131:1\n151#2,2:132\n*E\n*S KotlinDebug\n*F\n+ 1 KindleWebView.kt\ncom/amazon/kindle/webview/android/KindleWebView\n*L\n111#1,2:132\n*E\n"
.end annotation


# instance fields
.field private final callerTag:Ljava/lang/String;

.field private final configuration:Lcom/amazon/kindle/webview/android/KindleWebViewConfiguration;

.field private loadStartTimestamp:J

.field private final logger:Lcom/amazon/kindle/krx/logging/ILogger;

.field private final payload:Ljava/lang/String;

.field private previousFontScale:F

.field private final reftag:Ljava/lang/String;

.field private final sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private shouldLoadPayload:Z

.field private state:Lcom/amazon/kindle/webview/android/KindleWebViewState;

.field private uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/webview/android/KindleWebViewConfiguration;Landroid/app/Activity;Lcom/amazon/kindle/krx/IKindleReaderSDK;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "configuration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sdk"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callerTag"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/amazon/kindle/webview/android/KindleWebView;->configuration:Lcom/amazon/kindle/webview/android/KindleWebViewConfiguration;

    iput-object p3, p0, Lcom/amazon/kindle/webview/android/KindleWebView;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    iput-object p4, p0, Lcom/amazon/kindle/webview/android/KindleWebView;->uri:Ljava/lang/String;

    iput-object p5, p0, Lcom/amazon/kindle/webview/android/KindleWebView;->callerTag:Ljava/lang/String;

    iput-object p6, p0, Lcom/amazon/kindle/webview/android/KindleWebView;->payload:Ljava/lang/String;

    iput-object p7, p0, Lcom/amazon/kindle/webview/android/KindleWebView;->reftag:Ljava/lang/String;

    .line 29
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/amazon/kindle/webview/android/KindleWebView;->loadStartTimestamp:J

    .line 30
    iget-object p1, p0, Lcom/amazon/kindle/webview/android/KindleWebView;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object p1

    const-string/jumbo p2, "sdk.logger"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/kindle/webview/android/KindleWebView;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    .line 32
    sget-object p1, Lcom/amazon/kindle/webview/android/KindleWebViewState;->LOADING:Lcom/amazon/kindle/webview/android/KindleWebViewState;

    iput-object p1, p0, Lcom/amazon/kindle/webview/android/KindleWebView;->state:Lcom/amazon/kindle/webview/android/KindleWebViewState;

    .line 35
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->setId(I)V

    .line 36
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x1

    const/4 p3, -0x2

    invoke-direct {p1, p2, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    .line 38
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    const/4 p3, 0x2

    .line 39
    invoke-virtual {p0, p3}, Landroid/webkit/WebView;->setOverScrollMode(I)V

    .line 42
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->setLongClickable(Z)V

    .line 43
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->setHapticFeedbackEnabled(Z)V

    .line 44
    sget-object p4, Lcom/amazon/kindle/webview/android/KindleWebView$1;->INSTANCE:Lcom/amazon/kindle/webview/android/KindleWebView$1;

    invoke-virtual {p0, p4}, Landroid/webkit/WebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 46
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p4

    .line 47
    invoke-virtual {p4, p1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 48
    invoke-virtual {p4, p1}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    const/4 p5, 0x1

    .line 49
    invoke-virtual {p4, p5}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 50
    invoke-virtual {p4, p5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 51
    invoke-virtual {p4, p5}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 52
    invoke-virtual {p4, p5}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 53
    iget-object p6, p0, Lcom/amazon/kindle/webview/android/KindleWebView;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p6}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p6

    const-string/jumbo p7, "sdk.context"

    invoke-static {p6, p7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p6}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p6

    const-string/jumbo v0, "sdk.context.cacheDir"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p4, p6}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 55
    invoke-virtual {p4, p1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 56
    new-instance p6, Lcom/amazon/kindle/webview/android/KindleWebChromeClient;

    iget-object v0, p0, Lcom/amazon/kindle/webview/android/KindleWebView;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    iget-object v1, p0, Lcom/amazon/kindle/webview/android/KindleWebView;->callerTag:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/kindle/webview/android/KindleWebView;->configuration:Lcom/amazon/kindle/webview/android/KindleWebViewConfiguration;

    invoke-direct {p6, v0, v1, v2}, Lcom/amazon/kindle/webview/android/KindleWebChromeClient;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Ljava/lang/String;Lcom/amazon/kindle/webview/android/KindleWebViewConfiguration;)V

    invoke-virtual {p0, p6}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 57
    iget-object p6, p0, Lcom/amazon/kindle/webview/android/KindleWebView;->configuration:Lcom/amazon/kindle/webview/android/KindleWebViewConfiguration;

    invoke-virtual {p6}, Lcom/amazon/kindle/webview/android/KindleWebViewConfiguration;->getEnableOfflineSupport()Z

    move-result p6

    if-eqz p6, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    :goto_0
    invoke-virtual {p4, p2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 61
    iget-object p2, p0, Lcom/amazon/kindle/webview/android/KindleWebView;->payload:Ljava/lang/String;

    if-eqz p2, :cond_1

    invoke-static {p2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    :cond_1
    const/4 p1, 0x1

    :cond_2
    if-nez p1, :cond_3

    .line 62
    iput-boolean p5, p0, Lcom/amazon/kindle/webview/android/KindleWebView;->shouldLoadPayload:Z

    .line 65
    :cond_3
    iget-object p1, p0, Lcom/amazon/kindle/webview/android/KindleWebView;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string/jumbo p2, "sdk.context.resources"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->fontScale:F

    iput p1, p0, Lcom/amazon/kindle/webview/android/KindleWebView;->previousFontScale:F

    .line 66
    iget-object p1, p0, Lcom/amazon/kindle/webview/android/KindleWebView;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    iget-object p2, p0, Lcom/amazon/kindle/webview/android/KindleWebView;->callerTag:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Recorded current fontScale of "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, p0, Lcom/amazon/kindle/webview/android/KindleWebView;->previousFontScale:F

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p4, " (textZoom: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, ".textZoom)"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lcom/amazon/kindle/krx/logging/ILogger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object p1, p0, Lcom/amazon/kindle/webview/android/KindleWebView;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic loadWebPage$default(Lcom/amazon/kindle/webview/android/KindleWebView;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 88
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/webview/android/KindleWebView;->loadWebPage(Z)V

    return-void
.end method


# virtual methods
.method public final getCallerTag()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/amazon/kindle/webview/android/KindleWebView;->callerTag:Ljava/lang/String;

    return-object v0
.end method

.method public final getConfiguration()Lcom/amazon/kindle/webview/android/KindleWebViewConfiguration;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/amazon/kindle/webview/android/KindleWebView;->configuration:Lcom/amazon/kindle/webview/android/KindleWebViewConfiguration;

    return-object v0
.end method

.method public final getLoadStartTimestamp()J
    .locals 2

    .line 29
    iget-wide v0, p0, Lcom/amazon/kindle/webview/android/KindleWebView;->loadStartTimestamp:J

    return-wide v0
.end method

.method public final getPayload()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/amazon/kindle/webview/android/KindleWebView;->payload:Ljava/lang/String;

    return-object v0
.end method

.method public final getPreviousFontScale()F
    .locals 1

    .line 31
    iget v0, p0, Lcom/amazon/kindle/webview/android/KindleWebView;->previousFontScale:F

    return v0
.end method

.method public final getReftag()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/amazon/kindle/webview/android/KindleWebView;->reftag:Ljava/lang/String;

    return-object v0
.end method

.method public final getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/amazon/kindle/webview/android/KindleWebView;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-object v0
.end method

.method public final getShouldLoadPayload()Z
    .locals 1

    .line 28
    iget-boolean v0, p0, Lcom/amazon/kindle/webview/android/KindleWebView;->shouldLoadPayload:Z

    return v0
.end method

.method public final getState()Lcom/amazon/kindle/webview/android/KindleWebViewState;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/amazon/kindle/webview/android/KindleWebView;->state:Lcom/amazon/kindle/webview/android/KindleWebViewState;

    return-object v0
.end method

.method public final getUri()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/amazon/kindle/webview/android/KindleWebView;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public final loadWebPage(Z)V
    .locals 8

    if-eqz p1, :cond_0

    .line 91
    invoke-virtual {p0}, Landroid/webkit/WebView;->reload()V

    goto/16 :goto_2

    .line 93
    :cond_0
    iget-boolean p1, p0, Lcom/amazon/kindle/webview/android/KindleWebView;->shouldLoadPayload:Z

    if-eqz p1, :cond_1

    .line 94
    iget-object p1, p0, Lcom/amazon/kindle/webview/android/KindleWebView;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    iget-object v0, p0, Lcom/amazon/kindle/webview/android/KindleWebView;->callerTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading payload with baseUrl: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/webview/android/KindleWebView;->uri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' and payload"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/logging/ILogger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v4, p0, Lcom/amazon/kindle/webview/android/KindleWebView;->payload:Ljava/lang/String;

    if-eqz v4, :cond_5

    iget-object v3, p0, Lcom/amazon/kindle/webview/android/KindleWebView;->uri:Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v5, "text/html; charset=utf-8"

    const-string v6, "UTF-8"

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 99
    :cond_1
    iget-object p1, p0, Lcom/amazon/kindle/webview/android/KindleWebView;->configuration:Lcom/amazon/kindle/webview/android/KindleWebViewConfiguration;

    invoke-virtual {p1}, Lcom/amazon/kindle/webview/android/KindleWebViewConfiguration;->getEnableOfflineSupport()Z

    move-result p1

    const-string/jumbo v0, "settings"

    if-eqz p1, :cond_3

    .line 100
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amazon/kindle/webview/android/KindleWebView;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getNetworkService()Lcom/amazon/kindle/krx/network/INetworkService;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/network/INetworkService;->hasNetworkConnectivity()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, -0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 104
    :cond_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Locale.getDefault().toString()"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    iget-object v1, p0, Lcom/amazon/kindle/webview/android/KindleWebView;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/krx/theme/ThemeArea;->OUT_OF_BOOK:Lcom/amazon/kindle/krx/theme/ThemeArea;

    invoke-interface {v1, v2}, Lcom/amazon/kindle/krx/theme/IThemeManager;->getTheme(Lcom/amazon/kindle/krx/theme/ThemeArea;)Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object v1

    const-string/jumbo v2, "sdk.themeManager.getTheme(ThemeArea.OUT_OF_BOOK)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/amazon/kindle/krx/theme/Theme;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "sdk.themeManager.getThem\u2026.OUT_OF_BOOK).displayName"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "Locale.US"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_6

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "(this as java.lang.String).toLowerCase(locale)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    iget-object v2, p0, Lcom/amazon/kindle/webview/android/KindleWebView;->uri:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 107
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "locale"

    .line 108
    invoke-virtual {v2, v3, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v3, "theme"

    .line 109
    invoke-virtual {v2, v3, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 111
    iget-object v2, p0, Lcom/amazon/kindle/webview/android/KindleWebView;->configuration:Lcom/amazon/kindle/webview/android/KindleWebViewConfiguration;

    invoke-virtual {v2}, Lcom/amazon/kindle/webview/android/KindleWebViewConfiguration;->getRequestQueryParams()Ljava/util/Map;

    move-result-object v2

    .line 132
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 112
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_1

    .line 115
    :cond_4
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "urlWithQueryParams.toString()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "Accept-Language"

    .line 116
    invoke-static {v2, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    .line 117
    iget-object v2, p0, Lcom/amazon/kindle/webview/android/KindleWebView;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    iget-object v3, p0, Lcom/amazon/kindle/webview/android/KindleWebView;->callerTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Loading URL: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\', textZoom: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/webkit/WebSettings;->getTextZoom()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", headers: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/amazon/kindle/krx/logging/ILogger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0, v1, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    :cond_5
    :goto_2
    return-void

    .line 105
    :cond_6
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 72
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebView;->onLayout(ZIIII)V

    .line 74
    iget-object p1, p0, Lcom/amazon/kindle/webview/android/KindleWebView;->configuration:Lcom/amazon/kindle/webview/android/KindleWebViewConfiguration;

    invoke-virtual {p1}, Lcom/amazon/kindle/webview/android/KindleWebViewConfiguration;->getEnableAutoTextResizing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 75
    iget-object p1, p0, Lcom/amazon/kindle/webview/android/KindleWebView;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo p2, "sdk.context"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string/jumbo p2, "sdk.context.resources"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 77
    iget p2, p0, Lcom/amazon/kindle/webview/android/KindleWebView;->previousFontScale:F

    cmpg-float p2, p2, p1

    if-eqz p2, :cond_0

    .line 78
    iget-object p2, p0, Lcom/amazon/kindle/webview/android/KindleWebView;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    iget-object p3, p0, Lcom/amazon/kindle/webview/android/KindleWebView;->callerTag:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Webview should reload as fontScale has changed ("

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p5, p0, Lcom/amazon/kindle/webview/android/KindleWebView;->previousFontScale:F

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p5, " -> "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p5, "), updating textZoom and refreshing"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p2, p3, p4}, Lcom/amazon/kindle/krx/logging/ILogger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    const-string/jumbo p3, "settings"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p3, 0x64

    int-to-float p3, p3

    mul-float p3, p3, p1

    float-to-int p3, p3

    invoke-virtual {p2, p3}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    .line 80
    iput p1, p0, Lcom/amazon/kindle/webview/android/KindleWebView;->previousFontScale:F

    .line 81
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/amazon/kindle/webview/android/KindleWebView$onLayout$1;

    invoke-direct {p2, p0}, Lcom/amazon/kindle/webview/android/KindleWebView$onLayout$1;-><init>(Lcom/amazon/kindle/webview/android/KindleWebView;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final onThemeChangedEvent(Lcom/amazon/kindle/krx/events/ThemeChangedEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    iget-object p1, p0, Lcom/amazon/kindle/webview/android/KindleWebView;->configuration:Lcom/amazon/kindle/webview/android/KindleWebViewConfiguration;

    invoke-virtual {p1}, Lcom/amazon/kindle/webview/android/KindleWebViewConfiguration;->getEnableReloadOnThemeChange()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 126
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/amazon/kindle/webview/android/KindleWebView$onThemeChangedEvent$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/webview/android/KindleWebView$onThemeChangedEvent$1;-><init>(Lcom/amazon/kindle/webview/android/KindleWebView;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final setLoadStartTimestamp(J)V
    .locals 0

    .line 29
    iput-wide p1, p0, Lcom/amazon/kindle/webview/android/KindleWebView;->loadStartTimestamp:J

    return-void
.end method

.method public final setPreviousFontScale(F)V
    .locals 0

    .line 31
    iput p1, p0, Lcom/amazon/kindle/webview/android/KindleWebView;->previousFontScale:F

    return-void
.end method

.method public final setShouldLoadPayload(Z)V
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/amazon/kindle/webview/android/KindleWebView;->shouldLoadPayload:Z

    return-void
.end method

.method public final setState(Lcom/amazon/kindle/webview/android/KindleWebViewState;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iput-object p1, p0, Lcom/amazon/kindle/webview/android/KindleWebView;->state:Lcom/amazon/kindle/webview/android/KindleWebViewState;

    return-void
.end method

.method public final setUri(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/amazon/kindle/webview/android/KindleWebView;->uri:Ljava/lang/String;

    return-void
.end method
