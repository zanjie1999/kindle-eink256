.class public abstract Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "AbstractAudibleStoreActivity.java"


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field protected debugHelper:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

.field private volatile isActivityDestroyed:Z

.field private mCompanionManager:Lcom/audible/android/kcp/companion/CompanionManager;

.field private mEventHandler:Lcom/audible/android/kcp/store/TimerCompanionMappingModificationPersistedEventHandler;

.field private mFragment:Landroidx/fragment/app/Fragment;

.field private final mGraph:Lcom/audible/hushpuppy/dagger/HushpuppyComponent;

.field private mLibraryDownloadController:Lcom/audible/hushpuppy/controller/LibraryDownloadController;

.field private mLibraryManager:Lcom/amazon/kindle/krx/library/ILibraryManager;

.field private mReaderUIManager:Lcom/amazon/kindle/krx/ui/IReaderUIManager;

.field protected mUriBuilder:Lcom/audible/android/kcp/store/utils/AudibleUriBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 61
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 69
    invoke-static {}, Lcom/audible/hushpuppy/dagger/HushpuppyObjectGraph;->getInstance()Lcom/audible/hushpuppy/dagger/HushpuppyComponent;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;->mGraph:Lcom/audible/hushpuppy/dagger/HushpuppyComponent;

    return-void
.end method

.method static synthetic access$000(Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;)Landroidx/fragment/app/Fragment;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;->mFragment:Landroidx/fragment/app/Fragment;

    return-object p0
.end method

.method static synthetic access$100(Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;Landroid/view/View;)Z
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;->isSpinnerDisplayed(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200()Lcom/audible/hushpuppy/common/logging/ILogger;
    .locals 1

    .line 59
    sget-object v0, Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-object v0
.end method

.method private configureActionBar()V
    .locals 2

    .line 376
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 378
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    return-void
.end method

.method private getPurchasedAudiobookAsin(Lcom/amazon/kindle/krx/content/IBook;)Lcom/audible/mobile/domain/Asin;
    .locals 3

    .line 411
    invoke-static {}, Lcom/audible/hushpuppy/dagger/HushpuppyObjectGraph;->getInstance()Lcom/audible/hushpuppy/dagger/HushpuppyComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/hushpuppy/dagger/HushpuppyComponent;->legacyHushpuppyStorage()Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;

    move-result-object v0

    .line 412
    invoke-static {}, Lcom/audible/hushpuppy/dagger/HushpuppyObjectGraph;->getInstance()Lcom/audible/hushpuppy/dagger/HushpuppyComponent;

    move-result-object v1

    invoke-interface {v1}, Lcom/audible/hushpuppy/dagger/HushpuppyComponent;->hushpuppyStorage()Lcom/audible/hushpuppy/service/db/IHushpuppyStorage;

    move-result-object v1

    .line 413
    iget-object v2, p0, Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;->debugHelper:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

    invoke-virtual {v2}, Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;->isDBScalingEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1, p1}, Lcom/audible/hushpuppy/service/db/IHushpuppyStorage;->getPurchasedRelationship(Lcom/amazon/kindle/krx/content/IBook;)Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;->getPurchasedRelationship(Lcom/amazon/kindle/krx/content/IBook;)Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    .line 416
    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 418
    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object p1

    return-object p1

    .line 421
    :cond_1
    sget-object p1, Lcom/audible/mobile/domain/Asin;->NONE:Lcom/audible/mobile/domain/Asin;

    return-object p1
.end method

.method private initialize()V
    .locals 5

    .line 153
    iget-object v0, p0, Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;->mGraph:Lcom/audible/hushpuppy/dagger/HushpuppyComponent;

    invoke-interface {v0}, Lcom/audible/hushpuppy/dagger/HushpuppyComponent;->kindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    .line 155
    new-instance v1, Lcom/audible/android/kcp/store/utils/AudibleStoreUriBuilder;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getActiveUserAccount()Lcom/amazon/kindle/krx/application/IUserAccount;

    move-result-object v2

    .line 156
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;->getThemeArea()Lcom/amazon/kindle/krx/theme/ThemeArea;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/amazon/kindle/krx/theme/IThemeManager;->getTheme(Lcom/amazon/kindle/krx/theme/ThemeArea;)Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/audible/android/kcp/store/utils/AudibleStoreUriBuilder;-><init>(Landroid/content/Context;Lcom/amazon/kindle/krx/application/IUserAccount;Lcom/amazon/kindle/krx/theme/Theme;)V

    iput-object v1, p0, Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;->mUriBuilder:Lcom/audible/android/kcp/store/utils/AudibleUriBuilder;

    .line 158
    iget-object v1, p0, Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;->mGraph:Lcom/audible/hushpuppy/dagger/HushpuppyComponent;

    invoke-interface {v1}, Lcom/audible/hushpuppy/dagger/HushpuppyComponent;->libraryDownloadController()Lcom/audible/hushpuppy/controller/LibraryDownloadController;

    move-result-object v1

    iput-object v1, p0, Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;->mLibraryDownloadController:Lcom/audible/hushpuppy/controller/LibraryDownloadController;

    .line 159
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v1

    iput-object v1, p0, Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;->mReaderUIManager:Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    .line 161
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryManager()Lcom/amazon/kindle/krx/library/ILibraryManager;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;->mLibraryManager:Lcom/amazon/kindle/krx/library/ILibraryManager;

    .line 163
    iget-object v0, p0, Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;->mGraph:Lcom/audible/hushpuppy/dagger/HushpuppyComponent;

    invoke-interface {v0}, Lcom/audible/hushpuppy/dagger/HushpuppyComponent;->kindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method private initialize(Lcom/audible/android/kcp/store/utils/AudibleUriBuilder;Lcom/audible/android/kcp/companion/CompanionManager;Lcom/amazon/kindle/krx/library/ILibraryManager;Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;->mUriBuilder:Lcom/audible/android/kcp/store/utils/AudibleUriBuilder;

    .line 173
    iput-object p2, p0, Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;->mCompanionManager:Lcom/audible/android/kcp/companion/CompanionManager;

    .line 174
    iput-object p3, p0, Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;->mLibraryManager:Lcom/amazon/kindle/krx/library/ILibraryManager;

    .line 175
    iput-object p4, p0, Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;->mFragment:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method private isSpinnerDisplayed(Landroid/view/View;)Z
    .locals 4

    .line 384
    sget v0, Lcom/amazon/kindle/hushpuppy/plugin/R$id;->webview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 385
    :goto_0
    sget v3, Lcom/amazon/kindle/hushpuppy/plugin/R$id;->webview_progress_bar:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    return v1
.end method

.method public static newInstance(Lcom/amazon/kindle/krx/theme/ThemeArea;)Lcom/audible/android/kcp/store/AudibleStoreFragment;
    .locals 2

    .line 353
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 354
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const-string v1, "StoreFragmentThemeArea"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 356
    new-instance p0, Lcom/audible/android/kcp/store/AudibleStoreFragment;

    invoke-direct {p0}, Lcom/audible/android/kcp/store/AudibleStoreFragment;-><init>()V

    .line 357
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method

.method private removeFragment()V
    .locals 2

    .line 426
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 427
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 429
    invoke-virtual {p0}, Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 430
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method private updateSystemUI()V
    .locals 7

    .line 438
    iget-object v0, p0, Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;->mGraph:Lcom/audible/hushpuppy/dagger/HushpuppyComponent;

    invoke-interface {v0}, Lcom/audible/hushpuppy/dagger/HushpuppyComponent;->kindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;->getThemeArea()Lcom/amazon/kindle/krx/theme/ThemeArea;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/theme/IThemeManager;->getTheme(Lcom/amazon/kindle/krx/theme/ThemeArea;)Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/theme/Theme;->LIGHT:Lcom/amazon/kindle/krx/theme/Theme;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 439
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 440
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 441
    invoke-virtual {v2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v3

    .line 443
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_2

    if-eqz v0, :cond_1

    .line 445
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/amazon/kindle/hushpuppy/plugin/R$color;->status_bar_color_light:I

    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/Window;->setStatusBarColor(I)V

    or-int/lit16 v3, v3, 0x2000

    goto :goto_1

    .line 448
    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/amazon/kindle/hushpuppy/plugin/R$color;->status_bar_color_dark:I

    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/Window;->setStatusBarColor(I)V

    and-int/lit16 v3, v3, -0x2001

    .line 453
    :cond_2
    :goto_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    if-lt v4, v5, :cond_4

    if-eqz v0, :cond_3

    .line 455
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/amazon/kindle/hushpuppy/plugin/R$color;->navigation_bar_color_light:I

    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    or-int/lit8 v3, v3, 0x10

    goto :goto_2

    .line 458
    :cond_3
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/amazon/kindle/hushpuppy/plugin/R$color;->navigation_bar_color_dark:I

    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    and-int/lit8 v3, v3, -0x11

    .line 463
    :cond_4
    :goto_2
    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method


# virtual methods
.method public cleanUpToDo()V
    .locals 1

    .line 392
    iget-object v0, p0, Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;->mEventHandler:Lcom/audible/android/kcp/store/TimerCompanionMappingModificationPersistedEventHandler;

    if-eqz v0, :cond_0

    .line 393
    invoke-virtual {v0}, Lcom/audible/android/kcp/store/TimerCompanionMappingModificationPersistedEventHandler;->cancel()V

    .line 395
    :cond_0
    invoke-virtual {p0}, Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;->hideSpinner()V

    return-void
.end method

.method protected configureFragment()V
    .locals 3

    .line 337
    invoke-virtual {p0}, Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;->getThemeArea()Lcom/amazon/kindle/krx/theme/ThemeArea;

    move-result-object v0

    invoke-static {v0}, Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;->newInstance(Lcom/amazon/kindle/krx/theme/ThemeArea;)Lcom/audible/android/kcp/store/AudibleStoreFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;->mFragment:Landroidx/fragment/app/Fragment;

    .line 339
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 340
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 342
    invoke-virtual {p0}, Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 343
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method public continueReading()V
    .locals 3

    .line 263
    new-instance v0, Lcom/audible/android/kcp/store/TimerCompanionMappingModificationPersistedEventHandler;

    new-instance v1, Lcom/audible/android/kcp/store/ToDoQueueCheckCountdownTimer;

    invoke-direct {v1, p0}, Lcom/audible/android/kcp/store/ToDoQueueCheckCountdownTimer;-><init>(Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;)V

    iget-object v2, p0, Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;->mReaderUIManager:Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    invoke-direct {v0, v1, v2}, Lcom/audible/android/kcp/store/TimerCompanionMappingModificationPersistedEventHandler;-><init>(Lcom/audible/android/kcp/store/ToDoQueueCheckCountdownTimer;Lcom/amazon/kindle/krx/ui/IReaderUIManager;)V

    invoke-virtual {p0, v0}, Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;->continueReading(Lcom/audible/android/kcp/store/TimerCompanionMappingModificationPersistedEventHandler;)V

    return-void
.end method

.method protected continueReading(Lcom/audible/android/kcp/store/TimerCompanionMappingModificationPersistedEventHandler;)V
    .locals 0

    .line 271
    invoke-virtual {p0}, Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;->cleanUpToDo()V

    .line 273
    iput-object p1, p0, Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;->mEventHandler:Lcom/audible/android/kcp/store/TimerCompanionMappingModificationPersistedEventHandler;

    .line 274
    invoke-virtual {p1}, Lcom/audible/android/kcp/store/TimerCompanionMappingModificationPersistedEventHandler;->start()V

    .line 275
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected getFragment()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 332
    iget-object v0, p0, Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;->mFragment:Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method public abstract getStoreType()Lcom/audible/android/kcp/store/StoreType;
.end method

.method protected getThemeArea()Lcom/amazon/kindle/krx/theme/ThemeArea;
    .locals 2

    .line 368
    invoke-virtual {p0}, Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;->getStoreType()Lcom/audible/android/kcp/store/StoreType;

    move-result-object v0

    sget-object v1, Lcom/audible/android/kcp/store/StoreType;->UPGRADER:Lcom/audible/android/kcp/store/StoreType;

    if-ne v0, v1, :cond_0

    .line 369
    sget-object v0, Lcom/amazon/kindle/krx/theme/ThemeArea;->IN_BOOK:Lcom/amazon/kindle/krx/theme/ThemeArea;

    return-object v0

    .line 371
    :cond_0
    sget-object v0, Lcom/amazon/kindle/krx/theme/ThemeArea;->OUT_OF_BOOK:Lcom/amazon/kindle/krx/theme/ThemeArea;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 2

    .line 322
    iget-object v0, p0, Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;->mUriBuilder:Lcom/audible/android/kcp/store/utils/AudibleUriBuilder;

    invoke-virtual {p0}, Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;->getStoreType()Lcom/audible/android/kcp/store/StoreType;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/android/kcp/store/utils/AudibleUriBuilder;->buildUriForStore(Lcom/audible/android/kcp/store/StoreType;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public hideSpinner()V
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    new-instance v0, Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity$2;

    invoke-direct {v0, p0}, Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity$2;-><init>(Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public isActivityDestroyed()Z
    .locals 1

    .line 218
    iget-boolean v0, p0, Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;->isActivityDestroyed:Z

    return v0
.end method

.method public onBackPressed()V
    .locals 2

    .line 196
    invoke-virtual {p0}, Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {p0}, Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$id;->webview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 200
    invoke-virtual {p0}, Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;->cleanUpToDo()V

    return-void

    .line 205
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 110
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 111
    iget-object v0, p0, Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;->mGraph:Lcom/audible/hushpuppy/dagger/HushpuppyComponent;

    invoke-interface {v0}, Lcom/audible/hushpuppy/dagger/HushpuppyComponent;->kindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/theme/IThemeManager;->switchIfNecessary(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 85
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 87
    new-instance v0, Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/audible/hushpuppy/common/debug/DebugSharedPreferences;

    invoke-direct {v2, p1}, Lcom/audible/hushpuppy/common/debug/DebugSharedPreferences;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1, v2}, Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;-><init>(Landroid/content/Context;Lcom/audible/mobile/preferences/PreferenceStore;)V

    iput-object v0, p0, Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;->debugHelper:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

    .line 89
    iget-object p1, p0, Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;->mGraph:Lcom/audible/hushpuppy/dagger/HushpuppyComponent;

    if-nez p1, :cond_0

    .line 90
    sget-object p1, Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Can\'t instantiate the object graph, which is needed to open the storefront."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 94
    iput-boolean p1, p0, Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;->isActivityDestroyed:Z

    .line 95
    invoke-direct {p0}, Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;->initialize()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;Lcom/audible/android/kcp/store/utils/AudibleUriBuilder;Lcom/audible/android/kcp/companion/CompanionManager;Lcom/amazon/kindle/krx/library/ILibraryManager;Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 146
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 148
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;->initialize(Lcom/audible/android/kcp/store/utils/AudibleUriBuilder;Lcom/audible/android/kcp/companion/CompanionManager;Lcom/amazon/kindle/krx/library/ILibraryManager;Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 134
    invoke-virtual {p0}, Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;->cleanUpToDo()V

    .line 135
    iget-object v0, p0, Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;->mGraph:Lcom/audible/hushpuppy/dagger/HushpuppyComponent;

    invoke-interface {v0}, Lcom/audible/hushpuppy/dagger/HushpuppyComponent;->kindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    .line 136
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    const/4 v0, 0x1

    .line 137
    iput-boolean v0, p0, Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;->isActivityDestroyed:Z

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 181
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 190
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 186
    :cond_0
    invoke-virtual {p0}, Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;->onBackPressed()V

    const/4 p1, 0x1

    return p1
.end method

.method protected onPause()V
    .locals 0

    .line 126
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 128
    invoke-direct {p0}, Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;->removeFragment()V

    return-void
.end method

.method protected onResumeFragments()V
    .locals 0

    .line 101
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResumeFragments()V

    .line 103
    invoke-virtual {p0}, Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;->configureFragment()V

    .line 104
    invoke-direct {p0}, Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;->configureActionBar()V

    return-void
.end method

.method public onThemeChangedEvent(Lcom/amazon/kindle/krx/events/ThemeChangedEvent;)V
    .locals 0
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 473
    new-instance p1, Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity$3;

    invoke-direct {p1, p0}, Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity$3;-><init>(Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 117
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    .line 119
    invoke-direct {p0}, Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;->updateSystemUI()V

    :cond_0
    return-void
.end method

.method public openLibraryOrPlayer(Ljava/lang/String;)V
    .locals 3

    .line 228
    new-instance v0, Lcom/audible/android/kcp/store/StoreCompanionMappingModificationPersistedEventHandler;

    new-instance v1, Lcom/audible/android/kcp/store/UIBlockingToDoQueueCheckCountdownTimer;

    invoke-direct {v1, p0}, Lcom/audible/android/kcp/store/UIBlockingToDoQueueCheckCountdownTimer;-><init>(Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;)V

    iget-object v2, p0, Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;->mLibraryDownloadController:Lcom/audible/hushpuppy/controller/LibraryDownloadController;

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/audible/android/kcp/store/StoreCompanionMappingModificationPersistedEventHandler;-><init>(Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;Lcom/audible/android/kcp/store/ToDoQueueCheckCountdownTimer;Lcom/audible/hushpuppy/controller/LibraryDownloadController;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;->mEventHandler:Lcom/audible/android/kcp/store/TimerCompanionMappingModificationPersistedEventHandler;

    invoke-virtual {p0, p1, v0}, Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;->openLibraryOrPlayer(Ljava/lang/String;Lcom/audible/android/kcp/store/TimerCompanionMappingModificationPersistedEventHandler;)V

    return-void
.end method

.method protected openLibraryOrPlayer(Ljava/lang/String;Lcom/audible/android/kcp/store/TimerCompanionMappingModificationPersistedEventHandler;)V
    .locals 1

    .line 237
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    sget-object p1, Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "Ebook asin was not provided when openLibraryOrPlayer, returning..."

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-void

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;->mLibraryManager:Lcom/amazon/kindle/krx/library/ILibraryManager;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/library/ILibraryManager;->getContentFromAsin(Ljava/lang/String;)Lcom/amazon/kindle/krx/content/IBook;

    move-result-object p1

    .line 243
    invoke-direct {p0, p1}, Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;->getPurchasedAudiobookAsin(Lcom/amazon/kindle/krx/content/IBook;)Lcom/audible/mobile/domain/Asin;

    move-result-object p1

    .line 245
    invoke-virtual {p0}, Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;->cleanUpToDo()V

    .line 247
    iput-object p2, p0, Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;->mEventHandler:Lcom/audible/android/kcp/store/TimerCompanionMappingModificationPersistedEventHandler;

    .line 249
    sget-object v0, Lcom/audible/mobile/domain/Asin;->NONE:Lcom/audible/mobile/domain/Asin;

    if-ne p1, v0, :cond_1

    .line 250
    invoke-virtual {p2}, Lcom/audible/android/kcp/store/TimerCompanionMappingModificationPersistedEventHandler;->start()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 253
    invoke-virtual {p2, p1}, Lcom/audible/android/kcp/store/TimerCompanionMappingModificationPersistedEventHandler;->onEventAsync(Lcom/audible/hushpuppy/common/event/relationship/CompanionMappingModificationPersistedEvent;)V

    :goto_0
    return-void
.end method

.method public showSpinner()V
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    new-instance v0, Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity$1;

    invoke-direct {v0, p0}, Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity$1;-><init>(Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
