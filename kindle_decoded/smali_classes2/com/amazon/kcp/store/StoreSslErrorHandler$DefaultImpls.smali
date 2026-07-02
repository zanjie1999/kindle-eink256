.class public final Lcom/amazon/kcp/store/StoreSslErrorHandler$DefaultImpls;
.super Ljava/lang/Object;
.source "StoreSslErrorHandler.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/store/StoreSslErrorHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static handle(Lcom/amazon/kcp/store/StoreSslErrorHandler;Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;Lcom/amazon/kcp/application/WebViewSSLErrorHandler;)V
    .locals 3

    const-string/jumbo p0, "view"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "handler"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "webViewHandler"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/amazon/kcp/store/StoreDomainUtils;->isStoreDomainOverridden()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 31
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 p1, 0x1

    const-string p3, "Ignoring SSL errors on overridden store domain"

    invoke-static {p0, p3, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 33
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    return-void

    .line 39
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p0

    .line 42
    sget-object v0, Lcom/amazon/kindle/services/metrics/MetricType;->ERROR:Lcom/amazon/kindle/services/metrics/MetricType;

    const-string v1, "StoreActivity"

    const-string v2, "SslError"

    .line 39
    invoke-virtual {p0, v1, v2, v0}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/services/metrics/MetricType;)V

    const-string p0, "StoreSslErrorHandler"

    if-eqz p3, :cond_1

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Store load SSL error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p3}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :cond_1
    invoke-static {p1}, Lcom/amazon/kcp/application/WebViewSSLErrorHelper;->isProblematicChromeVersion(Landroid/webkit/WebView;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p4}, Lcom/amazon/kcp/application/WebViewSSLErrorHandler;->handleWebViewSSLError()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "SSLError: system webview version upgrade has been requested"

    .line 51
    invoke-static {p0, p1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    return-void

    .line 57
    :cond_2
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    return-void
.end method
