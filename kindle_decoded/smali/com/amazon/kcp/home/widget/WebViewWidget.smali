.class public final Lcom/amazon/kcp/home/widget/WebViewWidget;
.super Lcom/amazon/kindle/home/card/AbstractHomeCard;
.source "WebViewWidget.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/home/widget/WebViewWidget$WebViewWidgetClient;,
        Lcom/amazon/kcp/home/widget/WebViewWidget$WebViewWidgetJavascriptInterface;,
        Lcom/amazon/kcp/home/widget/WebViewWidget$Companion;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final activity:Landroid/app/Activity;

.field private final authenticationManager:Lcom/amazon/kcp/application/IAuthenticationManager;

.field private final card:Lcom/amazon/kindle/home/model/CardData;

.field private cardView:Landroid/view/View;

.field private final context:Landroid/content/Context;

.field private final fm:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

.field private final javascriptInterface:Lcom/amazon/kcp/home/widget/WebViewWidget$WebViewWidgetJavascriptInterface;

.field private final kindleWebViewConfiguration:Lcom/amazon/kindle/webview/android/KindleWebViewConfiguration;

.field private payload:Ljava/lang/String;

.field private final priority:I

.field private final sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private state:Lcom/amazon/kindle/home/card/HomeCardState;

.field private url:Ljava/lang/String;

.field private final viewLayoutId:I

.field private webView:Lcom/amazon/kindle/webview/android/KindleWebView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kcp/home/widget/WebViewWidget$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/home/widget/WebViewWidget$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;Lcom/amazon/kcp/application/IAuthenticationManager;Landroid/app/Activity;Lcom/amazon/kindle/home/model/CardData;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sdk"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fm"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "authenticationManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activity"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "card"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "url"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-direct {p0}, Lcom/amazon/kindle/home/card/AbstractHomeCard;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/home/widget/WebViewWidget;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/amazon/kcp/home/widget/WebViewWidget;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    iput-object p3, p0, Lcom/amazon/kcp/home/widget/WebViewWidget;->fm:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    iput-object p4, p0, Lcom/amazon/kcp/home/widget/WebViewWidget;->authenticationManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    iput-object p5, p0, Lcom/amazon/kcp/home/widget/WebViewWidget;->activity:Landroid/app/Activity;

    iput-object p6, p0, Lcom/amazon/kcp/home/widget/WebViewWidget;->card:Lcom/amazon/kindle/home/model/CardData;

    iput-object p7, p0, Lcom/amazon/kcp/home/widget/WebViewWidget;->url:Ljava/lang/String;

    iput-object p8, p0, Lcom/amazon/kcp/home/widget/WebViewWidget;->payload:Ljava/lang/String;

    .line 50
    sget p1, Lcom/amazon/kindle/librarymodule/R$layout;->web_view_card_view:I

    iput p1, p0, Lcom/amazon/kcp/home/widget/WebViewWidget;->viewLayoutId:I

    .line 51
    invoke-virtual {p6}, Lcom/amazon/kindle/home/model/CardData;->getIndex()I

    move-result p1

    iput p1, p0, Lcom/amazon/kcp/home/widget/WebViewWidget;->priority:I

    .line 56
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "com.amazon.kcp.home.widget.WebViewWidget ["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p2, 0x5d

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/home/widget/WebViewWidget;->TAG:Ljava/lang/String;

    .line 57
    new-instance p1, Lcom/amazon/kcp/home/widget/WebViewWidget$WebViewWidgetJavascriptInterface;

    iget-object p2, p0, Lcom/amazon/kcp/home/widget/WebViewWidget;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    iget-object p3, p0, Lcom/amazon/kcp/home/widget/WebViewWidget;->fm:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    invoke-direct {p1, p2, p3, p0}, Lcom/amazon/kcp/home/widget/WebViewWidget$WebViewWidgetJavascriptInterface;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;Lcom/amazon/kcp/home/widget/WebViewWidget;)V

    iput-object p1, p0, Lcom/amazon/kcp/home/widget/WebViewWidget;->javascriptInterface:Lcom/amazon/kcp/home/widget/WebViewWidget$WebViewWidgetJavascriptInterface;

    .line 58
    new-instance p1, Lcom/amazon/kindle/webview/android/KindleWebViewConfiguration;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "HomeWebViewWidget."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/amazon/kcp/home/widget/WebViewWidget;->card:Lcom/amazon/kindle/home/model/CardData;

    invoke-virtual {p3}, Lcom/amazon/kindle/home/model/CardData;->getReftag()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/amazon/kindle/webview/android/KindleWebViewConfiguration;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/kcp/home/widget/WebViewWidget;->kindleWebViewConfiguration:Lcom/amazon/kindle/webview/android/KindleWebViewConfiguration;

    .line 61
    sget-object p1, Lcom/amazon/kindle/home/card/HomeCardState;->LOADING:Lcom/amazon/kindle/home/card/HomeCardState;

    iput-object p1, p0, Lcom/amazon/kcp/home/widget/WebViewWidget;->state:Lcom/amazon/kindle/home/card/HomeCardState;

    .line 81
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/amazon/kcp/home/widget/WebViewWidget$1;

    invoke-direct {p2, p0}, Lcom/amazon/kcp/home/widget/WebViewWidget$1;-><init>(Lcom/amazon/kcp/home/widget/WebViewWidget;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 91
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$getSdk$p(Lcom/amazon/kcp/home/widget/WebViewWidget;)Lcom/amazon/kindle/krx/IKindleReaderSDK;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/amazon/kcp/home/widget/WebViewWidget;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-object p0
.end method

.method public static final synthetic access$getTAG$p(Lcom/amazon/kcp/home/widget/WebViewWidget;)Ljava/lang/String;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/amazon/kcp/home/widget/WebViewWidget;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getWebView$p(Lcom/amazon/kcp/home/widget/WebViewWidget;)Lcom/amazon/kindle/webview/android/KindleWebView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/amazon/kcp/home/widget/WebViewWidget;->webView:Lcom/amazon/kindle/webview/android/KindleWebView;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string/jumbo p0, "webView"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$initWebView(Lcom/amazon/kcp/home/widget/WebViewWidget;)Lcom/amazon/kindle/webview/android/KindleWebView;
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/amazon/kcp/home/widget/WebViewWidget;->initWebView()Lcom/amazon/kindle/webview/android/KindleWebView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setState$p(Lcom/amazon/kcp/home/widget/WebViewWidget;Lcom/amazon/kindle/home/card/HomeCardState;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/amazon/kcp/home/widget/WebViewWidget;->setState(Lcom/amazon/kindle/home/card/HomeCardState;)V

    return-void
.end method

.method public static final synthetic access$setWebView$p(Lcom/amazon/kcp/home/widget/WebViewWidget;Lcom/amazon/kindle/webview/android/KindleWebView;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/amazon/kcp/home/widget/WebViewWidget;->webView:Lcom/amazon/kindle/webview/android/KindleWebView;

    return-void
.end method

.method private final initWebView()Lcom/amazon/kindle/webview/android/KindleWebView;
    .locals 11
    .annotation runtime Lcom/amazon/kindle/krx/strictmode/SuppressStrictMode;
        violations = {
            .enum Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->DiskReadViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;,
            .enum Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->LeakedClosableViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;
        }
    .end annotation

    .line 147
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 149
    new-instance v10, Lcom/amazon/kindle/webview/android/KindleWebView;

    iget-object v3, p0, Lcom/amazon/kcp/home/widget/WebViewWidget;->kindleWebViewConfiguration:Lcom/amazon/kindle/webview/android/KindleWebViewConfiguration;

    iget-object v4, p0, Lcom/amazon/kcp/home/widget/WebViewWidget;->activity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/amazon/kcp/home/widget/WebViewWidget;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    iget-object v6, p0, Lcom/amazon/kcp/home/widget/WebViewWidget;->url:Ljava/lang/String;

    iget-object v7, p0, Lcom/amazon/kcp/home/widget/WebViewWidget;->TAG:Ljava/lang/String;

    iget-object v8, p0, Lcom/amazon/kcp/home/widget/WebViewWidget;->payload:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/kcp/home/widget/WebViewWidget;->card:Lcom/amazon/kindle/home/model/CardData;

    invoke-virtual {v2}, Lcom/amazon/kindle/home/model/CardData;->getReftag()Ljava/lang/String;

    move-result-object v9

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lcom/amazon/kindle/webview/android/KindleWebView;-><init>(Lcom/amazon/kindle/webview/android/KindleWebViewConfiguration;Landroid/app/Activity;Lcom/amazon/kindle/krx/IKindleReaderSDK;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "WEBVIEW_1"

    .line 150
    invoke-virtual {v10, v2}, Landroid/webkit/WebView;->setTag(Ljava/lang/Object;)V

    .line 153
    iget-object v2, p0, Lcom/amazon/kcp/home/widget/WebViewWidget;->javascriptInterface:Lcom/amazon/kcp/home/widget/WebViewWidget$WebViewWidgetJavascriptInterface;

    const-string v3, "WebViewWidget"

    invoke-virtual {v10, v2, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    new-instance v8, Lcom/amazon/kcp/home/widget/WebViewWidget$WebViewWidgetClient;

    invoke-virtual {v10}, Lcom/amazon/kindle/webview/android/KindleWebView;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v5

    iget-object v6, p0, Lcom/amazon/kcp/home/widget/WebViewWidget;->activity:Landroid/app/Activity;

    iget-object v7, p0, Lcom/amazon/kcp/home/widget/WebViewWidget;->kindleWebViewConfiguration:Lcom/amazon/kindle/webview/android/KindleWebViewConfiguration;

    move-object v2, v8

    move-object v3, v10

    move-object v4, p0

    invoke-direct/range {v2 .. v7}, Lcom/amazon/kcp/home/widget/WebViewWidget$WebViewWidgetClient;-><init>(Lcom/amazon/kindle/webview/android/KindleWebView;Lcom/amazon/kcp/home/widget/WebViewWidget;Lcom/amazon/kindle/krx/IKindleReaderSDK;Landroid/app/Activity;Lcom/amazon/kindle/webview/android/KindleWebViewConfiguration;)V

    invoke-virtual {v10, v8}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 157
    sget-object v2, Lcom/amazon/kindle/home/card/HomeCardState;->LOADING:Lcom/amazon/kindle/home/card/HomeCardState;

    invoke-direct {p0, v2}, Lcom/amazon/kcp/home/widget/WebViewWidget;->setState(Lcom/amazon/kindle/home/card/HomeCardState;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 158
    invoke-static {v10, v2, v3, v4}, Lcom/amazon/kindle/webview/android/KindleWebView;->loadWebPage$default(Lcom/amazon/kindle/webview/android/KindleWebView;ZILjava/lang/Object;)V

    .line 160
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Time to initialize WebView for WebViewWidget: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-object v10
.end method

.method private final setState(Lcom/amazon/kindle/home/card/HomeCardState;)V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/WebViewWidget;->state:Lcom/amazon/kindle/home/card/HomeCardState;

    if-ne v0, p1, :cond_0

    return-void

    .line 67
    :cond_0
    iput-object p1, p0, Lcom/amazon/kcp/home/widget/WebViewWidget;->state:Lcom/amazon/kindle/home/card/HomeCardState;

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Web view card status updated to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 69
    sget-object v1, Lcom/amazon/kindle/home/card/HomeCardState;->FAILED:Lcom/amazon/kindle/home/card/HomeCardState;

    if-ne p1, v1, :cond_3

    .line 70
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/WebViewWidget;->webView:Lcom/amazon/kindle/webview/android/KindleWebView;

    if-eqz p1, :cond_2

    if-eqz p1, :cond_1

    .line 71
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    goto :goto_0

    :cond_1
    const-string/jumbo p1, "webView"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    .line 73
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/WebViewWidget;->TAG:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 75
    :cond_3
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/WebViewWidget;->TAG:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :goto_1
    sget-object p1, Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory;->Companion:Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory$Companion;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory$Companion;->notifyWidgetsChange(Z)V

    return-void
.end method

.method private final triggerResize()V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/WebViewWidget;->cardView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    return-void

    :cond_0
    const-string v0, "cardView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Lcom/amazon/kindle/home/action/HomeActionManager;)V
    .locals 4

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "am"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    iget-object p2, p0, Lcom/amazon/kcp/home/widget/WebViewWidget;->cardView:Landroid/view/View;

    const-string/jumbo v0, "webView"

    const-string v1, "cardView"

    const/4 v2, 0x0

    if-eqz p2, :cond_4

    if-eqz p2, :cond_3

    .line 107
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 113
    :cond_0
    iget-object p2, p0, Lcom/amazon/kcp/home/widget/WebViewWidget;->cardView:Landroid/view/View;

    if-eqz p2, :cond_2

    sget v3, Lcom/amazon/kindle/librarymodule/R$id;->web_card:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/amazon/kcp/home/ui/HomeCardView;

    iget-object v3, p0, Lcom/amazon/kcp/home/widget/WebViewWidget;->webView:Lcom/amazon/kindle/webview/android/KindleWebView;

    if-eqz v3, :cond_1

    invoke-virtual {p2, v3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 107
    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 117
    :cond_4
    :goto_0
    iput-object p1, p0, Lcom/amazon/kcp/home/widget/WebViewWidget;->cardView:Landroid/view/View;

    if-eqz p1, :cond_b

    const-string p2, "WEBVIEW_1"

    .line 120
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    .line 121
    iget-object p2, p0, Lcom/amazon/kcp/home/widget/WebViewWidget;->webView:Lcom/amazon/kindle/webview/android/KindleWebView;

    if-eqz p2, :cond_a

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_9

    if-eqz p1, :cond_6

    .line 124
    iget-object p2, p0, Lcom/amazon/kcp/home/widget/WebViewWidget;->cardView:Landroid/view/View;

    if-eqz p2, :cond_5

    sget v3, Lcom/amazon/kindle/librarymodule/R$id;->web_card:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/amazon/kcp/home/ui/HomeCardView;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    goto :goto_1

    :cond_5
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 129
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/WebViewWidget;->cardView:Landroid/view/View;

    if-eqz p1, :cond_8

    sget p2, Lcom/amazon/kindle/librarymodule/R$id;->web_card:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/home/ui/HomeCardView;

    iget-object p2, p0, Lcom/amazon/kcp/home/widget/WebViewWidget;->webView:Lcom/amazon/kindle/webview/android/KindleWebView;

    if-eqz p2, :cond_7

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 132
    invoke-direct {p0}, Lcom/amazon/kcp/home/widget/WebViewWidget;->triggerResize()V

    goto :goto_2

    .line 129
    :cond_7
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_8
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_9
    :goto_2
    return-void

    .line 121
    :cond_a
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 120
    :cond_b
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method public final getCard()Lcom/amazon/kindle/home/model/CardData;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/WebViewWidget;->card:Lcom/amazon/kindle/home/model/CardData;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/amazon/kcp/home/widget/WebViewWidget;->priority:I

    return v0
.end method

.method public getState()Lcom/amazon/kindle/home/card/HomeCardState;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/WebViewWidget;->state:Lcom/amazon/kindle/home/card/HomeCardState;

    return-object v0
.end method

.method public getViewLayoutId()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/amazon/kcp/home/widget/WebViewWidget;->viewLayoutId:I

    return v0
.end method

.method public reportImpressionData(Z)V
    .locals 1

    .line 137
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/WebViewWidget;->fm:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    iget-object v0, p0, Lcom/amazon/kcp/home/widget/WebViewWidget;->card:Lcom/amazon/kindle/home/model/CardData;

    invoke-static {p1, v0}, Lcom/amazon/kcp/home/metrics/HomeFastMetricsKt;->recordImpression(Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;Lcom/amazon/kindle/home/model/CardData;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/kcp/home/widget/WebViewWidget;->card:Lcom/amazon/kindle/home/model/CardData;

    invoke-virtual {v1}, Lcom/amazon/kindle/home/model/CardData;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kcp/home/widget/WebViewWidget;->getPriority()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
