.class public final Lcom/amazon/kindle/krx/application/MAPWebViewClientWithCallback;
.super Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewClient;
.source "MapWebViewClientWithCallback.kt"


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final callback:Lcom/amazon/kindle/krx/application/MAPWebViewClientCallback;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/amazon/kindle/krx/application/MAPWebViewClientCallback;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewClient;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/amazon/kindle/krx/application/MAPWebViewClientWithCallback;->activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/amazon/kindle/krx/application/MAPWebViewClientWithCallback;->callback:Lcom/amazon/kindle/krx/application/MAPWebViewClientCallback;

    return-void
.end method


# virtual methods
.method public final getActivity()Landroid/app/Activity;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/amazon/kindle/krx/application/MAPWebViewClientWithCallback;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/amazon/kindle/krx/application/MAPWebViewClientWithCallback;->callback:Lcom/amazon/kindle/krx/application/MAPWebViewClientCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/amazon/kindle/krx/application/MAPWebViewClientCallback;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-super {p0, p1, p2, p3}, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 29
    iget-object v0, p0, Lcom/amazon/kindle/krx/application/MAPWebViewClientWithCallback;->callback:Lcom/amazon/kindle/krx/application/MAPWebViewClientCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/amazon/kindle/krx/application/MAPWebViewClientCallback;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "description"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "failingUrl"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/amazon/kindle/krx/application/MAPWebViewClientWithCallback;->callback:Lcom/amazon/kindle/krx/application/MAPWebViewClientCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/amazon/kindle/krx/application/MAPWebViewClientCallback;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorResponse"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    .line 19
    iget-object v0, p0, Lcom/amazon/kindle/krx/application/MAPWebViewClientWithCallback;->callback:Lcom/amazon/kindle/krx/application/MAPWebViewClientCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/amazon/kindle/krx/application/MAPWebViewClientCallback;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    :cond_0
    return-void
.end method
