.class final Lcom/amazon/readingactions/ui/widget/webview/WebViewController$WebViewWidgetClient;
.super Lcom/amazon/kindle/webview/android/KindleWebViewClient;
.source "WebViewController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/readingactions/ui/widget/webview/WebViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WebViewWidgetClient"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private final webView:Lcom/amazon/kindle/webview/android/KindleWebView;

.field private final webViewWidget:Lcom/amazon/readingactions/ui/widget/webview/WebViewController;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/webview/android/KindleWebView;Lcom/amazon/readingactions/ui/widget/webview/WebViewController;Lcom/amazon/kindle/krx/IKindleReaderSDK;Landroid/app/Activity;Lcom/amazon/kindle/webview/android/KindleWebViewConfiguration;)V
    .locals 7

    const-string/jumbo v0, "webView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "webViewWidget"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sdk"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activity"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configuration"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    invoke-static {p2}, Lcom/amazon/readingactions/ui/widget/webview/WebViewController;->access$getTAG$p(Lcom/amazon/readingactions/ui/widget/webview/WebViewController;)Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/amazon/kindle/webview/android/KindleWebViewClient;-><init>(Lcom/amazon/kindle/webview/android/KindleWebView;Ljava/lang/String;Lcom/amazon/kindle/krx/IKindleReaderSDK;Landroid/app/Activity;Lcom/amazon/kindle/webview/android/KindleWebViewConfiguration;)V

    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/webview/WebViewController$WebViewWidgetClient;->webView:Lcom/amazon/kindle/webview/android/KindleWebView;

    iput-object p2, p0, Lcom/amazon/readingactions/ui/widget/webview/WebViewController$WebViewWidgetClient;->webViewWidget:Lcom/amazon/readingactions/ui/widget/webview/WebViewController;

    iput-object p3, p0, Lcom/amazon/readingactions/ui/widget/webview/WebViewController$WebViewWidgetClient;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 134
    invoke-static {p2}, Lcom/amazon/readingactions/ui/widget/webview/WebViewController;->access$getTAG$p(Lcom/amazon/readingactions/ui/widget/webview/WebViewController;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/webview/WebViewController$WebViewWidgetClient;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public handleFailure()V
    .locals 3

    .line 137
    invoke-super {p0}, Lcom/amazon/kindle/webview/android/KindleWebViewClient;->handleFailure()V

    .line 139
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/webview/WebViewController$WebViewWidgetClient;->webViewWidget:Lcom/amazon/readingactions/ui/widget/webview/WebViewController;

    invoke-static {v0}, Lcom/amazon/readingactions/ui/widget/webview/WebViewController;->access$getWebView$p(Lcom/amazon/readingactions/ui/widget/webview/WebViewController;)Lcom/amazon/kindle/webview/android/KindleWebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Landroid/view/View;

    .line 140
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 141
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 142
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void

    .line 139
    :cond_1
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.view.View"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
