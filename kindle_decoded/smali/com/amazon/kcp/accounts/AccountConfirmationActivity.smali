.class public Lcom/amazon/kcp/accounts/AccountConfirmationActivity;
.super Lcom/amazon/kcp/redding/ReddingActivity;
.source "AccountConfirmationActivity.java"


# static fields
.field private static final CUSTOMER_ACCOUNT_KEY:Ljava/lang/String; = "customerAccountKey"

.field private static final CUSTOMER_EMAIL_KEY:Ljava/lang/String; = "customerEmailKey"

.field private static final CUSTOMER_FIRSTNAME_KEY:Ljava/lang/String; = "customerFirstNameKey"

.field private static final CUSTOMER_INFORMATION_SHOWN_KEY:Ljava/lang/String; = "customerInformationShownKey"

.field private static final FADE_DURATION_MS:J = 0x12cL


# instance fields
.field private volatile account:Ljava/lang/String;

.field private authorizeCallback:Lcom/amazon/kcp/accounts/AuthorizeAccountCallback;

.field private customerEmail:Ljava/lang/String;

.field private customerFirstName:Ljava/lang/String;

.field private factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

.field private hasDisplayedCustomerInformation:Z

.field private signInHelper:Lcom/amazon/kcp/accounts/SignInHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/amazon/kcp/redding/ReddingActivity;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/amazon/kcp/accounts/AccountConfirmationActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/amazon/kcp/accounts/AccountConfirmationActivity;->customerFirstName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/amazon/kcp/accounts/AccountConfirmationActivity;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lcom/amazon/kcp/accounts/AccountConfirmationActivity;->hasDisplayedCustomerInformation:Z

    return p0
.end method

.method static synthetic access$202(Lcom/amazon/kcp/accounts/AccountConfirmationActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/amazon/kcp/accounts/AccountConfirmationActivity;->customerEmail:Ljava/lang/String;

    return-object p1
.end method

.method private getFirstName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 241
    invoke-static {p1}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, " "

    .line 242
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 243
    aget-object p1, p1, v0

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method private loadAmazonAccountInfo()V
    .locals 3

    .line 141
    iget-object v0, p0, Lcom/amazon/kcp/accounts/AccountConfirmationActivity;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAccountProvider()Lcom/amazon/kindle/services/authentication/IAccountProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/services/authentication/IAccountProvider;->getPrimaryAmazonAccount()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/accounts/AccountConfirmationActivity;->account:Ljava/lang/String;

    .line 142
    iget-object v0, p0, Lcom/amazon/kcp/accounts/AccountConfirmationActivity;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/services/authentication/TokenKey;->USER_NAME:Lcom/amazon/kindle/services/authentication/TokenKey;

    iget-object v2, p0, Lcom/amazon/kcp/accounts/AccountConfirmationActivity;->account:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/amazon/kcp/application/IAuthenticationManager;->fetchToken(Lcom/amazon/kindle/services/authentication/TokenKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/kcp/accounts/AccountConfirmationActivity;->getFirstName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/kcp/accounts/AccountConfirmationActivity;->updateUserName(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/amazon/kcp/accounts/AccountConfirmationActivity;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/services/authentication/TokenKey;->USER_EMAIL:Lcom/amazon/kindle/services/authentication/TokenKey;

    iget-object v2, p0, Lcom/amazon/kcp/accounts/AccountConfirmationActivity;->account:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/amazon/kcp/application/IAuthenticationManager;->fetchToken(Lcom/amazon/kindle/services/authentication/TokenKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/kcp/accounts/AccountConfirmationActivity;->updateEmail(Ljava/lang/String;)V

    return-void
.end method

.method private updateEmail(Ljava/lang/String;)V
    .locals 1

    .line 184
    new-instance v0, Lcom/amazon/kcp/accounts/AccountConfirmationActivity$2;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kcp/accounts/AccountConfirmationActivity$2;-><init>(Lcom/amazon/kcp/accounts/AccountConfirmationActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateUserName(Ljava/lang/String;)V
    .locals 1

    .line 155
    new-instance v0, Lcom/amazon/kcp/accounts/AccountConfirmationActivity$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kcp/accounts/AccountConfirmationActivity$1;-><init>(Lcom/amazon/kcp/accounts/AccountConfirmationActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    .line 180
    iput-boolean p1, p0, Lcom/amazon/kcp/accounts/AccountConfirmationActivity;->hasDisplayedCustomerInformation:Z

    return-void
.end method


# virtual methods
.method getContentView()I
    .locals 1

    .line 249
    sget v0, Lcom/amazon/kindle/thirdparty/R$layout;->account_confirmation:I

    return v0
.end method

.method public handleTokenFetchedEvent(Lcom/amazon/kindle/services/authentication/TokenFetchedEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 220
    iget-object v0, p0, Lcom/amazon/kcp/accounts/AccountConfirmationActivity;->account:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amazon/kcp/accounts/AccountConfirmationActivity;->account:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/amazon/kindle/services/authentication/TokenFetchedEvent;->getAccount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 224
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/services/authentication/TokenFetchedEvent;->getKey()Lcom/amazon/kindle/services/authentication/TokenKey;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/services/authentication/TokenKey;->USER_NAME:Lcom/amazon/kindle/services/authentication/TokenKey;

    if-ne v0, v1, :cond_1

    .line 225
    invoke-virtual {p1}, Lcom/amazon/kindle/services/authentication/TokenFetchedEvent;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/kcp/accounts/AccountConfirmationActivity;->getFirstName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 226
    invoke-direct {p0, p1}, Lcom/amazon/kcp/accounts/AccountConfirmationActivity;->updateUserName(Ljava/lang/String;)V

    goto :goto_0

    .line 227
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/kindle/services/authentication/TokenFetchedEvent;->getKey()Lcom/amazon/kindle/services/authentication/TokenKey;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/services/authentication/TokenKey;->USER_EMAIL:Lcom/amazon/kindle/services/authentication/TokenKey;

    if-ne v0, v1, :cond_2

    .line 228
    invoke-virtual {p1}, Lcom/amazon/kindle/services/authentication/TokenFetchedEvent;->getValue()Ljava/lang/String;

    move-result-object p1

    .line 229
    invoke-direct {p0, p1}, Lcom/amazon/kcp/accounts/AccountConfirmationActivity;->updateEmail(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    const/4 v0, 0x1

    .line 137
    invoke-virtual {p0, v0}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    return-void
.end method

.method public onContinueButtonClicked(Landroid/view/View;)V
    .locals 1

    .line 201
    iget-object p1, p0, Lcom/amazon/kcp/accounts/AccountConfirmationActivity;->authorizeCallback:Lcom/amazon/kcp/accounts/AuthorizeAccountCallback;

    iget-object v0, p0, Lcom/amazon/kcp/accounts/AccountConfirmationActivity;->account:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/accounts/AuthorizeAccountCallback;->execute(Ljava/lang/String;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 66
    invoke-static {p0}, Lcom/amazon/kcp/util/ActivityUtils;->ensureSafeWindowBackground(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    sget v0, Lcom/amazon/kindle/thirdparty/R$style;->Theme_TreeBoy_Ruby_Safe:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V

    .line 70
    :cond_0
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-virtual {p0}, Lcom/amazon/kcp/accounts/AccountConfirmationActivity;->getContentView()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 73
    invoke-static {p0}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/accounts/AccountConfirmationActivity;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    .line 74
    new-instance v1, Lcom/amazon/kcp/accounts/AuthorizeAccountCallback;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/amazon/kcp/accounts/AuthorizeAccountCallback;-><init>(Landroid/content/Context;Lcom/amazon/kcp/application/UserSettingsController;)V

    iput-object v1, p0, Lcom/amazon/kcp/accounts/AccountConfirmationActivity;->authorizeCallback:Lcom/amazon/kcp/accounts/AuthorizeAccountCallback;

    const-string v0, "customerAccountKey"

    const-string v1, "customerFirstNameKey"

    const-string v2, "customerInformationShownKey"

    const-string v3, "customerEmailKey"

    if-eqz p1, :cond_4

    .line 77
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 78
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/amazon/kcp/accounts/AccountConfirmationActivity;->customerEmail:Ljava/lang/String;

    .line 81
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 82
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/amazon/kcp/accounts/AccountConfirmationActivity;->hasDisplayedCustomerInformation:Z

    .line 85
    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 86
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/amazon/kcp/accounts/AccountConfirmationActivity;->customerFirstName:Ljava/lang/String;

    .line 89
    :cond_3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 90
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/amazon/kcp/accounts/AccountConfirmationActivity;->account:Ljava/lang/String;

    :cond_4
    if-eqz p1, :cond_6

    .line 96
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 97
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 98
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 99
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    .line 102
    :cond_5
    iget-object p1, p0, Lcom/amazon/kcp/accounts/AccountConfirmationActivity;->customerEmail:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/amazon/kcp/accounts/AccountConfirmationActivity;->updateEmail(Ljava/lang/String;)V

    .line 103
    iget-object p1, p0, Lcom/amazon/kcp/accounts/AccountConfirmationActivity;->customerFirstName:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/amazon/kcp/accounts/AccountConfirmationActivity;->updateUserName(Ljava/lang/String;)V

    goto :goto_1

    .line 100
    :cond_6
    :goto_0
    invoke-direct {p0}, Lcom/amazon/kcp/accounts/AccountConfirmationActivity;->loadAmazonAccountInfo()V

    .line 106
    :goto_1
    new-instance p1, Lcom/amazon/kcp/accounts/SignInHelper;

    invoke-direct {p1}, Lcom/amazon/kcp/accounts/SignInHelper;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/accounts/AccountConfirmationActivity;->signInHelper:Lcom/amazon/kcp/accounts/SignInHelper;

    return-void
.end method

.method public onPrivacyClicked(Landroid/view/View;)V
    .locals 1

    .line 209
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object p1

    sget-object v0, Lcom/amazon/kcp/RedirectUrlBuilder$RedirectTarget;->PRIVACY_POLICY:Lcom/amazon/kcp/RedirectUrlBuilder$RedirectTarget;

    invoke-static {v0}, Lcom/amazon/kcp/RedirectUrlBuilder;->getRedirectUrl(Lcom/amazon/kcp/RedirectUrlBuilder$RedirectTarget;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/amazon/kcp/application/IKindleApplicationController;->openUrl(Ljava/lang/String;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 124
    invoke-super {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->onResume()V

    .line 125
    iget-object v0, p0, Lcom/amazon/kcp/accounts/AccountConfirmationActivity;->signInHelper:Lcom/amazon/kcp/accounts/SignInHelper;

    invoke-virtual {v0, p0}, Lcom/amazon/kcp/accounts/SignInHelper;->onResume(Lcom/amazon/kcp/redding/ReddingActivity;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/amazon/kcp/accounts/AccountConfirmationActivity;->customerEmail:Ljava/lang/String;

    const-string v1, "customerEmailKey"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/amazon/kcp/accounts/AccountConfirmationActivity;->customerFirstName:Ljava/lang/String;

    const-string v1, "customerFirstNameKey"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-boolean v0, p0, Lcom/amazon/kcp/accounts/AccountConfirmationActivity;->hasDisplayedCustomerInformation:Z

    const-string v1, "customerInformationShownKey"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 151
    iget-object v0, p0, Lcom/amazon/kcp/accounts/AccountConfirmationActivity;->account:Ljava/lang/String;

    const-string v1, "customerAccountKey"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 112
    invoke-super {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->onStart()V

    .line 115
    iget-object v0, p0, Lcom/amazon/kcp/accounts/AccountConfirmationActivity;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAccountProvider()Lcom/amazon/kindle/services/authentication/IAccountProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/services/authentication/IAccountProvider;->getPrimaryAmazonAccount()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 119
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 130
    invoke-super {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->onStop()V

    .line 131
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    return-void
.end method

.method public onTermsClicked(Landroid/view/View;)V
    .locals 1

    .line 205
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object p1

    sget-object v0, Lcom/amazon/kcp/RedirectUrlBuilder$RedirectTarget;->TERMS_AND_CONDITIONS:Lcom/amazon/kcp/RedirectUrlBuilder$RedirectTarget;

    invoke-static {v0}, Lcom/amazon/kcp/RedirectUrlBuilder;->getRedirectUrl(Lcom/amazon/kcp/RedirectUrlBuilder$RedirectTarget;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/amazon/kcp/application/IKindleApplicationController;->openUrl(Ljava/lang/String;)V

    return-void
.end method

.method public onUseDifferentAccountClicked(Landroid/view/View;)V
    .locals 2

    .line 213
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 214
    invoke-static {}, Lcom/amazon/kindle/map/MAPRegistrationManager;->getPageId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "pageIdOverride"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/amazon/kcp/accounts/AccountConfirmationActivity;->signInHelper:Lcom/amazon/kcp/accounts/SignInHelper;

    invoke-virtual {v0, p0, p1}, Lcom/amazon/kcp/accounts/SignInHelper;->showWebviewSignin(Landroidx/fragment/app/FragmentActivity;Landroid/os/Bundle;)Z

    return-void
.end method

.method public requiresRegistration()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
