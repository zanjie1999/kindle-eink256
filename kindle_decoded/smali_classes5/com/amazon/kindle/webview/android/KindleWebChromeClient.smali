.class public Lcom/amazon/kindle/webview/android/KindleWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "KindleWebChromeClient.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKindleWebChromeClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KindleWebChromeClient.kt\ncom/amazon/kindle/webview/android/KindleWebChromeClient\n*L\n1#1,42:1\n*E\n"
.end annotation


# instance fields
.field private final callerTag:Ljava/lang/String;

.field private final configuration:Lcom/amazon/kindle/webview/android/KindleWebViewConfiguration;

.field private final logger:Lcom/amazon/kindle/krx/logging/ILogger;

.field private final sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Ljava/lang/String;Lcom/amazon/kindle/webview/android/KindleWebViewConfiguration;)V
    .locals 1

    const-string/jumbo v0, "sdk"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callerTag"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configuration"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/webview/android/KindleWebChromeClient;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    iput-object p2, p0, Lcom/amazon/kindle/webview/android/KindleWebChromeClient;->callerTag:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/kindle/webview/android/KindleWebChromeClient;->configuration:Lcom/amazon/kindle/webview/android/KindleWebViewConfiguration;

    .line 10
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object p1

    const-string/jumbo p2, "sdk.logger"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/kindle/webview/android/KindleWebChromeClient;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    return-void
.end method

.method private final constructMetricsTag(Lcom/amazon/kindle/webview/android/metrics/MC;)Ljava/lang/String;
    .locals 1

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/amazon/kindle/webview/android/metrics/MC;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/amazon/kindle/webview/android/KindleWebChromeClient;->configuration:Lcom/amazon/kindle/webview/android/KindleWebViewConfiguration;

    invoke-virtual {p1}, Lcom/amazon/kindle/webview/android/KindleWebViewConfiguration;->getMetricsId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 4

    const-string v0, "consoleMessage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Console message: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->sourceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->messageLevel()Landroid/webkit/ConsoleMessage$MessageLevel;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/amazon/kindle/webview/android/KindleWebChromeClient$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Landroid/webkit/ConsoleMessage$MessageLevel;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    goto :goto_1

    .line 31
    :cond_1
    iget-object v1, p0, Lcom/amazon/kindle/webview/android/KindleWebChromeClient;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    iget-object v2, p0, Lcom/amazon/kindle/webview/android/KindleWebChromeClient;->callerTag:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/amazon/kindle/krx/logging/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/amazon/kindle/webview/android/KindleWebChromeClient;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/webview/android/KindleWebChromeClient;->callerTag:Ljava/lang/String;

    sget-object v2, Lcom/amazon/kindle/webview/android/metrics/MC;->WEB_VIEW_JS_CONSOLE_ERROR_MESSAGE:Lcom/amazon/kindle/webview/android/metrics/MC;

    invoke-direct {p0, v2}, Lcom/amazon/kindle/webview/android/KindleWebChromeClient;->constructMetricsTag(Lcom/amazon/kindle/webview/android/metrics/MC;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/amazon/kindle/krx/metrics/MetricType;->ERROR:Lcom/amazon/kindle/krx/metrics/MetricType;

    invoke-interface {v0, v1, v2, v3}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    goto :goto_1

    .line 27
    :cond_2
    iget-object v1, p0, Lcom/amazon/kindle/webview/android/KindleWebChromeClient;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    iget-object v2, p0, Lcom/amazon/kindle/webview/android/KindleWebChromeClient;->callerTag:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/amazon/kindle/krx/logging/ILogger;->warning(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/amazon/kindle/webview/android/KindleWebChromeClient;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/webview/android/KindleWebChromeClient;->callerTag:Ljava/lang/String;

    sget-object v2, Lcom/amazon/kindle/webview/android/metrics/MC;->WEB_VIEW_JS_CONSOLE_MESSAGE:Lcom/amazon/kindle/webview/android/metrics/MC;

    invoke-direct {p0, v2}, Lcom/amazon/kindle/webview/android/KindleWebChromeClient;->constructMetricsTag(Lcom/amazon/kindle/webview/android/metrics/MC;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/amazon/kindle/krx/metrics/MetricType;->WARN:Lcom/amazon/kindle/krx/metrics/MetricType;

    invoke-interface {v0, v1, v2, v3}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    goto :goto_1

    .line 23
    :cond_3
    iget-object v1, p0, Lcom/amazon/kindle/webview/android/KindleWebChromeClient;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    iget-object v2, p0, Lcom/amazon/kindle/webview/android/KindleWebChromeClient;->callerTag:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/amazon/kindle/webview/android/KindleWebChromeClient;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/webview/android/KindleWebChromeClient;->callerTag:Ljava/lang/String;

    sget-object v2, Lcom/amazon/kindle/webview/android/metrics/MC;->WEB_VIEW_JS_CONSOLE_MESSAGE:Lcom/amazon/kindle/webview/android/metrics/MC;

    invoke-direct {p0, v2}, Lcom/amazon/kindle/webview/android/KindleWebChromeClient;->constructMetricsTag(Lcom/amazon/kindle/webview/android/metrics/MC;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/amazon/kindle/krx/metrics/MetricType;->DEBUG:Lcom/amazon/kindle/krx/metrics/MetricType;

    invoke-interface {v0, v1, v2, v3}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    goto :goto_1

    .line 19
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/amazon/kindle/webview/android/KindleWebChromeClient;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    iget-object v2, p0, Lcom/amazon/kindle/webview/android/KindleWebChromeClient;->callerTag:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/amazon/kindle/krx/logging/ILogger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lcom/amazon/kindle/webview/android/KindleWebChromeClient;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/webview/android/KindleWebChromeClient;->callerTag:Ljava/lang/String;

    sget-object v2, Lcom/amazon/kindle/webview/android/metrics/MC;->WEB_VIEW_JS_CONSOLE_MESSAGE:Lcom/amazon/kindle/webview/android/metrics/MC;

    invoke-direct {p0, v2}, Lcom/amazon/kindle/webview/android/KindleWebChromeClient;->constructMetricsTag(Lcom/amazon/kindle/webview/android/metrics/MC;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    invoke-interface {v0, v1, v2, v3}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    .line 36
    :goto_1
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result p1

    return p1
.end method
