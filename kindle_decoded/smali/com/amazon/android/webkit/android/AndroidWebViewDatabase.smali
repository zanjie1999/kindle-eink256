.class public Lcom/amazon/android/webkit/android/AndroidWebViewDatabase;
.super Lcom/amazon/android/webkit/AmazonWebViewDatabase;
.source "AndroidWebViewDatabase.java"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/amazon/android/webkit/AmazonWebViewDatabase;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDatabase;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public clearFormData()V
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDatabase;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/webkit/WebViewDatabase;->getInstance(Landroid/content/Context;)Landroid/webkit/WebViewDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebViewDatabase;->clearFormData()V

    return-void
.end method

.method public clearHttpAuthUsernamePassword()V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDatabase;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/webkit/WebViewDatabase;->getInstance(Landroid/content/Context;)Landroid/webkit/WebViewDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebViewDatabase;->clearHttpAuthUsernamePassword()V

    return-void
.end method

.method public clearUsernamePassword()V
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDatabase;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/webkit/WebViewDatabase;->getInstance(Landroid/content/Context;)Landroid/webkit/WebViewDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebViewDatabase;->clearUsernamePassword()V

    return-void
.end method

.method public hasFormData()Z
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDatabase;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/webkit/WebViewDatabase;->getInstance(Landroid/content/Context;)Landroid/webkit/WebViewDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebViewDatabase;->hasFormData()Z

    move-result v0

    return v0
.end method

.method public hasHttpAuthUsernamePassword()Z
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDatabase;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/webkit/WebViewDatabase;->getInstance(Landroid/content/Context;)Landroid/webkit/WebViewDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebViewDatabase;->hasHttpAuthUsernamePassword()Z

    move-result v0

    return v0
.end method

.method public hasUsernamePassword()Z
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/amazon/android/webkit/android/AndroidWebViewDatabase;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/webkit/WebViewDatabase;->getInstance(Landroid/content/Context;)Landroid/webkit/WebViewDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebViewDatabase;->hasUsernamePassword()Z

    move-result v0

    return v0
.end method
