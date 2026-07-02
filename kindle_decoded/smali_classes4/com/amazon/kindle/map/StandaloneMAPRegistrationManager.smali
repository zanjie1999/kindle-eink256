.class public Lcom/amazon/kindle/map/StandaloneMAPRegistrationManager;
.super Lcom/amazon/kindle/map/MAPRegistrationManager;
.source "StandaloneMAPRegistrationManager.java"


# static fields
.field private static final ASSOCIATION_HANDLE:Ljava/lang/String; = "openid.assoc_handle"

.field private static final DEFAULT_COUNTRY:Ljava/lang/String;

.field private static final LANGUAGE_PARAMETER:Ljava/lang/String; = "language"

.field private static final SPINNER_DIALOG_ID:Ljava/lang/String; = "StandaloneMAPRegistrationManager_SPINNER"


# instance fields
.field private countryLocale:Ljava/lang/String;

.field private countryLocation:Ljava/lang/String;

.field private pendingSigninRunnable:Ljava/lang/Runnable;

.field private releaseRegion:Ljava/lang/String;

.field private signinByReleaseRegion:Z

.field private spinnerDialogFragment:Lcom/amazon/kcp/library/SpinnerDialogFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/Marketplace;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/map/StandaloneMAPRegistrationManager;->DEFAULT_COUNTRY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 54
    invoke-direct {p0, p1}, Lcom/amazon/kindle/map/MAPRegistrationManager;-><init>(Landroid/content/Context;)V

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/thirdparty/R$bool;->signin_based_on_release_region:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazon/kindle/map/StandaloneMAPRegistrationManager;->signinByReleaseRegion:Z

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/thirdparty/R$string;->kindle_release_region:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/map/StandaloneMAPRegistrationManager;->releaseRegion:Ljava/lang/String;

    .line 57
    sget-object p1, Lcom/amazon/kindle/map/StandaloneMAPRegistrationManager;->DEFAULT_COUNTRY:Ljava/lang/String;

    iput-object p1, p0, Lcom/amazon/kindle/map/StandaloneMAPRegistrationManager;->countryLocation:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/map/StandaloneMAPRegistrationManager;Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/amazon/kindle/map/StandaloneMAPRegistrationManager;->onGetCountryFinished(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$101(Lcom/amazon/kindle/map/StandaloneMAPRegistrationManager;Ljava/lang/ref/WeakReference;Lcom/amazon/foundation/IStringCallback;Lcom/amazon/foundation/IStringCallback;Landroid/os/Bundle;)V
    .locals 0

    .line 34
    invoke-super {p0, p1, p2, p3, p4}, Lcom/amazon/kindle/map/MAPRegistrationManager;->showWebviewSignin(Ljava/lang/ref/WeakReference;Lcom/amazon/foundation/IStringCallback;Lcom/amazon/foundation/IStringCallback;Landroid/os/Bundle;)V

    return-void
.end method

.method private onGetCountryFinished(Ljava/lang/String;)V
    .locals 1

    .line 89
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/amazon/kindle/map/StandaloneMAPRegistrationManager;->DEFAULT_COUNTRY:Ljava/lang/String;

    :cond_0
    iput-object p1, p0, Lcom/amazon/kindle/map/StandaloneMAPRegistrationManager;->countryLocation:Ljava/lang/String;

    .line 91
    iget-object p1, p0, Lcom/amazon/kindle/map/StandaloneMAPRegistrationManager;->spinnerDialogFragment:Lcom/amazon/kcp/library/SpinnerDialogFragment;

    if-eqz p1, :cond_2

    .line 94
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 95
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_1

    .line 96
    iget-object p1, p0, Lcom/amazon/kindle/map/StandaloneMAPRegistrationManager;->spinnerDialogFragment:Lcom/amazon/kcp/library/SpinnerDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 98
    :cond_1
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kindle/map/StandaloneMAPRegistrationManager;->pendingSigninRunnable:Ljava/lang/Runnable;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 99
    iput-object p1, p0, Lcom/amazon/kindle/map/StandaloneMAPRegistrationManager;->spinnerDialogFragment:Lcom/amazon/kcp/library/SpinnerDialogFragment;

    .line 100
    iput-object p1, p0, Lcom/amazon/kindle/map/StandaloneMAPRegistrationManager;->pendingSigninRunnable:Ljava/lang/Runnable;

    :cond_2
    return-void
.end method


# virtual methods
.method public deregisterDevice(Lcom/amazon/foundation/ICallback;Lcom/amazon/foundation/IStringCallback;)V
    .locals 0

    .line 185
    invoke-super {p0, p1, p2}, Lcom/amazon/kindle/map/MAPRegistrationManager;->deregisterDevice(Lcom/amazon/foundation/ICallback;Lcom/amazon/foundation/IStringCallback;)V

    return-void
.end method

.method public getWebviewOptions()Landroid/os/Bundle;
    .locals 5

    .line 137
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 139
    iget-object v1, p0, Lcom/amazon/kindle/map/MAPRegistrationManager;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/thirdparty/R$string;->lang_code:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "en"

    .line 142
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "language"

    if-eqz v2, :cond_0

    const-string v1, "en_US"

    .line 143
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v2, "zh"

    .line 144
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 147
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/amazon/kindle/map/StandaloneMAPRegistrationManager;->signinByReleaseRegion:Z

    if-eqz v1, :cond_2

    .line 151
    iget-object v1, p0, Lcom/amazon/kindle/map/StandaloneMAPRegistrationManager;->releaseRegion:Ljava/lang/String;

    goto :goto_1

    .line 152
    :cond_2
    sget-object v1, Lcom/amazon/kcp/application/Marketplace;->IN:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v1}, Lcom/amazon/kcp/application/Marketplace;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kindle/map/StandaloneMAPRegistrationManager;->countryLocation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 157
    iget-object v1, p0, Lcom/amazon/kindle/map/StandaloneMAPRegistrationManager;->countryLocation:Ljava/lang/String;

    goto :goto_1

    .line 158
    :cond_3
    sget-object v1, Lcom/amazon/kcp/application/Marketplace;->CN:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v1}, Lcom/amazon/kcp/application/Marketplace;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kindle/map/StandaloneMAPRegistrationManager;->countryLocale:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 162
    iget-object v1, p0, Lcom/amazon/kindle/map/StandaloneMAPRegistrationManager;->countryLocation:Ljava/lang/String;

    goto :goto_1

    .line 164
    :cond_4
    iget-object v1, p0, Lcom/amazon/kindle/map/StandaloneMAPRegistrationManager;->countryLocale:Ljava/lang/String;

    .line 168
    :goto_1
    invoke-super {p0}, Lcom/amazon/kindle/map/MAPRegistrationManager;->getWebviewOptions()Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, "com.amazon.dcp.sso.AddAccount.options.AddAsSecondary"

    .line 169
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 170
    sget-object v3, Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ProgressBarState;->SPINNER_LARGE:Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ProgressBarState;

    const-string v4, "progressbar_state"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 171
    sget-object v3, Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;->CENTER_CENTER:Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;

    const-string v4, "progressbar_position"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 172
    invoke-static {}, Lcom/amazon/kindle/map/AuthPortalInfoProvider;->getInstance()Lcom/amazon/kindle/map/AuthPortalInfoProvider;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/amazon/kindle/map/AuthPortalInfoProvider;->getDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.amazon.identity.ap.domain"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    new-instance v3, Ljava/util/ArrayList;

    const-string v4, ".amazoneducation.com"

    .line 174
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v4, "signin_domains"

    .line 173
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 176
    invoke-static {}, Lcom/amazon/kindle/map/MAPRegistrationManager;->getPageId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pageId"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-static {}, Lcom/amazon/kindle/map/AuthPortalInfoProvider;->getInstance()Lcom/amazon/kindle/map/AuthPortalInfoProvider;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/amazon/kindle/map/AuthPortalInfoProvider;->getHandle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "openid.assoc_handle"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.amazon.identity.ap.request.parameters"

    .line 178
    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v2
.end method

.method protected handleMAPWebViewSSLError(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "com.amazon.identity.WebViewSSLErrorCode"

    .line 190
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 192
    invoke-static {}, Lcom/amazon/kcp/application/WebViewSSLErrorHelper;->signalMAPWebViewSSLError()V

    :cond_0
    return-void
.end method

.method public refresh()V
    .locals 2

    .line 62
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/map/StandaloneMAPRegistrationManager;->countryLocale:Ljava/lang/String;

    .line 69
    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amazon/kcp/application/StandaloneApplicationCapabilities;->isChromebook()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 71
    sget-object v1, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    sget-object v0, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/map/StandaloneMAPRegistrationManager;->countryLocale:Ljava/lang/String;

    .line 76
    :cond_0
    new-instance v0, Lcom/amazon/kindle/map/StandaloneMAPRegistrationManager$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/map/StandaloneMAPRegistrationManager$1;-><init>(Lcom/amazon/kindle/map/StandaloneMAPRegistrationManager;)V

    .line 84
    new-instance v1, Lcom/amazon/kcp/info/GetCountryRequest;

    invoke-direct {v1, v0}, Lcom/amazon/kcp/info/GetCountryRequest;-><init>(Lcom/amazon/kindle/callback/ICallback;)V

    .line 85
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/services/IReaderServicesObjectFactory;->getWebRequestManager()Lcom/amazon/kindle/webservices/IWebRequestManager;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/amazon/kindle/webservices/IWebRequestManager;->addWebRequest(Lcom/amazon/kindle/webservices/IWebRequest;)Z

    return-void
.end method

.method public showWebviewSignin(Ljava/lang/ref/WeakReference;Lcom/amazon/foundation/IStringCallback;Lcom/amazon/foundation/IStringCallback;Landroid/os/Bundle;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/fragment/app/FragmentActivity;",
            ">;",
            "Lcom/amazon/foundation/IStringCallback;",
            "Lcom/amazon/foundation/IStringCallback;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 106
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    if-nez v0, :cond_0

    return-void

    .line 109
    :cond_0
    iget-boolean v1, p0, Lcom/amazon/kindle/map/StandaloneMAPRegistrationManager;->signinByReleaseRegion:Z

    if-eqz v1, :cond_1

    .line 110
    invoke-super {p0, p1, p2, p3, p4}, Lcom/amazon/kindle/map/MAPRegistrationManager;->showWebviewSignin(Ljava/lang/ref/WeakReference;Lcom/amazon/foundation/IStringCallback;Lcom/amazon/foundation/IStringCallback;Landroid/os/Bundle;)V

    goto :goto_0

    .line 112
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kindle/map/StandaloneMAPRegistrationManager;->refresh()V

    .line 115
    new-instance v1, Lcom/amazon/kindle/map/StandaloneMAPRegistrationManager$2;

    move-object v2, v1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/amazon/kindle/map/StandaloneMAPRegistrationManager$2;-><init>(Lcom/amazon/kindle/map/StandaloneMAPRegistrationManager;Ljava/lang/ref/WeakReference;Lcom/amazon/foundation/IStringCallback;Lcom/amazon/foundation/IStringCallback;Landroid/os/Bundle;)V

    iput-object v1, p0, Lcom/amazon/kindle/map/StandaloneMAPRegistrationManager;->pendingSigninRunnable:Ljava/lang/Runnable;

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 123
    invoke-static {p1, p2}, Lcom/amazon/kcp/library/SpinnerDialogFragment;->newInstance(IZ)Lcom/amazon/kcp/library/SpinnerDialogFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/map/StandaloneMAPRegistrationManager;->spinnerDialogFragment:Lcom/amazon/kcp/library/SpinnerDialogFragment;

    .line 124
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 125
    iget-object p2, p0, Lcom/amazon/kindle/map/StandaloneMAPRegistrationManager;->spinnerDialogFragment:Lcom/amazon/kcp/library/SpinnerDialogFragment;

    const-string p3, "StandaloneMAPRegistrationManager_SPINNER"

    invoke-virtual {p1, p2, p3}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 126
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    .line 129
    :cond_2
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_3
    :goto_0
    return-void
.end method
