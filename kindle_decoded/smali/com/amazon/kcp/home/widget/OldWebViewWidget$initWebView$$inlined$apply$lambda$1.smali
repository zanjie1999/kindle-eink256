.class public final Lcom/amazon/kcp/home/widget/OldWebViewWidget$initWebView$$inlined$apply$lambda$1;
.super Landroid/webkit/WebChromeClient;
.source "OldWebViewWidget.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/home/widget/OldWebViewWidget;->initWebView()Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/home/widget/OldWebViewWidget;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/home/widget/OldWebViewWidget;Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetClient;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$initWebView$$inlined$apply$lambda$1;->this$0:Lcom/amazon/kcp/home/widget/OldWebViewWidget;

    .line 239
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 4

    const-string v0, "consoleMessage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
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

    .line 243
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->messageLevel()Landroid/webkit/ConsoleMessage$MessageLevel;

    move-result-object v1

    const-string v2, "WebViewJSConsoleMessage"

    if-nez v1, :cond_0

    goto/16 :goto_0

    :cond_0
    sget-object v3, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Landroid/webkit/ConsoleMessage$MessageLevel;->ordinal()I

    move-result v1

    aget v1, v3, v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_4

    const/4 v3, 0x2

    if-eq v1, v3, :cond_4

    const/4 v3, 0x3

    if-eq v1, v3, :cond_3

    const/4 v3, 0x4

    if-eq v1, v3, :cond_2

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    goto/16 :goto_1

    .line 259
    :cond_1
    iget-object v1, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$initWebView$$inlined$apply$lambda$1;->this$0:Lcom/amazon/kcp/home/widget/OldWebViewWidget;

    invoke-static {v1}, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->access$getTAG$p(Lcom/amazon/kcp/home/widget/OldWebViewWidget;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$initWebView$$inlined$apply$lambda$1;->this$0:Lcom/amazon/kcp/home/widget/OldWebViewWidget;

    invoke-static {v0}, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->access$getSdk$p(Lcom/amazon/kcp/home/widget/OldWebViewWidget;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$initWebView$$inlined$apply$lambda$1;->this$0:Lcom/amazon/kcp/home/widget/OldWebViewWidget;

    invoke-static {v1}, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->access$getTAG$p(Lcom/amazon/kcp/home/widget/OldWebViewWidget;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/krx/metrics/MetricType;->ERROR:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v3, "WebViewJSConsoleErrorMessage"

    invoke-interface {v0, v1, v3, v2}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    goto :goto_1

    .line 255
    :cond_2
    iget-object v1, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$initWebView$$inlined$apply$lambda$1;->this$0:Lcom/amazon/kcp/home/widget/OldWebViewWidget;

    invoke-static {v1}, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->access$getTAG$p(Lcom/amazon/kcp/home/widget/OldWebViewWidget;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$initWebView$$inlined$apply$lambda$1;->this$0:Lcom/amazon/kcp/home/widget/OldWebViewWidget;

    invoke-static {v0}, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->access$getSdk$p(Lcom/amazon/kcp/home/widget/OldWebViewWidget;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$initWebView$$inlined$apply$lambda$1;->this$0:Lcom/amazon/kcp/home/widget/OldWebViewWidget;

    invoke-static {v1}, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->access$getTAG$p(Lcom/amazon/kcp/home/widget/OldWebViewWidget;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/amazon/kindle/krx/metrics/MetricType;->WARN:Lcom/amazon/kindle/krx/metrics/MetricType;

    invoke-interface {v0, v1, v2, v3}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    goto :goto_1

    .line 251
    :cond_3
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$initWebView$$inlined$apply$lambda$1;->this$0:Lcom/amazon/kcp/home/widget/OldWebViewWidget;

    invoke-static {v0}, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->access$getTAG$p(Lcom/amazon/kcp/home/widget/OldWebViewWidget;)Ljava/lang/String;

    .line 252
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$initWebView$$inlined$apply$lambda$1;->this$0:Lcom/amazon/kcp/home/widget/OldWebViewWidget;

    invoke-static {v0}, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->access$getSdk$p(Lcom/amazon/kcp/home/widget/OldWebViewWidget;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$initWebView$$inlined$apply$lambda$1;->this$0:Lcom/amazon/kcp/home/widget/OldWebViewWidget;

    invoke-static {v1}, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->access$getTAG$p(Lcom/amazon/kcp/home/widget/OldWebViewWidget;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/amazon/kindle/krx/metrics/MetricType;->DEBUG:Lcom/amazon/kindle/krx/metrics/MetricType;

    invoke-interface {v0, v1, v2, v3}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    goto :goto_1

    .line 247
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$initWebView$$inlined$apply$lambda$1;->this$0:Lcom/amazon/kcp/home/widget/OldWebViewWidget;

    invoke-static {v0}, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->access$getTAG$p(Lcom/amazon/kcp/home/widget/OldWebViewWidget;)Ljava/lang/String;

    .line 248
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$initWebView$$inlined$apply$lambda$1;->this$0:Lcom/amazon/kcp/home/widget/OldWebViewWidget;

    invoke-static {v0}, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->access$getSdk$p(Lcom/amazon/kcp/home/widget/OldWebViewWidget;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$initWebView$$inlined$apply$lambda$1;->this$0:Lcom/amazon/kcp/home/widget/OldWebViewWidget;

    invoke-static {v1}, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->access$getTAG$p(Lcom/amazon/kcp/home/widget/OldWebViewWidget;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    invoke-interface {v0, v1, v2, v3}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    .line 264
    :cond_5
    :goto_1
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result p1

    return p1
.end method
