.class Lcom/amazon/android/webkit/android/AndroidWebChromeClient$1;
.super Ljava/lang/Object;
.source "AndroidWebChromeClient.java"

# interfaces
.implements Lcom/amazon/android/webkit/AmazonWebChromeClient$OnCreateWindowCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/webkit/android/AndroidWebChromeClient;->onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/android/webkit/android/AndroidWebChromeClient;

.field final synthetic val$resultMsg:Landroid/os/Message;


# direct methods
.method constructor <init>(Lcom/amazon/android/webkit/android/AndroidWebChromeClient;Landroid/os/Message;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/amazon/android/webkit/android/AndroidWebChromeClient$1;->this$0:Lcom/amazon/android/webkit/android/AndroidWebChromeClient;

    iput-object p2, p0, Lcom/amazon/android/webkit/android/AndroidWebChromeClient$1;->val$resultMsg:Landroid/os/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public allow(Lcom/amazon/android/webkit/AmazonWebView;)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebChromeClient$1;->val$resultMsg:Landroid/os/Message;

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/webkit/WebView$WebViewTransport;

    invoke-virtual {p1}, Lcom/amazon/android/webkit/AmazonWebView;->getWebViewDelegate()Lcom/amazon/android/webkit/AmazonWebViewDelegate;

    move-result-object p1

    check-cast p1, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;

    invoke-virtual {p1}, Lcom/amazon/android/webkit/android/AndroidWebViewDelegate;->getDelegate()Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/webkit/WebView$WebViewTransport;->setWebView(Landroid/webkit/WebView;)V

    .line 64
    iget-object p1, p0, Lcom/amazon/android/webkit/android/AndroidWebChromeClient$1;->val$resultMsg:Landroid/os/Message;

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public disallow()V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebChromeClient$1;->val$resultMsg:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
