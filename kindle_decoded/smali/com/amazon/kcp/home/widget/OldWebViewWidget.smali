.class public final Lcom/amazon/kcp/home/widget/OldWebViewWidget;
.super Lcom/amazon/kindle/home/card/AbstractHomeCard;
.source "OldWebViewWidget.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetClient;,
        Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface;,
        Lcom/amazon/kcp/home/widget/OldWebViewWidget$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOldWebViewWidget.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OldWebViewWidget.kt\ncom/amazon/kcp/home/widget/OldWebViewWidget\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,683:1\n1#2:684\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/amazon/kcp/home/widget/OldWebViewWidget$Companion;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final activity:Landroid/app/Activity;

.field private final authenticationManager:Lcom/amazon/kcp/application/IAuthenticationManager;

.field private final card:Lcom/amazon/kindle/home/model/CardData;

.field private cardView:Landroid/view/View;

.field private final context:Landroid/content/Context;

.field private final fm:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

.field private final javascriptInterface:Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface;

.field private loadStartTimestamp:J

.field private final marketplace:Lcom/amazon/kcp/application/Marketplace;

.field private payload:Ljava/lang/String;

.field private previousFontScale:F

.field private final priority:I

.field private final sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private shouldLoadPayload:Z

.field private state:Lcom/amazon/kindle/home/card/HomeCardState;

.field private final storePathProvider:Lcom/amazon/kcp/store/StorePathProvider;

.field private url:Ljava/lang/String;

.field private final viewLayoutId:I

.field private webView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/home/widget/OldWebViewWidget$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->Companion:Lcom/amazon/kcp/home/widget/OldWebViewWidget$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;Lcom/amazon/kcp/application/IAuthenticationManager;Lcom/amazon/kcp/store/StorePathProvider;Landroid/app/Activity;Lcom/amazon/kindle/home/model/CardData;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fm"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "authenticationManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "storePathProvider"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activity"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "card"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "url"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-direct {p0}, Lcom/amazon/kindle/home/card/AbstractHomeCard;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    iput-object p3, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->fm:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    iput-object p4, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->authenticationManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    iput-object p5, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->storePathProvider:Lcom/amazon/kcp/store/StorePathProvider;

    iput-object p6, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->activity:Landroid/app/Activity;

    iput-object p7, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->card:Lcom/amazon/kindle/home/model/CardData;

    iput-object p8, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->url:Ljava/lang/String;

    iput-object p9, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->payload:Ljava/lang/String;

    .line 74
    sget p1, Lcom/amazon/kindle/librarymodule/R$layout;->web_view_card_view:I

    iput p1, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->viewLayoutId:I

    .line 75
    invoke-virtual {p7}, Lcom/amazon/kindle/home/model/CardData;->getIndex()I

    move-result p1

    iput p1, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->priority:I

    .line 80
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "com.amazon.kcp.home.widget.OldWebViewWidget ["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p2, 0x5d

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->TAG:Ljava/lang/String;

    .line 81
    new-instance p1, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface;

    iget-object p2, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->context:Landroid/content/Context;

    iget-object p3, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    iget-object p4, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->fm:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    invoke-direct {p1, p2, p3, p4, p0}, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface;-><init>(Landroid/content/Context;Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;Lcom/amazon/kcp/home/widget/OldWebViewWidget;)V

    iput-object p1, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->javascriptInterface:Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface;

    .line 83
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->loadStartTimestamp:J

    .line 84
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->authenticationManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    .line 85
    sget-object p2, Lcom/amazon/kindle/services/authentication/TokenKey;->PFM:Lcom/amazon/kindle/services/authentication/TokenKey;

    invoke-interface {p1, p2}, Lcom/amazon/kcp/application/IAuthenticationManager;->fetchToken(Lcom/amazon/kindle/services/authentication/TokenKey;)Ljava/lang/String;

    move-result-object p1

    .line 84
    invoke-static {p1}, Lcom/amazon/kcp/application/Marketplace;->getInstance(Ljava/lang/String;)Lcom/amazon/kcp/application/Marketplace;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 85
    :cond_0
    sget-object p1, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    :goto_0
    iput-object p1, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->marketplace:Lcom/amazon/kcp/application/Marketplace;

    .line 87
    sget-object p1, Lcom/amazon/kindle/home/card/HomeCardState;->LOADING:Lcom/amazon/kindle/home/card/HomeCardState;

    iput-object p1, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->state:Lcom/amazon/kindle/home/card/HomeCardState;

    .line 107
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/amazon/kcp/home/widget/OldWebViewWidget$1;

    invoke-direct {p2, p0}, Lcom/amazon/kcp/home/widget/OldWebViewWidget$1;-><init>(Lcom/amazon/kcp/home/widget/OldWebViewWidget;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 118
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$getLoadStartTimestamp$p(Lcom/amazon/kcp/home/widget/OldWebViewWidget;)J
    .locals 2

    .line 62
    iget-wide v0, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->loadStartTimestamp:J

    return-wide v0
.end method

.method public static final synthetic access$getMarketplace$p(Lcom/amazon/kcp/home/widget/OldWebViewWidget;)Lcom/amazon/kcp/application/Marketplace;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->marketplace:Lcom/amazon/kcp/application/Marketplace;

    return-object p0
.end method

.method public static final synthetic access$getPreviousFontScale$p(Lcom/amazon/kcp/home/widget/OldWebViewWidget;)F
    .locals 0

    .line 62
    iget p0, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->previousFontScale:F

    return p0
.end method

.method public static final synthetic access$getSdk$p(Lcom/amazon/kcp/home/widget/OldWebViewWidget;)Lcom/amazon/kindle/krx/IKindleReaderSDK;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-object p0
.end method

.method public static final synthetic access$getShouldLoadPayload$p(Lcom/amazon/kcp/home/widget/OldWebViewWidget;)Z
    .locals 0

    .line 62
    iget-boolean p0, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->shouldLoadPayload:Z

    return p0
.end method

.method public static final synthetic access$getState$p(Lcom/amazon/kcp/home/widget/OldWebViewWidget;)Lcom/amazon/kindle/home/card/HomeCardState;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->state:Lcom/amazon/kindle/home/card/HomeCardState;

    return-object p0
.end method

.method public static final synthetic access$getTAG$p(Lcom/amazon/kcp/home/widget/OldWebViewWidget;)Ljava/lang/String;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getWebView$p(Lcom/amazon/kcp/home/widget/OldWebViewWidget;)Landroid/webkit/WebView;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->webView:Landroid/webkit/WebView;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string/jumbo p0, "webView"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$initWebView(Lcom/amazon/kcp/home/widget/OldWebViewWidget;)Landroid/webkit/WebView;
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->initWebView()Landroid/webkit/WebView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setPreviousFontScale$p(Lcom/amazon/kcp/home/widget/OldWebViewWidget;F)V
    .locals 0

    .line 62
    iput p1, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->previousFontScale:F

    return-void
.end method

.method public static final synthetic access$setState$p(Lcom/amazon/kcp/home/widget/OldWebViewWidget;Lcom/amazon/kindle/home/card/HomeCardState;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->setState(Lcom/amazon/kindle/home/card/HomeCardState;)V

    return-void
.end method

.method public static final synthetic access$setWebView$p(Lcom/amazon/kcp/home/widget/OldWebViewWidget;Landroid/webkit/WebView;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->webView:Landroid/webkit/WebView;

    return-void
.end method

.method private final initWebView()Landroid/webkit/WebView;
    .locals 12
    .annotation runtime Lcom/amazon/kindle/krx/strictmode/SuppressStrictMode;
        violations = {
            .enum Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->DiskReadViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;,
            .enum Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->LeakedClosableViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;
        }
    .end annotation

    .line 203
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 204
    new-instance v2, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetClient;

    iget-object v3, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    iget-object v5, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->activity:Landroid/app/Activity;

    invoke-direct {v2, v3, p0, v4, v5}, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetClient;-><init>(Landroid/content/Context;Lcom/amazon/kcp/home/widget/OldWebViewWidget;Lcom/amazon/kindle/krx/IKindleReaderSDK;Landroid/app/Activity;)V

    .line 205
    new-instance v3, Landroid/webkit/WebView;

    iget-object v4, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->activity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 206
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setId(I)V

    const-string v4, "WEBVIEW_1"

    .line 207
    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setTag(Ljava/lang/Object;)V

    .line 208
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x0

    .line 212
    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setLongClickable(Z)V

    .line 213
    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setHapticFeedbackEnabled(Z)V

    .line 214
    sget-object v6, Lcom/amazon/kcp/home/widget/OldWebViewWidget$initWebView$webView$1$1;->INSTANCE:Lcom/amazon/kcp/home/widget/OldWebViewWidget$initWebView$webView$1$1;

    invoke-virtual {v3, v6}, Landroid/webkit/WebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 217
    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 218
    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    const/4 v6, 0x2

    .line 219
    invoke-virtual {v3, v6}, Landroid/webkit/WebView;->setOverScrollMode(I)V

    .line 221
    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v6

    .line 222
    invoke-virtual {v6, v4}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 223
    invoke-virtual {v6, v5}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 224
    invoke-virtual {v6, v4}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    const/4 v5, 0x1

    .line 225
    invoke-virtual {v6, v5}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 226
    invoke-virtual {v6, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 227
    invoke-virtual {v6, v5}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 228
    invoke-virtual {v6, v5}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 229
    invoke-virtual {v3}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "context"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v7

    const-string v8, "context.cacheDir"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 230
    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 231
    invoke-virtual {v6, v4}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 235
    iget-object v6, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->javascriptInterface:Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface;

    const-string v7, "WebViewWidget"

    invoke-virtual {v3, v6, v7}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    sget-object v6, Lcom/amazon/kindle/home/card/HomeCardState;->LOADING:Lcom/amazon/kindle/home/card/HomeCardState;

    invoke-direct {p0, v6}, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->setState(Lcom/amazon/kindle/home/card/HomeCardState;)V

    .line 238
    invoke-virtual {v3, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 239
    new-instance v6, Lcom/amazon/kcp/home/widget/OldWebViewWidget$initWebView$$inlined$apply$lambda$1;

    invoke-direct {v6, p0, v2}, Lcom/amazon/kcp/home/widget/OldWebViewWidget$initWebView$$inlined$apply$lambda$1;-><init>(Lcom/amazon/kcp/home/widget/OldWebViewWidget;Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetClient;)V

    invoke-virtual {v3, v6}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 269
    iget-object v2, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->payload:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v4, 0x1

    :cond_1
    if-nez v4, :cond_2

    .line 270
    iput-boolean v5, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->shouldLoadPayload:Z

    .line 273
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long v10, v4, v0

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Time to initialize WebView for OldWebViewWidget: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 275
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v6

    if-eqz v6, :cond_3

    iget-object v7, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->TAG:Ljava/lang/String;

    sget-object v9, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v8, "WebViewCardInitTimer"

    invoke-interface/range {v6 .. v11}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportTimerMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;J)V

    :cond_3
    return-object v3
.end method

.method private final loadWebPage(Z)V
    .locals 9

    .line 281
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->loadStartTimestamp:J

    const/4 v0, 0x0

    const-string/jumbo v1, "webView"

    if-eqz p1, :cond_1

    .line 284
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->webView:Landroid/webkit/WebView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/webkit/WebView;->reload()V

    goto/16 :goto_2

    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 286
    :cond_1
    iget-boolean p1, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->shouldLoadPayload:Z

    if-eqz p1, :cond_3

    .line 287
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading payload with baseUrl: \'"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->url:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' and payload"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 288
    iget-object v5, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->payload:Ljava/lang/String;

    if-eqz v5, :cond_6

    iget-object v3, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->webView:Landroid/webkit/WebView;

    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->url:Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v6, "text/html; charset=utf-8"

    const-string v7, "UTF-8"

    invoke-virtual/range {v3 .. v8}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 292
    :cond_3
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->webView:Landroid/webkit/WebView;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const-string/jumbo v2, "webView.settings"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->Companion:Lcom/amazon/kcp/home/widget/OldWebViewWidget$Companion;

    iget-object v4, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->context:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/amazon/kcp/home/widget/OldWebViewWidget$Companion;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, -0x1

    goto :goto_0

    :cond_4
    const/4 v3, 0x1

    :goto_0
    invoke-virtual {p1, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 295
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "Locale.getDefault().toString()"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 296
    iget-object v3, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-eqz v3, :cond_5

    invoke-interface {v3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object v3

    if-eqz v3, :cond_5

    sget-object v4, Lcom/amazon/kindle/krx/theme/ThemeArea;->OUT_OF_BOOK:Lcom/amazon/kindle/krx/theme/ThemeArea;

    invoke-interface {v3, v4}, Lcom/amazon/kindle/krx/theme/IThemeManager;->getTheme(Lcom/amazon/kindle/krx/theme/ThemeArea;)Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object v3

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_5
    sget-object v3, Lcom/amazon/kindle/krx/theme/Theme;->LIGHT:Lcom/amazon/kindle/krx/theme/Theme;

    :goto_1
    const-string/jumbo v4, "sdk?.themeManager?.getTh\u2026T_OF_BOOK) ?: Theme.LIGHT"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 297
    invoke-virtual {v3}, Lcom/amazon/kindle/krx/theme/Theme;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "theme.displayName"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "Locale.US"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v3, :cond_9

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "(this as java.lang.String).toLowerCase(locale)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 298
    iget-object v4, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->url:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 299
    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "locale"

    .line 300
    invoke-virtual {v4, v5, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string/jumbo v5, "theme"

    .line 301
    invoke-virtual {v4, v5, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    .line 302
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Uri.parse(url)\n         \u2026              .toString()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 303
    iget-object v4, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->storePathProvider:Lcom/amazon/kcp/store/StorePathProvider;

    iget-object v5, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->card:Lcom/amazon/kindle/home/model/CardData;

    invoke-virtual {v5}, Lcom/amazon/kindle/home/model/CardData;->getReftag()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/amazon/kcp/store/StorePathProvider;->getDefaultHeaders(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    const-string v5, "Accept-Language"

    invoke-static {v5, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-static {v4, p1}, Lkotlin/collections/MapsKt;->plus(Ljava/util/Map;Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    .line 304
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Loading URL: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\', textZoom: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->webView:Landroid/webkit/WebView;

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/webkit/WebSettings;->getTextZoom()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", headers: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 305
    iget-object v2, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->webView:Landroid/webkit/WebView;

    if-eqz v2, :cond_7

    invoke-virtual {v2, v3, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    :cond_6
    :goto_2
    return-void

    :cond_7
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 304
    :cond_8
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 297
    :cond_9
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo v0, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 292
    :cond_a
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic loadWebPage$default(Lcom/amazon/kcp/home/widget/OldWebViewWidget;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 280
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->loadWebPage(Z)V

    return-void
.end method

.method private final setState(Lcom/amazon/kindle/home/card/HomeCardState;)V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->state:Lcom/amazon/kindle/home/card/HomeCardState;

    if-ne v0, p1, :cond_0

    return-void

    .line 93
    :cond_0
    iput-object p1, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->state:Lcom/amazon/kindle/home/card/HomeCardState;

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Web view card status updated to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    sget-object v1, Lcom/amazon/kindle/home/card/HomeCardState;->FAILED:Lcom/amazon/kindle/home/card/HomeCardState;

    if-ne p1, v1, :cond_3

    .line 96
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->webView:Landroid/webkit/WebView;

    if-eqz p1, :cond_2

    if-eqz p1, :cond_1

    .line 97
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    goto :goto_0

    :cond_1
    const-string/jumbo p1, "webView"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    .line 99
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->TAG:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 101
    :cond_3
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->TAG:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :goto_1
    sget-object p1, Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory;->Companion:Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory$Companion;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory$Companion;->notifyWidgetsChange(Z)V

    return-void
.end method

.method private final triggerResize()V
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->cardView:Landroid/view/View;

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
.method public bindView(Landroid/view/View;Lcom/amazon/kindle/home/card/HomeWidgetListener;Lcom/amazon/kindle/home/action/HomeActionManager;)V
    .locals 5

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "am"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    iget-object p3, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->cardView:Landroid/view/View;

    const-string/jumbo v0, "webView"

    const-string v1, "cardView"

    const/4 v2, 0x0

    if-eqz p3, :cond_4

    if-eqz p3, :cond_3

    .line 134
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    .line 140
    :cond_0
    iget-object p3, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->cardView:Landroid/view/View;

    if-eqz p3, :cond_2

    sget v3, Lcom/amazon/kindle/librarymodule/R$id;->web_card:I

    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/amazon/kcp/home/ui/HomeCardView;

    iget-object v3, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->webView:Landroid/webkit/WebView;

    if-eqz v3, :cond_1

    invoke-virtual {p3, v3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 134
    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 144
    :cond_4
    :goto_0
    iput-object p1, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->cardView:Landroid/view/View;

    .line 147
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string p3, "context.resources"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 148
    iget p3, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->previousFontScale:F

    const/4 v3, 0x1

    cmpg-float p3, p3, p1

    if-eqz p3, :cond_6

    .line 149
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Webview should reload as fontScale has changed ("

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->previousFontScale:F

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " -> "

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, "), updating textZoom and refreshing"

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    iget-object p3, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->webView:Landroid/webkit/WebView;

    if-eqz p3, :cond_5

    invoke-virtual {p3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p3

    const-string/jumbo v4, "webView.settings"

    invoke-static {p3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v4, 0x64

    int-to-float v4, v4

    mul-float v4, v4, p1

    float-to-int p1, v4

    invoke-virtual {p3, p1}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    .line 151
    invoke-direct {p0, v3}, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->loadWebPage(Z)V

    goto :goto_1

    .line 150
    :cond_5
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 155
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->cardView:Landroid/view/View;

    if-eqz p1, :cond_d

    const-string p3, "WEBVIEW_1"

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    .line 156
    iget-object p3, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->webView:Landroid/webkit/WebView;

    if-eqz p3, :cond_c

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    xor-int/2addr p3, v3

    if-eqz p3, :cond_b

    if-eqz p1, :cond_8

    .line 159
    iget-object p3, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->cardView:Landroid/view/View;

    if-eqz p3, :cond_7

    sget v3, Lcom/amazon/kindle/librarymodule/R$id;->web_card:I

    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/amazon/kcp/home/ui/HomeCardView;

    invoke-virtual {p3, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    goto :goto_2

    :cond_7
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 164
    :cond_8
    :goto_2
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->cardView:Landroid/view/View;

    if-eqz p1, :cond_a

    sget p3, Lcom/amazon/kindle/librarymodule/R$id;->web_card:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/home/ui/HomeCardView;

    iget-object p3, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->webView:Landroid/webkit/WebView;

    if-eqz p3, :cond_9

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 165
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->javascriptInterface:Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface;

    invoke-virtual {p1, p2}, Lcom/amazon/kcp/home/widget/OldWebViewWidget$WebViewWidgetJavascriptInterface;->setHomeWidgetListener(Lcom/amazon/kindle/home/card/HomeWidgetListener;)V

    .line 168
    invoke-direct {p0}, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->triggerResize()V

    goto :goto_3

    .line 164
    :cond_9
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_a
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_b
    :goto_3
    return-void

    .line 156
    :cond_c
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 155
    :cond_d
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method public final getCard()Lcom/amazon/kindle/home/model/CardData;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->card:Lcom/amazon/kindle/home/model/CardData;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .line 75
    iget v0, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->priority:I

    return v0
.end method

.method public getState()Lcom/amazon/kindle/home/card/HomeCardState;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->state:Lcom/amazon/kindle/home/card/HomeCardState;

    return-object v0
.end method

.method public getViewLayoutId()I
    .locals 1

    .line 74
    iget v0, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->viewLayoutId:I

    return v0
.end method

.method public final onThemeChangedEvent(Lcom/amazon/kindle/krx/events/ThemeChangedEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$onThemeChangedEvent$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/home/widget/OldWebViewWidget$onThemeChangedEvent$1;-><init>(Lcom/amazon/kcp/home/widget/OldWebViewWidget;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public reportImpressionData(Z)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/Pair;

    .line 174
    iget-object v1, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->card:Lcom/amazon/kindle/home/model/CardData;

    invoke-virtual {v1}, Lcom/amazon/kindle/home/model/CardData;->getReftag()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "refTag"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 175
    invoke-virtual {p0}, Lcom/amazon/kindle/home/card/AbstractHomeCard;->getDisplayPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "widgetPosition"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 173
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    .line 178
    iget-object v1, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-eqz v1, :cond_1

    const-string v2, "HomeSKWidget"

    if-eqz p1, :cond_0

    .line 180
    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p1

    invoke-interface {p1, v2, v0}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->showContext(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 182
    :cond_0
    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p1

    invoke-interface {p1, v2, v0}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->hideContext(Ljava/lang/String;Ljava/util/Map;)V

    .line 186
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->fm:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    iget-object v0, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->card:Lcom/amazon/kindle/home/model/CardData;

    invoke-static {p1, v0}, Lcom/amazon/kcp/home/metrics/HomeFastMetricsKt;->recordImpression(Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;Lcom/amazon/kindle/home/model/CardData;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->card:Lcom/amazon/kindle/home/model/CardData;

    invoke-virtual {v1}, Lcom/amazon/kindle/home/model/CardData;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->getPriority()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
