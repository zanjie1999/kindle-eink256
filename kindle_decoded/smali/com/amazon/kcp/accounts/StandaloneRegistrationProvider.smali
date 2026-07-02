.class public Lcom/amazon/kcp/accounts/StandaloneRegistrationProvider;
.super Ljava/lang/Object;
.source "StandaloneRegistrationProvider.java"

# interfaces
.implements Lcom/amazon/kcp/accounts/RegistrationProvider;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final accountProvider:Lcom/amazon/kindle/services/authentication/IAccountProvider;

.field private final activity:Landroidx/appcompat/app/AppCompatActivity;

.field private final appController:Lcom/amazon/kcp/application/IAndroidApplicationController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const-class v0, Lcom/amazon/kcp/accounts/StandaloneRegistrationProvider;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/accounts/StandaloneRegistrationProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/app/AppCompatActivity;Lcom/amazon/kcp/application/IAndroidApplicationController;Lcom/amazon/kindle/services/authentication/IAccountProvider;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p3, p0, Lcom/amazon/kcp/accounts/StandaloneRegistrationProvider;->accountProvider:Lcom/amazon/kindle/services/authentication/IAccountProvider;

    .line 37
    iput-object p1, p0, Lcom/amazon/kcp/accounts/StandaloneRegistrationProvider;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 38
    iput-object p2, p0, Lcom/amazon/kcp/accounts/StandaloneRegistrationProvider;->appController:Lcom/amazon/kcp/application/IAndroidApplicationController;

    return-void
.end method

.method private startActivity(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 73
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/amazon/kcp/accounts/StandaloneRegistrationProvider;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p1, 0x20000

    .line 74
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 76
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    .line 78
    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    .line 79
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 81
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 87
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/accounts/StandaloneRegistrationProvider;->appController:Lcom/amazon/kcp/application/IAndroidApplicationController;

    invoke-interface {p1, v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public fetchCredentials()V
    .locals 3

    .line 43
    iget-object v0, p0, Lcom/amazon/kcp/accounts/StandaloneRegistrationProvider;->accountProvider:Lcom/amazon/kindle/services/authentication/IAccountProvider;

    invoke-interface {v0}, Lcom/amazon/kindle/services/authentication/IAccountProvider;->getPrimaryAccount()Ljava/lang/String;

    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/amazon/kcp/accounts/StandaloneRegistrationProvider;->accountProvider:Lcom/amazon/kindle/services/authentication/IAccountProvider;

    invoke-interface {v1}, Lcom/amazon/kindle/services/authentication/IAccountProvider;->getPrimaryAmazonAccount()Ljava/lang/String;

    move-result-object v1

    .line 45
    invoke-static {}, Lcom/amazon/kindle/trial/TrialModeMetricsManager;->getInstance()Lcom/amazon/kindle/trial/TrialModeMetrics;

    move-result-object v2

    .line 47
    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    sget-object v0, Lcom/amazon/kcp/accounts/StandaloneRegistrationProvider;->TAG:Ljava/lang/String;

    const-string v1, "Trying to get credentials but we already have an authorized account"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 52
    :cond_0
    invoke-static {v1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 58
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isComicsBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFOSDevice()Z

    move-result v0

    if-nez v0, :cond_2

    .line 59
    :cond_1
    sget-object v0, Lcom/amazon/kindle/trial/SignInLocation;->SSO:Lcom/amazon/kindle/trial/SignInLocation;

    invoke-interface {v2, v0}, Lcom/amazon/kindle/trial/TrialModeMetrics;->customerRequestedSignIn(Lcom/amazon/kindle/trial/SignInLocation;)V

    .line 60
    const-class v0, Lcom/amazon/kcp/accounts/RubyAccountConfirmationActivity;

    invoke-direct {p0, v0}, Lcom/amazon/kcp/accounts/StandaloneRegistrationProvider;->startActivity(Ljava/lang/Class;)V

    :cond_2
    return-void

    .line 69
    :cond_3
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getRegistrationManager()Lcom/amazon/kcp/application/IRegistrationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IRegistrationManager;->refresh()V

    return-void
.end method
