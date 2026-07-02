.class public Lcom/amazon/kcp/reader/ReaderController;
.super Ljava/lang/Object;
.source "ReaderController.java"

# interfaces
.implements Lcom/amazon/kcp/reader/IAndroidReaderController;


# static fields
.field public static final ADJACENT_PAGES_PRERENDERED_EVENT_TYPE:Lcom/amazon/kindle/event/EventType;

.field public static final DOCVIEWER_POSITION_CHANGED_EVENT_TYPE:Lcom/amazon/kindle/event/EventType;

.field public static final LOGICAL_POSITION_NAVIGATION_EVENT_TYPE:Lcom/amazon/kindle/event/EventType;

.field public static final PAGETURN_ABORTED_EVENT_TYPE:Lcom/amazon/kindle/event/EventType;

.field private static final READER_EVENT_BROKER_WORKERS_COUNT:I = 0x2

.field private static final SUPPORTED_EVENT_TYPES:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/event/EventType;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final activitiesBoundToBook:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private activityFactoryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kcp/application/ActivityFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final appController:Lcom/amazon/kcp/application/IAndroidApplicationController;

.field private final applicationContext:Landroid/content/Context;

.field private final bookOpenExecutor:Ljava/util/concurrent/ExecutorService;

.field private closingCurrentBook:Z

.field private currentBookDocViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

.field private final docViewerFactory:Lcom/amazon/android/docviewer/KindleDocViewerGenerator;

.field private factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

.field private finishingAllActivities:Z

.field private lastBookOpenTime:J

.field protected final messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

.field private pendingTutorialsToRegister:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/providers/ISortableProvider<",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/tutorial/Tutorial;",
            ">;",
            "Lcom/amazon/kindle/krx/tutorial/events/EventType;",
            ">;>;"
        }
    .end annotation
.end field

.field private sharingController:Lcom/amazon/kcp/sharing_extras/ISharingController;

.field private startPage:Lcom/amazon/kcp/reader/IReaderController$StartPage;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 116
    const-class v0, Lcom/amazon/kcp/reader/ReaderController;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/ReaderController;->TAG:Ljava/lang/String;

    .line 125
    sget-object v0, Lcom/amazon/kcp/events/ReaderEventTypes;->ADJACENT_PAGES_PRERENDERED_EVENT:Lcom/amazon/kcp/events/ReaderEventTypes;

    invoke-virtual {v0}, Lcom/amazon/kcp/events/ReaderEventTypes;->getEventType()Lcom/amazon/kindle/event/EventType;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/ReaderController;->ADJACENT_PAGES_PRERENDERED_EVENT_TYPE:Lcom/amazon/kindle/event/EventType;

    .line 126
    sget-object v0, Lcom/amazon/kcp/events/ReaderEventTypes;->DOCVIEWER_POSITION_CHANGED_EVENT:Lcom/amazon/kcp/events/ReaderEventTypes;

    invoke-virtual {v0}, Lcom/amazon/kcp/events/ReaderEventTypes;->getEventType()Lcom/amazon/kindle/event/EventType;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/ReaderController;->DOCVIEWER_POSITION_CHANGED_EVENT_TYPE:Lcom/amazon/kindle/event/EventType;

    .line 127
    sget-object v0, Lcom/amazon/kcp/events/ReaderEventTypes;->LOGICAL_POSITION_NAVIGATION_EVENT:Lcom/amazon/kcp/events/ReaderEventTypes;

    invoke-virtual {v0}, Lcom/amazon/kcp/events/ReaderEventTypes;->getEventType()Lcom/amazon/kindle/event/EventType;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/ReaderController;->LOGICAL_POSITION_NAVIGATION_EVENT_TYPE:Lcom/amazon/kindle/event/EventType;

    .line 128
    sget-object v0, Lcom/amazon/kcp/events/ReaderEventTypes;->PAGETURN_ABORTED_EVENT:Lcom/amazon/kcp/events/ReaderEventTypes;

    invoke-virtual {v0}, Lcom/amazon/kcp/events/ReaderEventTypes;->getEventType()Lcom/amazon/kindle/event/EventType;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/ReaderController;->PAGETURN_ABORTED_EVENT_TYPE:Lcom/amazon/kindle/event/EventType;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/amazon/kindle/event/EventType;

    .line 132
    sget-object v2, Lcom/amazon/kcp/reader/ReaderController;->ADJACENT_PAGES_PRERENDERED_EVENT_TYPE:Lcom/amazon/kindle/event/EventType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kcp/reader/ReaderController;->DOCVIEWER_POSITION_CHANGED_EVENT_TYPE:Lcom/amazon/kindle/event/EventType;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object v0, v1, v2

    sget-object v0, Lcom/amazon/kcp/reader/ReaderController;->LOGICAL_POSITION_NAVIGATION_EVENT_TYPE:Lcom/amazon/kindle/event/EventType;

    const/4 v2, 0x3

    aput-object v0, v1, v2

    .line 133
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/ReaderController;->SUPPORTED_EVENT_TYPES:Ljava/util/Collection;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 150
    iput-wide v0, p0, Lcom/amazon/kcp/reader/ReaderController;->lastBookOpenTime:J

    const/4 v0, 0x0

    .line 151
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderController;->closingCurrentBook:Z

    .line 152
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderController;->finishingAllActivities:Z

    .line 156
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/foundation/internal/IThreadPoolManager;->ExecutorBuilder()Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;

    move-result-object v0

    const-string v1, "ReaderControllerThread"

    .line 157
    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;->withName(Ljava/lang/String;)Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;

    .line 158
    invoke-interface {v0}, Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;->buildExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ReaderController;->bookOpenExecutor:Ljava/util/concurrent/ExecutorService;

    .line 166
    iput-object p1, p0, Lcom/amazon/kcp/reader/ReaderController;->applicationContext:Landroid/content/Context;

    .line 167
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/reader/ReaderController;->appController:Lcom/amazon/kcp/application/IAndroidApplicationController;

    .line 168
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/reader/ReaderController;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    .line 170
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/reader/ReaderController;->activitiesBoundToBook:Ljava/util/List;

    const/4 p1, 0x0

    .line 172
    iput-object p1, p0, Lcom/amazon/kcp/reader/ReaderController;->currentBookDocViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 173
    new-instance v0, Lcom/amazon/kcp/reader/IReaderController$StartPageDefault;

    invoke-direct {v0}, Lcom/amazon/kcp/reader/IReaderController$StartPageDefault;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ReaderController;->startPage:Lcom/amazon/kcp/reader/IReaderController$StartPage;

    .line 175
    new-instance v0, Lcom/amazon/android/docviewer/KindleDocViewerGenerator;

    new-instance v1, Lcom/amazon/android/docviewer/MobiKindleDocViewerFactory;

    invoke-direct {v1}, Lcom/amazon/android/docviewer/MobiKindleDocViewerFactory;-><init>()V

    invoke-direct {v0, v1}, Lcom/amazon/android/docviewer/KindleDocViewerGenerator;-><init>(Lcom/amazon/android/docviewer/KindleDocViewerFactory;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ReaderController;->docViewerFactory:Lcom/amazon/android/docviewer/KindleDocViewerGenerator;

    .line 176
    new-instance v1, Lcom/amazon/android/docviewer/PdfKindleDocViewerFactory;

    invoke-direct {v1}, Lcom/amazon/android/docviewer/PdfKindleDocViewerFactory;-><init>()V

    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/KindleDocViewerGenerator;->registerFactory(Lcom/amazon/android/docviewer/KindleDocViewerFactory;)Z

    .line 177
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderController;->docViewerFactory:Lcom/amazon/android/docviewer/KindleDocViewerGenerator;

    new-instance v1, Lcom/amazon/android/docviewer/MopKindleDocViewerFactory;

    invoke-direct {v1}, Lcom/amazon/android/docviewer/MopKindleDocViewerFactory;-><init>()V

    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/KindleDocViewerGenerator;->registerFactory(Lcom/amazon/android/docviewer/KindleDocViewerFactory;)Z

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ReaderController;->activityFactoryList:Ljava/util/List;

    .line 180
    iput-object p1, p0, Lcom/amazon/kcp/reader/ReaderController;->sharingController:Lcom/amazon/kcp/sharing_extras/ISharingController;

    .line 182
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    const-class v0, Lcom/amazon/kcp/reader/ReaderController;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/reader/ReaderController;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    .line 183
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/reader/ReaderController;->pendingTutorialsToRegister:Ljava/util/List;

    .line 185
    sget-object p1, Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorial;->KINDLE_ILLUSTRATED_JIT:Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorial;

    invoke-static {p1}, Lcom/amazon/kindle/tutorial/TutorialMigrationHelper;->useLegacyTutorial(Lcom/amazon/kindle/tutorial/TutorialMigrationHelper$LegacyTutorial;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 186
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderController;->pendingTutorialsToRegister:Ljava/util/List;

    new-instance v0, Lcom/amazon/kcp/reader/tutorials/KindleIllustratedJITProvider;

    invoke-direct {v0}, Lcom/amazon/kcp/reader/tutorials/KindleIllustratedJITProvider;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderController;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 192
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getSearchManager()Lcom/amazon/kindle/krx/search/IReaderSearchManager;

    move-result-object p1

    .line 193
    new-instance v0, Lcom/amazon/kcp/search/ReaderBookSearchProvider;

    invoke-direct {v0}, Lcom/amazon/kcp/search/ReaderBookSearchProvider;-><init>()V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/search/IReaderSearchManager;->registerSearchProvider(Lcom/amazon/kindle/krx/search/ISearchProvider;)V

    .line 194
    invoke-static {}, Lcom/amazon/kcp/search/autocomplete/AutoCompleteUtils;->isAutoCompleteEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 195
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderController;->applicationContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/amazon/kcp/search/autocomplete/AutoCompleteCacheManager;->initialize(Landroid/content/Context;)V

    .line 198
    :cond_1
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/reader/ReaderController;Lcom/amazon/kindle/model/content/ILocalBookItem;ZLandroid/app/Activity;Ljava/lang/String;)Landroid/content/Intent;
    .locals 0

    .line 115
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/kcp/reader/ReaderController;->executePrepareOpenReaderCommand(Lcom/amazon/kindle/model/content/ILocalBookItem;ZLandroid/app/Activity;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/kcp/reader/ReaderController;Lcom/amazon/kindle/model/content/ILocalBookItem;Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/Integer;)V
    .locals 0

    .line 115
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/kcp/reader/ReaderController;->executeOpenCommand(Lcom/amazon/kindle/model/content/ILocalBookItem;Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$200(Lcom/amazon/kcp/reader/ReaderController;)Landroid/content/Context;
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/amazon/kcp/reader/ReaderController;->applicationContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/kcp/reader/ReaderController;Lcom/amazon/kindle/model/content/ILocalBookItem;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 115
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kcp/reader/ReaderController;->launchRemoveItemActivity(Lcom/amazon/kindle/model/content/ILocalBookItem;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/amazon/kcp/reader/ReaderController;Landroid/app/Activity;Landroid/content/Intent;I)Z
    .locals 0

    .line 115
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kcp/reader/ReaderController;->showReaderPage(Landroid/app/Activity;Landroid/content/Intent;I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/amazon/kcp/reader/ReaderController;Landroid/app/Activity;Landroid/content/Intent;)Z
    .locals 0

    .line 115
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/reader/ReaderController;->showReaderPage(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .line 115
    sget-object v0, Lcom/amazon/kcp/reader/ReaderController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/amazon/kcp/reader/ReaderController;)Z
    .locals 0

    .line 115
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ReaderController;->isExpired()Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/amazon/kcp/reader/ReaderController;)Z
    .locals 0

    .line 115
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ReaderController;->isFreeTrial()Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/amazon/kcp/reader/ReaderController;Lcom/amazon/kindle/model/content/ILocalBookItem;)V
    .locals 0

    .line 115
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ReaderController;->launchFreeTrialExpiredActivity(Lcom/amazon/kindle/model/content/ILocalBookItem;)V

    return-void
.end method

.method private addBookTutorials()V
    .locals 4

    .line 1028
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1030
    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderController;->pendingTutorialsToRegister:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/krx/providers/ISortableProvider;

    .line 1031
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->registerTutorialProvider(Lcom/amazon/kindle/krx/providers/ISortableProvider;)V

    goto :goto_0

    .line 1035
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderController;->pendingTutorialsToRegister:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private commonOpenReaderValidation(Lcom/amazon/kcp/reader/IReaderController$StartPage;)Z
    .locals 7

    .line 607
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 611
    iget-wide v2, p0, Lcom/amazon/kcp/reader/ReaderController;->lastBookOpenTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    const/4 p1, 0x1

    return p1

    .line 615
    :cond_0
    iput-wide v0, p0, Lcom/amazon/kcp/reader/ReaderController;->lastBookOpenTime:J

    if-eqz p1, :cond_1

    .line 618
    iput-object p1, p0, Lcom/amazon/kcp/reader/ReaderController;->startPage:Lcom/amazon/kcp/reader/IReaderController$StartPage;

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private createBookDocviewer(Lcom/amazon/kindle/model/content/ILocalBookItem;)Lcom/amazon/android/docviewer/KindleDocViewer;
    .locals 5

    const-string v0, "KindleDocViewerGenerator.create()"

    const/4 v1, 0x1

    .line 508
    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    const/4 v1, 0x0

    .line 510
    :try_start_0
    iget-object v2, p0, Lcom/amazon/kcp/reader/ReaderController;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v3, Lcom/amazon/kcp/reader/ReaderControllerEvent;

    sget-object v4, Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;->BOOK_LIFECYCLE_INIT:Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;

    invoke-direct {v3, v4, p0, p1}, Lcom/amazon/kcp/reader/ReaderControllerEvent;-><init>(Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;Lcom/amazon/kcp/reader/ReaderController;Lcom/amazon/kindle/model/content/ILocalBookInfo;)V

    invoke-interface {v2, v3}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    .line 511
    iget-object v2, p0, Lcom/amazon/kcp/reader/ReaderController;->docViewerFactory:Lcom/amazon/android/docviewer/KindleDocViewerGenerator;

    iget-object v3, p0, Lcom/amazon/kcp/reader/ReaderController;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {v3}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getSecurity()Lcom/mobipocket/android/library/reader/AndroidSecurity;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/amazon/android/docviewer/KindleDocViewerGenerator;->create(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/system/security/Security;)Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 513
    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 514
    throw p1
.end method

.method private createReaderOpenParams(Lcom/amazon/kindle/model/content/ILocalBookItem;Ljava/lang/Boolean;)Landroid/os/Bundle;
    .locals 3

    .line 955
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderController;->startPage:Lcom/amazon/kcp/reader/IReaderController$StartPage;

    .line 956
    new-instance v1, Lcom/amazon/kcp/reader/IReaderController$StartPageDefault;

    invoke-direct {v1}, Lcom/amazon/kcp/reader/IReaderController$StartPageDefault;-><init>()V

    iput-object v1, p0, Lcom/amazon/kcp/reader/ReaderController;->startPage:Lcom/amazon/kcp/reader/IReaderController$StartPage;

    .line 958
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 959
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const-string v2, "is_book_read"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 960
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isListableBookPeriodical(Lcom/amazon/kindle/model/content/IListableBook;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "start_page"

    .line 961
    invoke-virtual {v1, p1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_0
    return-object v1
.end method

.method private doSearchCleanUp()V
    .locals 4

    .line 339
    new-instance v0, Lcom/amazon/kcp/reader/ReaderController$2;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/ReaderController$2;-><init>(Lcom/amazon/kcp/reader/ReaderController;)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/Context;

    iget-object v2, p0, Lcom/amazon/kcp/reader/ReaderController;->applicationContext:Landroid/content/Context;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 344
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private executeOpenCommand(Lcom/amazon/kindle/model/content/ILocalBookItem;Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/Integer;)V
    .locals 3

    if-nez p1, :cond_0

    .line 756
    sget-object p1, Lcom/amazon/kcp/reader/ReaderController;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/Exception;

    invoke-direct {p2}, Ljava/lang/Exception;-><init>()V

    const-string p3, "null bookItem on executeOpenCommand()! This should not be happening, who call us?"

    invoke-static {p1, p3, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 759
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/fastmetrics/BookOpenLocationMetrics;->reportBookOpened()V

    .line 760
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v0

    .line 761
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v1

    .line 762
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v2

    .line 761
    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/content/ILibraryService;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v0

    .line 764
    invoke-static {p1, v0}, Lcom/amazon/kcp/util/Utils;->isFolio(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/kindle/content/ContentMetadata;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 765
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ReaderController;->handleFolioMagazine(Lcom/amazon/kindle/model/content/ILocalBookItem;)V

    goto :goto_0

    .line 767
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/kcp/reader/ReaderController;->getBookOpenCallable(Lcom/amazon/kindle/model/content/ILocalBookItem;Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/Integer;)Ljava/util/concurrent/Callable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ReaderController;->submitOnBookOpenThread(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    :goto_0
    return-void
.end method

.method private executePrepareOpenReaderCommand(Lcom/amazon/kindle/model/content/ILocalBookItem;ZLandroid/app/Activity;Ljava/lang/String;)Landroid/content/Intent;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 751
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/kcp/reader/ReaderController;->prepareAndCreateReaderIntent(Lcom/amazon/kindle/model/content/ILocalBookItem;ZLandroid/app/Activity;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method private getBookId(Lcom/amazon/kindle/model/content/ILocalBookItem;)Ljava/lang/String;
    .locals 0

    .line 713
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getBookOpenCallable(Lcom/amazon/kindle/model/content/ILocalBookItem;Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/Integer;)Ljava/util/concurrent/Callable;
    .locals 7

    .line 779
    new-instance v6, Lcom/amazon/kcp/reader/ReaderController$4;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kcp/reader/ReaderController$4;-><init>(Lcom/amazon/kcp/reader/ReaderController;Lcom/amazon/kindle/model/content/ILocalBookItem;Landroid/app/Activity;Ljava/lang/Integer;Landroid/content/Intent;)V

    return-object v6
.end method

.method private getDocOpenIntent(Lcom/amazon/android/docviewer/KindleDoc;Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 3

    .line 229
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getDeviceConfigurator()Lcom/amazon/kcp/application/IAndroidDeviceConfigurator;

    move-result-object v0

    .line 230
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/reader/ReaderController;->activityFactoryList:Ljava/util/List;

    .line 229
    invoke-interface {v0, v1, p1, p2, v2}, Lcom/amazon/kcp/application/IAndroidDeviceConfigurator;->getDocOpenIntent(Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDoc;Landroid/os/Bundle;Ljava/util/List;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method private getWaypointsAsJson(Lcom/amazon/kindle/model/content/ILocalBookItem;)Ljava/lang/String;
    .locals 3

    .line 678
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 685
    :cond_0
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v2

    if-eqz v2, :cond_4

    if-nez p1, :cond_1

    goto :goto_0

    .line 689
    :cond_1
    invoke-interface {v2}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v2

    if-nez v2, :cond_2

    return-object v1

    .line 693
    :cond_2
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return-object v1

    .line 697
    :cond_3
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getWaypointsModel()Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 699
    invoke-virtual {p1}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->getWaypointsAsJson()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_0
    return-object v1
.end method

.method private handleFolioMagazine(Lcom/amazon/kindle/model/content/ILocalBookItem;)V
    .locals 3

    .line 772
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "NewsstandOpenContentType"

    const-string v2, "YJFolioContentTypeExpired"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderController;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$string;->error_title_open_incompatible_version:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 774
    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderController;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$string;->error_message_open_incompatible_version:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 775
    invoke-direct {p0, p1, v0, v1}, Lcom/amazon/kcp/reader/ReaderController;->launchRemoveItemActivity(Lcom/amazon/kindle/model/content/ILocalBookItem;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private initiateDeleteOfTemporaryFile(Lcom/amazon/kindle/model/content/ILocalBookItem;)V
    .locals 2

    .line 354
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFileSystem()Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/io/IFileConnectionFactory;->getPathDescriptor()Lcom/amazon/kindle/io/IPathDescriptor;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/io/IPathDescriptor;->getTempPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 355
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 356
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getFileName()Ljava/lang/String;

    move-result-object p1

    .line 361
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    invoke-static {p1}, Lcom/amazon/kindle/ContentSchemeBookOpenHelperActivity;->deleteTemporaryFile(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private isExpired()Z
    .locals 8

    .line 1054
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderController;->currentBookDocViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1059
    :cond_0
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1062
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    .line 1063
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getExpirationDate()J

    move-result-wide v2

    .line 1064
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v2, v6

    if-lez v0, :cond_1

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    const/4 v0, 0x1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private isFreeTrial()Z
    .locals 3

    .line 1072
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderController;->currentBookDocViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1076
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderController;->currentBookDocViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1077
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderController;->currentBookDocViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getOwnershipType()Lcom/amazon/kindle/model/content/ContentOwnershipType;

    move-result-object v0

    sget-object v2, Lcom/amazon/kindle/model/content/ContentOwnershipType;->FreeTrial:Lcom/amazon/kindle/model/content/ContentOwnershipType;

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method private launchFreeTrialExpiredActivity(Lcom/amazon/kindle/model/content/ILocalBookItem;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 862
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderController;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$string;->error_title_open_expired_book:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 863
    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderController;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$string;->error_message_open_expired_trial:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 864
    sget-object v2, Lcom/amazon/kcp/redding/AlertActivity$AlertType;->EXPIRED_CONTENT:Lcom/amazon/kcp/redding/AlertActivity$AlertType;

    iget-object v3, p0, Lcom/amazon/kcp/reader/ReaderController;->applicationContext:Landroid/content/Context;

    invoke-static {v2, v0, v1, v3}, Lcom/amazon/kcp/redding/AlertActivity;->createBaseAlertIntent(Lcom/amazon/kcp/redding/AlertActivity$AlertType;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 866
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object p1

    const-string v1, "alert_book_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 867
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderController;->appController:Lcom/amazon/kcp/application/IAndroidApplicationController;

    invoke-interface {p1, v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private launchRemoveItemActivity(Lcom/amazon/kindle/model/content/ILocalBookItem;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 875
    sget-object v0, Lcom/amazon/kcp/redding/AlertActivity$AlertType;->REMOVE_ITEM:Lcom/amazon/kcp/redding/AlertActivity$AlertType;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderController;->applicationContext:Landroid/content/Context;

    invoke-static {v0, p2, p3, v1}, Lcom/amazon/kcp/redding/AlertActivity;->createBaseAlertIntent(Lcom/amazon/kcp/redding/AlertActivity$AlertType;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p2

    .line 877
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object p1

    const-string p3, "alert_book_id"

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 878
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderController;->appController:Lcom/amazon/kcp/application/IAndroidApplicationController;

    invoke-interface {p1, p2}, Lcom/amazon/kcp/application/IAndroidApplicationController;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private prepareAndCreateReaderIntent(Lcom/amazon/kindle/model/content/ILocalBookItem;ZLandroid/app/Activity;Ljava/lang/String;)Landroid/content/Intent;
    .locals 6

    .line 926
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/reader/ReaderController;->prepareShowReader(Lcom/amazon/kindle/model/content/ILocalBookItem;Z)Ljava/lang/Boolean;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 931
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iget-object v5, p0, Lcom/amazon/kcp/reader/ReaderController;->currentBookDocViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    invoke-virtual/range {v0 .. v5}, Lcom/amazon/kcp/reader/ReaderController;->createReaderIntent(Lcom/amazon/kindle/model/content/ILocalBookItem;Landroid/app/Activity;Ljava/lang/String;ZLcom/amazon/android/docviewer/KindleDocViewer;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method private prepareShowReader(Lcom/amazon/kindle/model/content/ILocalBookItem;Z)Ljava/lang/Boolean;
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 973
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderController;->currentBookInfo()Lcom/amazon/kindle/model/content/ILocalBookInfo;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    const-string v4, "Closing previous book(if needed)"

    .line 975
    invoke-static {v4, v3}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 980
    iget-object v5, p0, Lcom/amazon/kcp/reader/ReaderController;->currentBookDocViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v5}, Lcom/amazon/android/docviewer/KindleDocViewer;->saveLocalBookState()V

    .line 981
    iget-object v5, p0, Lcom/amazon/kcp/reader/ReaderController;->currentBookDocViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v5}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v5

    invoke-interface {v5}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 989
    invoke-virtual {p0, v5}, Lcom/amazon/kcp/reader/ReaderController;->updateBookMetadataOnBookAccessed(Lcom/amazon/kindle/model/content/ILocalBookItem;)V

    :cond_1
    if-eqz p2, :cond_2

    .line 999
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderController;->finishAllActivities()V

    .line 1001
    :cond_2
    invoke-static {v4, v2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 1007
    :cond_3
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookItem;->isBookRead()Z

    move-result v4

    if-eqz v1, :cond_4

    .line 1008
    invoke-interface {v1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    goto :goto_0

    :cond_4
    move-object v1, v0

    .line 1009
    :goto_0
    iget-object v5, p0, Lcom/amazon/kcp/reader/ReaderController;->currentBookDocViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v5, :cond_5

    if-eqz v1, :cond_5

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    :cond_5
    const/4 v2, 0x1

    :cond_6
    if-nez p2, :cond_7

    if-eqz v2, :cond_8

    .line 1011
    :cond_7
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ReaderController;->createBookDocviewer(Lcom/amazon/kindle/model/content/ILocalBookItem;)Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/reader/ReaderController;->currentBookDocViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 1014
    :cond_8
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderController;->currentBookDocViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz p1, :cond_a

    invoke-direct {p0}, Lcom/amazon/kcp/reader/ReaderController;->isExpired()Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_1

    .line 1019
    :cond_9
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderController;->currentBookDocViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ReaderController;->updateLastReadBook(Lcom/amazon/android/docviewer/KindleDocViewer;)V

    .line 1022
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ReaderController;->addBookTutorials()V

    .line 1024
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_a
    :goto_1
    return-object v0
.end method

.method private showReaderPage(Landroid/app/Activity;Landroid/content/Intent;)Z
    .locals 1

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 909
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderController;->appController:Lcom/amazon/kcp/application/IAndroidApplicationController;

    invoke-interface {v0, p2, p1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->startActivity(Landroid/content/Intent;Landroid/app/Activity;)V

    const/4 p1, 0x1

    return p1
.end method

.method private showReaderPage(Landroid/app/Activity;Landroid/content/Intent;I)Z
    .locals 1

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 919
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderController;->appController:Lcom/amazon/kcp/application/IAndroidApplicationController;

    invoke-interface {v0, p2, p1, p3}, Lcom/amazon/kcp/application/IAndroidApplicationController;->startActivityForResult(Landroid/content/Intent;Landroid/app/Activity;I)V

    const/4 p1, 0x1

    return p1
.end method

.method private submitOnBookOpenThread(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    .line 1305
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderController;->bookOpenExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method private updateBookAccessTime(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/content/ContentMetadataField;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 717
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/amazon/kcp/reader/ReaderController;->updateBookAccessTime(Ljava/util/Map;J)V

    return-void
.end method

.method private updateBookAccessTime(Ljava/util/Map;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/content/ContentMetadataField;",
            "Ljava/lang/Object;",
            ">;J)V"
        }
    .end annotation

    .line 721
    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->LAST_ACCESSED:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private updateLastReadBook(Lcom/amazon/android/docviewer/KindleDocViewer;)V
    .locals 3

    .line 1104
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderController;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationSettings()Lcom/amazon/system/io/IPersistentSettingsHelper;

    move-result-object v0

    .line 1105
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1108
    invoke-static {p1}, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->isCustomDictionary(Lcom/amazon/kindle/model/content/IListableBook;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->isPreferredDictionary(Lcom/amazon/kindle/model/content/IListableBook;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1109
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderController;->appController:Lcom/amazon/kcp/application/IAndroidApplicationController;

    invoke-interface {v1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v1

    if-eqz v1, :cond_1

    return-void

    .line 1114
    :cond_1
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object p1

    .line 1116
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "LAST_BOOK_READ_ID"

    .line 1117
    invoke-interface {v0, v1, p1}, Lcom/amazon/system/io/IPersistentSettingsHelper;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    new-instance p1, Lcom/amazon/kcp/reader/ReaderController$5;

    invoke-direct {p1, p0, v0}, Lcom/amazon/kcp/reader/ReaderController$5;-><init>(Lcom/amazon/kcp/reader/ReaderController;Lcom/amazon/system/io/IPersistentSettingsHelper;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Void;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 1132
    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 1134
    :cond_2
    sget-object p1, Lcom/amazon/kcp/reader/ReaderController;->TAG:Ljava/lang/String;

    const-string v0, "No bookID found for book."

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1137
    :cond_3
    sget-object p1, Lcom/amazon/kcp/reader/ReaderController;->TAG:Ljava/lang/String;

    const-string v0, "Invalid bookinfo in ReaderController."

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private updateReadingProgress(Lcom/amazon/kindle/model/content/ILocalBookItem;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/model/content/ILocalBookItem;",
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/content/ContentMetadataField;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 728
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookReadingProgress()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 730
    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->READING_PROGRESS:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method protected afterBookClose(Lcom/amazon/kindle/model/content/ILocalBookItem;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 369
    sget-object v0, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->BOOK_CLOSE:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {v0}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 371
    new-instance v0, Lcom/amazon/kcp/reader/ReaderControllerEvent;

    sget-object v1, Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;->BOOK_LIFECYCLE_CLOSED:Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;

    invoke-direct {v0, v1, p0, p1}, Lcom/amazon/kcp/reader/ReaderControllerEvent;-><init>(Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;Lcom/amazon/kcp/reader/ReaderController;Lcom/amazon/kindle/model/content/ILocalBookInfo;)V

    .line 372
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderController;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    :cond_0
    return-void
.end method

.method public bindToCurrentBook(Landroid/app/Activity;)Lcom/amazon/android/docviewer/KindleDocViewer;
    .locals 4

    if-eqz p1, :cond_0

    .line 422
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderController;->activitiesBoundToBook:Ljava/util/List;

    monitor-enter v0

    .line 423
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderController;->activitiesBoundToBook:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 424
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Binding to current book; count is now "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kcp/reader/ReaderController;->activitiesBoundToBook:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 425
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 428
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderController;->getOrRestoreCurrentBook()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 430
    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderController;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    .line 431
    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->supportsContentOrientationLock()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 433
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getOrientation()Lcom/amazon/kindle/model/content/BookOrientation;

    move-result-object v1

    .line 434
    invoke-static {v1}, Lcom/amazon/android/util/UIUtils;->convertToScreenOrientation(Lcom/amazon/kindle/model/content/BookOrientation;)I

    move-result v2

    .line 435
    instance-of v3, p1, Lcom/amazon/kcp/redding/ReddingActivity;

    if-eqz v3, :cond_1

    sget-object v3, Lcom/amazon/kindle/model/content/BookOrientation;->UNDEFINED:Lcom/amazon/kindle/model/content/BookOrientation;

    if-eq v1, v3, :cond_1

    .line 437
    move-object v1, p1

    check-cast v1, Lcom/amazon/kcp/redding/ReddingActivity;

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/redding/ReddingActivity;->setContentOrientation(I)V

    :cond_1
    if-eqz v0, :cond_2

    .line 441
    instance-of v1, p1, Lcom/amazon/kcp/redding/ReddingActivity;

    if-eqz v1, :cond_2

    .line 442
    check-cast p1, Lcom/amazon/kcp/redding/ReddingActivity;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazon/kcp/redding/ReddingActivity;->markAsBoundToBook(Lcom/amazon/kindle/model/content/ILocalBookInfo;)V

    :cond_2
    return-object v0
.end method

.method public closeCurrentBook()V
    .locals 1

    const/4 v0, 0x0

    .line 236
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ReaderController;->closeCurrentBook(Z)V

    return-void
.end method

.method public closeCurrentBook(Z)V
    .locals 9

    .line 245
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderController;->closingCurrentBook:Z

    if-eqz v0, :cond_0

    return-void

    .line 249
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderController;->getCurrentBook()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 251
    sget-object v2, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->BOOK_CLOSE:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {v2}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v2

    .line 252
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v0

    .line 251
    invoke-static {v2, v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 255
    :cond_1
    iput-boolean v1, p0, Lcom/amazon/kcp/reader/ReaderController;->closingCurrentBook:Z

    .line 257
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderController;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getDeviceContext()Lcom/amazon/kcp/application/IDeviceContext;

    move-result-object v0

    .line 259
    iget-object v2, p0, Lcom/amazon/kcp/reader/ReaderController;->currentBookDocViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    const/4 v3, 0x0

    if-eqz v2, :cond_a

    .line 261
    iget-object v2, p0, Lcom/amazon/kcp/reader/ReaderController;->activitiesBoundToBook:Ljava/util/List;

    monitor-enter v2

    .line 262
    :try_start_0
    iget-object v4, p0, Lcom/amazon/kcp/reader/ReaderController;->activitiesBoundToBook:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    .line 263
    instance-of v7, v5, Lcom/amazon/kcp/redding/ReddingActivity;

    if-eqz v7, :cond_3

    .line 264
    move-object v7, v5

    check-cast v7, Lcom/amazon/kcp/redding/ReddingActivity;

    invoke-interface {v0, v7}, Lcom/amazon/kcp/application/IDeviceContext;->stopListeningForLauncherForeground(Lcom/amazon/kcp/redding/ReddingActivity;)V

    .line 266
    :cond_3
    instance-of v7, v5, Lcom/amazon/kcp/reader/ReaderActivity;

    if-eqz v7, :cond_4

    if-eqz p1, :cond_4

    .line 267
    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "AllowSnapshotPreview"

    invoke-virtual {v7, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 269
    :cond_4
    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    .line 270
    iget-object v7, p0, Lcom/amazon/kcp/reader/ReaderController;->appController:Lcom/amazon/kcp/application/IAndroidApplicationController;

    invoke-interface {v7}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v7

    if-ne v7, v5, :cond_2

    .line 271
    iget-object v7, p0, Lcom/amazon/kcp/reader/ReaderController;->appController:Lcom/amazon/kcp/application/IAndroidApplicationController;

    invoke-interface {v7}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v7

    if-ne v7, v5, :cond_5

    .line 272
    iget-object v5, p0, Lcom/amazon/kcp/reader/ReaderController;->appController:Lcom/amazon/kcp/application/IAndroidApplicationController;

    invoke-interface {v5, v6}, Lcom/amazon/kcp/application/IAndroidApplicationController;->setCurrentActivity(Landroid/app/Activity;)V

    .line 274
    :cond_5
    iget-object v5, p0, Lcom/amazon/kcp/reader/ReaderController;->appController:Lcom/amazon/kcp/application/IAndroidApplicationController;

    invoke-interface {v5, v6}, Lcom/amazon/kcp/application/IAndroidApplicationController;->setCurrentReaderActivity(Lcom/amazon/kcp/reader/ReaderActivity;)V

    goto :goto_0

    .line 277
    :cond_6
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderController;->activitiesBoundToBook:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 278
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderController;->appController:Lcom/amazon/kcp/application/IAndroidApplicationController;

    invoke-interface {p1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->reportBackgroundMetric()V

    .line 282
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderController;->currentBookDocViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object p1

    .line 283
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p1

    .line 282
    invoke-static {p1, v3}, Lcom/amazon/kcp/library/models/BookCapability;->supportsCapability(Lcom/amazon/kindle/model/content/IListableBook;I)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 284
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderController;->syncBookUpdates()V

    .line 287
    :cond_7
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderController;->applicationContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getPanelController()Lcom/amazon/kindle/panels/IPanelController;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 289
    invoke-interface {p1}, Lcom/amazon/kindle/panels/IPanelController;->clearSidePanelLayout()V

    .line 293
    :cond_8
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderController;->currentBookDocViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 295
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getWaypointsModel()Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 297
    invoke-virtual {v0}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->sendWaypointsMetrics()V

    .line 300
    :cond_9
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->closeDocument()V

    .line 302
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderController;->currentBookDocViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p1

    .line 306
    iput-object v6, p0, Lcom/amazon/kcp/reader/ReaderController;->currentBookDocViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 308
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ReaderController;->afterBookClose(Lcom/amazon/kindle/model/content/ILocalBookItem;)V

    .line 311
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ReaderController;->initiateDeleteOfTemporaryFile(Lcom/amazon/kindle/model/content/ILocalBookItem;)V

    .line 314
    new-instance v0, Lcom/amazon/kcp/reader/ReaderController$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kcp/reader/ReaderController$1;-><init>(Lcom/amazon/kcp/reader/ReaderController;Lcom/amazon/kindle/model/content/ILocalBookItem;)V

    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/ReaderController;->submitOnBookOpenThread(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 328
    invoke-static {}, Lcom/amazon/kcp/info/TutorialLockHelper;->getLock()Lcom/amazon/kcp/info/TutorialLock;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/info/TutorialLock;->unlockTutorials()V

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 278
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 333
    :cond_a
    :goto_1
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ReaderController;->doSearchCleanUp()V

    .line 335
    iput-boolean v3, p0, Lcom/amazon/kcp/reader/ReaderController;->closingCurrentBook:Z

    return-void
.end method

.method public createReaderIntent(Lcom/amazon/kindle/model/content/ILocalBookItem;Landroid/app/Activity;Ljava/lang/String;ZLcom/amazon/android/docviewer/KindleDocViewer;)Landroid/content/Intent;
    .locals 3

    const/4 v0, 0x1

    const-string v1, "getting ReaderActivity Intent"

    .line 935
    invoke-static {v1, v0}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 936
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    invoke-direct {p0, p1, p4}, Lcom/amazon/kcp/reader/ReaderController;->createReaderOpenParams(Lcom/amazon/kindle/model/content/ILocalBookItem;Ljava/lang/Boolean;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p3, :cond_0

    if-eqz p2, :cond_0

    .line 940
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, p3

    :goto_0
    const/4 p4, 0x0

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v2, "ClearTopActivity"

    .line 944
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 945
    invoke-interface {p5}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object p5

    invoke-direct {p0, p5, p1}, Lcom/amazon/kcp/reader/ReaderController;->getDocOpenIntent(Lcom/amazon/android/docviewer/KindleDoc;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    const-string p5, "force_no_origin"

    .line 946
    invoke-virtual {p5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    if-eqz p2, :cond_2

    const-string p3, "OriginActivity"

    .line 947
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 949
    :cond_2
    invoke-static {v1, p4}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    return-object p1
.end method

.method public currentBookInfo()Lcom/amazon/kindle/model/content/ILocalBookInfo;
    .locals 1

    .line 378
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderController;->currentBookDocViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public finishAllActivities()V
    .locals 2

    const/4 v0, 0x1

    .line 1289
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderController;->finishingAllActivities:Z

    .line 1291
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderController;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getHistoryManager()Lcom/amazon/kcp/application/HistoryManager;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    .line 1292
    invoke-virtual {v0}, Lcom/amazon/kcp/application/HistoryManager;->hasBack()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1293
    invoke-virtual {v0}, Lcom/amazon/kcp/application/HistoryManager;->pop()Z

    goto :goto_0

    .line 1295
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderController;->closeCurrentBook()V

    const/4 v0, 0x0

    .line 1297
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderController;->finishingAllActivities:Z

    return-void
.end method

.method public getCurrentBook()Lcom/amazon/android/docviewer/KindleDocViewer;
    .locals 1

    .line 405
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    return-object v0
.end method

.method public getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;
    .locals 1

    .line 384
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderController;->currentBookDocViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    return-object v0
.end method

.method public getDocViewerGenerator()Lcom/amazon/android/docviewer/KindleDocViewerGenerator;
    .locals 1

    .line 409
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderController;->docViewerFactory:Lcom/amazon/android/docviewer/KindleDocViewerGenerator;

    return-object v0
.end method

.method public getLastReadBook()Lcom/amazon/kindle/content/ContentMetadata;
    .locals 7

    .line 1208
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderController;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationSettings()Lcom/amazon/system/io/IPersistentSettingsHelper;

    move-result-object v0

    const-string v1, ""

    const-string v2, "LAST_BOOK_READ_ID"

    .line 1211
    invoke-interface {v0, v2, v1}, Lcom/amazon/system/io/IPersistentSettingsHelper;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1212
    iget-object v3, p0, Lcom/amazon/kcp/reader/ReaderController;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {v3}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v3

    .line 1213
    invoke-static {v2}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_0

    .line 1214
    invoke-interface {v3, v2, v6, v5}, Lcom/amazon/kindle/content/ILibraryService;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;Z)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v6

    goto :goto_0

    :cond_0
    const-string v2, "LAST_BOOK_READ"

    .line 1217
    invoke-interface {v0, v2, v1}, Lcom/amazon/system/io/IPersistentSettingsHelper;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "LAST_BOOK_IS_SAMPLE"

    .line 1218
    invoke-interface {v0, v4, v1}, Lcom/amazon/system/io/IPersistentSettingsHelper;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1219
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "SAMPLE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "FULL_BOOK"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1220
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1221
    invoke-interface {v3}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v2, v0, v1, v5}, Lcom/amazon/kindle/content/ILibraryService;->getContentByAsin(Ljava/lang/String;ZLjava/lang/String;Z)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v6

    :cond_2
    :goto_0
    return-object v6
.end method

.method public getOrRestoreCurrentBook()Lcom/amazon/android/docviewer/KindleDocViewer;
    .locals 2

    .line 497
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderController;->currentBookDocViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-nez v0, :cond_0

    .line 498
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderController;->getLastReadBook()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 499
    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getLocalBook()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 500
    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getLocalBook()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/ReaderController;->createBookDocviewer(Lcom/amazon/kindle/model/content/ILocalBookItem;)Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ReaderController;->currentBookDocViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 503
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderController;->currentBookDocViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/debug/IAaSettingsUtil;->setBookContext(Lcom/amazon/android/docviewer/KindleDocViewer;)V

    .line 504
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderController;->currentBookDocViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    return-object v0
.end method

.method public getPageMargins()Landroid/view/ViewGroup$MarginLayoutParams;
    .locals 1

    .line 389
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 391
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 393
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/KindleDocView;->getPageMargins()Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getReaderActivitySubclass(Lcom/amazon/android/docviewer/KindleDocViewer;)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/android/docviewer/KindleDocViewer;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Lcom/amazon/kcp/reader/ReaderActivity;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 890
    iget-object v2, p0, Lcom/amazon/kcp/reader/ReaderController;->activityFactoryList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 891
    iget-object v2, p0, Lcom/amazon/kcp/reader/ReaderController;->activityFactoryList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/application/ActivityFactory;

    if-eqz v2, :cond_0

    .line 893
    invoke-interface {v2, p1}, Lcom/amazon/kcp/application/ActivityFactory;->getReaderActivity(Lcom/amazon/android/docviewer/KindleDocViewer;)Ljava/lang/Class;

    move-result-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    .line 898
    const-class v0, Lcom/amazon/kcp/reader/BookReaderActivity;

    :cond_2
    return-object v0
.end method

.method public isFinishingAllActivities()Z
    .locals 1

    .line 1301
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderController;->finishingAllActivities:Z

    return v0
.end method

.method public onContentDelete(Lcom/amazon/kindle/content/ContentDelete;)V
    .locals 3
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = true
        topic = "CONTENT_DELETE"
    .end annotation

    .line 1199
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderController;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationSettings()Lcom/amazon/system/io/IPersistentSettingsHelper;

    move-result-object v0

    const-string v1, "LAST_BOOK_READ_ID"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/amazon/system/io/IPersistentSettingsHelper;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1200
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentDelete;->getBookIds()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1201
    new-instance p1, Lcom/amazon/kcp/reader/LastReadBookEvent;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/amazon/kcp/reader/LastReadBookEvent;-><init>(Lcom/amazon/kindle/content/ContentMetadata;)V

    .line 1202
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderController;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    :cond_0
    return-void
.end method

.method public onContentUpdate(Ljava/util/Collection;)V
    .locals 12
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = true
        topic = "CONTENT_UPDATE"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/content/ContentUpdate;",
            ">;)V"
        }
    .end annotation

    .line 1143
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderController;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationSettings()Lcom/amazon/system/io/IPersistentSettingsHelper;

    move-result-object v0

    const-string v1, "LAST_BOOK_READ_ID"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/amazon/system/io/IPersistentSettingsHelper;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1144
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/content/ContentUpdate;

    .line 1145
    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentUpdate;->getPrevMetadata()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v2

    .line 1146
    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentUpdate;->getMetadata()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v1

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 1148
    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->isLocal()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/amazon/kindle/content/ContentMetadata;->isLocal()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1149
    new-instance v3, Lcom/amazon/kcp/reader/LastReadBookEvent;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/amazon/kcp/reader/LastReadBookEvent;-><init>(Lcom/amazon/kindle/content/ContentMetadata;)V

    .line 1150
    iget-object v4, p0, Lcom/amazon/kcp/reader/ReaderController;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    invoke-interface {v4, v3}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    .line 1153
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContentOpenMetricsManager()Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;

    move-result-object v3

    .line 1154
    invoke-virtual {v2}, Lcom/amazon/kindle/content/ContentMetadata;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/kindle/model/content/ContentState;->isOpenable()Z

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez v4, :cond_2

    .line 1155
    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/kindle/model/content/ContentState;->isOpenable()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1157
    invoke-virtual {v3}, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->getUtil()Lcom/amazon/kindle/metrics/ContentOpenMetricsUtil;

    move-result-object v4

    .line 1158
    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/amazon/kindle/metrics/ContentOpenMetricsUtil;->getBookOpenableMetricsKeysWithServiceWeblabValue(Lcom/amazon/kindle/model/content/IBookID;)Ljava/util/List;

    move-result-object v4

    .line 1159
    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v9

    new-array v10, v5, [Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    sget-object v11, Lcom/amazon/kindle/metrics/ContentOpenMetricsType;->TAP_TO_OPENABLE:Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    aput-object v11, v10, v8

    sget-object v11, Lcom/amazon/kindle/metrics/ContentOpenMetricsType;->ONE_TAP_CX:Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    aput-object v11, v10, v7

    sget-object v11, Lcom/amazon/kindle/metrics/ContentOpenMetricsType;->TAP_TO_DOWNLOAD:Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    aput-object v11, v10, v6

    invoke-virtual {v3, v4, v9, v10}, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->addElapsedTimers(Ljava/util/List;Lcom/amazon/kindle/model/content/IBookID;[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;)V

    .line 1165
    :cond_2
    invoke-virtual {v2}, Lcom/amazon/kindle/content/ContentMetadata;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/kindle/model/content/ContentState;->isDownloading(Lcom/amazon/kindle/model/content/ContentState;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1166
    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kindle/model/content/ContentState;->isTerminal()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1167
    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v2

    sget-object v4, Lcom/amazon/kindle/model/content/ContentState;->FAILED_RETRYABLE:Lcom/amazon/kindle/model/content/ContentState;

    if-ne v2, v4, :cond_3

    .line 1173
    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    new-array v2, v5, [Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    sget-object v4, Lcom/amazon/kindle/metrics/ContentOpenMetricsType;->TAP_TO_OPENABLE:Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    aput-object v4, v2, v8

    sget-object v4, Lcom/amazon/kindle/metrics/ContentOpenMetricsType;->ONE_TAP_CX:Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    aput-object v4, v2, v7

    sget-object v4, Lcom/amazon/kindle/metrics/ContentOpenMetricsType;->TAP_TO_DOWNLOAD:Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    aput-object v4, v2, v6

    const-string v4, "networkInterrupted"

    .line 1172
    invoke-virtual {v3, v4, v1, v2}, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->incrementCounters(Ljava/lang/String;Lcom/amazon/kindle/model/content/IBookID;[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;)V

    goto/16 :goto_0

    .line 1179
    :cond_3
    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v4

    new-array v9, v5, [Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    sget-object v10, Lcom/amazon/kindle/metrics/ContentOpenMetricsType;->TAP_TO_OPENABLE:Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    aput-object v10, v9, v8

    sget-object v10, Lcom/amazon/kindle/metrics/ContentOpenMetricsType;->ONE_TAP_CX:Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    aput-object v10, v9, v7

    sget-object v10, Lcom/amazon/kindle/metrics/ContentOpenMetricsType;->TAP_TO_DOWNLOAD:Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    aput-object v10, v9, v6

    const-string v10, "mimeType"

    .line 1178
    invoke-virtual {v3, v10, v2, v4, v9}, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->addAttributes(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/model/content/IBookID;[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;)V

    .line 1184
    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v2

    new-array v4, v5, [Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    sget-object v5, Lcom/amazon/kindle/metrics/ContentOpenMetricsType;->TAP_TO_OPENABLE:Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    aput-object v5, v4, v8

    sget-object v5, Lcom/amazon/kindle/metrics/ContentOpenMetricsType;->ONE_TAP_CX:Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    aput-object v5, v4, v7

    sget-object v5, Lcom/amazon/kindle/metrics/ContentOpenMetricsType;->TAP_TO_DOWNLOAD:Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    aput-object v5, v4, v6

    const-string v5, "bookDownloadDone"

    .line 1183
    invoke-virtual {v3, v5, v2, v4}, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->addElapsedTimers(Ljava/lang/String;Lcom/amazon/kindle/model/content/IBookID;[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;)V

    .line 1188
    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    new-array v2, v6, [Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    sget-object v4, Lcom/amazon/kindle/metrics/ContentOpenMetricsType;->TAP_TO_OPENABLE:Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    aput-object v4, v2, v8

    sget-object v4, Lcom/amazon/kindle/metrics/ContentOpenMetricsType;->TAP_TO_DOWNLOAD:Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    aput-object v4, v2, v7

    invoke-virtual {v3, v1, v2}, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->submitMetrics(Lcom/amazon/kindle/model/content/IBookID;[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;)V

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .line 1040
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderController;->appController:Lcom/amazon/kcp/application/IAndroidApplicationController;

    if-eqz v0, :cond_0

    .line 1041
    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getActiveActivities()I

    move-result v0

    if-nez v0, :cond_0

    .line 1044
    invoke-static {}, Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks;->getCurrentForegroundActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1048
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderController;->closeCurrentBook()V

    :cond_0
    return-void
.end method

.method public openReader(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/kcp/reader/IReaderController$StartPage;Lcom/amazon/kcp/reader/IReaderController$OpenReaderMode;Z)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 520
    invoke-virtual/range {v0 .. v5}, Lcom/amazon/kcp/reader/ReaderController;->openReader(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/kcp/reader/IReaderController$StartPage;Lcom/amazon/kcp/reader/IReaderController$OpenReaderMode;ZLandroid/app/Activity;)V

    return-void
.end method

.method public openReader(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/kcp/reader/IReaderController$StartPage;Lcom/amazon/kcp/reader/IReaderController$OpenReaderMode;ZLandroid/app/Activity;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    .line 526
    invoke-virtual/range {v0 .. v6}, Lcom/amazon/kcp/reader/ReaderController;->openReader(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/kcp/reader/IReaderController$StartPage;Lcom/amazon/kcp/reader/IReaderController$OpenReaderMode;ZLandroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public openReader(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/kcp/reader/IReaderController$StartPage;Lcom/amazon/kcp/reader/IReaderController$OpenReaderMode;ZLandroid/app/Activity;Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 532
    invoke-virtual/range {v0 .. v7}, Lcom/amazon/kcp/reader/ReaderController;->openReader(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/kcp/reader/IReaderController$StartPage;Lcom/amazon/kcp/reader/IReaderController$OpenReaderMode;ZLandroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public openReader(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/kcp/reader/IReaderController$StartPage;Lcom/amazon/kcp/reader/IReaderController$OpenReaderMode;ZLandroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7

    .line 564
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->blockOnAppInitialization()Z

    .line 565
    invoke-direct {p0, p2}, Lcom/amazon/kcp/reader/ReaderController;->commonOpenReaderValidation(Lcom/amazon/kcp/reader/IReaderController$StartPage;)Z

    move-result p2

    if-nez p2, :cond_5

    if-nez p1, :cond_0

    goto :goto_1

    .line 568
    :cond_0
    sget-object p2, Lcom/amazon/kcp/reader/IReaderController$OpenReaderMode;->LOADING_ASYNC:Lcom/amazon/kcp/reader/IReaderController$OpenReaderMode;

    if-eq p3, p2, :cond_3

    sget-object p2, Lcom/amazon/kcp/reader/IReaderController$OpenReaderMode;->BLOCK_CALLING_THREAD:Lcom/amazon/kcp/reader/IReaderController$OpenReaderMode;

    if-ne p3, p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    const-string p3, "ReaderController.executePrepareOpenReaderCommand()-openReader"

    .line 590
    invoke-static {p3, p2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 591
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/amazon/kcp/reader/ReaderController;->executePrepareOpenReaderCommand(Lcom/amazon/kindle/model/content/ILocalBookItem;ZLandroid/app/Activity;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    if-eqz p2, :cond_2

    if-eqz p7, :cond_2

    .line 593
    invoke-virtual {p2, p7}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_2
    const/4 p4, 0x0

    .line 595
    invoke-direct {p0, p1, p5, p2, p4}, Lcom/amazon/kcp/reader/ReaderController;->executeOpenCommand(Lcom/amazon/kindle/model/content/ILocalBookItem;Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/Integer;)V

    const/4 p1, 0x0

    .line 596
    invoke-static {p3, p1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    goto :goto_1

    .line 569
    :cond_3
    :goto_0
    new-instance p2, Lcom/amazon/kcp/reader/ReaderController$3;

    move-object v0, p2

    move-object v1, p0

    move-object v2, p1

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/amazon/kcp/reader/ReaderController$3;-><init>(Lcom/amazon/kcp/reader/ReaderController;Lcom/amazon/kindle/model/content/ILocalBookItem;ZLandroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 583
    sget-object p1, Lcom/amazon/kcp/reader/IReaderController$OpenReaderMode;->BLOCK_CALLING_THREAD:Lcom/amazon/kcp/reader/IReaderController$OpenReaderMode;

    if-ne p3, p1, :cond_4

    .line 584
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 587
    :cond_4
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public openReaderByIntent(Lcom/amazon/kindle/model/content/ILocalBookItem;Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x0

    .line 556
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amazon/kcp/reader/ReaderController;->executeOpenCommand(Lcom/amazon/kindle/model/content/ILocalBookItem;Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/Integer;)V

    return-void
.end method

.method public openReaderByIntent(Lcom/amazon/kindle/model/content/ILocalBookItem;Landroid/app/Activity;Landroid/content/Intent;I)V
    .locals 0

    .line 551
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/kcp/reader/ReaderController;->executeOpenCommand(Lcom/amazon/kindle/model/content/ILocalBookItem;Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/Integer;)V

    return-void
.end method

.method public prepareOpenReader(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/kcp/reader/IReaderController$StartPage;ZLandroid/app/Activity;)Landroid/content/Intent;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .line 537
    invoke-virtual/range {v0 .. v5}, Lcom/amazon/kcp/reader/ReaderController;->prepareOpenReader(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/kcp/reader/IReaderController$StartPage;ZLandroid/app/Activity;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public prepareOpenReader(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/kcp/reader/IReaderController$StartPage;ZLandroid/app/Activity;Ljava/lang/String;)Landroid/content/Intent;
    .locals 0

    .line 542
    invoke-direct {p0, p2}, Lcom/amazon/kcp/reader/ReaderController;->commonOpenReaderValidation(Lcom/amazon/kcp/reader/IReaderController$StartPage;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 546
    :cond_0
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/amazon/kcp/reader/ReaderController;->executePrepareOpenReaderCommand(Lcom/amazon/kindle/model/content/ILocalBookItem;ZLandroid/app/Activity;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public registerActivityFactory(Lcom/amazon/kcp/application/ActivityFactory;)V
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderController;->activityFactoryList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerDefaultKindleDocViewerFactory(Lcom/amazon/android/docviewer/KindleDocViewerFactory;)V
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderController;->docViewerFactory:Lcom/amazon/android/docviewer/KindleDocViewerGenerator;

    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/KindleDocViewerGenerator;->registerDefaultFactory(Lcom/amazon/android/docviewer/KindleDocViewerFactory;)Z

    return-void
.end method

.method public registerKindleDocViewerFactory(Lcom/amazon/android/docviewer/KindleDocViewerFactory;)V
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderController;->docViewerFactory:Lcom/amazon/android/docviewer/KindleDocViewerGenerator;

    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/KindleDocViewerGenerator;->registerFactory(Lcom/amazon/android/docviewer/KindleDocViewerFactory;)Z

    return-void
.end method

.method public restoreState([Ljava/lang/Object;)V
    .locals 4

    const/4 v0, 0x0

    .line 1229
    aget-object v1, p1, v0

    check-cast v1, Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v1, :cond_2

    .line 1232
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderController;->getCurrentBook()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1234
    invoke-interface {v2}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v2

    .line 1235
    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v3

    .line 1234
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1236
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderController;->closeCurrentBook()V

    .line 1239
    :cond_0
    iput-object v1, p0, Lcom/amazon/kcp/reader/ReaderController;->currentBookDocViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 1241
    invoke-direct {p0, v1}, Lcom/amazon/kcp/reader/ReaderController;->updateLastReadBook(Lcom/amazon/android/docviewer/KindleDocViewer;)V

    .line 1244
    new-instance v1, Lcom/amazon/kcp/reader/IReaderController$StartPageDefault;

    invoke-direct {v1}, Lcom/amazon/kcp/reader/IReaderController$StartPageDefault;-><init>()V

    iput-object v1, p0, Lcom/amazon/kcp/reader/ReaderController;->startPage:Lcom/amazon/kcp/reader/IReaderController$StartPage;

    const/4 v1, 0x1

    .line 1246
    aget-object v1, p1, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_2

    add-int/lit8 v2, v0, 0x2

    .line 1248
    array-length v3, p1

    if-ge v2, v3, :cond_2

    .line 1249
    aget-object v2, p1, v2

    check-cast v2, Lcom/amazon/kcp/redding/ReddingActivity;

    .line 1252
    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1253
    invoke-virtual {p0, v2}, Lcom/amazon/kcp/reader/ReaderController;->bindToCurrentBook(Landroid/app/Activity;)Lcom/amazon/android/docviewer/KindleDocViewer;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public saveState()[Ljava/lang/Object;
    .locals 5

    .line 1261
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderController;->activitiesBoundToBook:Ljava/util/List;

    monitor-enter v0

    .line 1262
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderController;->activitiesBoundToBook:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 1263
    iget-object v2, p0, Lcom/amazon/kcp/reader/ReaderController;->currentBookDocViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 1266
    iget-object v2, p0, Lcom/amazon/kcp/reader/ReaderController;->activitiesBoundToBook:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 1267
    :goto_0
    iget-object v2, p0, Lcom/amazon/kcp/reader/ReaderController;->activitiesBoundToBook:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_0

    add-int/lit8 v2, v3, 0x2

    .line 1268
    iget-object v4, p0, Lcom/amazon/kcp/reader/ReaderController;->activitiesBoundToBook:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v1, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1273
    :cond_0
    iget-object v2, p0, Lcom/amazon/kcp/reader/ReaderController;->activitiesBoundToBook:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1275
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 1276
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public syncBookUpdates()V
    .locals 4

    .line 1084
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderController;->currentBookDocViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1085
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getAnnotationsManager()Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 1087
    invoke-interface {v0}, Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;->getBookAnnotationsManager()Lcom/amazon/kindle/annotation/IBookAnnotationsManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/annotation/IBookAnnotationsManager;->persistJournal()V

    .line 1090
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderController;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->canPerformSync()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1091
    new-instance v0, Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    sget-object v2, Lcom/amazon/kcp/application/sync/internal/SyncType;->BOOK_EXIT:Lcom/amazon/kcp/application/sync/internal/SyncType;

    iget-object v3, p0, Lcom/amazon/kcp/reader/ReaderController;->currentBookDocViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v3}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v3

    invoke-direct {v0, v2, v3, v1, v1}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;-><init>(Lcom/amazon/kcp/application/sync/internal/SyncType;Lcom/amazon/kindle/model/content/ILocalBookInfo;Ljava/util/Date;Lcom/amazon/kindle/services/download/IStatusTracker;)V

    .line 1092
    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderController;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getSynchronizationManager()Lcom/amazon/kindle/sync/SynchronizationManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/amazon/kindle/sync/SynchronizationManager;->sync(Lcom/amazon/kcp/application/sync/internal/SyncParameters;)Z

    :cond_2
    return-void
.end method

.method public unbindFromCurrentBook(Landroid/app/Activity;Z)V
    .locals 3

    .line 456
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ReaderController;->closingCurrentBook:Z

    if-eqz v0, :cond_0

    return-void

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderController;->activitiesBoundToBook:Ljava/util/List;

    monitor-enter v0

    .line 462
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderController;->activitiesBoundToBook:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 464
    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderController;->activitiesBoundToBook:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 465
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unbinding from current book; count is now "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kcp/reader/ReaderController;->activitiesBoundToBook:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isOnConfigChange="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-nez p2, :cond_3

    .line 468
    iget-object p2, p0, Lcom/amazon/kcp/reader/ReaderController;->activitiesBoundToBook:Ljava/util/List;

    .line 469
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_3

    .line 470
    iget-object p2, p0, Lcom/amazon/kcp/reader/ReaderController;->appController:Lcom/amazon/kcp/application/IAndroidApplicationController;

    invoke-interface {p2}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentActivity()Landroid/app/Activity;

    move-result-object p2

    const/4 v1, 0x0

    if-ne p2, p1, :cond_1

    .line 471
    iget-object p2, p0, Lcom/amazon/kcp/reader/ReaderController;->appController:Lcom/amazon/kcp/application/IAndroidApplicationController;

    invoke-interface {p2, v1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->setCurrentActivity(Landroid/app/Activity;)V

    .line 473
    :cond_1
    iget-object p2, p0, Lcom/amazon/kcp/reader/ReaderController;->appController:Lcom/amazon/kcp/application/IAndroidApplicationController;

    invoke-interface {p2}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object p2

    if-ne p2, p1, :cond_2

    .line 474
    iget-object p2, p0, Lcom/amazon/kcp/reader/ReaderController;->appController:Lcom/amazon/kcp/application/IAndroidApplicationController;

    invoke-interface {p2, v1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->setCurrentReaderActivity(Lcom/amazon/kcp/reader/ReaderActivity;)V

    .line 477
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderController;->closeCurrentBook()V

    .line 480
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 482
    instance-of p2, p1, Lcom/amazon/kcp/redding/ReddingActivity;

    if-eqz p2, :cond_4

    .line 483
    check-cast p1, Lcom/amazon/kcp/redding/ReddingActivity;

    invoke-virtual {p1}, Lcom/amazon/kcp/redding/ReddingActivity;->markAsUnboundFromBook()V

    .line 485
    iget-object p2, p0, Lcom/amazon/kcp/reader/ReaderController;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {p2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->supportsContentOrientationLock()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 486
    invoke-virtual {p1}, Lcom/amazon/kcp/redding/ReddingActivity;->unsetContentOrientation()V

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    .line 480
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public updateBookAccessAndNotify(Lcom/amazon/kindle/model/content/ILocalBookItem;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 632
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 635
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ReaderController;->getBookId(Lcom/amazon/kindle/model/content/ILocalBookItem;)Ljava/lang/String;

    move-result-object v1

    .line 636
    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/ReaderController;->updateBookAccessTime(Ljava/util/Map;)V

    .line 637
    invoke-direct {p0, p1, v0}, Lcom/amazon/kcp/reader/ReaderController;->updateReadingProgress(Lcom/amazon/kindle/model/content/ILocalBookItem;Ljava/util/Map;)V

    .line 638
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderController;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v1, v2, v0, v3}, Lcom/amazon/kindle/content/ILibraryService;->updateContentMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public updateBookMetadataOnBookAccessed(Lcom/amazon/kindle/model/content/ILocalBookItem;)V
    .locals 1

    const/4 v0, 0x1

    .line 642
    invoke-virtual {p0, p1, v0}, Lcom/amazon/kcp/reader/ReaderController;->updatebookMetadataForStorage(Lcom/amazon/kindle/model/content/ILocalBookItem;Z)V

    return-void
.end method

.method public updatebookMetadataForStorage(Lcom/amazon/kindle/model/content/ILocalBookItem;Z)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 649
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 650
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ReaderController;->getBookId(Lcom/amazon/kindle/model/content/ILocalBookItem;)Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_1

    .line 653
    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/ReaderController;->updateBookAccessTime(Ljava/util/Map;)V

    .line 656
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/amazon/kcp/reader/ReaderController;->updateReadingProgress(Lcom/amazon/kindle/model/content/ILocalBookItem;Ljava/util/Map;)V

    .line 657
    sget-object p2, Lcom/amazon/kindle/content/ContentMetadataField;->LPR:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 658
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookItem;->getLastPositionRead()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 657
    invoke-interface {v0, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    sget-object p2, Lcom/amazon/kindle/content/ContentMetadataField;->MRPR:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 660
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookItem;->getLastPositionRead()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 659
    invoke-interface {v0, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookItem;->getLastPositionRead()I

    move-result p2

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookItem;->getFurthestPositionRead()I

    move-result v2

    invoke-static {p2, v2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 663
    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->FPR:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ReaderController;->getWaypointsAsJson(Lcom/amazon/kindle/model/content/ILocalBookItem;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 667
    sget-object p2, Lcom/amazon/kindle/content/ContentMetadataField;->WAYPOINTS:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 669
    :cond_2
    sget-object p1, Lcom/amazon/kcp/reader/ReaderController;->TAG:Ljava/lang/String;

    const-string p2, "Attempted to updateBookMetadataOnBookAccessed() after DocViewer was already nulled out. CRP and Waypoint data will not be updated in ContentMetadata."

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    :goto_0
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderController;->factory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, v1, p2, v0, v2}, Lcom/amazon/kindle/content/ILibraryService;->updateContentMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method
