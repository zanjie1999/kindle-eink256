.class public final Lcom/amazon/kcp/oob/LandingActivityHelper;
.super Ljava/lang/Object;
.source "LandingActivityHelper.java"


# instance fields
.field private final activity:Lcom/amazon/kcp/redding/ReddingActivity;

.field private final appSettingsController:Lcom/amazon/kcp/application/IAppSettingsController;

.field private final messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/redding/ReddingActivity;Lcom/amazon/kcp/application/IAppSettingsController;Lcom/amazon/kindle/krx/events/IMessageQueue;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/amazon/kcp/oob/LandingActivityHelper;->activity:Lcom/amazon/kcp/redding/ReddingActivity;

    .line 69
    iput-object p2, p0, Lcom/amazon/kcp/oob/LandingActivityHelper;->appSettingsController:Lcom/amazon/kcp/application/IAppSettingsController;

    .line 70
    iput-object p3, p0, Lcom/amazon/kcp/oob/LandingActivityHelper;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    .line 71
    invoke-static {}, Lcom/amazon/kcp/library/CounterManagerSingleton;->getInstance()Lcom/amazon/kcp/library/CounterManagerSingleton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/library/CounterManagerSingleton;->initializeCounters()V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/oob/LandingActivityHelper;)Lcom/amazon/kcp/redding/ReddingActivity;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/amazon/kcp/oob/LandingActivityHelper;->activity:Lcom/amazon/kcp/redding/ReddingActivity;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/kcp/oob/LandingActivityHelper;)Lcom/amazon/kindle/krx/events/IMessageQueue;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/amazon/kcp/oob/LandingActivityHelper;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    return-object p0
.end method

.method private launchToReader()V
    .locals 2

    .line 200
    :try_start_0
    new-instance v0, Lcom/amazon/kcp/library/BookOpenHelper$BookOpenParameters;

    invoke-direct {v0}, Lcom/amazon/kcp/library/BookOpenHelper$BookOpenParameters;-><init>()V

    .line 201
    sget-object v1, Lcom/amazon/kcp/reader/IReaderController$OpenReaderMode;->BLOCKING:Lcom/amazon/kcp/reader/IReaderController$OpenReaderMode;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/BookOpenHelper$BookOpenParameters;->setOpenReaderMode(Lcom/amazon/kcp/reader/IReaderController$OpenReaderMode;)V

    .line 202
    iget-object v1, p0, Lcom/amazon/kcp/oob/LandingActivityHelper;->activity:Lcom/amazon/kcp/redding/ReddingActivity;

    invoke-static {v1, v0}, Lcom/amazon/kcp/library/BookOpenHelper;->openLastReadBook(Landroid/app/Activity;Lcom/amazon/kcp/library/BookOpenHelper$BookOpenParameters;)V
    :try_end_0
    .catch Lcom/amazon/kcp/library/BookOpenHelper$BookOpenException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private showExternalStoragePermissionDialog()V
    .locals 4

    .line 95
    new-instance v0, Lcom/amazon/kcp/oob/LandingActivityHelper$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/oob/LandingActivityHelper$1;-><init>(Lcom/amazon/kcp/oob/LandingActivityHelper;)V

    .line 102
    new-instance v1, Lcom/amazon/kcp/oob/LandingActivityHelper$2;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/oob/LandingActivityHelper$2;-><init>(Lcom/amazon/kcp/oob/LandingActivityHelper;)V

    .line 113
    new-instance v2, Lcom/amazon/kcp/oob/LandingActivityHelper$3;

    invoke-direct {v2, p0}, Lcom/amazon/kcp/oob/LandingActivityHelper$3;-><init>(Lcom/amazon/kcp/oob/LandingActivityHelper;)V

    .line 123
    new-instance v3, Lcom/amazon/kcp/oob/LandingActivityHelper$4;

    invoke-direct {v3, p0, v0, v1}, Lcom/amazon/kcp/oob/LandingActivityHelper$4;-><init>(Lcom/amazon/kcp/oob/LandingActivityHelper;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 130
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/amazon/kcp/oob/LandingActivityHelper;->activity:Lcom/amazon/kcp/redding/ReddingActivity;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 131
    sget v1, Lcom/amazon/kindle/librarymodule/R$string;->storage_permission_dialog_title:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 132
    sget v1, Lcom/amazon/kindle/librarymodule/R$string;->storage_permission_dialog_text:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 133
    sget v1, Lcom/amazon/kindle/librarymodule/R$string;->storage_permission_not_now:I

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 134
    sget v1, Lcom/amazon/kindle/librarymodule/R$string;->ok:I

    invoke-virtual {v0, v1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 135
    iget-object v1, p0, Lcom/amazon/kcp/oob/LandingActivityHelper;->activity:Lcom/amazon/kcp/redding/ReddingActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amazon/kindle/dialog/DialogManager;->showDialogSafely(Landroid/content/Context;Landroid/app/Dialog;)Z

    return-void
.end method


# virtual methods
.method public asyncShowFtueSyncScreenIfNecessary()V
    .locals 2

    .line 227
    iget-object v0, p0, Lcom/amazon/kcp/oob/LandingActivityHelper;->activity:Lcom/amazon/kcp/redding/ReddingActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/librarymodule/R$bool;->support_ftue_sync_screen:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    new-instance v0, Lcom/amazon/kcp/oob/LandingActivityHelper$5;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/oob/LandingActivityHelper$5;-><init>(Lcom/amazon/kcp/oob/LandingActivityHelper;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public launchNotificationsActionIfNecessary(Landroid/content/Intent;)V
    .locals 5

    const-string v0, "LaunchNotificationsAction"

    .line 144
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    new-instance v1, Lcom/amazon/kcp/notifications/handlers/NotificationUriActionManager;

    invoke-direct {v1}, Lcom/amazon/kcp/notifications/handlers/NotificationUriActionManager;-><init>()V

    .line 146
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/kcp/oob/LandingActivityHelper;->activity:Lcom/amazon/kcp/redding/ReddingActivity;

    invoke-virtual {v1, v2, v3, v4}, Lcom/amazon/kcp/notifications/handlers/NotificationUriActionManager;->performTapAction(Ljava/lang/String;Landroid/os/Bundle;Landroid/content/Context;)V

    .line 147
    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public launchToReaderIfNecessary(Landroid/os/Bundle;)V
    .locals 2

    .line 187
    iget-object v0, p0, Lcom/amazon/kcp/oob/LandingActivityHelper;->activity:Lcom/amazon/kcp/redding/ReddingActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez p1, :cond_3

    const-string p1, "LaunchToReader"

    .line 188
    invoke-virtual {v0, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 189
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isKFABuild()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/amazon/kcp/reader/ui/BookCoverOnResumeManager;->getInstance()Lcom/amazon/kcp/reader/ui/BookCoverOnResume;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/reader/ui/BookCoverOnResume;->shouldCloseBook()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    .line 191
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getApplication()Lcom/amazon/kcp/application/ReddingApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/application/ReddingApplication;->setBookColdOpen()V

    .line 192
    invoke-direct {p0}, Lcom/amazon/kcp/oob/LandingActivityHelper;->launchToReader()V

    .line 194
    :cond_2
    invoke-virtual {v0, p1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method markAsColdBookOpenIfNecessary(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 0

    if-eqz p2, :cond_0

    return-void

    :cond_0
    const-string p2, "ScreenletIntent"

    .line 252
    invoke-virtual {p1, p2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/krx/ui/ScreenletIntent;

    const/4 p2, 0x0

    if-nez p1, :cond_1

    move-object p1, p2

    goto :goto_0

    .line 253
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/ui/ScreenletIntent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const-string p2, "BookOpenAsinExtraKey"

    .line 254
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :goto_1
    if-eqz p2, :cond_3

    .line 256
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getApplication()Lcom/amazon/kcp/application/ReddingApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/application/ReddingApplication;->setBookColdOpen()V

    :cond_3
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 219
    iget-object v0, p0, Lcom/amazon/kcp/oob/LandingActivityHelper;->appSettingsController:Lcom/amazon/kcp/application/IAppSettingsController;

    sget-object v1, Lcom/amazon/kcp/application/IAppSettingsController$LaunchToSetting;->HOME:Lcom/amazon/kcp/application/IAppSettingsController$LaunchToSetting;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/IAppSettingsController;->setLaunchTo(Lcom/amazon/kcp/application/IAppSettingsController$LaunchToSetting;)V

    .line 220
    iget-object v0, p0, Lcom/amazon/kcp/oob/LandingActivityHelper;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v1, Lcom/amazon/kindle/event/LibraryFragmentLifeCycleEvent;

    sget-object v2, Lcom/amazon/kindle/event/LibraryFragmentLifeCycleEvent$Type;->RESUME:Lcom/amazon/kindle/event/LibraryFragmentLifeCycleEvent$Type;

    invoke-direct {v1, v2}, Lcom/amazon/kindle/event/LibraryFragmentLifeCycleEvent;-><init>(Lcom/amazon/kindle/event/LibraryFragmentLifeCycleEvent$Type;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method

.method public onStop()V
    .locals 3

    .line 211
    iget-object v0, p0, Lcom/amazon/kcp/oob/LandingActivityHelper;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v1, Lcom/amazon/kindle/event/LibraryFragmentLifeCycleEvent;

    sget-object v2, Lcom/amazon/kindle/event/LibraryFragmentLifeCycleEvent$Type;->STOP:Lcom/amazon/kindle/event/LibraryFragmentLifeCycleEvent$Type;

    invoke-direct {v1, v2}, Lcom/amazon/kindle/event/LibraryFragmentLifeCycleEvent;-><init>(Lcom/amazon/kindle/event/LibraryFragmentLifeCycleEvent$Type;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method

.method public requestPermissionsIfNecessary()V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/amazon/kcp/oob/LandingActivityHelper;->activity:Lcom/amazon/kcp/redding/ReddingActivity;

    invoke-virtual {v0}, Lcom/amazon/kcp/redding/ReddingActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    .line 79
    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleApplicationController;->wasAppUpgradedThisOpening()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 80
    new-instance v0, Lcom/amazon/kindle/content/dao/LibraryContentDAO;

    iget-object v1, p0, Lcom/amazon/kcp/oob/LandingActivityHelper;->activity:Lcom/amazon/kcp/redding/ReddingActivity;

    invoke-direct {v0, v1}, Lcom/amazon/kindle/content/dao/LibraryContentDAO;-><init>(Landroid/content/Context;)V

    .line 82
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isComicsBuild()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v0}, Lcom/amazon/kindle/content/dao/ILibraryContentDAO;->hasExternalContent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 83
    iget-object v0, p0, Lcom/amazon/kcp/oob/LandingActivityHelper;->activity:Lcom/amazon/kcp/redding/ReddingActivity;

    invoke-virtual {v0}, Lcom/amazon/kcp/redding/ReddingActivity;->getPermissionsManager()Lcom/amazon/android/system/PermissionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/system/PermissionsManager;->hasExternalStoragePermission()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 84
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/UserSettingsController;->setPersonalDocsSetting(Z)V

    goto :goto_0

    .line 85
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getHaveRequestedPersonalDocsPermission()Z

    move-result v0

    if-nez v0, :cond_1

    .line 86
    invoke-direct {p0}, Lcom/amazon/kcp/oob/LandingActivityHelper;->showExternalStoragePermissionDialog()V

    .line 88
    :cond_1
    :goto_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/UserSettingsController;->setHaveRequestedPersonalDocsPermission(Z)V

    :cond_2
    return-void
.end method
