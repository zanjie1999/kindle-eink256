.class final Lcom/amazon/kcp/home/widget/WebViewWidget$WebViewWidgetClient;
.super Lcom/amazon/kindle/webview/android/KindleWebViewClient;
.source "WebViewWidget.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/home/widget/WebViewWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WebViewWidgetClient"
.end annotation


# instance fields
.field private final webViewWidget:Lcom/amazon/kcp/home/widget/WebViewWidget;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/webview/android/KindleWebView;Lcom/amazon/kcp/home/widget/WebViewWidget;Lcom/amazon/kindle/krx/IKindleReaderSDK;Landroid/app/Activity;Lcom/amazon/kindle/webview/android/KindleWebViewConfiguration;)V
    .locals 7

    const-string/jumbo v0, "webView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "webViewWidget"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sdk"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activity"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configuration"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    invoke-static {p2}, Lcom/amazon/kcp/home/widget/WebViewWidget;->access$getTAG$p(Lcom/amazon/kcp/home/widget/WebViewWidget;)Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/amazon/kindle/webview/android/KindleWebViewClient;-><init>(Lcom/amazon/kindle/webview/android/KindleWebView;Ljava/lang/String;Lcom/amazon/kindle/krx/IKindleReaderSDK;Landroid/app/Activity;Lcom/amazon/kindle/webview/android/KindleWebViewConfiguration;)V

    iput-object p2, p0, Lcom/amazon/kcp/home/widget/WebViewWidget$WebViewWidgetClient;->webViewWidget:Lcom/amazon/kcp/home/widget/WebViewWidget;

    return-void
.end method


# virtual methods
.method public handleFailure()V
    .locals 2

    .line 183
    invoke-super {p0}, Lcom/amazon/kindle/webview/android/KindleWebViewClient;->handleFailure()V

    .line 184
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/WebViewWidget$WebViewWidgetClient;->webViewWidget:Lcom/amazon/kcp/home/widget/WebViewWidget;

    sget-object v1, Lcom/amazon/kindle/home/card/HomeCardState;->FAILED:Lcom/amazon/kindle/home/card/HomeCardState;

    invoke-static {v0, v1}, Lcom/amazon/kcp/home/widget/WebViewWidget;->access$setState$p(Lcom/amazon/kcp/home/widget/WebViewWidget;Lcom/amazon/kindle/home/card/HomeCardState;)V

    return-void
.end method

.method public handleSuccess()V
    .locals 2

    .line 188
    invoke-super {p0}, Lcom/amazon/kindle/webview/android/KindleWebViewClient;->handleSuccess()V

    .line 189
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/WebViewWidget$WebViewWidgetClient;->webViewWidget:Lcom/amazon/kcp/home/widget/WebViewWidget;

    sget-object v1, Lcom/amazon/kindle/home/card/HomeCardState;->READY:Lcom/amazon/kindle/home/card/HomeCardState;

    invoke-static {v0, v1}, Lcom/amazon/kcp/home/widget/WebViewWidget;->access$setState$p(Lcom/amazon/kcp/home/widget/WebViewWidget;Lcom/amazon/kindle/home/card/HomeCardState;)V

    return-void
.end method
