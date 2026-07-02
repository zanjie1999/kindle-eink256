.class public Lcom/audible/android/kcp/store/AudibleStoreWebViewClient;
.super Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewClient;
.source "AudibleStoreWebViewClient.java"


# instance fields
.field private final mActivity:Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;

.field private final mUriHandler:Lcom/audible/android/kcp/store/utils/AudibleUriHandler;


# direct methods
.method public constructor <init>(Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;)V
    .locals 1

    .line 28
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewClient;-><init>(Landroid/app/Activity;)V

    .line 30
    iput-object p1, p0, Lcom/audible/android/kcp/store/AudibleStoreWebViewClient;->mActivity:Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;

    .line 31
    new-instance p1, Lcom/audible/android/kcp/store/utils/AudibleStoreUriHandler;

    iget-object v0, p0, Lcom/audible/android/kcp/store/AudibleStoreWebViewClient;->mActivity:Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;

    invoke-direct {p1, v0}, Lcom/audible/android/kcp/store/utils/AudibleStoreUriHandler;-><init>(Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;)V

    iput-object p1, p0, Lcom/audible/android/kcp/store/AudibleStoreWebViewClient;->mUriHandler:Lcom/audible/android/kcp/store/utils/AudibleUriHandler;

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 45
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 46
    invoke-static {}, Lcom/audible/android/kcp/metrics/KrxMetricsManager;->getInstance()Lcom/audible/android/kcp/metrics/AiRMetricsManager;

    move-result-object p1

    sget-object p2, Lcom/audible/android/kcp/metrics/AiRMetrics$PerformanceMetrics;->OPEN_MATCHMAKER:Lcom/audible/android/kcp/metrics/AiRMetricKey;

    invoke-interface {p1, p2}, Lcom/audible/android/kcp/metrics/AiRMetricsManager;->stopMetricTimer(Lcom/audible/android/kcp/metrics/AiRMetricKey;)V

    .line 47
    invoke-static {}, Lcom/audible/android/kcp/metrics/KrxMetricsManager;->getInstance()Lcom/audible/android/kcp/metrics/AiRMetricsManager;

    move-result-object p1

    sget-object p2, Lcom/audible/android/kcp/metrics/AiRMetrics$PerformanceMetrics;->OPEN_UPGRADER:Lcom/audible/android/kcp/metrics/AiRMetricKey;

    invoke-interface {p1, p2}, Lcom/audible/android/kcp/metrics/AiRMetricsManager;->stopMetricTimer(Lcom/audible/android/kcp/metrics/AiRMetricKey;)V

    .line 48
    iget-object p1, p0, Lcom/audible/android/kcp/store/AudibleStoreWebViewClient;->mActivity:Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;

    invoke-virtual {p1}, Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;->hideSpinner()V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 62
    invoke-super {p0, p1, p2, p3}, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 63
    iget-object p1, p0, Lcom/audible/android/kcp/store/AudibleStoreWebViewClient;->mActivity:Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;

    invoke-virtual {p1}, Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;->showSpinner()V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    .line 54
    invoke-super {p0, p1, p2}, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    .line 56
    iget-object v0, p0, Lcom/audible/android/kcp/store/AudibleStoreWebViewClient;->mUriHandler:Lcom/audible/android/kcp/store/utils/AudibleUriHandler;

    invoke-interface {v0, p2}, Lcom/audible/android/kcp/store/utils/AudibleUriHandler;->handleUri(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
