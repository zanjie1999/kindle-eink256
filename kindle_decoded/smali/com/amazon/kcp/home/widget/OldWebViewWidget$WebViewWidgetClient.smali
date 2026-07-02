.class final Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetClient;
.super Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewClient;
.source "OldWebViewWidget.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/home/widget/OldWebViewWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WebViewWidgetClient"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private final sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private final webViewWidget:Lcom/amazon/kcp/home/widget/OldWebViewWidget;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amazon/kcp/home/widget/OldWebViewWidget;Lcom/amazon/kindle/krx/IKindleReaderSDK;Landroid/app/Activity;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "webViewWidget"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activity"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 336
    invoke-direct {p0, p4}, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewClient;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetClient;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetClient;->webViewWidget:Lcom/amazon/kcp/home/widget/OldWebViewWidget;

    iput-object p3, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetClient;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 337
    invoke-static {p2}, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->access$getTAG$p(Lcom/amazon/kcp/home/widget/OldWebViewWidget;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetClient;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getSdk$p(Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetClient;)Lcom/amazon/kindle/krx/IKindleReaderSDK;
    .locals 0

    .line 331
    iget-object p0, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetClient;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-object p0
.end method

.method public static final synthetic access$getTAG$p(Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetClient;)Ljava/lang/String;
    .locals 0

    .line 331
    iget-object p0, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetClient;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getWebViewWidget$p(Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetClient;)Lcom/amazon/kcp/home/widget/OldWebViewWidget;
    .locals 0

    .line 331
    iget-object p0, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetClient;->webViewWidget:Lcom/amazon/kcp/home/widget/OldWebViewWidget;

    return-object p0
.end method

.method private final reportFatalError()V
    .locals 4

    .line 420
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetClient;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-eqz v0, :cond_1

    .line 421
    sget-object v1, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->Companion:Lcom/amazon/kcp/home/widget/OldWebViewWidget$Companion;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "sdk.context"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/amazon/kcp/home/widget/OldWebViewWidget$Companion;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetClient;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetClient;->TAG:Ljava/lang/String;

    sget-object v2, Lcom/amazon/kindle/krx/metrics/MetricType;->ERROR:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v3, "WebViewFatalLoadingError"

    invoke-interface {v0, v1, v3, v2}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    goto :goto_0

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetClient;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetClient;->TAG:Ljava/lang/String;

    sget-object v2, Lcom/amazon/kindle/krx/metrics/MetricType;->ERROR:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v3, "WebViewFatalLoadingErrorOffline"

    invoke-interface {v0, v1, v3, v2}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final reportHttpError()V
    .locals 4

    .line 430
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetClient;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-eqz v0, :cond_1

    .line 431
    sget-object v1, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->Companion:Lcom/amazon/kcp/home/widget/OldWebViewWidget$Companion;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "sdk.context"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/amazon/kcp/home/widget/OldWebViewWidget$Companion;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetClient;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetClient;->TAG:Ljava/lang/String;

    sget-object v2, Lcom/amazon/kindle/krx/metrics/MetricType;->WARN:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v3, "WebViewLoadUrlHttpError"

    invoke-interface {v0, v1, v3, v2}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    goto :goto_0

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetClient;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetClient;->TAG:Ljava/lang/String;

    sget-object v2, Lcom/amazon/kindle/krx/metrics/MetricType;->WARN:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v3, "WebViewLoadUrlHttpErrorOffline"

    invoke-interface {v0, v1, v3, v2}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final reportResourceLoadError()V
    .locals 4

    .line 440
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetClient;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-eqz v0, :cond_1

    .line 441
    sget-object v1, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->Companion:Lcom/amazon/kcp/home/widget/OldWebViewWidget$Companion;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "sdk.context"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/amazon/kcp/home/widget/OldWebViewWidget$Companion;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetClient;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetClient;->TAG:Ljava/lang/String;

    sget-object v2, Lcom/amazon/kindle/krx/metrics/MetricType;->WARN:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v3, "WebViewLoadUrlError"

    invoke-interface {v0, v1, v3, v2}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    goto :goto_0

    .line 444
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetClient;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetClient;->TAG:Ljava/lang/String;

    sget-object v2, Lcom/amazon/kindle/krx/metrics/MetricType;->WARN:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v3, "WebViewLoadUrlErrorOffline"

    invoke-interface {v0, v1, v3, v2}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 8

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 408
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 410
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetClient;->webViewWidget:Lcom/amazon/kcp/home/widget/OldWebViewWidget;

    invoke-static {p1}, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->access$getState$p(Lcom/amazon/kcp/home/widget/OldWebViewWidget;)Lcom/amazon/kindle/home/card/HomeCardState;

    move-result-object p1

    sget-object p2, Lcom/amazon/kindle/home/card/HomeCardState;->FAILED:Lcom/amazon/kindle/home/card/HomeCardState;

    if-eq p1, p2, :cond_2

    .line 411
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iget-object v0, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetClient;->webViewWidget:Lcom/amazon/kcp/home/widget/OldWebViewWidget;

    invoke-static {v0}, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->access$getLoadStartTimestamp$p(Lcom/amazon/kcp/home/widget/OldWebViewWidget;)J

    move-result-wide v0

    sub-long/2addr p1, v0

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Finished rendering web page in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 413
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetClient;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetClient;->TAG:Ljava/lang/String;

    sget-object v5, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v4, "WebViewCardLoadTimer"

    move-wide v6, p1

    invoke-interface/range {v2 .. v7}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportTimerMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;J)V

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetClient;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetClient;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WebViewCardLoadTimer."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetClient;->webViewWidget:Lcom/amazon/kcp/home/widget/OldWebViewWidget;

    invoke-virtual {v1}, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->getCard()Lcom/amazon/kindle/home/model/CardData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kindle/home/model/CardData;->getReftag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetClient;->webViewWidget:Lcom/amazon/kcp/home/widget/OldWebViewWidget;

    invoke-static {v1}, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->access$getMarketplace$p(Lcom/amazon/kcp/home/widget/OldWebViewWidget;)Lcom/amazon/kcp/application/Marketplace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/application/Marketplace;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    move-wide v6, p1

    invoke-interface/range {v2 .. v7}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportTimerMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;J)V

    .line 415
    :cond_1
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetClient;->webViewWidget:Lcom/amazon/kcp/home/widget/OldWebViewWidget;

    sget-object p2, Lcom/amazon/kindle/home/card/HomeCardState;->READY:Lcom/amazon/kindle/home/card/HomeCardState;

    invoke-static {p1, p2}, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->access$setState$p(Lcom/amazon/kcp/home/widget/OldWebViewWidget;Lcom/amazon/kindle/home/card/HomeCardState;)V

    :cond_2
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 10

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 341
    invoke-super {p0, p1, p2, p3}, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 343
    iget-object p3, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetClient;->webViewWidget:Lcom/amazon/kcp/home/widget/OldWebViewWidget;

    iget-object v0, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetClient;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "context.resources"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {p3, v0}, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->access$setPreviousFontScale$p(Lcom/amazon/kcp/home/widget/OldWebViewWidget;F)V

    .line 344
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Recorded current fontScale of "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetClient;->webViewWidget:Lcom/amazon/kcp/home/widget/OldWebViewWidget;

    invoke-static {v0}, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->access$getPreviousFontScale$p(Lcom/amazon/kcp/home/widget/OldWebViewWidget;)F

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " (textZoom: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const-string/jumbo v0, "view.settings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/webkit/WebSettings;->getTextZoom()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 346
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetClient;->webViewWidget:Lcom/amazon/kcp/home/widget/OldWebViewWidget;

    invoke-static {p1}, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->access$getState$p(Lcom/amazon/kcp/home/widget/OldWebViewWidget;)Lcom/amazon/kindle/home/card/HomeCardState;

    move-result-object p1

    sget-object p3, Lcom/amazon/kindle/home/card/HomeCardState;->FAILED:Lcom/amazon/kindle/home/card/HomeCardState;

    if-ne p1, p3, :cond_0

    return-void

    .line 351
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Started rendering web page with url: \'"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\', payload?: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetClient;->webViewWidget:Lcom/amazon/kcp/home/widget/OldWebViewWidget;

    invoke-static {p3}, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->access$getShouldLoadPayload$p(Lcom/amazon/kcp/home/widget/OldWebViewWidget;)Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 352
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetClient;->webViewWidget:Lcom/amazon/kcp/home/widget/OldWebViewWidget;

    invoke-static {p1}, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->access$getLoadStartTimestamp$p(Lcom/amazon/kcp/home/widget/OldWebViewWidget;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 354
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Finished loading base URL in "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p3, "ms"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 356
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetClient;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v5, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetClient;->TAG:Ljava/lang/String;

    sget-object v7, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v6, "WebViewCardRequestTimer"

    move-wide v8, v0

    invoke-interface/range {v4 .. v9}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportTimerMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;J)V

    .line 358
    :cond_1
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetClient;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v5, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetClient;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "WebViewCardRequestTimer."

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetClient;->webViewWidget:Lcom/amazon/kcp/home/widget/OldWebViewWidget;

    invoke-virtual {p3}, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->getCard()Lcom/amazon/kindle/home/model/CardData;

    move-result-object p3

    invoke-virtual {p3}, Lcom/amazon/kindle/home/model/CardData;->getReftag()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p3, 0x2e

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetClient;->webViewWidget:Lcom/amazon/kcp/home/widget/OldWebViewWidget;

    invoke-static {p3}, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->access$getMarketplace$p(Lcom/amazon/kcp/home/widget/OldWebViewWidget;)Lcom/amazon/kcp/application/Marketplace;

    move-result-object p3

    invoke-virtual {p3}, Lcom/amazon/kcp/application/Marketplace;->getCountryCode()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    move-wide v8, v0

    invoke-interface/range {v4 .. v9}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportTimerMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;J)V

    .line 360
    :cond_2
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p1, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p3, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetClient$onPageStarted$1;

    invoke-direct {p3, p0, p2}, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetClient$onPageStarted$1;-><init>(Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetClient;Ljava/lang/String;)V

    const-wide/16 v0, 0x4e20

    invoke-virtual {p1, p3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 371
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 373
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetClient;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed loading URL: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "\'. Error code: \'"

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\', description: \'"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x27

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    invoke-direct {p0}, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetClient;->reportFatalError()V

    .line 375
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetClient;->webViewWidget:Lcom/amazon/kcp/home/widget/OldWebViewWidget;

    sget-object p2, Lcom/amazon/kindle/home/card/HomeCardState;->FAILED:Lcom/amazon/kindle/home/card/HomeCardState;

    invoke-static {p1, p2}, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->access$setState$p(Lcom/amazon/kcp/home/widget/OldWebViewWidget;Lcom/amazon/kindle/home/card/HomeCardState;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 5

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "request"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 380
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 382
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result p1

    const/16 v0, 0x27

    const-string v1, "\', message: \'"

    const-string v2, "\'. Failure code: \'"

    if-eqz p1, :cond_0

    .line 383
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetClient;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed loading main web page \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    invoke-direct {p0}, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetClient;->reportFatalError()V

    .line 385
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetClient;->webViewWidget:Lcom/amazon/kcp/home/widget/OldWebViewWidget;

    sget-object p2, Lcom/amazon/kindle/home/card/HomeCardState;->FAILED:Lcom/amazon/kindle/home/card/HomeCardState;

    invoke-static {p1, p2}, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->access$setState$p(Lcom/amazon/kcp/home/widget/OldWebViewWidget;Lcom/amazon/kindle/home/card/HomeCardState;)V

    goto :goto_0

    .line 387
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetClient;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed loading web resource \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    invoke-direct {p0}, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetClient;->reportResourceLoadError()V

    :goto_0
    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 3

    .line 394
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    .line 396
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetClient;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HTTP error while loading web resource \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\'. Status code: \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\', Reason: \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getReasonPhrase()Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p3, 0x27

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_3

    .line 398
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_3

    .line 399
    invoke-direct {p0}, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetClient;->reportFatalError()V

    .line 400
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetClient;->webViewWidget:Lcom/amazon/kcp/home/widget/OldWebViewWidget;

    sget-object p2, Lcom/amazon/kindle/home/card/HomeCardState;->FAILED:Lcom/amazon/kindle/home/card/HomeCardState;

    invoke-static {p1, p2}, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->access$setState$p(Lcom/amazon/kcp/home/widget/OldWebViewWidget;Lcom/amazon/kindle/home/card/HomeCardState;)V

    goto :goto_2

    .line 402
    :cond_3
    invoke-direct {p0}, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetClient;->reportHttpError()V

    :goto_2
    return-void
.end method
