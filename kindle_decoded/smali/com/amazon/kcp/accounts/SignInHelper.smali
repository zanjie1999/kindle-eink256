.class public Lcom/amazon/kcp/accounts/SignInHelper;
.super Ljava/lang/Object;
.source "SignInHelper.java"


# static fields
.field private static final ERROR_DIALOG_TAG:Ljava/lang/String; = "SignInHelper_ErrorDialog"

.field private static final LOADING_DIALOG_TAG:Ljava/lang/String; = "SignInHelper_LoadingDialog"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private errorMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const-class v0, Lcom/amazon/kcp/accounts/SignInHelper;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/accounts/SignInHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/accounts/SignInHelper;Landroidx/fragment/app/FragmentActivity;Landroid/os/Bundle;Lcom/amazon/foundation/IStringCallback;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kcp/accounts/SignInHelper;->showWebViewSigninAfterAppConfig(Landroidx/fragment/app/FragmentActivity;Landroid/os/Bundle;Lcom/amazon/foundation/IStringCallback;)V

    return-void
.end method

.method static synthetic access$102(Lcom/amazon/kcp/accounts/SignInHelper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/amazon/kcp/accounts/SignInHelper;->errorMessage:Ljava/lang/String;

    return-object p1
.end method

.method private showWebViewSigninAfterAppConfig(Landroidx/fragment/app/FragmentActivity;Landroid/os/Bundle;Lcom/amazon/foundation/IStringCallback;)V
    .locals 2

    .line 123
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getRegistrationManager()Lcom/amazon/kcp/application/IRegistrationManager;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance p1, Lcom/amazon/kcp/accounts/SignInHelper$2;

    invoke-direct {p1, p0}, Lcom/amazon/kcp/accounts/SignInHelper$2;-><init>(Lcom/amazon/kcp/accounts/SignInHelper;)V

    invoke-interface {v0, v1, p3, p1, p2}, Lcom/amazon/kcp/application/IRegistrationManager;->showWebviewSignin(Ljava/lang/ref/WeakReference;Lcom/amazon/foundation/IStringCallback;Lcom/amazon/foundation/IStringCallback;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public onResume(Lcom/amazon/kcp/redding/ReddingActivity;)V
    .locals 3

    .line 44
    iget-object v0, p0, Lcom/amazon/kcp/accounts/SignInHelper;->errorMessage:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 45
    invoke-static {}, Lcom/amazon/kcp/application/WebViewSSLErrorHelper;->isProblematicChromeVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amazon/kcp/application/WebViewSSLErrorHelper;->isMAPWebViewSSLError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    new-instance v0, Lcom/amazon/kcp/application/WebViewSSLErrorHandler;

    const/4 v1, 0x1

    const-class v2, Lcom/amazon/kcp/accounts/SignInHelper;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/amazon/kcp/application/WebViewSSLErrorHandler;-><init>(ZLjava/lang/String;Landroid/app/Activity;)V

    .line 49
    invoke-virtual {v0}, Lcom/amazon/kcp/application/WebViewSSLErrorHandler;->handleWebViewSSLError()Z

    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$string;->error:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/amazon/kcp/accounts/SignInHelper;->errorMessage:Ljava/lang/String;

    const v2, 0x1080027

    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/library/ConfirmationDialogFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;I)Lcom/amazon/kcp/library/ConfirmationDialogFragment;

    move-result-object v0

    .line 54
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v1, "SignInHelper_ErrorDialog"

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 55
    iput-object p1, p0, Lcom/amazon/kcp/accounts/SignInHelper;->errorMessage:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method

.method public showWebviewSignin(Landroidx/fragment/app/FragmentActivity;)Z
    .locals 2

    .line 66
    new-instance v0, Lcom/amazon/kcp/accounts/AuthorizeAccountCallback;

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/amazon/kcp/accounts/AuthorizeAccountCallback;-><init>(Landroid/content/Context;Lcom/amazon/kcp/application/UserSettingsController;)V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/amazon/kcp/accounts/SignInHelper;->showWebviewSignin(Landroidx/fragment/app/FragmentActivity;Landroid/os/Bundle;Lcom/amazon/foundation/IStringCallback;)Z

    move-result p1

    return p1
.end method

.method public showWebviewSignin(Landroidx/fragment/app/FragmentActivity;Landroid/os/Bundle;)Z
    .locals 2

    .line 70
    new-instance v0, Lcom/amazon/kcp/accounts/AuthorizeAccountCallback;

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/amazon/kcp/accounts/AuthorizeAccountCallback;-><init>(Landroid/content/Context;Lcom/amazon/kcp/application/UserSettingsController;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/kcp/accounts/SignInHelper;->showWebviewSignin(Landroidx/fragment/app/FragmentActivity;Landroid/os/Bundle;Lcom/amazon/foundation/IStringCallback;)Z

    move-result p1

    return p1
.end method

.method public showWebviewSignin(Landroidx/fragment/app/FragmentActivity;Landroid/os/Bundle;Lcom/amazon/foundation/IStringCallback;)Z
    .locals 8

    .line 78
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/services/IReaderServicesObjectFactory;->getNetworkService()Lcom/amazon/kindle/network/INetworkService;

    move-result-object v0

    .line 79
    invoke-interface {v0}, Lcom/amazon/kindle/network/INetworkService;->hasNetworkConnectivity()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 80
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object p1

    const/4 p2, 0x0

    const-string p3, "ConnectionError"

    invoke-interface {p1, p3, p2}, Lcom/amazon/kcp/application/IUIMessaging;->showAlert(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 84
    :cond_0
    invoke-static {p1}, Lcom/amazon/kcp/application/WebViewSSLErrorHelper;->signalRegistrationStart(Landroid/content/Context;)V

    .line 86
    invoke-static {}, Lcom/amazon/kcp/application/AppConfigRequest;->hasSucceeded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kcp/accounts/SignInHelper;->showWebViewSigninAfterAppConfig(Landroidx/fragment/app/FragmentActivity;Landroid/os/Bundle;Lcom/amazon/foundation/IStringCallback;)V

    goto :goto_0

    .line 90
    :cond_1
    invoke-static {v1, v1}, Lcom/amazon/kcp/library/SpinnerDialogFragment;->newInstance(IZ)Lcom/amazon/kcp/library/SpinnerDialogFragment;

    move-result-object v0

    .line 91
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 94
    invoke-virtual {v3}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "SignInHelper_LoadingDialog"

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 95
    new-instance v0, Lcom/amazon/kcp/application/AppConfigRequest;

    new-instance v7, Lcom/amazon/kcp/accounts/SignInHelper$1;

    move-object v1, v7

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/amazon/kcp/accounts/SignInHelper$1;-><init>(Lcom/amazon/kcp/accounts/SignInHelper;Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentActivity;Landroid/os/Bundle;Lcom/amazon/foundation/IStringCallback;)V

    invoke-direct {v0, v7}, Lcom/amazon/kcp/application/AppConfigRequest;-><init>(Lcom/amazon/kcp/application/AppConfigRequest$IAppConfigListener;)V

    .line 111
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/services/IReaderServicesObjectFactory;->getWebRequestManager()Lcom/amazon/kindle/webservices/IWebRequestManager;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/amazon/kindle/webservices/IWebRequestManager;->addWebRequest(Lcom/amazon/kindle/webservices/IWebRequest;)Z

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
