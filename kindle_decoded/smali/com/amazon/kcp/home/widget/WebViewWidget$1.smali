.class final Lcom/amazon/kcp/home/widget/WebViewWidget$1;
.super Ljava/lang/Object;
.source "WebViewWidget.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/home/widget/WebViewWidget;-><init>(Landroid/content/Context;Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;Lcom/amazon/kcp/application/IAuthenticationManager;Landroid/app/Activity;Lcom/amazon/kindle/home/model/CardData;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/home/widget/WebViewWidget;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/home/widget/WebViewWidget;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/home/widget/WebViewWidget$1;->this$0:Lcom/amazon/kcp/home/widget/WebViewWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/WebViewWidget$1;->this$0:Lcom/amazon/kcp/home/widget/WebViewWidget;

    iget-object v1, p0, Lcom/amazon/kcp/home/widget/WebViewWidget$1;->this$0:Lcom/amazon/kcp/home/widget/WebViewWidget;

    invoke-static {v1}, Lcom/amazon/kcp/home/widget/WebViewWidget;->access$initWebView(Lcom/amazon/kcp/home/widget/WebViewWidget;)Lcom/amazon/kindle/webview/android/KindleWebView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kcp/home/widget/WebViewWidget;->access$setWebView$p(Lcom/amazon/kcp/home/widget/WebViewWidget;Lcom/amazon/kindle/webview/android/KindleWebView;)V

    .line 84
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/WebViewWidget$1;->this$0:Lcom/amazon/kcp/home/widget/WebViewWidget;

    invoke-static {v0}, Lcom/amazon/kcp/home/widget/WebViewWidget;->access$getWebView$p(Lcom/amazon/kcp/home/widget/WebViewWidget;)Lcom/amazon/kindle/webview/android/KindleWebView;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/amazon/kindle/webview/android/KindleWebView;->loadWebPage$default(Lcom/amazon/kindle/webview/android/KindleWebView;ZILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 86
    iget-object v1, p0, Lcom/amazon/kcp/home/widget/WebViewWidget$1;->this$0:Lcom/amazon/kcp/home/widget/WebViewWidget;

    invoke-static {v1}, Lcom/amazon/kcp/home/widget/WebViewWidget;->access$getTAG$p(Lcom/amazon/kcp/home/widget/WebViewWidget;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to initialize WebView"

    invoke-static {v1, v2, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/WebViewWidget$1;->this$0:Lcom/amazon/kcp/home/widget/WebViewWidget;

    invoke-static {v0}, Lcom/amazon/kcp/home/widget/WebViewWidget;->access$getSdk$p(Lcom/amazon/kcp/home/widget/WebViewWidget;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/home/widget/WebViewWidget$1;->this$0:Lcom/amazon/kcp/home/widget/WebViewWidget;

    invoke-static {v1}, Lcom/amazon/kcp/home/widget/WebViewWidget;->access$getTAG$p(Lcom/amazon/kcp/home/widget/WebViewWidget;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/krx/metrics/MetricType;->ERROR:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v3, "WebViewFatalInitError"

    invoke-interface {v0, v1, v3, v2}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    .line 88
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/WebViewWidget$1;->this$0:Lcom/amazon/kcp/home/widget/WebViewWidget;

    sget-object v1, Lcom/amazon/kindle/home/card/HomeCardState;->FAILED:Lcom/amazon/kindle/home/card/HomeCardState;

    invoke-static {v0, v1}, Lcom/amazon/kcp/home/widget/WebViewWidget;->access$setState$p(Lcom/amazon/kcp/home/widget/WebViewWidget;Lcom/amazon/kindle/home/card/HomeCardState;)V

    :goto_0
    return-void
.end method
