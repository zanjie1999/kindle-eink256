.class public final Lcom/audible/application/stats/StatsManager;
.super Ljava/util/Observable;
.source "StatsManager.java"

# interfaces
.implements Lcom/audible/application/stats/StatsService;
.implements Lcom/audible/mobile/stats/BadgeIconFetcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/application/stats/StatsManager$Builder;,
        Lcom/audible/application/stats/StatsManager$LocalDatabaseMetadata;
    }
.end annotation


# static fields
.field private static final APP_START_MILLISECONDS_TO_CALL_REMOTE_SERVICE:I = 0x1388

.field private static final DEFAULT_MILLISECONDS_TO_CHECK_DISPATCHED_MESSAGES:I = 0x2710

.field public static final DEFAULT_STORE_TYPE:Lcom/audible/application/stats/integration/StoreType;

.field public static final DEFUALT_IMAGE_CACHE_DIRECTORY:Ljava/lang/String;

.field private static final MILLISECONDS_TO_THROTTLE_AGGREGATED_STATS_CALL:I = 0x927c0

.field private static final NUM_GRAPH_ITEMS:I = 0x5


# instance fields
.field private final MAX_ATTEMPTS_TO_TRANSMIT_NETWORK_DATA:I

.field private final mAutomaticSetStatsDispatch:Z

.field private final mBadgeDataReadWriteLockObject:Ljava/lang/Object;

.field private mBadgeImageCallback:Lcom/audible/application/stats/util/IStatsBadgeImageCallback;

.field protected mBadgeMetadataRepository:Lcom/audible/application/stats/storage/IBadgeMetadataRepository;

.field private final mCachedBadgeDataLockObject:Ljava/lang/Object;

.field private final mCachedGetBadges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/audible/mobile/stats/domain/Badge;",
            ">;"
        }
    .end annotation
.end field

.field private final mCachedGetListeningLevels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/audible/mobile/stats/domain/ListeningLevel;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentStatsMediaItem:Lcom/audible/application/stats/integration/StatsMediaItem;

.field private mCustomerBadgeProgressMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/audible/mobile/stats/domain/CustomerBadgeProgress;",
            ">;"
        }
    .end annotation
.end field

.field protected mCustomerStatsRepository:Lcom/audible/application/stats/storage/ICustomerStatsRepository;

.field private mDemoManager:Lcom/audible/application/stats/util/IStatsDemoManager;

.field private mDispatchFutureTasks:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/util/concurrent/FutureTask<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private mDispatchTask:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mDownloadAggregatedStatsTask:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mDownloadBadgeIconsTask:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;>;"
        }
    .end annotation
.end field

.field private mDownloadBadgeMetadataTask:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mDownloadCustomerBadgeProgressTask:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private mFetchAggregatedStatsFutureTask:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mFetchBadgeMetadataFutureTask:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mFetchCustomerBadgeProgressFutureTask:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mImageCacheDirectory:Ljava/io/File;

.field private mListeningStatsEvent:Lcom/audible/mobile/stats/domain/ListeningStatsEvent;

.field private final mListeningStatsEventLockObject:Ljava/lang/Object;

.field private mLockFutureTasksQueue:Ljava/lang/Object;

.field private mNeedToFetchAggregatedStats:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mNetworkMonitorExecutorService:Ljava/util/concurrent/ExecutorService;

.field private mNetworkMonitorRunnable:Ljava/lang/Runnable;

.field private mNotificationManager:Lcom/audible/application/stats/util/IStatsNotificationManager;

.field private mNumTransmitNetworkDataFailures:I

.field private final mPositionTracker:Lcom/audible/application/stats/util/IStatsPositionTracker;

.field private mPreventNetworkCalls:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mPreventNetworkCallsConnectivityManager:Lcom/audible/application/stats/util/IConnectivityManager;

.field private final mShowBadgeEarnedNotificationOnNextUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mStatsCalendarManager:Lcom/audible/application/stats/util/IStatsCalendarManager;

.field private mStatsNetworking:Lcom/audible/application/stats/StatsNetworking;

.field protected mStatsRepository:Lcom/audible/application/stats/storage/IStatsCachedUploadRepository;

.field private final mStoreType:Lcom/audible/application/stats/integration/StoreType;

.field private timeOfLastAggregatedStatsCall:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 88
    sget-object v0, Lcom/audible/application/stats/integration/StoreType;->AUDIBLE:Lcom/audible/application/stats/integration/StoreType;

    sput-object v0, Lcom/audible/application/stats/StatsManager;->DEFAULT_STORE_TYPE:Lcom/audible/application/stats/integration/StoreType;

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Audible"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".imagecache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/audible/application/stats/StatsManager;->DEFUALT_IMAGE_CACHE_DIRECTORY:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 245
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    const/4 v0, 0x0

    .line 201
    iput-object v0, p0, Lcom/audible/application/stats/StatsManager;->mCustomerBadgeProgressMap:Ljava/util/Map;

    .line 246
    iput-object v0, p0, Lcom/audible/application/stats/StatsManager;->mContext:Landroid/content/Context;

    .line 247
    iput-object v0, p0, Lcom/audible/application/stats/StatsManager;->mShowBadgeEarnedNotificationOnNextUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 248
    iput-object v0, p0, Lcom/audible/application/stats/StatsManager;->mCachedGetBadges:Ljava/util/List;

    .line 249
    iput-object v0, p0, Lcom/audible/application/stats/StatsManager;->mCachedGetListeningLevels:Ljava/util/List;

    .line 250
    iput-object v0, p0, Lcom/audible/application/stats/StatsManager;->mCachedBadgeDataLockObject:Ljava/lang/Object;

    .line 251
    iput-object v0, p0, Lcom/audible/application/stats/StatsManager;->mBadgeDataReadWriteLockObject:Ljava/lang/Object;

    .line 252
    iput-object v0, p0, Lcom/audible/application/stats/StatsManager;->mListeningStatsEventLockObject:Ljava/lang/Object;

    const/4 v1, 0x3

    .line 253
    iput v1, p0, Lcom/audible/application/stats/StatsManager;->MAX_ATTEMPTS_TO_TRANSMIT_NETWORK_DATA:I

    .line 254
    new-instance v1, Lcom/audible/application/stats/util/DefaultStatsCalendarManagerImpl;

    invoke-direct {v1}, Lcom/audible/application/stats/util/DefaultStatsCalendarManagerImpl;-><init>()V

    iput-object v1, p0, Lcom/audible/application/stats/StatsManager;->mStatsCalendarManager:Lcom/audible/application/stats/util/IStatsCalendarManager;

    .line 255
    iput-object v0, p0, Lcom/audible/application/stats/StatsManager;->mStoreType:Lcom/audible/application/stats/integration/StoreType;

    const/4 v0, 0x1

    .line 256
    iput-boolean v0, p0, Lcom/audible/application/stats/StatsManager;->mAutomaticSetStatsDispatch:Z

    .line 257
    new-instance v0, Lcom/audible/application/stats/util/NullPositionTracker;

    invoke-direct {v0}, Lcom/audible/application/stats/util/NullPositionTracker;-><init>()V

    iput-object v0, p0, Lcom/audible/application/stats/StatsManager;->mPositionTracker:Lcom/audible/application/stats/util/IStatsPositionTracker;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/audible/application/stats/util/IHttpClientManager;Lcom/audible/application/stats/util/IConnectivityManager;Lcom/audible/application/stats/util/IStatsDemoManager;Ljava/net/URI;Ljava/io/File;Lcom/audible/application/stats/storage/IStatsCachedUploadRepository;Lcom/audible/application/stats/storage/IBadgeMetadataRepository;Lcom/audible/application/stats/storage/ICustomerStatsRepository;Lcom/audible/application/stats/util/IStatsNotificationManager;Lcom/audible/application/stats/util/IStatsBadgeImageCallback;Lcom/audible/application/stats/util/IStatsCalendarManager;Ljava/util/concurrent/ExecutorService;Ljava/lang/Integer;Lcom/audible/application/stats/integration/StoreType;Ljava/lang/Boolean;Lcom/audible/application/stats/util/IStatsPositionTracker;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p6

    move-object/from16 v4, p10

    move-object/from16 v5, p11

    move-object/from16 v6, p12

    move-object/from16 v7, p13

    .line 265
    invoke-direct/range {p0 .. p0}, Ljava/util/Observable;-><init>()V

    const/4 v8, 0x0

    .line 201
    iput-object v8, v0, Lcom/audible/application/stats/StatsManager;->mCustomerBadgeProgressMap:Ljava/util/Map;

    if-nez p5, :cond_0

    .line 268
    :try_start_0
    new-instance v8, Ljava/net/URI;

    const-string v9, "https://api.audible.com/1.0"

    invoke-direct {v8, v9}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v8, "Unable to instantiate default URI for StatsManager, https://api.audible.com/1.0"

    .line 270
    invoke-static {v8}, Lcom/audible/application/stats/util/LogController;->e(Ljava/lang/String;)V

    :cond_0
    move-object/from16 v8, p5

    :goto_0
    if-nez v3, :cond_1

    .line 274
    new-instance v3, Ljava/io/File;

    sget-object v9, Lcom/audible/application/stats/StatsManager;->DEFUALT_IMAGE_CACHE_DIRECTORY:Ljava/lang/String;

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v3, v0, Lcom/audible/application/stats/StatsManager;->mImageCacheDirectory:Ljava/io/File;

    goto :goto_1

    .line 276
    :cond_1
    iput-object v3, v0, Lcom/audible/application/stats/StatsManager;->mImageCacheDirectory:Ljava/io/File;

    :goto_1
    move-object/from16 v3, p1

    .line 278
    iput-object v3, v0, Lcom/audible/application/stats/StatsManager;->mContext:Landroid/content/Context;

    .line 279
    new-instance v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v3, v0, Lcom/audible/application/stats/StatsManager;->mCachedGetListeningLevels:Ljava/util/List;

    .line 280
    new-instance v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v3, v0, Lcom/audible/application/stats/StatsManager;->mCachedGetBadges:Ljava/util/List;

    .line 281
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, v0, Lcom/audible/application/stats/StatsManager;->mCachedBadgeDataLockObject:Ljava/lang/Object;

    .line 282
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, v0, Lcom/audible/application/stats/StatsManager;->mBadgeDataReadWriteLockObject:Ljava/lang/Object;

    .line 283
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, v0, Lcom/audible/application/stats/StatsManager;->mListeningStatsEventLockObject:Ljava/lang/Object;

    .line 284
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, v0, Lcom/audible/application/stats/StatsManager;->mLockFutureTasksQueue:Ljava/lang/Object;

    .line 285
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, v0, Lcom/audible/application/stats/StatsManager;->mDispatchFutureTasks:Ljava/util/Queue;

    if-eqz v7, :cond_2

    .line 287
    iput-object v7, v0, Lcom/audible/application/stats/StatsManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    goto :goto_2

    .line 289
    :cond_2
    new-instance v3, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v10, 0x0

    const/4 v11, 0x1

    const-wide/16 v12, 0x3c

    sget-object v14, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v15, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v15}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v7, Lcom/audible/application/stats/StatsManager$1;

    invoke-direct {v7, v0}, Lcom/audible/application/stats/StatsManager$1;-><init>(Lcom/audible/application/stats/StatsManager;)V

    move-object v9, v3

    move-object/from16 v16, v7

    invoke-direct/range {v9 .. v16}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v3, v0, Lcom/audible/application/stats/StatsManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 297
    :goto_2
    new-instance v3, Ljava/util/concurrent/ThreadPoolExecutor;

    const/16 v17, 0x0

    const/16 v18, 0x1

    const-wide/16 v19, 0x3c

    sget-object v21, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v22, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct/range {v22 .. v22}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v7, Lcom/audible/application/stats/StatsManager$2;

    invoke-direct {v7, v0}, Lcom/audible/application/stats/StatsManager$2;-><init>(Lcom/audible/application/stats/StatsManager;)V

    move-object/from16 v16, v3

    move-object/from16 v23, v7

    invoke-direct/range {v16 .. v23}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v3, v0, Lcom/audible/application/stats/StatsManager;->mNetworkMonitorExecutorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v6, :cond_3

    .line 305
    iput-object v6, v0, Lcom/audible/application/stats/StatsManager;->mStatsCalendarManager:Lcom/audible/application/stats/util/IStatsCalendarManager;

    goto :goto_3

    .line 307
    :cond_3
    new-instance v3, Lcom/audible/application/stats/util/DefaultStatsCalendarManagerImpl;

    invoke-direct {v3}, Lcom/audible/application/stats/util/DefaultStatsCalendarManagerImpl;-><init>()V

    iput-object v3, v0, Lcom/audible/application/stats/StatsManager;->mStatsCalendarManager:Lcom/audible/application/stats/util/IStatsCalendarManager;

    :goto_3
    const/4 v3, 0x0

    .line 309
    iput v3, v0, Lcom/audible/application/stats/StatsManager;->mNumTransmitNetworkDataFailures:I

    if-eqz p14, :cond_4

    .line 311
    invoke-virtual/range {p14 .. p14}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v0, Lcom/audible/application/stats/StatsManager;->MAX_ATTEMPTS_TO_TRANSMIT_NETWORK_DATA:I

    goto :goto_4

    :cond_4
    const/4 v6, 0x3

    .line 313
    iput v6, v0, Lcom/audible/application/stats/StatsManager;->MAX_ATTEMPTS_TO_TRANSMIT_NETWORK_DATA:I

    .line 315
    :goto_4
    new-instance v6, Lcom/audible/application/stats/StatsManager$3;

    invoke-direct {v6, v0}, Lcom/audible/application/stats/StatsManager$3;-><init>(Lcom/audible/application/stats/StatsManager;)V

    iput-object v6, v0, Lcom/audible/application/stats/StatsManager;->mNetworkMonitorRunnable:Ljava/lang/Runnable;

    .line 379
    new-instance v6, Lcom/audible/application/stats/StatsManager$4;

    invoke-direct {v6, v0}, Lcom/audible/application/stats/StatsManager$4;-><init>(Lcom/audible/application/stats/StatsManager;)V

    iput-object v6, v0, Lcom/audible/application/stats/StatsManager;->mDispatchTask:Ljava/util/concurrent/Callable;

    .line 388
    new-instance v6, Lcom/audible/application/stats/StatsManager$5;

    invoke-direct {v6, v0}, Lcom/audible/application/stats/StatsManager$5;-><init>(Lcom/audible/application/stats/StatsManager;)V

    iput-object v6, v0, Lcom/audible/application/stats/StatsManager;->mDownloadBadgeMetadataTask:Ljava/util/concurrent/Callable;

    .line 403
    new-instance v6, Lcom/audible/application/stats/StatsManager$6;

    invoke-direct {v6, v0}, Lcom/audible/application/stats/StatsManager$6;-><init>(Lcom/audible/application/stats/StatsManager;)V

    iput-object v6, v0, Lcom/audible/application/stats/StatsManager;->mDownloadAggregatedStatsTask:Ljava/util/concurrent/Callable;

    .line 411
    new-instance v6, Lcom/audible/application/stats/StatsManager$7;

    invoke-direct {v6, v0}, Lcom/audible/application/stats/StatsManager$7;-><init>(Lcom/audible/application/stats/StatsManager;)V

    iput-object v6, v0, Lcom/audible/application/stats/StatsManager;->mDownloadCustomerBadgeProgressTask:Ljava/util/concurrent/Callable;

    .line 419
    new-instance v6, Lcom/audible/application/stats/StatsManager$8;

    invoke-direct {v6, v0}, Lcom/audible/application/stats/StatsManager$8;-><init>(Lcom/audible/application/stats/StatsManager;)V

    iput-object v6, v0, Lcom/audible/application/stats/StatsManager;->mDownloadBadgeIconsTask:Ljava/util/concurrent/Callable;

    if-nez v2, :cond_5

    .line 466
    new-instance v2, Lcom/audible/application/stats/StatsManager$9;

    invoke-direct {v2, v0}, Lcom/audible/application/stats/StatsManager$9;-><init>(Lcom/audible/application/stats/StatsManager;)V

    iput-object v2, v0, Lcom/audible/application/stats/StatsManager;->mDemoManager:Lcom/audible/application/stats/util/IStatsDemoManager;

    goto :goto_5

    .line 497
    :cond_5
    iput-object v2, v0, Lcom/audible/application/stats/StatsManager;->mDemoManager:Lcom/audible/application/stats/util/IStatsDemoManager;

    :goto_5
    if-nez v4, :cond_6

    .line 500
    new-instance v2, Lcom/audible/application/stats/StatsManager$10;

    invoke-direct {v2, v0}, Lcom/audible/application/stats/StatsManager$10;-><init>(Lcom/audible/application/stats/StatsManager;)V

    iput-object v2, v0, Lcom/audible/application/stats/StatsManager;->mNotificationManager:Lcom/audible/application/stats/util/IStatsNotificationManager;

    goto :goto_6

    .line 513
    :cond_6
    iput-object v4, v0, Lcom/audible/application/stats/StatsManager;->mNotificationManager:Lcom/audible/application/stats/util/IStatsNotificationManager;

    :goto_6
    if-nez v5, :cond_7

    .line 516
    new-instance v2, Lcom/audible/application/stats/StatsManager$11;

    invoke-direct {v2, v0}, Lcom/audible/application/stats/StatsManager$11;-><init>(Lcom/audible/application/stats/StatsManager;)V

    iput-object v2, v0, Lcom/audible/application/stats/StatsManager;->mBadgeImageCallback:Lcom/audible/application/stats/util/IStatsBadgeImageCallback;

    goto :goto_7

    .line 523
    :cond_7
    iput-object v5, v0, Lcom/audible/application/stats/StatsManager;->mBadgeImageCallback:Lcom/audible/application/stats/util/IStatsBadgeImageCallback;

    .line 525
    :goto_7
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, v0, Lcom/audible/application/stats/StatsManager;->mPreventNetworkCalls:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 526
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, v0, Lcom/audible/application/stats/StatsManager;->mNeedToFetchAggregatedStats:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 527
    iput-object v1, v0, Lcom/audible/application/stats/StatsManager;->mPreventNetworkCallsConnectivityManager:Lcom/audible/application/stats/util/IConnectivityManager;

    .line 528
    new-instance v2, Lcom/audible/application/stats/StatsNetworking;

    move-object/from16 v3, p2

    invoke-direct {v2, v3, v1, v8}, Lcom/audible/application/stats/StatsNetworking;-><init>(Lcom/audible/application/stats/util/IHttpClientManager;Lcom/audible/application/stats/util/IConnectivityManager;Ljava/net/URI;)V

    iput-object v2, v0, Lcom/audible/application/stats/StatsManager;->mStatsNetworking:Lcom/audible/application/stats/StatsNetworking;

    move-object/from16 v1, p7

    .line 529
    iput-object v1, v0, Lcom/audible/application/stats/StatsManager;->mStatsRepository:Lcom/audible/application/stats/storage/IStatsCachedUploadRepository;

    move-object/from16 v1, p8

    .line 530
    iput-object v1, v0, Lcom/audible/application/stats/StatsManager;->mBadgeMetadataRepository:Lcom/audible/application/stats/storage/IBadgeMetadataRepository;

    move-object/from16 v1, p9

    .line 531
    iput-object v1, v0, Lcom/audible/application/stats/StatsManager;->mCustomerStatsRepository:Lcom/audible/application/stats/storage/ICustomerStatsRepository;

    .line 532
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, v0, Lcom/audible/application/stats/StatsManager;->mCustomerBadgeProgressMap:Ljava/util/Map;

    const-wide/16 v1, 0x0

    .line 533
    iput-wide v1, v0, Lcom/audible/application/stats/StatsManager;->timeOfLastAggregatedStatsCall:J

    .line 534
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, v0, Lcom/audible/application/stats/StatsManager;->mShowBadgeEarnedNotificationOnNextUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-nez p15, :cond_8

    .line 535
    sget-object v1, Lcom/audible/application/stats/StatsManager;->DEFAULT_STORE_TYPE:Lcom/audible/application/stats/integration/StoreType;

    goto :goto_8

    :cond_8
    move-object/from16 v1, p15

    :goto_8
    iput-object v1, v0, Lcom/audible/application/stats/StatsManager;->mStoreType:Lcom/audible/application/stats/integration/StoreType;

    if-nez p16, :cond_9

    goto :goto_9

    .line 536
    :cond_9
    invoke-virtual/range {p16 .. p16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :goto_9
    iput-boolean v2, v0, Lcom/audible/application/stats/StatsManager;->mAutomaticSetStatsDispatch:Z

    move-object/from16 v1, p17

    .line 537
    iput-object v1, v0, Lcom/audible/application/stats/StatsManager;->mPositionTracker:Lcom/audible/application/stats/util/IStatsPositionTracker;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/audible/application/stats/util/IHttpClientManager;Lcom/audible/application/stats/util/IConnectivityManager;Lcom/audible/application/stats/util/IStatsDemoManager;Ljava/net/URI;Ljava/io/File;Lcom/audible/application/stats/storage/IStatsCachedUploadRepository;Lcom/audible/application/stats/storage/IBadgeMetadataRepository;Lcom/audible/application/stats/storage/ICustomerStatsRepository;Lcom/audible/application/stats/util/IStatsNotificationManager;Lcom/audible/application/stats/util/IStatsBadgeImageCallback;Lcom/audible/application/stats/util/IStatsCalendarManager;Ljava/util/concurrent/ExecutorService;Ljava/lang/Integer;Lcom/audible/application/stats/integration/StoreType;Ljava/lang/Boolean;Lcom/audible/application/stats/util/IStatsPositionTracker;Lcom/audible/application/stats/StatsManager$1;)V
    .locals 0

    .line 84
    invoke-direct/range {p0 .. p17}, Lcom/audible/application/stats/StatsManager;-><init>(Landroid/content/Context;Lcom/audible/application/stats/util/IHttpClientManager;Lcom/audible/application/stats/util/IConnectivityManager;Lcom/audible/application/stats/util/IStatsDemoManager;Ljava/net/URI;Ljava/io/File;Lcom/audible/application/stats/storage/IStatsCachedUploadRepository;Lcom/audible/application/stats/storage/IBadgeMetadataRepository;Lcom/audible/application/stats/storage/ICustomerStatsRepository;Lcom/audible/application/stats/util/IStatsNotificationManager;Lcom/audible/application/stats/util/IStatsBadgeImageCallback;Lcom/audible/application/stats/util/IStatsCalendarManager;Ljava/util/concurrent/ExecutorService;Ljava/lang/Integer;Lcom/audible/application/stats/integration/StoreType;Ljava/lang/Boolean;Lcom/audible/application/stats/util/IStatsPositionTracker;)V

    return-void
.end method

.method static synthetic access$000(Lcom/audible/application/stats/StatsManager;)Ljava/lang/Object;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/audible/application/stats/StatsManager;->mLockFutureTasksQueue:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100(Lcom/audible/application/stats/StatsManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/audible/application/stats/StatsManager;->mPreventNetworkCalls:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/audible/application/stats/StatsManager;)V
    .locals 0

    .line 84
    invoke-virtual {p0}, Ljava/util/Observable;->setChanged()V

    return-void
.end method

.method static synthetic access$1100(Lcom/audible/application/stats/StatsManager;)Lcom/audible/application/stats/util/IStatsBadgeImageCallback;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/audible/application/stats/StatsManager;->mBadgeImageCallback:Lcom/audible/application/stats/util/IStatsBadgeImageCallback;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/audible/application/stats/StatsManager;)V
    .locals 0

    .line 84
    invoke-virtual {p0}, Ljava/util/Observable;->setChanged()V

    return-void
.end method

.method static synthetic access$1300(Lcom/audible/application/stats/StatsManager;)Lcom/audible/application/stats/util/IStatsNotificationManager;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/audible/application/stats/StatsManager;->mNotificationManager:Lcom/audible/application/stats/util/IStatsNotificationManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/audible/application/stats/StatsManager;)Ljava/util/Queue;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/audible/application/stats/StatsManager;->mDispatchFutureTasks:Ljava/util/Queue;

    return-object p0
.end method

.method static synthetic access$300(Lcom/audible/application/stats/StatsManager;)Ljava/lang/Runnable;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/audible/application/stats/StatsManager;->mNetworkMonitorRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$400(Lcom/audible/application/stats/StatsManager;Ljava/lang/Runnable;J)V
    .locals 0

    .line 84
    invoke-direct {p0, p1, p2, p3}, Lcom/audible/application/stats/StatsManager;->postDelayedNetworkMonitor(Ljava/lang/Runnable;J)V

    return-void
.end method

.method static synthetic access$500(Lcom/audible/application/stats/StatsManager;)I
    .locals 0

    .line 84
    iget p0, p0, Lcom/audible/application/stats/StatsManager;->mNumTransmitNetworkDataFailures:I

    return p0
.end method

.method static synthetic access$502(Lcom/audible/application/stats/StatsManager;I)I
    .locals 0

    .line 84
    iput p1, p0, Lcom/audible/application/stats/StatsManager;->mNumTransmitNetworkDataFailures:I

    return p1
.end method

.method static synthetic access$508(Lcom/audible/application/stats/StatsManager;)I
    .locals 2

    .line 84
    iget v0, p0, Lcom/audible/application/stats/StatsManager;->mNumTransmitNetworkDataFailures:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/audible/application/stats/StatsManager;->mNumTransmitNetworkDataFailures:I

    return v0
.end method

.method static synthetic access$600(Lcom/audible/application/stats/StatsManager;)I
    .locals 0

    .line 84
    iget p0, p0, Lcom/audible/application/stats/StatsManager;->MAX_ATTEMPTS_TO_TRANSMIT_NETWORK_DATA:I

    return p0
.end method

.method static synthetic access$700(Lcom/audible/application/stats/StatsManager;)Ljava/util/concurrent/Callable;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/audible/application/stats/StatsManager;->mDispatchTask:Ljava/util/concurrent/Callable;

    return-object p0
.end method

.method static synthetic access$800(Lcom/audible/application/stats/StatsManager;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/audible/application/stats/StatsManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method static synthetic access$900(Lcom/audible/application/stats/StatsManager;)Ljava/io/File;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/audible/application/stats/StatsManager;->mImageCacheDirectory:Ljava/io/File;

    return-object p0
.end method

.method private checkBadgeAndListeningLevelCache()V
    .locals 10

    .line 1540
    iget-object v0, p0, Lcom/audible/application/stats/StatsManager;->mBadgeMetadataRepository:Lcom/audible/application/stats/storage/IBadgeMetadataRepository;

    if-nez v0, :cond_0

    const-string v0, "mBadgeMetadataRepository was never assigned a repository"

    .line 1541
    invoke-static {v0}, Lcom/audible/application/stats/util/LogController;->w(Ljava/lang/String;)V

    return-void

    .line 1544
    :cond_0
    iget-object v0, p0, Lcom/audible/application/stats/StatsManager;->mCustomerStatsRepository:Lcom/audible/application/stats/storage/ICustomerStatsRepository;

    if-nez v0, :cond_1

    const-string v0, "mCustomerStatsRepository was never assigned a repository"

    .line 1545
    invoke-static {v0}, Lcom/audible/application/stats/util/LogController;->w(Ljava/lang/String;)V

    return-void

    .line 1548
    :cond_1
    iget-object v0, p0, Lcom/audible/application/stats/StatsManager;->mCachedGetBadges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/audible/application/stats/StatsManager;->mCachedGetListeningLevels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_c

    .line 1549
    :cond_2
    iget-object v0, p0, Lcom/audible/application/stats/StatsManager;->mCachedBadgeDataLockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 1550
    :try_start_0
    iget-object v1, p0, Lcom/audible/application/stats/StatsManager;->mCachedGetBadges:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/audible/application/stats/StatsManager;->mCachedGetListeningLevels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_b

    .line 1552
    :cond_3
    invoke-direct {p0}, Lcom/audible/application/stats/StatsManager;->loadFromDatabaseSynchronous()Lcom/audible/application/stats/StatsManager$LocalDatabaseMetadata;

    move-result-object v1

    .line 1557
    invoke-interface {v1}, Lcom/audible/application/stats/StatsManager$LocalDatabaseMetadata;->getBadgeMetadata()Ljava/util/List;

    move-result-object v2

    .line 1558
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 1560
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/audible/mobile/stats/domain/BadgeMetadata;

    .line 1561
    new-instance v5, Lcom/audible/mobile/stats/domain/Badge;

    invoke-virtual {v4}, Lcom/audible/mobile/stats/domain/BadgeMetadata;->getBadgeMetadataId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/audible/application/stats/StatsManager;->getCustomerBadgeProgressByBadgeMetadataId(Ljava/lang/String;)Lcom/audible/mobile/stats/domain/CustomerBadgeProgress;

    move-result-object v6

    invoke-direct {v5, p0, v6, v4}, Lcom/audible/mobile/stats/domain/Badge;-><init>(Lcom/audible/mobile/stats/BadgeIconFetcher;Lcom/audible/mobile/stats/domain/CustomerBadgeProgress;Lcom/audible/mobile/stats/domain/BadgeMetadata;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1566
    :cond_4
    iget-object v2, p0, Lcom/audible/application/stats/StatsManager;->mCachedGetBadges:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 1567
    iget-object v2, p0, Lcom/audible/application/stats/StatsManager;->mCachedGetBadges:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1569
    :cond_5
    iget-object v2, p0, Lcom/audible/application/stats/StatsManager;->mCachedGetBadges:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1574
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1575
    invoke-interface {v1}, Lcom/audible/application/stats/StatsManager$LocalDatabaseMetadata;->getListeningLevelMetadata()Lcom/audible/mobile/stats/domain/BadgeMetadata;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 1576
    invoke-interface {v1}, Lcom/audible/application/stats/StatsManager$LocalDatabaseMetadata;->getListeningLevelMetadata()Lcom/audible/mobile/stats/domain/BadgeMetadata;

    move-result-object v3

    invoke-virtual {v3}, Lcom/audible/mobile/stats/domain/BadgeMetadata;->getBadgeMetadataId()Ljava/lang/String;

    move-result-object v3

    .line 1578
    invoke-interface {v1}, Lcom/audible/application/stats/StatsManager$LocalDatabaseMetadata;->getListeningLevelMetadata()Lcom/audible/mobile/stats/domain/BadgeMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/audible/mobile/stats/domain/BadgeMetadata;->getLevelMetadata()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/audible/mobile/stats/domain/LevelMetadata;

    .line 1581
    invoke-virtual {p0, v3}, Lcom/audible/application/stats/StatsManager;->getCustomerBadgeProgressByBadgeMetadataId(Ljava/lang/String;)Lcom/audible/mobile/stats/domain/CustomerBadgeProgress;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_7

    .line 1583
    invoke-virtual {v5}, Lcom/audible/mobile/stats/domain/CustomerBadgeProgress;->getLevelMetadataId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/audible/mobile/stats/domain/LevelMetadata;->getLevelMetadataId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1585
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/audible/mobile/stats/domain/ListeningLevel;

    .line 1586
    invoke-virtual {v8, v7}, Lcom/audible/mobile/stats/domain/ListeningLevel;->setEarned(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_6
    const/4 v5, 0x1

    goto :goto_3

    :cond_7
    const/4 v5, 0x0

    .line 1594
    :goto_3
    :try_start_1
    invoke-virtual {v4}, Lcom/audible/mobile/stats/domain/LevelMetadata;->getDescription()Ljava/lang/String;

    move-result-object v8

    const-string v9, "["

    .line 1595
    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    add-int/2addr v9, v7

    const-string v7, "]"

    invoke-virtual {v8, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v8, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 1596
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catch_0
    :try_start_2
    const-string v7, "StatsManager checkBadgeAndListeningLevelCache services reported invalid description for listening data!"

    .line 1598
    invoke-static {v7}, Lcom/audible/application/stats/util/LogController;->e(Ljava/lang/String;)V

    .line 1600
    :goto_4
    new-instance v7, Lcom/audible/mobile/stats/domain/ListeningLevel;

    invoke-virtual {v4}, Lcom/audible/mobile/stats/domain/LevelMetadata;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v4, v5, v6}, Lcom/audible/mobile/stats/domain/ListeningLevel;-><init>(Ljava/lang/String;ZI)V

    .line 1601
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1607
    :cond_8
    iget-object v1, p0, Lcom/audible/application/stats/StatsManager;->mCachedGetListeningLevels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_9

    .line 1608
    iget-object v1, p0, Lcom/audible/application/stats/StatsManager;->mCachedGetListeningLevels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1610
    :cond_9
    iget-object v1, p0, Lcom/audible/application/stats/StatsManager;->mCachedGetListeningLevels:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1616
    :cond_a
    invoke-virtual {p0}, Ljava/util/Observable;->notifyObservers()V

    .line 1618
    :cond_b
    monitor-exit v0

    :cond_c
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private loadFromDatabaseSynchronous()Lcom/audible/application/stats/StatsManager$LocalDatabaseMetadata;
    .locals 6

    const-string v0, "StatsManager refreshFromDatabase() called"

    .line 745
    invoke-static {v0}, Lcom/audible/application/stats/util/LogController;->d(Ljava/lang/String;)V

    .line 749
    iget-object v0, p0, Lcom/audible/application/stats/StatsManager;->mBadgeDataReadWriteLockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 750
    :try_start_0
    iget-object v1, p0, Lcom/audible/application/stats/StatsManager;->mBadgeMetadataRepository:Lcom/audible/application/stats/storage/IBadgeMetadataRepository;

    invoke-interface {v1}, Lcom/audible/application/stats/storage/IBadgeMetadataRepository;->getBadgeMetadata()Ljava/util/List;

    move-result-object v1

    .line 751
    iget-object v2, p0, Lcom/audible/application/stats/StatsManager;->mBadgeMetadataRepository:Lcom/audible/application/stats/storage/IBadgeMetadataRepository;

    invoke-interface {v2}, Lcom/audible/application/stats/storage/IBadgeMetadataRepository;->getListeningLevelMetadata()Lcom/audible/mobile/stats/domain/BadgeMetadata;

    move-result-object v2

    .line 752
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 754
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x0

    if-lez v0, :cond_0

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    const-string v0, "StatsManager mRefreshFromDatabaseTask BadgeMetadata loaded from LOCAL DATABASE"

    .line 756
    invoke-static {v0}, Lcom/audible/application/stats/util/LogController;->d(Ljava/lang/String;)V

    .line 760
    iget-object v0, p0, Lcom/audible/application/stats/StatsManager;->mBadgeDataReadWriteLockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 761
    :try_start_1
    iget-object v3, p0, Lcom/audible/application/stats/StatsManager;->mCustomerStatsRepository:Lcom/audible/application/stats/storage/ICustomerStatsRepository;

    invoke-interface {v3}, Lcom/audible/application/stats/storage/ICustomerStatsRepository;->getCustomerBadgeProgress()Ljava/util/List;

    move-result-object v3

    .line 762
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 763
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/audible/mobile/stats/domain/CustomerBadgeProgress;

    .line 764
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "StatsManager mRefreshFromDatabaseTask adding CustomerBadgeProgress "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/audible/mobile/stats/domain/CustomerBadgeProgress;->getBadgeMetadataId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "( "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 765
    invoke-virtual {v3}, Lcom/audible/mobile/stats/domain/CustomerBadgeProgress;->getLevelMetadataId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " )"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 764
    invoke-static {v4}, Lcom/audible/application/stats/util/LogController;->d(Ljava/lang/String;)V

    .line 766
    iget-object v4, p0, Lcom/audible/application/stats/StatsManager;->mCustomerBadgeProgressMap:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/audible/mobile/stats/domain/CustomerBadgeProgress;->getBadgeMetadataId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 769
    :cond_1
    invoke-virtual {p0}, Lcom/audible/application/stats/StatsManager;->fetchBadgeIcons()Ljava/util/concurrent/FutureTask;

    .line 772
    invoke-virtual {p0}, Ljava/util/Observable;->setChanged()V

    goto :goto_2

    :catchall_0
    move-exception v1

    .line 762
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_2
    const-string v0, "StatsManager getBadgeMetadata() received empty BadgeMetadata list"

    .line 776
    invoke-static {v0}, Lcom/audible/application/stats/util/LogController;->d(Ljava/lang/String;)V

    .line 777
    invoke-virtual {p0}, Lcom/audible/application/stats/StatsManager;->syncBadgeMetadata()V

    .line 778
    invoke-virtual {p0, v3}, Lcom/audible/application/stats/StatsManager;->syncCustomerAggregatedStats(Z)V

    .line 779
    invoke-virtual {p0, v3}, Lcom/audible/application/stats/StatsManager;->syncCustomerBadgeProgress(Z)V

    .line 780
    invoke-virtual {p0}, Lcom/audible/application/stats/StatsManager;->fetchBadgeIcons()Ljava/util/concurrent/FutureTask;

    .line 782
    :goto_2
    new-instance v0, Lcom/audible/application/stats/StatsManager$14;

    invoke-direct {v0, p0, v1, v2}, Lcom/audible/application/stats/StatsManager$14;-><init>(Lcom/audible/application/stats/StatsManager;Ljava/util/List;Lcom/audible/mobile/stats/domain/BadgeMetadata;)V

    return-object v0

    :catchall_1
    move-exception v1

    .line 752
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method private postDelayedNetworkMonitor(Ljava/lang/Runnable;J)V
    .locals 2

    .line 542
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StatsManager postDelayedNetworkMonitor adding another runnable with delay["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "] to queue"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/audible/application/stats/util/LogController;->d(Ljava/lang/String;)V

    .line 543
    new-instance v0, Lcom/audible/application/stats/StatsManager$12;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/audible/application/stats/StatsManager$12;-><init>(Lcom/audible/application/stats/StatsManager;JLjava/lang/Runnable;)V

    .line 550
    iget-object p1, p0, Lcom/audible/application/stats/StatsManager;->mNetworkMonitorExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method protected clearDBStaleEvent()V
    .locals 3

    .line 1976
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/audible/application/stats/StatsManager$19;

    invoke-direct {v1, p0}, Lcom/audible/application/stats/StatsManager$19;-><init>(Lcom/audible/application/stats/StatsManager;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 1982
    iget-object v1, p0, Lcom/audible/application/stats/StatsManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected completeRecordAndDispatch(Lcom/audible/mobile/stats/domain/ListeningStatsEvent;)V
    .locals 2

    .line 978
    invoke-virtual {p1}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->getEventType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Listening"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 979
    invoke-virtual {p1}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->getListeningEndTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/audible/application/stats/StatsManager;->completeRecordEvent(Ljava/util/Date;)V

    goto :goto_0

    .line 981
    :cond_0
    invoke-virtual {p0, p1}, Lcom/audible/application/stats/StatsManager;->recordEvent(Lcom/audible/mobile/stats/domain/ListeningStatsEvent;)V

    .line 983
    :goto_0
    iget-boolean p1, p0, Lcom/audible/application/stats/StatsManager;->mAutomaticSetStatsDispatch:Z

    if-eqz p1, :cond_1

    .line 984
    invoke-virtual {p0}, Lcom/audible/application/stats/StatsManager;->dispatchCompletedEvents()V

    :cond_1
    return-void
.end method

.method protected completeRecordEvent(Ljava/util/Date;)V
    .locals 2

    .line 1962
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/audible/application/stats/StatsManager$18;

    invoke-direct {v1, p0, p1}, Lcom/audible/application/stats/StatsManager$18;-><init>(Lcom/audible/application/stats/StatsManager;Ljava/util/Date;)V

    const/4 p1, 0x0

    invoke-direct {v0, v1, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 1968
    iget-object p1, p0, Lcom/audible/application/stats/StatsManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public declared-synchronized connectionChangedUpdate()V
    .locals 4

    monitor-enter p0

    .line 1859
    :try_start_0
    iget-object v0, p0, Lcom/audible/application/stats/StatsManager;->mDemoManager:Lcom/audible/application/stats/util/IStatsDemoManager;

    invoke-interface {v0}, Lcom/audible/application/stats/util/IStatsDemoManager;->isRetailDemo()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1864
    iget-object v0, p0, Lcom/audible/application/stats/StatsManager;->mPreventNetworkCalls:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1865
    monitor-exit p0

    return-void

    .line 1867
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/audible/application/stats/StatsManager;->mPreventNetworkCallsConnectivityManager:Lcom/audible/application/stats/util/IConnectivityManager;

    if-eqz v0, :cond_3

    .line 1868
    iget-object v0, p0, Lcom/audible/application/stats/StatsManager;->mPreventNetworkCallsConnectivityManager:Lcom/audible/application/stats/util/IConnectivityManager;

    invoke-interface {v0}, Lcom/audible/application/stats/util/IConnectivityManager;->hasNetworkConnection()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 1873
    iget-object v0, p0, Lcom/audible/application/stats/StatsManager;->mPreventNetworkCalls:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1877
    iget-object v0, p0, Lcom/audible/application/stats/StatsManager;->mLockFutureTasksQueue:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1878
    :try_start_2
    iget-object v3, p0, Lcom/audible/application/stats/StatsManager;->mDispatchFutureTasks:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->clear()V

    .line 1879
    iput v1, p0, Lcom/audible/application/stats/StatsManager;->mNumTransmitNetworkDataFailures:I

    .line 1880
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1881
    :try_start_3
    invoke-virtual {p0}, Lcom/audible/application/stats/StatsManager;->dispatchCompletedEvents()V

    .line 1882
    iget-object v0, p0, Lcom/audible/application/stats/StatsManager;->mNeedToFetchAggregatedStats:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1883
    invoke-virtual {p0, v2}, Lcom/audible/application/stats/StatsManager;->syncCustomerAggregatedStats(Z)V

    :cond_1
    const-string v0, "StatsManager connectionChangedUpdate network calls ALLOWED"

    .line 1885
    invoke-static {v0}, Lcom/audible/application/stats/util/LogController;->d(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 1880
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1

    .line 1888
    :cond_2
    iget-object v0, p0, Lcom/audible/application/stats/StatsManager;->mPreventNetworkCalls:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1893
    iget-object v0, p0, Lcom/audible/application/stats/StatsManager;->mLockFutureTasksQueue:Ljava/lang/Object;

    monitor-enter v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1894
    :try_start_6
    iget-object v2, p0, Lcom/audible/application/stats/StatsManager;->mDispatchFutureTasks:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->clear()V

    .line 1895
    iput v1, p0, Lcom/audible/application/stats/StatsManager;->mNumTransmitNetworkDataFailures:I

    .line 1896
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    const-string v0, "StatsManager connectionChangedUpdate network calls PREVENTED"

    .line 1897
    invoke-static {v0}, Lcom/audible/application/stats/util/LogController;->d(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_0

    :catchall_1
    move-exception v1

    .line 1896
    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 1900
    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public dispatchCompletedEvents()V
    .locals 5

    .line 1473
    iget-object v0, p0, Lcom/audible/application/stats/StatsManager;->mDemoManager:Lcom/audible/application/stats/util/IStatsDemoManager;

    invoke-interface {v0}, Lcom/audible/application/stats/util/IStatsDemoManager;->isRetailDemo()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/audible/application/stats/StatsManager;->mPreventNetworkCalls:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1476
    :cond_0
    iget-object v0, p0, Lcom/audible/application/stats/StatsManager;->mLockFutureTasksQueue:Ljava/lang/Object;

    monitor-enter v0

    .line 1478
    :try_start_0
    new-instance v1, Ljava/util/concurrent/FutureTask;

    iget-object v2, p0, Lcom/audible/application/stats/StatsManager;->mDispatchTask:Ljava/util/concurrent/Callable;

    invoke-direct {v1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 1479
    iget-object v2, p0, Lcom/audible/application/stats/StatsManager;->mDispatchFutureTasks:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1481
    iget-object v2, p0, Lcom/audible/application/stats/StatsManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1482
    iget-object v2, p0, Lcom/audible/application/stats/StatsManager;->mNetworkMonitorRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x2710

    invoke-direct {p0, v2, v3, v4}, Lcom/audible/application/stats/StatsManager;->postDelayedNetworkMonitor(Ljava/lang/Runnable;J)V

    .line 1484
    :cond_1
    iget-object v2, p0, Lcom/audible/application/stats/StatsManager;->mDispatchFutureTasks:Ljava/util/Queue;

    invoke-interface {v2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 1485
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :goto_0
    return-void
.end method

.method protected dispatchCompletedEventsSynchronous()Z
    .locals 1

    const/4 v0, 0x1

    .line 1168
    invoke-virtual {p0, v0}, Lcom/audible/application/stats/StatsManager;->dispatchCompletedEventsSynchronous(Z)Z

    move-result v0

    return v0
.end method

.method protected dispatchCompletedEventsSynchronous(Z)Z
    .locals 8

    .line 1184
    iget-object v0, p0, Lcom/audible/application/stats/StatsManager;->mStatsRepository:Lcom/audible/application/stats/storage/IStatsCachedUploadRepository;

    invoke-interface {v0}, Lcom/audible/application/stats/storage/IStatsCachedUploadRepository;->getReadyToDispatchEvents()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Lcom/audible/mobile/stats/domain/ListeningStatsEvent;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/mobile/stats/domain/ListeningStatsEvent;

    .line 1185
    array-length v2, v0

    const/4 v3, 0x1

    if-lez v2, :cond_5

    .line 1192
    array-length v2, v0

    const/16 v4, 0x14

    if-le v2, v4, :cond_0

    .line 1193
    invoke-static {v0, v1, v4}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/mobile/stats/domain/ListeningStatsEvent;

    const-string v2, "StatsManager dispatchCompletedEventsSynchronous eventsAreSegmented=true"

    .line 1195
    invoke-static {v2}, Lcom/audible/application/stats/util/LogController;->w(Ljava/lang/String;)V

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1197
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "StatsManager dispatchCompletedEventsSynchronous sending SetStats with ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] items"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/audible/application/stats/util/LogController;->d(Ljava/lang/String;)V

    .line 1199
    iget-object v4, p0, Lcom/audible/application/stats/StatsManager;->mStatsNetworking:Lcom/audible/application/stats/StatsNetworking;

    invoke-virtual {v4, v0}, Lcom/audible/application/stats/StatsNetworking;->dispatchCompletedEvents([Lcom/audible/mobile/stats/domain/ListeningStatsEvent;)Lcom/audible/application/stats/StatsNetworking$IStatsNetworkingResponse;

    move-result-object v4

    .line 1200
    invoke-interface {v4}, Lcom/audible/application/stats/StatsNetworking$IStatsNetworkingResponse;->isError()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1201
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "StatsManager IStatsNetworkingResponse responded with error and ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Lcom/audible/application/stats/StatsNetworking$IStatsNetworkingResponse;->getErrorStatsEvents()[Lcom/audible/mobile/stats/domain/ListeningStatsEvent;

    move-result-object v0

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") events"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/audible/application/stats/util/LogController;->w(Ljava/lang/String;)V

    .line 1202
    invoke-interface {v4}, Lcom/audible/application/stats/StatsNetworking$IStatsNetworkingResponse;->isClientError()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "StatsManager IStatsNetworkingResponse responded with critical client error. Removing..."

    .line 1203
    invoke-static {p1}, Lcom/audible/application/stats/util/LogController;->e(Ljava/lang/String;)V

    .line 1204
    iget-object p1, p0, Lcom/audible/application/stats/StatsManager;->mStatsRepository:Lcom/audible/application/stats/storage/IStatsCachedUploadRepository;

    invoke-interface {v4}, Lcom/audible/application/stats/StatsNetworking$IStatsNetworkingResponse;->getErrorStatsEvents()[Lcom/audible/mobile/stats/domain/ListeningStatsEvent;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/audible/application/stats/storage/IStatsCachedUploadRepository;->clearErrorEvents([Lcom/audible/mobile/stats/domain/ListeningStatsEvent;)V

    :cond_1
    return v1

    .line 1208
    :cond_2
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 1209
    invoke-interface {v4}, Lcom/audible/application/stats/StatsNetworking$IStatsNetworkingResponse;->getStatsPostedTimestamp()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Lcom/audible/application/stats/StatsNetworking$IStatsNetworkingResponse;->getStatsPostedTimestamp()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1210
    invoke-interface {v4}, Lcom/audible/application/stats/StatsNetworking$IStatsNetworkingResponse;->getStatsPostedTimestamp()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/audible/application/stats/util/Util;->parseFromISO8601(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    .line 1212
    :cond_3
    iget-object v4, p0, Lcom/audible/application/stats/StatsManager;->mStatsRepository:Lcom/audible/application/stats/storage/IStatsCachedUploadRepository;

    invoke-interface {v4, v0, v5}, Lcom/audible/application/stats/storage/IStatsCachedUploadRepository;->setEventsToSynced([Lcom/audible/mobile/stats/domain/ListeningStatsEvent;Ljava/util/Date;)V

    if-eqz v2, :cond_5

    if-eqz p1, :cond_4

    .line 1217
    invoke-virtual {p0}, Lcom/audible/application/stats/StatsManager;->dispatchCompletedEvents()V

    goto :goto_1

    .line 1219
    :cond_4
    invoke-virtual {p0, v1}, Lcom/audible/application/stats/StatsManager;->dispatchCompletedEventsSynchronous(Z)Z

    move-result p1

    return p1

    :cond_5
    :goto_1
    return v3
.end method

.method protected fetchBadgeIconSynchronous(Lcom/audible/mobile/stats/domain/BadgeIcon;)Ljava/io/File;
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1272
    :cond_0
    iget-object v1, p0, Lcom/audible/application/stats/StatsManager;->mDemoManager:Lcom/audible/application/stats/util/IStatsDemoManager;

    invoke-interface {v1}, Lcom/audible/application/stats/util/IStatsDemoManager;->isRetailDemo()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1278
    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/audible/application/stats/StatsManager;->mImageCacheDirectory:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/audible/mobile/stats/domain/BadgeIcon;->getBadgeImageId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1279
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1280
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8

    .line 1285
    :cond_1
    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/audible/application/stats/StatsManager;->mDemoManager:Lcom/audible/application/stats/util/IStatsDemoManager;

    invoke-interface {v3, p1}, Lcom/audible/application/stats/util/IStatsDemoManager;->getDemoBadgeIcon(Lcom/audible/mobile/stats/domain/BadgeIcon;)Ljava/io/File;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1286
    :try_start_2
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-wide/16 v5, 0x0

    .line 1287
    :try_start_3
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v7

    move-object v3, v2

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p1, :cond_2

    .line 1293
    :try_start_4
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_2
    :goto_0
    if-eqz v2, :cond_6

    .line 1300
    :goto_1
    :try_start_5
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    goto :goto_6

    :catchall_0
    move-exception v1

    goto :goto_2

    :catchall_1
    move-exception v1

    move-object v2, v0

    goto :goto_2

    :catch_1
    move-object v2, v0

    :catch_2
    move-object v0, p1

    goto :goto_4

    :catchall_2
    move-exception v1

    move-object p1, v0

    move-object v2, p1

    :goto_2
    if-eqz p1, :cond_3

    .line 1293
    :try_start_6
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_3

    :catch_3
    nop

    :cond_3
    :goto_3
    if-eqz v2, :cond_4

    .line 1300
    :try_start_7
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 1304
    :catch_4
    :cond_4
    :try_start_8
    throw v1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8

    :catch_5
    move-object v2, v0

    :goto_4
    if-eqz v0, :cond_5

    .line 1293
    :try_start_9
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_5

    :catch_6
    nop

    :cond_5
    :goto_5
    if-eqz v2, :cond_6

    goto :goto_1

    :catch_7
    :cond_6
    :goto_6
    return-object v1

    :catch_8
    return-object v0

    .line 1313
    :cond_7
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/audible/application/stats/StatsManager;->mImageCacheDirectory:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/audible/mobile/stats/domain/BadgeIcon;->getBadgeImageId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1314
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StatsManager fetchBadgeIconSynchronous requesting ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/audible/mobile/stats/domain/BadgeIcon;->getBadgeImageId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/audible/mobile/stats/domain/BadgeIcon;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/audible/application/stats/util/LogController;->d(Ljava/lang/String;)V

    .line 1315
    iget-object v2, p0, Lcom/audible/application/stats/StatsManager;->mStatsNetworking:Lcom/audible/application/stats/StatsNetworking;

    invoke-interface {p1}, Lcom/audible/mobile/stats/domain/BadgeIcon;->getImageUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1, v1}, Lcom/audible/application/stats/StatsNetworking;->getBadgeIcon(Ljava/lang/String;Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1316
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "StatsManager fetchBadgeIconSynchronous saving file to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/audible/application/stats/util/LogController;->d(Ljava/lang/String;)V

    return-object v1

    :cond_8
    return-object v0
.end method

.method public fetchBadgeIcons()Ljava/util/concurrent/FutureTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/FutureTask<",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;>;"
        }
    .end annotation

    .line 1527
    new-instance v0, Ljava/util/concurrent/FutureTask;

    iget-object v1, p0, Lcom/audible/application/stats/StatsManager;->mDownloadBadgeIconsTask:Ljava/util/concurrent/Callable;

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 1528
    iget-object v1, p0, Lcom/audible/application/stats/StatsManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public fetchBadgeMetadata()V
    .locals 2

    .line 1493
    iget-object v0, p0, Lcom/audible/application/stats/StatsManager;->mFetchBadgeMetadataFutureTask:Ljava/util/concurrent/FutureTask;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "StatsManager fetchBadgeMetadata FutureTask in done or null state, re-executing"

    .line 1494
    invoke-static {v0}, Lcom/audible/application/stats/util/LogController;->d(Ljava/lang/String;)V

    .line 1495
    new-instance v0, Ljava/util/concurrent/FutureTask;

    iget-object v1, p0, Lcom/audible/application/stats/StatsManager;->mDownloadBadgeMetadataTask:Ljava/util/concurrent/Callable;

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/audible/application/stats/StatsManager;->mFetchBadgeMetadataFutureTask:Ljava/util/concurrent/FutureTask;

    .line 1496
    iget-object v1, p0, Lcom/audible/application/stats/StatsManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method protected fetchBadgeMetadataSynchronous()Z
    .locals 4

    const-string v0, "StatsManager fetchBadgeMetadataSynchronous requesting refresh"

    .line 1236
    invoke-static {v0}, Lcom/audible/application/stats/util/LogController;->d(Ljava/lang/String;)V

    .line 1239
    iget-object v0, p0, Lcom/audible/application/stats/StatsManager;->mDemoManager:Lcom/audible/application/stats/util/IStatsDemoManager;

    invoke-interface {v0}, Lcom/audible/application/stats/util/IStatsDemoManager;->isRetailDemo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1240
    iget-object v0, p0, Lcom/audible/application/stats/StatsManager;->mDemoManager:Lcom/audible/application/stats/util/IStatsDemoManager;

    invoke-interface {v0}, Lcom/audible/application/stats/util/IStatsDemoManager;->getDemoBadgeMetadataResponse()Lcom/audible/mobile/stats/domain/BadgeMetadataResponse;

    move-result-object v0

    goto :goto_0

    .line 1242
    :cond_0
    iget-object v0, p0, Lcom/audible/application/stats/StatsManager;->mStatsNetworking:Lcom/audible/application/stats/StatsNetworking;

    iget-object v1, p0, Lcom/audible/application/stats/StatsManager;->mStoreType:Lcom/audible/application/stats/integration/StoreType;

    invoke-virtual {v0, v1}, Lcom/audible/application/stats/StatsNetworking;->getBadgeMetadata(Lcom/audible/application/stats/integration/StoreType;)Lcom/audible/mobile/stats/domain/BadgeMetadataResponse;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1245
    invoke-virtual {v0}, Lcom/audible/mobile/stats/domain/BadgeMetadataResponse;->getBadgeMetadata()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1247
    iget-object v2, p0, Lcom/audible/application/stats/StatsManager;->mBadgeDataReadWriteLockObject:Ljava/lang/Object;

    monitor-enter v2

    .line 1248
    :try_start_0
    iget-object v3, p0, Lcom/audible/application/stats/StatsManager;->mBadgeMetadataRepository:Lcom/audible/application/stats/storage/IBadgeMetadataRepository;

    invoke-interface {v3}, Lcom/audible/application/stats/storage/IBadgeMetadataRepository;->clearAll()V

    .line 1249
    invoke-virtual {v0}, Lcom/audible/mobile/stats/domain/BadgeMetadataResponse;->getBadgeMetadata()Ljava/util/List;

    move-result-object v0

    new-array v1, v1, [Lcom/audible/mobile/stats/domain/BadgeMetadata;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/mobile/stats/domain/BadgeMetadata;

    invoke-virtual {p0, v0}, Lcom/audible/application/stats/StatsManager;->insertBadgeMetadata([Lcom/audible/mobile/stats/domain/BadgeMetadata;)V

    .line 1250
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "StatsManager fetchBadgeMetadataSynchronous inserted data into repository"

    .line 1251
    invoke-static {v0}, Lcom/audible/application/stats/util/LogController;->d(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    .line 1250
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    const-string v0, "StatsManager fetchBadgeMetadataSynchronous failed to request BadgeMetaData"

    .line 1254
    invoke-static {v0}, Lcom/audible/application/stats/util/LogController;->d(Ljava/lang/String;)V

    return v1
.end method

.method public fetchCustomerAggregatedStats()V
    .locals 2

    .line 1517
    iget-object v0, p0, Lcom/audible/application/stats/StatsManager;->mFetchAggregatedStatsFutureTask:Ljava/util/concurrent/FutureTask;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "StatsManager fetchCustomerAggregatedStats FutureTask in done or null state, re-executing"

    .line 1518
    invoke-static {v0}, Lcom/audible/application/stats/util/LogController;->d(Ljava/lang/String;)V

    .line 1519
    new-instance v0, Ljava/util/concurrent/FutureTask;

    iget-object v1, p0, Lcom/audible/application/stats/StatsManager;->mDownloadAggregatedStatsTask:Ljava/util/concurrent/Callable;

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/audible/application/stats/StatsManager;->mFetchAggregatedStatsFutureTask:Ljava/util/concurrent/FutureTask;

    .line 1520
    iget-object v1, p0, Lcom/audible/application/stats/StatsManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method protected fetchCustomerAggregatedStatsSynchronous(I)Z
    .locals 11

    const-string v0, "StatsManager fetchCustomerAggregatedStats requesting stats from service"

    .line 1380
    invoke-static {v0}, Lcom/audible/application/stats/util/LogController;->d(Ljava/lang/String;)V

    .line 1381
    iget-object v0, p0, Lcom/audible/application/stats/StatsManager;->mStatsCalendarManager:Lcom/audible/application/stats/util/IStatsCalendarManager;

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    mul-int/lit8 p1, p1, -0x1

    invoke-interface {v0, p1}, Lcom/audible/application/stats/util/IStatsCalendarManager;->getDaysFromToday(I)Ljava/util/Date;

    move-result-object v3

    .line 1382
    iget-object p1, p0, Lcom/audible/application/stats/StatsManager;->mStatsCalendarManager:Lcom/audible/application/stats/util/IStatsCalendarManager;

    invoke-interface {p1, v1}, Lcom/audible/application/stats/util/IStatsCalendarManager;->getDaysFromToday(I)Ljava/util/Date;

    move-result-object v4

    .line 1384
    iget-object p1, p0, Lcom/audible/application/stats/StatsManager;->mStatsCalendarManager:Lcom/audible/application/stats/util/IStatsCalendarManager;

    const/4 v0, -0x5

    invoke-interface {p1, v0}, Lcom/audible/application/stats/util/IStatsCalendarManager;->getMonthRelativeToCurrentMonth(I)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    .line 1385
    iget-object p1, p0, Lcom/audible/application/stats/StatsManager;->mStatsCalendarManager:Lcom/audible/application/stats/util/IStatsCalendarManager;

    invoke-interface {p1}, Lcom/audible/application/stats/util/IStatsCalendarManager;->getThisMonth()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    .line 1388
    iget-object p1, p0, Lcom/audible/application/stats/StatsManager;->mDemoManager:Lcom/audible/application/stats/util/IStatsDemoManager;

    invoke-interface {p1}, Lcom/audible/application/stats/util/IStatsDemoManager;->isRetailDemo()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1389
    iget-object p1, p0, Lcom/audible/application/stats/StatsManager;->mDemoManager:Lcom/audible/application/stats/util/IStatsDemoManager;

    invoke-interface {p1}, Lcom/audible/application/stats/util/IStatsDemoManager;->getDemoAggregatedStatsResponse()Lcom/audible/mobile/stats/domain/AggregatedStatsResponse;

    move-result-object p1

    .line 1394
    invoke-virtual {p1}, Lcom/audible/mobile/stats/domain/AggregatedStatsResponse;->getDaily()Ljava/util/List;

    move-result-object v0

    .line 1395
    iget-object v2, p0, Lcom/audible/application/stats/StatsManager;->mStatsCalendarManager:Lcom/audible/application/stats/util/IStatsCalendarManager;

    const/4 v3, -0x4

    invoke-interface {v2, v3}, Lcom/audible/application/stats/util/IStatsCalendarManager;->getDaysFromToday(I)Ljava/util/Date;

    move-result-object v2

    .line 1396
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/audible/mobile/stats/domain/CustomerListeningStat;

    .line 1397
    invoke-static {v2}, Lcom/audible/application/stats/util/Util;->getShortDateString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 1398
    invoke-virtual {v4, v5}, Lcom/audible/mobile/stats/domain/CustomerListeningStat;->setDemoModeIntervalIdentifier(Ljava/lang/String;)V

    .line 1399
    iget-object v4, p0, Lcom/audible/application/stats/StatsManager;->mStatsCalendarManager:Lcom/audible/application/stats/util/IStatsCalendarManager;

    invoke-interface {v4, v2, v1}, Lcom/audible/application/stats/util/IStatsCalendarManager;->getDaysFromDate(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v2

    goto :goto_0

    .line 1401
    :cond_0
    invoke-virtual {p1}, Lcom/audible/mobile/stats/domain/AggregatedStatsResponse;->getMonthly()Ljava/util/List;

    move-result-object v0

    .line 1402
    iget-object v2, p0, Lcom/audible/application/stats/StatsManager;->mStatsCalendarManager:Lcom/audible/application/stats/util/IStatsCalendarManager;

    invoke-interface {v2, v3}, Lcom/audible/application/stats/util/IStatsCalendarManager;->getMonthRelativeToCurrentMonth(I)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    .line 1403
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/audible/mobile/stats/domain/CustomerListeningStat;

    .line 1404
    invoke-static {v2}, Lcom/audible/application/stats/util/Util;->getShortMonthString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 1405
    invoke-virtual {v3, v4}, Lcom/audible/mobile/stats/domain/CustomerListeningStat;->setDemoModeIntervalIdentifier(Ljava/lang/String;)V

    .line 1406
    iget-object v3, p0, Lcom/audible/application/stats/StatsManager;->mStatsCalendarManager:Lcom/audible/application/stats/util/IStatsCalendarManager;

    invoke-interface {v3, v2}, Lcom/audible/application/stats/util/IStatsCalendarManager;->getOneMonthFromDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v2

    goto :goto_1

    .line 1409
    :cond_1
    iget-object v2, p0, Lcom/audible/application/stats/StatsManager;->mStatsNetworking:Lcom/audible/application/stats/StatsNetworking;

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/audible/application/stats/StatsManager;->mStoreType:Lcom/audible/application/stats/integration/StoreType;

    invoke-virtual/range {v2 .. v8}, Lcom/audible/application/stats/StatsNetworking;->getAggregatedStats(Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;ZLcom/audible/application/stats/integration/StoreType;)Lcom/audible/mobile/stats/domain/AggregatedStatsResponse;

    move-result-object p1

    .line 1412
    :cond_2
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/audible/application/stats/StatsManager;->timeOfLastAggregatedStatsCall:J

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    .line 1423
    invoke-virtual {p1}, Lcom/audible/mobile/stats/domain/AggregatedStatsResponse;->getTotal()Lcom/audible/mobile/stats/domain/CustomerListeningStat;

    move-result-object v2

    .line 1424
    invoke-virtual {p0}, Lcom/audible/application/stats/StatsManager;->getTotal()J

    move-result-wide v3

    .line 1425
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "StatsManager#fetchCustomerAggregatedStatsSynchronous -- local total time for before compare:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/audible/application/stats/util/LogController;->d(Ljava/lang/String;)V

    .line 1430
    iget-object v5, p0, Lcom/audible/application/stats/StatsManager;->mStatsRepository:Lcom/audible/application/stats/storage/IStatsCachedUploadRepository;

    invoke-interface {v5}, Lcom/audible/application/stats/storage/IStatsCachedUploadRepository;->getServiceSyncedEvents()Ljava/util/List;

    move-result-object v5

    .line 1431
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;

    if-nez v6, :cond_4

    const-string v6, "StatsManager getAggregatedStats unable to sum when ListeningStatsEvent is null"

    .line 1433
    invoke-static {v6}, Lcom/audible/application/stats/util/LogController;->d(Ljava/lang/String;)V

    goto :goto_2

    .line 1436
    :cond_4
    invoke-virtual {v6}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->getEventType()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_5

    .line 1437
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "StatsManager getAggregatedStats ListeningStatsEvent has null event type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/audible/application/stats/util/LogController;->e(Ljava/lang/String;)V

    goto :goto_2

    .line 1440
    :cond_5
    invoke-virtual {v6}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->getEventType()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Listening"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1441
    invoke-virtual {v6}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->getListeningEndTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    invoke-virtual {v6}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->getListeningStartTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    sub-long/2addr v7, v9

    add-long/2addr v3, v7

    .line 1442
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "StatsManager#fetchCustomerAggregatedStatsSynchronous -- local total time after including local event:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1443
    invoke-static {v6}, Lcom/audible/application/stats/util/LogController;->d(Ljava/lang/String;)V

    goto :goto_2

    .line 1446
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "StatsManager#fetchCustomerAggregatedStatsSynchronous -- service total listening time:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/audible/mobile/stats/domain/CustomerListeningStat;->getAggregatedSum()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/audible/application/stats/util/LogController;->d(Ljava/lang/String;)V

    .line 1452
    invoke-virtual {v2}, Lcom/audible/mobile/stats/domain/CustomerListeningStat;->getAggregatedSum()J

    move-result-wide v5

    cmp-long v7, v5, v3

    if-ltz v7, :cond_7

    .line 1453
    invoke-virtual {p1}, Lcom/audible/mobile/stats/domain/AggregatedStatsResponse;->getDaily()Ljava/util/List;

    move-result-object v3

    new-array v4, v0, [Lcom/audible/mobile/stats/domain/CustomerListeningStat;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/audible/mobile/stats/domain/CustomerListeningStat;

    .line 1454
    invoke-virtual {p1}, Lcom/audible/mobile/stats/domain/AggregatedStatsResponse;->getMonthly()Ljava/util/List;

    move-result-object p1

    new-array v0, v0, [Lcom/audible/mobile/stats/domain/CustomerListeningStat;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/audible/mobile/stats/domain/CustomerListeningStat;

    .line 1453
    invoke-virtual {p0, v3, p1, v2}, Lcom/audible/application/stats/StatsManager;->insertOrUpdateCustomerAggregatedStats([Lcom/audible/mobile/stats/domain/CustomerListeningStat;[Lcom/audible/mobile/stats/domain/CustomerListeningStat;Lcom/audible/mobile/stats/domain/CustomerListeningStat;)V

    .line 1455
    iget-object p1, p0, Lcom/audible/application/stats/StatsManager;->mStatsRepository:Lcom/audible/application/stats/storage/IStatsCachedUploadRepository;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/audible/application/stats/storage/IStatsCachedUploadRepository;->clearServerSyncedEvents(Ljava/util/Date;)V

    const-string p1, "StatsManager#fetchCustomerAggregatedStatsSynchronous -- service time override local; inserted data into repository"

    .line 1456
    invoke-static {p1}, Lcom/audible/application/stats/util/LogController;->d(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    const-string p1, "StatsManager fetchCustomerAggregatedStatsSynchronous prevented data insert because serviceTotalListening < localTotalListening"

    .line 1459
    invoke-static {p1}, Lcom/audible/application/stats/util/LogController;->d(Ljava/lang/String;)V

    .line 1462
    :goto_3
    invoke-virtual {p0}, Ljava/util/Observable;->setChanged()V

    .line 1463
    invoke-virtual {p0}, Ljava/util/Observable;->notifyObservers()V

    return v1

    :cond_8
    const-string p1, "StatsManager fetchCustomerAggregatedStats failed to request AggregatedStats"

    .line 1466
    invoke-static {p1}, Lcom/audible/application/stats/util/LogController;->d(Ljava/lang/String;)V

    return v0
.end method

.method public fetchCustomerBadgeProgress()V
    .locals 2

    .line 1505
    iget-object v0, p0, Lcom/audible/application/stats/StatsManager;->mFetchCustomerBadgeProgressFutureTask:Ljava/util/concurrent/FutureTask;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "StatsManager fetchCustomerBadgeProgress FutureTask in done or null state, re-executing"

    .line 1506
    invoke-static {v0}, Lcom/audible/application/stats/util/LogController;->d(Ljava/lang/String;)V

    .line 1507
    new-instance v0, Ljava/util/concurrent/FutureTask;

    iget-object v1, p0, Lcom/audible/application/stats/StatsManager;->mDownloadCustomerBadgeProgressTask:Ljava/util/concurrent/Callable;

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/audible/application/stats/StatsManager;->mFetchCustomerBadgeProgressFutureTask:Ljava/util/concurrent/FutureTask;

    .line 1508
    iget-object v1, p0, Lcom/audible/application/stats/StatsManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method protected fetchCustomerBadgeProgressSynchronous()Z
    .locals 5

    const-string v0, "StatsManager fetchCustomerBadgeProgressSynchronous requesting refresh"

    .line 1331
    invoke-static {v0}, Lcom/audible/application/stats/util/LogController;->d(Ljava/lang/String;)V

    .line 1334
    iget-object v0, p0, Lcom/audible/application/stats/StatsManager;->mDemoManager:Lcom/audible/application/stats/util/IStatsDemoManager;

    invoke-interface {v0}, Lcom/audible/application/stats/util/IStatsDemoManager;->isRetailDemo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1335
    iget-object v0, p0, Lcom/audible/application/stats/StatsManager;->mDemoManager:Lcom/audible/application/stats/util/IStatsDemoManager;

    invoke-interface {v0}, Lcom/audible/application/stats/util/IStatsDemoManager;->getDemoCustomerBadgeProgressResponse()Lcom/audible/mobile/stats/domain/CustomerBadgeProgressResponse;

    move-result-object v0

    goto :goto_0

    .line 1337
    :cond_0
    iget-object v0, p0, Lcom/audible/application/stats/StatsManager;->mStatsNetworking:Lcom/audible/application/stats/StatsNetworking;

    iget-object v1, p0, Lcom/audible/application/stats/StatsManager;->mStoreType:Lcom/audible/application/stats/integration/StoreType;

    invoke-virtual {v0, v1}, Lcom/audible/application/stats/StatsNetworking;->getCustomerBadgeProgress(Lcom/audible/application/stats/integration/StoreType;)Lcom/audible/mobile/stats/domain/CustomerBadgeProgressResponse;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_4

    .line 1340
    invoke-virtual {v0}, Lcom/audible/mobile/stats/domain/CustomerBadgeProgressResponse;->getCustomerBadgeProgress()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1347
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1348
    invoke-virtual {v0}, Lcom/audible/mobile/stats/domain/CustomerBadgeProgressResponse;->getCustomerBadgeProgress()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/audible/mobile/stats/domain/CustomerBadgeProgress;

    .line 1349
    invoke-virtual {v2}, Lcom/audible/mobile/stats/domain/CustomerBadgeProgress;->getLevelAcquiredTime()Ljava/util/Date;

    move-result-object v3

    if-nez v3, :cond_2

    .line 1350
    invoke-virtual {v2}, Lcom/audible/mobile/stats/domain/CustomerBadgeProgress;->getBadgeMetadataId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "listeninglevel"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1351
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "StatsManager fetchCustomerBadgeProgressSynchronous adding CustomerBadgeProgress "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1352
    invoke-virtual {v2}, Lcom/audible/mobile/stats/domain/CustomerBadgeProgress;->getBadgeMetadataId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/audible/mobile/stats/domain/CustomerBadgeProgress;->getLevelMetadataId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " )"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1351
    invoke-static {v3}, Lcom/audible/application/stats/util/LogController;->d(Ljava/lang/String;)V

    .line 1353
    iget-object v3, p0, Lcom/audible/application/stats/StatsManager;->mCustomerBadgeProgressMap:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/audible/mobile/stats/domain/CustomerBadgeProgress;->getBadgeMetadataId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1354
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1359
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/audible/mobile/stats/domain/CustomerBadgeProgress;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/mobile/stats/domain/CustomerBadgeProgress;

    .line 1360
    invoke-virtual {p0, v0}, Lcom/audible/application/stats/StatsManager;->insertCustomerBadgeProgress([Lcom/audible/mobile/stats/domain/CustomerBadgeProgress;)V

    .line 1361
    invoke-virtual {p0}, Lcom/audible/application/stats/StatsManager;->resetCachedBadges()V

    const-string v0, "StatsManager fetchCustomerBadgeProgressSynchronous inserted data into repository"

    .line 1362
    invoke-static {v0}, Lcom/audible/application/stats/util/LogController;->d(Ljava/lang/String;)V

    .line 1363
    invoke-virtual {p0}, Ljava/util/Observable;->setChanged()V

    .line 1364
    invoke-virtual {p0}, Ljava/util/Observable;->notifyObservers()V

    const/4 v0, 0x1

    return v0

    :cond_4
    const-string v0, "StatsManager fetchCustomerBadgeProgressSynchronous failed to request CustomerBadgeProgress"

    .line 1367
    invoke-static {v0}, Lcom/audible/application/stats/util/LogController;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getBadges()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/audible/mobile/stats/domain/Badge;",
            ">;"
        }
    .end annotation

    .line 1625
    invoke-direct {p0}, Lcom/audible/application/stats/StatsManager;->checkBadgeAndListeningLevelCache()V

    .line 1630
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1631
    iget-object v1, p0, Lcom/audible/application/stats/StatsManager;->mCachedGetBadges:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1632
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1633
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected getCustomerBadgeProgressByBadgeMetadataId(Ljava/lang/String;)Lcom/audible/mobile/stats/domain/CustomerBadgeProgress;
    .locals 1

    .line 1032
    iget-object v0, p0, Lcom/audible/application/stats/StatsManager;->mCustomerBadgeProgressMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1033
    iget-object v0, p0, Lcom/audible/application/stats/StatsManager;->mCustomerBadgeProgressMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/audible/mobile/stats/domain/CustomerBadgeProgress;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getImageCacheFile(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .line 1535
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/audible/application/stats/StatsManager;->mImageCacheDirectory:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected getTotal()J
    .locals 2

    .line 1016
    iget-object v0, p0, Lcom/audible/application/stats/StatsManager;->mCustomerStatsRepository:Lcom/audible/application/stats/storage/ICustomerStatsRepository;

    invoke-interface {v0}, Lcom/audible/application/stats/storage/ICustomerStatsRepository;->getTotalListeningStat()Lcom/audible/mobile/stats/domain/CustomerListeningStat;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1019
    invoke-virtual {v0}, Lcom/audible/mobile/stats/domain/CustomerListeningStat;->getAggregatedSum()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public init(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 556
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 557
    iget-object v0, p0, Lcom/audible/application/stats/StatsManager;->mStatsRepository:Lcom/audible/application/stats/storage/IStatsCachedUploadRepository;

    invoke-interface {v0, p1, p2}, Lcom/audible/application/stats/storage/IStatsCachedUploadRepository;->setUserInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    :cond_0
    new-instance p1, Lcom/audible/application/stats/StatsManager$13;

    invoke-direct {p1, p0}, Lcom/audible/application/stats/StatsManager$13;-><init>(Lcom/audible/application/stats/StatsManager;)V

    const-wide/16 v0, 0x1388

    invoke-direct {p0, p1, v0, v1}, Lcom/audible/application/stats/StatsManager;->postDelayedNetworkMonitor(Ljava/lang/Runnable;J)V

    return-void
.end method

.method protected insertBadgeMetadata([Lcom/audible/mobile/stats/domain/BadgeMetadata;)V
    .locals 4

    .line 1118
    iget-object v0, p0, Lcom/audible/application/stats/StatsManager;->mBadgeMetadataRepository:Lcom/audible/application/stats/storage/IBadgeMetadataRepository;

    if-nez v0, :cond_0

    const-string p1, "mBadgeMetadataRepository was never assigned a repository"

    .line 1119
    invoke-static {p1}, Lcom/audible/application/stats/util/LogController;->w(Ljava/lang/String;)V

    return-void

    .line 1122
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 1123
    iget-object v3, p0, Lcom/audible/application/stats/StatsManager;->mBadgeMetadataRepository:Lcom/audible/application/stats/storage/IBadgeMetadataRepository;

    invoke-interface {v3, v2}, Lcom/audible/application/stats/storage/IBadgeMetadataRepository;->insertBadgeMetadata(Lcom/audible/mobile/stats/domain/BadgeMetadata;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected insertCustomerBadgeProgress([Lcom/audible/mobile/stats/domain/CustomerBadgeProgress;)V
    .locals 8

    .line 1043
    iget-object v0, p0, Lcom/audible/application/stats/StatsManager;->mBadgeMetadataRepository:Lcom/audible/application/stats/storage/IBadgeMetadataRepository;

    if-nez v0, :cond_0

    const-string p1, "mBadgeMetadataRepository was never assigned a repository"

    .line 1044
    invoke-static {p1}, Lcom/audible/application/stats/util/LogController;->w(Ljava/lang/String;)V

    return-void

    .line 1047
    :cond_0
    iget-object v0, p0, Lcom/audible/application/stats/StatsManager;->mCustomerStatsRepository:Lcom/audible/application/stats/storage/ICustomerStatsRepository;

    if-nez v0, :cond_1

    const-string p1, "mCustomerStatsRepository was never assigned a repository"

    .line 1048
    invoke-static {p1}, Lcom/audible/application/stats/util/LogController;->w(Ljava/lang/String;)V

    return-void

    .line 1052
    :cond_1
    iget-object v0, p0, Lcom/audible/application/stats/StatsManager;->mShowBadgeEarnedNotificationOnNextUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .line 1053
    iget-object v1, p0, Lcom/audible/application/stats/StatsManager;->mBadgeDataReadWriteLockObject:Ljava/lang/Object;

    monitor-enter v1

    .line 1054
    :try_start_0
    array-length v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v5, p1, v3

    .line 1055
    iget-object v6, p0, Lcom/audible/application/stats/StatsManager;->mCustomerStatsRepository:Lcom/audible/application/stats/storage/ICustomerStatsRepository;

    invoke-interface {v6, v5}, Lcom/audible/application/stats/storage/ICustomerStatsRepository;->insertOrUpdateCustomerBadgeProgress(Lcom/audible/mobile/stats/domain/CustomerBadgeProgress;)Lcom/audible/mobile/stats/domain/CustomerBadgeProgress;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 1058
    invoke-virtual {v5}, Lcom/audible/mobile/stats/domain/CustomerBadgeProgress;->getBadgeMetadataId()Ljava/lang/String;

    move-result-object v6

    const-string v7, "listeninglevel"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    if-nez v4, :cond_3

    if-eqz v0, :cond_3

    .line 1065
    new-instance v4, Lcom/audible/application/stats/StatsManager$16;

    invoke-direct {v4, p0, v5}, Lcom/audible/application/stats/StatsManager$16;-><init>(Lcom/audible/application/stats/StatsManager;Lcom/audible/mobile/stats/domain/CustomerBadgeProgress;)V

    .line 1103
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    const/4 v4, 0x1

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1110
    :cond_4
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected insertOrUpdateCustomerAggregatedStats([Lcom/audible/mobile/stats/domain/CustomerListeningStat;[Lcom/audible/mobile/stats/domain/CustomerListeningStat;Lcom/audible/mobile/stats/domain/CustomerListeningStat;)V
    .locals 6

    .line 1132
    iget-object v0, p0, Lcom/audible/application/stats/StatsManager;->mCustomerStatsRepository:Lcom/audible/application/stats/storage/ICustomerStatsRepository;

    if-nez v0, :cond_0

    const-string p1, "mCustomerStatsRepository was never assigned a repository"

    .line 1133
    invoke-static {p1}, Lcom/audible/application/stats/util/LogController;->w(Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz v0, :cond_3

    .line 1137
    iget-object v0, p0, Lcom/audible/application/stats/StatsManager;->mBadgeDataReadWriteLockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 1138
    :try_start_0
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    .line 1139
    iget-object v5, p0, Lcom/audible/application/stats/StatsManager;->mCustomerStatsRepository:Lcom/audible/application/stats/storage/ICustomerStatsRepository;

    invoke-interface {v5, v4}, Lcom/audible/application/stats/storage/ICustomerStatsRepository;->insertOrUpdateDailyListeningStat(Lcom/audible/mobile/stats/domain/CustomerListeningStat;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1141
    :cond_1
    array-length p1, p2

    :goto_1
    if-ge v2, p1, :cond_2

    aget-object v1, p2, v2

    .line 1142
    iget-object v3, p0, Lcom/audible/application/stats/StatsManager;->mCustomerStatsRepository:Lcom/audible/application/stats/storage/ICustomerStatsRepository;

    invoke-interface {v3, v1}, Lcom/audible/application/stats/storage/ICustomerStatsRepository;->insertOrUpdateMonthlyListeningStat(Lcom/audible/mobile/stats/domain/CustomerListeningStat;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1144
    :cond_2
    iget-object p1, p0, Lcom/audible/application/stats/StatsManager;->mCustomerStatsRepository:Lcom/audible/application/stats/storage/ICustomerStatsRepository;

    invoke-interface {p1, p3}, Lcom/audible/application/stats/storage/ICustomerStatsRepository;->insertOrUpdateTotalListeningStat(Lcom/audible/mobile/stats/domain/CustomerListeningStat;)V

    .line 1145
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_2
    return-void
.end method

.method protected recordEvent(Lcom/audible/mobile/stats/domain/ListeningStatsEvent;)V
    .locals 2

    .line 957
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/audible/application/stats/StatsManager$15;

    invoke-direct {v1, p0, p1}, Lcom/audible/application/stats/StatsManager$15;-><init>(Lcom/audible/application/stats/StatsManager;Lcom/audible/mobile/stats/domain/ListeningStatsEvent;)V

    const/4 p1, 0x0

    invoke-direct {v0, v1, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 967
    iget-object p1, p0, Lcom/audible/application/stats/StatsManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public recordListeningStatsEvent(Lcom/audible/mobile/stats/domain/ListeningStatsEvent;Z)V
    .locals 1

    .line 1152
    iget-object v0, p0, Lcom/audible/application/stats/StatsManager;->mStatsRepository:Lcom/audible/application/stats/storage/IStatsCachedUploadRepository;

    if-nez v0, :cond_0

    const-string p1, "mStatsRepository was never assigned a repository"

    .line 1153
    invoke-static {p1}, Lcom/audible/application/stats/util/LogController;->w(Ljava/lang/String;)V

    return-void

    .line 1156
    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/audible/application/stats/storage/IStatsCachedUploadRepository;->recordListeningStatsEvent(Lcom/audible/mobile/stats/domain/ListeningStatsEvent;Z)V

    return-void
.end method

.method protected resetCachedBadges()V
    .locals 2

    .line 629
    iget-object v0, p0, Lcom/audible/application/stats/StatsManager;->mCachedBadgeDataLockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 630
    :try_start_0
    iget-object v1, p0, Lcom/audible/application/stats/StatsManager;->mCachedGetBadges:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 631
    iget-object v1, p0, Lcom/audible/application/stats/StatsManager;->mCachedGetListeningLevels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 632
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public resetDatabase()V
    .locals 2

    const-string v0, "StatsManager resetDatabase resetting all database tables and clearing current listening data"

    .line 610
    invoke-static {v0}, Lcom/audible/application/stats/util/LogController;->d(Ljava/lang/String;)V

    .line 611
    iget-object v0, p0, Lcom/audible/application/stats/StatsManager;->mListeningStatsEventLockObject:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 612
    :try_start_0
    iput-object v1, p0, Lcom/audible/application/stats/StatsManager;->mListeningStatsEvent:Lcom/audible/mobile/stats/domain/ListeningStatsEvent;

    .line 613
    iput-object v1, p0, Lcom/audible/application/stats/StatsManager;->mCurrentStatsMediaItem:Lcom/audible/application/stats/integration/StatsMediaItem;

    .line 614
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 616
    iget-object v0, p0, Lcom/audible/application/stats/StatsManager;->mBadgeMetadataRepository:Lcom/audible/application/stats/storage/IBadgeMetadataRepository;

    if-eqz v0, :cond_0

    .line 617
    invoke-interface {v0}, Lcom/audible/application/stats/storage/IBadgeMetadataRepository;->clearAll()V

    .line 619
    :cond_0
    iget-object v0, p0, Lcom/audible/application/stats/StatsManager;->mCustomerStatsRepository:Lcom/audible/application/stats/storage/ICustomerStatsRepository;

    if-eqz v0, :cond_1

    .line 620
    invoke-interface {v0}, Lcom/audible/application/stats/storage/ICustomerStatsRepository;->clearAll()V

    .line 622
    :cond_1
    invoke-virtual {p0}, Lcom/audible/application/stats/StatsManager;->resetCachedBadges()V

    .line 623
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/audible/application/stats/StatsManager;->mCustomerBadgeProgressMap:Ljava/util/Map;

    .line 624
    iget-object v0, p0, Lcom/audible/application/stats/StatsManager;->mNotificationManager:Lcom/audible/application/stats/util/IStatsNotificationManager;

    invoke-interface {v0}, Lcom/audible/application/stats/util/IStatsNotificationManager;->resetBadgeEarnedNotification()V

    return-void

    :catchall_0
    move-exception v1

    .line 614
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public resetDatabaseMetadata()V
    .locals 1

    const-string v0, "StatsManager resetDatabaseMetadata resetting badgemetadata & levelmetadata"

    .line 598
    invoke-static {v0}, Lcom/audible/application/stats/util/LogController;->d(Ljava/lang/String;)V

    .line 599
    iget-object v0, p0, Lcom/audible/application/stats/StatsManager;->mBadgeMetadataRepository:Lcom/audible/application/stats/storage/IBadgeMetadataRepository;

    if-eqz v0, :cond_0

    .line 600
    invoke-interface {v0}, Lcom/audible/application/stats/storage/IBadgeMetadataRepository;->clearAll()V

    .line 602
    :cond_0
    invoke-virtual {p0}, Lcom/audible/application/stats/StatsManager;->resetCachedBadges()V

    .line 603
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/audible/application/stats/StatsManager;->mCustomerBadgeProgressMap:Ljava/util/Map;

    .line 604
    iget-object v0, p0, Lcom/audible/application/stats/StatsManager;->mNotificationManager:Lcom/audible/application/stats/util/IStatsNotificationManager;

    invoke-interface {v0}, Lcom/audible/application/stats/util/IStatsNotificationManager;->resetBadgeEarnedNotification()V

    return-void
.end method

.method public resetSdcardBadgeIcons()V
    .locals 6

    const-string v0, "StatsManager resetSdcardBadgeIcons deleting locally cached badge icons"

    .line 577
    invoke-static {v0}, Lcom/audible/application/stats/util/LogController;->d(Ljava/lang/String;)V

    .line 578
    iget-object v0, p0, Lcom/audible/application/stats/StatsManager;->mBadgeMetadataRepository:Lcom/audible/application/stats/storage/IBadgeMetadataRepository;

    if-eqz v0, :cond_3

    .line 579
    invoke-interface {v0}, Lcom/audible/application/stats/storage/IBadgeMetadataRepository;->getBadgeMetadata()Ljava/util/List;

    move-result-object v0

    .line 580
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/audible/mobile/stats/domain/BadgeMetadata;

    .line 581
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/audible/application/stats/StatsManager;->mImageCacheDirectory:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/audible/mobile/stats/domain/BadgeMetadata;->getBadgeImageId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 582
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 583
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 585
    :cond_1
    invoke-virtual {v1}, Lcom/audible/mobile/stats/domain/BadgeMetadata;->getLevelMetadata()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/audible/mobile/stats/domain/LevelMetadata;

    .line 586
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/audible/application/stats/StatsManager;->mImageCacheDirectory:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/audible/mobile/stats/domain/LevelMetadata;->getBadgeImageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 587
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 588
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_3
    return-void
.end method

.method public startListening(Lcom/audible/application/stats/integration/StatsMediaItem;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 805
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StatsManager#startListening -- Record start listening : asin "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/audible/application/stats/integration/StatsMediaItem;->getAsin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/audible/application/stats/util/LogController;->d(Ljava/lang/String;)V

    .line 806
    iget-object v0, p0, Lcom/audible/application/stats/StatsManager;->mPositionTracker:Lcom/audible/application/stats/util/IStatsPositionTracker;

    invoke-interface {v0}, Lcom/audible/application/stats/util/IStatsPositionTracker;->getCurrentPosition()Ljava/lang/Long;

    move-result-object v0

    .line 808
    iget-object v1, p0, Lcom/audible/application/stats/StatsManager;->mListeningStatsEventLockObject:Ljava/lang/Object;

    monitor-enter v1

    .line 809
    :try_start_0
    iget-object v2, p0, Lcom/audible/application/stats/StatsManager;->mCurrentStatsMediaItem:Lcom/audible/application/stats/integration/StatsMediaItem;

    invoke-virtual {p1, v2}, Lcom/audible/application/stats/integration/StatsMediaItem;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 810
    iput-object p1, p0, Lcom/audible/application/stats/StatsManager;->mCurrentStatsMediaItem:Lcom/audible/application/stats/integration/StatsMediaItem;

    .line 811
    new-instance v2, Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;

    invoke-direct {v2}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;-><init>()V

    .line 812
    invoke-virtual {p1}, Lcom/audible/application/stats/integration/StatsMediaItem;->getAsin()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;->withAsin(Ljava/lang/String;)Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;

    const/4 v3, 0x1

    .line 813
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;->withAsinOwned(Ljava/lang/Boolean;)Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;

    .line 814
    invoke-virtual {p1}, Lcom/audible/application/stats/integration/StatsMediaItem;->getLengthOfBook()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;->withLengthOfBook(Ljava/lang/Long;)Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;

    .line 815
    invoke-virtual {p1}, Lcom/audible/application/stats/integration/StatsMediaItem;->getNarrationSpeed()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;->withNarrationSpeed(Ljava/lang/Float;)Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;

    .line 816
    invoke-virtual {p1}, Lcom/audible/application/stats/integration/StatsMediaItem;->isPlayingImmersionReading()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;->withPlayingImmersionReading(Ljava/lang/Boolean;)Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;

    .line 817
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;->withLocalTimezone(Ljava/util/TimeZone;)Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;

    .line 818
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;->withListeningStartTime(Ljava/util/Date;)Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;

    .line 819
    iget-object v3, p0, Lcom/audible/application/stats/StatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;->withContext(Landroid/content/Context;)Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;

    .line 820
    invoke-virtual {p1}, Lcom/audible/application/stats/integration/StatsMediaItem;->getDeliveryType()Lcom/audible/application/stats/integration/DeliveryType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;->withDeliveryType(Lcom/audible/application/stats/integration/DeliveryType;)Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;

    .line 821
    invoke-virtual {p1}, Lcom/audible/application/stats/integration/StatsMediaItem;->getContentDiscoverySources()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;->withContentDiscoverySources(Ljava/util/List;)Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;

    .line 822
    invoke-virtual {p1}, Lcom/audible/application/stats/integration/StatsMediaItem;->getSubscriptionId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;->withSubscriptionId(Ljava/lang/String;)Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;

    .line 823
    iget-object p1, p0, Lcom/audible/application/stats/StatsManager;->mStoreType:Lcom/audible/application/stats/integration/StoreType;

    invoke-virtual {v2, p1}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;->withStore(Lcom/audible/application/stats/integration/StoreType;)Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;

    .line 824
    invoke-virtual {v2, v0}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;->withEventStartPosition(Ljava/lang/Long;)Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;

    .line 825
    invoke-virtual {v2}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;->build()Lcom/audible/mobile/stats/domain/ListeningStatsEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/application/stats/StatsManager;->mListeningStatsEvent:Lcom/audible/mobile/stats/domain/ListeningStatsEvent;

    .line 826
    invoke-virtual {p1}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->setListeningTimeUpdateTimer()V

    .line 827
    iget-object p1, p0, Lcom/audible/application/stats/StatsManager;->mListeningStatsEvent:Lcom/audible/mobile/stats/domain/ListeningStatsEvent;

    invoke-virtual {p0, p1}, Lcom/audible/application/stats/StatsManager;->recordEvent(Lcom/audible/mobile/stats/domain/ListeningStatsEvent;)V

    .line 829
    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public stopAndRecreateListeningEvent()V
    .locals 2

    .line 860
    iget-object v0, p0, Lcom/audible/application/stats/StatsManager;->mListeningStatsEventLockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 861
    :try_start_0
    iget-object v1, p0, Lcom/audible/application/stats/StatsManager;->mListeningStatsEvent:Lcom/audible/mobile/stats/domain/ListeningStatsEvent;

    if-eqz v1, :cond_0

    .line 862
    iget-object v1, p0, Lcom/audible/application/stats/StatsManager;->mCurrentStatsMediaItem:Lcom/audible/application/stats/integration/StatsMediaItem;

    .line 863
    invoke-virtual {p0}, Lcom/audible/application/stats/StatsManager;->stopListening()V

    .line 864
    invoke-virtual {p0, v1}, Lcom/audible/application/stats/StatsManager;->startListening(Lcom/audible/application/stats/integration/StatsMediaItem;)V

    .line 866
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public stopListening()V
    .locals 4

    .line 835
    iget-object v0, p0, Lcom/audible/application/stats/StatsManager;->mListeningStatsEventLockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 836
    :try_start_0
    iget-object v1, p0, Lcom/audible/application/stats/StatsManager;->mListeningStatsEvent:Lcom/audible/mobile/stats/domain/ListeningStatsEvent;

    if-eqz v1, :cond_1

    .line 837
    iget-object v1, p0, Lcom/audible/application/stats/StatsManager;->mListeningStatsEvent:Lcom/audible/mobile/stats/domain/ListeningStatsEvent;

    const/4 v2, 0x0

    .line 838
    iput-object v2, p0, Lcom/audible/application/stats/StatsManager;->mListeningStatsEvent:Lcom/audible/mobile/stats/domain/ListeningStatsEvent;

    .line 839
    iput-object v2, p0, Lcom/audible/application/stats/StatsManager;->mCurrentStatsMediaItem:Lcom/audible/application/stats/integration/StatsMediaItem;

    .line 840
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->setListeningEndTime(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/audible/application/stats/StatsManager;->mPositionTracker:Lcom/audible/application/stats/util/IStatsPositionTracker;

    invoke-interface {v2}, Lcom/audible/application/stats/util/IStatsPositionTracker;->getCurrentPosition()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->setEventEndPosition(Ljava/lang/Long;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 841
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StatsManager#stopListening -- Record stop listening : asin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->getAsin()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", start pos "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 842
    invoke-virtual {v1}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->getEventStartPosition()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", end pos "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->getEventEndPosition()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 843
    invoke-virtual {v1}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->getEventType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", start time "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->getListeningStartTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", end time "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 844
    invoke-virtual {v1}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->getListeningEndTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 841
    invoke-static {v2}, Lcom/audible/application/stats/util/LogController;->d(Ljava/lang/String;)V

    .line 847
    invoke-virtual {v1}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->cancelListeningTimeUpdateTimer()V

    .line 848
    iget-object v2, p0, Lcom/audible/application/stats/StatsManager;->mStatsRepository:Lcom/audible/application/stats/storage/IStatsCachedUploadRepository;

    iget-object v3, p0, Lcom/audible/application/stats/StatsManager;->mPositionTracker:Lcom/audible/application/stats/util/IStatsPositionTracker;

    invoke-interface {v3}, Lcom/audible/application/stats/util/IStatsPositionTracker;->getCurrentPosition()Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/audible/application/stats/storage/IStatsCachedUploadRepository;->updateEventListeningPosition(Ljava/lang/Long;)V

    .line 849
    invoke-virtual {p0, v1}, Lcom/audible/application/stats/StatsManager;->completeRecordAndDispatch(Lcom/audible/mobile/stats/domain/ListeningStatsEvent;)V

    goto :goto_0

    .line 851
    :cond_0
    invoke-virtual {p0}, Lcom/audible/application/stats/StatsManager;->clearDBStaleEvent()V

    .line 854
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public syncBadgeMetadata()V
    .locals 1

    .line 639
    iget-object v0, p0, Lcom/audible/application/stats/StatsManager;->mBadgeMetadataRepository:Lcom/audible/application/stats/storage/IBadgeMetadataRepository;

    if-nez v0, :cond_0

    const-string v0, "mBadgeMetadataRepository was never assigned a repository"

    .line 640
    invoke-static {v0}, Lcom/audible/application/stats/util/LogController;->w(Ljava/lang/String;)V

    return-void

    .line 647
    :cond_0
    iget-object v0, p0, Lcom/audible/application/stats/StatsManager;->mPreventNetworkCalls:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const-string v0, "StatsManager syncBadgeMetadata() called"

    .line 651
    invoke-static {v0}, Lcom/audible/application/stats/util/LogController;->d(Ljava/lang/String;)V

    .line 655
    invoke-virtual {p0}, Lcom/audible/application/stats/StatsManager;->fetchBadgeMetadata()V

    return-void
.end method

.method public syncCustomerAggregatedStats(Z)V
    .locals 4

    .line 662
    iget-object v0, p0, Lcom/audible/application/stats/StatsManager;->mCustomerStatsRepository:Lcom/audible/application/stats/storage/ICustomerStatsRepository;

    if-nez v0, :cond_0

    const-string p1, "mCustomerStatsRepository was never assigned a repository"

    .line 663
    invoke-static {p1}, Lcom/audible/application/stats/util/LogController;->w(Ljava/lang/String;)V

    return-void

    .line 670
    :cond_0
    iget-object v0, p0, Lcom/audible/application/stats/StatsManager;->mPreventNetworkCalls:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 673
    iget-object p1, p0, Lcom/audible/application/stats/StatsManager;->mNeedToFetchAggregatedStats:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    .line 677
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StatsManager syncCustomerAggregatedStats() called, throttled call = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/audible/application/stats/util/LogController;->d(Ljava/lang/String;)V

    if-eqz p1, :cond_3

    .line 683
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 684
    iget-wide v2, p0, Lcom/audible/application/stats/StatsManager;->timeOfLastAggregatedStatsCall:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x927c0

    cmp-long p1, v0, v2

    if-lez p1, :cond_2

    const-string p1, "Stats&Badges Sync Aggregated Stats(Throttled) fetchCustomerAggregatedStats executing"

    .line 687
    invoke-static {p1}, Lcom/audible/application/stats/util/LogController;->d(Ljava/lang/String;)V

    .line 688
    invoke-virtual {p0}, Lcom/audible/application/stats/StatsManager;->fetchCustomerAggregatedStats()V

    goto :goto_0

    :cond_2
    const-string p1, "Stats&Badges Sync Aggregated Stats(Throttled) THROTTLED"

    .line 690
    invoke-static {p1}, Lcom/audible/application/stats/util/LogController;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 694
    :cond_3
    invoke-virtual {p0}, Lcom/audible/application/stats/StatsManager;->fetchCustomerAggregatedStats()V

    :goto_0
    return-void
.end method

.method public syncCustomerBadgeProgress(Z)V
    .locals 1

    .line 702
    iget-object v0, p0, Lcom/audible/application/stats/StatsManager;->mCustomerStatsRepository:Lcom/audible/application/stats/storage/ICustomerStatsRepository;

    if-nez v0, :cond_0

    const-string p1, "mCustomerStatsRepository was never assigned a repository"

    .line 703
    invoke-static {p1}, Lcom/audible/application/stats/util/LogController;->w(Ljava/lang/String;)V

    return-void

    .line 707
    :cond_0
    iget-object v0, p0, Lcom/audible/application/stats/StatsManager;->mShowBadgeEarnedNotificationOnNextUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 712
    iget-object p1, p0, Lcom/audible/application/stats/StatsManager;->mPreventNetworkCalls:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    const-string p1, "StatsManager syncCustomerBadgeProgress() called"

    .line 716
    invoke-static {p1}, Lcom/audible/application/stats/util/LogController;->d(Ljava/lang/String;)V

    .line 720
    invoke-virtual {p0}, Lcom/audible/application/stats/StatsManager;->fetchCustomerBadgeProgress()V

    return-void
.end method

.method public updateCurrentListeningEventTime()V
    .locals 3

    .line 1919
    iget-object v0, p0, Lcom/audible/application/stats/StatsManager;->mListeningStatsEventLockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 1920
    :try_start_0
    iget-object v1, p0, Lcom/audible/application/stats/StatsManager;->mListeningStatsEvent:Lcom/audible/mobile/stats/domain/ListeningStatsEvent;

    if-eqz v1, :cond_0

    .line 1921
    iget-object v1, p0, Lcom/audible/application/stats/StatsManager;->mListeningStatsEvent:Lcom/audible/mobile/stats/domain/ListeningStatsEvent;

    invoke-virtual {v1}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->setEventUpdatedTime()V

    .line 1922
    iget-object v1, p0, Lcom/audible/application/stats/StatsManager;->mListeningStatsEvent:Lcom/audible/mobile/stats/domain/ListeningStatsEvent;

    invoke-virtual {v1}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->getEventUpdatedTime()Ljava/util/Date;

    move-result-object v1

    iget-object v2, p0, Lcom/audible/application/stats/StatsManager;->mPositionTracker:Lcom/audible/application/stats/util/IStatsPositionTracker;

    invoke-interface {v2}, Lcom/audible/application/stats/util/IStatsPositionTracker;->getCurrentPosition()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/audible/application/stats/StatsManager;->updateDBEvent(Ljava/util/Date;Ljava/lang/Long;)V

    .line 1924
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected updateDBEvent(Ljava/util/Date;Ljava/lang/Long;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1944
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/audible/application/stats/StatsManager$17;

    invoke-direct {v1, p0, p1, p2}, Lcom/audible/application/stats/StatsManager$17;-><init>(Lcom/audible/application/stats/StatsManager;Ljava/util/Date;Ljava/lang/Long;)V

    const/4 p1, 0x0

    invoke-direct {v0, v1, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 1951
    iget-object p1, p0, Lcom/audible/application/stats/StatsManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public updateStatsEndpoint(Ljava/net/URI;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1931
    iget-object v0, p0, Lcom/audible/application/stats/StatsManager;->mStatsNetworking:Lcom/audible/application/stats/StatsNetworking;

    invoke-virtual {v0, p1}, Lcom/audible/application/stats/StatsNetworking;->updateStatsEndpoint(Ljava/net/URI;)V

    :cond_0
    return-void
.end method
