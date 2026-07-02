.class public Lcom/amazon/kcp/redding/ReddingActivity;
.super Lcom/amazon/kcp/redding/ThemeActivity;
.source "ReddingActivity.java"


# static fields
.field public static final ARGUMENT_ACTIVITY_IDENTIFIER:Ljava/lang/String; = "ARGUMENT_ACTIVITY_IDENTIFIER"

.field protected static final METADATA_OUT_OF_BOOK:Ljava/lang/String; = "out-of-book"

.field private static final METRICS_EVENT_SCREEN_SIZE_CHANGED:Ljava/lang/String; = "ScreenSizeChanged"

.field private static final METRIC_COUNT_APP_CRASH_RATE:Ljava/lang/String; = "AppCrashRate"

.field private static final METRIC_COUNT_APP_FOREGROUND:Ljava/lang/String; = "Count"

.field private static final METRIC_SOURCE_APP_FOREGROUNDED:Ljava/lang/String; = "AppForegrounded"

.field private static final SCREEN_SIZE_CHANGED:Ljava/lang/String; = "screenSizeChanged"

.field private static final TAG:Ljava/lang/String;

.field private static shouldHandlePrimeEvent:Z


# instance fields
.field protected activityIdentifier:Ljava/lang/String;

.field private buttonFactory:Lcom/amazon/android/menu/IButtonFactory;

.field private contentOrientation:I

.field private initialRequestedOrientation:I

.field private onQueryTextListenerCallback:Lcom/amazon/android/widget/SearchViewWrapper$OnQueryTextListenerWrapper;

.field private optionsMenu:Landroid/view/Menu;

.field private permissionsManager:Lcom/amazon/android/system/PermissionsManager;

.field private screenSize:I

.field protected searchViewWrapper:Lcom/amazon/android/widget/SearchViewWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 68
    const-class v0, Lcom/amazon/kcp/redding/ReddingActivity;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/redding/ReddingActivity;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    .line 90
    sput-boolean v0, Lcom/amazon/kcp/redding/ReddingActivity;->shouldHandlePrimeEvent:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 99
    invoke-direct {p0}, Lcom/amazon/kcp/redding/ThemeActivity;-><init>()V

    const/4 v0, -0x1

    .line 86
    iput v0, p0, Lcom/amazon/kcp/redding/ReddingActivity;->contentOrientation:I

    .line 87
    iput v0, p0, Lcom/amazon/kcp/redding/ReddingActivity;->initialRequestedOrientation:I

    .line 96
    new-instance v0, Lcom/amazon/android/system/PermissionsManager;

    invoke-direct {v0, p0}, Lcom/amazon/android/system/PermissionsManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/amazon/kcp/redding/ReddingActivity;->permissionsManager:Lcom/amazon/android/system/PermissionsManager;

    .line 111
    new-instance v0, Lcom/amazon/kcp/redding/ReddingActivity$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/redding/ReddingActivity$1;-><init>(Lcom/amazon/kcp/redding/ReddingActivity;)V

    iput-object v0, p0, Lcom/amazon/kcp/redding/ReddingActivity;->onQueryTextListenerCallback:Lcom/amazon/android/widget/SearchViewWrapper$OnQueryTextListenerWrapper;

    .line 100
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->blockOnAppInitialization()Z

    return-void
.end method

.method private setActivityIdentifier(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "ARGUMENT_ACTIVITY_IDENTIFIER"

    .line 725
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 727
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 729
    :cond_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lcom/amazon/kcp/redding/ReddingActivity;->activityIdentifier:Ljava/lang/String;

    return-void
.end method

.method public static shouldHandlePrimeEvent()Z
    .locals 1

    .line 647
    sget-boolean v0, Lcom/amazon/kcp/redding/ReddingActivity;->shouldHandlePrimeEvent:Z

    return v0
.end method


# virtual methods
.method public alwaysAllowDrawerSwipeOpen()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public animateAndFinish(II)V
    .locals 0

    .line 570
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    .line 572
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_1
    return-void
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 1

    .line 105
    new-instance v0, Lcom/amazon/kcp/reader/ReaderContextWrapper;

    invoke-direct {v0, p1}, Lcom/amazon/kcp/reader/ReaderContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-super {p0, v0}, Landroid/app/Activity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method protected canShowUpdateDialog()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected clearCustomButtons()V
    .locals 1

    .line 348
    invoke-static {p0}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getCustomActionMenuController()Lcom/amazon/android/menu/CustomActionMenuController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 350
    invoke-virtual {v0}, Lcom/amazon/android/menu/CustomActionMenuController;->removeAll()V

    :cond_0
    return-void
.end method

.method protected enableDLC(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public finishAndShowLandingPage()V
    .locals 2

    .line 599
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->gracefullyKillActivity()V

    .line 601
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryController()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/library/ILibraryController;->showLandingPage()V

    .line 606
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/redding/ReddingActivity$3;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/redding/ReddingActivity$3;-><init>(Lcom/amazon/kcp/redding/ReddingActivity;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;
    .locals 1

    .line 133
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/application/ReddingApplication;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/ReddingApplication;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    return-object v0
.end method

.method public getButtonFactory()Lcom/amazon/android/menu/IButtonFactory;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/amazon/kcp/redding/ReddingActivity;->buttonFactory:Lcom/amazon/android/menu/IButtonFactory;

    return-object v0
.end method

.method public getColorModeId()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;
    .locals 1

    .line 635
    invoke-static {}, Lcom/amazon/kcp/util/DocViewerUtils;->getColorModeId()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object v0

    return-object v0
.end method

.method protected getCrashBitSuffix()Ljava/lang/String;
    .locals 3

    .line 294
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    .line 295
    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 296
    instance-of v2, v0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    if-eqz v2, :cond_0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v2

    instance-of v2, v2, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    if-eqz v2, :cond_0

    .line 297
    check-cast v0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getBookFormat()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 299
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 301
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    instance-of v0, v0, Lcom/amazon/android/docviewer/pdf/PdfDoc;

    if-eqz v0, :cond_1

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_pdf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 304
    :cond_1
    :goto_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 305
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->currentBookInfo()Lcom/amazon/kindle/model/content/ILocalBookInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 307
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 309
    sget-object v2, Lcom/amazon/kcp/redding/ReddingActivity$4;->$SwitchMap$com$amazon$kcp$library$models$BookType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 320
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_PERIODICAL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 316
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_PDOC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 312
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_BOOK"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    :goto_1
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getOptionsMenu()Landroid/view/Menu;
    .locals 1

    .line 675
    iget-object v0, p0, Lcom/amazon/kcp/redding/ReddingActivity;->optionsMenu:Landroid/view/Menu;

    return-object v0
.end method

.method public getPermissionsManager()Lcom/amazon/android/system/PermissionsManager;
    .locals 1

    .line 680
    iget-object v0, p0, Lcom/amazon/kcp/redding/ReddingActivity;->permissionsManager:Lcom/amazon/android/system/PermissionsManager;

    return-object v0
.end method

.method public getReaderController()Lcom/amazon/kcp/reader/IReaderController;
    .locals 1

    .line 141
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    return-object v0
.end method

.method public gracefullyKillActivity()V
    .locals 0

    .line 581
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public gracefullyKillActivity(Z)V
    .locals 0

    .line 591
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->gracefullyKillActivity()V

    return-void
.end method

.method protected handleThemeChange()V
    .locals 1

    .line 767
    iget-boolean v0, p0, Lcom/amazon/kcp/redding/ThemeActivity;->isThemeChangeSupported:Z

    if-eqz v0, :cond_1

    .line 769
    invoke-static {}, Lcom/amazon/kcp/debug/DarkModeUtils;->isPhaseThreeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 771
    iget-object v0, p0, Lcom/amazon/kcp/redding/ThemeActivity;->activityStateManager:Lcom/amazon/kcp/redding/ActivityStateManager;

    invoke-virtual {v0}, Lcom/amazon/kcp/redding/ActivityStateManager;->isActivityBoundToBook()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/redding/ThemeActivity;->activityStateManager:Lcom/amazon/kcp/redding/ActivityStateManager;

    invoke-virtual {v0}, Lcom/amazon/kcp/redding/ActivityStateManager;->isBoundToCurrentBook()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 772
    iput-boolean v0, p0, Lcom/amazon/kcp/redding/ThemeActivity;->recreateActivityOnResume:Z

    return-void

    .line 776
    :cond_0
    invoke-super {p0}, Lcom/amazon/kcp/redding/ThemeActivity;->handleThemeChange()V

    :cond_1
    return-void
.end method

.method protected isCrashBitEnabled()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public isOutOfBookActivity()Z
    .locals 4

    const/4 v0, 0x0

    .line 216
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 217
    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "out-of-book"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method protected lockOrientationForRubyIfNecessary()V
    .locals 3

    .line 196
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->shouldLockOrientation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->isOutOfBookActivity()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 199
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/redding/ReddingActivity;->setRequestedOrientation(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 202
    :catch_0
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "ReddingActivity"

    const-string v2, "Orientation_Lock_Failed"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public markAsBoundToBook(Lcom/amazon/kindle/model/content/ILocalBookInfo;)V
    .locals 1

    .line 786
    iget-object v0, p0, Lcom/amazon/kcp/redding/ThemeActivity;->activityStateManager:Lcom/amazon/kcp/redding/ActivityStateManager;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/redding/ActivityStateManager;->markAsBoundToBook(Lcom/amazon/kindle/model/content/ILocalBookInfo;)V

    return-void
.end method

.method public markAsUnboundFromBook()V
    .locals 1

    .line 793
    iget-object v0, p0, Lcom/amazon/kcp/redding/ThemeActivity;->activityStateManager:Lcom/amazon/kcp/redding/ActivityStateManager;

    invoke-virtual {v0}, Lcom/amazon/kcp/redding/ActivityStateManager;->markAsUnboundFromBook()V

    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 694
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 695
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$bool;->double_click_back_exit_on_last_stack_entry:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 696
    invoke-virtual {p0}, Landroid/app/Activity;->isTaskRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 697
    invoke-static {}, Lcom/amazon/android/system/DismissSingleInvokeUtils;->getInstance()Lcom/amazon/android/system/DismissSingleInvokeUtils;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$integer;->back_button_double_click_interval:I

    .line 698
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    .line 697
    invoke-virtual {v0, v1, v2}, Lcom/amazon/android/system/DismissSingleInvokeUtils;->dismissSingleInvoke(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 699
    sget v0, Lcom/amazon/kindle/krl/R$string;->tap_again_to_exit:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 701
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 713
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ThemeActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 714
    invoke-static {p0, p1}, Lcom/amazon/android/metrics/MultiWindowMetrics;->onConfigurationChanged(Lcom/amazon/kcp/redding/ReddingActivity;Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 151
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "suppress_animation"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 152
    :cond_0
    sget v0, Lcom/amazon/kindle/krl/R$anim;->activity_fade_in:I

    sget v2, Lcom/amazon/kindle/krl/R$anim;->activity_fade_out:I

    invoke-virtual {p0, v0, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 155
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".onCreate()"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ThemeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<< "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    iput v0, p0, Lcom/amazon/kcp/redding/ReddingActivity;->screenSize:I

    .line 160
    invoke-virtual {p0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    iput v0, p0, Lcom/amazon/kcp/redding/ReddingActivity;->initialRequestedOrientation:I

    .line 161
    invoke-static {}, Lcom/amazon/kcp/application/AndroidDeviceClassFactory;->getInstance()Lcom/amazon/kcp/application/AndroidDeviceClassFactory;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amazon/kcp/application/AndroidDeviceClassFactory;->getButtonFactory(Landroid/content/Context;)Lcom/amazon/android/menu/IButtonFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/redding/ReddingActivity;->buttonFactory:Lcom/amazon/android/menu/IButtonFactory;

    .line 164
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->lockOrientationForRubyIfNecessary()V

    if-eqz p1, :cond_2

    const-string v0, "screenSizeChanged"

    .line 172
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 174
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/metrics/MetricType;->DEBUG:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v2, "ReddingActivity"

    const-string v3, "ScreenSizeChanged"

    invoke-virtual {v0, v2, v3, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    .line 177
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAppSettingsController()Lcom/amazon/kcp/application/IAppSettingsController;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/application/IAppSettingsController$LaunchToSetting;->HOME:Lcom/amazon/kcp/application/IAppSettingsController$LaunchToSetting;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/IAppSettingsController;->setLaunchTo(Lcom/amazon/kcp/application/IAppSettingsController$LaunchToSetting;)V

    .line 181
    invoke-static {}, Lcom/amazon/kcp/application/AndroidDeviceClassFactory;->getInstance()Lcom/amazon/kcp/application/AndroidDeviceClassFactory;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amazon/kcp/application/AndroidDeviceClassFactory;->getHomeLibraryActivity(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object v0

    .line 182
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v0, 0x8000

    .line 183
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 184
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->startActivity(Landroid/content/Intent;)V

    .line 187
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->gracefullyKillActivity()V

    .line 188
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 191
    :cond_2
    invoke-static {p0}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    .line 192
    invoke-direct {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->setActivityIdentifier(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .line 662
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 663
    iput-object p1, p0, Lcom/amazon/kcp/redding/ReddingActivity;->optionsMenu:Landroid/view/Menu;

    return v0
.end method

.method protected onDestroy()V
    .locals 3

    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".onDestroy()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 397
    invoke-super {p0}, Lcom/amazon/kcp/redding/ThemeActivity;->onDestroy()V

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<< "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method

.method public onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 0

    .line 707
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    .line 708
    invoke-static {p0, p1}, Lcom/amazon/android/metrics/MultiWindowMetrics;->onMultiWindowChanged(Lcom/amazon/kcp/redding/ReddingActivity;Z)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 416
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 417
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$bool;->home_button_shows_library:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_0

    .line 424
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->gracefullyKillActivity()V

    .line 429
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object p1

    new-instance v0, Lcom/amazon/kcp/redding/ReddingActivity$2;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/redding/ReddingActivity$2;-><init>(Lcom/amazon/kcp/redding/ReddingActivity;)V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected onPause()V
    .locals 3

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".onPause()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v0, 0x1

    .line 365
    sput-boolean v0, Lcom/amazon/kcp/redding/ReddingActivity;->shouldHandlePrimeEvent:Z

    .line 366
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 368
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->isCrashBitEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAppSettingsController()Lcom/amazon/kcp/application/IAppSettingsController;

    move-result-object v0

    const/4 v2, 0x0

    .line 372
    invoke-interface {v0, v2}, Lcom/amazon/kcp/application/IAppSettingsController;->setCrashBitValue(Ljava/lang/String;)V

    .line 375
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<< "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 377
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->clearCustomButtons()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 685
    iget-object v0, p0, Lcom/amazon/kcp/redding/ReddingActivity;->permissionsManager:Lcom/amazon/android/system/PermissionsManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/android/system/PermissionsManager;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method protected onResume()V
    .locals 9

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".onResume()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v0, 0x0

    .line 240
    sput-boolean v0, Lcom/amazon/kcp/redding/ReddingActivity;->shouldHandlePrimeEvent:Z

    .line 241
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_foregrounded"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v5, "ReddingActivity"

    invoke-virtual {v2, v5, v3, v4}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    .line 242
    invoke-super {p0}, Lcom/amazon/kcp/redding/ThemeActivity;->onResume()V

    .line 244
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v2

    const-string v3, "AppForegrounded"

    invoke-virtual {v2, v3}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->newMetrics(Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object v2

    .line 245
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addCountingMetric(Ljava/lang/String;I)Lcom/amazon/kindle/krx/metrics/MetricsData;

    const-string v3, "Count"

    .line 246
    invoke-virtual {v2, v3, v4}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addCountingMetric(Ljava/lang/String;I)Lcom/amazon/kindle/krx/metrics/MetricsData;

    const-string v3, "AppCrashRate"

    .line 247
    invoke-virtual {v2, v3, v0}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addCountingMetric(Ljava/lang/String;I)Lcom/amazon/kindle/krx/metrics/MetricsData;

    .line 249
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->isCrashBitEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 250
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAppSettingsController()Lcom/amazon/kcp/application/IAppSettingsController;

    move-result-object v0

    .line 253
    invoke-interface {v0}, Lcom/amazon/kcp/application/IAppSettingsController;->getCrashBitValue()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 255
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CB_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v7, Lcom/amazon/kindle/krx/metrics/MetricType;->CRITICAL:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v8, "Activity"

    invoke-virtual {v6, v8, v5, v7}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    .line 256
    invoke-virtual {v2, v3, v4}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addCountingMetric(Ljava/lang/String;I)Lcom/amazon/kindle/krx/metrics/MetricsData;

    .line 257
    sget-object v3, Lcom/amazon/kcp/redding/ReddingActivity;->TAG:Ljava/lang/String;

    const-string v4, "We crashed in a previous session."

    invoke-static {v3, v4}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    .line 261
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->getCrashBitSuffix()Ljava/lang/String;

    move-result-object v4

    .line 262
    invoke-static {v4}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 263
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 266
    :cond_1
    invoke-interface {v0, v3}, Lcom/amazon/kcp/application/IAppSettingsController;->setCrashBitValue(Ljava/lang/String;)V

    .line 269
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->canShowUpdateDialog()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 270
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUpdateManager()Lcom/amazon/kcp/application/internal/IUpdateManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/internal/IUpdateManager;->showForcedUpdateDialogIfNeeded()Z

    .line 273
    :cond_3
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/amazon/kindle/krl/R$bool;->invalidateOptionsMenuOnResume:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 276
    invoke-static {p0}, Lcom/amazon/android/menu/InvalidateOptionsMenuReflect;->invalidateOptionsMenu(Landroid/app/Activity;)V

    .line 279
    :cond_4
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetrics(Lcom/amazon/kindle/krx/metrics/MetricsData;)V

    .line 281
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->setCurrentActivity(Landroid/app/Activity;)V

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<< "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 285
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->setupCustomButtons()V

    .line 287
    invoke-static {}, Lcom/amazon/android/util/ReviewUtilsManager;->getReviewUtils()Lcom/amazon/android/util/ReviewUtils;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/android/util/ReviewUtils;->showIfNecessary(Lcom/amazon/kcp/redding/ReddingActivity;)V

    .line 289
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->activityResumed(Lcom/amazon/kcp/redding/ReddingActivity;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 403
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 406
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    .line 407
    iget v1, p0, Lcom/amazon/kcp/redding/ReddingActivity;->screenSize:I

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    const-string v1, "screenSizeChanged"

    .line 409
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/redding/ReddingActivity;->activityIdentifier:Ljava/lang/String;

    const-string v1, "ARGUMENT_ACTIVITY_IDENTIFIER"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onStart()V
    .locals 3

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".onStart()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 231
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->activityStarted(Landroid/app/Activity;)V

    .line 232
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->setCurrentActivity(Landroid/app/Activity;)V

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<< "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method

.method protected onStop()V
    .locals 3

    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".onStop()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 383
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 384
    invoke-virtual {p0}, Landroid/app/Activity;->getChangingConfigurations()I

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->activityStoppedDueToConfigChange()V

    goto :goto_0

    .line 387
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->activityStopped()V

    .line 389
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<< "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 391
    sget-object v0, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->REDDING_ACTIVITY_STOP:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazon/kcp/util/Utils;->addCounterMetrics(Lcom/amazon/kindle/performance/KindlePerformanceConstants;Ljava/lang/String;)V

    return-void
.end method

.method public requiresRegistration()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected setActionBarDisplayOptions(II)V
    .locals 1

    .line 511
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 515
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/app/ActionBar;->setDisplayOptions(II)V

    return-void
.end method

.method public setActionBarVisibility(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 495
    invoke-virtual {p0, p1, v0}, Lcom/amazon/kcp/redding/ReddingActivity;->setActionBarVisibility(ZZ)V

    return-void
.end method

.method public setActionBarVisibility(ZZ)V
    .locals 0

    .line 499
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 504
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/ActionBar;->show()V

    goto :goto_0

    .line 506
    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/ActionBar;->hide()V

    :goto_0
    return-void
.end method

.method public setContentOrientation(I)V
    .locals 0

    .line 459
    iput p1, p0, Lcom/amazon/kcp/redding/ReddingActivity;->contentOrientation:I

    .line 460
    invoke-super {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method

.method protected setDeviceDefaultActionBarDisplayOptions()V
    .locals 3

    .line 519
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 523
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x5

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/ActionBar;->setDisplayOptions(II)V

    return-void
.end method

.method public setRequestedOrientation(I)V
    .locals 2

    .line 442
    iget v0, p0, Lcom/amazon/kcp/redding/ReddingActivity;->contentOrientation:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 443
    invoke-super {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_0
    return-void
.end method

.method public setupCustomButtons()V
    .locals 2

    const-string v0, "ReddingActivity.setUpCustomButtons()"

    const/4 v1, 0x1

    .line 335
    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 336
    invoke-static {p0}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getCustomActionMenuController()Lcom/amazon/android/menu/CustomActionMenuController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 339
    invoke-virtual {v1}, Lcom/amazon/android/menu/CustomActionMenuController;->removeAll()V

    :cond_0
    const/4 v1, 0x0

    .line 341
    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    return-void
.end method

.method public setupCustomHeaderBar()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method protected final setupSearchView(Landroid/view/Menu;I)V
    .locals 1

    const/4 v0, 0x0

    .line 532
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/amazon/kcp/redding/ReddingActivity;->setupSearchView(Landroid/view/Menu;ILcom/amazon/android/widget/SearchViewWrapper$OnCloseListenerWrapper;Lcom/amazon/android/widget/SearchViewWrapper$OnFocusChangeListenerWrapper;)V

    return-void
.end method

.method protected final setupSearchView(Landroid/view/Menu;ILcom/amazon/android/widget/SearchViewWrapper$OnCloseListenerWrapper;Lcom/amazon/android/widget/SearchViewWrapper$OnFocusChangeListenerWrapper;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 540
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 542
    :goto_0
    invoke-static {}, Lcom/amazon/android/widget/SearchViewWrapper$Availability;->isAvailable()Z

    move-result p2

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    .line 543
    new-instance p2, Lcom/amazon/android/widget/SearchViewWrapper;

    invoke-direct {p2, p1}, Lcom/amazon/android/widget/SearchViewWrapper;-><init>(Landroid/view/MenuItem;)V

    const-string p1, "search"

    .line 544
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/SearchManager;

    .line 546
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/amazon/android/widget/SearchViewWrapper;->setSearchableInfo(Landroid/app/SearchManager;Landroid/content/ComponentName;)V

    const/4 p1, 0x1

    .line 547
    invoke-virtual {p2, p1}, Lcom/amazon/android/widget/SearchViewWrapper;->setIconifiedByDefault(Z)V

    .line 548
    iget-object p1, p0, Lcom/amazon/kcp/redding/ReddingActivity;->onQueryTextListenerCallback:Lcom/amazon/android/widget/SearchViewWrapper$OnQueryTextListenerWrapper;

    invoke-virtual {p2, p1}, Lcom/amazon/android/widget/SearchViewWrapper;->setOnQueryTextListener(Lcom/amazon/android/widget/SearchViewWrapper$OnQueryTextListenerWrapper;)V

    .line 549
    invoke-virtual {p2, p3}, Lcom/amazon/android/widget/SearchViewWrapper;->setOnCloseListener(Lcom/amazon/android/widget/SearchViewWrapper$OnCloseListenerWrapper;)V

    .line 550
    invoke-virtual {p2, p4}, Lcom/amazon/android/widget/SearchViewWrapper;->setOnQueryTextFocusChangeListener(Lcom/amazon/android/widget/SearchViewWrapper$OnFocusChangeListenerWrapper;)V

    .line 552
    iput-object p2, p0, Lcom/amazon/kcp/redding/ReddingActivity;->searchViewWrapper:Lcom/amazon/android/widget/SearchViewWrapper;

    :cond_1
    return-void
.end method

.method protected shouldLockOrientation()Z
    .locals 2

    .line 208
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result v0

    if-nez v0, :cond_0

    .line 209
    invoke-static {}, Lcom/amazon/kindle/displaymask/DisplayMaskManager;->getInstance()Lcom/amazon/kindle/displaymask/DisplayMaskUtils;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/displaymask/DisplayMaskUtils;->deviceSupportsDisplayMask()Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isWindowsDevice()Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$bool;->ruby_activity_orientation_lock:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public shouldUpdateCustomButtons()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final showDialogSafely(I)V
    .locals 1

    const/4 v0, 0x0

    .line 739
    invoke-virtual {p0, p1, v0}, Lcom/amazon/kcp/redding/ReddingActivity;->showDialogSafely(ILandroid/os/Bundle;)Z

    return-void
.end method

.method public final showDialogSafely(ILandroid/os/Bundle;)Z
    .locals 3

    .line 753
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 754
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->showDialog(ILandroid/os/Bundle;)Z

    move-result p1

    return p1

    .line 756
    :cond_0
    sget-object p1, Lcom/amazon/kcp/redding/ReddingActivity;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Dialog not shown since "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " was finishing"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    new-instance p2, Lcom/amazon/kindle/krx/metrics/MetricsData;

    sget-object v0, Lcom/amazon/kcp/redding/ReddingActivity;->TAG:Ljava/lang/String;

    const-string v1, "AmazonKindle"

    invoke-direct {p2, v1, v0}, Lcom/amazon/kindle/krx/metrics/MetricsData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 758
    invoke-virtual {p2, v0}, Lcom/amazon/kindle/krx/metrics/MetricsData;->setWithAppVersion(Z)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BadTokenException_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 759
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addCountingMetric(Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object p2

    sget-object v1, Lcom/amazon/kindle/krx/metrics/MetricType;->ERROR:Lcom/amazon/kindle/krx/metrics/MetricType;

    .line 760
    invoke-virtual {p2, v1}, Lcom/amazon/kindle/krx/metrics/MetricsData;->setMetricType(Lcom/amazon/kindle/krx/metrics/MetricType;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object p2

    .line 757
    invoke-virtual {p1, p2}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetrics(Lcom/amazon/kindle/krx/metrics/MetricsData;)V

    return v0
.end method

.method protected final tearDownSearchView()V
    .locals 2

    .line 557
    invoke-static {}, Lcom/amazon/android/widget/SearchViewWrapper$Availability;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/redding/ReddingActivity;->searchViewWrapper:Lcom/amazon/android/widget/SearchViewWrapper;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 558
    invoke-virtual {v0, v1}, Lcom/amazon/android/widget/SearchViewWrapper;->setOnQueryTextListener(Lcom/amazon/android/widget/SearchViewWrapper$OnQueryTextListenerWrapper;)V

    .line 559
    iget-object v0, p0, Lcom/amazon/kcp/redding/ReddingActivity;->searchViewWrapper:Lcom/amazon/android/widget/SearchViewWrapper;

    invoke-virtual {v0, v1}, Lcom/amazon/android/widget/SearchViewWrapper;->setOnCloseListener(Lcom/amazon/android/widget/SearchViewWrapper$OnCloseListenerWrapper;)V

    .line 560
    iget-object v0, p0, Lcom/amazon/kcp/redding/ReddingActivity;->searchViewWrapper:Lcom/amazon/android/widget/SearchViewWrapper;

    invoke-virtual {v0, v1}, Lcom/amazon/android/widget/SearchViewWrapper;->setOnQueryTextFocusChangeListener(Lcom/amazon/android/widget/SearchViewWrapper$OnFocusChangeListenerWrapper;)V

    :cond_0
    return-void
.end method

.method public unsetContentOrientation()V
    .locals 1

    const/4 v0, -0x1

    .line 464
    iput v0, p0, Lcom/amazon/kcp/redding/ReddingActivity;->contentOrientation:I

    .line 465
    iget v0, p0, Lcom/amazon/kcp/redding/ReddingActivity;->initialRequestedOrientation:I

    invoke-super {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method
