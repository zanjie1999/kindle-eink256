.class public Lcom/amazon/ea/ReaderEventHandler;
.super Lcom/amazon/kindle/krx/reader/AbstractReaderNavigationListener;
.source "ReaderEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;
    }
.end annotation


# static fields
.field private static final FIFTEEN_MINUTES_MS:J = 0xdbba0L

.field private static final SUPPORTED_CONTENT_TYPES:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/amazon/kindle/krx/content/ContentType;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "com.amazon.ea.ReaderEventHandler"


# instance fields
.field protected final asyncTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field

.field private endActionsLauncher:Lcom/amazon/ea/EndActionsLauncher;

.field protected erl:Lcom/amazon/kindle/krx/reader/IPosition;

.field protected final erlProvider:Lcom/amazon/ea/ERLProvider;

.field protected hasSidecar:Z

.field protected lastStart:Lcom/amazon/kindle/krx/reader/IPosition;

.field private launchedEndActions:Z

.field private previousCacheTimestamp:J

.field private reachedLastPage:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 65
    sget-object v0, Lcom/amazon/kindle/krx/content/ContentType;->BOOK:Lcom/amazon/kindle/krx/content/ContentType;

    sget-object v1, Lcom/amazon/kindle/krx/content/ContentType;->BOOK_SAMPLE:Lcom/amazon/kindle/krx/content/ContentType;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/amazon/ea/ReaderEventHandler;->SUPPORTED_CONTENT_TYPES:Ljava/util/EnumSet;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/ea/ERLProvider;)V
    .locals 2

    .line 86
    invoke-direct {p0}, Lcom/amazon/kindle/krx/reader/AbstractReaderNavigationListener;-><init>()V

    const-wide/16 v0, -0x1

    .line 84
    iput-wide v0, p0, Lcom/amazon/ea/ReaderEventHandler;->previousCacheTimestamp:J

    .line 87
    iput-object p1, p0, Lcom/amazon/ea/ReaderEventHandler;->erlProvider:Lcom/amazon/ea/ERLProvider;

    .line 89
    sget-object p1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    const-class v0, Lcom/amazon/ea/ReaderEventHandler;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object p1

    .line 90
    new-instance v0, Lcom/amazon/ea/EndActionsLauncher;

    sget-object v1, Lcom/amazon/readingactions/helpers/ComixologyOperationsHelper;->INSTANCE:Lcom/amazon/readingactions/helpers/ComixologyOperationsHelper;

    invoke-direct {v0, p1, v1}, Lcom/amazon/ea/EndActionsLauncher;-><init>(Lcom/amazon/kindle/krx/events/IMessageQueue;Lcom/amazon/readingactions/helpers/ComixologyOperationsHelper;)V

    iput-object v0, p0, Lcom/amazon/ea/ReaderEventHandler;->endActionsLauncher:Lcom/amazon/ea/EndActionsLauncher;

    .line 92
    invoke-static {}, Lcom/amazon/ea/guava/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/ea/ReaderEventHandler;->asyncTasks:Ljava/util/List;

    return-void
.end method

.method private asyncProcessSidecar(Lcom/amazon/kindle/krx/content/IBook;Z)V
    .locals 3

    .line 462
    iget-object v0, p0, Lcom/amazon/ea/ReaderEventHandler;->asyncTasks:Ljava/util/List;

    sget-object v1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getAsyncTaskExecutor()Lcom/amazon/kindle/krx/application/IAsyncTaskExecutor;

    move-result-object v1

    new-instance v2, Lcom/amazon/ea/ReaderEventHandler$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/amazon/ea/ReaderEventHandler$2;-><init>(Lcom/amazon/ea/ReaderEventHandler;Lcom/amazon/kindle/krx/content/IBook;Z)V

    sget-object p1, Lcom/amazon/kindle/krx/application/IAsyncTask$TaskPriority;->LOW:Lcom/amazon/kindle/krx/application/IAsyncTask$TaskPriority;

    .line 463
    invoke-static {v2, p1}, Lcom/amazon/ea/metrics/M;->asyncWithMetrics(Ljava/util/concurrent/Callable;Lcom/amazon/kindle/krx/application/IAsyncTask$TaskPriority;)Lcom/amazon/kindle/krx/application/IAsyncTask;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/amazon/kindle/krx/application/IAsyncTaskExecutor;->submit(Lcom/amazon/kindle/krx/application/IAsyncTask;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 462
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private createLayoutModel(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/ea/sidecar/def/Sidecar;)Lcom/amazon/ea/model/layout/LayoutModel;
    .locals 2

    .line 578
    iget-object v0, p0, Lcom/amazon/ea/ReaderEventHandler;->endActionsLauncher:Lcom/amazon/ea/EndActionsLauncher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amazon/ea/EndActionsLauncher;->isBottomSheetEnabled(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 579
    invoke-static {p1, p2}, Lcom/amazon/readingactions/ui/layout/EndActionsLayoutFactory;->create(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/ea/sidecar/def/Sidecar;)Lcom/amazon/ea/model/layout/LayoutModel;

    move-result-object p1

    goto :goto_0

    .line 580
    :cond_0
    invoke-static {p1, p2}, Lcom/amazon/ea/model/LayoutDecider;->resolveLayout(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/ea/sidecar/def/Sidecar;)Lcom/amazon/ea/model/layout/LayoutModel;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private initMetricsWithBook(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/ea/model/layout/LayoutModel;Lcom/amazon/ea/sidecar/def/Sidecar;)V
    .locals 6

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto/16 :goto_2

    .line 488
    :cond_0
    invoke-static {}, Lcom/amazon/ea/metrics/M;->initSession()V

    const-string v0, "isLandscape"

    const-string v1, "isPortrait"

    const-string v2, "HasRecommendations"

    const-string v3, "DidAnything"

    const-string v4, "DisplayedShoveler"

    const-string v5, "DisplayedBookGridWidget"

    .line 490
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/ea/guava/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 493
    sget-object v3, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    invoke-virtual {v3, v1, v2}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    goto :goto_0

    .line 496
    :cond_1
    invoke-virtual {p2}, Lcom/amazon/ea/model/layout/LayoutModel;->getWidgets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/ea/model/widget/WidgetModel;

    .line 497
    invoke-virtual {v1}, Lcom/amazon/ea/model/widget/WidgetModel;->initMetricConstants()V

    goto :goto_1

    .line 500
    :cond_2
    invoke-static {p3, p2}, Lcom/amazon/ea/metrics/RefTagHelper;->initWithSidecarAndLayout(Lcom/amazon/ea/sidecar/def/Sidecar;Lcom/amazon/ea/model/layout/LayoutModel;)V

    const/4 p3, 0x4

    .line 502
    invoke-static {p3}, Lcom/amazon/ea/guava/Maps;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object p3

    .line 503
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Asin"

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    iget-object p2, p2, Lcom/amazon/ea/model/layout/LayoutModel;->metricsTag:Ljava/lang/String;

    const-string v0, "LayoutTag"

    invoke-interface {p3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    invoke-static {}, Lcom/amazon/ea/metrics/RefTagHelper;->getRefTagSuffix()Ljava/lang/String;

    move-result-object p2

    const-string v0, "RefTagSuffix"

    invoke-interface {p3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ContentType"

    invoke-interface {p3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    invoke-static {p3}, Lcom/amazon/ea/metrics/M;->setDefaultAttributes(Ljava/util/Map;)V

    .line 509
    sget-object p2, Lcom/amazon/kindle/krx/content/ContentType;->BOOK_SAMPLE:Lcom/amazon/kindle/krx/content/ContentType;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object p1

    if-ne p2, p1, :cond_3

    const/4 v2, 0x1

    :cond_3
    invoke-direct {p0, v2}, Lcom/amazon/ea/ReaderEventHandler;->recordStandardMetrics(Z)V

    :cond_4
    :goto_2
    return-void
.end method

.method private static isContentSupported(Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 2

    if-eqz p0, :cond_1

    .line 103
    sget-object v0, Lcom/amazon/ea/ReaderEventHandler;->SUPPORTED_CONTENT_TYPES:Ljava/util/EnumSet;

    .line 104
    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->isFalkorEpisode()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 106
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/application/ApplicationFeature;->NEUTRON_PHASE_1:Lcom/amazon/kindle/krx/application/ApplicationFeature;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->isFeatureEnabled(Lcom/amazon/kindle/krx/application/ApplicationFeature;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/kindle/krx/content/IBook$BookContentClass;->CHILDREN:Lcom/amazon/kindle/krx/content/IBook$BookContentClass;

    .line 107
    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getContentClass()Lcom/amazon/kindle/krx/content/IBook$BookContentClass;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 108
    invoke-static {}, Lcom/amazon/ea/util/ChildAccountUtil;->isChildAccount()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private launchEndActionsLegacy(Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;)V
    .locals 3

    .line 387
    iget-object v0, p1, Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;->metricName:Ljava/lang/String;

    sget-object v1, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ReadingAction;->END_ACTIONS:Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ReadingAction;

    invoke-virtual {v1}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ReadingAction;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ReadingActionContainer;->BEFORE_YOU_GO:Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ReadingActionContainer;

    .line 388
    invoke-virtual {v2}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ReadingActionContainer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 387
    invoke-static {v0, v1, v2}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->startContainerMetrics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 391
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/amazon/ea/ui/EndActionsActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x10000000

    .line 392
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "com.amazon.ea.ui.EndActionsActivity.ENTRY_POINT_KEY"

    .line 393
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 394
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private parseJsonTokener(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/Object;)Lcom/amazon/ea/sidecar/def/Sidecar;
    .locals 2

    .line 584
    iget-object v0, p0, Lcom/amazon/ea/ReaderEventHandler;->endActionsLauncher:Lcom/amazon/ea/EndActionsLauncher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amazon/ea/EndActionsLauncher;->isBottomSheetEnabled(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 585
    invoke-static {p1, p2}, Lcom/amazon/readingactions/sidecar/parsing/SidecarParser;->parseJsonTokener(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/Object;)Lcom/amazon/ea/sidecar/def/Sidecar;

    move-result-object p1

    goto :goto_0

    .line 586
    :cond_0
    invoke-static {p1, p2}, Lcom/amazon/ea/sidecar/parsing/SidecarParser;->parseJsonTokener(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/Object;)Lcom/amazon/ea/sidecar/def/Sidecar;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private recordStandardMetrics(Z)V
    .locals 2

    .line 596
    iget-boolean v0, p0, Lcom/amazon/ea/ReaderEventHandler;->hasSidecar:Z

    const-string v1, "HasSidecar"

    invoke-static {v0, v1}, Lcom/amazon/ea/metrics/M;->condSet(ZLjava/lang/String;)Z

    .line 597
    invoke-static {}, Lcom/amazon/ea/util/WirelessHelper;->isConnected()Z

    move-result v0

    const-string v1, "HasNetworkConnectivity"

    invoke-static {v0, v1}, Lcom/amazon/ea/metrics/M;->condSet(ZLjava/lang/String;)Z

    .line 598
    iget-object v0, p0, Lcom/amazon/ea/ReaderEventHandler;->erl:Lcom/amazon/kindle/krx/reader/IPosition;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "HasErl"

    invoke-static {v0, v1}, Lcom/amazon/ea/metrics/M;->condSet(ZLjava/lang/String;)Z

    const-string v0, "IsSample"

    .line 599
    invoke-static {p1, v0}, Lcom/amazon/ea/metrics/M;->condSet(ZLjava/lang/String;)Z

    return-void
.end method

.method private updateReadingProgressMetrics()V
    .locals 2

    .line 606
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookNavigator()Lcom/amazon/kindle/krx/reader/IBookNavigator;

    move-result-object v0

    if-nez v0, :cond_0

    .line 608
    sget-object v0, Lcom/amazon/ea/ReaderEventHandler;->TAG:Ljava/lang/String;

    const-string v1, "bookNavigator is null in updateReadingProgress"

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 612
    :cond_0
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->hasNextPage()Z

    move-result v0

    if-nez v0, :cond_2

    .line 613
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 614
    sget-object v0, Lcom/amazon/ea/ReaderEventHandler;->TAG:Ljava/lang/String;

    const-string v1, "Reached Last Page"

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x1

    .line 616
    iput-boolean v0, p0, Lcom/amazon/ea/ReaderEventHandler;->reachedLastPage:Z

    :cond_2
    return-void
.end method


# virtual methods
.method public getLayoutModel(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/ea/model/layout/LayoutModel;
    .locals 6

    .line 358
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->layoutModel:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/ea/model/layout/LayoutModel;

    .line 359
    sget-object v1, Lcom/amazon/ea/EndActionsPlugin;->isLayoutModelBottomSheet:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 360
    iget-object v2, p0, Lcom/amazon/ea/ReaderEventHandler;->endActionsLauncher:Lcom/amazon/ea/EndActionsLauncher;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/amazon/ea/EndActionsLauncher;->isBottomSheetEnabled(Z)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    if-eqz v1, :cond_0

    .line 363
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    if-nez v2, :cond_2

    if-eqz v1, :cond_3

    .line 365
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz v0, :cond_2

    .line 366
    invoke-static {p1}, Lcom/amazon/ea/model/LayoutDecider;->createDefaultLayout(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/ea/model/layout/LayoutModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/ea/model/layout/LayoutModel;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    if-nez v5, :cond_4

    if-eqz v4, :cond_5

    .line 369
    :cond_4
    invoke-virtual {p0, p1, v3}, Lcom/amazon/ea/ReaderEventHandler;->processSidecar(Lcom/amazon/kindle/krx/content/IBook;Z)V

    .line 370
    sget-object p1, Lcom/amazon/ea/EndActionsPlugin;->layoutModel:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/amazon/ea/model/layout/LayoutModel;

    :cond_5
    if-eqz v0, :cond_7

    .line 374
    invoke-virtual {v0}, Lcom/amazon/ea/model/layout/LayoutModel;->getWidgets()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const-string v1, "NoWidgets"

    invoke-static {p1, v1}, Lcom/amazon/ea/metrics/M;->condSet(ZLjava/lang/String;)Z

    if-eqz p1, :cond_6

    goto :goto_2

    :cond_6
    return-object v0

    .line 375
    :cond_7
    :goto_2
    sget-object p1, Lcom/amazon/ea/ReaderEventHandler;->TAG:Ljava/lang/String;

    const-string v0, "No widgets available for EndActions"

    invoke-static {p1, v0}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public launchEndActions(Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;)V
    .locals 8

    const-string v0, "LaunchStart"

    const-string v1, "LaunchAttempt"

    .line 308
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/amazon/ea/EndActionsPlugin;->setEndActionsStartTime(J)V

    const-string v2, "LaunchEndActions"

    .line 309
    invoke-static {v2}, Lcom/amazon/ea/metrics/M;->push(Ljava/lang/String;)V

    .line 311
    :try_start_0
    sget-object v2, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    iget-object v3, p1, Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;->metricName:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazon/ea/metrics/Profiler;->addCount(Ljava/lang/String;)V

    .line 312
    invoke-static {}, Lcom/amazon/ea/metrics/SimpleMetricsManager;->getEndActionsMetricsManager()Lcom/amazon/ea/metrics/SimpleMetricsManager;

    move-result-object v2

    .line 313
    iget-object v3, p1, Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;->metricName:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lcom/amazon/ea/metrics/SimpleMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    sget-object v1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v1

    if-nez v1, :cond_0

    .line 317
    sget-object p1, Lcom/amazon/ea/ReaderEventHandler;->TAG:Ljava/lang/String;

    const-string v0, "currentBook is null in launchEndActions"

    invoke-static {p1, v0}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    return-void

    .line 321
    :cond_0
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/amazon/ea/ReaderEventHandler;->getLayoutModel(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/ea/model/layout/LayoutModel;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_1

    .line 348
    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    return-void

    .line 326
    :cond_1
    :try_start_2
    iget-object v4, p0, Lcom/amazon/ea/ReaderEventHandler;->endActionsLauncher:Lcom/amazon/ea/EndActionsLauncher;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/amazon/ea/EndActionsLauncher;->isBottomSheetEnabled(Z)Z

    move-result v4

    const/4 v6, 0x0

    if-eqz v4, :cond_2

    .line 327
    invoke-static {v5}, Lcom/amazon/ea/EndActionsPlugin;->setIsEndActionsBottomSheetOpened(Z)V

    .line 328
    iget-object v4, p0, Lcom/amazon/ea/ReaderEventHandler;->endActionsLauncher:Lcom/amazon/ea/EndActionsLauncher;

    sget-object v7, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 331
    invoke-interface {v7}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v7

    .line 328
    invoke-virtual {v4, p1, v3, v7}, Lcom/amazon/ea/EndActionsLauncher;->launchEndActionsBottomSheet(Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;Lcom/amazon/ea/model/layout/LayoutModel;Lcom/amazon/kindle/krx/events/IPubSubEventsManager;)Z

    goto :goto_0

    .line 334
    :cond_2
    invoke-static {v6}, Lcom/amazon/ea/EndActionsPlugin;->setIsEndActionsBottomSheetOpened(Z)V

    .line 335
    invoke-direct {p0, p1}, Lcom/amazon/ea/ReaderEventHandler;->launchEndActionsLegacy(Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;)V

    .line 338
    :goto_0
    sget-object v3, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    iget-object v4, p1, Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;->metricName:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amazon/ea/metrics/Profiler;->addCount(Ljava/lang/String;)V

    .line 339
    iget-object v3, p1, Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;->metricName:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lcom/amazon/ea/metrics/SimpleMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    iget-boolean p1, p1, Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;->userInitiated:Z

    if-nez p1, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    sput-boolean p1, Lcom/amazon/ea/EndActionsPlugin;->endActionsOpenedAutomatically:Z

    .line 344
    sget-object p1, Lcom/amazon/kindle/krx/content/ContentType;->BOOK_SAMPLE:Lcom/amazon/kindle/krx/content/ContentType;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v0

    if-ne p1, v0, :cond_4

    const/4 v6, 0x1

    :cond_4
    invoke-direct {p0, v6}, Lcom/amazon/ea/ReaderEventHandler;->recordStandardMetrics(Z)V

    .line 346
    iput-boolean v5, p0, Lcom/amazon/ea/ReaderEventHandler;->launchedEndActions:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 348
    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    .line 349
    throw p1
.end method

.method public onAfterContentClose(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 4

    const-string v0, "BookClose"

    .line 118
    invoke-static {v0}, Lcom/amazon/ea/metrics/M;->push(Ljava/lang/String;)V

    .line 120
    :try_start_0
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    sget-object v0, Lcom/amazon/ea/ReaderEventHandler;->TAG:Ljava/lang/String;

    const-string v1, "Book close."

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :cond_0
    sget-object v0, Lcom/amazon/kindle/krx/content/ContentType;->BOOK_SAMPLE:Lcom/amazon/kindle/krx/content/ContentType;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/amazon/ea/ReaderEventHandler;->recordStandardMetrics(Z)V

    .line 125
    iget-boolean p1, p0, Lcom/amazon/ea/ReaderEventHandler;->reachedLastPage:Z

    if-eqz p1, :cond_3

    .line 126
    iget-boolean p1, p0, Lcom/amazon/ea/ReaderEventHandler;->launchedEndActions:Z

    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    const-string v0, "ReachedLastPageNoEndActionsLaunch"

    invoke-static {p1, v0}, Lcom/amazon/ea/metrics/M;->condSet(ZLjava/lang/String;)Z

    .line 128
    :cond_3
    invoke-static {}, Lcom/amazon/ea/metrics/M;->closeSession()V

    const/4 p1, 0x0

    .line 130
    iput-object p1, p0, Lcom/amazon/ea/ReaderEventHandler;->erl:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 131
    iput-object p1, p0, Lcom/amazon/ea/ReaderEventHandler;->lastStart:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 132
    iput-boolean v2, p0, Lcom/amazon/ea/ReaderEventHandler;->hasSidecar:Z

    .line 133
    iput-boolean v2, p0, Lcom/amazon/ea/ReaderEventHandler;->launchedEndActions:Z

    .line 134
    iput-boolean v2, p0, Lcom/amazon/ea/ReaderEventHandler;->reachedLastPage:Z

    const-wide/16 v2, -0x1

    .line 135
    iput-wide v2, p0, Lcom/amazon/ea/ReaderEventHandler;->previousCacheTimestamp:J

    .line 136
    invoke-static {}, Lcom/amazon/startactions/storage/ImageDownloadManager;->ensureMaxCacheSize()V

    .line 137
    invoke-static {}, Lcom/amazon/ea/EndActionsPlugin;->getPurchaseManager()Lcom/amazon/ea/purchase/PurchaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/ea/purchase/PurchaseManager;->cleanup()V

    .line 138
    invoke-static {}, Lcom/amazon/ea/metrics/PurchaseAttributor;->cleanup()V

    .line 140
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->layoutModel:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 141
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->isLayoutModelBottomSheet:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 143
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 144
    sget-object p1, Lcom/amazon/ea/ReaderEventHandler;->TAG:Ljava/lang/String;

    const-string v0, "Canceling async tasks"

    invoke-static {p1, v0}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :cond_4
    iget-object p1, p0, Lcom/amazon/ea/ReaderEventHandler;->asyncTasks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 147
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_2

    .line 149
    :cond_5
    iget-object p1, p0, Lcom/amazon/ea/ReaderEventHandler;->asyncTasks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    .line 152
    throw p1
.end method

.method public onAfterContentOpen(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 5

    const-string v0, "BookOpen"

    .line 157
    invoke-static {v0}, Lcom/amazon/ea/metrics/M;->push(Ljava/lang/String;)V

    .line 159
    :try_start_0
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    sget-object v0, Lcom/amazon/ea/ReaderEventHandler;->TAG:Ljava/lang/String;

    const-string v1, "Book open."

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :cond_0
    sget-object v0, Lcom/amazon/ea/ReaderEventHandler;->SUPPORTED_CONTENT_TYPES:Ljava/util/EnumSet;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 191
    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 166
    :try_start_1
    invoke-direct {p0, p1, v0}, Lcom/amazon/ea/ReaderEventHandler;->createLayoutModel(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/ea/sidecar/def/Sidecar;)Lcom/amazon/ea/model/layout/LayoutModel;

    move-result-object v1

    .line 167
    sget-object v2, Lcom/amazon/ea/EndActionsPlugin;->layoutModel:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 168
    sget-object v2, Lcom/amazon/ea/EndActionsPlugin;->isLayoutModelBottomSheet:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v3, p0, Lcom/amazon/ea/ReaderEventHandler;->endActionsLauncher:Lcom/amazon/ea/EndActionsLauncher;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/amazon/ea/EndActionsLauncher;->isBottomSheetEnabled(Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 170
    invoke-virtual {p0}, Lcom/amazon/ea/ReaderEventHandler;->startDownloadsIfNeeded()V

    .line 173
    invoke-direct {p0, p1, v1, v0}, Lcom/amazon/ea/ReaderEventHandler;->initMetricsWithBook(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/ea/model/layout/LayoutModel;Lcom/amazon/ea/sidecar/def/Sidecar;)V

    const/4 v0, 0x1

    .line 176
    invoke-direct {p0, p1, v0}, Lcom/amazon/ea/ReaderEventHandler;->asyncProcessSidecar(Lcom/amazon/kindle/krx/content/IBook;Z)V

    .line 179
    sget-object p1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookNavigator()Lcom/amazon/kindle/krx/reader/IBookNavigator;

    move-result-object p1

    if-nez p1, :cond_2

    .line 181
    sget-object p1, Lcom/amazon/ea/ReaderEventHandler;->TAG:Ljava/lang/String;

    const-string v0, "bookNavigator is null in onAfterContentOpen"

    invoke-static {p1, v0}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 183
    :cond_2
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getCurrentPageStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/ea/ReaderEventHandler;->lastStart:Lcom/amazon/kindle/krx/reader/IPosition;

    if-nez p1, :cond_3

    .line 185
    sget-object p1, Lcom/amazon/ea/ReaderEventHandler;->TAG:Ljava/lang/String;

    const-string v0, "getCurrentPageStartPosition returned null in onAfterContentOpen"

    invoke-static {p1, v0}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/amazon/ea/ReaderEventHandler;->updateReadingProgressMetrics()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    .line 192
    throw p1
.end method

.method public onAfterNavigation(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;)V
    .locals 1

    .line 197
    invoke-static {p1}, Lcom/amazon/ea/ReaderEventHandler;->isContentSupported(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 200
    :cond_0
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 201
    sget-object p1, Lcom/amazon/ea/ReaderEventHandler;->TAG:Ljava/lang/String;

    const-string v0, "After Navigation."

    invoke-static {p1, v0}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    :cond_1
    sget-object p1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookNavigator()Lcom/amazon/kindle/krx/reader/IBookNavigator;

    move-result-object p1

    if-nez p1, :cond_2

    .line 205
    sget-object p1, Lcom/amazon/ea/ReaderEventHandler;->TAG:Ljava/lang/String;

    const-string p2, "bookNavigator is null in onAfterNavigation"

    invoke-static {p1, p2}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 208
    :cond_2
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getCurrentPageStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    if-nez p1, :cond_3

    .line 210
    sget-object p1, Lcom/amazon/ea/ReaderEventHandler;->TAG:Ljava/lang/String;

    const-string p2, "getCurrentPageStartPosition returned null in onAfterNavigation"

    invoke-static {p1, p2}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 214
    :cond_3
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/ea/ReaderEventHandler;->startDownloadsIfNeeded()V

    .line 216
    sget-object v0, Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;->PAGE_NEXT:Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq p2, v0, :cond_4

    .line 225
    iput-object p1, p0, Lcom/amazon/ea/ReaderEventHandler;->lastStart:Lcom/amazon/kindle/krx/reader/IPosition;

    return-void

    .line 220
    :cond_4
    :try_start_1
    iget-object p2, p0, Lcom/amazon/ea/ReaderEventHandler;->erl:Lcom/amazon/kindle/krx/reader/IPosition;

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/amazon/ea/ReaderEventHandler;->lastStart:Lcom/amazon/kindle/krx/reader/IPosition;

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/amazon/ea/ReaderEventHandler;->erl:Lcom/amazon/kindle/krx/reader/IPosition;

    iget-object v0, p0, Lcom/amazon/ea/ReaderEventHandler;->lastStart:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-interface {p2, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p2

    if-lez p2, :cond_5

    iget-object p2, p0, Lcom/amazon/ea/ReaderEventHandler;->erl:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-interface {p2, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p2

    if-gtz p2, :cond_5

    .line 221
    sget-object p2, Lcom/amazon/ea/ReaderEventHandler;->TAG:Ljava/lang/String;

    const-string v0, "Launching End Actions at ERL"

    invoke-static {p2, v0}, Lcom/amazon/ea/logging/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    sget-object p2, Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;->ERL:Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;

    invoke-virtual {p0, p2}, Lcom/amazon/ea/ReaderEventHandler;->launchEndActions(Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 225
    :cond_5
    iput-object p1, p0, Lcom/amazon/ea/ReaderEventHandler;->lastStart:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 228
    invoke-direct {p0}, Lcom/amazon/ea/ReaderEventHandler;->updateReadingProgressMetrics()V

    return-void

    :catchall_0
    move-exception p2

    .line 225
    iput-object p1, p0, Lcom/amazon/ea/ReaderEventHandler;->lastStart:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 226
    throw p2
.end method

.method public onBeforeNavigation(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;)V
    .locals 0

    return-void
.end method

.method public onNavigationFailed(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;)V
    .locals 0

    return-void
.end method

.method public onPageTurnAborted(Lcom/amazon/kindle/krx/reader/IPageTurnAbortedEventData;)V
    .locals 2

    if-nez p1, :cond_0

    .line 244
    sget-object p1, Lcom/amazon/ea/ReaderEventHandler;->TAG:Ljava/lang/String;

    const-string v0, "Received null IPageTurnAbortedEventData object"

    invoke-static {p1, v0}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 247
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPageTurnAbortedEventData;->getContent()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    .line 248
    invoke-static {v0}, Lcom/amazon/ea/ReaderEventHandler;->isContentSupported(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 251
    :cond_1
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 252
    sget-object v0, Lcom/amazon/ea/ReaderEventHandler;->TAG:Ljava/lang/String;

    const-string v1, "Page Turn Aborted"

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    :cond_2
    sget-object v0, Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;->PAGE_NEXT:Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPageTurnAbortedEventData;->getNavigationType()Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 255
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPageTurnAbortedEventData;->isNextPageAvailable()Z

    move-result p1

    if-nez p1, :cond_4

    .line 256
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 257
    sget-object p1, Lcom/amazon/ea/ReaderEventHandler;->TAG:Ljava/lang/String;

    const-string v0, "Launching End Actions after last page"

    invoke-static {p1, v0}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    :cond_3
    sget-object p1, Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;->END_OF_BOOK:Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;

    invoke-virtual {p0, p1}, Lcom/amazon/ea/ReaderEventHandler;->launchEndActions(Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;)V

    :cond_4
    return-void
.end method

.method public onSidecarDownloaded(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 4

    const-string v0, "OnSidecarDownloaded"

    .line 271
    invoke-static {v0}, Lcom/amazon/ea/metrics/M;->push(Ljava/lang/String;)V

    .line 274
    :try_start_0
    iget-object v0, p0, Lcom/amazon/ea/ReaderEventHandler;->asyncTasks:Ljava/util/List;

    sget-object v1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getAsyncTaskExecutor()Lcom/amazon/kindle/krx/application/IAsyncTaskExecutor;

    move-result-object v1

    new-instance v2, Lcom/amazon/ea/ReaderEventHandler$1;

    invoke-direct {v2, p0, p1}, Lcom/amazon/ea/ReaderEventHandler$1;-><init>(Lcom/amazon/ea/ReaderEventHandler;Lcom/amazon/kindle/krx/content/IBook;)V

    sget-object v3, Lcom/amazon/kindle/krx/application/IAsyncTask$TaskPriority;->LOW:Lcom/amazon/kindle/krx/application/IAsyncTask$TaskPriority;

    .line 275
    invoke-static {v2, v3}, Lcom/amazon/ea/metrics/M;->asyncWithMetrics(Ljava/util/concurrent/Callable;Lcom/amazon/kindle/krx/application/IAsyncTask$TaskPriority;)Lcom/amazon/kindle/krx/application/IAsyncTask;

    move-result-object v2

    .line 274
    invoke-interface {v1, v2}, Lcom/amazon/kindle/krx/application/IAsyncTaskExecutor;->submit(Lcom/amazon/kindle/krx/application/IAsyncTask;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    if-nez v0, :cond_1

    .line 286
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 287
    sget-object p1, Lcom/amazon/ea/ReaderEventHandler;->TAG:Ljava/lang/String;

    const-string v0, "currentBook is null in onSidecarDownloaded"

    invoke-static {p1, v0}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    :cond_0
    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    return-void

    .line 292
    :cond_1
    :try_start_1
    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 293
    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v0

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 294
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 295
    sget-object v0, Lcom/amazon/ea/ReaderEventHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Processing sidecar for asin: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 v0, 0x0

    .line 297
    invoke-direct {p0, p1, v0}, Lcom/amazon/ea/ReaderEventHandler;->asyncProcessSidecar(Lcom/amazon/kindle/krx/content/IBook;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 300
    :cond_3
    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    .line 301
    throw p1
.end method

.method protected parseSidecar(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/ea/sidecar/def/Sidecar;
    .locals 8

    .line 513
    sget-object v0, Lcom/amazon/ea/util/SidecarFileUtil$SidecarFileType;->END_ACTIONS:Lcom/amazon/ea/util/SidecarFileUtil$SidecarFileType;

    invoke-static {p1, v0}, Lcom/amazon/ea/sidecar/parsing/SidecarParser;->readSidecarJsonTokener(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/ea/util/SidecarFileUtil$SidecarFileType;)Ljava/lang/Object;

    move-result-object v0

    .line 514
    invoke-static {v0}, Lcom/amazon/ea/sidecar/parsing/SidecarParser;->isSidecarVoltronFormat(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 522
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 523
    sget-object p1, Lcom/amazon/ea/ReaderEventHandler;->TAG:Ljava/lang/String;

    const-string v0, "Sidecar is in unsupported Voltron format"

    invoke-static {p1, v0}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    :cond_0
    iput-boolean v3, p0, Lcom/amazon/ea/ReaderEventHandler;->hasSidecar:Z

    return-object v2

    .line 528
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/amazon/ea/ReaderEventHandler;->parseJsonTokener(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/Object;)Lcom/amazon/ea/sidecar/def/Sidecar;

    move-result-object v0

    if-nez v0, :cond_3

    .line 530
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 531
    sget-object p1, Lcom/amazon/ea/ReaderEventHandler;->TAG:Ljava/lang/String;

    const-string v0, "Sidecar is null"

    invoke-static {p1, v0}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    :cond_2
    iput-boolean v3, p0, Lcom/amazon/ea/ReaderEventHandler;->hasSidecar:Z

    return-object v2

    :cond_3
    const/4 v1, 0x1

    .line 536
    iput-boolean v1, p0, Lcom/amazon/ea/ReaderEventHandler;->hasSidecar:Z

    .line 537
    iget-object v2, v0, Lcom/amazon/ea/sidecar/def/Sidecar;->commonData:Lcom/amazon/ea/sidecar/def/CommonData;

    iget-wide v4, v2, Lcom/amazon/ea/sidecar/def/CommonData;->erl:J

    const-wide/16 v6, -0x1

    cmp-long v2, v4, v6

    if-eqz v2, :cond_6

    .line 538
    sget-object v2, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookNavigator()Lcom/amazon/kindle/krx/reader/IBookNavigator;

    move-result-object v2

    if-nez v2, :cond_4

    .line 540
    sget-object p1, Lcom/amazon/ea/ReaderEventHandler;->TAG:Ljava/lang/String;

    const-string v1, "bookNavigator is null in asyncProcessSidecar"

    invoke-static {p1, v1}, Lcom/amazon/ea/logging/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 542
    :cond_4
    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getPositionFactory()Lcom/amazon/kindle/krx/reader/IPositionFactory;

    move-result-object v2

    iget-object v4, v0, Lcom/amazon/ea/sidecar/def/Sidecar;->commonData:Lcom/amazon/ea/sidecar/def/CommonData;

    iget-wide v4, v4, Lcom/amazon/ea/sidecar/def/CommonData;->erl:J

    long-to-int v5, v4

    invoke-interface {v2, v5}, Lcom/amazon/kindle/krx/reader/IPositionFactory;->createFromInt(I)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    iput-object v2, p0, Lcom/amazon/ea/ReaderEventHandler;->erl:Lcom/amazon/kindle/krx/reader/IPosition;

    if-eqz v2, :cond_5

    .line 544
    iget-object v1, p0, Lcom/amazon/ea/ReaderEventHandler;->erlProvider:Lcom/amazon/ea/ERLProvider;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IPosition;->toSerializableString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/amazon/ea/ERLProvider;->setErl(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)V

    goto :goto_0

    .line 546
    :cond_5
    sget-object v2, Lcom/amazon/ea/ReaderEventHandler;->TAG:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, v0, Lcom/amazon/ea/sidecar/def/Sidecar;->commonData:Lcom/amazon/ea/sidecar/def/CommonData;

    iget-wide v5, v5, Lcom/amazon/ea/sidecar/def/CommonData;->erl:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v1

    const-string p1, "ERL (%d) is invalid for ASIN (%s)"

    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/amazon/ea/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_0
    return-object v0
.end method

.method protected preFetchGoodreadsRemoteShelf()V
    .locals 3

    const/4 v0, 0x1

    .line 402
    invoke-static {v0}, Lcom/amazon/ea/util/GrokAvailabilityUtil;->getGoodreadsInfo(Z)Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 404
    sget-object v0, Lcom/amazon/ea/ReaderEventHandler;->TAG:Ljava/lang/String;

    const-string v1, "GoodreadsInfo is null. Not pre-fetching remote shelf"

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 407
    :cond_0
    invoke-static {}, Lcom/amazon/ea/util/WirelessHelper;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 408
    invoke-static {}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;->getInstance()Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;

    move-result-object v1

    sget-object v2, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;->NA:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;

    invoke-virtual {v1, v0, v2}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;->fetchRemoteShelf(Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;)V

    :cond_1
    return-void
.end method

.method protected processSidecar(Lcom/amazon/kindle/krx/content/IBook;Z)V
    .locals 7

    .line 556
    invoke-virtual {p0, p1}, Lcom/amazon/ea/ReaderEventHandler;->parseSidecar(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/ea/sidecar/def/Sidecar;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 558
    invoke-direct {p0, p1, p2}, Lcom/amazon/ea/ReaderEventHandler;->createLayoutModel(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/ea/sidecar/def/Sidecar;)Lcom/amazon/ea/model/layout/LayoutModel;

    move-result-object v1

    .line 559
    sget-object v2, Lcom/amazon/ea/EndActionsPlugin;->layoutModel:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 560
    sget-object v2, Lcom/amazon/ea/EndActionsPlugin;->isLayoutModelBottomSheet:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v3, p0, Lcom/amazon/ea/ReaderEventHandler;->endActionsLauncher:Lcom/amazon/ea/EndActionsLauncher;

    invoke-virtual {v3, v0}, Lcom/amazon/ea/EndActionsLauncher;->isBottomSheetEnabled(Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 562
    invoke-virtual {p0}, Lcom/amazon/ea/ReaderEventHandler;->startDownloadsIfNeeded()V

    .line 565
    invoke-direct {p0, p1, v1, p2}, Lcom/amazon/ea/ReaderEventHandler;->initMetricsWithBook(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/ea/model/layout/LayoutModel;Lcom/amazon/ea/sidecar/def/Sidecar;)V

    .line 571
    :cond_0
    sget-object p2, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v1

    sget-object p2, Lcom/amazon/ea/ReaderEventHandler;->SUPPORTED_CONTENT_TYPES:Ljava/util/EnumSet;

    .line 572
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    iget-boolean v4, p0, Lcom/amazon/ea/ReaderEventHandler;->hasSidecar:Z

    .line 573
    invoke-static {}, Lcom/amazon/ea/util/ChildAccountUtil;->isChildAccount()Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->inDemoMode()Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 574
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getRestrictionHandler()Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;->isBookPurchaseBlocked()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 v0, 0x1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x1

    const-string v2, "EndActions"

    .line 571
    invoke-interface/range {v1 .. v6}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->recordAuxContentAvailability(Ljava/lang/String;ZZZZ)V

    return-void
.end method

.method protected startDownloadsIfNeeded()V
    .locals 10

    .line 417
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookNavigator()Lcom/amazon/kindle/krx/reader/IBookNavigator;

    move-result-object v0

    if-nez v0, :cond_0

    .line 419
    sget-object v0, Lcom/amazon/ea/ReaderEventHandler;->TAG:Ljava/lang/String;

    const-string v1, "bookNavigator is null in startImageDownloadsIfNeeded"

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 423
    :cond_0
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getCurrentPageStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    if-nez v1, :cond_1

    .line 425
    sget-object v0, Lcom/amazon/ea/ReaderEventHandler;->TAG:Ljava/lang/String;

    const-string v1, "getCurrentPageStartPosition returned null in startImageDownloadsIfNeeded"

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 429
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 430
    iget-wide v4, p0, Lcom/amazon/ea/ReaderEventHandler;->previousCacheTimestamp:J

    sub-long v4, v2, v4

    const-wide/32 v6, 0xdbba0

    cmp-long v8, v4, v6

    if-gtz v8, :cond_3

    .line 432
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 433
    sget-object v0, Lcom/amazon/ea/ReaderEventHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "time since last cache is within our window for staleness. [currTime="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", timestamp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/amazon/ea/ReaderEventHandler;->previousCacheTimestamp:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", timeSince="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    const/4 v2, 0x2

    new-array v3, v2, [Lcom/amazon/kindle/krx/reader/IPosition;

    .line 439
    iget-object v4, p0, Lcom/amazon/ea/ReaderEventHandler;->erl:Lcom/amazon/kindle/krx/reader/IPosition;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getEndPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    const/4 v4, 0x1

    aput-object v0, v3, v4

    :goto_0
    if-ge v5, v2, :cond_8

    aget-object v0, v3, v5

    if-nez v0, :cond_4

    goto :goto_1

    .line 444
    :cond_4
    invoke-interface {v1, v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getPercentage(Lcom/amazon/kindle/krx/reader/IPosition;)D

    move-result-wide v6

    const-wide v8, 0x4057c00000000000L    # 95.0

    cmpl-double v0, v6, v8

    if-lez v0, :cond_7

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    cmpg-double v0, v6, v8

    if-gtz v0, :cond_7

    .line 447
    invoke-static {}, Lcom/amazon/ea/goodreadsshelf/AutoShelfUtil;->isAutoShelvingEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 448
    invoke-virtual {p0}, Lcom/amazon/ea/ReaderEventHandler;->preFetchGoodreadsRemoteShelf()V

    .line 451
    :cond_5
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->layoutModel:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/ea/model/layout/LayoutModel;

    if-eqz v0, :cond_6

    .line 453
    invoke-virtual {v0}, Lcom/amazon/ea/model/layout/LayoutModel;->prepareData()V

    .line 455
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/ea/ReaderEventHandler;->previousCacheTimestamp:J

    goto :goto_2

    :cond_7
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_8
    :goto_2
    return-void
.end method
