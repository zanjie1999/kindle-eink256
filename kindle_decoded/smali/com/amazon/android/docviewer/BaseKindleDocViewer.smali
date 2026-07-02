.class public abstract Lcom/amazon/android/docviewer/BaseKindleDocViewer;
.super Ljava/lang/Object;
.source "BaseKindleDocViewer.java"

# interfaces
.implements Lcom/amazon/android/docviewer/DebugKindleDocViewer;
.implements Lcom/amazon/kindle/model/content/ILocalBookItemDocument;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/android/docviewer/BaseKindleDocViewer$PooledWordIterator;,
        Lcom/amazon/android/docviewer/BaseKindleDocViewer$ThumbnailManagerReadyEvent;,
        Lcom/amazon/android/docviewer/BaseKindleDocViewer$TocReadyEvent;,
        Lcom/amazon/android/docviewer/BaseKindleDocViewer$PageLabelReadyEvent;,
        Lcom/amazon/android/docviewer/BaseKindleDocViewer$ReadyEvent;
    }
.end annotation


# static fields
.field protected static final CONTENT_OPEN_METRIC:Ljava/lang/String; = "CONTENT_OPEN"

.field public static final SEARCH_INDEX_FILENAME_EXTENSION:Ljava/lang/String; = ".luci"

.field public static final SEARCH_INDEX_LUCENE_FILENAME_EXTENSION:Ljava/lang/String; = ".lucene"

.field private static final TAG:Ljava/lang/String;

.field private static registeredBroadCastReceivers:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/content/BroadcastReceiver;",
            "Lcom/amazon/android/docviewer/KindleDocViewer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected allIterators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/android/docviewer/BaseKindleDocViewer$PooledWordIterator;",
            ">;"
        }
    .end annotation
.end field

.field protected final blackColorMode:Lcom/amazon/android/docviewer/KindleDocColorMode;

.field private firstLandingPosition:J

.field protected firstViewDrawn:Z

.field private final footerContentProvider:Lcom/amazon/android/docviewer/mobi/FooterContentProvider;

.field private isOpeningToSrl:Ljava/lang/Boolean;

.field protected iterators:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/amazon/android/docviewer/BaseKindleDocViewer$PooledWordIterator;",
            ">;"
        }
    .end annotation
.end field

.field private final lineSettingsLock:Ljava/lang/Object;

.field protected final lowPriorityBackgroundExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field protected m_annotationBuilder:Lcom/amazon/android/docviewer/KindleAnnotatedTextExtractor;

.field protected m_annotationManager:Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;

.field protected m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

.field protected m_bookSearchController:Lcom/amazon/kcp/search/IBookSearchController;

.field protected m_bookSearchIndexer:Lcom/amazon/kcp/search/IBookSearchIndexer;

.field protected m_colorMode:Lcom/amazon/android/docviewer/KindleDocColorMode;

.field protected volatile m_documentClosed:Z

.field private m_lineSettings:Lcom/amazon/android/docviewer/KindleDocLineSettings;

.field protected final m_messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

.field protected m_navigatingToSearchResult:Z

.field protected m_objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

.field protected m_orientation:I

.field protected m_orientationChanged:Z

.field protected m_searchResult:Lcom/amazon/android/docviewer/BookSearchResult;

.field protected m_searchResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/kindle/krx/search/ISearchResult;",
            ">;"
        }
    .end annotation
.end field

.field protected m_selector:Lcom/amazon/android/docviewer/IObjectSelector;

.field protected m_waypointsController:Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;

.field protected m_waypointsModel:Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;

.field protected pageSwipePlayer:Lcom/amazon/kcp/reader/accessibility/AccessiblePageSwipePlayer;

.field private pubSubEventsManager:Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

.field private searchIndexingThread:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final whiteColorMode:Lcom/amazon/android/docviewer/KindleDocColorMode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 135
    const-class v0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->TAG:Ljava/lang/String;

    .line 143
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->registeredBroadCastReceivers:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/model/content/ILocalBookItem;)V
    .locals 6

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 147
    iput-wide v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->firstLandingPosition:J

    const/4 v0, 0x0

    .line 149
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->firstViewDrawn:Z

    .line 157
    new-instance v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v2, Lcom/amazon/kindle/util/ThreadFactory;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/kindle/util/IThreadDecorator;

    new-instance v4, Lcom/amazon/kindle/util/Named;

    const-string v5, "KindleDocViewer_worker"

    invoke-direct {v4, v5}, Lcom/amazon/kindle/util/Named;-><init>(Ljava/lang/String;)V

    aput-object v4, v3, v0

    new-instance v4, Lcom/amazon/kindle/util/Prioritized;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lcom/amazon/kindle/util/Prioritized;-><init>(I)V

    aput-object v4, v3, v5

    invoke-direct {v2, v3}, Lcom/amazon/kindle/util/ThreadFactory;-><init>([Lcom/amazon/kindle/util/IThreadDecorator;)V

    new-instance v3, Lcom/amazon/android/docviewer/BaseKindleDocViewer$1;

    invoke-direct {v3, p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer$1;-><init>(Lcom/amazon/android/docviewer/BaseKindleDocViewer;)V

    invoke-direct {v1, v5, v2, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v1, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->lowPriorityBackgroundExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 244
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_documentClosed:Z

    .line 245
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_navigatingToSearchResult:Z

    .line 246
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->iterators:Ljava/util/Queue;

    .line 247
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->allIterators:Ljava/util/List;

    .line 249
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->lineSettingsLock:Ljava/lang/Object;

    .line 250
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->pubSubEventsManager:Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    .line 261
    iput-object p1, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    .line 262
    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 263
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    .line 264
    invoke-direct {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->registerBookBroadcastReceivers()V

    .line 267
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isTouchExplorationEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 268
    new-instance p1, Lcom/amazon/kcp/reader/accessibility/AccessiblePageSwipePlayer;

    invoke-direct {p1}, Lcom/amazon/kcp/reader/accessibility/AccessiblePageSwipePlayer;-><init>()V

    iput-object p1, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->pageSwipePlayer:Lcom/amazon/kcp/reader/accessibility/AccessiblePageSwipePlayer;

    .line 269
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/accessibility/AccessiblePageSwipePlayer;->lazyloadAccessiblePageSwipePlayer()V

    .line 272
    :cond_0
    new-instance p1, Lcom/amazon/android/docviewer/mobi/FooterContentProvider;

    invoke-direct {p1}, Lcom/amazon/android/docviewer/mobi/FooterContentProvider;-><init>()V

    iput-object p1, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->footerContentProvider:Lcom/amazon/android/docviewer/mobi/FooterContentProvider;

    .line 274
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getColorModeFactory()Lcom/amazon/android/docviewer/KindleDocColorModeFactory;

    move-result-object p1

    .line 275
    sget-object v0, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->BLACK:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/amazon/android/docviewer/KindleDocColorModeFactory;->getColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;Landroid/content/res/Resources;)Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->blackColorMode:Lcom/amazon/android/docviewer/KindleDocColorMode;

    .line 276
    sget-object v0, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->WHITE:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/amazon/android/docviewer/KindleDocColorModeFactory;->getColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;Landroid/content/res/Resources;)Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->whiteColorMode:Lcom/amazon/android/docviewer/KindleDocColorMode;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 134
    sget-object v0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private createLineSettings(Landroid/content/Context;)Lcom/amazon/android/docviewer/KindleDocLineSettings;
    .locals 1

    .line 1250
    new-instance v0, Lcom/amazon/android/docviewer/KindleDocLineSettings;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/amazon/android/docviewer/KindleDocLineSettings;-><init>(Landroid/content/res/Resources;)V

    return-object v0
.end method

.method private registerBookBroadcastReceivers()V
    .locals 4

    .line 1600
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getBookBroadcastReceivers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 1602
    sget-object v2, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->registeredBroadCastReceivers:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v2, v3, p0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1603
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/content/BroadcastReceiver;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/content/IntentFilter;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private unregisterBookBroadcastReceivers()V
    .locals 4

    .line 1612
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getBookBroadcastReceivers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 1614
    sget-object v2, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->registeredBroadCastReceivers:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->registeredBroadCastReceivers:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p0, :cond_0

    .line 1615
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1616
    sget-object v2, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->registeredBroadCastReceivers:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private usesThumbnailService()Z
    .locals 2

    .line 488
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->ThumbnailScrubber:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/model/content/ILocalBookItem;->hasFeature(Lcom/amazon/kindle/model/content/LocalContentFeatureType;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    sget-object v1, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->GraphicalHighlights:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    .line 489
    invoke-interface {v0, v1}, Lcom/amazon/kindle/model/content/ILocalBookItem;->hasFeature(Lcom/amazon/kindle/model/content/LocalContentFeatureType;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public addAdditionalFooterStringsFromProviders(Ljava/util/List;Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;Landroid/graphics/Paint;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;>;",
            "Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;",
            "Landroid/graphics/Paint;",
            ")",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation

    return-object p1
.end method

.method protected addDocViewerEventHandlers()V
    .locals 2

    .line 302
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getWaypointsModel()Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 303
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isTextbook()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/amazon/kcp/debug/NeutronUtilManager;->getInstance()Lcom/amazon/kcp/debug/INeutronUtil;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/debug/INeutronUtil;->isNeutronPhase1EnabledInReader()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 306
    :cond_0
    new-instance v0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsControllerThumbnailScrubber;

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getWaypointsModel()Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsControllerThumbnailScrubber;-><init>(Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;Lcom/amazon/android/docviewer/KindleDocViewer;)V

    iput-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_waypointsController:Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;

    goto :goto_1

    .line 304
    :cond_1
    :goto_0
    new-instance v0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getWaypointsModel()Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;-><init>(Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;Lcom/amazon/android/docviewer/KindleDocViewer;)V

    iput-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_waypointsController:Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;

    :cond_2
    :goto_1
    return-void
.end method

.method public addEventHandler(Lcom/amazon/android/docviewer/IKindleDocViewerEvents;)V
    .locals 0

    return-void
.end method

.method public addPostBackRenderHelper(Lcom/amazon/android/docviewer/PostBackRenderHelper;)V
    .locals 0

    return-void
.end method

.method public applyContentDecorationSettings()V
    .locals 0

    return-void
.end method

.method public applySettingsImmediately()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized calculateIsOpeningToSrl()Z
    .locals 8

    monitor-enter p0

    .line 1834
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    .line 1835
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_7

    if-nez v1, :cond_0

    goto :goto_4

    .line 1841
    :cond_0
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookItem;->getLastPositionRead()I

    move-result v4

    .line 1842
    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDoc;->getStartReadingPosition()I

    move-result v5

    .line 1843
    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDoc;->getPageEndPosition()I

    move-result v6

    const/4 v7, -0x1

    if-eq v4, v7, :cond_6

    if-eq v6, v7, :cond_6

    if-ne v5, v7, :cond_1

    goto :goto_3

    .line 1849
    :cond_1
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/krx/content/BookFormat;->getBookFormatFromMimeType(Ljava/lang/String;)Lcom/amazon/kindle/krx/content/BookFormat;

    move-result-object v0

    .line 1850
    sget-object v7, Lcom/amazon/kindle/krx/content/BookFormat;->MOBI7:Lcom/amazon/kindle/krx/content/BookFormat;

    if-eq v0, v7, :cond_3

    sget-object v7, Lcom/amazon/kindle/krx/content/BookFormat;->MOBI8:Lcom/amazon/kindle/krx/content/BookFormat;

    if-eq v0, v7, :cond_3

    sget-object v7, Lcom/amazon/kindle/krx/content/BookFormat;->TOPAZ:Lcom/amazon/kindle/krx/content/BookFormat;

    if-ne v0, v7, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_4

    .line 1866
    invoke-interface {v1, v4}, Lcom/amazon/android/docviewer/KindleDoc;->userLocationFromPosition(I)I

    move-result v4

    .line 1867
    invoke-interface {v1, v5}, Lcom/amazon/android/docviewer/KindleDoc;->userLocationFromPosition(I)I

    move-result v5

    .line 1868
    invoke-interface {v1, v6}, Lcom/amazon/android/docviewer/KindleDoc;->userLocationFromPosition(I)I

    move-result v6

    :cond_4
    sub-int/2addr v4, v2

    if-lt v5, v4, :cond_5

    if-gt v5, v6, :cond_5

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    .line 1871
    :goto_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->isOpeningToSrl:Ljava/lang/Boolean;

    .line 1872
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 1846
    :cond_6
    :goto_3
    monitor-exit p0

    return v3

    .line 1837
    :cond_7
    :goto_4
    :try_start_1
    sget-object v4, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->TAG:Ljava/lang/String;

    const-string v5, "Cannot calculate SRL: localBook=%s, kindleDoc=%s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v3

    aput-object v1, v6, v2

    invoke-static {v5, v6}, Lcom/amazon/kindle/log/Lazy;->format(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/kindle/log/Lazy;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Lcom/amazon/kindle/log/ILazy;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1838
    monitor-exit p0

    return v3

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public checkAndEnableAccessibilityPageTurnSupport()V
    .locals 0

    return-void
.end method

.method public checkToDisplayMRPRPopUpOnInitialDraw()V
    .locals 4

    .line 1263
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->isInDemoMode()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_annotationManager:Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1268
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->getBookAnnotationsManager()Lcom/amazon/kindle/annotation/IBookAnnotationsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/sync/LPRSyncType;->MRPR:Lcom/amazon/kindle/krx/sync/LPRSyncType;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/annotation/IBookAnnotationsManager;->getServerReadingPosition(Lcom/amazon/kindle/krx/sync/LPRSyncType;)Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1270
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->hasNoExistingLocalLpr()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1275
    new-instance v0, Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    sget-object v1, Lcom/amazon/kcp/application/sync/internal/SyncType;->BOOK_OPEN_AUTO:Lcom/amazon/kcp/application/sync/internal/SyncType;

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;-><init>(Lcom/amazon/kcp/application/sync/internal/SyncType;Lcom/amazon/kindle/model/content/ILocalBookInfo;Ljava/util/Date;Lcom/amazon/kindle/services/download/IStatusTracker;)V

    .line 1276
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getSynchronizationManager()Lcom/amazon/kindle/sync/SynchronizationManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/amazon/kindle/sync/SynchronizationManager;->sync(Lcom/amazon/kcp/application/sync/internal/SyncParameters;)Z

    goto :goto_0

    .line 1282
    :cond_1
    invoke-virtual {p0, v0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->isPromptworthyMrpr(Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1285
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1286
    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1287
    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amazon/kindle/model/content/ILocalBookItem;->proposeMrprToUser(Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public closeComponentViewer()V
    .locals 0

    return-void
.end method

.method public closeDocView()V
    .locals 0

    return-void
.end method

.method public declared-synchronized closeDocument()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x1

    .line 437
    :try_start_0
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_documentClosed:Z

    .line 438
    invoke-direct {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->unregisterBookBroadcastReceivers()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 442
    :try_start_1
    iget-object v1, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->searchIndexingThread:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_1

    .line 443
    iget-object v1, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookSearchIndexer:Lcom/amazon/kcp/search/IBookSearchIndexer;

    if-eqz v1, :cond_0

    .line 444
    iget-object v1, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookSearchIndexer:Lcom/amazon/kcp/search/IBookSearchIndexer;

    invoke-interface {v1}, Lcom/amazon/kcp/search/IBookSearchIndexer;->cancel()V

    .line 446
    :cond_0
    iget-object v1, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->searchIndexingThread:Ljava/util/concurrent/Future;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 447
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->searchIndexingThread:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 450
    :catch_0
    :try_start_2
    sget-object v0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->TAG:Ljava/lang/String;

    const-string v1, "Error while waiting for the readAnnotationThread to finish"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookSearchIndexer:Lcom/amazon/kcp/search/IBookSearchIndexer;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 454
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookSearchIndexer:Lcom/amazon/kcp/search/IBookSearchIndexer;

    invoke-interface {v0}, Lcom/amazon/kcp/search/IBookSearchIndexer;->close()V

    .line 455
    iput-object v1, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookSearchIndexer:Lcom/amazon/kcp/search/IBookSearchIndexer;

    .line 457
    :cond_2
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_annotationBuilder:Lcom/amazon/android/docviewer/KindleAnnotatedTextExtractor;

    if-eqz v0, :cond_3

    .line 458
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_annotationBuilder:Lcom/amazon/android/docviewer/KindleAnnotatedTextExtractor;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleAnnotatedTextExtractor;->close()V

    .line 462
    :cond_3
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->allIterators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/android/docviewer/BaseKindleDocViewer$PooledWordIterator;

    .line 463
    invoke-static {v2}, Lcom/amazon/android/docviewer/BaseKindleDocViewer$PooledWordIterator;->access$100(Lcom/amazon/android/docviewer/BaseKindleDocViewer$PooledWordIterator;)V

    goto :goto_1

    .line 465
    :cond_4
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->iterators:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 466
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->allIterators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 468
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->pageSwipePlayer:Lcom/amazon/kcp/reader/accessibility/AccessiblePageSwipePlayer;

    if-eqz v0, :cond_5

    .line 469
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->pageSwipePlayer:Lcom/amazon/kcp/reader/accessibility/AccessiblePageSwipePlayer;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/accessibility/AccessiblePageSwipePlayer;->destroy()V

    .line 470
    iput-object v1, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->pageSwipePlayer:Lcom/amazon/kcp/reader/accessibility/AccessiblePageSwipePlayer;

    .line 474
    :cond_5
    invoke-direct {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->usesThumbnailService()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 475
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.amazon.kindle.thumbnailService.STOP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 478
    :cond_6
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookSearchController:Lcom/amazon/kcp/search/IBookSearchController;

    if-eqz v0, :cond_7

    .line 479
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookSearchController:Lcom/amazon/kcp/search/IBookSearchController;

    invoke-interface {v0}, Lcom/amazon/kcp/search/IBookSearchController;->destroy()V

    .line 482
    :cond_7
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->pubSubEventsManager:Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    .line 484
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->lowPriorityBackgroundExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 485
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public closeThumbnailManager()V
    .locals 0

    return-void
.end method

.method protected declared-synchronized createDelayedSearchIndexThread()V
    .locals 5

    monitor-enter p0

    .line 322
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$integer;->search_index_build_delay:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    .line 323
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v2

    .line 324
    invoke-interface {v2}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getContentClass()Lcom/amazon/kindle/model/content/ContentClass;

    move-result-object v3

    .line 327
    sget-object v4, Lcom/amazon/kindle/model/content/ContentClass;->CHILDREN:Lcom/amazon/kindle/model/content/ContentClass;

    if-eq v3, v4, :cond_2

    sget-object v4, Lcom/amazon/kindle/model/content/ContentClass;->COMIC:Lcom/amazon/kindle/model/content/ContentClass;

    if-eq v3, v4, :cond_2

    .line 329
    invoke-interface {v2}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v3

    sget-object v4, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_SAMPLE:Lcom/amazon/kcp/library/models/BookType;

    if-eq v3, v4, :cond_2

    .line 330
    invoke-static {v2}, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->isPreferredDictionary(Lcom/amazon/kindle/model/content/IListableBook;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 334
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/amazon/kindle/krl/R$bool;->enable_lucene_search:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    .line 336
    monitor-exit p0

    return-void

    .line 339
    :cond_1
    :try_start_1
    new-instance v4, Lcom/amazon/android/docviewer/BaseKindleDocViewer$2;

    invoke-direct {v4, p0, v2, v3}, Lcom/amazon/android/docviewer/BaseKindleDocViewer$2;-><init>(Lcom/amazon/android/docviewer/BaseKindleDocViewer;Lcom/amazon/kindle/model/content/ILocalBookItem;Z)V

    .line 413
    iget-object v2, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->lowPriorityBackgroundExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v4, v0, v1, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->searchIndexingThread:Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 414
    monitor-exit p0

    return-void

    .line 331
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public createDocView(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method protected createObjectSelectionModel()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;
    .locals 1

    .line 1802
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public createPositionRange(ILcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)Lcom/amazon/android/docviewer/IPositionRange;
    .locals 0

    .line 567
    new-instance p1, Lcom/amazon/android/docviewer/IntPositionRange;

    invoke-interface {p2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p2

    invoke-interface {p3}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p3

    invoke-direct {p1, p2, p3}, Lcom/amazon/android/docviewer/IntPositionRange;-><init>(II)V

    return-object p1
.end method

.method public createPositionRange(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Lcom/amazon/android/docviewer/IPositionRange;
    .locals 2

    .line 562
    new-instance v0, Lcom/amazon/android/docviewer/IntPositionRange;

    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/amazon/android/docviewer/IntPositionRange;-><init>(II)V

    return-object v0
.end method

.method public createWordIterator()Lcom/amazon/kindle/search/IKindleWordTokenIterator;
    .locals 3

    .line 1115
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_documentClosed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 1119
    :cond_0
    monitor-enter p0

    .line 1120
    :try_start_0
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_documentClosed:Z

    if-eqz v0, :cond_1

    .line 1121
    monitor-exit p0

    return-object v1

    .line 1124
    :cond_1
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->iterators:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    if-nez v0, :cond_2

    const-string v0, "BaseKindleDocViewer.createWordTokenIterator()"

    const/4 v1, 0x1

    .line 1126
    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 1127
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->createWordTokenIterator()Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    move-result-object v0

    const-string v1, "BaseKindleDocViewer.createWordTokenIterator()"

    const/4 v2, 0x0

    .line 1128
    invoke-static {v1, v2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    if-eqz v0, :cond_2

    .line 1130
    new-instance v1, Lcom/amazon/android/docviewer/BaseKindleDocViewer$PooledWordIterator;

    invoke-direct {v1, p0, v0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer$PooledWordIterator;-><init>(Lcom/amazon/android/docviewer/BaseKindleDocViewer;Lcom/amazon/kindle/search/IKindleWordTokenIterator;)V

    monitor-exit p0

    return-object v1

    .line 1133
    :cond_2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 1134
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected createWordTokenIterator()Lcom/amazon/kindle/search/IKindleWordTokenIterator;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public currentViewContainsRange(Lcom/amazon/android/docviewer/IPositionRange;)Z
    .locals 3

    .line 572
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 575
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getCurrentPage()Lcom/amazon/android/docviewer/IDocumentPage;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 581
    :cond_1
    new-instance v1, Lcom/amazon/android/docviewer/IntPositionRange;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/IDocumentPage;->getFirstElementPositionId()I

    move-result v2

    invoke-interface {v0}, Lcom/amazon/android/docviewer/IDocumentPage;->getLastElementPositionId()I

    move-result v0

    invoke-direct {v1, v2, v0}, Lcom/amazon/android/docviewer/IntPositionRange;-><init>(II)V

    .line 582
    invoke-interface {v1, p1}, Lcom/amazon/android/docviewer/IPositionRange;->contains(Lcom/amazon/android/docviewer/IPositionRange;)Z

    move-result p1

    return p1
.end method

.method public debugApplySettings()V
    .locals 0

    return-void
.end method

.method public debugGetBackgroundColor()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public debugGetFontSize()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public debugGetLineSpacing()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public debugGetMargins()Landroid/view/ViewGroup$MarginLayoutParams;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public debugGetProperty(Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public debugGetTextColor()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public debugSetBackgroundColor(I)V
    .locals 0

    return-void
.end method

.method public debugSetFontSize(I)V
    .locals 0

    return-void
.end method

.method public debugSetLineSpacing(I)V
    .locals 0

    return-void
.end method

.method public debugSetMargins(IIII)V
    .locals 0

    return-void
.end method

.method public debugSetMargins(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 0

    return-void
.end method

.method public debugSetProperty(Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;I)V
    .locals 0

    return-void
.end method

.method public debugSetTextColor(I)V
    .locals 0

    return-void
.end method

.method public enablePageCurl(Z)V
    .locals 0

    return-void
.end method

.method public getAnnotatedTextExtractor()Lcom/amazon/android/docviewer/KindleAnnotatedTextExtractor;
    .locals 1

    .line 1075
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_annotationBuilder:Lcom/amazon/android/docviewer/KindleAnnotatedTextExtractor;

    return-object v0
.end method

.method public getAnnotationsManager()Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;
    .locals 1

    .line 557
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_annotationManager:Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;

    return-object v0
.end method

.method public getAtLocationText(I)Ljava/lang/String;
    .locals 5

    .line 587
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 600
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getPageLabelProvider()Lcom/amazon/android/docviewer/IPageLabelProvider;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, ""

    if-eqz v1, :cond_0

    .line 601
    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->pageLabelFromPosition(I)Ljava/lang/String;

    move-result-object p1

    .line 602
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 603
    sget v1, Lcom/amazon/kindle/krl/R$string;->reader_search_current_page_absolute:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 605
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isTextbook()Z

    move-result v1

    if-nez v1, :cond_1

    .line 606
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 608
    invoke-interface {v1, p1}, Lcom/amazon/android/docviewer/KindleDoc;->userLocationFromPosition(I)I

    move-result p1

    .line 609
    sget v1, Lcom/amazon/kindle/krl/R$string;->reader_search_current_location_absolute:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :cond_1
    :goto_0
    return-object v4
.end method

.method public getBackDepth()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;
    .locals 1

    .line 1100
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    return-object v0
.end method

.method public getBookSearchController()Lcom/amazon/kcp/search/IBookSearchController;
    .locals 1

    .line 1663
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookSearchController:Lcom/amazon/kcp/search/IBookSearchController;

    if-nez v0, :cond_0

    .line 1664
    new-instance v0, Lcom/amazon/kcp/search/BaseBookSearchController;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/search/BaseBookSearchController;-><init>(Lcom/amazon/android/docviewer/KindleDocViewer;)V

    iput-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookSearchController:Lcom/amazon/kcp/search/IBookSearchController;

    .line 1667
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookSearchController:Lcom/amazon/kcp/search/IBookSearchController;

    return-object v0
.end method

.method public getColorMode()Lcom/amazon/android/docviewer/KindleDocColorMode;
    .locals 2

    .line 654
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_colorMode:Lcom/amazon/android/docviewer/KindleDocColorMode;

    if-nez v0, :cond_0

    .line 656
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    .line 657
    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getColorMode()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/android/docviewer/KindleDocColorMode;->getInstance(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;Landroid/content/res/Resources;)Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_colorMode:Lcom/amazon/android/docviewer/KindleDocColorMode;

    .line 659
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_colorMode:Lcom/amazon/android/docviewer/KindleDocColorMode;

    return-object v0
.end method

.method public getColorModeFromAppTheme()Lcom/amazon/android/docviewer/KindleDocColorMode;
    .locals 2

    .line 636
    invoke-static {}, Lcom/amazon/kcp/debug/DarkModeUtils;->isPhaseTwoEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 638
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 639
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/theme/ThemeArea;->IN_BOOK:Lcom/amazon/kindle/krx/theme/ThemeArea;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/theme/IThemeManager;->getTheme(Lcom/amazon/kindle/krx/theme/ThemeArea;)Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/theme/Theme;->LIGHT:Lcom/amazon/kindle/krx/theme/Theme;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->blackColorMode:Lcom/amazon/android/docviewer/KindleDocColorMode;

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->whiteColorMode:Lcom/amazon/android/docviewer/KindleDocColorMode;

    :goto_1
    return-object v0

    .line 641
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getColorMode()Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object v0

    return-object v0
.end method

.method public getColumnCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getContentAvailabilityController()Lcom/amazon/kindle/yj/controller/IContentAvailabilityController;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getContentDecorationSettingsProvidersForCurrentBook()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/ui/IContentDecorationSettingsProvider;",
            ">;"
        }
    .end annotation

    .line 1537
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1539
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    .line 1541
    :cond_0
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v1

    .line 1542
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    .line 1544
    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getContentDecorationSettingsProviderRegistry()Lcom/amazon/kindle/krx/providers/IProviderRegistry;

    move-result-object v0

    .line 1545
    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/providers/IProviderRegistry;->getAll(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1547
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_1
    return-object v0
.end method

.method public getContentViewBitmap()Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 428
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getActiveContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getContinuousScrollEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCoverImageUrl(Lcom/amazon/kindle/cover/ImageSizes$Type;)Ljava/lang/String;
    .locals 3

    .line 957
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v0

    .line 958
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    .line 959
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getCoverManager()Lcom/amazon/kindle/cover/ICoverImageService;

    move-result-object v1

    .line 960
    sget-object v2, Lcom/amazon/android/docviewer/BaseKindleDocViewer$3;->$SwitchMap$com$amazon$kindle$cover$ImageSizes$Type:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v2, p1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const/4 v2, 0x4

    if-eq p1, v2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 969
    :cond_0
    invoke-interface {v1, v0}, Lcom/amazon/kindle/cover/ICoverImageService;->getSmallCoverLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 967
    :cond_1
    invoke-interface {v1, v0}, Lcom/amazon/kindle/cover/ICoverImageService;->getMediumCoverLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 962
    :cond_2
    invoke-interface {v1, v0}, Lcom/amazon/kindle/cover/ICoverImageService;->getExploreCoverLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDefaultFontFace()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDocView()Lcom/amazon/android/docviewer/KindleDocView;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDocument()Lcom/amazon/android/docviewer/KindleDoc;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getElementsOnCurrentPage(I)Ljava/util/Vector;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Vector<",
            "Lcom/amazon/android/docviewer/IPageElement;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getFirstLandingPosition()J
    .locals 2

    .line 1882
    iget-wide v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->firstLandingPosition:J

    return-wide v0
.end method

.method public getFontSize()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getFooterContentProvider()Lcom/amazon/android/docviewer/mobi/FooterContentProvider;
    .locals 1

    .line 1819
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->footerContentProvider:Lcom/amazon/android/docviewer/mobi/FooterContentProvider;

    return-object v0
.end method

.method public getFooterContentType()Lcom/amazon/android/docviewer/mobi/FooterContentType;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getGHLPositionFactory()Lcom/amazon/kindle/krx/reader/IGHLPositionFactory;
    .locals 2

    .line 1405
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getGHLPositionFactory is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getGraphicDimensionsForPage(Lcom/amazon/kindle/krx/reader/IPosition;II)Landroid/graphics/Rect;
    .locals 0

    .line 1372
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "getGraphicDimensionsForPage is not supported"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getGraphicDimensionsForRange(IIII)Landroid/graphics/Rect;
    .locals 0

    .line 1342
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "getGraphicDimensionsForRange is not supported"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getGraphicDimensionsForRange(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;II)Landroid/graphics/Rect;
    .locals 0

    .line 1357
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "getGraphicDimensionsForRange is not supported"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getGraphicForPage(Lcom/amazon/kindle/krx/reader/IPosition;II)Landroid/graphics/Bitmap;
    .locals 0

    .line 1387
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "getGraphicForPage is not supported"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getGraphicForRange(IIII)Landroid/graphics/Bitmap;
    .locals 0

    .line 1350
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "getGraphicForRange is not supported"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getGraphicForRange(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;II)Landroid/graphics/Bitmap;
    .locals 0

    .line 1367
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "getGraphicForRange is not supported"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getLastPageRead()I
    .locals 1

    .line 1315
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookItem;->getLastPositionRead()I

    move-result v0

    return v0
.end method

.method public getLineSettings()Lcom/amazon/android/docviewer/KindleDocLineSettings;
    .locals 2

    .line 1234
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->lineSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1235
    :try_start_0
    iget-object v1, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_lineSettings:Lcom/amazon/android/docviewer/KindleDocLineSettings;

    if-nez v1, :cond_0

    .line 1236
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->createLineSettings(Landroid/content/Context;)Lcom/amazon/android/docviewer/KindleDocLineSettings;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_lineSettings:Lcom/amazon/android/docviewer/KindleDocLineSettings;

    .line 1238
    :cond_0
    iget-object v1, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_lineSettings:Lcom/amazon/android/docviewer/KindleDocLineSettings;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 1239
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getLineSpacing()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getMargin()Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMonospaceFontFace()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNotesLocationText(ILjava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getObjectSelectionModel()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;
    .locals 1

    .line 699
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 700
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->createObjectSelectionModel()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    .line 702
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    .line 707
    iget v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_orientation:I

    return v0
.end method

.method public getPageDrawable()Lcom/amazon/android/docviewer/mobi/PageDrawable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPageLabelProvider()Lcom/amazon/android/docviewer/IPageLabelProvider;
    .locals 1

    .line 534
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 536
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getPageLabelProvider()Lcom/amazon/android/docviewer/IPageLabelProvider;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getPageLabelProviderForSearch()Lcom/amazon/android/docviewer/IPageLabelProvider;
    .locals 1

    .line 542
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getPageLabelProvider()Lcom/amazon/android/docviewer/IPageLabelProvider;

    move-result-object v0

    return-object v0
.end method

.method public getPagePortraitSize(Lcom/amazon/kindle/krx/reader/IPosition;IF)Landroid/graphics/Rect;
    .locals 0

    .line 1382
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "getPagePortraitSize is not supported"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getPageSwipePlayer()Lcom/amazon/kcp/reader/accessibility/AccessiblePageSwipePlayer;
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->pageSwipePlayer:Lcom/amazon/kcp/reader/accessibility/AccessiblePageSwipePlayer;

    return-object v0
.end method

.method public getPageThumbnailView(Lcom/amazon/kindle/krx/reader/IPosition;II)Lcom/amazon/kindle/krx/content/images/KRXDisposableObject;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/reader/IPosition;",
            "II)",
            "Lcom/amazon/kindle/krx/content/images/KRXDisposableObject<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1392
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "getPageThumbnailView is not supported"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getPartialGraphicDimensionsForPage(Lcom/amazon/kindle/krx/reader/IPosition;IF)Landroid/graphics/Rect;
    .locals 0

    .line 1377
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "getPartialGraphicDimensionsForPage is not supported"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getPortraitSizeForGraphic(IIIF)Landroid/graphics/Rect;
    .locals 0

    .line 1346
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "getPortraitSizeForGraphic is not supported"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getPortraitSizeForGraphic(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;IF)Landroid/graphics/Rect;
    .locals 0

    .line 1362
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "getPortraitSizeForGraphic is not supported"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getReadingRulerEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSearchIndexer()Lcom/amazon/kcp/search/IBookSearchIndexer;
    .locals 1

    .line 1086
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookSearchIndexer:Lcom/amazon/kcp/search/IBookSearchIndexer;

    return-object v0
.end method

.method public getSearchLocationText(II)Ljava/lang/String;
    .locals 3

    .line 712
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->supportsPageLabels()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 713
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/android/docviewer/KindleDoc;->getPageLabelProvider()Lcom/amazon/android/docviewer/IPageLabelProvider;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/amazon/android/docviewer/IPageLabelProvider;->getPageLabelForPosition(I)Ljava/lang/String;

    move-result-object p1

    .line 714
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/amazon/kindle/krl/R$string;->reader_search_page:I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    .line 715
    invoke-virtual {p2, v0, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 717
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/krl/R$string;->reader_search_location:I

    new-array v2, v2, [Ljava/lang/Object;

    .line 718
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v1

    invoke-virtual {p1, v0, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSearchResult()Lcom/amazon/android/docviewer/BookSearchResult;
    .locals 1

    .line 1003
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_searchResult:Lcom/amazon/android/docviewer/BookSearchResult;

    return-object v0
.end method

.method public getSearchResults()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/kindle/krx/search/ISearchResult;",
            ">;"
        }
    .end annotation

    .line 1009
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_searchResults:Ljava/util/List;

    return-object v0
.end method

.method public getSectionLayoutMode()Lcom/amazon/android/docviewer/SectionLayoutMode;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelector()Lcom/amazon/android/docviewer/IObjectSelector;
    .locals 1

    .line 724
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_selector:Lcom/amazon/android/docviewer/IObjectSelector;

    return-object v0
.end method

.method public getSpeechBreakersForCurrentPage()Lcom/amazon/kindle/speech/breaker/ISpeechBreakerList;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTextAlignment()Lcom/amazon/android/docviewer/KindleDocLineSettings$TextAlignment;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getThumbnailManager()Lcom/amazon/kindle/nln/IThumbnailManager;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTicrDocViewerEventHandler()Lcom/amazon/kindle/ticr/TicrDocViewerEventHandler;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTransitionDuration()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getWaypointsController()Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;
    .locals 1

    .line 1258
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_waypointsController:Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;

    return-object v0
.end method

.method public getWaypointsModel()Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;
    .locals 1

    .line 1254
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_waypointsModel:Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;

    return-object v0
.end method

.method public hasActionableFooterFromProviders()Z
    .locals 2

    .line 1583
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getContentDecorationSettingsProvidersForCurrentBook()Ljava/util/Collection;

    move-result-object v0

    .line 1584
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/krx/ui/IContentDecorationSettingsProvider;

    .line 1588
    invoke-interface {v1}, Lcom/amazon/kindle/krx/ui/IContentDecorationSettingsProvider;->getFooters()Ljava/util/List;

    move-result-object v1

    .line 1589
    invoke-static {v1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public hasNoExistingLocalLpr()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected initializeSeekbarVersion2IfApplicable()V
    .locals 2

    .line 286
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 287
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getContentClass()Lcom/amazon/kindle/model/content/ContentClass;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/model/content/ContentClass;->CHILDREN:Lcom/amazon/kindle/model/content/ContentClass;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    const/4 v0, 0x2

    .line 292
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 293
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 294
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 295
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$integer;->waypoints_max_points:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 297
    :cond_1
    new-instance v1, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;

    invoke-direct {v1, v0}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;-><init>(I)V

    iput-object v1, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_waypointsModel:Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;

    :cond_2
    return-void
.end method

.method public isAccessibilityPageTurnSupportEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isChapterNavigationSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isClosed()Z
    .locals 1

    .line 762
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_documentClosed:Z

    return v0
.end method

.method public isContrastLevelChangeSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isDoneWithInitialDraw()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isFontSizeChangeSupported()Z
    .locals 2

    .line 768
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    sget-object v1, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->ResizableFont:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/model/content/ILocalBookItem;->hasFeature(Lcom/amazon/kindle/model/content/LocalContentFeatureType;)Z

    move-result v0

    return v0
.end method

.method public isFontTypeChangeSupported()Z
    .locals 2

    .line 773
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    sget-object v1, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->FontFaceChange:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/model/content/ILocalBookItem;->hasFeature(Lcom/amazon/kindle/model/content/LocalContentFeatureType;)Z

    move-result v0

    return v0
.end method

.method public isImageViewEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isJpVertContent()Z
    .locals 2

    .line 1512
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBaseLanguage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1514
    sget-object v1, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    .line 1515
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    .line 1516
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getReadingDirection()Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;->RIGHT_TO_LEFT:Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isKindleIllustratedSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isLineSpacingChangeSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isMarginChangeSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isOpeningToSrl()Z
    .locals 1

    .line 1824
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->isOpeningToSrl:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->calculateIsOpeningToSrl()Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0
.end method

.method protected isPageDrawRequested()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isPageTurnAnimationInProgress()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isPromptworthyFpr(Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isPromptworthyMrpr(Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public loadAnnotations()V
    .locals 0

    return-void
.end method

.method protected logOrientationChange(I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 1412
    sget-object p1, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->ROTATION_PORTRAIT_TO_LANDSCAPE:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {p1}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    .line 1415
    sget-object p1, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->ROTATION_LANDSCAPE_TO_PORTRAIT:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {p1}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected logOrientationChangeComplete(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 1421
    sget-object p1, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->ROTATION_PORTRAIT_TO_LANDSCAPE:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {p1}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 1423
    sget-object p1, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->ROTATION_LANDSCAPE_TO_PORTRAIT:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {p1}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public markBatchSettingsChange(Z)V
    .locals 0

    return-void
.end method

.method public navigateBack()V
    .locals 0

    return-void
.end method

.method public navigateToAnnotation(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)V
    .locals 0

    return-void
.end method

.method public navigateToBeginning()V
    .locals 0

    return-void
.end method

.method public navigateToCover()V
    .locals 0

    return-void
.end method

.method public navigateToLocation(I)V
    .locals 0

    return-void
.end method

.method public navigateToNextChapter()V
    .locals 0

    return-void
.end method

.method public navigateToNextPage()V
    .locals 1

    const/4 v0, 0x0

    .line 818
    invoke-virtual {p0, v0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->navigateToNextPage(Lcom/amazon/foundation/internal/IBooleanCallback;)V

    return-void
.end method

.method public navigateToNextPage(Lcom/amazon/foundation/internal/IBooleanCallback;)V
    .locals 0

    return-void
.end method

.method public navigateToPercent(D)V
    .locals 0

    return-void
.end method

.method public navigateToPosition(I)V
    .locals 0

    return-void
.end method

.method public navigateToPositionFromSearch(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public navigateToPrevPage()V
    .locals 1

    const/4 v0, 0x0

    .line 835
    invoke-virtual {p0, v0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->navigateToPrevPage(Lcom/amazon/foundation/internal/IBooleanCallback;)V

    return-void
.end method

.method public navigateToPrevPage(Lcom/amazon/foundation/internal/IBooleanCallback;)V
    .locals 0

    return-void
.end method

.method public navigateToPreviousChapter()V
    .locals 0

    return-void
.end method

.method public navigateToTOC()V
    .locals 0

    return-void
.end method

.method public onActivityLifecycleEvent(Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent;)V
    .locals 3
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 494
    sget-object v0, Lcom/amazon/android/docviewer/BaseKindleDocViewer$3;->$SwitchMap$com$amazon$kcp$reader$ReaderActivityLifecycleEvent$Type:[I

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent;->getActivityLifecycleType()Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 519
    sget-object v0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled ReaderActivityLifecycleEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 496
    :pswitch_0
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->onResume()V

    .line 497
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isTouchExplorationEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 500
    iget-object p1, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->pageSwipePlayer:Lcom/amazon/kcp/reader/accessibility/AccessiblePageSwipePlayer;

    if-nez p1, :cond_0

    .line 501
    new-instance p1, Lcom/amazon/kcp/reader/accessibility/AccessiblePageSwipePlayer;

    invoke-direct {p1}, Lcom/amazon/kcp/reader/accessibility/AccessiblePageSwipePlayer;-><init>()V

    iput-object p1, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->pageSwipePlayer:Lcom/amazon/kcp/reader/accessibility/AccessiblePageSwipePlayer;

    .line 502
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/accessibility/AccessiblePageSwipePlayer;->lazyloadAccessiblePageSwipePlayer()V

    :cond_0
    :goto_0
    :pswitch_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1228
    iget-object p1, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->lineSettingsLock:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x0

    .line 1229
    :try_start_0
    iput-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_lineSettings:Lcom/amazon/android/docviewer/KindleDocLineSettings;

    .line 1230
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onContrastLevelChanged()V
    .locals 0

    return-void
.end method

.method public onInitialDraw()V
    .locals 2

    .line 1032
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1033
    invoke-virtual {v0}, Lcom/amazon/kcp/redding/DocumentActivity;->shouldDelayExecuted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1034
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->execute()V

    :cond_0
    const-string v0, "MrprDialogDelay_v5"

    const-string v1, "MrprDoubleDialogDelay_v5"

    .line 1036
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/reader/DialogMetricsRecorder;->resetMetricTimer(Ljava/util/List;)V

    return-void
.end method

.method public onRenderComplete()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method protected pageLabelFromPosition(I)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public performFooterGestureActionsFromProviders()Z
    .locals 4

    .line 1556
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getContentDecorationSettingsProvidersForCurrentBook()Ljava/util/Collection;

    move-result-object v0

    .line 1560
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/krx/ui/IContentDecorationSettingsProvider;

    .line 1565
    invoke-interface {v2}, Lcom/amazon/kindle/krx/ui/IContentDecorationSettingsProvider;->getFooters()Ljava/util/List;

    move-result-object v2

    .line 1566
    invoke-static {v2}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 1571
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/krx/ui/IKRXFooter;

    .line 1572
    invoke-interface {v3}, Lcom/amazon/kindle/krx/ui/IKRXFooter;->onGestureAction()Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v3

    goto :goto_1

    :cond_3
    return v1
.end method

.method public refreshDecorationProvider(Lcom/amazon/kindle/krx/ui/IContentDecorationProvider;)V
    .locals 0

    .line 1400
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->refreshDocViewAsync()V

    return-void
.end method

.method public refreshDocView()V
    .locals 0

    return-void
.end method

.method public refreshDocViewAsync()V
    .locals 0

    .line 748
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->refreshDocView()V

    return-void
.end method

.method public refreshFooter()V
    .locals 0

    return-void
.end method

.method public refreshHeader()V
    .locals 0

    return-void
.end method

.method public refreshSearchResult()V
    .locals 0

    .line 1161
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->refreshSearchResults()V

    return-void
.end method

.method public refreshSearchResults()V
    .locals 1

    .line 1024
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_navigatingToSearchResult:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1025
    iput-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_searchResults:Ljava/util/List;

    :cond_0
    const/4 v0, 0x0

    .line 1027
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_navigatingToSearchResult:Z

    return-void
.end method

.method public removeEventHandler(Lcom/amazon/android/docviewer/IKindleDocViewerEvents;)V
    .locals 0

    return-void
.end method

.method public removePostBackRenderHelper(Lcom/amazon/android/docviewer/PostBackRenderHelper;)V
    .locals 0

    return-void
.end method

.method protected reportBookOpenMetric()V
    .locals 5

    .line 1625
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1630
    :cond_0
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 1635
    :cond_1
    iget-object v1, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-static {v1}, Lcom/amazon/kindle/content/KindleContentFormat;->getFormat(Lcom/amazon/kindle/model/content/ILocalBookItem;)Lcom/amazon/kindle/content/KindleContentFormat;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    .line 1637
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v2

    .line 1638
    sget-object v3, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->BOOK_OPEN:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-static {v3}, Lcom/amazon/kindle/performance/PerformanceEventBuilder;->createEndEvent(Lcom/amazon/kindle/performance/KindlePerformanceConstants;)Lcom/amazon/kindle/performance/PerformanceEventBuilder;

    move-result-object v3

    const-string v4, "asin"

    .line 1639
    invoke-virtual {v3, v4, v2}, Lcom/amazon/kindle/performance/PerformanceEventBuilder;->addMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/performance/PerformanceEventBuilder;

    .line 1640
    invoke-virtual {v3}, Lcom/amazon/kindle/performance/PerformanceEventBuilder;->buildAndSend()V

    .line 1641
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getApplication()Lcom/amazon/kcp/application/ReddingApplication;

    move-result-object v3

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v3, v2, v1}, Lcom/amazon/kcp/application/ReddingApplication;->recordBookColdOpenEnd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1644
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/PerfMetricsCollector;->getInstance()Lcom/amazon/kindle/krx/metrics/IBatchMetricCollector;

    move-result-object v0

    sget-object v2, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->BOOK_OPEN:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {v2}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/amazon/kindle/krx/metrics/IBatchMetricCollector;->collectEndTimerMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 1646
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BookOpenSuccess-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v3, "CONTENT_OPEN"

    invoke-virtual {v0, v3, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    return-void
.end method

.method public saveLocalBookState()V
    .locals 0

    return-void
.end method

.method public search(Ljava/lang/String;)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method public setColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode;)V
    .locals 0

    return-void
.end method

.method public setColumnCount(IZ)V
    .locals 0

    return-void
.end method

.method public setContinuousScrollEnabled(ZZ)V
    .locals 0

    return-void
.end method

.method public setDefaultFontFace(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setFirstLandingPosition(J)V
    .locals 0

    .line 1877
    iput-wide p1, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->firstLandingPosition:J

    return-void
.end method

.method public setFontConfig(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setFontSize(I)V
    .locals 0

    return-void
.end method

.method public setForceDisableJustification(Z)V
    .locals 0

    return-void
.end method

.method public setInitialOrientation(I)V
    .locals 0

    .line 905
    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->setOrientation(I)V

    return-void
.end method

.method public setKindleIllustratedAutoPlayAnimations(Z)V
    .locals 0

    return-void
.end method

.method public setKindleIllustratedSettings(ZLcom/amazon/android/docviewer/KindleDocColorMode;)V
    .locals 0

    return-void
.end method

.method public setLastPageRead(Lcom/amazon/kindle/model/content/LastPageRead;)V
    .locals 1

    .line 878
    invoke-virtual {p1}, Lcom/amazon/kindle/model/content/LastPageRead;->getLastPageReadPosition()I

    move-result p1

    .line 879
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/model/content/ILocalBookItem;->setLastPositionRead(I)V

    return-void
.end method

.method public setLetterboxingMaskColor(Lcom/amazon/android/docviewer/LetterboxingColor;)V
    .locals 0

    return-void
.end method

.method public setLineSpacing(I)V
    .locals 0

    return-void
.end method

.method public setLineSpacing(Lcom/amazon/android/docviewer/KindleDocLineSettings$LineSpacingOptions;)V
    .locals 0

    return-void
.end method

.method public setMargin(Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;)V
    .locals 0

    return-void
.end method

.method public setMonospaceFontFace(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setOrientation(I)V
    .locals 0

    .line 900
    iput p1, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_orientation:I

    return-void
.end method

.method public setPageDrawRequested(Z)V
    .locals 0

    return-void
.end method

.method public setReadingRulerColor(Lcom/amazon/ksdk/presets/Color;)V
    .locals 0

    return-void
.end method

.method public setReadingRulerEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setReadingRulerOpacity(F)V
    .locals 0

    return-void
.end method

.method public setReadingRulerSize(Lcom/amazon/ksdk/presets/ReadingRulerNumberOfLinesType;)V
    .locals 0

    return-void
.end method

.method public setReadingRulerStyle(Lcom/amazon/ksdk/presets/ReadingRulerStyleType;)V
    .locals 0

    return-void
.end method

.method public setSafeInsets(Lcom/amazon/kcp/util/device/SafeInsets;)V
    .locals 0

    return-void
.end method

.method public setSearchResult(Lcom/amazon/android/docviewer/BookSearchResult;)V
    .locals 0

    .line 1080
    invoke-static {p0, p1}, Lcom/amazon/kcp/search/ReaderBookSearchResult;->createFromLegacyResult(Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/android/docviewer/BookSearchResult;)Lcom/amazon/kcp/search/ReaderBookSearchResult;

    move-result-object p1

    .line 1081
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->setSearchResults(Ljava/util/List;)V

    return-void
.end method

.method public setSearchResults(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/kindle/krx/search/ISearchResult;",
            ">;)V"
        }
    .end annotation

    .line 1014
    iput-object p1, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_searchResults:Ljava/util/List;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 1018
    iput-boolean p1, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_navigatingToSearchResult:Z

    :cond_0
    return-void
.end method

.method public setSectionLayoutMode(Lcom/amazon/android/docviewer/SectionLayoutMode;)V
    .locals 0

    return-void
.end method

.method public setShowPageOnEnter(Z)V
    .locals 0

    return-void
.end method

.method public setShowPageOnExit(Z)V
    .locals 0

    return-void
.end method

.method public setTextAlignment(Lcom/amazon/android/docviewer/KindleDocLineSettings$TextAlignment;)V
    .locals 0

    return-void
.end method

.method public setTransitionDuration(I)V
    .locals 0

    return-void
.end method

.method public supportsPageLabels()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportsTouchAccessibility()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportsZoom()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public suppressLocations()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected syncOnInitialDraw()V
    .locals 4

    .line 1293
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$bool;->sync_todo_on_initial_draw:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1294
    new-instance v0, Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    sget-object v1, Lcom/amazon/kcp/application/sync/internal/SyncType;->TODO_SYNC:Lcom/amazon/kcp/application/sync/internal/SyncType;

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;-><init>(Lcom/amazon/kcp/application/sync/internal/SyncType;Lcom/amazon/kindle/model/content/ILocalBookInfo;Ljava/util/Date;Lcom/amazon/kindle/services/download/IStatusTracker;)V

    .line 1295
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getSynchronizationManager()Lcom/amazon/kindle/sync/SynchronizationManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/amazon/kindle/sync/SynchronizationManager;->sync(Lcom/amazon/kcp/application/sync/internal/SyncParameters;)Z

    :cond_0
    return-void
.end method

.method public toggleFooter()V
    .locals 0

    return-void
.end method

.method public toggleHeader()V
    .locals 0

    return-void
.end method

.method public windowSizeChanged()V
    .locals 0

    return-void
.end method
