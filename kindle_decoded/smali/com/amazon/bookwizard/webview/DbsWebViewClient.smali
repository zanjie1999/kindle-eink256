.class public Lcom/amazon/bookwizard/webview/DbsWebViewClient;
.super Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewClient;
.source "DbsWebViewClient.java"


# static fields
.field private static final INTERMEDIATE_PAGE_TAG:Ljava/lang/String; = "bookwizard_page_loading"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private errorCode:I

.field private final wh:Lcom/amazon/bookwizard/webview/WebViewManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const-class v0, Lcom/amazon/bookwizard/webview/DbsWebViewClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/bookwizard/webview/DbsWebViewClient;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 46
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;

    invoke-static {}, Lcom/amazon/bookwizard/util/BookWizardUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewClient;-><init>(Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;)V

    .line 48
    invoke-static {}, Lcom/amazon/bookwizard/webview/WebViewManager;->getInstance()Lcom/amazon/bookwizard/webview/WebViewManager;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/bookwizard/webview/DbsWebViewClient;->wh:Lcom/amazon/bookwizard/webview/WebViewManager;

    return-void
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 56
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 58
    sget-object p1, Lcom/amazon/bookwizard/webview/DbsWebViewClient;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onLoadResource: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/bookwizard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    .line 93
    iget v0, p0, Lcom/amazon/bookwizard/webview/DbsWebViewClient;->errorCode:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 94
    iput v1, p0, Lcom/amazon/bookwizard/webview/DbsWebViewClient;->errorCode:I

    .line 95
    iget-object p1, p0, Lcom/amazon/bookwizard/webview/DbsWebViewClient;->wh:Lcom/amazon/bookwizard/webview/WebViewManager;

    const-string p2, "bookwizard_page_loading"

    invoke-virtual {p1, p2}, Lcom/amazon/bookwizard/webview/WebViewManager;->showNetworkErrorDialog(Ljava/lang/String;)V

    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/amazon/bookwizard/webview/DbsWebViewClient;->wh:Lcom/amazon/bookwizard/webview/WebViewManager;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/webview/WebViewManager;->updateVisibility()V

    .line 101
    sget-object v0, Lcom/amazon/bookwizard/webview/DbsWebViewClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPageFinished: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/amazon/bookwizard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iput v1, p0, Lcom/amazon/bookwizard/webview/DbsWebViewClient;->errorCode:I

    .line 103
    new-instance p2, Lcom/amazon/bookwizard/webview/DbsWebViewClient$1;

    invoke-direct {p2, p0}, Lcom/amazon/bookwizard/webview/DbsWebViewClient$1;-><init>(Lcom/amazon/bookwizard/webview/DbsWebViewClient;)V

    .line 109
    invoke-static {}, Lcom/amazon/bookwizard/BookWizardPlugin;->getTaskExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Void;

    invoke-virtual {p2, v0, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 111
    instance-of p2, p1, Lcom/amazon/bookwizard/webview/BookWizardWebView;

    if-eqz p2, :cond_1

    .line 112
    check-cast p1, Lcom/amazon/bookwizard/webview/BookWizardWebView;

    invoke-virtual {p1, v1}, Lcom/amazon/bookwizard/webview/BookWizardWebView;->setLoading(Z)V

    :cond_1
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 66
    invoke-super {p0, p1, p2, p3}, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 68
    sget-object p3, Lcom/amazon/bookwizard/webview/DbsWebViewClient;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPageStarted: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/amazon/bookwizard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    instance-of p2, p1, Lcom/amazon/bookwizard/webview/BookWizardWebView;

    if-eqz p2, :cond_0

    .line 70
    check-cast p1, Lcom/amazon/bookwizard/webview/BookWizardWebView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/amazon/bookwizard/webview/BookWizardWebView;->setLoading(Z)V

    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 3

    .line 121
    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result v0

    iput v0, p0, Lcom/amazon/bookwizard/webview/DbsWebViewClient;->errorCode:I

    .line 123
    sget-object v0, Lcom/amazon/bookwizard/webview/DbsWebViewClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onReceivedError ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/amazon/bookwizard/webview/DbsWebViewClient;->errorCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "; "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/amazon/bookwizard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 125
    iget-object p1, p0, Lcom/amazon/bookwizard/webview/DbsWebViewClient;->wh:Lcom/amazon/bookwizard/webview/WebViewManager;

    const-string p2, "bookwizard_page_loading"

    invoke-virtual {p1, p2}, Lcom/amazon/bookwizard/webview/WebViewManager;->showNetworkErrorDialog(Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 3

    .line 133
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    .line 135
    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    move-result v0

    iput v0, p0, Lcom/amazon/bookwizard/webview/DbsWebViewClient;->errorCode:I

    .line 136
    sget-object v0, Lcom/amazon/bookwizard/webview/DbsWebViewClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onReceivedHttpError ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "; "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getReasonPhrase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/amazon/bookwizard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 138
    iget-object p1, p0, Lcom/amazon/bookwizard/webview/DbsWebViewClient;->wh:Lcom/amazon/bookwizard/webview/WebViewManager;

    const-string p2, "bookwizard_page_loading"

    invoke-virtual {p1, p2}, Lcom/amazon/bookwizard/webview/WebViewManager;->showNetworkErrorDialog(Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 2

    .line 146
    sget-object v0, Lcom/amazon/bookwizard/webview/DbsWebViewClient;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onReceivedSslError"

    invoke-static {v0, v1}, Lcom/amazon/bookwizard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 149
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    goto :goto_0

    .line 151
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 152
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 153
    iget-object p1, p0, Lcom/amazon/bookwizard/webview/DbsWebViewClient;->wh:Lcom/amazon/bookwizard/webview/WebViewManager;

    const-string p2, "bookwizard_page_loading"

    invoke-virtual {p1, p2}, Lcom/amazon/bookwizard/webview/WebViewManager;->showNetworkErrorDialog(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    .line 79
    sget-object v0, Lcom/amazon/bookwizard/webview/DbsWebViewClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "shouldOverrideUrlLoading: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/bookwizard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-super {p0, p1, p2}, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Lcom/amazon/bookwizard/util/WebViewUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 84
    :cond_0
    invoke-static {}, Lcom/amazon/bookwizard/util/BookWizardUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/bookwizard/util/WebViewUtil;->getDbsHeaders(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
