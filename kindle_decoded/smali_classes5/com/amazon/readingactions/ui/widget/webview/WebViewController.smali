.class public final Lcom/amazon/readingactions/ui/widget/webview/WebViewController;
.super Lcom/amazon/ea/ui/widget/WidgetController;
.source "WebViewController.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/readingactions/ui/widget/webview/WebViewController$WebViewWidgetClient;,
        Lcom/amazon/readingactions/ui/widget/webview/WebViewController$WebViewWidgetJavascriptInterface;,
        Lcom/amazon/readingactions/ui/widget/webview/WebViewController$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWebViewController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WebViewController.kt\ncom/amazon/readingactions/ui/widget/webview/WebViewController\n*L\n1#1,166:1\n*E\n"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final authManager:Lcom/amazon/kcp/application/IAuthenticationManager;

.field private final javascriptInterface:Lcom/amazon/readingactions/ui/widget/webview/WebViewController$WebViewWidgetJavascriptInterface;

.field private final kindleWebViewConfiguration:Lcom/amazon/kindle/webview/android/KindleWebViewConfiguration;

.field private final marketplace:Lcom/amazon/kcp/application/Marketplace;

.field private final model:Lcom/amazon/ea/model/widget/webview/WebViewModel;

.field private final resources:Landroid/content/res/Resources;

.field private final sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private velocityTracker:Landroid/view/VelocityTracker;

.field private webView:Lcom/amazon/kindle/webview/android/KindleWebView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/readingactions/ui/widget/webview/WebViewController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/readingactions/ui/widget/webview/WebViewController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/amazon/ea/model/widget/webview/WebViewModel;)V
    .locals 12

    const-string v0, "endActionActivity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "model"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0}, Lcom/amazon/ea/ui/widget/WidgetController;-><init>()V

    iput-object p2, p0, Lcom/amazon/readingactions/ui/widget/webview/WebViewController;->model:Lcom/amazon/ea/model/widget/webview/WebViewModel;

    .line 33
    sget-object p2, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    const-string v0, "EndActionsPlugin.sdk"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/amazon/readingactions/ui/widget/webview/WebViewController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 34
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "com.amazon.readingactions.ui.widget.webview.WebViewController ["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x5d

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/readingactions/ui/widget/webview/WebViewController;->TAG:Ljava/lang/String;

    .line 36
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p2

    const-string v0, "Utils.getFactory()"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/readingactions/ui/widget/webview/WebViewController;->authManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    .line 37
    sget-object v0, Lcom/amazon/kindle/services/authentication/TokenKey;->PFM:Lcom/amazon/kindle/services/authentication/TokenKey;

    invoke-interface {p2, v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->fetchToken(Lcom/amazon/kindle/services/authentication/TokenKey;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/amazon/kcp/application/Marketplace;->getInstance(Ljava/lang/String;)Lcom/amazon/kcp/application/Marketplace;

    move-result-object p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    :goto_0
    iput-object p2, p0, Lcom/amazon/readingactions/ui/widget/webview/WebViewController;->marketplace:Lcom/amazon/kcp/application/Marketplace;

    .line 38
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/readingactions/ui/widget/webview/WebViewController;->resources:Landroid/content/res/Resources;

    .line 41
    new-instance p2, Lcom/amazon/readingactions/ui/widget/webview/WebViewController$WebViewWidgetJavascriptInterface;

    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/webview/WebViewController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-direct {p2, v0, p0}, Lcom/amazon/readingactions/ui/widget/webview/WebViewController$WebViewWidgetJavascriptInterface;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/readingactions/ui/widget/webview/WebViewController;)V

    iput-object p2, p0, Lcom/amazon/readingactions/ui/widget/webview/WebViewController;->javascriptInterface:Lcom/amazon/readingactions/ui/widget/webview/WebViewController$WebViewWidgetJavascriptInterface;

    .line 42
    new-instance p2, Lcom/amazon/kindle/webview/android/KindleWebViewConfiguration;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EndActionsWebView."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/webview/WebViewController;->model:Lcom/amazon/ea/model/widget/webview/WebViewModel;

    iget-object v1, v1, Lcom/amazon/ea/model/widget/WidgetModel;->metricsTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/amazon/kindle/webview/android/KindleWebViewConfiguration;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/amazon/readingactions/ui/widget/webview/WebViewController;->kindleWebViewConfiguration:Lcom/amazon/kindle/webview/android/KindleWebViewConfiguration;

    .line 46
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 49
    iget-object p2, p0, Lcom/amazon/readingactions/ui/widget/webview/WebViewController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object p2

    const-string/jumbo v2, "sdk.readerManager"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object p2

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    invoke-interface {p2}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_1
    move-object p2, v2

    :goto_1
    if-eqz p2, :cond_2

    .line 51
    iget-object v3, p0, Lcom/amazon/readingactions/ui/widget/webview/WebViewController;->kindleWebViewConfiguration:Lcom/amazon/kindle/webview/android/KindleWebViewConfiguration;

    const-string v4, "asin"

    invoke-static {v4, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    invoke-static {p2}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p2

    invoke-virtual {v3, p2}, Lcom/amazon/kindle/webview/android/KindleWebViewConfiguration;->setRequestQueryParams(Ljava/util/Map;)V

    .line 54
    :cond_2
    new-instance p2, Lcom/amazon/kindle/webview/android/KindleWebView;

    iget-object v5, p0, Lcom/amazon/readingactions/ui/widget/webview/WebViewController;->kindleWebViewConfiguration:Lcom/amazon/kindle/webview/android/KindleWebViewConfiguration;

    iget-object v7, p0, Lcom/amazon/readingactions/ui/widget/webview/WebViewController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    iget-object v3, p0, Lcom/amazon/readingactions/ui/widget/webview/WebViewController;->model:Lcom/amazon/ea/model/widget/webview/WebViewModel;

    invoke-virtual {v3}, Lcom/amazon/ea/model/widget/webview/WebViewModel;->getUrl()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/amazon/readingactions/ui/widget/webview/WebViewController;->TAG:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/readingactions/ui/widget/webview/WebViewController;->model:Lcom/amazon/ea/model/widget/webview/WebViewModel;

    invoke-virtual {v3}, Lcom/amazon/ea/model/widget/webview/WebViewModel;->getPayload()Ljava/lang/String;

    move-result-object v10

    iget-object v3, p0, Lcom/amazon/readingactions/ui/widget/webview/WebViewController;->model:Lcom/amazon/ea/model/widget/webview/WebViewModel;

    iget-object v11, v3, Lcom/amazon/ea/model/widget/WidgetModel;->metricsTag:Ljava/lang/String;

    move-object v4, p2

    move-object v6, p1

    invoke-direct/range {v4 .. v11}, Lcom/amazon/kindle/webview/android/KindleWebView;-><init>(Lcom/amazon/kindle/webview/android/KindleWebViewConfiguration;Landroid/app/Activity;Lcom/amazon/kindle/krx/IKindleReaderSDK;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v3, p0, Lcom/amazon/readingactions/ui/widget/webview/WebViewController;->javascriptInterface:Lcom/amazon/readingactions/ui/widget/webview/WebViewController$WebViewWidgetJavascriptInterface;

    const-string v4, "WebViewWidget"

    invoke-virtual {p2, v3, v4}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    new-instance v3, Lcom/amazon/readingactions/ui/widget/webview/WebViewController$WebViewWidgetClient;

    invoke-virtual {p2}, Lcom/amazon/kindle/webview/android/KindleWebView;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v7

    iget-object v9, p0, Lcom/amazon/readingactions/ui/widget/webview/WebViewController;->kindleWebViewConfiguration:Lcom/amazon/kindle/webview/android/KindleWebViewConfiguration;

    move-object v4, v3

    move-object v5, p2

    move-object v6, p0

    move-object v8, p1

    invoke-direct/range {v4 .. v9}, Lcom/amazon/readingactions/ui/widget/webview/WebViewController$WebViewWidgetClient;-><init>(Lcom/amazon/kindle/webview/android/KindleWebView;Lcom/amazon/readingactions/ui/widget/webview/WebViewController;Lcom/amazon/kindle/krx/IKindleReaderSDK;Landroid/app/Activity;Lcom/amazon/kindle/webview/android/KindleWebViewConfiguration;)V

    invoke-virtual {p2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 54
    iput-object p2, p0, Lcom/amazon/readingactions/ui/widget/webview/WebViewController;->webView:Lcom/amazon/kindle/webview/android/KindleWebView;

    const/4 p1, 0x0

    const/4 v3, 0x1

    .line 59
    invoke-static {p2, p1, v3, v2}, Lcom/amazon/kindle/webview/android/KindleWebView;->loadWebPage$default(Lcom/amazon/kindle/webview/android/KindleWebView;ZILjava/lang/Object;)V

    .line 61
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v0

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Time to initialize WebView for WebViewWidget: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/webview/WebViewController;->webView:Lcom/amazon/kindle/webview/android/KindleWebView;

    new-instance p2, Lcom/amazon/readingactions/ui/widget/webview/WebViewController$3;

    invoke-direct {p2, p0}, Lcom/amazon/readingactions/ui/widget/webview/WebViewController$3;-><init>(Lcom/amazon/readingactions/ui/widget/webview/WebViewController;)V

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public static final synthetic access$getModel$p(Lcom/amazon/readingactions/ui/widget/webview/WebViewController;)Lcom/amazon/ea/model/widget/webview/WebViewModel;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/amazon/readingactions/ui/widget/webview/WebViewController;->model:Lcom/amazon/ea/model/widget/webview/WebViewModel;

    return-object p0
.end method

.method public static final synthetic access$getTAG$p(Lcom/amazon/readingactions/ui/widget/webview/WebViewController;)Ljava/lang/String;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/amazon/readingactions/ui/widget/webview/WebViewController;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getVelocityTracker$p(Lcom/amazon/readingactions/ui/widget/webview/WebViewController;)Landroid/view/VelocityTracker;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/amazon/readingactions/ui/widget/webview/WebViewController;->velocityTracker:Landroid/view/VelocityTracker;

    return-object p0
.end method

.method public static final synthetic access$getWebView$p(Lcom/amazon/readingactions/ui/widget/webview/WebViewController;)Lcom/amazon/kindle/webview/android/KindleWebView;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/amazon/readingactions/ui/widget/webview/WebViewController;->webView:Lcom/amazon/kindle/webview/android/KindleWebView;

    return-object p0
.end method

.method public static final synthetic access$setVelocityTracker$p(Lcom/amazon/readingactions/ui/widget/webview/WebViewController;Landroid/view/VelocityTracker;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/webview/WebViewController;->velocityTracker:Landroid/view/VelocityTracker;

    return-void
.end method


# virtual methods
.method public getView(Landroid/view/ViewGroup;Lcom/amazon/ea/model/widget/WidgetDisplayFormat;Lcom/amazon/ea/ui/AnimationCoordinator;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 103
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/webview/WebViewController;->webView:Lcom/amazon/kindle/webview/android/KindleWebView;

    invoke-virtual {p1}, Lcom/amazon/kindle/webview/android/KindleWebView;->getState()Lcom/amazon/kindle/webview/android/KindleWebViewState;

    move-result-object p1

    sget-object p2, Lcom/amazon/kindle/webview/android/KindleWebViewState;->FAILED:Lcom/amazon/kindle/webview/android/KindleWebViewState;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 106
    :cond_0
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/webview/WebViewController;->model:Lcom/amazon/ea/model/widget/webview/WebViewModel;

    iget-object p1, p1, Lcom/amazon/ea/model/widget/WidgetModel;->metricsTag:Ljava/lang/String;

    sget-object p2, Lcom/amazon/ea/metrics/GeneralWidgetActions;->RENDER:Lcom/amazon/ea/metrics/GeneralWidgetActions;

    invoke-static {p1, p2}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->emit(Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;)V

    .line 107
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/webview/WebViewController;->webView:Lcom/amazon/kindle/webview/android/KindleWebView;

    return-object p1
.end method

.method public onRender()V
    .locals 3

    .line 111
    invoke-super {p0}, Lcom/amazon/ea/ui/widget/WidgetController;->onRender()V

    .line 117
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/webview/WebViewController;->webView:Lcom/amazon/kindle/webview/android/KindleWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/view/View;

    .line 118
    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/webview/WebViewController;->resources:Landroid/content/res/Resources;

    sget v2, Lcom/amazon/kindle/ea/R$dimen;->startactions_layout_group_padding_vertical:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    const/4 v2, 0x0

    .line 119
    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/view/View;->setPadding(IIII)V

    return-void

    .line 117
    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.view.View"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
