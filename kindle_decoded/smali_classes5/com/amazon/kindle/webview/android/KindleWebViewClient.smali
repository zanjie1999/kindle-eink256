.class public Lcom/amazon/kindle/webview/android/KindleWebViewClient;
.super Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewClient;
.source "KindleWebViewClient.kt"


# instance fields
.field private final callerTag:Ljava/lang/String;

.field private final configuration:Lcom/amazon/kindle/webview/android/KindleWebViewConfiguration;

.field private final logger:Lcom/amazon/kindle/krx/logging/ILogger;

.field private final sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private final webView:Lcom/amazon/kindle/webview/android/KindleWebView;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/webview/android/KindleWebView;Ljava/lang/String;Lcom/amazon/kindle/krx/IKindleReaderSDK;Landroid/app/Activity;Lcom/amazon/kindle/webview/android/KindleWebViewConfiguration;)V
    .locals 1

    const-string/jumbo v0, "webView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callerTag"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sdk"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activity"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configuration"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0, p4}, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewClient;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/amazon/kindle/webview/android/KindleWebViewClient;->webView:Lcom/amazon/kindle/webview/android/KindleWebView;

    iput-object p2, p0, Lcom/amazon/kindle/webview/android/KindleWebViewClient;->callerTag:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/kindle/webview/android/KindleWebViewClient;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    iput-object p5, p0, Lcom/amazon/kindle/webview/android/KindleWebViewClient;->configuration:Lcom/amazon/kindle/webview/android/KindleWebViewConfiguration;

    .line 31
    invoke-interface {p3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object p1

    const-string/jumbo p2, "sdk.logger"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/kindle/webview/android/KindleWebViewClient;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    return-void
.end method

.method public static final synthetic access$constructMetricsTag(Lcom/amazon/kindle/webview/android/KindleWebViewClient;Lcom/amazon/kindle/webview/android/metrics/MC;)Ljava/lang/String;
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/amazon/kindle/webview/android/KindleWebViewClient;->constructMetricsTag(Lcom/amazon/kindle/webview/android/metrics/MC;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getCallerTag$p(Lcom/amazon/kindle/webview/android/KindleWebViewClient;)Ljava/lang/String;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/amazon/kindle/webview/android/KindleWebViewClient;->callerTag:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getConfiguration$p(Lcom/amazon/kindle/webview/android/KindleWebViewClient;)Lcom/amazon/kindle/webview/android/KindleWebViewConfiguration;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/amazon/kindle/webview/android/KindleWebViewClient;->configuration:Lcom/amazon/kindle/webview/android/KindleWebViewConfiguration;

    return-object p0
.end method

.method public static final synthetic access$getLogger$p(Lcom/amazon/kindle/webview/android/KindleWebViewClient;)Lcom/amazon/kindle/krx/logging/ILogger;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/amazon/kindle/webview/android/KindleWebViewClient;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    return-object p0
.end method

.method public static final synthetic access$getSdk$p(Lcom/amazon/kindle/webview/android/KindleWebViewClient;)Lcom/amazon/kindle/krx/IKindleReaderSDK;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/amazon/kindle/webview/android/KindleWebViewClient;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-object p0
.end method

.method public static final synthetic access$getWebView$p(Lcom/amazon/kindle/webview/android/KindleWebViewClient;)Lcom/amazon/kindle/webview/android/KindleWebView;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/amazon/kindle/webview/android/KindleWebViewClient;->webView:Lcom/amazon/kindle/webview/android/KindleWebView;

    return-object p0
.end method

.method private final constructMetricsTag(Lcom/amazon/kindle/webview/android/metrics/MC;)Ljava/lang/String;
    .locals 1

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/amazon/kindle/webview/android/metrics/MC;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/amazon/kindle/webview/android/KindleWebViewClient;->configuration:Lcom/amazon/kindle/webview/android/KindleWebViewConfiguration;

    invoke-virtual {p1}, Lcom/amazon/kindle/webview/android/KindleWebViewConfiguration;->getMetricsId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final reportFatalError()V
    .locals 4

    .line 119
    iget-object v0, p0, Lcom/amazon/kindle/webview/android/KindleWebViewClient;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getNetworkService()Lcom/amazon/kindle/krx/network/INetworkService;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/network/INetworkService;->hasNetworkConnectivity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/amazon/kindle/webview/android/KindleWebViewClient;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    .line 121
    iget-object v1, p0, Lcom/amazon/kindle/webview/android/KindleWebViewClient;->callerTag:Ljava/lang/String;

    .line 122
    sget-object v2, Lcom/amazon/kindle/webview/android/metrics/MC;->WEB_VIEW_FATAL_LOADING_ERROR:Lcom/amazon/kindle/webview/android/metrics/MC;

    invoke-direct {p0, v2}, Lcom/amazon/kindle/webview/android/KindleWebViewClient;->constructMetricsTag(Lcom/amazon/kindle/webview/android/metrics/MC;)Ljava/lang/String;

    move-result-object v2

    .line 123
    sget-object v3, Lcom/amazon/kindle/krx/metrics/MetricType;->ERROR:Lcom/amazon/kindle/krx/metrics/MetricType;

    .line 120
    invoke-interface {v0, v1, v2, v3}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    goto :goto_0

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/webview/android/KindleWebViewClient;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    .line 127
    iget-object v1, p0, Lcom/amazon/kindle/webview/android/KindleWebViewClient;->callerTag:Ljava/lang/String;

    .line 128
    sget-object v2, Lcom/amazon/kindle/webview/android/metrics/MC;->WEB_VIEW_FATAL_LOADING_ERROR_OFFLINE:Lcom/amazon/kindle/webview/android/metrics/MC;

    invoke-direct {p0, v2}, Lcom/amazon/kindle/webview/android/KindleWebViewClient;->constructMetricsTag(Lcom/amazon/kindle/webview/android/metrics/MC;)Ljava/lang/String;

    move-result-object v2

    .line 129
    sget-object v3, Lcom/amazon/kindle/krx/metrics/MetricType;->ERROR:Lcom/amazon/kindle/krx/metrics/MetricType;

    .line 126
    invoke-interface {v0, v1, v2, v3}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    :goto_0
    return-void
.end method

.method private final reportHttpError()V
    .locals 4

    .line 135
    iget-object v0, p0, Lcom/amazon/kindle/webview/android/KindleWebViewClient;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getNetworkService()Lcom/amazon/kindle/krx/network/INetworkService;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/network/INetworkService;->hasNetworkConnectivity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/amazon/kindle/webview/android/KindleWebViewClient;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    .line 137
    iget-object v1, p0, Lcom/amazon/kindle/webview/android/KindleWebViewClient;->callerTag:Ljava/lang/String;

    .line 138
    sget-object v2, Lcom/amazon/kindle/webview/android/metrics/MC;->WEB_VIEW_LOAD_URL_HTTP_ERROR:Lcom/amazon/kindle/webview/android/metrics/MC;

    invoke-direct {p0, v2}, Lcom/amazon/kindle/webview/android/KindleWebViewClient;->constructMetricsTag(Lcom/amazon/kindle/webview/android/metrics/MC;)Ljava/lang/String;

    move-result-object v2

    .line 139
    sget-object v3, Lcom/amazon/kindle/krx/metrics/MetricType;->WARN:Lcom/amazon/kindle/krx/metrics/MetricType;

    .line 136
    invoke-interface {v0, v1, v2, v3}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    goto :goto_0

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/webview/android/KindleWebViewClient;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    .line 143
    iget-object v1, p0, Lcom/amazon/kindle/webview/android/KindleWebViewClient;->callerTag:Ljava/lang/String;

    .line 144
    sget-object v2, Lcom/amazon/kindle/webview/android/metrics/MC;->WEB_VIEW_LOAD_URL_HTTP_ERROR_OFFLINE:Lcom/amazon/kindle/webview/android/metrics/MC;

    invoke-direct {p0, v2}, Lcom/amazon/kindle/webview/android/KindleWebViewClient;->constructMetricsTag(Lcom/amazon/kindle/webview/android/metrics/MC;)Ljava/lang/String;

    move-result-object v2

    .line 145
    sget-object v3, Lcom/amazon/kindle/krx/metrics/MetricType;->WARN:Lcom/amazon/kindle/krx/metrics/MetricType;

    .line 142
    invoke-interface {v0, v1, v2, v3}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    :goto_0
    return-void
.end method

.method private final reportResourceLoadError()V
    .locals 4

    .line 151
    iget-object v0, p0, Lcom/amazon/kindle/webview/android/KindleWebViewClient;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getNetworkService()Lcom/amazon/kindle/krx/network/INetworkService;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/network/INetworkService;->hasNetworkConnectivity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/amazon/kindle/webview/android/KindleWebViewClient;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    .line 153
    iget-object v1, p0, Lcom/amazon/kindle/webview/android/KindleWebViewClient;->callerTag:Ljava/lang/String;

    .line 154
    sget-object v2, Lcom/amazon/kindle/webview/android/metrics/MC;->WEB_VIEW_LOAD_URL_ERROR:Lcom/amazon/kindle/webview/android/metrics/MC;

    invoke-direct {p0, v2}, Lcom/amazon/kindle/webview/android/KindleWebViewClient;->constructMetricsTag(Lcom/amazon/kindle/webview/android/metrics/MC;)Ljava/lang/String;

    move-result-object v2

    .line 155
    sget-object v3, Lcom/amazon/kindle/krx/metrics/MetricType;->WARN:Lcom/amazon/kindle/krx/metrics/MetricType;

    .line 152
    invoke-interface {v0, v1, v2, v3}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    goto :goto_0

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/webview/android/KindleWebViewClient;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    .line 159
    iget-object v1, p0, Lcom/amazon/kindle/webview/android/KindleWebViewClient;->callerTag:Ljava/lang/String;

    .line 160
    sget-object v2, Lcom/amazon/kindle/webview/android/metrics/MC;->WEB_VIEW_LOAD_URL_ERROR_OFFLINE:Lcom/amazon/kindle/webview/android/metrics/MC;

    invoke-direct {p0, v2}, Lcom/amazon/kindle/webview/android/KindleWebViewClient;->constructMetricsTag(Lcom/amazon/kindle/webview/android/metrics/MC;)Ljava/lang/String;

    move-result-object v2

    .line 161
    sget-object v3, Lcom/amazon/kindle/krx/metrics/MetricType;->WARN:Lcom/amazon/kindle/krx/metrics/MetricType;

    .line 158
    invoke-interface {v0, v1, v2, v3}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public handleFailure()V
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/amazon/kindle/webview/android/KindleWebViewClient;->webView:Lcom/amazon/kindle/webview/android/KindleWebView;

    sget-object v1, Lcom/amazon/kindle/webview/android/KindleWebViewState;->FAILED:Lcom/amazon/kindle/webview/android/KindleWebViewState;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/webview/android/KindleWebView;->setState(Lcom/amazon/kindle/webview/android/KindleWebViewState;)V

    return-void
.end method

.method public handleSuccess()V
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/amazon/kindle/webview/android/KindleWebViewClient;->webView:Lcom/amazon/kindle/webview/android/KindleWebView;

    sget-object v1, Lcom/amazon/kindle/webview/android/KindleWebViewState;->READY:Lcom/amazon/kindle/webview/android/KindleWebViewState;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/webview/android/KindleWebView;->setState(Lcom/amazon/kindle/webview/android/KindleWebViewState;)V

    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 8

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 73
    iget-object p1, p0, Lcom/amazon/kindle/webview/android/KindleWebViewClient;->webView:Lcom/amazon/kindle/webview/android/KindleWebView;

    invoke-virtual {p1}, Lcom/amazon/kindle/webview/android/KindleWebView;->getState()Lcom/amazon/kindle/webview/android/KindleWebViewState;

    move-result-object p1

    sget-object p2, Lcom/amazon/kindle/webview/android/KindleWebViewState;->FAILED:Lcom/amazon/kindle/webview/android/KindleWebViewState;

    if-eq p1, p2, :cond_0

    .line 74
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iget-object v0, p0, Lcom/amazon/kindle/webview/android/KindleWebViewClient;->webView:Lcom/amazon/kindle/webview/android/KindleWebView;

    invoke-virtual {v0}, Lcom/amazon/kindle/webview/android/KindleWebView;->getLoadStartTimestamp()J

    move-result-wide v0

    sub-long v6, p1, v0

    .line 75
    iget-object p1, p0, Lcom/amazon/kindle/webview/android/KindleWebViewClient;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    iget-object p2, p0, Lcom/amazon/kindle/webview/android/KindleWebViewClient;->callerTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Finished rendering web page in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/amazon/kindle/krx/logging/ILogger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object p1, p0, Lcom/amazon/kindle/webview/android/KindleWebViewClient;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kindle/webview/android/KindleWebViewClient;->callerTag:Ljava/lang/String;

    sget-object p1, Lcom/amazon/kindle/webview/android/metrics/MC;->WEB_VIEW_CARD_LOAD_TIMER:Lcom/amazon/kindle/webview/android/metrics/MC;

    invoke-direct {p0, p1}, Lcom/amazon/kindle/webview/android/KindleWebViewClient;->constructMetricsTag(Lcom/amazon/kindle/webview/android/metrics/MC;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    invoke-interface/range {v2 .. v7}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportTimerMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;J)V

    .line 77
    invoke-virtual {p0}, Lcom/amazon/kindle/webview/android/KindleWebViewClient;->handleSuccess()V

    :cond_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 10

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-super {p0, p1, p2, p3}, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 47
    iget-object p1, p0, Lcom/amazon/kindle/webview/android/KindleWebViewClient;->webView:Lcom/amazon/kindle/webview/android/KindleWebView;

    invoke-virtual {p1}, Lcom/amazon/kindle/webview/android/KindleWebView;->getState()Lcom/amazon/kindle/webview/android/KindleWebViewState;

    move-result-object p1

    sget-object p3, Lcom/amazon/kindle/webview/android/KindleWebViewState;->FAILED:Lcom/amazon/kindle/webview/android/KindleWebViewState;

    if-ne p1, p3, :cond_0

    .line 48
    iget-object p1, p0, Lcom/amazon/kindle/webview/android/KindleWebViewClient;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    iget-object p2, p0, Lcom/amazon/kindle/webview/android/KindleWebViewClient;->callerTag:Ljava/lang/String;

    const-string p3, "Initial page load failed, skip tracking page loading metrics"

    invoke-interface {p1, p2, p3}, Lcom/amazon/kindle/krx/logging/ILogger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 52
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/webview/android/KindleWebViewClient;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    iget-object p3, p0, Lcom/amazon/kindle/webview/android/KindleWebViewClient;->callerTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Started rendering web page with url: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', payload?: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/webview/android/KindleWebViewClient;->webView:Lcom/amazon/kindle/webview/android/KindleWebView;

    invoke-virtual {v1}, Lcom/amazon/kindle/webview/android/KindleWebView;->getShouldLoadPayload()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p3, v0}, Lcom/amazon/kindle/krx/logging/ILogger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lcom/amazon/kindle/webview/android/KindleWebViewClient;->webView:Lcom/amazon/kindle/webview/android/KindleWebView;

    invoke-virtual {p1}, Lcom/amazon/kindle/webview/android/KindleWebView;->getLoadStartTimestamp()J

    move-result-wide v2

    sub-long v8, v0, v2

    .line 55
    iget-object p1, p0, Lcom/amazon/kindle/webview/android/KindleWebViewClient;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    iget-object p3, p0, Lcom/amazon/kindle/webview/android/KindleWebViewClient;->callerTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Finished loading base URL in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p3, v0}, Lcom/amazon/kindle/krx/logging/ILogger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object p1, p0, Lcom/amazon/kindle/webview/android/KindleWebViewClient;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v4

    iget-object v5, p0, Lcom/amazon/kindle/webview/android/KindleWebViewClient;->callerTag:Ljava/lang/String;

    sget-object p1, Lcom/amazon/kindle/webview/android/metrics/MC;->WEB_VIEW_CARD_REQUEST_TIMER:Lcom/amazon/kindle/webview/android/metrics/MC;

    invoke-direct {p0, p1}, Lcom/amazon/kindle/webview/android/KindleWebViewClient;->constructMetricsTag(Lcom/amazon/kindle/webview/android/metrics/MC;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    invoke-interface/range {v4 .. v9}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportTimerMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;J)V

    .line 60
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p1, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p3, Lcom/amazon/kindle/webview/android/KindleWebViewClient$onPageStarted$1;

    invoke-direct {p3, p0, p2}, Lcom/amazon/kindle/webview/android/KindleWebViewClient$onPageStarted$1;-><init>(Lcom/amazon/kindle/webview/android/KindleWebViewClient;Ljava/lang/String;)V

    .line 66
    iget-object p2, p0, Lcom/amazon/kindle/webview/android/KindleWebViewClient;->configuration:Lcom/amazon/kindle/webview/android/KindleWebViewConfiguration;

    invoke-virtual {p2}, Lcom/amazon/kindle/webview/android/KindleWebViewConfiguration;->getRequestTimeout()J

    move-result-wide v0

    .line 60
    invoke-virtual {p1, p3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 83
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object p1, p0, Lcom/amazon/kindle/webview/android/KindleWebViewClient;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    iget-object v0, p0, Lcom/amazon/kindle/webview/android/KindleWebViewClient;->callerTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed loading URL: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "\'. Error code: \'"

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\', description: \'"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x27

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lcom/amazon/kindle/krx/logging/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-direct {p0}, Lcom/amazon/kindle/webview/android/KindleWebViewClient;->reportFatalError()V

    .line 87
    invoke-virtual {p0}, Lcom/amazon/kindle/webview/android/KindleWebViewClient;->handleFailure()V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 6

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "request"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 94
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result p1

    const/16 v0, 0x27

    const-string v1, "\', message: \'"

    const-string v2, "\'. Failure code: \'"

    if-eqz p1, :cond_0

    .line 95
    iget-object p1, p0, Lcom/amazon/kindle/webview/android/KindleWebViewClient;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    iget-object v3, p0, Lcom/amazon/kindle/webview/android/KindleWebViewClient;->callerTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed loading main web page \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v3, p2}, Lcom/amazon/kindle/krx/logging/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-direct {p0}, Lcom/amazon/kindle/webview/android/KindleWebViewClient;->reportFatalError()V

    .line 97
    invoke-virtual {p0}, Lcom/amazon/kindle/webview/android/KindleWebViewClient;->handleFailure()V

    goto :goto_0

    .line 99
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/webview/android/KindleWebViewClient;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    iget-object v3, p0, Lcom/amazon/kindle/webview/android/KindleWebViewClient;->callerTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed loading web resource \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v3, p2}, Lcom/amazon/kindle/krx/logging/ILogger;->warning(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-direct {p0}, Lcom/amazon/kindle/webview/android/KindleWebViewClient;->reportResourceLoadError()V

    :goto_0
    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 4

    .line 106
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    .line 108
    iget-object p1, p0, Lcom/amazon/kindle/webview/android/KindleWebViewClient;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    iget-object v0, p0, Lcom/amazon/kindle/webview/android/KindleWebViewClient;->callerTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTTP error while loading web resource \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\'. Status code: \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\', Reason: \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getReasonPhrase()Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p3, 0x27

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, v0, p3}, Lcom/amazon/kindle/krx/logging/ILogger;->warning(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_3

    .line 110
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_3

    .line 111
    invoke-direct {p0}, Lcom/amazon/kindle/webview/android/KindleWebViewClient;->reportFatalError()V

    .line 112
    invoke-virtual {p0}, Lcom/amazon/kindle/webview/android/KindleWebViewClient;->handleFailure()V

    goto :goto_2

    .line 114
    :cond_3
    invoke-direct {p0}, Lcom/amazon/kindle/webview/android/KindleWebViewClient;->reportHttpError()V

    :goto_2
    return-void
.end method
