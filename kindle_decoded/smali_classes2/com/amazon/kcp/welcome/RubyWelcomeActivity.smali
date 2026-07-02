.class public Lcom/amazon/kcp/welcome/RubyWelcomeActivity;
.super Lcom/amazon/kcp/redding/ReddingActivity;
.source "RubyWelcomeActivity.java"


# instance fields
.field private factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

.field private signInHelper:Lcom/amazon/kcp/accounts/SignInHelper;

.field private thirdPartyAuthorizeHelper:Lcom/amazon/kcp/accounts/ThirdPartyAuthorizeHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/amazon/kcp/redding/ReddingActivity;-><init>()V

    return-void
.end method

.method private static shouldAttemptSignIn(Lcom/amazon/kindle/services/authentication/IAccountProvider;Lcom/amazon/kindle/services/authentication/IAccountInfo;)Z
    .locals 0

    .line 84
    invoke-interface {p0}, Lcom/amazon/kindle/services/authentication/IAccountProvider;->getPrimaryAmazonAccount()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 85
    invoke-static {p1}, Lcom/amazon/kindle/services/authentication/DefaultAccount;->isDefaultAccount(Lcom/amazon/kindle/services/authentication/IAccountInfo;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public finish()V
    .locals 1

    .line 95
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x0

    .line 99
    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    const/4 v0, 0x1

    .line 90
    invoke-virtual {p0, v0}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 30
    invoke-static {p0}, Lcom/amazon/kcp/util/ActivityUtils;->ensureSafeWindowBackground(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 31
    sget v0, Lcom/amazon/kindle/thirdparty/R$style;->Theme_TreeBoy_Ruby_Safe:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V

    .line 34
    :cond_0
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-static {p0}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/welcome/RubyWelcomeActivity;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    .line 36
    new-instance p1, Lcom/amazon/kcp/accounts/SignInHelper;

    invoke-direct {p1}, Lcom/amazon/kcp/accounts/SignInHelper;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/welcome/RubyWelcomeActivity;->signInHelper:Lcom/amazon/kcp/accounts/SignInHelper;

    .line 37
    const-class p1, Lcom/amazon/kcp/accounts/ThirdPartyAuthorizeHelper;

    invoke-static {p1}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/accounts/ThirdPartyAuthorizeHelper;

    iput-object p1, p0, Lcom/amazon/kcp/welcome/RubyWelcomeActivity;->thirdPartyAuthorizeHelper:Lcom/amazon/kcp/accounts/ThirdPartyAuthorizeHelper;

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 55
    invoke-super {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->onResume()V

    .line 56
    iget-object v0, p0, Lcom/amazon/kcp/welcome/RubyWelcomeActivity;->signInHelper:Lcom/amazon/kcp/accounts/SignInHelper;

    invoke-virtual {v0, p0}, Lcom/amazon/kcp/accounts/SignInHelper;->onResume(Lcom/amazon/kcp/redding/ReddingActivity;)V

    .line 58
    iget-object v0, p0, Lcom/amazon/kcp/welcome/RubyWelcomeActivity;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAccountProvider()Lcom/amazon/kindle/services/authentication/IAccountProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/welcome/RubyWelcomeActivity;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    .line 59
    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IAuthenticationManager;->getAccountInfo()Lcom/amazon/kindle/services/authentication/IAccountInfo;

    move-result-object v1

    .line 58
    invoke-static {v0, v1}, Lcom/amazon/kcp/welcome/RubyWelcomeActivity;->shouldAttemptSignIn(Lcom/amazon/kindle/services/authentication/IAccountProvider;Lcom/amazon/kindle/services/authentication/IAccountInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/amazon/kcp/welcome/RubyWelcomeActivity;->thirdPartyAuthorizeHelper:Lcom/amazon/kcp/accounts/ThirdPartyAuthorizeHelper;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kcp/accounts/ThirdPartyAuthorizeHelper;->awaitingThirdPartyAuthorization()Z

    move-result v0

    if-nez v0, :cond_2

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/welcome/RubyWelcomeActivity;->signInHelper:Lcom/amazon/kcp/accounts/SignInHelper;

    invoke-virtual {v0, p0}, Lcom/amazon/kcp/accounts/SignInHelper;->showWebviewSignin(Landroidx/fragment/app/FragmentActivity;)Z

    goto :goto_0

    .line 66
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kcp/welcome/RubyWelcomeActivity;->finish()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 42
    invoke-super {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->onStart()V

    .line 44
    iget-object v0, p0, Lcom/amazon/kcp/welcome/RubyWelcomeActivity;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAccountProvider()Lcom/amazon/kindle/services/authentication/IAccountProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/welcome/RubyWelcomeActivity;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    .line 45
    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IAuthenticationManager;->getAccountInfo()Lcom/amazon/kindle/services/authentication/IAccountInfo;

    move-result-object v1

    .line 44
    invoke-static {v0, v1}, Lcom/amazon/kcp/welcome/RubyWelcomeActivity;->shouldAttemptSignIn(Lcom/amazon/kindle/services/authentication/IAccountProvider;Lcom/amazon/kindle/services/authentication/IAccountInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/amazon/kcp/welcome/RubyWelcomeActivity;->finish()V

    :cond_0
    return-void
.end method

.method public requiresRegistration()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
