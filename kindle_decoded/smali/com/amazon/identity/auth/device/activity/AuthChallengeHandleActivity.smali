.class public Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity;
.super Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;
.source "DCP"


# instance fields
.field private eN:Ljava/lang/String;

.field private eO:Ljava/lang/String;

.field private eS:Ljava/lang/String;

.field private eT:Ljava/lang/String;

.field private eU:Ljava/lang/String;

.field private eV:Ljava/lang/String;

.field private eW:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity;)Ljava/lang/String;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity;->eT:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity;Ljava/net/URI;)Z
    .locals 2

    .line 1280
    iget-object p0, p0, Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity;->eO:Ljava/lang/String;

    invoke-static {p0}, Lcom/amazon/identity/auth/device/de;->bj(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 1286
    :cond_0
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 1287
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

.method static synthetic b(Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity;)Ljava/lang/String;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity;->eN:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity;)Ljava/lang/String;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity;->eU:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity;)Ljava/lang/String;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity;->eV:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method protected aN()Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper;
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->fa:Landroid/os/Bundle;

    const-string v1, "callback"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper;

    return-object v0
.end method

.method protected aO()Ljava/lang/String;
    .locals 1

    const-string v0, "AuthChallengeHandleActivity"

    return-object v0
.end method

.method protected aP()Ljava/lang/String;
    .locals 1

    const-string v0, "authchallengehandleactivitylayout"

    return-object v0
.end method

.method protected aQ()Ljava/lang/String;
    .locals 1

    const-string v0, "authchallengehandleactivitywebview"

    return-object v0
.end method

.method protected aR()V
    .locals 3

    const-string v0, "AuthChallengeHandleActivity"

    const-string v1, "Initializing params for Auth challenge UI Activity"

    .line 150
    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->fa:Landroid/os/Bundle;

    const-string v1, "auth_portal_config"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "com.amazon.identity.auth.device.api.TokenKeys.Options.ChallengeURLDomain"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity;->eS:Ljava/lang/String;

    .line 153
    iget-object v0, p0, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->fa:Landroid/os/Bundle;

    const-string v2, "challenge_url"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity;->eT:Ljava/lang/String;

    .line 154
    iget-object v0, p0, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->fa:Landroid/os/Bundle;

    const-string v2, "account_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity;->eN:Ljava/lang/String;

    .line 155
    iget-object v0, p0, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->fa:Landroid/os/Bundle;

    const-string v2, "actor_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity;->eU:Ljava/lang/String;

    .line 156
    iget-object v0, p0, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->fa:Landroid/os/Bundle;

    const-string v2, "com.amazon.dcp.sso.token.oauth.amazon.actor.access_token"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity;->eV:Ljava/lang/String;

    .line 157
    iget-object v0, p0, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->fa:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.amazon.identity.auth.device.api.TokenKeys.Options.ChallengeURLReturnToDomain"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity;->eW:Ljava/lang/String;

    .line 158
    invoke-static {v0}, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->aX(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity;->eO:Ljava/lang/String;

    return-void
.end method

.method protected aS()Ljava/lang/String;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity;->eT:Ljava/lang/String;

    return-object v0
.end method

.method protected aT()Ljava/lang/String;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity;->eN:Ljava/lang/String;

    return-object v0
.end method

.method protected aU()[Ljava/lang/String;
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->fa:Landroid/os/Bundle;

    const-string v1, "actor_cookies_for_request"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.amazon.identity.auth.device.api.cookiekeys.all"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected aV()V
    .locals 2

    const-string v0, "AuthChallengeHandleActivity"

    const-string v1, "Setting up webview client for Auth challenge activity."

    .line 198
    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    new-instance v0, Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity$3;

    invoke-direct {v0, p0}, Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity$3;-><init>(Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity;)V

    .line 275
    iget-object v1, p0, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->ek:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method protected aW()Ljava/lang/String;
    .locals 1

    const-string v0, "AuthChallengeHandleActivity_"

    return-object v0
.end method

.method protected k(Landroid/os/Bundle;)V
    .locals 1

    .line 104
    new-instance v0, Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity$2;

    invoke-direct {v0, p0, p1}, Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity$2;-><init>(Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity;Landroid/os/Bundle;)V

    invoke-static {v0}, Lcom/amazon/identity/auth/device/jf;->e(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 76
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 77
    invoke-virtual {p0}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Auth challenge webview called in package %s by package %s"

    .line 75
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AuthChallengeHandleActivity"

    invoke-static {v1, v0}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-super {p0, p1}, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->onCreate(Landroid/os/Bundle;)V

    .line 81
    iget-object p1, p0, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->ek:Landroid/webkit/WebView;

    new-instance v0, Lcom/amazon/identity/auth/device/fg;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->eq:Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->er:Lcom/amazon/identity/auth/device/fe;

    invoke-direct {v0, p1, v1, v2}, Lcom/amazon/identity/auth/device/fg;-><init>(Landroid/webkit/WebView;Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager;Lcom/amazon/identity/auth/device/fe;)V

    const-string v1, "MAPAndroidJSBridge"

    .line 1191
    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    new-instance p1, Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity$1;

    invoke-direct {p1, p0}, Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity$1;-><init>(Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
