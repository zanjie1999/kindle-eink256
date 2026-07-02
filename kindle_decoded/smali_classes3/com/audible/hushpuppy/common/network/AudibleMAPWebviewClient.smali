.class public Lcom/audible/hushpuppy/common/network/AudibleMAPWebviewClient;
.super Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewClient;
.source "AudibleMAPWebviewClient.java"


# instance fields
.field private final handler:Landroid/os/Handler;

.field private final webviewLoadingView:Lcom/audible/hushpuppy/common/network/WebviewLoadingView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/audible/hushpuppy/common/network/WebviewLoadingView;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewClient;-><init>(Landroid/app/Activity;)V

    .line 34
    invoke-static {p2}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Lcom/audible/hushpuppy/common/network/WebviewLoadingView;

    iput-object p2, p0, Lcom/audible/hushpuppy/common/network/AudibleMAPWebviewClient;->webviewLoadingView:Lcom/audible/hushpuppy/common/network/WebviewLoadingView;

    .line 35
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/audible/hushpuppy/common/network/AudibleMAPWebviewClient;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/audible/hushpuppy/common/network/AudibleMAPWebviewClient;)Lcom/audible/hushpuppy/common/network/WebviewLoadingView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/audible/hushpuppy/common/network/AudibleMAPWebviewClient;->webviewLoadingView:Lcom/audible/hushpuppy/common/network/WebviewLoadingView;

    return-object p0
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 68
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 69
    iget-object p1, p0, Lcom/audible/hushpuppy/common/network/AudibleMAPWebviewClient;->handler:Landroid/os/Handler;

    new-instance p2, Lcom/audible/hushpuppy/common/network/AudibleMAPWebviewClient$2;

    invoke-direct {p2, p0}, Lcom/audible/hushpuppy/common/network/AudibleMAPWebviewClient$2;-><init>(Lcom/audible/hushpuppy/common/network/AudibleMAPWebviewClient;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 56
    invoke-super {p0, p1, p2, p3}, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 57
    iget-object p1, p0, Lcom/audible/hushpuppy/common/network/AudibleMAPWebviewClient;->handler:Landroid/os/Handler;

    new-instance p2, Lcom/audible/hushpuppy/common/network/AudibleMAPWebviewClient$1;

    invoke-direct {p2, p0}, Lcom/audible/hushpuppy/common/network/AudibleMAPWebviewClient$1;-><init>(Lcom/audible/hushpuppy/common/network/AudibleMAPWebviewClient;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
