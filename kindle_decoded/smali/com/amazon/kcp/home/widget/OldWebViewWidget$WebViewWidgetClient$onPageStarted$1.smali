.class final Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetClient$onPageStarted$1;
.super Ljava/lang/Object;
.source "OldWebViewWidget.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $url:Ljava/lang/String;

.field final synthetic this$0:Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetClient;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetClient;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetClient$onPageStarted$1;->this$0:Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetClient;

    iput-object p2, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetClient$onPageStarted$1;->$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 361
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetClient$onPageStarted$1;->this$0:Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetClient;

    invoke-static {v0}, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetClient;->access$getWebViewWidget$p(Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetClient;)Lcom/amazon/kcp/home/widget/OldWebViewWidget;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->access$getState$p(Lcom/amazon/kcp/home/widget/OldWebViewWidget;)Lcom/amazon/kindle/home/card/HomeCardState;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/home/card/HomeCardState;->LOADING:Lcom/amazon/kindle/home/card/HomeCardState;

    if-ne v0, v1, :cond_1

    .line 362
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetClient$onPageStarted$1;->this$0:Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetClient;

    invoke-static {v0}, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetClient;->access$getTAG$p(Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetClient;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to load page before timeout of 20000ms, url: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetClient$onPageStarted$1;->$url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\', payload?: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetClient$onPageStarted$1;->this$0:Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetClient;

    invoke-static {v2}, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetClient;->access$getWebViewWidget$p(Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetClient;)Lcom/amazon/kcp/home/widget/OldWebViewWidget;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->access$getShouldLoadPayload$p(Lcom/amazon/kcp/home/widget/OldWebViewWidget;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetClient$onPageStarted$1;->this$0:Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetClient;

    invoke-static {v0}, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetClient;->access$getSdk$p(Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetClient;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetClient$onPageStarted$1;->this$0:Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetClient;

    invoke-static {v1}, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetClient;->access$getTAG$p(Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetClient;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/krx/metrics/MetricType;->ERROR:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v3, "WebViewLoadTimeoutError"

    invoke-interface {v0, v1, v3, v2}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetClient$onPageStarted$1;->this$0:Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetClient;

    invoke-static {v0}, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetClient;->access$getWebViewWidget$p(Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetClient;)Lcom/amazon/kcp/home/widget/OldWebViewWidget;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/home/card/HomeCardState;->FAILED:Lcom/amazon/kindle/home/card/HomeCardState;

    invoke-static {v0, v1}, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->access$setState$p(Lcom/amazon/kcp/home/widget/OldWebViewWidget;Lcom/amazon/kindle/home/card/HomeCardState;)V

    :cond_1
    return-void
.end method
