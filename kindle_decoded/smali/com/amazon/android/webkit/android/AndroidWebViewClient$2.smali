.class Lcom/amazon/android/webkit/android/AndroidWebViewClient$2;
.super Lcom/amazon/android/webkit/AmazonSslErrorHandler;
.source "AndroidWebViewClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/webkit/android/AndroidWebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/android/webkit/android/AndroidWebViewClient;

.field final synthetic val$sslErrorHandler:Landroid/webkit/SslErrorHandler;


# direct methods
.method constructor <init>(Lcom/amazon/android/webkit/android/AndroidWebViewClient;Landroid/webkit/SslErrorHandler;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/amazon/android/webkit/android/AndroidWebViewClient$2;->this$0:Lcom/amazon/android/webkit/android/AndroidWebViewClient;

    iput-object p2, p0, Lcom/amazon/android/webkit/android/AndroidWebViewClient$2;->val$sslErrorHandler:Landroid/webkit/SslErrorHandler;

    invoke-direct {p0}, Lcom/amazon/android/webkit/AmazonSslErrorHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewClient$2;->val$sslErrorHandler:Landroid/webkit/SslErrorHandler;

    invoke-virtual {v0}, Landroid/webkit/SslErrorHandler;->cancel()V

    return-void
.end method

.method public proceed()V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewClient$2;->val$sslErrorHandler:Landroid/webkit/SslErrorHandler;

    invoke-virtual {v0}, Landroid/webkit/SslErrorHandler;->proceed()V

    return-void
.end method
