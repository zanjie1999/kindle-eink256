.class public Lcom/amazon/kcp/oob/MainActivity;
.super Lcom/amazon/kcp/library/BaseLibraryActivity;
.source "MainActivity.java"

# interfaces
.implements Lcom/amazon/kcp/library/ui/IKindleToastActivity;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final WHATS_NEW_FRAGMENT_TAG:Ljava/lang/String; = "MainActivity_WHATS_NEW"


# instance fields
.field private bibController:Lcom/amazon/kcp/oob/BookInBarController;

.field private decorationsController:Lcom/amazon/kcp/oob/DecorationsController;

.field private landingActivityHelper:Lcom/amazon/kcp/oob/LandingActivityHelper;

.field private landingScreenActionController:Lcom/amazon/kcp/oob/LandingScreenActionController;

.field private messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

.field navigationController:Lcom/amazon/kcp/oob/NavigationController;

.field private final screenModeChangeListener:Lcom/amazon/kindle/displaymask/ScreenModeChangeListener;

.field private screenletContainer:Landroid/view/ViewGroup;

.field private searchBoxView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    const-class v0, Lcom/amazon/kcp/oob/MainActivity;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/oob/MainActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Lcom/amazon/kcp/library/BaseLibraryActivity;-><init>()V

    .line 74
    new-instance v0, Lcom/amazon/kcp/oob/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/oob/MainActivity$1;-><init>(Lcom/amazon/kcp/oob/MainActivity;)V

    iput-object v0, p0, Lcom/amazon/kcp/oob/MainActivity;->screenModeChangeListener:Lcom/amazon/kindle/displaymask/ScreenModeChangeListener;

    return-void
.end method

.method private hasBeenUpgraded()Z
    .locals 7

    .line 151
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleApplicationController;->wasAppUpgradedThisOpening()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 156
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAppSettingsController()Lcom/amazon/kcp/application/IAppSettingsController;

    move-result-object v0

    .line 157
    invoke-interface {v0}, Lcom/amazon/kcp/application/IAppSettingsController;->getLibraryLastUpgradedVersion()J

    move-result-wide v2

    .line 158
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getAppVersionNumber()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-gez v6, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-eqz v1, :cond_2

    .line 162
    invoke-interface {v0, v4, v5}, Lcom/amazon/kcp/application/IAppSettingsController;->setLibraryLastUpgradedVersion(J)V

    :cond_2
    return v1
.end method

.method public static newIntent(Landroid/content/Context;Ljava/lang/String;Lcom/amazon/kindle/krx/ui/ScreenletIntent;)Landroid/content/Intent;
    .locals 1

    .line 96
    const-class v0, Lcom/amazon/kcp/oob/MainActivity;

    invoke-static {p0, v0, p1, p2}, Lcom/amazon/kcp/oob/NavigationController;->newIntent(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Lcom/amazon/kindle/krx/ui/ScreenletIntent;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private setActivityLabel()V
    .locals 3

    .line 345
    sget v0, Lcom/amazon/kindle/librarymodule/R$string;->app_name_short:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 346
    iget-object v1, p0, Lcom/amazon/kcp/oob/MainActivity;->navigationController:Lcom/amazon/kcp/oob/NavigationController;

    invoke-virtual {v1}, Lcom/amazon/kcp/oob/NavigationController;->getCurrentTabTitle()Ljava/lang/String;

    move-result-object v1

    .line 347
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setupTopBar()V
    .locals 2

    .line 168
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->top_bar:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p0, Lcom/amazon/kcp/library/BaseLibraryActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 169
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 171
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 175
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 176
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const/4 v1, 0x1

    .line 177
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    return-void
.end method

.method private showWhatsNewIfNecessary()V
    .locals 3

    .line 143
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/librarymodule/R$bool;->show_whats_new_automatically_after_upgrade:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    invoke-direct {p0}, Lcom/amazon/kcp/oob/MainActivity;->hasBeenUpgraded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    new-instance v0, Lcom/amazon/kcp/library/WhatsNewDialogFragment;

    invoke-direct {v0}, Lcom/amazon/kcp/library/WhatsNewDialogFragment;-><init>()V

    .line 146
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "MainActivity_WHATS_NEW"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public activityIdentifier()Ljava/lang/String;
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/amazon/kcp/redding/ReddingActivity;->activityIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public anchorView()Landroid/view/View;
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/amazon/kcp/oob/MainActivity;->screenletContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 182
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 183
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 184
    instance-of v1, v0, Lcom/amazon/kcp/library/ui/EditTextAutoHideKeyboard;

    if-eqz v1, :cond_0

    .line 185
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 186
    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 187
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 188
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 189
    invoke-static {v0}, Lcom/amazon/android/util/UIUtils;->closeSoftKeyboard(Landroid/view/View;)V

    .line 193
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    const/16 v0, 0x43b9

    if-ne p1, v0, :cond_0

    .line 313
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->getPermissionsManager()Lcom/amazon/android/system/PermissionsManager;

    move-result-object v1

    invoke-static {}, Lcom/amazon/kindle/scan/ScanLocalContentUtilsManager;->getInstance()Lcom/amazon/kindle/scan/ScanLocalContentUtils;

    move-result-object v5

    .line 314
    invoke-static {}, Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetricsManager;->getInstance()Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics;

    move-result-object v6

    move v2, p1

    move v3, p2

    move-object v4, p3

    .line 313
    invoke-virtual/range {v1 .. v6}, Lcom/amazon/android/system/PermissionsManager;->onActivityResult(IILandroid/content/Intent;Lcom/amazon/kindle/scan/ScanLocalContentUtils;Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics;)V

    goto :goto_0

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/oob/MainActivity;->bibController:Lcom/amazon/kcp/oob/BookInBarController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/kcp/oob/BookInBarController;->onActivityResult(IILandroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/amazon/kcp/oob/MainActivity;->navigationController:Lcom/amazon/kcp/oob/NavigationController;

    invoke-virtual {v0}, Lcom/amazon/kcp/oob/NavigationController;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 288
    invoke-super {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 242
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 243
    iget-object p1, p0, Lcom/amazon/kcp/oob/MainActivity;->bibController:Lcom/amazon/kcp/oob/BookInBarController;

    invoke-virtual {p1}, Lcom/amazon/kcp/oob/BookInBarController;->onConfigurationChanged()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11

    .line 101
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 103
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    const-class v1, Lcom/amazon/kcp/oob/MainActivity;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/oob/MainActivity;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    .line 108
    invoke-virtual {p0}, Landroid/app/Activity;->getLoaderManager()Landroid/app/LoaderManager;

    .line 110
    new-instance v0, Lcom/amazon/kcp/oob/LandingActivityHelper;

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAppSettingsController()Lcom/amazon/kcp/application/IAppSettingsController;

    move-result-object v1

    .line 111
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v2

    const-class v3, Lcom/amazon/kcp/oob/MainActivity;

    invoke-interface {v2, v3}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/amazon/kcp/oob/LandingActivityHelper;-><init>(Lcom/amazon/kcp/redding/ReddingActivity;Lcom/amazon/kcp/application/IAppSettingsController;Lcom/amazon/kindle/krx/events/IMessageQueue;)V

    iput-object v0, p0, Lcom/amazon/kcp/oob/MainActivity;->landingActivityHelper:Lcom/amazon/kcp/oob/LandingActivityHelper;

    .line 113
    sget v0, Lcom/amazon/kindle/librarymodule/R$layout;->main_activity:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 114
    invoke-direct {p0}, Lcom/amazon/kcp/oob/MainActivity;->setupTopBar()V

    .line 115
    invoke-direct {p0}, Lcom/amazon/kcp/oob/MainActivity;->showWhatsNewIfNecessary()V

    .line 117
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->bottom_bar:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/amazon/kcp/library/ui/bottombar/BottomBar;

    .line 118
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->screenlet_container:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/amazon/kcp/oob/MainActivity;->screenletContainer:Landroid/view/ViewGroup;

    .line 119
    sget-object v0, Lcom/amazon/kcp/library/ui/LibraryToast;->INSTANCE:Lcom/amazon/kcp/library/ui/LibraryToast;

    invoke-virtual {v0, p0, p1}, Lcom/amazon/kcp/library/ui/LibraryToast;->onCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 120
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/librarymodule/R$layout;->book_in_bar:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 121
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v10

    .line 123
    new-instance v8, Lcom/amazon/kcp/oob/NavigationController;

    iget-object v5, p0, Lcom/amazon/kcp/oob/MainActivity;->screenletContainer:Landroid/view/ViewGroup;

    if-eqz v10, :cond_0

    .line 124
    invoke-interface {v10}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/krx/theme/ThemeArea;->OUT_OF_BOOK:Lcom/amazon/kindle/krx/theme/ThemeArea;

    invoke-interface {v1, v2}, Lcom/amazon/kindle/krx/theme/IThemeManager;->getTheme(Lcom/amazon/kindle/krx/theme/ThemeArea;)Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object v1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/amazon/kindle/krx/theme/Theme;->LIGHT:Lcom/amazon/kindle/krx/theme/Theme;

    :goto_0
    move-object v6, v1

    iget-object v7, p0, Lcom/amazon/kcp/library/BaseLibraryActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    move-object v1, v8

    move-object v2, p0

    move-object v4, v0

    invoke-direct/range {v1 .. v7}, Lcom/amazon/kcp/oob/NavigationController;-><init>(Landroidx/appcompat/app/AppCompatActivity;Lcom/amazon/kcp/library/ui/bottombar/BottomBar;Landroid/view/View;Landroid/view/ViewGroup;Lcom/amazon/kindle/krx/theme/Theme;Landroidx/appcompat/widget/Toolbar;)V

    iput-object v8, p0, Lcom/amazon/kcp/oob/MainActivity;->navigationController:Lcom/amazon/kcp/oob/NavigationController;

    .line 125
    new-instance v1, Lcom/amazon/kcp/oob/BookInBarController;

    sget v2, Lcom/amazon/kindle/librarymodule/R$id;->bottom_bar_left_spacing:I

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    sget v2, Lcom/amazon/kindle/librarymodule/R$id;->library_root_view:I

    .line 126
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/view/ViewGroup;

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v9

    move-object v4, v1

    move-object v5, p0

    move-object v6, v0

    invoke-direct/range {v4 .. v9}, Lcom/amazon/kcp/oob/BookInBarController;-><init>(Lcom/amazon/kcp/redding/ReddingActivity;Landroid/widget/ImageView;Landroid/view/View;Landroid/view/ViewGroup;Lcom/amazon/kcp/application/IKindleObjectFactory;)V

    iput-object v1, p0, Lcom/amazon/kcp/oob/MainActivity;->bibController:Lcom/amazon/kcp/oob/BookInBarController;

    .line 127
    invoke-virtual {v1}, Lcom/amazon/kcp/oob/BookInBarController;->onCreate()V

    .line 128
    invoke-static {}, Lcom/amazon/kcp/debug/DarkModeUtils;->isPhaseOneEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->bottom_decoration_container_themed:I

    goto :goto_1

    :cond_1
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->bottom_decoration_container:I

    :goto_1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v10, :cond_2

    .line 131
    invoke-interface {v10}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryUIManager()Lcom/amazon/kindle/krx/ui/ILibraryUIManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/ui/ILibraryUIManager;->getLibraryDecorationProviderRegistry()Lcom/amazon/kindle/krx/providers/IProviderRegistry;

    move-result-object v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    .line 132
    :goto_2
    new-instance v2, Lcom/amazon/kcp/oob/DecorationsController;

    invoke-direct {v2, v0, v1}, Lcom/amazon/kcp/oob/DecorationsController;-><init>(Landroid/view/ViewGroup;Lcom/amazon/kindle/krx/providers/IProviderRegistry;)V

    iput-object v2, p0, Lcom/amazon/kcp/oob/MainActivity;->decorationsController:Lcom/amazon/kcp/oob/DecorationsController;

    .line 134
    iget-object v0, p0, Lcom/amazon/kcp/oob/MainActivity;->landingActivityHelper:Lcom/amazon/kcp/oob/LandingActivityHelper;

    invoke-virtual {v0}, Lcom/amazon/kcp/oob/LandingActivityHelper;->requestPermissionsIfNecessary()V

    .line 135
    iget-object v0, p0, Lcom/amazon/kcp/oob/MainActivity;->landingActivityHelper:Lcom/amazon/kcp/oob/LandingActivityHelper;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/oob/LandingActivityHelper;->launchNotificationsActionIfNecessary(Landroid/content/Intent;)V

    .line 136
    iget-object v0, p0, Lcom/amazon/kcp/oob/MainActivity;->landingActivityHelper:Lcom/amazon/kcp/oob/LandingActivityHelper;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/oob/LandingActivityHelper;->launchToReaderIfNecessary(Landroid/os/Bundle;)V

    .line 137
    iget-object v0, p0, Lcom/amazon/kcp/oob/MainActivity;->landingActivityHelper:Lcom/amazon/kcp/oob/LandingActivityHelper;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/amazon/kcp/oob/LandingActivityHelper;->markAsColdBookOpenIfNecessary(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 138
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/kindle/content/DocumentMigrationUtils;->handleDocumentsMigration(Lcom/amazon/kcp/application/IKindleObjectFactory;Lcom/amazon/foundation/internal/IThreadPoolManager;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .line 198
    iget-object v0, p0, Lcom/amazon/kcp/oob/MainActivity;->landingScreenActionController:Lcom/amazon/kcp/oob/LandingScreenActionController;

    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {v0}, Lcom/amazon/kcp/oob/LandingScreenActionController;->onDestroy()V

    .line 201
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 203
    new-instance v1, Lcom/amazon/kcp/oob/LandingScreenActionController;

    .line 204
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryUIManager()Lcom/amazon/kindle/krx/ui/ILibraryUIManager;

    move-result-object v2

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-direct {v1, p0, p1, v2, v0}, Lcom/amazon/kcp/oob/LandingScreenActionController;-><init>(Landroid/app/Activity;Landroid/view/Menu;Lcom/amazon/kindle/krx/ui/ILibraryUIManager;Lcom/amazon/kindle/krx/events/IPubSubEventsManager;)V

    iput-object v1, p0, Lcom/amazon/kcp/oob/MainActivity;->landingScreenActionController:Lcom/amazon/kcp/oob/LandingScreenActionController;

    .line 206
    :cond_1
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method protected onDestroy()V
    .locals 1

    .line 211
    invoke-super {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->onDestroy()V

    .line 212
    iget-object v0, p0, Lcom/amazon/kcp/oob/MainActivity;->bibController:Lcom/amazon/kcp/oob/BookInBarController;

    invoke-virtual {v0}, Lcom/amazon/kcp/oob/BookInBarController;->destroy()V

    .line 213
    iget-object v0, p0, Lcom/amazon/kcp/oob/MainActivity;->decorationsController:Lcom/amazon/kcp/oob/DecorationsController;

    invoke-virtual {v0}, Lcom/amazon/kcp/oob/DecorationsController;->destroy()V

    .line 214
    iget-object v0, p0, Lcom/amazon/kcp/oob/MainActivity;->landingScreenActionController:Lcom/amazon/kcp/oob/LandingScreenActionController;

    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {v0}, Lcom/amazon/kcp/oob/LandingScreenActionController;->onDestroy()V

    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 271
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 272
    iget-object v0, p0, Lcom/amazon/kcp/oob/MainActivity;->navigationController:Lcom/amazon/kcp/oob/NavigationController;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/oob/NavigationController;->onNewIntent(Landroid/content/Intent;)V

    .line 273
    iget-object v0, p0, Lcom/amazon/kcp/oob/MainActivity;->landingActivityHelper:Lcom/amazon/kcp/oob/LandingActivityHelper;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/oob/LandingActivityHelper;->launchNotificationsActionIfNecessary(Landroid/content/Intent;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 294
    iget-object v0, p0, Lcom/amazon/kcp/oob/MainActivity;->landingScreenActionController:Lcom/amazon/kcp/oob/LandingScreenActionController;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/oob/LandingScreenActionController;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 298
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x102002c

    if-eq v0, v2, :cond_1

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecognized option item: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 306
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 300
    :cond_1
    iget-object p1, p0, Lcom/amazon/kcp/oob/MainActivity;->navigationController:Lcom/amazon/kcp/oob/NavigationController;

    invoke-virtual {p1}, Lcom/amazon/kcp/oob/NavigationController;->onNavigateUpPressed()Z

    move-result p1

    if-nez p1, :cond_2

    .line 301
    invoke-super {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->onBackPressed()V

    :cond_2
    return v1
.end method

.method protected onPause()V
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/amazon/kcp/oob/MainActivity;->navigationController:Lcom/amazon/kcp/oob/NavigationController;

    invoke-virtual {v0}, Lcom/amazon/kcp/oob/NavigationController;->onPause()V

    .line 266
    invoke-super {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->onPause()V

    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 228
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ThemeActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 229
    iget-object v0, p0, Lcom/amazon/kcp/oob/MainActivity;->navigationController:Lcom/amazon/kcp/oob/NavigationController;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/oob/NavigationController;->onPostCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 248
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getRestrictionHandler()Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 250
    invoke-interface {v0}, Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;->isDocsBlocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 251
    invoke-interface {v0}, Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;->isBooksBlocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 252
    invoke-interface {v0}, Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;->isNewsstandBlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    invoke-static {}, Lcom/amazon/android/util/RestrictionUtils;->getInstance()Lcom/amazon/android/util/RestrictionUtils;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK:Lcom/amazon/kcp/library/models/BookType;

    invoke-virtual {v0, v1, p0}, Lcom/amazon/android/util/RestrictionUtils;->checkParentalRestriction(Lcom/amazon/kcp/library/models/BookType;Landroid/app/Activity;)V

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/oob/MainActivity;->decorationsController:Lcom/amazon/kcp/oob/DecorationsController;

    invoke-virtual {v0}, Lcom/amazon/kcp/oob/DecorationsController;->refreshDecorations()V

    .line 256
    iget-object v0, p0, Lcom/amazon/kcp/oob/MainActivity;->navigationController:Lcom/amazon/kcp/oob/NavigationController;

    invoke-virtual {v0}, Lcom/amazon/kcp/oob/NavigationController;->onResume()V

    .line 257
    invoke-super {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->onResume()V

    .line 258
    iget-object v0, p0, Lcom/amazon/kcp/oob/MainActivity;->bibController:Lcom/amazon/kcp/oob/BookInBarController;

    invoke-virtual {v0}, Lcom/amazon/kcp/oob/BookInBarController;->onResume()V

    .line 259
    iget-object v0, p0, Lcom/amazon/kcp/oob/MainActivity;->landingActivityHelper:Lcom/amazon/kcp/oob/LandingActivityHelper;

    invoke-virtual {v0}, Lcom/amazon/kcp/oob/LandingActivityHelper;->onResume()V

    .line 260
    iget-object v0, p0, Lcom/amazon/kcp/oob/MainActivity;->landingActivityHelper:Lcom/amazon/kcp/oob/LandingActivityHelper;

    invoke-virtual {v0}, Lcom/amazon/kcp/oob/LandingActivityHelper;->asyncShowFtueSyncScreenIfNecessary()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 281
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-super {p0, v0}, Lcom/amazon/kcp/redding/ReddingActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 282
    iget-object v0, p0, Lcom/amazon/kcp/oob/MainActivity;->navigationController:Lcom/amazon/kcp/oob/NavigationController;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/oob/NavigationController;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 221
    invoke-super {p0}, Lcom/amazon/kcp/library/BaseLibraryActivity;->onStart()V

    .line 222
    invoke-direct {p0}, Lcom/amazon/kcp/oob/MainActivity;->setActivityLabel()V

    .line 223
    invoke-static {}, Lcom/amazon/kindle/displaymask/DisplayMaskManager;->getInstance()Lcom/amazon/kindle/displaymask/DisplayMaskUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/oob/MainActivity;->screenModeChangeListener:Lcom/amazon/kindle/displaymask/ScreenModeChangeListener;

    invoke-interface {v0, p0, v1}, Lcom/amazon/kindle/displaymask/DisplayMaskUtils;->addScreenModeChangeListener(Landroidx/fragment/app/FragmentActivity;Lcom/amazon/kindle/displaymask/ScreenModeChangeListener;)V

    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 235
    invoke-super {p0}, Lcom/amazon/kcp/library/BaseLibraryActivity;->onStop()V

    .line 236
    iget-object v0, p0, Lcom/amazon/kcp/oob/MainActivity;->landingActivityHelper:Lcom/amazon/kcp/oob/LandingActivityHelper;

    invoke-virtual {v0}, Lcom/amazon/kcp/oob/LandingActivityHelper;->onStop()V

    .line 237
    invoke-static {}, Lcom/amazon/kindle/displaymask/DisplayMaskManager;->getInstance()Lcom/amazon/kindle/displaymask/DisplayMaskUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/oob/MainActivity;->screenModeChangeListener:Lcom/amazon/kindle/displaymask/ScreenModeChangeListener;

    invoke-interface {v0, p0, v1}, Lcom/amazon/kindle/displaymask/DisplayMaskUtils;->removeScreenModeChangeListener(Landroidx/fragment/app/FragmentActivity;Lcom/amazon/kindle/displaymask/ScreenModeChangeListener;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 334
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ThemeActivity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    .line 336
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getApplication()Lcom/amazon/kcp/application/ReddingApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/application/ReddingApplication;->recordAppStartupEnd()V

    .line 337
    invoke-static {}, Lcom/amazon/kindle/performance/AppFullyDrawnReporterSingleton;->getInstance()Lcom/amazon/kindle/performance/AppFullyDrawnReporter;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/performance/AppFullyDrawnReporter;->report(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method
