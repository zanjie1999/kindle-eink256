.class public Lcom/amazon/identity/auth/device/activity/ActorSignUpAndEnrollActivity;
.super Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;
.source "DCP"


# instance fields
.field private eM:Ljava/lang/String;

.field private eN:Ljava/lang/String;

.field private eO:Ljava/lang/String;

.field private eP:Lcom/amazon/identity/auth/device/fg;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/amazon/identity/auth/device/activity/ActorSignUpAndEnrollActivity;)Ljava/lang/String;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/amazon/identity/auth/device/activity/ActorSignUpAndEnrollActivity;->eM:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/amazon/identity/auth/device/activity/ActorSignUpAndEnrollActivity;Ljava/net/URI;)Z
    .locals 2

    .line 1233
    iget-object p0, p0, Lcom/amazon/identity/auth/device/activity/ActorSignUpAndEnrollActivity;->eO:Ljava/lang/String;

    invoke-static {p0}, Lcom/amazon/identity/auth/device/de;->bj(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 1239
    :cond_0
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 1240
    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string p1, "/ap/maplanding"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method static synthetic b(Lcom/amazon/identity/auth/device/activity/ActorSignUpAndEnrollActivity;)Landroid/os/Bundle;
    .locals 3

    .line 2225
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "result_code"

    const/4 v2, 0x1

    .line 2226
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2227
    iget-object p0, p0, Lcom/amazon/identity/auth/device/activity/ActorSignUpAndEnrollActivity;->eP:Lcom/amazon/identity/auth/device/fg;

    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/fg;->ev()Ljava/lang/String;

    move-result-object p0

    const-string v1, "actor_id"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected aN()Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper;
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->fa:Landroid/os/Bundle;

    const-string v1, "callback"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper;

    return-object v0
.end method

.method protected aO()Ljava/lang/String;
    .locals 1

    const-string v0, "ActorSignUpAndEnrollActivity"

    return-object v0
.end method

.method protected aP()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "signupandenrollwebviewlayout"

    return-object v0
.end method

.method protected aQ()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "signupandenrollwebview"

    return-object v0
.end method

.method protected aR()V
    .locals 4

    const-string v0, "ActorSignUpAndEnrollActivity"

    const-string v1, "Initializing params for actor sign up and enroll UI Activity"

    .line 125
    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->fa:Landroid/os/Bundle;

    const-string v1, "load_url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/identity/auth/device/activity/ActorSignUpAndEnrollActivity;->eM:Ljava/lang/String;

    .line 127
    iget-object v0, p0, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->fa:Landroid/os/Bundle;

    const-string v1, "account_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/identity/auth/device/activity/ActorSignUpAndEnrollActivity;->eN:Ljava/lang/String;

    .line 128
    iget-object v0, p0, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->fa:Landroid/os/Bundle;

    const-string/jumbo v1, "return_to_url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/identity/auth/device/activity/ActorSignUpAndEnrollActivity;->eO:Ljava/lang/String;

    .line 129
    new-instance v0, Lcom/amazon/identity/auth/device/fg;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->ek:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->eq:Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->er:Lcom/amazon/identity/auth/device/fe;

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/identity/auth/device/fg;-><init>(Landroid/webkit/WebView;Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager;Lcom/amazon/identity/auth/device/fe;)V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/activity/ActorSignUpAndEnrollActivity;->eP:Lcom/amazon/identity/auth/device/fg;

    return-void
.end method

.method protected aS()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/amazon/identity/auth/device/activity/ActorSignUpAndEnrollActivity;->eM:Ljava/lang/String;

    return-object v0
.end method

.method protected aT()Ljava/lang/String;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/amazon/identity/auth/device/activity/ActorSignUpAndEnrollActivity;->eN:Ljava/lang/String;

    return-object v0
.end method

.method protected aU()[Ljava/lang/String;
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->fa:Landroid/os/Bundle;

    const-string v1, "account_cookies_for_request"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.amazon.identity.auth.device.api.cookiekeys.all"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected aV()V
    .locals 2

    const-string v0, "ActorSignUpAndEnrollActivity"

    const-string v1, "Setting up webview client for sign up and enroll activity."

    .line 159
    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    new-instance v0, Lcom/amazon/identity/auth/device/activity/ActorSignUpAndEnrollActivity$3;

    invoke-direct {v0, p0}, Lcom/amazon/identity/auth/device/activity/ActorSignUpAndEnrollActivity$3;-><init>(Lcom/amazon/identity/auth/device/activity/ActorSignUpAndEnrollActivity;)V

    .line 208
    iget-object v1, p0, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->ek:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method protected aW()Ljava/lang/String;
    .locals 1

    const-string v0, "ActorSignUpAndEnrollActivity_"

    return-object v0
.end method

.method protected k(Landroid/os/Bundle;)V
    .locals 1

    .line 103
    new-instance v0, Lcom/amazon/identity/auth/device/activity/ActorSignUpAndEnrollActivity$2;

    invoke-direct {v0, p0, p1}, Lcom/amazon/identity/auth/device/activity/ActorSignUpAndEnrollActivity$2;-><init>(Lcom/amazon/identity/auth/device/activity/ActorSignUpAndEnrollActivity;Landroid/os/Bundle;)V

    invoke-static {v0}, Lcom/amazon/identity/auth/device/jf;->e(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 56
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 57
    invoke-virtual {p0}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Actor sign up and enroll webview called in package %s by package %s"

    .line 55
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActorSignUpAndEnrollActivity"

    invoke-static {v1, v0}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-super {p0, p1}, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->onCreate(Landroid/os/Bundle;)V

    .line 61
    iget-object p1, p0, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->ek:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/amazon/identity/auth/device/activity/ActorSignUpAndEnrollActivity;->eP:Lcom/amazon/identity/auth/device/fg;

    .line 1216
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    const-string v1, "MAPAndroidJSBridge"

    .line 1218
    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    :cond_0
    new-instance p1, Lcom/amazon/identity/auth/device/activity/ActorSignUpAndEnrollActivity$1;

    invoke-direct {p1, p0}, Lcom/amazon/identity/auth/device/activity/ActorSignUpAndEnrollActivity$1;-><init>(Lcom/amazon/identity/auth/device/activity/ActorSignUpAndEnrollActivity;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
