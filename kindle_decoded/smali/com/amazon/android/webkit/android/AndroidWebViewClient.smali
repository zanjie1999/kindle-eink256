.class public Lcom/amazon/android/webkit/android/AndroidWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "AndroidWebViewClient.java"


# instance fields
.field private final client:Lcom/amazon/android/webkit/AmazonWebViewClient;

.field private final webview:Lcom/amazon/android/webkit/AmazonWebView;


# direct methods
.method public constructor <init>(Lcom/amazon/android/webkit/AmazonWebView;Lcom/amazon/android/webkit/AmazonWebViewClient;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/amazon/android/webkit/android/AndroidWebViewClient;->webview:Lcom/amazon/android/webkit/AmazonWebView;

    .line 35
    iput-object p2, p0, Lcom/amazon/android/webkit/android/AndroidWebViewClient;->client:Lcom/amazon/android/webkit/AmazonWebViewClient;

    return-void
.end method


# virtual methods
.method public doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 1

    .line 76
    iget-object p1, p0, Lcom/amazon/android/webkit/android/AndroidWebViewClient;->client:Lcom/amazon/android/webkit/AmazonWebViewClient;

    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewClient;->webview:Lcom/amazon/android/webkit/AmazonWebView;

    invoke-virtual {p1, v0, p2, p3}, Lcom/amazon/android/webkit/AmazonWebViewClient;->doUpdateVisitedHistory(Lcom/amazon/android/webkit/AmazonWebView;Ljava/lang/String;Z)V

    return-void
.end method

.method public onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 1

    .line 121
    iget-object p1, p0, Lcom/amazon/android/webkit/android/AndroidWebViewClient;->client:Lcom/amazon/android/webkit/AmazonWebViewClient;

    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewClient;->webview:Lcom/amazon/android/webkit/AmazonWebView;

    invoke-virtual {p1, v0, p2, p3}, Lcom/amazon/android/webkit/AmazonWebViewClient;->onFormResubmission(Lcom/amazon/android/webkit/AmazonWebView;Landroid/os/Message;Landroid/os/Message;)V

    return-void
.end method

.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 54
    iget-object p1, p0, Lcom/amazon/android/webkit/android/AndroidWebViewClient;->client:Lcom/amazon/android/webkit/AmazonWebViewClient;

    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewClient;->webview:Lcom/amazon/android/webkit/AmazonWebView;

    invoke-virtual {p1, v0, p2}, Lcom/amazon/android/webkit/AmazonWebViewClient;->onLoadResource(Lcom/amazon/android/webkit/AmazonWebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 59
    iget-object p1, p0, Lcom/amazon/android/webkit/android/AndroidWebViewClient;->client:Lcom/amazon/android/webkit/AmazonWebViewClient;

    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewClient;->webview:Lcom/amazon/android/webkit/AmazonWebView;

    invoke-virtual {p1, v0, p2}, Lcom/amazon/android/webkit/AmazonWebViewClient;->onPageFinished(Lcom/amazon/android/webkit/AmazonWebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 64
    iget-object p1, p0, Lcom/amazon/android/webkit/android/AndroidWebViewClient;->client:Lcom/amazon/android/webkit/AmazonWebViewClient;

    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewClient;->webview:Lcom/amazon/android/webkit/AmazonWebView;

    invoke-virtual {p1, v0, p2, p3}, Lcom/amazon/android/webkit/AmazonWebViewClient;->onPageStarted(Lcom/amazon/android/webkit/AmazonWebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 70
    iget-object p1, p0, Lcom/amazon/android/webkit/android/AndroidWebViewClient;->client:Lcom/amazon/android/webkit/AmazonWebViewClient;

    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewClient;->webview:Lcom/amazon/android/webkit/AmazonWebView;

    invoke-virtual {p1, v0, p2, p3, p4}, Lcom/amazon/android/webkit/AmazonWebViewClient;->onReceivedError(Lcom/amazon/android/webkit/AmazonWebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 82
    new-instance p1, Lcom/amazon/android/webkit/android/AndroidWebViewClient$1;

    invoke-direct {p1, p0, p2}, Lcom/amazon/android/webkit/android/AndroidWebViewClient$1;-><init>(Lcom/amazon/android/webkit/android/AndroidWebViewClient;Landroid/webkit/HttpAuthHandler;)V

    .line 98
    iget-object p2, p0, Lcom/amazon/android/webkit/android/AndroidWebViewClient;->client:Lcom/amazon/android/webkit/AmazonWebViewClient;

    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewClient;->webview:Lcom/amazon/android/webkit/AmazonWebView;

    invoke-virtual {p2, v0, p1, p3, p4}, Lcom/amazon/android/webkit/AmazonWebViewClient;->onReceivedHttpAuthRequest(Lcom/amazon/android/webkit/AmazonWebView;Lcom/amazon/android/webkit/AmazonHttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1

    .line 104
    new-instance p1, Lcom/amazon/android/webkit/android/AndroidWebViewClient$2;

    invoke-direct {p1, p0, p2}, Lcom/amazon/android/webkit/android/AndroidWebViewClient$2;-><init>(Lcom/amazon/android/webkit/android/AndroidWebViewClient;Landroid/webkit/SslErrorHandler;)V

    .line 115
    iget-object p2, p0, Lcom/amazon/android/webkit/android/AndroidWebViewClient;->client:Lcom/amazon/android/webkit/AmazonWebViewClient;

    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewClient;->webview:Lcom/amazon/android/webkit/AmazonWebView;

    invoke-virtual {p2, v0, p1, p3}, Lcom/amazon/android/webkit/AmazonWebViewClient;->onReceivedSslError(Lcom/amazon/android/webkit/AmazonWebView;Lcom/amazon/android/webkit/AmazonSslErrorHandler;Landroid/net/http/SslError;)V

    return-void
.end method

.method public onScaleChanged(Landroid/webkit/WebView;FF)V
    .locals 1

    .line 143
    iget-object p1, p0, Lcom/amazon/android/webkit/android/AndroidWebViewClient;->client:Lcom/amazon/android/webkit/AmazonWebViewClient;

    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewClient;->webview:Lcom/amazon/android/webkit/AmazonWebView;

    invoke-virtual {p1, v0, p2, p3}, Lcom/amazon/android/webkit/AmazonWebViewClient;->onScaleChanged(Lcom/amazon/android/webkit/AmazonWebView;FF)V

    return-void
.end method

.method public onTooManyRedirects(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 128
    iget-object p1, p0, Lcom/amazon/android/webkit/android/AndroidWebViewClient;->client:Lcom/amazon/android/webkit/AmazonWebViewClient;

    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewClient;->webview:Lcom/amazon/android/webkit/AmazonWebView;

    invoke-virtual {p1, v0, p2, p3}, Lcom/amazon/android/webkit/AmazonWebViewClient;->onTooManyRedirects(Lcom/amazon/android/webkit/AmazonWebView;Landroid/os/Message;Landroid/os/Message;)V

    return-void
.end method

.method public onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V
    .locals 1

    .line 138
    iget-object p1, p0, Lcom/amazon/android/webkit/android/AndroidWebViewClient;->client:Lcom/amazon/android/webkit/AmazonWebViewClient;

    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewClient;->webview:Lcom/amazon/android/webkit/AmazonWebView;

    invoke-virtual {p1, v0, p2}, Lcom/amazon/android/webkit/AmazonWebViewClient;->onUnhandledKeyEvent(Lcom/amazon/android/webkit/AmazonWebView;Landroid/view/KeyEvent;)V

    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 2

    .line 40
    iget-object p1, p0, Lcom/amazon/android/webkit/android/AndroidWebViewClient;->client:Lcom/amazon/android/webkit/AmazonWebViewClient;

    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewClient;->webview:Lcom/amazon/android/webkit/AmazonWebView;

    invoke-virtual {p1, v0, p2}, Lcom/amazon/android/webkit/AmazonWebViewClient;->shouldInterceptRequest(Lcom/amazon/android/webkit/AmazonWebView;Ljava/lang/String;)Lcom/amazon/android/webkit/AmazonWebResourceResponse;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 44
    :cond_0
    new-instance p2, Landroid/webkit/WebResourceResponse;

    invoke-virtual {p1}, Lcom/amazon/android/webkit/AmazonWebResourceResponse;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/android/webkit/AmazonWebResourceResponse;->getEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/android/webkit/AmazonWebResourceResponse;->getData()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {p2, v0, v1, p1}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object p2
.end method

.method public shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z
    .locals 1

    .line 133
    iget-object p1, p0, Lcom/amazon/android/webkit/android/AndroidWebViewClient;->client:Lcom/amazon/android/webkit/AmazonWebViewClient;

    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewClient;->webview:Lcom/amazon/android/webkit/AmazonWebView;

    invoke-virtual {p1, v0, p2}, Lcom/amazon/android/webkit/AmazonWebViewClient;->shouldOverrideKeyEvent(Lcom/amazon/android/webkit/AmazonWebView;Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    .line 49
    iget-object p1, p0, Lcom/amazon/android/webkit/android/AndroidWebViewClient;->client:Lcom/amazon/android/webkit/AmazonWebViewClient;

    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewClient;->webview:Lcom/amazon/android/webkit/AmazonWebView;

    invoke-virtual {p1, v0, p2}, Lcom/amazon/android/webkit/AmazonWebViewClient;->shouldOverrideUrlLoading(Lcom/amazon/android/webkit/AmazonWebView;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
