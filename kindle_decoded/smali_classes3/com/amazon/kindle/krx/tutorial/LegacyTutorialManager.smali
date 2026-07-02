.class public Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager;
.super Ljava/lang/Object;
.source "LegacyTutorialManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager$TutorialBrochureListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final SMD_TEXTBOOK_KEY:Ljava/lang/String; = "textbook_type"

.field private static final TAG:Ljava/lang/String;

.field private static tutorialInstance:Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager;


# instance fields
.field private currentCount:I

.field private isChromeShownInReadingSession:Z

.field private providerRegistry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kindle/krx/providers/IProviderRegistry<",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/tutorial/Tutorial;",
            ">;",
            "Lcom/amazon/kindle/krx/tutorial/events/EventType;",
            "Lcom/amazon/kindle/krx/providers/ISortableProvider<",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/tutorial/Tutorial;",
            ">;",
            "Lcom/amazon/kindle/krx/tutorial/events/EventType;",
            ">;>;"
        }
    .end annotation
.end field

.field private setOfTutorialShown:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/tutorial/Tutorial;",
            ">;"
        }
    .end annotation
.end field

.field private tutorialQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/tutorial/Tutorial;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    const-class v0, Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 69
    iput v0, p0, Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager;->currentCount:I

    const/4 v1, 0x0

    .line 81
    iput-object v1, p0, Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager;->setOfTutorialShown:Ljava/util/Collection;

    .line 89
    iput-boolean v0, p0, Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager;->isChromeShownInReadingSession:Z

    .line 96
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method private createBrochureOptionsWrapper(Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions;)Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions;
    .locals 2

    .line 447
    new-instance v0, Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions;

    if-eqz p1, :cond_0

    invoke-direct {v0, p1}, Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions;-><init>(Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions;)V

    goto :goto_0

    :cond_0
    invoke-direct {v0}, Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions;-><init>()V

    .line 448
    :goto_0
    new-instance v1, Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager$TutorialBrochureListener;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions;->listener:Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions$BrochureListener;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-direct {v1, p1}, Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager$TutorialBrochureListener;-><init>(Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions$BrochureListener;)V

    iput-object v1, v0, Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions;->listener:Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions$BrochureListener;

    return-object v0
.end method

.method private createBrochureTutorial(Lcom/amazon/kindle/krx/tutorial/BrochureTutorial;)V
    .locals 4

    .line 423
    invoke-static {}, Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager;->getCurrentReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 425
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/amazon/kcp/ui/brochure/BrochureActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 428
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/tutorial/BrochureTutorial;->getSlides()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v3, "brochure_assets"

    .line 429
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 430
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/tutorial/BrochureTutorial;->getOptions()Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager;->createBrochureOptionsWrapper(Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions;)Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions;

    move-result-object p1

    const-string v2, "brochure_options"

    .line 431
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/4 p1, 0x1

    const-string v2, "brochure_from_tutorial"

    .line 432
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 p1, 0x6

    .line 433
    invoke-virtual {v0, v1, p1}, Lcom/amazon/kcp/reader/ReaderActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method private createDialogTutorial(Lcom/amazon/kindle/krx/tutorial/DialogTutorial;)V
    .locals 8

    .line 491
    invoke-static {}, Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager;->getCurrentReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 493
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 495
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/tutorial/DialogTutorial;->getHeader()Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/tutorial/DialogTutorial;->getDescription()Landroid/text/SpannableString;

    move-result-object v2

    .line 496
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/tutorial/DialogTutorial;->getImage()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/tutorial/DialogTutorial;->getPositiveButtonText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/tutorial/DialogTutorial;->getNegativeButtonText()Ljava/lang/String;

    move-result-object v5

    .line 497
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/tutorial/DialogTutorial;->getNeutralButtonText()Ljava/lang/String;

    move-result-object v6

    move-object v7, p1

    .line 495
    invoke-static/range {v1 .. v7}, Lcom/amazon/kindle/krx/tutorial/DialogTutorialFragment;->newInstance(Landroid/text/SpannableString;Landroid/text/SpannableString;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/tutorial/DialogTutorial;)Lcom/amazon/kindle/krx/tutorial/DialogTutorialFragment;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 500
    invoke-virtual {p1, v0}, Lcom/amazon/kindle/krx/tutorial/DialogTutorialFragment;->showDialog(Landroidx/fragment/app/FragmentManager;)V

    :cond_0
    return-void
.end method

.method private createJITTutorialActivity(Lcom/amazon/kindle/krx/tutorial/JITTutorial;)V
    .locals 7

    .line 401
    invoke-static {}, Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager;->getCurrentReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 404
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/amazon/kindle/krx/tutorial/JITTutorialFragmentActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "jit_tutorial"

    .line 405
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 407
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/tutorial/JITTutorial;->getDelay()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-ltz v6, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/tutorial/JITTutorial;->getDelay()J

    move-result-wide v4

    .line 408
    :cond_0
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object p1

    new-instance v2, Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager$1;-><init>(Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager;Lcom/amazon/kcp/reader/ReaderActivity;Landroid/content/Intent;)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v2, v4, v5, v0}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    :cond_1
    return-void
.end method

.method private static getCurrentReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;
    .locals 1

    .line 527
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager;
    .locals 3

    const-class v0, Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager;

    monitor-enter v0

    .line 108
    :try_start_0
    sget-object v1, Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager;->tutorialInstance:Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager;

    if-nez v1, :cond_0

    .line 109
    new-instance v1, Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager;

    invoke-direct {v1}, Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager;-><init>()V

    sput-object v1, Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager;->tutorialInstance:Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager;

    .line 110
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, v1, Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager;->tutorialQueue:Ljava/util/Queue;

    .line 111
    sget-object v1, Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager;->tutorialInstance:Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager;

    new-instance v2, Lcom/amazon/kindle/krx/providers/SortableProviderRegistry;

    invoke-direct {v2}, Lcom/amazon/kindle/krx/providers/SortableProviderRegistry;-><init>()V

    iput-object v2, v1, Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager;->providerRegistry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;

    .line 113
    :cond_0
    sget-object v1, Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager;->tutorialInstance:Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getTutorialForEvent(Lcom/amazon/kindle/krx/tutorial/events/EventType;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/tutorial/events/EventType;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/tutorial/Tutorial;",
            ">;"
        }
    .end annotation

    .line 512
    iget-object v0, p0, Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager;->providerRegistry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/providers/IProviderRegistry;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    return-object p1
.end method

.method public static hideReaderChrome()V
    .locals 1

    .line 251
    invoke-static {}, Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager;->getCurrentReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 253
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->hideOverlays()V

    :cond_0
    return-void
.end method

.method public static hideViewPanel()V
    .locals 1

    .line 271
    invoke-static {}, Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager;->getCurrentReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 273
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->hideViewPanel()V

    :cond_0
    return-void
.end method

.method private isBookInStartReadingPosition(Lcom/amazon/android/docviewer/KindleDocViewer;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 554
    :cond_0
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/ILocalBookItem;->getLastPositionRead()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    return v3

    .line 559
    :cond_1
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object p1

    .line 560
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDoc;->getStartReadingPosition()I

    move-result v2

    .line 561
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDoc;->getPageEndPosition()I

    move-result p1

    sub-int/2addr v1, v3

    if-lt v2, v1, :cond_2

    if-gt v2, p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private isDictionary(Lcom/amazon/kindle/model/content/ILocalBookInfo;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 544
    new-instance v0, Lcom/amazon/kindle/krx/content/LocalBook;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/krx/content/LocalBook;-><init>(Lcom/amazon/kindle/model/content/ILocalBookInfo;)V

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/content/LocalBook;->isDictionary()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isTextbook(Lcom/amazon/kindle/model/content/ILocalBookInfo;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 540
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isTextbook()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "textbook_type"

    invoke-interface {p1, v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getExtendedMetadata(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private launch()Z
    .locals 7

    .line 311
    iget-object v0, p0, Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager;->setOfTutorialShown:Ljava/util/Collection;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 313
    invoke-static {}, Lcom/amazon/kcp/info/TutorialLockHelper;->getLock()Lcom/amazon/kcp/info/TutorialLock;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/info/TutorialLock;->unlockTutorials()V

    return v1

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 323
    :cond_1
    iget-object v3, p0, Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager;->setOfTutorialShown:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kindle/krx/tutorial/Tutorial;

    .line 324
    iget v6, p0, Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager;->currentCount:I

    if-ne v0, v6, :cond_2

    .line 325
    invoke-direct {p0, v4}, Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager;->launchTutorial(Lcom/amazon/kindle/krx/tutorial/Tutorial;)Z

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 332
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager;->tutorialQueue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v3

    if-lez v3, :cond_4

    if-nez v2, :cond_4

    .line 336
    iget-object v0, p0, Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager;->tutorialQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    iput-object v0, p0, Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager;->setOfTutorialShown:Ljava/util/Collection;

    .line 338
    iput v1, p0, Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager;->currentCount:I

    const/4 v0, 0x0

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    :goto_2
    if-nez v5, :cond_1

    if-nez v2, :cond_5

    .line 347
    iput v1, p0, Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager;->currentCount:I

    const/4 v0, 0x0

    .line 348
    iput-object v0, p0, Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager;->setOfTutorialShown:Ljava/util/Collection;

    .line 349
    invoke-static {}, Lcom/amazon/kcp/info/TutorialLockHelper;->getLock()Lcom/amazon/kcp/info/TutorialLock;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/info/TutorialLock;->unlockTutorials()V

    :cond_5
    return v2
.end method

.method private launchIfNewRequest()Z
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager;->tutorialQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 287
    iget-object v0, p0, Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager;->setOfTutorialShown:Ljava/util/Collection;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager;->tutorialQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    iput-object v0, p0, Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager;->setOfTutorialShown:Ljava/util/Collection;

    .line 294
    invoke-direct {p0}, Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager;->launch()Z

    move-result v0

    return v0

    .line 290
    :cond_1
    :goto_0
    invoke-static {}, Lcom/amazon/kcp/info/TutorialLockHelper;->getLock()Lcom/amazon/kcp/info/TutorialLock;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/info/TutorialLock;->unlockTutorials()V

    const/4 v0, 0x0

    return v0
.end method

.method private launchTutorial(Lcom/amazon/kindle/krx/tutorial/Tutorial;)Z
    .locals 5

    .line 362
    instance-of v0, p1, Lcom/amazon/kindle/krx/tutorial/DialogTutorial;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 363
    check-cast p1, Lcom/amazon/kindle/krx/tutorial/DialogTutorial;

    .line 364
    invoke-direct {p0, p1}, Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager;->createDialogTutorial(Lcom/amazon/kindle/krx/tutorial/DialogTutorial;)V

    goto :goto_1

    .line 368
    :cond_0
    instance-of v0, p1, Lcom/amazon/kindle/krx/tutorial/JITTutorial;

    if-eqz v0, :cond_3

    .line 369
    check-cast p1, Lcom/amazon/kindle/krx/tutorial/JITTutorial;

    .line 370
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/tutorial/JITTutorial;->getAsset()Lcom/amazon/kindle/krx/tutorial/JITTutorial$Asset;

    move-result-object v0

    .line 371
    invoke-static {}, Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager;->getCurrentReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v2

    if-eqz v0, :cond_2

    .line 373
    sget-object v3, Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager$2;->$SwitchMap$com$amazon$kindle$krx$tutorial$JITTutorial$Asset:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    if-eq v3, v1, :cond_1

    .line 381
    sget-object v2, Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Detected invalid asset "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 376
    invoke-static {}, Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager;->showViewPanelIfNotVisible()V

    .line 377
    invoke-static {}, Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager;->hideReaderChrome()V

    .line 384
    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager;->createJITTutorialActivity(Lcom/amazon/kindle/krx/tutorial/JITTutorial;)V

    goto :goto_1

    .line 386
    :cond_3
    instance-of v0, p1, Lcom/amazon/kindle/krx/tutorial/BrochureTutorial;

    if-eqz v0, :cond_4

    .line 387
    check-cast p1, Lcom/amazon/kindle/krx/tutorial/BrochureTutorial;

    .line 388
    invoke-direct {p0, p1}, Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager;->createBrochureTutorial(Lcom/amazon/kindle/krx/tutorial/BrochureTutorial;)V

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method private shouldAskForBookOpenTutorials()Z
    .locals 3

    .line 531
    invoke-static {}, Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager;->getCurrentReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 532
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 533
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    .line 535
    :cond_1
    invoke-direct {p0, v1}, Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager;->isDictionary(Lcom/amazon/kindle/model/content/ILocalBookInfo;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0, v1}, Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager;->isTextbook(Lcom/amazon/kindle/model/content/ILocalBookInfo;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v0}, Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager;->isBookInStartReadingPosition(Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method private shouldShowChromeJIT()Z
    .locals 8

    .line 127
    invoke-static {}, Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager;->getCurrentReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 129
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    if-eqz v0, :cond_2

    .line 130
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v1

    :cond_2
    const/4 v3, 0x0

    if-eqz v0, :cond_8

    if-eqz v2, :cond_8

    if-nez v1, :cond_3

    goto :goto_4

    .line 135
    :cond_3
    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDoc;->getStartReadingPosition()I

    move-result v0

    .line 136
    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDoc;->getPageStartPosition()I

    move-result v4

    .line 137
    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDoc;->getPageEndPosition()I

    move-result v5

    .line 139
    invoke-interface {v2}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/kindle/krx/content/BookFormat;->getBookFormatFromMimeType(Ljava/lang/String;)Lcom/amazon/kindle/krx/content/BookFormat;

    move-result-object v2

    .line 140
    sget-object v6, Lcom/amazon/kindle/krx/content/BookFormat;->MOBI7:Lcom/amazon/kindle/krx/content/BookFormat;

    const/4 v7, 0x1

    if-eq v2, v6, :cond_5

    sget-object v6, Lcom/amazon/kindle/krx/content/BookFormat;->MOBI8:Lcom/amazon/kindle/krx/content/BookFormat;

    if-eq v2, v6, :cond_5

    sget-object v6, Lcom/amazon/kindle/krx/content/BookFormat;->TOPAZ:Lcom/amazon/kindle/krx/content/BookFormat;

    if-ne v2, v6, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v2, 0x1

    :goto_3
    if-eqz v2, :cond_6

    .line 156
    invoke-interface {v1, v0}, Lcom/amazon/android/docviewer/KindleDoc;->userLocationFromPosition(I)I

    move-result v0

    .line 157
    invoke-interface {v1, v4}, Lcom/amazon/android/docviewer/KindleDoc;->userLocationFromPosition(I)I

    move-result v4

    .line 158
    invoke-interface {v1, v5}, Lcom/amazon/android/docviewer/KindleDoc;->userLocationFromPosition(I)I

    move-result v5

    :cond_6
    if-gt v4, v0, :cond_7

    if-gt v0, v5, :cond_7

    return v3

    :cond_7
    return v7

    :cond_8
    :goto_4
    return v3
.end method

.method public static showReaderChromeIfNotVisible()V
    .locals 1

    .line 240
    invoke-static {}, Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager;->getCurrentReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->makeOverlaysVisible()V

    :cond_0
    return-void
.end method

.method public static showViewPanelIfNotVisible()V
    .locals 1

    .line 261
    invoke-static {}, Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager;->getCurrentReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 263
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->keepViewPanelVisible()V

    :cond_0
    return-void
.end method


# virtual methods
.method public createActionBarButtonTutorial(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/krx/tutorial/JITTutorial;
    .locals 1

    .line 233
    new-instance v0, Lcom/amazon/kcp/info/brochure/ActionBarJITTutorial;

    invoke-direct {v0, p1, p2}, Lcom/amazon/kcp/info/brochure/ActionBarJITTutorial;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public nextTutorial()V
    .locals 1

    .line 218
    iget v0, p0, Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager;->currentCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager;->currentCount:I

    .line 219
    invoke-direct {p0}, Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager;->launch()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 220
    iput v0, p0, Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager;->currentCount:I

    const/4 v0, 0x0

    .line 221
    iput-object v0, p0, Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager;->setOfTutorialShown:Ljava/util/Collection;

    :cond_0
    return-void
.end method

.method public onRecieveTutorialEvent(Lcom/amazon/kindle/event/TutorialEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 199
    invoke-virtual {p1}, Lcom/amazon/kindle/event/TutorialEvent;->getType()Lcom/amazon/kindle/krx/tutorial/events/EventType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/tutorial/events/EventType;->CHROME_OPEN:Lcom/amazon/kindle/krx/tutorial/events/EventType;

    if-ne v0, v1, :cond_0

    .line 200
    invoke-direct {p0}, Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager;->shouldShowChromeJIT()Z

    move-result v0

    goto :goto_0

    .line 201
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/event/TutorialEvent;->getType()Lcom/amazon/kindle/krx/tutorial/events/EventType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/tutorial/events/EventType;->BOOK_OPEN:Lcom/amazon/kindle/krx/tutorial/events/EventType;

    if-ne v0, v1, :cond_1

    .line 202
    invoke-direct {p0}, Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager;->shouldAskForBookOpenTutorials()Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 206
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager;->onTutorialEvent(Lcom/amazon/kindle/event/TutorialEvent;)V

    :cond_2
    return-void
.end method

.method public onTutorialEvent(Lcom/amazon/kindle/event/TutorialEvent;)V
    .locals 1

    .line 179
    invoke-static {p1}, Lcom/amazon/kindle/tutorial/TutorialMigrationHelper;->useLegacyEvent(Lcom/amazon/kindle/event/TutorialEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 184
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/info/TutorialLockHelper;->getLock()Lcom/amazon/kcp/info/TutorialLock;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/info/TutorialLock;->tryLockTutorials()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 188
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/kindle/event/TutorialEvent;->getType()Lcom/amazon/kindle/krx/tutorial/events/EventType;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager;->getTutorialForEvent(Lcom/amazon/kindle/krx/tutorial/events/EventType;)Ljava/util/Collection;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 190
    iget-object v0, p0, Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager;->tutorialQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 192
    :cond_2
    invoke-direct {p0}, Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager;->launchIfNewRequest()Z

    return-void
.end method

.method public registerProvider(Lcom/amazon/kindle/krx/providers/ISortableProvider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/providers/ISortableProvider<",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/tutorial/Tutorial;",
            ">;",
            "Lcom/amazon/kindle/krx/tutorial/events/EventType;",
            ">;)V"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/amazon/kindle/krx/tutorial/LegacyTutorialManager;->providerRegistry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/providers/IProviderRegistry;->register(Lcom/amazon/kindle/krx/providers/IProvider;)V

    return-void
.end method
