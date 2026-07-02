.class public Lcom/amazon/securewebviewclient/SecureWebViewClient;
.super Lcom/amazon/securewebviewclient/WebViewClientDecorator;
.source "SecureWebViewClient.java"


# instance fields
.field private currentHostPage:Ljava/lang/String;

.field private sslEventListener:Lcom/amazon/securewebviewclient/SslEventListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/amazon/securewebviewclient/WebViewClientDecorator;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/webkit/WebViewClient;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/amazon/securewebviewclient/WebViewClientDecorator;-><init>(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method private isHttpUrl(Ljava/lang/String;)Z
    .locals 1

    .line 65
    invoke-static {p1}, Landroid/webkit/URLUtil;->isHttpUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    sget-object v0, Lcom/amazon/securewebviewclient/SslEventReason;->HTTP_URL_REQUEST:Lcom/amazon/securewebviewclient/SslEventReason;

    invoke-direct {p0, v0, p1}, Lcom/amazon/securewebviewclient/SecureWebViewClient;->reportSslEvent(Lcom/amazon/securewebviewclient/SslEventReason;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private reportSslEvent(Lcom/amazon/securewebviewclient/SslEventReason;Ljava/lang/String;)V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/amazon/securewebviewclient/SecureWebViewClient;->sslEventListener:Lcom/amazon/securewebviewclient/SslEventListener;

    if-eqz v0, :cond_0

    .line 75
    iget-object v1, p0, Lcom/amazon/securewebviewclient/SecureWebViewClient;->currentHostPage:Ljava/lang/String;

    invoke-interface {v0, p1, p2, v1}, Lcom/amazon/securewebviewclient/SslEventListener;->onSslEvent(Lcom/amazon/securewebviewclient/SslEventReason;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 29
    iput-object p2, p0, Lcom/amazon/securewebviewclient/SecureWebViewClient;->currentHostPage:Ljava/lang/String;

    .line 30
    iget-object v0, p0, Lcom/amazon/securewebviewclient/WebViewClientDecorator;->delegate:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/16 v0, -0xb

    if-ne p2, v0, :cond_0

    .line 49
    sget-object v0, Lcom/amazon/securewebviewclient/SslEventReason;->SSL_HANDSHAKE_FAILED:Lcom/amazon/securewebviewclient/SslEventReason;

    invoke-direct {p0, v0, p4}, Lcom/amazon/securewebviewclient/SecureWebViewClient;->reportSslEvent(Lcom/amazon/securewebviewclient/SslEventReason;Ljava/lang/String;)V

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/amazon/securewebviewclient/WebViewClientDecorator;->delegate:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0

    .line 56
    invoke-static {p3}, Lcom/amazon/securewebviewclient/SslEventReason;->getReasonFromSslError(Landroid/net/http/SslError;)Lcom/amazon/securewebviewclient/SslEventReason;

    move-result-object p1

    invoke-virtual {p3}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p3}, Lcom/amazon/securewebviewclient/SecureWebViewClient;->reportSslEvent(Lcom/amazon/securewebviewclient/SslEventReason;Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    return-void
.end method

.method public final shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 1

    .line 40
    invoke-direct {p0, p2}, Lcom/amazon/securewebviewclient/SecureWebViewClient;->isHttpUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Landroid/webkit/WebResourceResponse;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2, p2}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amazon/securewebviewclient/WebViewClientDecorator;->delegate:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    .line 35
    invoke-direct {p0, p2}, Lcom/amazon/securewebviewclient/SecureWebViewClient;->isHttpUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amazon/securewebviewclient/WebViewClientDecorator;->delegate:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
