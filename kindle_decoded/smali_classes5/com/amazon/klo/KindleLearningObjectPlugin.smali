.class public Lcom/amazon/klo/KindleLearningObjectPlugin;
.super Ljava/lang/Object;
.source "KindleLearningObjectPlugin.java"

# interfaces
.implements Lcom/amazon/kindle/krx/plugin/IReaderPlugin;


# annotations
.annotation runtime Lcom/amazon/kindle/krx/plugin/Plugin;
    build = .enum Lcom/amazon/kindle/krx/plugin/Plugin$Build;->both:Lcom/amazon/kindle/krx/plugin/Plugin$Build;
    minApi = 0x8
    name = "KindleLearningObject"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/klo/KindleLearningObjectPlugin$ReaderOrientation;,
        Lcom/amazon/klo/KindleLearningObjectPlugin$KLOStandAloneButtonProvider;
    }
.end annotation


# static fields
.field private static final KLO_ID:Ljava/lang/String; = "http://kindle.amazon.com/ns/widgets/KLO"

.field private static final MOP_EXT_AZW4:Ljava/lang/String; = "azw4"

.field private static final MOP_EXT_MOP:Ljava/lang/String; = "mop"

.field private static final SMD_TEXTBOOK_KEY:Ljava/lang/String; = "textbook_type"

.field private static final TAG:Ljava/lang/String; = "com.amazon.klo.KindleLearningObjectPlugin"

.field private static instance:Lcom/amazon/klo/KindleLearningObjectPlugin; = null

.field public static isSidecarPresent:Z = false

.field public static isSidecarPresentCached:Z = false

.field private static sdkRef:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# instance fields
.field private discardIntentOnNavigation:Z

.field private readerOrientation:Lcom/amazon/klo/KindleLearningObjectPlugin$ReaderOrientation;

.field private savedIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/amazon/kindle/krx/IKindleReaderSDK;
    .locals 1

    .line 55
    sget-object v0, Lcom/amazon/klo/KindleLearningObjectPlugin;->sdkRef:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/klo/KindleLearningObjectPlugin;)Z
    .locals 0

    .line 55
    iget-boolean p0, p0, Lcom/amazon/klo/KindleLearningObjectPlugin;->discardIntentOnNavigation:Z

    return p0
.end method

.method static synthetic access$102(Lcom/amazon/klo/KindleLearningObjectPlugin;Z)Z
    .locals 0

    .line 55
    iput-boolean p1, p0, Lcom/amazon/klo/KindleLearningObjectPlugin;->discardIntentOnNavigation:Z

    return p1
.end method

.method static synthetic access$200(Lcom/amazon/klo/KindleLearningObjectPlugin;Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/amazon/klo/KindleLearningObjectPlugin;->isTextbook(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/amazon/klo/KindleLearningObjectPlugin;)Lcom/amazon/kindle/krx/ui/IActionButton;
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/amazon/klo/KindleLearningObjectPlugin;->createKLOActionButton()Lcom/amazon/kindle/krx/ui/IActionButton;

    move-result-object p0

    return-object p0
.end method

.method private createKLOActionButton()Lcom/amazon/kindle/krx/ui/IActionButton;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/kindle/krx/ui/IActionButton<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;"
        }
    .end annotation

    .line 110
    new-instance v0, Lcom/amazon/klo/KindleLearningObjectPlugin$1;

    invoke-direct {v0, p0}, Lcom/amazon/klo/KindleLearningObjectPlugin$1;-><init>(Lcom/amazon/klo/KindleLearningObjectPlugin;)V

    return-object v0
.end method

.method public static getInstance()Lcom/amazon/klo/KindleLearningObjectPlugin;
    .locals 1

    .line 91
    sget-object v0, Lcom/amazon/klo/KindleLearningObjectPlugin;->instance:Lcom/amazon/klo/KindleLearningObjectPlugin;

    return-object v0
.end method

.method public static getSdkRef()Lcom/amazon/kindle/krx/IKindleReaderSDK;
    .locals 1

    .line 105
    sget-object v0, Lcom/amazon/klo/KindleLearningObjectPlugin;->sdkRef:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-object v0
.end method

.method public static getSidecarFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 236
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->getInstance()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 241
    :cond_0
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    const/4 v1, 0x0

    .line 246
    invoke-interface {v0, p1, v1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getContentSidecarDirectory(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    const-string v0, "KLO.entities"

    if-eqz p0, :cond_2

    .line 251
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 253
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".asc"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 255
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static isSidecarPresent()Z
    .locals 3

    .line 260
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->getInstance()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 265
    :cond_0
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 270
    :cond_1
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    .line 275
    :cond_2
    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/amazon/klo/KindleLearningObjectPlugin;->getSidecarFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 276
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method private isTextbook(Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 285
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getContentClass()Lcom/amazon/kindle/krx/content/IBook$BookContentClass;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/krx/content/IBook$BookContentClass;->TEXTBOOK:Lcom/amazon/kindle/krx/content/IBook$BookContentClass;

    if-eq v1, v2, :cond_0

    const-string/jumbo v1, "textbook_type"

    invoke-interface {p1, v1}, Lcom/amazon/kindle/krx/content/IBook;->getExtendedMetadata(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private static declared-synchronized setInstance(Lcom/amazon/klo/KindleLearningObjectPlugin;)V
    .locals 3

    const-class v0, Lcom/amazon/klo/KindleLearningObjectPlugin;

    monitor-enter v0

    .line 96
    :try_start_0
    sget-object v1, Lcom/amazon/klo/KindleLearningObjectPlugin;->instance:Lcom/amazon/klo/KindleLearningObjectPlugin;

    if-eqz v1, :cond_0

    .line 98
    sget-object v1, Lcom/amazon/klo/KindleLearningObjectPlugin;->TAG:Ljava/lang/String;

    const-string v2, "KLO plugin already initialized, overwriting static instance."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_0
    sput-object p0, Lcom/amazon/klo/KindleLearningObjectPlugin;->instance:Lcom/amazon/klo/KindleLearningObjectPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public discardIntent()V
    .locals 1

    const/4 v0, 0x0

    .line 504
    iput-object v0, p0, Lcom/amazon/klo/KindleLearningObjectPlugin;->savedIntent:Landroid/content/Intent;

    return-void
.end method

.method public dontDiscardIntentOnNextNavigation()V
    .locals 1

    const/4 v0, 0x0

    .line 489
    iput-boolean v0, p0, Lcom/amazon/klo/KindleLearningObjectPlugin;->discardIntentOnNavigation:Z

    return-void
.end method

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

    .line 521
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getReaderOrientation()Lcom/amazon/klo/KindleLearningObjectPlugin$ReaderOrientation;
    .locals 1

    .line 509
    iget-object v0, p0, Lcom/amazon/klo/KindleLearningObjectPlugin;->readerOrientation:Lcom/amazon/klo/KindleLearningObjectPlugin$ReaderOrientation;

    return-object v0
.end method

.method public getSavedIntent()Landroid/content/Intent;
    .locals 1

    .line 494
    iget-object v0, p0, Lcom/amazon/klo/KindleLearningObjectPlugin;->savedIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public initialize(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 10

    .line 294
    sput-object p1, Lcom/amazon/klo/KindleLearningObjectPlugin;->sdkRef:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 296
    invoke-static {p0}, Lcom/amazon/klo/KindleLearningObjectPlugin;->setInstance(Lcom/amazon/klo/KindleLearningObjectPlugin;)V

    .line 297
    sget-object p1, Lcom/amazon/klo/KindleLearningObjectPlugin;->sdkRef:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-static {p1}, Lcom/amazon/klo/sdk/KRX;->setInstance(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 298
    sget-object p1, Lcom/amazon/klo/KindleLearningObjectPlugin;->sdkRef:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object p1

    sget-object v0, Lcom/amazon/klo/KindleLearningObjectPlugin;->TAG:Ljava/lang/String;

    const-string v1, "KLO initialized"

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    sget-object p1, Lcom/amazon/klo/KindleLearningObjectPlugin;->sdkRef:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMessagingManager()Lcom/amazon/kindle/krx/messaging/IMessagingManager;

    move-result-object p1

    new-instance v0, Lcom/amazon/klo/todo/SidecarToDoHandler;

    sget-object v1, Lcom/amazon/klo/KindleLearningObjectPlugin;->sdkRef:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-direct {v0, v1}, Lcom/amazon/klo/todo/SidecarToDoHandler;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/messaging/IMessagingManager;->register(Lcom/amazon/kindle/krx/messaging/ITodoEventHandler;)V

    .line 304
    sget-object p1, Lcom/amazon/klo/KindleLearningObjectPlugin;->sdkRef:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object p1

    .line 305
    new-instance v0, Lcom/amazon/klo/KindleLearningObjectPlugin$KLOStandAloneButtonProvider;

    invoke-direct {v0, p0}, Lcom/amazon/klo/KindleLearningObjectPlugin$KLOStandAloneButtonProvider;-><init>(Lcom/amazon/klo/KindleLearningObjectPlugin;)V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->registerCustomActionButtonProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V

    .line 308
    :try_start_0
    invoke-static {}, Lcom/amazon/klo/HighlightProvider;->getInstance()Lcom/amazon/klo/HighlightProvider;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->registerContentDecorationProvider(Lcom/amazon/kindle/krx/ui/IContentDecorationProvider;)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 312
    sget-object v0, Lcom/amazon/klo/KindleLearningObjectPlugin;->sdkRef:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    sget-object v1, Lcom/amazon/klo/KindleLearningObjectPlugin;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot register content decoration provider, exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/UnsupportedOperationException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    :goto_0
    sget-object p1, Lcom/amazon/klo/KindleLearningObjectPlugin;->sdkRef:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object p1

    new-instance v0, Lcom/amazon/klo/KindleLearningObjectPlugin$2;

    invoke-direct {v0, p0}, Lcom/amazon/klo/KindleLearningObjectPlugin$2;-><init>(Lcom/amazon/klo/KindleLearningObjectPlugin;)V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->registerReaderNavigationListener(Lcom/amazon/kindle/krx/reader/IReaderNavigationListener;)V

    .line 379
    new-instance p1, Lcom/amazon/klo/KLOTutorialProvider;

    invoke-direct {p1}, Lcom/amazon/klo/KLOTutorialProvider;-><init>()V

    .line 380
    sget-object v0, Lcom/amazon/klo/KindleLearningObjectPlugin;->sdkRef:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getTutorialManager()Lcom/amazon/kindle/krx/tutorial/ITutorialManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/tutorial/ITutorialManager;->registerTutorialProvider(Lcom/amazon/kindle/krx/tutorial/TutorialProvider;)V

    .line 381
    invoke-static {p1}, Lcom/amazon/klo/KindleLearningObjectActivity;->setTutorialProvider(Lcom/amazon/klo/KLOTutorialProvider;)V

    .line 383
    sget-object p1, Lcom/amazon/klo/KindleLearningObjectPlugin;->sdkRef:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/application/ApplicationFeature;->NEUTRON_PHASE_1:Lcom/amazon/kindle/krx/application/ApplicationFeature;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->isFeatureEnabled(Lcom/amazon/kindle/krx/application/ApplicationFeature;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 386
    :cond_0
    sget-object p1, Lcom/amazon/klo/KindleLearningObjectPlugin;->sdkRef:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 387
    sget v0, Lcom/amazon/klo/R$integer;->klo_ftue_tutorial_default_priority:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 388
    sget v1, Lcom/amazon/klo/R$integer;->klo_ftue_tutorial_default_max_count:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    .line 389
    sget v1, Lcom/amazon/klo/R$string;->klo_ftue_tutorial_default_event_key:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 390
    sget v1, Lcom/amazon/klo/R$string;->klo_ftue_tutorial_default_metric_key:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 392
    sget v1, Lcom/amazon/klo/R$string;->klo_ftue_tutorial_default:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 393
    sget v2, Lcom/amazon/klo/R$string;->klo_ftue_tutorial_reflowable:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 395
    new-instance v4, Lcom/amazon/kedu/ftue/events/TutorialPage;

    sget v6, Lcom/amazon/klo/R$string;->klo_ftue_tutorial_default_text:I

    const/4 v8, 0x0

    invoke-direct {v4, v6, v8, v1}, Lcom/amazon/kedu/ftue/events/TutorialPage;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 396
    new-instance v1, Lcom/amazon/kedu/ftue/events/TutorialPage;

    sget v6, Lcom/amazon/klo/R$string;->klo_ftue_tutorial_default_text:I

    invoke-direct {v1, v6, v8, v2}, Lcom/amazon/kedu/ftue/events/TutorialPage;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 397
    new-instance v6, Lcom/amazon/klo/KindleLearningObjectPlugin$3;

    invoke-direct {v6, p0, v1, v4}, Lcom/amazon/klo/KindleLearningObjectPlugin$3;-><init>(Lcom/amazon/klo/KindleLearningObjectPlugin;Lcom/amazon/kedu/ftue/events/TutorialPage;Lcom/amazon/kedu/ftue/events/TutorialPage;)V

    .line 406
    new-instance v8, Lcom/amazon/klo/KindleLearningObjectPlugin$4;

    move-object v1, v8

    move-object v2, p0

    move v4, v0

    invoke-direct/range {v1 .. v7}, Lcom/amazon/klo/KindleLearningObjectPlugin$4;-><init>(Lcom/amazon/klo/KindleLearningObjectPlugin;Ljava/lang/String;ILjava/lang/String;Lcom/amazon/kedu/ftue/events/TutorialPageProvider;I)V

    .line 417
    sget v1, Lcom/amazon/klo/R$string;->klo_ftue_jit_event_key:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 418
    sget v1, Lcom/amazon/klo/R$string;->klo_ftue_jit_metric_key:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 419
    new-instance v9, Lcom/amazon/klo/KindleLearningObjectPlugin$5;

    sget v1, Lcom/amazon/klo/R$id;->klo_button_id:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/amazon/klo/R$string;->klo_ftue_jit_message:I

    move-object v1, v9

    invoke-direct/range {v1 .. v7}, Lcom/amazon/klo/KindleLearningObjectPlugin$5;-><init>(Lcom/amazon/klo/KindleLearningObjectPlugin;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 453
    sget v0, Lcom/amazon/klo/R$string;->klo_ftue_edu_sequence_xray_event_key:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 455
    invoke-static {}, Lcom/amazon/kedu/ftue/Plugin;->getFTUEManager()Lcom/amazon/kedu/ftue/IFTUEManager;

    move-result-object v0

    .line 456
    invoke-interface {v0, p1, v8}, Lcom/amazon/kedu/ftue/IFTUEManager;->registerTutorialForSequence(Ljava/lang/String;Lcom/amazon/kedu/ftue/events/Tutorial;)V

    .line 457
    invoke-interface {v0, v9}, Lcom/amazon/kedu/ftue/IFTUEManager;->registerJit(Lcom/amazon/kedu/ftue/events/JIT;)V

    .line 461
    :cond_1
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 463
    sget-object p1, Lcom/amazon/klo/KindleLearningObjectPlugin;->sdkRef:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object p1

    new-instance v0, Lcom/amazon/klo/KindleLearningObjectPlugin$6;

    invoke-direct {v0, p0}, Lcom/amazon/klo/KindleLearningObjectPlugin$6;-><init>(Lcom/amazon/klo/KindleLearningObjectPlugin;)V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->registerDebugMenuProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V

    .line 483
    :cond_2
    sget-object p1, Lcom/amazon/klo/KindleLearningObjectPlugin;->sdkRef:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getSearchManager()Lcom/amazon/kindle/krx/search/IReaderSearchManager;

    move-result-object p1

    new-instance v0, Lcom/amazon/klo/search/SearchProvider;

    invoke-direct {v0}, Lcom/amazon/klo/search/SearchProvider;-><init>()V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/search/IReaderSearchManager;->registerSearchProvider(Lcom/amazon/kindle/krx/search/ISearchProvider;)V

    return-void
.end method

.method public persistReaderOrientation(Landroid/content/Context;)V
    .locals 1

    .line 514
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 515
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v0, p1, :cond_0

    sget-object p1, Lcom/amazon/klo/KindleLearningObjectPlugin$ReaderOrientation;->LANDSCAPE:Lcom/amazon/klo/KindleLearningObjectPlugin$ReaderOrientation;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/amazon/klo/KindleLearningObjectPlugin$ReaderOrientation;->PORTRAIT:Lcom/amazon/klo/KindleLearningObjectPlugin$ReaderOrientation;

    :goto_0
    iput-object p1, p0, Lcom/amazon/klo/KindleLearningObjectPlugin;->readerOrientation:Lcom/amazon/klo/KindleLearningObjectPlugin$ReaderOrientation;

    return-void
.end method

.method public saveIntent(Landroid/content/Intent;)V
    .locals 0

    .line 499
    iput-object p1, p0, Lcom/amazon/klo/KindleLearningObjectPlugin;->savedIntent:Landroid/content/Intent;

    return-void
.end method
