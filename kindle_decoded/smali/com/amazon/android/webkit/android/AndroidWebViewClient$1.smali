.class Lcom/amazon/android/webkit/android/AndroidWebViewClient$1;
.super Lcom/amazon/android/webkit/AmazonHttpAuthHandler;
.source "AndroidWebViewClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/webkit/android/AndroidWebViewClient;->onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/android/webkit/android/AndroidWebViewClient;

.field final synthetic val$handler:Landroid/webkit/HttpAuthHandler;


# direct methods
.method constructor <init>(Lcom/amazon/android/webkit/android/AndroidWebViewClient;Landroid/webkit/HttpAuthHandler;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/amazon/android/webkit/android/AndroidWebViewClient$1;->this$0:Lcom/amazon/android/webkit/android/AndroidWebViewClient;

    iput-object p2, p0, Lcom/amazon/android/webkit/android/AndroidWebViewClient$1;->val$handler:Landroid/webkit/HttpAuthHandler;

    invoke-direct {p0}, Lcom/amazon/android/webkit/AmazonHttpAuthHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewClient$1;->val$handler:Landroid/webkit/HttpAuthHandler;

    invoke-virtual {v0}, Landroid/webkit/HttpAuthHandler;->cancel()V

    return-void
.end method

.method public proceed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewClient$1;->val$handler:Landroid/webkit/HttpAuthHandler;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/HttpAuthHandler;->proceed(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public useHttpAuthUsernamePassword()Z
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewClient$1;->val$handler:Landroid/webkit/HttpAuthHandler;

    invoke-virtual {v0}, Landroid/webkit/HttpAuthHandler;->useHttpAuthUsernamePassword()Z

    move-result v0

    return v0
.end method
