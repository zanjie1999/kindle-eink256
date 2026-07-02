.class public abstract Lcom/amazon/securewebviewclient/WebViewClientDecorator;
.super Landroid/webkit/WebViewClient;
.source "WebViewClientDecorator.java"


# instance fields
.field protected final delegate:Landroid/webkit/WebViewClient;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 29
    new-instance v0, Landroid/webkit/WebViewClient;

    invoke-direct {v0}, Landroid/webkit/WebViewClient;-><init>()V

    iput-object v0, p0, Lcom/amazon/securewebviewclient/WebViewClientDecorator;->delegate:Landroid/webkit/WebViewClient;

    return-void
.end method

.method protected constructor <init>(Landroid/webkit/WebViewClient;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 25
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroid/webkit/WebViewClient;

    iput-object p1, p0, Lcom/amazon/securewebviewclient/WebViewClientDecorator;->delegate:Landroid/webkit/WebViewClient;

    return-void
.end method


# virtual methods
.method public doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/amazon/securewebviewclient/WebViewClientDecorator;->delegate:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    return-void
.end method

.method public onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/amazon/securewebviewclient/WebViewClientDecorator;->delegate:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V

    return-void
.end method

.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/amazon/securewebviewclient/WebViewClientDecorator;->delegate:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/amazon/securewebviewclient/WebViewClientDecorator;->delegate:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/amazon/securewebviewclient/WebViewClientDecorator;->delegate:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedLoginRequest(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/amazon/securewebviewclient/WebViewClientDecorator;->delegate:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedLoginRequest(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onScaleChanged(Landroid/webkit/WebView;FF)V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/amazon/securewebviewclient/WebViewClientDecorator;->delegate:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onScaleChanged(Landroid/webkit/WebView;FF)V

    return-void
.end method

.method public onTooManyRedirects(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/amazon/securewebviewclient/WebViewClientDecorator;->delegate:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onTooManyRedirects(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V

    return-void
.end method

.method public onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/amazon/securewebviewclient/WebViewClientDecorator;->delegate:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V

    return-void
.end method

.method public shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/amazon/securewebviewclient/WebViewClientDecorator;->delegate:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
