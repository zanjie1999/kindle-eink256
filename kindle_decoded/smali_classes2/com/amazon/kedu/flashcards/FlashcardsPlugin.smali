.class public Lcom/amazon/kedu/flashcards/FlashcardsPlugin;
.super Ljava/lang/Object;
.source "FlashcardsPlugin.java"

# interfaces
.implements Lcom/amazon/kindle/krx/plugin/IReaderPlugin;


# annotations
.annotation runtime Lcom/amazon/kindle/krx/plugin/Plugin;
    build = .enum Lcom/amazon/kindle/krx/plugin/Plugin$Build;->both:Lcom/amazon/kindle/krx/plugin/Plugin$Build;
    minApi = 0xe
    name = "Flashcards"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kedu/flashcards/FlashcardsPlugin$FlashcardsStandAloneButtonProvider;
    }
.end annotation


# static fields
.field private static final FIXED_FORMAT_TEXTBOOK_ICON_PRIORITY:I = 0x4b

.field private static final REFLOWABLE_ICON_PRIORITY:I = 0xcd

.field private static final RESOURCE_FORMAT:Ljava/lang/String; = "android.resource://%s/%s"

.field private static final TAG:Ljava/lang/String; = "com.amazon.kedu.flashcards.FlashcardsPlugin"

.field private static activeDeckIndex:I

.field private static sdkMutex:Ljava/lang/Object;

.field private static sdkRef:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/amazon/kedu/flashcards/FlashcardsPlugin;->sdkMutex:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/amazon/kindle/krx/ui/IActionButton;
    .locals 1

    .line 54
    invoke-static {}, Lcom/amazon/kedu/flashcards/FlashcardsPlugin;->createFlashcardsActionButton()Lcom/amazon/kindle/krx/ui/IActionButton;

    move-result-object v0

    return-object v0
.end method

.method private static createFlashcardsActionButton()Lcom/amazon/kindle/krx/ui/IActionButton;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/kindle/krx/ui/IActionButton<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;"
        }
    .end annotation

    .line 222
    new-instance v0, Lcom/amazon/kedu/flashcards/FlashcardsPlugin$1;

    invoke-direct {v0}, Lcom/amazon/kedu/flashcards/FlashcardsPlugin$1;-><init>()V

    return-object v0
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .locals 1

    .line 97
    invoke-static {}, Lcom/amazon/kedu/flashcards/FlashcardsPlugin;->getSdkRef()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentUserAccount()Lcom/amazon/kindle/krx/application/IUserAccount;
    .locals 1

    .line 212
    invoke-static {}, Lcom/amazon/kedu/flashcards/FlashcardsPlugin;->getSdkRef()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 217
    :cond_0
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getActiveUserAccount()Lcom/amazon/kindle/krx/application/IUserAccount;

    move-result-object v0

    return-object v0
.end method

.method public static getGHLPositionFactory()Lcom/amazon/kindle/krx/reader/IGHLPositionFactory;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/kindle/krx/reader/IGHLPositionFactory<",
            "Lcom/amazon/kindle/krx/reader/IPosition;",
            ">;"
        }
    .end annotation

    .line 126
    invoke-static {}, Lcom/amazon/kedu/flashcards/FlashcardsPlugin;->getSdkRef()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    .line 127
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 130
    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookNavigator()Lcom/amazon/kindle/krx/reader/IBookNavigator;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 135
    :try_start_0
    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getGHLPositionFactory()Lcom/amazon/kindle/krx/reader/IGHLPositionFactory;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v2

    .line 139
    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 142
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    sget-object v3, Lcom/amazon/kedu/flashcards/FlashcardsPlugin;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Incorrect DocViewer for ASIN: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " contentType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 147
    :cond_0
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    sget-object v1, Lcom/amazon/kedu/flashcards/FlashcardsPlugin;->TAG:Ljava/lang/String;

    const-string v3, "Incorrect DocViewer and current book is null."

    invoke-interface {v0, v1, v3, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getPositionFactory()Lcom/amazon/kindle/krx/reader/IPositionFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/kindle/krx/reader/IPositionFactory<",
            "Lcom/amazon/kindle/krx/reader/IPosition;",
            ">;"
        }
    .end annotation

    .line 107
    invoke-static {}, Lcom/amazon/kedu/flashcards/FlashcardsPlugin;->getSdkRef()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 110
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookNavigator()Lcom/amazon/kindle/krx/reader/IBookNavigator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getPositionFactory()Lcom/amazon/kindle/krx/reader/IPositionFactory;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getReaderUITypeface()Landroid/graphics/Typeface;
    .locals 1

    .line 193
    invoke-static {}, Lcom/amazon/kedu/flashcards/FlashcardsPlugin;->getSdkRef()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 196
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 199
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getReaderSettings()Lcom/amazon/kindle/krx/reader/IReaderSettings;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 202
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderSettings;->getUITypeface()Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static getSdkRef()Lcom/amazon/kindle/krx/IKindleReaderSDK;
    .locals 2

    .line 89
    sget-object v0, Lcom/amazon/kedu/flashcards/FlashcardsPlugin;->sdkMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 91
    :try_start_0
    sget-object v1, Lcom/amazon/kedu/flashcards/FlashcardsPlugin;->sdkRef:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 92
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static initSDK(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 1

    .line 81
    sget-object v0, Lcom/amazon/kedu/flashcards/FlashcardsPlugin;->sdkMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 83
    :try_start_0
    sput-object p0, Lcom/amazon/kedu/flashcards/FlashcardsPlugin;->sdkRef:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 84
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static isFlashcardEnabled(Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 4

    .line 157
    invoke-static {}, Lcom/amazon/kedu/flashcards/FlashcardsPlugin;->getCurrentUserAccount()Lcom/amazon/kindle/krx/application/IUserAccount;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p0, :cond_5

    if-eqz v0, :cond_5

    .line 158
    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IUserAccount;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 160
    invoke-static {}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->getInstance()Lcom/amazon/kedu/flashcards/FlashcardsApp;

    invoke-static {p0}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->isFixedFormatTextbook(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    return v2

    .line 165
    :cond_0
    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v0

    sget-object v3, Lcom/amazon/kindle/krx/content/ContentType;->MAGAZINE:Lcom/amazon/kindle/krx/content/ContentType;

    if-ne v0, v3, :cond_1

    return v1

    .line 170
    :cond_1
    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v0

    sget-object v3, Lcom/amazon/kindle/krx/content/ContentType;->BOOK_SAMPLE:Lcom/amazon/kindle/krx/content/ContentType;

    if-ne v0, v3, :cond_2

    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->isFalkorEpisode()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 174
    :cond_2
    invoke-static {}, Lcom/amazon/kedu/flashcards/FlashcardsPlugin;->getSdkRef()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/amazon/kedu/flashcards/R$bool;->enable_flashcards_for_reflowable:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 176
    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getContentClass()Lcom/amazon/kindle/krx/content/IBook$BookContentClass;

    move-result-object v0

    sget-object v3, Lcom/amazon/kindle/krx/content/IBook$BookContentClass;->CHILDREN:Lcom/amazon/kindle/krx/content/IBook$BookContentClass;

    if-eq v0, v3, :cond_4

    .line 177
    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getContentClass()Lcom/amazon/kindle/krx/content/IBook$BookContentClass;

    move-result-object v0

    sget-object v3, Lcom/amazon/kindle/krx/content/IBook$BookContentClass;->MANGA:Lcom/amazon/kindle/krx/content/IBook$BookContentClass;

    if-eq v0, v3, :cond_4

    .line 178
    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getContentClass()Lcom/amazon/kindle/krx/content/IBook$BookContentClass;

    move-result-object p0

    sget-object v0, Lcom/amazon/kindle/krx/content/IBook$BookContentClass;->COMIC:Lcom/amazon/kindle/krx/content/IBook$BookContentClass;

    if-ne p0, v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p0, 0x1

    :goto_1
    if-nez p0, :cond_5

    return v2

    :cond_5
    return v1
.end method

.method public static requestPortraitOrientation(Landroid/app/Activity;)V
    .locals 2

    .line 446
    invoke-static {}, Lcom/amazon/kedu/flashcards/FlashcardsPlugin;->getSdkRef()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    .line 447
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getDeviceInformation()Lcom/amazon/kindle/krx/application/IDeviceInformation;

    move-result-object v0

    const/4 v1, 0x7

    .line 448
    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/application/IDeviceInformation;->isOrientationChangeSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_0
    return-void
.end method

.method public static setActiveDeckIndex(I)V
    .locals 0

    .line 323
    sput p0, Lcom/amazon/kedu/flashcards/FlashcardsPlugin;->activeDeckIndex:I

    return-void
.end method


# virtual methods
.method public getDependecies()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "KeduFTUEPlugin"

    .line 420
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public initialize(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 13

    .line 329
    invoke-static {p1}, Lcom/amazon/kedu/flashcards/FlashcardsPlugin;->initSDK(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 330
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    sget-object v1, Lcom/amazon/kedu/flashcards/FlashcardsPlugin;->TAG:Ljava/lang/String;

    const-string v2, "Flashcards initialized"

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kedu/flashcards/FlashcardsPlugin$FlashcardsStandAloneButtonProvider;

    invoke-direct {v1, p0}, Lcom/amazon/kedu/flashcards/FlashcardsPlugin$FlashcardsStandAloneButtonProvider;-><init>(Lcom/amazon/kedu/flashcards/FlashcardsPlugin;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->registerCustomActionButtonProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V

    .line 335
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kedu/flashcards/FlashcardsPlugin$2;

    invoke-direct {v1, p0}, Lcom/amazon/kedu/flashcards/FlashcardsPlugin$2;-><init>(Lcom/amazon/kedu/flashcards/FlashcardsPlugin;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->registerReaderNavigationListener(Lcom/amazon/kindle/krx/reader/IReaderNavigationListener;)V

    if-eqz p1, :cond_0

    .line 384
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/application/ApplicationFeature;->NEUTRON_PHASE_1:Lcom/amazon/kindle/krx/application/ApplicationFeature;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->isFeatureEnabled(Lcom/amazon/kindle/krx/application/ApplicationFeature;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 386
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 388
    new-instance v1, Lcom/amazon/kedu/ftue/events/TutorialPage;

    sget v2, Lcom/amazon/kedu/flashcards/R$string;->fc_tutorial_page_1:I

    sget v3, Lcom/amazon/kedu/flashcards/R$string;->fc_tutorial_1:I

    .line 389
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4, v3}, Lcom/amazon/kedu/ftue/events/TutorialPage;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 390
    new-instance v2, Lcom/amazon/kedu/ftue/events/TutorialPage;

    sget v3, Lcom/amazon/kedu/flashcards/R$string;->fc_tutorial_page_1:I

    sget v5, Lcom/amazon/kedu/flashcards/R$string;->fc_tutorial_1_reflowable:I

    .line 391
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/amazon/kedu/ftue/events/TutorialPage;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 393
    sget v3, Lcom/amazon/kedu/flashcards/R$string;->fc_edu_sequence_event_key_default:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 394
    sget v4, Lcom/amazon/kedu/flashcards/R$string;->fc_edu_sequence_event_key_noxray:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 395
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/amazon/kedu/flashcards/R$string;->fc_tutorial_key:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 396
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/amazon/kedu/flashcards/R$string;->fc_jit_key:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 397
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/amazon/kedu/flashcards/R$string;->fc_tutorial_metric_key:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 398
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/amazon/kedu/flashcards/R$string;->fc_jit_metric_key:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 399
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v6, Lcom/amazon/kedu/flashcards/R$integer;->fc_tutorial_priority:I

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    .line 400
    new-instance p1, Lcom/amazon/kedu/flashcards/ftue/Tutorial;

    new-instance v6, Lcom/amazon/kedu/flashcards/FlashcardsPlugin$3;

    invoke-direct {v6, p0, v2, v1}, Lcom/amazon/kedu/flashcards/FlashcardsPlugin$3;-><init>(Lcom/amazon/kedu/flashcards/FlashcardsPlugin;Lcom/amazon/kedu/ftue/events/TutorialPage;Lcom/amazon/kedu/ftue/events/TutorialPage;)V

    invoke-direct {p1, v4, v9, v5, v6}, Lcom/amazon/kedu/flashcards/ftue/Tutorial;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/amazon/kedu/ftue/events/TutorialPageProvider;)V

    .line 409
    invoke-static {}, Lcom/amazon/kedu/ftue/Plugin;->getFTUEManager()Lcom/amazon/kedu/ftue/IFTUEManager;

    move-result-object v1

    .line 410
    invoke-interface {v1, v3, p1}, Lcom/amazon/kedu/ftue/IFTUEManager;->registerTutorialForSequence(Ljava/lang/String;Lcom/amazon/kedu/ftue/events/Tutorial;)V

    .line 411
    invoke-interface {v1, v0, p1}, Lcom/amazon/kedu/ftue/IFTUEManager;->registerTutorialForSequence(Ljava/lang/String;Lcom/amazon/kedu/ftue/events/Tutorial;)V

    .line 413
    new-instance p1, Lcom/amazon/kedu/flashcards/ftue/JIT;

    sget v0, Lcom/amazon/kedu/flashcards/R$id;->flashcards_button_id:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    sget v12, Lcom/amazon/kedu/flashcards/R$string;->fc_ftue_jit_message:I

    move-object v7, p1

    invoke-direct/range {v7 .. v12}, Lcom/amazon/kedu/flashcards/ftue/JIT;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v1, p1}, Lcom/amazon/kedu/ftue/IFTUEManager;->registerJit(Lcom/amazon/kedu/ftue/events/JIT;)V

    :cond_1
    return-void
.end method
