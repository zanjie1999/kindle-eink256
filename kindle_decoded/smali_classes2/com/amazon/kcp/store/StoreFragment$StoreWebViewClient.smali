.class public Lcom/amazon/kcp/store/StoreFragment$StoreWebViewClient;
.super Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewClient;
.source "StoreFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/store/StoreFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "StoreWebViewClient"
.end annotation


# static fields
.field private static final PAGE_DEFAULT:Ljava/lang/String; = "default_page"


# instance fields
.field private isWebviewInRedirect:Z

.field private pageListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kcp/store/listener/IPageListener;",
            ">;"
        }
    .end annotation
.end field

.field private prevStartedUrl:Ljava/lang/String;

.field private prevURL:Ljava/lang/String;

.field private sslHandler:Lcom/amazon/kcp/application/WebViewSSLErrorHandler;

.field final synthetic this$0:Lcom/amazon/kcp/store/StoreFragment;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/store/StoreFragment;Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;)V
    .locals 2

    .line 555
    iput-object p1, p0, Lcom/amazon/kcp/store/StoreFragment$StoreWebViewClient;->this$0:Lcom/amazon/kcp/store/StoreFragment;

    .line 556
    invoke-direct {p0, p2}, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewClient;-><init>(Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;)V

    .line 551
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/amazon/kcp/store/StoreFragment$StoreWebViewClient;->pageListeners:Ljava/util/Map;

    .line 557
    new-instance p2, Lcom/amazon/kcp/application/WebViewSSLErrorHandler;

    const-class v0, Lcom/amazon/kcp/store/StoreFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {p2, v1, v0, p1}, Lcom/amazon/kcp/application/WebViewSSLErrorHandler;-><init>(ZLjava/lang/String;Landroid/app/Activity;)V

    iput-object p2, p0, Lcom/amazon/kcp/store/StoreFragment$StoreWebViewClient;->sslHandler:Lcom/amazon/kcp/application/WebViewSSLErrorHandler;

    return-void
.end method

.method private fireListener(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 804
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreFragment$StoreWebViewClient;->pageListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/store/listener/IPageListener;

    if-eqz v0, :cond_0

    .line 806
    invoke-interface {v0, p2}, Lcom/amazon/kcp/store/listener/IPageListener;->onPageLoaded(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 807
    invoke-interface {v0}, Lcom/amazon/kcp/store/listener/IPageListener;->getFireType()Lcom/amazon/kcp/store/listener/IPageListener$TypeFire;

    move-result-object p2

    sget-object v0, Lcom/amazon/kcp/store/listener/IPageListener$TypeFire;->RUN_ONCE:Lcom/amazon/kcp/store/listener/IPageListener$TypeFire;

    if-ne p2, v0, :cond_0

    .line 808
    iget-object p2, p0, Lcom/amazon/kcp/store/StoreFragment$StoreWebViewClient;->pageListeners:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private handleAlipayMetrics(Ljava/lang/String;)V
    .locals 3

    .line 868
    invoke-static {p1}, Lcom/amazon/kcp/store/DomainPermissions;->fromUrl(Ljava/lang/String;)Lcom/amazon/kcp/store/DomainPermissions;

    move-result-object p1

    .line 869
    sget-object v0, Lcom/amazon/kcp/store/DomainPermissions;->ALIPAY:Lcom/amazon/kcp/store/DomainPermissions;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 870
    iget-object p1, p0, Lcom/amazon/kcp/store/StoreFragment$StoreWebViewClient;->prevURL:Ljava/lang/String;

    invoke-static {p1}, Lcom/amazon/kcp/store/DomainPermissions;->fromUrl(Ljava/lang/String;)Lcom/amazon/kcp/store/DomainPermissions;

    move-result-object p1

    .line 871
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreFragment$StoreWebViewClient;->prevStartedUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/kcp/store/DomainPermissions;->fromUrl(Ljava/lang/String;)Lcom/amazon/kcp/store/DomainPermissions;

    move-result-object v0

    .line 873
    sget-object v1, Lcom/amazon/kcp/store/DomainPermissions;->AMAZON:Lcom/amazon/kcp/store/DomainPermissions;

    invoke-virtual {p1, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/amazon/kcp/store/DomainPermissions;->AMAZON:Lcom/amazon/kcp/store/DomainPermissions;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 875
    iget-object p1, p0, Lcom/amazon/kcp/store/StoreFragment$StoreWebViewClient;->this$0:Lcom/amazon/kcp/store/StoreFragment;

    invoke-static {p1}, Lcom/amazon/kcp/store/StoreFragment;->access$1800(Lcom/amazon/kcp/store/StoreFragment;)Lcom/amazon/kcp/store/WebStoreController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/store/AbstractWebStoreController;->shouldOpenExternalUrlsInternally()Z

    move-result p1

    const-string v0, "StoreActivity"

    if-eqz p1, :cond_0

    .line 876
    invoke-static {}, Lcom/amazon/kcp/store/StoreFragment;->access$200()Ljava/lang/String;

    .line 877
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    sget-object v1, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v2, "AlipayRedirectedSafely"

    invoke-virtual {p1, v0, v2, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    goto :goto_0

    .line 879
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/store/StoreFragment;->access$200()Ljava/lang/String;

    .line 880
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    sget-object v1, Lcom/amazon/kindle/krx/metrics/MetricType;->WARN:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v2, "AlipayRedirectedDangerously"

    invoke-virtual {p1, v0, v2, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private isUrlAllowed(Ljava/lang/String;)Z
    .locals 5

    .line 823
    invoke-static {p1}, Lcom/amazon/kcp/store/DomainPermissions;->fromUrl(Ljava/lang/String;)Lcom/amazon/kcp/store/DomainPermissions;

    move-result-object v0

    .line 824
    invoke-virtual {v0}, Lcom/amazon/kcp/store/DomainPermissions;->isWebviewAllowed()Z

    move-result v1

    .line 825
    iget-object v2, p0, Lcom/amazon/kcp/store/StoreFragment$StoreWebViewClient;->this$0:Lcom/amazon/kcp/store/StoreFragment;

    invoke-static {v2}, Lcom/amazon/kcp/store/StoreFragment;->access$1600(Lcom/amazon/kcp/store/StoreFragment;)Lcom/amazon/kcp/store/StoreFragment$WebViewMode;

    move-result-object v2

    sget-object v3, Lcom/amazon/kcp/store/StoreFragment$WebViewMode;->LIMITED:Lcom/amazon/kcp/store/StoreFragment$WebViewMode;

    const/4 v4, 0x1

    if-ne v2, v3, :cond_1

    if-eqz v1, :cond_0

    .line 829
    invoke-static {}, Lcom/amazon/kcp/store/StoreFragment;->access$200()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Returning to STORE mode for url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 830
    iget-object p1, p0, Lcom/amazon/kcp/store/StoreFragment$StoreWebViewClient;->this$0:Lcom/amazon/kcp/store/StoreFragment;

    sget-object v0, Lcom/amazon/kcp/store/StoreFragment$WebViewMode;->STORE:Lcom/amazon/kcp/store/StoreFragment$WebViewMode;

    invoke-static {p1, v0}, Lcom/amazon/kcp/store/StoreFragment;->access$1700(Lcom/amazon/kcp/store/StoreFragment;Lcom/amazon/kcp/store/StoreFragment$WebViewMode;)V

    :cond_0
    return v4

    :cond_1
    if-nez v1, :cond_3

    .line 838
    iget-object v2, p0, Lcom/amazon/kcp/store/StoreFragment$StoreWebViewClient;->this$0:Lcom/amazon/kcp/store/StoreFragment;

    .line 839
    invoke-static {v2}, Lcom/amazon/kcp/store/StoreFragment;->access$1800(Lcom/amazon/kcp/store/StoreFragment;)Lcom/amazon/kcp/store/WebStoreController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kcp/store/AbstractWebStoreController;->shouldOpenExternalUrlsInternally()Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/amazon/kcp/store/DomainPermissions;->ALIPAY:Lcom/amazon/kcp/store/DomainPermissions;

    .line 840
    invoke-virtual {v0, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 843
    :cond_2
    invoke-static {}, Lcom/amazon/kcp/store/StoreFragment;->access$200()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Entering LIMITED mode for url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 844
    invoke-direct {p0, p1}, Lcom/amazon/kcp/store/StoreFragment$StoreWebViewClient;->handleAlipayMetrics(Ljava/lang/String;)V

    .line 845
    iget-object p1, p0, Lcom/amazon/kcp/store/StoreFragment$StoreWebViewClient;->this$0:Lcom/amazon/kcp/store/StoreFragment;

    sget-object v0, Lcom/amazon/kcp/store/StoreFragment$WebViewMode;->LIMITED:Lcom/amazon/kcp/store/StoreFragment$WebViewMode;

    invoke-static {p1, v0}, Lcom/amazon/kcp/store/StoreFragment;->access$1700(Lcom/amazon/kcp/store/StoreFragment;Lcom/amazon/kcp/store/StoreFragment$WebViewMode;)V

    return v4

    :cond_3
    return v1
.end method


# virtual methods
.method public doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 0

    .line 708
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 709
    iget-object p1, p0, Lcom/amazon/kcp/store/StoreFragment$StoreWebViewClient;->this$0:Lcom/amazon/kcp/store/StoreFragment;

    invoke-static {p1}, Lcom/amazon/kcp/store/StoreFragment;->access$1100(Lcom/amazon/kcp/store/StoreFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 710
    invoke-static {}, Lcom/amazon/kcp/store/StoreFragment;->access$200()Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "StoreFragment clear history. Current url: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 711
    iget-object p1, p0, Lcom/amazon/kcp/store/StoreFragment$StoreWebViewClient;->this$0:Lcom/amazon/kcp/store/StoreFragment;

    iget-object p1, p1, Lcom/amazon/kcp/store/StoreFragment;->webView:Lcom/amazon/kcp/store/StoreWebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->clearHistory()V

    .line 712
    iget-object p1, p0, Lcom/amazon/kcp/store/StoreFragment$StoreWebViewClient;->this$0:Lcom/amazon/kcp/store/StoreFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/amazon/kcp/store/StoreFragment;->access$1102(Lcom/amazon/kcp/store/StoreFragment;Z)Z

    :cond_0
    return-void
.end method

.method protected handleDisallowedUrl(Ljava/lang/String;)V
    .locals 2

    .line 854
    invoke-static {}, Lcom/amazon/kcp/store/StoreFragment;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StoreActivity did not match URL. Sending user to external browser"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    invoke-static {}, Lcom/amazon/kcp/store/StoreFragment;->access$200()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Giving external browser URL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 856
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreFragment$StoreWebViewClient;->this$0:Lcom/amazon/kcp/store/StoreFragment;

    invoke-static {v0}, Lcom/amazon/kcp/store/StoreFragment;->access$800(Lcom/amazon/kcp/store/StoreFragment;)Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kcp/application/IKindleApplicationController;->openUrl(Ljava/lang/String;)V

    return-void
.end method

.method public onPageCommitVisible(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 762
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageCommitVisible(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 763
    iget-boolean p1, p0, Lcom/amazon/kcp/store/StoreFragment$StoreWebViewClient;->isWebviewInRedirect:Z

    if-nez p1, :cond_0

    .line 764
    invoke-virtual {p0}, Lcom/amazon/kcp/store/StoreFragment$StoreWebViewClient;->onPageContentReady()V

    :cond_0
    return-void
.end method

.method protected onPageContentReady()V
    .locals 2

    .line 793
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreFragment$StoreWebViewClient;->this$0:Lcom/amazon/kcp/store/StoreFragment;

    iget-object v0, v0, Lcom/amazon/kcp/store/StoreFragment;->webView:Lcom/amazon/kcp/store/StoreWebView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 794
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 770
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 771
    invoke-static {}, Lcom/amazon/kcp/store/StoreFragment;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onPageFinished, injecting BH"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    iget-object p1, p0, Lcom/amazon/kcp/store/StoreFragment$StoreWebViewClient;->this$0:Lcom/amazon/kcp/store/StoreFragment;

    invoke-virtual {p1, p2}, Lcom/amazon/kcp/store/StoreFragment;->injectJavascript(Ljava/lang/String;)V

    .line 774
    iget-boolean p1, p0, Lcom/amazon/kcp/store/StoreFragment$StoreWebViewClient;->isWebviewInRedirect:Z

    if-nez p1, :cond_0

    .line 775
    invoke-virtual {p0}, Lcom/amazon/kcp/store/StoreFragment$StoreWebViewClient;->onPageContentReady()V

    .line 776
    invoke-virtual {p0, p2}, Lcom/amazon/kcp/store/StoreFragment$StoreWebViewClient;->onPageFinishedAfterAllRedirects(Ljava/lang/String;)V

    .line 779
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/debug/DebugUtils;->isToastDebuggingEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 780
    iget-object p1, p0, Lcom/amazon/kcp/store/StoreFragment$StoreWebViewClient;->this$0:Lcom/amazon/kcp/store/StoreFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 782
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/store/StoreFragment;->access$200()Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "StoreActivity#onPageFinished with url "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 785
    iget-object p1, p0, Lcom/amazon/kcp/store/StoreFragment$StoreWebViewClient;->pageListeners:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "default_page"

    .line 786
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/store/StoreFragment$StoreWebViewClient;->fireListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    invoke-direct {p0, p2, p2}, Lcom/amazon/kcp/store/StoreFragment$StoreWebViewClient;->fireListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    :cond_2
    iget-object p1, p0, Lcom/amazon/kcp/store/StoreFragment$StoreWebViewClient;->this$0:Lcom/amazon/kcp/store/StoreFragment;

    invoke-static {p1}, Lcom/amazon/kcp/store/StoreFragment;->access$1400(Lcom/amazon/kcp/store/StoreFragment;)V

    return-void
.end method

.method protected onPageFinishedAfterAllRedirects(Ljava/lang/String;)V
    .locals 2

    .line 799
    iget-object p1, p0, Lcom/amazon/kcp/store/StoreFragment$StoreWebViewClient;->this$0:Lcom/amazon/kcp/store/StoreFragment;

    invoke-static {p1}, Lcom/amazon/kcp/store/StoreFragment;->access$1500(Lcom/amazon/kcp/store/StoreFragment;)Lcom/amazon/kcp/store/StoreMetricsLogger;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/store/StoreMetricsLogger;->onLoadFinished()V

    .line 800
    sget-object p1, Lcom/amazon/kcp/application/FTUEPerformanceMetricsReporter;->INSTANCE:Lcom/amazon/kcp/application/FTUEPerformanceMetricsReporter;

    sget-object v0, Lcom/amazon/kcp/application/PerfMarker;->FTUE_STORE_LOAD_START:Lcom/amazon/kcp/application/PerfMarker;

    sget-object v1, Lcom/amazon/kcp/application/PerfMarker;->FTUE_STORE_LOAD_END:Lcom/amazon/kcp/application/PerfMarker;

    invoke-virtual {p1, v0, v1}, Lcom/amazon/kcp/application/FTUEPerformanceMetricsReporter;->stopTimer(Lcom/amazon/kcp/application/PerfMarker;Lcom/amazon/kcp/application/PerfMarker;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4

    const-string v0, "/hz/mycd/myx"

    .line 720
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 721
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    sget-object p2, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string p3, "OneClickSettings"

    const-string v0, "UpdateSuccessful"

    invoke-virtual {p1, p3, v0, p2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    .line 722
    iget-object p1, p0, Lcom/amazon/kcp/store/StoreFragment$StoreWebViewClient;->this$0:Lcom/amazon/kcp/store/StoreFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget p2, Lcom/amazon/kcp/store/R$string;->one_click_change_success:I

    const/4 p3, 0x1

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 723
    iget-object p1, p0, Lcom/amazon/kcp/store/StoreFragment$StoreWebViewClient;->this$0:Lcom/amazon/kcp/store/StoreFragment;

    invoke-virtual {p1}, Lcom/amazon/kcp/store/StoreFragment;->finish()V

    return-void

    :cond_0
    const-string v0, "dppui/pay-select"

    .line 727
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x2000

    if-eqz v0, :cond_1

    .line 728
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreFragment$StoreWebViewClient;->this$0:Lcom/amazon/kcp/store/StoreFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    .line 730
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreFragment$StoreWebViewClient;->this$0:Lcom/amazon/kcp/store/StoreFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 734
    :goto_0
    invoke-direct {p0, p2}, Lcom/amazon/kcp/store/StoreFragment$StoreWebViewClient;->isUrlAllowed(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 735
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 736
    invoke-virtual {p0, p2}, Lcom/amazon/kcp/store/StoreFragment$StoreWebViewClient;->handleDisallowedUrl(Ljava/lang/String;)V

    return-void

    .line 740
    :cond_2
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/store/StoreFragment$StoreWebViewClient$1;

    invoke-direct {v1, p0, p2}, Lcom/amazon/kcp/store/StoreFragment$StoreWebViewClient$1;-><init>(Lcom/amazon/kcp/store/StoreFragment$StoreWebViewClient;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 747
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreFragment$StoreWebViewClient;->this$0:Lcom/amazon/kcp/store/StoreFragment;

    invoke-static {v0}, Lcom/amazon/kcp/store/StoreFragment;->access$1300(Lcom/amazon/kcp/store/StoreFragment;)Lcom/amazon/kcp/store/IStoreErrorStateHelper;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/store/StoreError;->NO_NETWORK_CONNECTION:Lcom/amazon/kcp/store/StoreError;

    sget-object v2, Lcom/amazon/kcp/store/StoreError;->BAD_URL:Lcom/amazon/kcp/store/StoreError;

    sget-object v3, Lcom/amazon/kcp/store/StoreError;->UNKNOWN:Lcom/amazon/kcp/store/StoreError;

    invoke-static {v1, v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kcp/store/IStoreErrorStateHelper;->resetErrorState(Ljava/util/EnumSet;)V

    .line 752
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreFragment$StoreWebViewClient;->this$0:Lcom/amazon/kcp/store/StoreFragment;

    invoke-static {v0, p2}, Lcom/amazon/kcp/store/StoreFragment;->access$902(Lcom/amazon/kcp/store/StoreFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 753
    invoke-super {p0, p1, p2, p3}, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    const/4 p1, 0x0

    .line 754
    iput-boolean p1, p0, Lcom/amazon/kcp/store/StoreFragment$StoreWebViewClient;->isWebviewInRedirect:Z

    .line 755
    invoke-static {}, Lcom/amazon/kcp/store/StoreFragment;->access$200()Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Page started: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 756
    iput-object p2, p0, Lcom/amazon/kcp/store/StoreFragment$StoreWebViewClient;->prevStartedUrl:Ljava/lang/String;

    .line 757
    iget-object p1, p0, Lcom/amazon/kcp/store/StoreFragment$StoreWebViewClient;->this$0:Lcom/amazon/kcp/store/StoreFragment;

    invoke-static {p1}, Lcom/amazon/kcp/store/StoreFragment;->access$1400(Lcom/amazon/kcp/store/StoreFragment;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 888
    iget-object p1, p0, Lcom/amazon/kcp/store/StoreFragment$StoreWebViewClient;->this$0:Lcom/amazon/kcp/store/StoreFragment;

    invoke-virtual {p1}, Lcom/amazon/kcp/store/StoreFragment;->onReceivedError()V

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 2

    .line 815
    const-class v0, Lcom/amazon/kcp/store/StoreSslErrorHandler;

    .line 816
    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/store/StoreSslErrorHandler;

    if-eqz v0, :cond_0

    .line 818
    iget-object v1, p0, Lcom/amazon/kcp/store/StoreFragment$StoreWebViewClient;->sslHandler:Lcom/amazon/kcp/application/WebViewSSLErrorHandler;

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/amazon/kcp/store/StoreSslErrorHandler;->handle(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;Lcom/amazon/kcp/application/WebViewSSLErrorHandler;)V

    :cond_0
    return-void
.end method

.method public setPageListener(Ljava/lang/String;Lcom/amazon/kcp/store/listener/IPageListener;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "default_page"

    .line 564
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreFragment$StoreWebViewClient;->pageListeners:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 9

    .line 569
    invoke-static {}, Lcom/amazon/kcp/store/StoreFragment;->access$200()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Should override url? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 570
    invoke-static {}, Lcom/amazon/kcp/store/StoreFragment;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Time taken for store to load url is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/amazon/kcp/store/StoreFragment$StoreWebViewClient;->this$0:Lcom/amazon/kcp/store/StoreFragment;

    invoke-static {v4}, Lcom/amazon/kcp/store/StoreFragment;->access$500(Lcom/amazon/kcp/store/StoreFragment;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 570
    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreFragment$StoreWebViewClient;->this$0:Lcom/amazon/kcp/store/StoreFragment;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/store/StoreFragment;->access$502(Lcom/amazon/kcp/store/StoreFragment;J)J

    .line 574
    invoke-static {p2}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 579
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    const-string v0, "kindle://"

    .line 587
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 589
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v2

    .line 593
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreFragment$StoreWebViewClient;->prevURL:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 594
    iput-object p2, p0, Lcom/amazon/kcp/store/StoreFragment$StoreWebViewClient;->prevURL:Ljava/lang/String;

    .line 597
    :cond_3
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreFragment$StoreWebViewClient;->this$0:Lcom/amazon/kcp/store/StoreFragment;

    invoke-virtual {v0, p2}, Lcom/amazon/kcp/store/StoreFragment;->handleRedirectWithoutAuthenticationIfNecessary(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    .line 605
    :cond_4
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreFragment$StoreWebViewClient;->this$0:Lcom/amazon/kcp/store/StoreFragment;

    const-string v3, "action"

    invoke-virtual {v0, v3}, Lcom/amazon/kcp/store/StoreFragment;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;->getAction(Ljava/lang/String;)Lcom/amazon/kcp/store/StoreUrlBuilder$Action;

    move-result-object v0

    .line 606
    invoke-static {}, Lcom/amazon/kcp/store/StoreFragment;->access$200()Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "action == Action.FEATURE_DOC: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;->FEATURE_DOC:Lcom/amazon/kcp/store/StoreUrlBuilder$Action;

    const-string/jumbo v6, "true"

    const-string v7, "false"

    if-ne v0, v5, :cond_5

    move-object v5, v6

    goto :goto_0

    :cond_5
    move-object v5, v7

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 607
    invoke-static {}, Lcom/amazon/kcp/store/StoreFragment;->access$200()Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "url.contains(\"/links\")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/links"

    invoke-virtual {p2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    goto :goto_1

    :cond_6
    move-object v6, v7

    :goto_1
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 608
    sget-object v4, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;->FEATURE_DOC:Lcom/amazon/kcp/store/StoreUrlBuilder$Action;

    if-ne v0, v4, :cond_e

    invoke-virtual {p2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 609
    invoke-static {}, Lcom/amazon/kcp/store/StoreFragment;->access$200()Ljava/lang/String;

    .line 610
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreFragment$StoreWebViewClient;->this$0:Lcom/amazon/kcp/store/StoreFragment;

    const-string v4, "pushFallbackType"

    invoke-virtual {v0, v4}, Lcom/amazon/kcp/store/StoreFragment;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 611
    iget-object v4, p0, Lcom/amazon/kcp/store/StoreFragment$StoreWebViewClient;->this$0:Lcom/amazon/kcp/store/StoreFragment;

    const-string v5, "pushFallbackData"

    invoke-virtual {v4, v5}, Lcom/amazon/kcp/store/StoreFragment;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v0, :cond_d

    if-nez v4, :cond_7

    goto/16 :goto_2

    :cond_7
    const-string v5, "browseNode"

    .line 615
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "reftag"

    const/high16 v7, 0x10000000

    if-eqz v5, :cond_a

    .line 616
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/amazon/kcp/store/StoreFragment$StoreWebViewClient;->this$0:Lcom/amazon/kcp/store/StoreFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-class v0, Lcom/amazon/kcp/store/StoreActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "browsenode"

    .line 617
    invoke-virtual {p1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 618
    invoke-virtual {p1, p2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 619
    iget-object p2, p0, Lcom/amazon/kcp/store/StoreFragment$StoreWebViewClient;->this$0:Lcom/amazon/kcp/store/StoreFragment;

    sget-object v0, Lcom/amazon/kcp/notifications/ActionKey;->ACTION_REFTAG:Lcom/amazon/kcp/notifications/ActionKey;

    invoke-virtual {v0}, Lcom/amazon/kcp/notifications/ActionKey;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/amazon/kcp/store/StoreFragment;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 621
    invoke-virtual {p1, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 623
    :cond_8
    invoke-virtual {p1, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 625
    iget-object p2, p0, Lcom/amazon/kcp/store/StoreFragment$StoreWebViewClient;->this$0:Lcom/amazon/kcp/store/StoreFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    if-eqz p2, :cond_9

    .line 627
    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_9
    return v1

    :cond_a
    const-string v3, "storeUrl"

    .line 630
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 631
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreFragment$StoreWebViewClient;->this$0:Lcom/amazon/kcp/store/StoreFragment;

    sget-object v3, Lcom/amazon/kcp/notifications/ActionKey;->ACTION_REFTAG:Lcom/amazon/kcp/notifications/ActionKey;

    invoke-virtual {v3}, Lcom/amazon/kcp/notifications/ActionKey;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amazon/kcp/store/StoreFragment;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 632
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getStoreIntentCreator()Lcom/amazon/kcp/store/IStoreIntentCreator;

    move-result-object v3

    iget-object v5, p0, Lcom/amazon/kcp/store/StoreFragment$StoreWebViewClient;->this$0:Lcom/amazon/kcp/store/StoreFragment;

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-interface {v3, v5, v4}, Lcom/amazon/kcp/store/IStoreIntentCreator;->createLoadUrlIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_c

    if-eqz v0, :cond_b

    .line 636
    invoke-virtual {v3, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 638
    :cond_b
    invoke-virtual {v3, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v0, "storeopen"

    .line 639
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 641
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreFragment$StoreWebViewClient;->this$0:Lcom/amazon/kcp/store/StoreFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 643
    invoke-virtual {v0, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    .line 646
    :cond_c
    invoke-static {}, Lcom/amazon/kcp/store/StoreFragment;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "urlIntent is null in StoreActivity"

    invoke-static {v0, v3}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 614
    :cond_d
    :goto_2
    invoke-static {}, Lcom/amazon/kcp/store/StoreFragment;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Got redirected from TOS with featureDoc, but no fallback provided."

    invoke-static {v0, v3}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    :goto_3
    const-string v0, "action=browsenode"

    .line 654
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 655
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreFragment$StoreWebViewClient;->this$0:Lcom/amazon/kcp/store/StoreFragment;

    invoke-static {v0}, Lcom/amazon/kcp/store/StoreFragment;->access$600(Lcom/amazon/kcp/store/StoreFragment;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/amazon/kcp/store/StoreFragment$StoreWebViewClient;->this$0:Lcom/amazon/kcp/store/StoreFragment;

    invoke-static {v3}, Lcom/amazon/kcp/store/StoreFragment;->access$700(Lcom/amazon/kcp/store/StoreFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/amazon/kcp/RedirectUrlAuthority;->getBrowseNodeUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_f
    move-object v0, p2

    .line 659
    :goto_4
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getWebStoreController()Lcom/amazon/kcp/store/IWebStoreController;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/kcp/store/StoreFragment$StoreWebViewClient;->this$0:Lcom/amazon/kcp/store/StoreFragment;

    iget-object v4, v4, Lcom/amazon/kcp/store/StoreFragment;->webView:Lcom/amazon/kcp/store/StoreWebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Lcom/amazon/kcp/store/IWebStoreController;->shouldOverrideUrlLoading(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 660
    invoke-static {}, Lcom/amazon/kcp/store/StoreFragment;->access$200()Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "URL "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " overridden by web store controller"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 661
    iput-boolean v2, p0, Lcom/amazon/kcp/store/StoreFragment$StoreWebViewClient;->isWebviewInRedirect:Z

    return v2

    :cond_10
    const-string v3, "PopOutOfWebView"

    .line 666
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 669
    invoke-static {}, Lcom/amazon/kcp/store/StoreFragment;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string p2, "StoreActivity got pop out token. Sending user to external browser"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    invoke-static {}, Lcom/amazon/kcp/store/StoreFragment;->access$200()Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Giving external browser URL: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 671
    iget-object p1, p0, Lcom/amazon/kcp/store/StoreFragment$StoreWebViewClient;->this$0:Lcom/amazon/kcp/store/StoreFragment;

    invoke-static {p1}, Lcom/amazon/kcp/store/StoreFragment;->access$800(Lcom/amazon/kcp/store/StoreFragment;)Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/amazon/kcp/application/IKindleApplicationController;->openUrl(Ljava/lang/String;)V

    .line 674
    iget-object p1, p0, Lcom/amazon/kcp/store/StoreFragment$StoreWebViewClient;->this$0:Lcom/amazon/kcp/store/StoreFragment;

    sget-object p2, Lcom/amazon/kcp/store/StoreError;->BAD_URL:Lcom/amazon/kcp/store/StoreError;

    invoke-virtual {p1, p2}, Lcom/amazon/kcp/store/StoreFragment;->finish(Lcom/amazon/kcp/store/StoreError;)V

    goto/16 :goto_5

    .line 675
    :cond_11
    invoke-direct {p0, v0}, Lcom/amazon/kcp/store/StoreFragment$StoreWebViewClient;->isUrlAllowed(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 676
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/store/StoreFragment$StoreWebViewClient;->handleDisallowedUrl(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 677
    :cond_12
    iget-object v3, p0, Lcom/amazon/kcp/store/StoreFragment$StoreWebViewClient;->this$0:Lcom/amazon/kcp/store/StoreFragment;

    iget-object v4, p0, Lcom/amazon/kcp/store/StoreFragment$StoreWebViewClient;->prevURL:Ljava/lang/String;

    invoke-virtual {v3, p1, v0, v4}, Lcom/amazon/kcp/store/StoreFragment;->invokeExternalInterceptors(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    goto/16 :goto_5

    :cond_13
    const-string v3, "http://"

    const-string v4, "https://"

    .line 680
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 682
    invoke-static {}, Lcom/amazon/kcp/store/StoreFragment;->access$200()Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "StoreActivity received url: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 683
    invoke-static {}, Lcom/amazon/kcp/store/StoreFragment;->access$200()Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "StoreActivity loading url "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 685
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    .line 686
    invoke-static {}, Lcom/amazon/kcp/store/StoreFragment;->access$200()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Changed store URL to be secure, giving to webview"

    invoke-static {v4, v5}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    :cond_14
    iget-object v4, p0, Lcom/amazon/kcp/store/StoreFragment$StoreWebViewClient;->this$0:Lcom/amazon/kcp/store/StoreFragment;

    invoke-static {v4, v0}, Lcom/amazon/kcp/store/StoreFragment;->access$902(Lcom/amazon/kcp/store/StoreFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 690
    invoke-static {}, Lcom/amazon/kcp/store/StoreFragment;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Time taken for redirected URL to load is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 691
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v7, p0, Lcom/amazon/kcp/store/StoreFragment$StoreWebViewClient;->this$0:Lcom/amazon/kcp/store/StoreFragment;

    invoke-static {v7}, Lcom/amazon/kcp/store/StoreFragment;->access$500(Lcom/amazon/kcp/store/StoreFragment;)J

    move-result-wide v7

    sub-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 690
    invoke-static {v0, v4}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreFragment$StoreWebViewClient;->this$0:Lcom/amazon/kcp/store/StoreFragment;

    invoke-static {v0}, Lcom/amazon/kcp/store/StoreFragment;->access$1000(Lcom/amazon/kcp/store/StoreFragment;)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_15

    goto :goto_6

    .line 696
    :cond_15
    iget-object p2, p0, Lcom/amazon/kcp/store/StoreFragment$StoreWebViewClient;->this$0:Lcom/amazon/kcp/store/StoreFragment;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v3, v0, v2}, Lcom/amazon/kcp/store/StoreFragment;->loadUrl(Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/Map;Z)V

    :goto_5
    const/4 v1, 0x1

    :goto_6
    if-eqz v1, :cond_16

    .line 701
    iput-boolean v2, p0, Lcom/amazon/kcp/store/StoreFragment$StoreWebViewClient;->isWebviewInRedirect:Z

    :cond_16
    return v1
.end method
