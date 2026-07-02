.class public Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "DCP"


# instance fields
.field private final gj:Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 83
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    const-string v0, "Activity"

    .line 84
    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/ik;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;

    invoke-direct {v0, p1}, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewClient;->gj:Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;)V
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 69
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    const-string v0, "MAPAndroidWebViewHelper"

    .line 70
    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/ik;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iput-object p1, p0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewClient;->gj:Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;

    return-void
.end method


# virtual methods
.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    const-string v0, "MAPAndroidWebViewClient"

    .line 95
    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewClient;->gj:Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->handleAuthentication(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 105
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 5
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Got an SSL error:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/net/http/SslError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "MAPAndroidWebViewClient"

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 164
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const/16 v3, 0xe

    if-lt v1, v3, :cond_0

    .line 166
    invoke-virtual {p3}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/identity/auth/device/ji;->dH(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 169
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 170
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "SSL error when hitting "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MAPWebViewSSLError_"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "SSL error!"

    .line 176
    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "MAPWebViewSSLError"

    .line 177
    invoke-static {v1, v0}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    .line 182
    :cond_1
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_2

    .line 185
    iget-object p1, p0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewClient;->gj:Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;

    invoke-virtual {p1, p3}, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->handleSSLError(Landroid/net/http/SslError;)V

    return-void

    .line 191
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 120
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getJavaScriptEnabled()Z

    move-result v0

    const-string v1, "MAPAndroidWebViewClient"

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "App disabled the JavaScript on WebView: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "MAPWebViewJavaScriptDisabled:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    .line 126
    :cond_0
    invoke-static {v1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewClient;->gj:Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->handleAuthentication(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
