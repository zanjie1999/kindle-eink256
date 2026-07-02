.class final Lcom/amazon/kindle/webview/android/KindleWebViewClient$onPageStarted$1;
.super Ljava/lang/Object;
.source "KindleWebViewClient.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/webview/android/KindleWebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $url:Ljava/lang/String;

.field final synthetic this$0:Lcom/amazon/kindle/webview/android/KindleWebViewClient;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/webview/android/KindleWebViewClient;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/webview/android/KindleWebViewClient$onPageStarted$1;->this$0:Lcom/amazon/kindle/webview/android/KindleWebViewClient;

    iput-object p2, p0, Lcom/amazon/kindle/webview/android/KindleWebViewClient$onPageStarted$1;->$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 61
    iget-object v0, p0, Lcom/amazon/kindle/webview/android/KindleWebViewClient$onPageStarted$1;->this$0:Lcom/amazon/kindle/webview/android/KindleWebViewClient;

    invoke-static {v0}, Lcom/amazon/kindle/webview/android/KindleWebViewClient;->access$getWebView$p(Lcom/amazon/kindle/webview/android/KindleWebViewClient;)Lcom/amazon/kindle/webview/android/KindleWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/webview/android/KindleWebView;->getState()Lcom/amazon/kindle/webview/android/KindleWebViewState;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/webview/android/KindleWebViewState;->LOADING:Lcom/amazon/kindle/webview/android/KindleWebViewState;

    if-ne v0, v1, :cond_0

    .line 62
    iget-object v0, p0, Lcom/amazon/kindle/webview/android/KindleWebViewClient$onPageStarted$1;->this$0:Lcom/amazon/kindle/webview/android/KindleWebViewClient;

    invoke-static {v0}, Lcom/amazon/kindle/webview/android/KindleWebViewClient;->access$getLogger$p(Lcom/amazon/kindle/webview/android/KindleWebViewClient;)Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/webview/android/KindleWebViewClient$onPageStarted$1;->this$0:Lcom/amazon/kindle/webview/android/KindleWebViewClient;

    invoke-static {v1}, Lcom/amazon/kindle/webview/android/KindleWebViewClient;->access$getCallerTag$p(Lcom/amazon/kindle/webview/android/KindleWebViewClient;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load page before timeout of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/kindle/webview/android/KindleWebViewClient$onPageStarted$1;->this$0:Lcom/amazon/kindle/webview/android/KindleWebViewClient;

    invoke-static {v3}, Lcom/amazon/kindle/webview/android/KindleWebViewClient;->access$getConfiguration$p(Lcom/amazon/kindle/webview/android/KindleWebViewClient;)Lcom/amazon/kindle/webview/android/KindleWebViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/kindle/webview/android/KindleWebViewConfiguration;->getRequestTimeout()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms, url: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/kindle/webview/android/KindleWebViewClient$onPageStarted$1;->$url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\', payload?: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/kindle/webview/android/KindleWebViewClient$onPageStarted$1;->this$0:Lcom/amazon/kindle/webview/android/KindleWebViewClient;

    invoke-static {v3}, Lcom/amazon/kindle/webview/android/KindleWebViewClient;->access$getWebView$p(Lcom/amazon/kindle/webview/android/KindleWebViewClient;)Lcom/amazon/kindle/webview/android/KindleWebView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/kindle/webview/android/KindleWebView;->getShouldLoadPayload()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/amazon/kindle/webview/android/KindleWebViewClient$onPageStarted$1;->this$0:Lcom/amazon/kindle/webview/android/KindleWebViewClient;

    invoke-static {v0}, Lcom/amazon/kindle/webview/android/KindleWebViewClient;->access$getSdk$p(Lcom/amazon/kindle/webview/android/KindleWebViewClient;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/webview/android/KindleWebViewClient$onPageStarted$1;->this$0:Lcom/amazon/kindle/webview/android/KindleWebViewClient;

    invoke-static {v1}, Lcom/amazon/kindle/webview/android/KindleWebViewClient;->access$getCallerTag$p(Lcom/amazon/kindle/webview/android/KindleWebViewClient;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kindle/webview/android/KindleWebViewClient$onPageStarted$1;->this$0:Lcom/amazon/kindle/webview/android/KindleWebViewClient;

    sget-object v3, Lcom/amazon/kindle/webview/android/metrics/MC;->WEB_VIEW_LOAD_TIMEOUT_ERROR:Lcom/amazon/kindle/webview/android/metrics/MC;

    invoke-static {v2, v3}, Lcom/amazon/kindle/webview/android/KindleWebViewClient;->access$constructMetricsTag(Lcom/amazon/kindle/webview/android/KindleWebViewClient;Lcom/amazon/kindle/webview/android/metrics/MC;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/amazon/kindle/krx/metrics/MetricType;->ERROR:Lcom/amazon/kindle/krx/metrics/MetricType;

    invoke-interface {v0, v1, v2, v3}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    .line 64
    iget-object v0, p0, Lcom/amazon/kindle/webview/android/KindleWebViewClient$onPageStarted$1;->this$0:Lcom/amazon/kindle/webview/android/KindleWebViewClient;

    invoke-virtual {v0}, Lcom/amazon/kindle/webview/android/KindleWebViewClient;->handleFailure()V

    :cond_0
    return-void
.end method
