.class public Lcom/amazon/adapt/pentos/webkit/MAPMetricsWebViewClient;
.super Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewClient;
.source "MAPMetricsWebViewClient.java"


# static fields
.field private static final PAGE_LOADED:Ljava/lang/String; = "PageLoaded"


# instance fields
.field private metrics:Lcom/amazon/kcp/store/adapter/ADAPTAmazonClientMetricsAdapter;


# direct methods
.method public constructor <init>(Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;)V
    .locals 1

    .line 21
    invoke-static {}, Lcom/amazon/kcp/store/adapter/ADAPTAmazonClientMetricsAdapter;->getInstance()Lcom/amazon/kcp/store/adapter/ADAPTAmazonClientMetricsAdapter;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/amazon/adapt/pentos/webkit/MAPMetricsWebViewClient;-><init>(Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;Lcom/amazon/kcp/store/adapter/ADAPTAmazonClientMetricsAdapter;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;Lcom/amazon/kcp/store/adapter/ADAPTAmazonClientMetricsAdapter;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewClient;-><init>(Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;)V

    .line 26
    iput-object p2, p0, Lcom/amazon/adapt/pentos/webkit/MAPMetricsWebViewClient;->metrics:Lcom/amazon/kcp/store/adapter/ADAPTAmazonClientMetricsAdapter;

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 31
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 32
    iget-object p1, p0, Lcom/amazon/adapt/pentos/webkit/MAPMetricsWebViewClient;->metrics:Lcom/amazon/kcp/store/adapter/ADAPTAmazonClientMetricsAdapter;

    sget-object p2, Lcom/amazon/client/metrics/common/Priority;->NORMAL:Lcom/amazon/client/metrics/common/Priority;

    const-string v0, "PageLoaded"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1, p2}, Lcom/amazon/kcp/store/adapter/ADAPTAmazonClientMetricsAdapter;->incrementCounter(Ljava/lang/String;ILcom/amazon/client/metrics/common/Priority;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 40
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 42
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 43
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "errorCode"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "description"

    .line 44
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "failingUrl"

    .line 45
    invoke-interface {p1, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object p2, p0, Lcom/amazon/adapt/pentos/webkit/MAPMetricsWebViewClient;->metrics:Lcom/amazon/kcp/store/adapter/ADAPTAmazonClientMetricsAdapter;

    sget-object p3, Lcom/amazon/client/metrics/common/Priority;->NORMAL:Lcom/amazon/client/metrics/common/Priority;

    const-string p4, "PageLoaded"

    const/4 v0, 0x0

    invoke-virtual {p2, p4, v0, p3, p1}, Lcom/amazon/kcp/store/adapter/ADAPTAmazonClientMetricsAdapter;->incrementCounter(Ljava/lang/String;ILcom/amazon/client/metrics/common/Priority;Ljava/util/Map;)V

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 2

    .line 51
    invoke-super {p0, p1, p2, p3}, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 53
    invoke-virtual {p3}, Landroid/net/http/SslError;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "sslError"

    invoke-static {p2, p1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    .line 54
    iget-object p2, p0, Lcom/amazon/adapt/pentos/webkit/MAPMetricsWebViewClient;->metrics:Lcom/amazon/kcp/store/adapter/ADAPTAmazonClientMetricsAdapter;

    sget-object p3, Lcom/amazon/client/metrics/common/Priority;->NORMAL:Lcom/amazon/client/metrics/common/Priority;

    const-string v0, "PageLoaded"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, p3, p1}, Lcom/amazon/kcp/store/adapter/ADAPTAmazonClientMetricsAdapter;->incrementCounter(Ljava/lang/String;ILcom/amazon/client/metrics/common/Priority;Ljava/util/Map;)V

    return-void
.end method
