.class final Lcom/amazon/kcp/home/widget/WebViewWidget$WebViewWidgetJavascriptInterface;
.super Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface;
.source "WebViewWidget.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/home/widget/WebViewWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WebViewWidgetJavascriptInterface"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final fm:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

.field private final sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private final webViewWidget:Lcom/amazon/kcp/home/widget/WebViewWidget;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;Lcom/amazon/kcp/home/widget/WebViewWidget;)V
    .locals 2

    const-string/jumbo v0, "sdk"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fm"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "webViewWidget"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    new-instance v0, Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource$HOME;

    const-string v1, "RubyHomeFragment"

    invoke-direct {v0, v1}, Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource$HOME;-><init>(Ljava/lang/String;)V

    const-string v1, "com.amazon.kcp.home.widget.WebViewWidget"

    invoke-direct {p0, p1, v0, v1}, Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/kcp/home/widget/WebViewWidget$WebViewWidgetJavascriptInterface;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    iput-object p2, p0, Lcom/amazon/kcp/home/widget/WebViewWidget$WebViewWidgetJavascriptInterface;->fm:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    iput-object p3, p0, Lcom/amazon/kcp/home/widget/WebViewWidget$WebViewWidgetJavascriptInterface;->webViewWidget:Lcom/amazon/kcp/home/widget/WebViewWidget;

    const-string p1, "com.amazon.kcp.home.widget.WebViewWidget.WebViewWidgetJavascriptInterface"

    .line 198
    iput-object p1, p0, Lcom/amazon/kcp/home/widget/WebViewWidget$WebViewWidgetJavascriptInterface;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final openWebUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p4, :cond_0

    .line 209
    sget-object p4, Lcom/amazon/kcp/home/util/HomeContext;->INSTANCE:Lcom/amazon/kcp/home/util/HomeContext;

    invoke-virtual {p4}, Lcom/amazon/kcp/home/util/HomeContext;->getScreenletContext()Lcom/amazon/kindle/krx/ui/ScreenletContext;

    move-result-object p4

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    .line 210
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/amazon/kindle/webview/android/KindleWebViewJavascriptInterface;->openWebUrlInContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/ui/ScreenletContext;)V

    return-void
.end method

.method public reportActionMetric(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "actionType"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x5

    new-array v2, v2, [Lkotlin/Pair;

    .line 222
    iget-object v3, p0, Lcom/amazon/kcp/home/widget/WebViewWidget$WebViewWidgetJavascriptInterface;->webViewWidget:Lcom/amazon/kcp/home/widget/WebViewWidget;

    invoke-virtual {v3}, Lcom/amazon/kcp/home/widget/WebViewWidget;->getCard()Lcom/amazon/kindle/home/model/CardData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/kindle/home/model/CardData;->getReftag()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "refTag"

    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 223
    iget-object v3, p0, Lcom/amazon/kcp/home/widget/WebViewWidget$WebViewWidgetJavascriptInterface;->webViewWidget:Lcom/amazon/kcp/home/widget/WebViewWidget;

    invoke-virtual {v3}, Lcom/amazon/kcp/home/widget/WebViewWidget;->getCard()Lcom/amazon/kindle/home/model/CardData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/kindle/home/model/CardData;->getIndex()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "widgetPosition"

    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 224
    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v3, 0x2

    aput-object v0, v2, v3

    .line 225
    invoke-static {v1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, v2, v1

    .line 226
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/WebViewWidget$WebViewWidgetJavascriptInterface;->webViewWidget:Lcom/amazon/kcp/home/widget/WebViewWidget;

    invoke-static {v0}, Lcom/amazon/kcp/home/widget/WebViewWidget;->access$getWebView$p(Lcom/amazon/kcp/home/widget/WebViewWidget;)Lcom/amazon/kindle/webview/android/KindleWebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "actionSource"

    invoke-static {v1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v1, 0x4

    aput-object v0, v2, v1

    .line 221
    invoke-static {v2}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    .line 229
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reporting Sidekick click action metric with metadata: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 230
    iget-object v1, p0, Lcom/amazon/kcp/home/widget/WebViewWidget$WebViewWidgetJavascriptInterface;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v1

    const-string v2, "HomeSKWidget"

    const-string v3, "Click"

    invoke-interface {v1, v2, v3, v0}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 232
    new-instance v6, Lcom/amazon/kindle/home/model/HomeAction;

    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-direct {v6, p2, p1, v0}, Lcom/amazon/kindle/home/model/HomeAction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 233
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/WebViewWidget$WebViewWidgetJavascriptInterface;->webViewWidget:Lcom/amazon/kcp/home/widget/WebViewWidget;

    invoke-static {p1}, Lcom/amazon/kcp/home/widget/WebViewWidget;->access$getWebView$p(Lcom/amazon/kcp/home/widget/WebViewWidget;)Lcom/amazon/kindle/webview/android/KindleWebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getTag()Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Ljava/lang/String;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    move-object v7, p1

    check-cast v7, Ljava/lang/String;

    .line 234
    iget-object v4, p0, Lcom/amazon/kcp/home/widget/WebViewWidget$WebViewWidgetJavascriptInterface;->fm:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    iget-object p1, p0, Lcom/amazon/kcp/home/widget/WebViewWidget$WebViewWidgetJavascriptInterface;->webViewWidget:Lcom/amazon/kcp/home/widget/WebViewWidget;

    invoke-virtual {p1}, Lcom/amazon/kcp/home/widget/WebViewWidget;->getCard()Lcom/amazon/kindle/home/model/CardData;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x38

    const/4 v12, 0x0

    invoke-static/range {v4 .. v12}, Lcom/amazon/kcp/home/metrics/HomeFastMetricsKt;->recordAction$default(Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;Lcom/amazon/kindle/home/model/CardData;Lcom/amazon/kindle/home/model/HomeAction;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)V

    return-void
.end method
