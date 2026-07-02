.class public Lcom/amazon/bookwizard/ui/BookWizardActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "BookWizardActivity.java"

# interfaces
.implements Lcom/amazon/bookwizard/ui/fragment/NetworkErrorDialogFragment$NetworkErrorListener;


# static fields
.field private static final KEY_CONFIG:Ljava/lang/String; = "config"

.field public static final KEY_COR:Ljava/lang/String; = "cor"

.field public static final KEY_COR_INFERRED:Ljava/lang/String; = "cor_inferred"

.field public static final KEY_ELIGIBLE_FOR_MONTH:Ljava/lang/String; = "eligible_for_month"

.field public static final KEY_ELIGIBLE_FOR_PREVIEW:Ljava/lang/String; = "eligible_for_preview"

.field public static final KEY_IS_VIA_NOTIFICATION:Ljava/lang/String; = "is_via_notification"

.field private static final TAG:Ljava/lang/String;

.field private static final TAG_NETWORK_DIALOG:Ljava/lang/String; = "NETWORK_UNAVAILBLE_DIALOG"


# instance fields
.field private config:Lcom/amazon/bookwizard/BookWizardConfig;

.field private data:Lcom/amazon/bookwizard/data/DataProvider;

.field private navigationController:Lcom/amazon/bookwizard/BookWizardNavigationController;

.field private sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    const-class v0, Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/bookwizard/ui/BookWizardActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .line 138
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    const-string v0, "BookWizard"

    .line 140
    invoke-static {v0}, Lcom/amazon/bookwizard/util/M;->hide(Ljava/lang/String;)V

    .line 141
    sget-object v0, Lcom/amazon/bookwizard/ui/BookWizardActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onFinish: Closing metrics objects"

    invoke-static {v0, v1}, Lcom/amazon/bookwizard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getBookDetailController()Lcom/amazon/bookwizard/bookdetail/BookDetailController;
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/amazon/bookwizard/ui/BookWizardActivity;->navigationController:Lcom/amazon/bookwizard/BookWizardNavigationController;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/BookWizardNavigationController;->getBookDetailController()Lcom/amazon/bookwizard/bookdetail/BookDetailController;

    move-result-object v0

    return-object v0
.end method

.method public getConfig()Lcom/amazon/bookwizard/BookWizardConfig;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/amazon/bookwizard/ui/BookWizardActivity;->config:Lcom/amazon/bookwizard/BookWizardConfig;

    return-object v0
.end method

.method public getCurrentStep()Lcom/amazon/bookwizard/service/FlowStep;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/amazon/bookwizard/ui/BookWizardActivity;->navigationController:Lcom/amazon/bookwizard/BookWizardNavigationController;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/BookWizardNavigationController;->getCurrentStep()Lcom/amazon/bookwizard/service/FlowStep;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceInfo()Lcom/amazon/kindle/krx/application/IDeviceInformation;
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/amazon/bookwizard/ui/BookWizardActivity;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getDeviceInformation()Lcom/amazon/kindle/krx/application/IDeviceInformation;

    move-result-object v0

    return-object v0
.end method

.method public getNavigationController()Lcom/amazon/bookwizard/BookWizardNavigationController;
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/amazon/bookwizard/ui/BookWizardActivity;->navigationController:Lcom/amazon/bookwizard/BookWizardNavigationController;

    return-object v0
.end method

.method public getRatingsController()Lcom/amazon/bookwizard/ratings/RatingsController;
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/amazon/bookwizard/ui/BookWizardActivity;->navigationController:Lcom/amazon/bookwizard/BookWizardNavigationController;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/BookWizardNavigationController;->getRatingsController()Lcom/amazon/bookwizard/ratings/RatingsController;

    move-result-object v0

    return-object v0
.end method

.method public getWelcomeScreenController()Lcom/amazon/bookwizard/welcome/WelcomeScreenController;
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/amazon/bookwizard/ui/BookWizardActivity;->navigationController:Lcom/amazon/bookwizard/BookWizardNavigationController;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/BookWizardNavigationController;->getWelcomeController()Lcom/amazon/bookwizard/welcome/WelcomeScreenController;

    move-result-object v0

    return-object v0
.end method

.method public goToLibrary()V
    .locals 3

    .line 201
    invoke-static {}, Lcom/amazon/bookwizard/BookWizardPlugin;->setOptOutOrCompletedFlag()V

    .line 203
    invoke-virtual {p0}, Lcom/amazon/bookwizard/ui/BookWizardActivity;->finish()V

    .line 204
    invoke-static {}, Lcom/amazon/bookwizard/BookWizardPlugin;->stop()V

    .line 205
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/amazon/bookwizard/ui/BookWizardActivity;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryUIManager()Lcom/amazon/kindle/krx/ui/ILibraryUIManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/library/LibraryView;->BOOKS:Lcom/amazon/kindle/krx/library/LibraryView;

    sget-object v2, Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryGroup;->DEVICE:Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryGroup;

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/ui/ILibraryUIManager;->launchLibraryView(Lcom/amazon/kindle/krx/library/LibraryView;Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryGroup;)V

    goto :goto_0

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/amazon/bookwizard/ui/BookWizardActivity;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryUIManager()Lcom/amazon/kindle/krx/ui/ILibraryUIManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/library/LibraryView;->ALL_ITEMS:Lcom/amazon/kindle/krx/library/LibraryView;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/ui/ILibraryUIManager;->launchLibraryView(Lcom/amazon/kindle/krx/library/LibraryView;)V

    .line 210
    :goto_0
    sget-object v0, Lcom/amazon/bookwizard/ui/BookWizardActivity;->TAG:Ljava/lang/String;

    const-string v1, "Navigating to Library"

    invoke-static {v0, v1}, Lcom/amazon/bookwizard/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public goToStore(Ljava/lang/String;)V
    .locals 1

    .line 189
    invoke-static {}, Lcom/amazon/bookwizard/BookWizardPlugin;->setOptOutOrCompletedFlag()V

    .line 191
    invoke-virtual {p0}, Lcom/amazon/bookwizard/ui/BookWizardActivity;->finish()V

    .line 192
    invoke-static {}, Lcom/amazon/bookwizard/BookWizardPlugin;->stop()V

    .line 193
    iget-object v0, p0, Lcom/amazon/bookwizard/ui/BookWizardActivity;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getStoreManager()Lcom/amazon/kindle/krx/store/IStoreManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/store/IStoreManager;->loadStoreFront(Ljava/lang/String;)V

    .line 194
    sget-object p1, Lcom/amazon/bookwizard/ui/BookWizardActivity;->TAG:Ljava/lang/String;

    const-string v0, "Navigating to Store"

    invoke-static {p1, v0}, Lcom/amazon/bookwizard/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public isBackEnabled()Z
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/amazon/bookwizard/ui/BookWizardActivity;->navigationController:Lcom/amazon/bookwizard/BookWizardNavigationController;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/BookWizardNavigationController;->isBackEnabled()Z

    move-result v0

    return v0
.end method

.method public isConnected()Z
    .locals 1

    .line 247
    invoke-static {}, Lcom/amazon/bookwizard/util/BookWizardUtil;->isConnected()Z

    move-result v0

    return v0
.end method

.method public isLargeLayout()Z
    .locals 2

    .line 229
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/bookwizard/R$bool;->large_layout:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public onBackPressed()V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/amazon/bookwizard/ui/BookWizardActivity;->navigationController:Lcom/amazon/bookwizard/BookWizardNavigationController;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/BookWizardNavigationController;->handleBack()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 68
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    invoke-static {}, Lcom/amazon/bookwizard/BookWizardPlugin;->getSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/bookwizard/ui/BookWizardActivity;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 71
    invoke-static {}, Lcom/amazon/bookwizard/BookWizardPlugin;->getDataProvider()Lcom/amazon/bookwizard/data/DataProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/bookwizard/ui/BookWizardActivity;->data:Lcom/amazon/bookwizard/data/DataProvider;

    .line 73
    new-instance v0, Lcom/amazon/bookwizard/BookWizardNavigationController;

    invoke-static {}, Lcom/amazon/bookwizard/BookWizardPlugin;->getLaunchInfo()Lcom/amazon/bookwizard/service/LaunchInfo;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/amazon/bookwizard/BookWizardNavigationController;-><init>(Lcom/amazon/bookwizard/ui/BookWizardActivity;Lcom/amazon/bookwizard/service/LaunchInfo;)V

    iput-object v0, p0, Lcom/amazon/bookwizard/ui/BookWizardActivity;->navigationController:Lcom/amazon/bookwizard/BookWizardNavigationController;

    if-eqz p1, :cond_0

    const-string v0, "config"

    .line 77
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/amazon/bookwizard/BookWizardConfig;

    iput-object v0, p0, Lcom/amazon/bookwizard/ui/BookWizardActivity;->config:Lcom/amazon/bookwizard/BookWizardConfig;

    .line 80
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/amazon/bwconfig"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 82
    invoke-static {v0}, Lcom/amazon/bookwizard/BookWizardConfig;->from(Ljava/io/File;)Lcom/amazon/bookwizard/BookWizardConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/bookwizard/ui/BookWizardActivity;->config:Lcom/amazon/bookwizard/BookWizardConfig;

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/amazon/bookwizard/ui/BookWizardActivity;->config:Lcom/amazon/bookwizard/BookWizardConfig;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 86
    new-instance v0, Lcom/amazon/bookwizard/BookWizardConfig$Builder;

    invoke-direct {v0}, Lcom/amazon/bookwizard/BookWizardConfig$Builder;-><init>()V

    sget-object v3, Lcom/amazon/bookwizard/BookWizardConfig$Type;->INTENT:Lcom/amazon/bookwizard/BookWizardConfig$Type;

    .line 87
    invoke-virtual {v0, v3}, Lcom/amazon/bookwizard/BookWizardConfig$Builder;->setType(Lcom/amazon/bookwizard/BookWizardConfig$Type;)Lcom/amazon/bookwizard/BookWizardConfig$Builder;

    .line 88
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "eligible_for_month"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/amazon/bookwizard/BookWizardConfig$Builder;->setEligibleForMonth(Z)Lcom/amazon/bookwizard/BookWizardConfig$Builder;

    .line 89
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "cor"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amazon/bookwizard/BookWizardConfig$Builder;->setCor(Ljava/lang/String;)Lcom/amazon/bookwizard/BookWizardConfig$Builder;

    .line 90
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "cor_inferred"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/amazon/bookwizard/BookWizardConfig$Builder;->setCorInferred(Z)Lcom/amazon/bookwizard/BookWizardConfig$Builder;

    .line 91
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "eligible_for_preview"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/amazon/bookwizard/BookWizardConfig$Builder;->setEligibleForPreview(Z)Lcom/amazon/bookwizard/BookWizardConfig$Builder;

    .line 92
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "is_via_notification"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/amazon/bookwizard/BookWizardConfig$Builder;->setViaNotification(Z)Lcom/amazon/bookwizard/BookWizardConfig$Builder;

    .line 93
    invoke-virtual {v0}, Lcom/amazon/bookwizard/BookWizardConfig$Builder;->build()Lcom/amazon/bookwizard/BookWizardConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/bookwizard/ui/BookWizardActivity;->config:Lcom/amazon/bookwizard/BookWizardConfig;

    .line 96
    :cond_2
    invoke-static {}, Lcom/amazon/bookwizard/BookWizardPlugin;->getLaunchInfo()Lcom/amazon/bookwizard/service/LaunchInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 97
    invoke-virtual {v0}, Lcom/amazon/bookwizard/service/LaunchInfo;->getFlow()Lcom/amazon/bookwizard/service/Flow;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lcom/amazon/bookwizard/service/LaunchInfo;->getFlow()Lcom/amazon/bookwizard/service/Flow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/bookwizard/service/Flow;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "null"

    .line 98
    :goto_0
    sget-object v3, Lcom/amazon/bookwizard/ui/BookWizardActivity;->TAG:Ljava/lang/String;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/amazon/bookwizard/ui/BookWizardActivity;->config:Lcom/amazon/bookwizard/BookWizardConfig;

    invoke-virtual {v5}, Lcom/amazon/bookwizard/BookWizardConfig;->getType()Lcom/amazon/bookwizard/BookWizardConfig$Type;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    aput-object v0, v4, v1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/amazon/bookwizard/ui/BookWizardActivity;->config:Lcom/amazon/bookwizard/BookWizardConfig;

    invoke-virtual {v1}, Lcom/amazon/bookwizard/BookWizardConfig;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const-string v0, "Loaded (%s)[%s] %s"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/amazon/bookwizard/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    sget v0, Lcom/amazon/bookwizard/R$layout;->bookwizard_activity:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 101
    iget-object v0, p0, Lcom/amazon/bookwizard/ui/BookWizardActivity;->navigationController:Lcom/amazon/bookwizard/BookWizardNavigationController;

    invoke-virtual {v0, p1}, Lcom/amazon/bookwizard/BookWizardNavigationController;->initializeControllers(Landroid/os/Bundle;)V

    .line 102
    iget-object p1, p0, Lcom/amazon/bookwizard/ui/BookWizardActivity;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/bookwizard/ui/BookWizardActivity;->navigationController:Lcom/amazon/bookwizard/BookWizardNavigationController;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 160
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    .line 162
    iget-object v0, p0, Lcom/amazon/bookwizard/ui/BookWizardActivity;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/bookwizard/ui/BookWizardActivity;->navigationController:Lcom/amazon/bookwizard/BookWizardNavigationController;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 164
    iput-object v0, p0, Lcom/amazon/bookwizard/ui/BookWizardActivity;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 165
    iput-object v0, p0, Lcom/amazon/bookwizard/ui/BookWizardActivity;->navigationController:Lcom/amazon/bookwizard/BookWizardNavigationController;

    .line 167
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/amazon/bookwizard/ui/BookWizardActivity;->data:Lcom/amazon/bookwizard/data/DataProvider;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/data/DataProvider;->stop()V

    const/4 v0, 0x0

    .line 169
    invoke-static {v0}, Lcom/amazon/bookwizard/BookWizardPlugin;->setShowing(Z)V

    :cond_0
    return-void
.end method

.method public onExit(Ljava/lang/String;)V
    .locals 0

    const-string p1, "bookwizard"

    .line 318
    invoke-virtual {p0, p1}, Lcom/amazon/bookwizard/ui/BookWizardActivity;->goToStore(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostResume()V
    .locals 1

    .line 110
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPostResume()V

    .line 113
    iget-object v0, p0, Lcom/amazon/bookwizard/ui/BookWizardActivity;->navigationController:Lcom/amazon/bookwizard/BookWizardNavigationController;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/BookWizardNavigationController;->showCurrentView()V

    return-void
.end method

.method public onRetry(Ljava/lang/String;)V
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/amazon/bookwizard/ui/BookWizardActivity;->navigationController:Lcom/amazon/bookwizard/BookWizardNavigationController;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/amazon/bookwizard/BookWizardNavigationController;->getCurrentController()Lcom/amazon/bookwizard/BookWizardController;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/amazon/bookwizard/ui/BookWizardActivity;->navigationController:Lcom/amazon/bookwizard/BookWizardNavigationController;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/BookWizardNavigationController;->getCurrentController()Lcom/amazon/bookwizard/BookWizardController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/bookwizard/BookWizardController;->onRetry(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 149
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 151
    iget-object v0, p0, Lcom/amazon/bookwizard/ui/BookWizardActivity;->config:Lcom/amazon/bookwizard/BookWizardConfig;

    const-string v1, "config"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 152
    iget-object v0, p0, Lcom/amazon/bookwizard/ui/BookWizardActivity;->navigationController:Lcom/amazon/bookwizard/BookWizardNavigationController;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/BookWizardNavigationController;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "navController"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public showNetworkUnavailableDialog()V
    .locals 4

    .line 254
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 255
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "NETWORK_UNAVAILBLE_DIALOG"

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 257
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 259
    :cond_0
    new-instance v1, Lcom/amazon/bookwizard/ui/fragment/NetworkUnavailableDialogFragment;

    invoke-direct {v1}, Lcom/amazon/bookwizard/ui/fragment/NetworkUnavailableDialogFragment;-><init>()V

    const/4 v3, 0x0

    .line 260
    invoke-virtual {v1, v3}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    .line 261
    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentTransaction;Ljava/lang/String;)I

    return-void
.end method
