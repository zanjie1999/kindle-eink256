.class public Lcom/amazon/nwstd/cms/NewsstandCMSLink;
.super Ljava/lang/Object;
.source "NewsstandCMSLink.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/nwstd/cms/NewsstandCMSLink$FutureAction;,
        Lcom/amazon/nwstd/cms/NewsstandCMSLink$FutureActionType;,
        Lcom/amazon/nwstd/cms/NewsstandCMSLink$CMSConnectionCallback;,
        Lcom/amazon/nwstd/cms/NewsstandCMSLink$LazyHolder;
    }
.end annotation


# static fields
.field private static final ACTION_ITEM_ID:Ljava/lang/String; = "id_librarybanner"

.field private static final EMPTY_GROUP_KEY:Ljava/lang/String; = "EMPTY_GROUP_KEY"

.field private static final LIBRARY_BANNER_FILENAME:Ljava/lang/String; = "libraryBanner.jpg"

.field private static final MAXIMUM_NUMBER_RETRIES:I = 0x1

.field private static final MAXIMUM_RETRY_DELAY:J = 0x64L

.field private static final NEWSSTAND_CNX_KEY:Ljava/lang/String; = "com.amazon.newsstand"

.field private static final NEWSSTAND_LIBRARY_BANNER_ID:Ljava/lang/String; = "NEWSSTAND_LIBRARY_BANNER_ID"

.field private static final PARENT_GROUP:Ljava/lang/String; = "Newsstand"

.field private static final REQUEST_TIMEOUT:J = 0x2710L

.field private static final RETRY_DELAY:J = 0xaL

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActionsHandler:Landroid/os/Handler;

.field private final mActionsHandlerLock:Ljava/lang/Object;

.field private final mActionsHandlerThread:Landroid/os/HandlerThread;

.field private final mCMSApi:Lcom/amazon/kindle/cms/api/CMSApi;

.field private mCMSServer:Lcom/amazon/kindle/cms/api/CMSServer;

.field private final mCMSServerLock:Ljava/lang/Object;

.field private final mConnectionCallback:Lcom/amazon/kindle/cms/api/CMSApi$ConnectionCallback;

.field private mContext:Landroid/content/Context;

.field private mFutureActionsQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/amazon/nwstd/cms/NewsstandCMSLink$FutureAction;",
            ">;"
        }
    .end annotation
.end field

.field private final mNewsstandUri:Landroid/net/Uri;

.field private mReconnectionRetryTimestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const-class v0, Lcom/amazon/nwstd/cms/NewsstandCMSLink;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/nwstd/cms/NewsstandCMSLink;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amazon/nwstd/cms/NewsstandCMSLink;->mCMSServerLock:Ljava/lang/Object;

    .line 123
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/amazon/nwstd/cms/NewsstandCMSLink;->mFutureActionsQueue:Ljava/util/Queue;

    const/4 v0, 0x0

    .line 133
    iput-object v0, p0, Lcom/amazon/nwstd/cms/NewsstandCMSLink;->mActionsHandler:Landroid/os/Handler;

    .line 139
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/amazon/nwstd/cms/NewsstandCMSLink;->mActionsHandlerLock:Ljava/lang/Object;

    .line 144
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "NewsstandCMSLink.ActionsThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/amazon/nwstd/cms/NewsstandCMSLink;->mActionsHandlerThread:Landroid/os/HandlerThread;

    const-wide/16 v1, 0x0

    .line 149
    iput-wide v1, p0, Lcom/amazon/nwstd/cms/NewsstandCMSLink;->mReconnectionRetryTimestamp:J

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 171
    :goto_0
    invoke-static {v1}, Lcom/amazon/nwstd/utils/Assertion;->Assert(Z)V

    .line 172
    invoke-static {p1}, Lcom/amazon/kindle/cms/api/CMSApi;->instance(Landroid/content/Context;)Lcom/amazon/kindle/cms/api/CMSApi;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/nwstd/cms/NewsstandCMSLink;->mCMSApi:Lcom/amazon/kindle/cms/api/CMSApi;

    .line 173
    new-instance v1, Lcom/amazon/nwstd/cms/CMSCallback;

    invoke-direct {v1, p0, p1}, Lcom/amazon/nwstd/cms/CMSCallback;-><init>(Lcom/amazon/nwstd/cms/NewsstandCMSLink;Landroid/content/Context;)V

    const-string v2, "com.amazon.newsstand"

    .line 174
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/amazon/nwstd/cms/NewsstandCMSLink;->mNewsstandUri:Landroid/net/Uri;

    .line 175
    iget-object v3, p0, Lcom/amazon/nwstd/cms/NewsstandCMSLink;->mCMSApi:Lcom/amazon/kindle/cms/api/CMSApi;

    invoke-virtual {v3, v2, v1}, Lcom/amazon/kindle/cms/api/CMSApi;->registerCallback(Landroid/net/Uri;Lcom/amazon/kindle/cms/api/Callback;)V

    .line 176
    new-instance v1, Lcom/amazon/nwstd/cms/NewsstandCMSLink$CMSConnectionCallback;

    invoke-direct {v1, p0, v0}, Lcom/amazon/nwstd/cms/NewsstandCMSLink$CMSConnectionCallback;-><init>(Lcom/amazon/nwstd/cms/NewsstandCMSLink;Lcom/amazon/nwstd/cms/NewsstandCMSLink$1;)V

    iput-object v1, p0, Lcom/amazon/nwstd/cms/NewsstandCMSLink;->mConnectionCallback:Lcom/amazon/kindle/cms/api/CMSApi$ConnectionCallback;

    .line 177
    iput-object p1, p0, Lcom/amazon/nwstd/cms/NewsstandCMSLink;->mContext:Landroid/content/Context;

    .line 178
    iget-object p1, p0, Lcom/amazon/nwstd/cms/NewsstandCMSLink;->mActionsHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 179
    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Lcom/amazon/nwstd/cms/NewsstandCMSLink;->mActionsHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/amazon/nwstd/cms/NewsstandCMSLink;->mActionsHandler:Landroid/os/Handler;

    .line 184
    :try_start_0
    iget-object p1, p0, Lcom/amazon/nwstd/cms/NewsstandCMSLink;->mCMSApi:Lcom/amazon/kindle/cms/api/CMSApi;

    iget-object v0, p0, Lcom/amazon/nwstd/cms/NewsstandCMSLink;->mConnectionCallback:Lcom/amazon/kindle/cms/api/CMSApi$ConnectionCallback;

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/cms/api/CMSApi;->connect(Lcom/amazon/kindle/cms/api/CMSApi$ConnectionCallback;)V
    :try_end_0
    .catch Lcom/amazon/kindle/cms/api/CommunicationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 186
    :catch_0
    sget-object p1, Lcom/amazon/nwstd/cms/NewsstandCMSLink;->TAG:Ljava/lang/String;

    const/16 v0, 0x10

    const-string v1, "Connection attempt in NewsstandCMSLink constructor failed."

    invoke-static {p1, v0, v1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 187
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    const-string v0, "NewsstandUpsellBanner"

    const-string v1, "UpsellBannerCMSConnectionError"

    invoke-virtual {p1, v0, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-direct {p0}, Lcom/amazon/nwstd/cms/NewsstandCMSLink;->postBackgroundTriggerReconnection()V

    :goto_1
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/amazon/nwstd/cms/NewsstandCMSLink$1;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/amazon/nwstd/cms/NewsstandCMSLink;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/amazon/nwstd/cms/NewsstandCMSLink;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/amazon/nwstd/cms/NewsstandCMSLink;->postBackgroundTriggerReconnection()V

    return-void
.end method

.method static synthetic access$300(Lcom/amazon/nwstd/cms/NewsstandCMSLink;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/amazon/nwstd/cms/NewsstandCMSLink;->executeFutureActions()V

    return-void
.end method

.method static synthetic access$400(Lcom/amazon/nwstd/cms/NewsstandCMSLink;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/amazon/nwstd/cms/NewsstandCMSLink;->triggerReconnection()V

    return-void
.end method

.method static synthetic access$500(Lcom/amazon/nwstd/cms/NewsstandCMSLink;)Ljava/lang/Object;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/amazon/nwstd/cms/NewsstandCMSLink;->mCMSServerLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$600(Lcom/amazon/nwstd/cms/NewsstandCMSLink;)Lcom/amazon/kindle/cms/api/CMSServer;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/amazon/nwstd/cms/NewsstandCMSLink;->mCMSServer:Lcom/amazon/kindle/cms/api/CMSServer;

    return-object p0
.end method

.method static synthetic access$602(Lcom/amazon/nwstd/cms/NewsstandCMSLink;Lcom/amazon/kindle/cms/api/CMSServer;)Lcom/amazon/kindle/cms/api/CMSServer;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/amazon/nwstd/cms/NewsstandCMSLink;->mCMSServer:Lcom/amazon/kindle/cms/api/CMSServer;

    return-object p1
.end method

.method static synthetic access$700(Lcom/amazon/nwstd/cms/NewsstandCMSLink;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/amazon/nwstd/cms/NewsstandCMSLink;->postBackgroundExecuteActions()V

    return-void
.end method

.method static synthetic access$802(Lcom/amazon/nwstd/cms/NewsstandCMSLink;J)J
    .locals 0

    .line 35
    iput-wide p1, p0, Lcom/amazon/nwstd/cms/NewsstandCMSLink;->mReconnectionRetryTimestamp:J

    return-wide p1
.end method

.method static synthetic access$900()Ljava/lang/String;
    .locals 1

    .line 35
    sget-object v0, Lcom/amazon/nwstd/cms/NewsstandCMSLink;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private connectWithDelayBetweenRetries(JJJ)Z
    .locals 14

    move-object v1, p0

    .line 413
    invoke-static {}, Lcom/amazon/nwstd/utils/Assertion;->isDebug()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 414
    invoke-static {}, Lcom/amazon/nwstd/utils/ThreadUtils;->isRunningOnUiThread()Z

    move-result v0

    xor-int/2addr v0, v2

    const-string v3, "Do not run CMS reconnect on the main thread !"

    invoke-static {v0, v3}, Lcom/amazon/nwstd/utils/Assertion;->Assert(ZLjava/lang/String;)V

    :cond_0
    const-wide/16 v3, 0x0

    cmp-long v0, p1, v3

    if-lez v0, :cond_1

    .line 420
    :try_start_0
    invoke-static/range {p1 .. p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    const/4 v5, 0x0

    move-wide v7, v3

    const/4 v6, 0x0

    :cond_2
    :goto_0
    if-gt v6, v2, :cond_7

    cmp-long v9, v7, v3

    if-lez v9, :cond_3

    .line 432
    :try_start_1
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 442
    :catch_1
    :cond_3
    :try_start_2
    iget-object v10, v1, Lcom/amazon/nwstd/cms/NewsstandCMSLink;->mCMSServerLock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_2
    .catch Lcom/amazon/kindle/cms/api/CommunicationException; {:try_start_2 .. :try_end_2} :catch_2

    .line 443
    :try_start_3
    iget-object v0, v1, Lcom/amazon/nwstd/cms/NewsstandCMSLink;->mCMSServer:Lcom/amazon/kindle/cms/api/CMSServer;

    if-nez v0, :cond_4

    .line 444
    iget-object v0, v1, Lcom/amazon/nwstd/cms/NewsstandCMSLink;->mCMSApi:Lcom/amazon/kindle/cms/api/CMSApi;

    iget-object v11, v1, Lcom/amazon/nwstd/cms/NewsstandCMSLink;->mConnectionCallback:Lcom/amazon/kindle/cms/api/CMSApi$ConnectionCallback;

    invoke-virtual {v0, v11}, Lcom/amazon/kindle/cms/api/CMSApi;->connect(Lcom/amazon/kindle/cms/api/CMSApi$ConnectionCallback;)V

    .line 446
    :cond_4
    monitor-exit v10

    return v2

    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Lcom/amazon/kindle/cms/api/CommunicationException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    nop

    .line 449
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v10, "NewsstandUpsellBanner"

    const-string v11, "UpsellBannerCMSConnectionError"

    invoke-virtual {v0, v10, v11}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    const-wide/16 v10, 0x64

    if-nez v9, :cond_5

    move-wide/from16 v7, p3

    goto :goto_1

    :cond_5
    cmp-long v0, v7, v10

    if-gez v0, :cond_6

    int-to-long v12, v6

    mul-long v12, v12, p5

    add-long/2addr v7, v12

    :cond_6
    :goto_1
    cmp-long v0, v7, v10

    if-lez v0, :cond_2

    move-wide v7, v10

    goto :goto_0

    :cond_7
    return v5
.end method

.method private executeFutureActions()V
    .locals 5

    .line 507
    :goto_0
    iget-object v0, p0, Lcom/amazon/nwstd/cms/NewsstandCMSLink;->mCMSServerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 508
    :try_start_0
    iget-object v1, p0, Lcom/amazon/nwstd/cms/NewsstandCMSLink;->mCMSServer:Lcom/amazon/kindle/cms/api/CMSServer;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 511
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_1

    .line 513
    invoke-direct {p0}, Lcom/amazon/nwstd/cms/NewsstandCMSLink;->triggerReconnection()V

    return-void

    .line 516
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/amazon/nwstd/cms/NewsstandCMSLink;->mFutureActionsQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 517
    iget-object v0, p0, Lcom/amazon/nwstd/cms/NewsstandCMSLink;->mFutureActionsQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/nwstd/cms/NewsstandCMSLink$FutureAction;

    .line 519
    sget-object v1, Lcom/amazon/nwstd/cms/NewsstandCMSLink$3;->$SwitchMap$com$amazon$nwstd$cms$NewsstandCMSLink$FutureActionType:[I

    iget-object v4, v0, Lcom/amazon/nwstd/cms/NewsstandCMSLink$FutureAction;->type:Lcom/amazon/nwstd/cms/NewsstandCMSLink$FutureActionType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v1, v1, v4

    if-eq v1, v2, :cond_3

    const/4 v0, 0x2

    if-eq v1, v0, :cond_2

    const/4 v0, 0x0

    goto :goto_3

    .line 524
    :cond_2
    invoke-direct {p0}, Lcom/amazon/nwstd/cms/NewsstandCMSLink;->removeLibraryBanner()Z

    move-result v0

    goto :goto_3

    .line 521
    :cond_3
    iget-object v0, v0, Lcom/amazon/nwstd/cms/NewsstandCMSLink$FutureAction;->element:Lcom/amazon/nwstd/cms/CMSLibraryBanner;

    invoke-direct {p0, v0}, Lcom/amazon/nwstd/cms/NewsstandCMSLink;->pushLibraryBanner(Lcom/amazon/nwstd/cms/CMSLibraryBanner;)Z

    move-result v0

    :goto_3
    if-eqz v0, :cond_1

    .line 528
    iget-object v0, p0, Lcom/amazon/nwstd/cms/NewsstandCMSLink;->mFutureActionsQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    goto :goto_2

    .line 532
    :cond_4
    iget-object v1, p0, Lcom/amazon/nwstd/cms/NewsstandCMSLink;->mFutureActionsQueue:Ljava/util/Queue;

    monitor-enter v1

    .line 533
    :try_start_1
    iget-object v0, p0, Lcom/amazon/nwstd/cms/NewsstandCMSLink;->mFutureActionsQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 534
    monitor-exit v1

    return-void

    .line 536
    :cond_5
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 511
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public static getInstance()Lcom/amazon/nwstd/cms/NewsstandCMSLink;
    .locals 1

    .line 163
    invoke-static {}, Lcom/amazon/nwstd/cms/NewsstandCMSLink$LazyHolder;->access$100()Lcom/amazon/nwstd/cms/NewsstandCMSLink;

    move-result-object v0

    return-object v0
.end method

.method private static getLibraryBannerImageUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .line 326
    new-instance v0, Lcom/amazon/nwstd/resources/DynamicResourcesDiskStorage;

    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/nwstd/resources/DynamicResourcesDiskStorage;-><init>(Landroid/content/Context;)V

    :try_start_0
    const-string v1, "libraryBanner.jpg"

    .line 330
    invoke-virtual {v0, p0, v1}, Lcom/amazon/nwstd/resources/DynamicResourcesDiskStorage;->copyInternalFileExternally(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 331
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private internalPushLibraryBanner(Lcom/amazon/nwstd/cms/CMSLibraryBanner;)Z
    .locals 14

    .line 257
    iget-object v0, p0, Lcom/amazon/nwstd/cms/NewsstandCMSLink;->mCMSServer:Lcom/amazon/kindle/cms/api/CMSServer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/amazon/nwstd/utils/Assertion;->Assert(Z)V

    .line 258
    invoke-virtual {p1}, Lcom/amazon/nwstd/cms/CMSLibraryBanner;->getImagePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/nwstd/cms/NewsstandCMSLink;->getLibraryBannerImageUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    const/16 v0, 0x10

    if-nez v9, :cond_1

    .line 261
    sget-object v1, Lcom/amazon/nwstd/cms/NewsstandCMSLink;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot push library banner with missing image : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v0, p1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    return v2

    .line 265
    :cond_1
    new-instance v5, Lcom/amazon/kindle/cms/api/SortableName;

    invoke-virtual {p1}, Lcom/amazon/nwstd/cms/CMSLibraryBanner;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/amazon/nwstd/cms/CMSLibraryBanner;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/amazon/nwstd/cms/CMSLibraryBanner;->getLocale()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v3, v4, v6}, Lcom/amazon/kindle/cms/api/SortableName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    new-instance v13, Lcom/amazon/kindle/cms/api/ActionItem;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 267
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {p1}, Lcom/amazon/nwstd/cms/CMSLibraryBanner;->getBannerDataAsJSON()Ljava/lang/String;

    move-result-object v11

    const-string v4, "id_librarybanner"

    const-string v6, "NEWSSTAND_LIBRARY_BANNER_ID"

    const-string v7, "Newsstand"

    const-string v8, "EMPTY_GROUP_KEY"

    const-string v12, "."

    move-object v3, v13

    invoke-direct/range {v3 .. v12}, Lcom/amazon/kindle/cms/api/ActionItem;-><init>(Ljava/lang/String;Lcom/amazon/kindle/cms/api/SortableName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 279
    :try_start_0
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v3

    const-string v4, "NewsstandUpsellBanner"

    const-string v5, "UpsellBannerCMSUpdate"

    invoke-virtual {v3, v4, v5}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    iget-object v3, p0, Lcom/amazon/nwstd/cms/NewsstandCMSLink;->mCMSServerLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Lcom/amazon/kindle/cms/api/CommunicationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 281
    :try_start_1
    iget-object v4, p0, Lcom/amazon/nwstd/cms/NewsstandCMSLink;->mCMSServer:Lcom/amazon/kindle/cms/api/CMSServer;

    iget-object v5, p0, Lcom/amazon/nwstd/cms/NewsstandCMSLink;->mNewsstandUri:Landroid/net/Uri;

    invoke-interface {v4, v5}, Lcom/amazon/kindle/cms/api/CMSServer;->beginUpdate(Landroid/net/Uri;)Lcom/amazon/kindle/cms/api/Update;

    move-result-object p1

    .line 282
    invoke-interface {p1, v13}, Lcom/amazon/kindle/cms/api/Update;->updateItem(Lcom/amazon/kindle/cms/api/Item;)V

    .line 283
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_3

    .line 293
    :try_start_2
    invoke-interface {p1}, Lcom/amazon/kindle/cms/api/Update;->close()V

    .line 295
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    const-string v3, "NewsstandUpsellBanner"

    const-string v4, "UpsellBannerCMSUpdateSuccessful"

    invoke-virtual {p1, v3, v4}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/amazon/kindle/cms/api/CommunicationException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catchall_0
    move-exception v1

    .line 283
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Lcom/amazon/kindle/cms/api/CommunicationException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v1

    goto :goto_3

    :catch_0
    move-exception v1

    .line 289
    :try_start_5
    sget-object v3, Lcom/amazon/nwstd/cms/NewsstandCMSLink;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot push CMS action item : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz p1, :cond_2

    .line 293
    :try_start_6
    invoke-interface {p1}, Lcom/amazon/kindle/cms/api/Update;->close()V
    :try_end_6
    .catch Lcom/amazon/kindle/cms/api/CommunicationException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 298
    sget-object v1, Lcom/amazon/nwstd/cms/NewsstandCMSLink;->TAG:Ljava/lang/String;

    const-string v3, "Error closing cms connection"

    invoke-static {v1, v0, v3, p1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 299
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    const-string v0, "NewsstandUpsellBanner"

    const-string v1, "UpsellBannerCMSConnectionError"

    invoke-virtual {p1, v0, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_2
    move-exception v1

    .line 286
    :try_start_7
    sget-object v3, Lcom/amazon/nwstd/cms/NewsstandCMSLink;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot push CMS action item : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 287
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    const-string v3, "NewsstandUpsellBanner"

    const-string v4, "UpsellBannerCMSConnectionError"

    invoke-virtual {v1, v3, v4}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz p1, :cond_2

    .line 293
    :try_start_8
    invoke-interface {p1}, Lcom/amazon/kindle/cms/api/Update;->close()V
    :try_end_8
    .catch Lcom/amazon/kindle/cms/api/CommunicationException; {:try_start_8 .. :try_end_8} :catch_1

    :cond_2
    :goto_1
    const/4 v1, 0x0

    :cond_3
    :goto_2
    return v1

    :goto_3
    if-eqz p1, :cond_4

    :try_start_9
    invoke-interface {p1}, Lcom/amazon/kindle/cms/api/Update;->close()V
    :try_end_9
    .catch Lcom/amazon/kindle/cms/api/CommunicationException; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_4

    :catch_3
    move-exception p1

    .line 298
    sget-object v2, Lcom/amazon/nwstd/cms/NewsstandCMSLink;->TAG:Ljava/lang/String;

    const-string v3, "Error closing cms connection"

    invoke-static {v2, v0, v3, p1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 299
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    const-string v0, "NewsstandUpsellBanner"

    const-string v2, "UpsellBannerCMSConnectionError"

    invoke-virtual {p1, v0, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    :cond_4
    :goto_4
    throw v1
.end method

.method private internalRemoveLibraryBanner()Z
    .locals 7

    const/4 v0, 0x0

    const/16 v1, 0x10

    const/4 v2, 0x0

    .line 367
    :try_start_0
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v3

    const-string v4, "NewsstandUpsellBanner"

    const-string v5, "UpsellBannerCMSDelete"

    invoke-virtual {v3, v4, v5}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    iget-object v3, p0, Lcom/amazon/nwstd/cms/NewsstandCMSLink;->mCMSServerLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Lcom/amazon/kindle/cms/api/CommunicationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 369
    :try_start_1
    iget-object v4, p0, Lcom/amazon/nwstd/cms/NewsstandCMSLink;->mCMSServer:Lcom/amazon/kindle/cms/api/CMSServer;

    iget-object v5, p0, Lcom/amazon/nwstd/cms/NewsstandCMSLink;->mNewsstandUri:Landroid/net/Uri;

    invoke-interface {v4, v5}, Lcom/amazon/kindle/cms/api/CMSServer;->beginUpdate(Landroid/net/Uri;)Lcom/amazon/kindle/cms/api/Update;

    move-result-object v2

    const-string v4, "."

    .line 370
    invoke-static {}, Lcom/amazon/kindle/cms/api/ActionItem;->getLibraryUri()Landroid/net/Uri;

    move-result-object v5

    const-string v6, "id_librarybanner"

    invoke-interface {v2, v4, v5, v6}, Lcom/amazon/kindle/cms/api/Update;->deleteItem(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 371
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 381
    :try_start_2
    invoke-interface {v2}, Lcom/amazon/kindle/cms/api/Update;->close()V

    .line 383
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v2

    const-string v4, "NewsstandUpsellBanner"

    const-string v5, "UpsellBannerCMSDeleteSuccessful"

    invoke-virtual {v2, v4, v5}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/amazon/kindle/cms/api/CommunicationException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v4

    .line 371
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4
    :try_end_4
    .catch Lcom/amazon/kindle/cms/api/CommunicationException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 377
    :try_start_5
    sget-object v4, Lcom/amazon/nwstd/cms/NewsstandCMSLink;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot remove CMS action item :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v1, v3}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v2, :cond_1

    .line 381
    :try_start_6
    invoke-interface {v2}, Lcom/amazon/kindle/cms/api/Update;->close()V
    :try_end_6
    .catch Lcom/amazon/kindle/cms/api/CommunicationException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    :catch_1
    move-exception v2

    .line 386
    sget-object v3, Lcom/amazon/nwstd/cms/NewsstandCMSLink;->TAG:Ljava/lang/String;

    const-string v4, "Error closing cms connection"

    invoke-static {v3, v1, v4, v2}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 387
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    const-string v2, "NewsstandUpsellBanner"

    const-string v3, "UpsellBannerCMSConnectionError"

    invoke-virtual {v1, v2, v3}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v3

    .line 374
    :try_start_7
    sget-object v4, Lcom/amazon/nwstd/cms/NewsstandCMSLink;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot remove CMS action item :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v1, v3}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 375
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v3

    const-string v4, "NewsstandUpsellBanner"

    const-string v5, "UpsellBannerCMSConnectionError"

    invoke-virtual {v3, v4, v5}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v2, :cond_1

    .line 381
    :try_start_8
    invoke-interface {v2}, Lcom/amazon/kindle/cms/api/Update;->close()V
    :try_end_8
    .catch Lcom/amazon/kindle/cms/api/CommunicationException; {:try_start_8 .. :try_end_8} :catch_1

    :cond_1
    :goto_0
    return v0

    :goto_1
    if-eqz v2, :cond_2

    :try_start_9
    invoke-interface {v2}, Lcom/amazon/kindle/cms/api/Update;->close()V
    :try_end_9
    .catch Lcom/amazon/kindle/cms/api/CommunicationException; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_2

    :catch_3
    move-exception v2

    .line 386
    sget-object v3, Lcom/amazon/nwstd/cms/NewsstandCMSLink;->TAG:Ljava/lang/String;

    const-string v4, "Error closing cms connection"

    invoke-static {v3, v1, v4, v2}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 387
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    const-string v2, "NewsstandUpsellBanner"

    const-string v3, "UpsellBannerCMSConnectionError"

    invoke-virtual {v1, v2, v3}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    :cond_2
    :goto_2
    throw v0
.end method

.method private postBackgroundExecuteActions()V
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/amazon/nwstd/cms/NewsstandCMSLink;->mActionsHandler:Landroid/os/Handler;

    new-instance v1, Lcom/amazon/nwstd/cms/NewsstandCMSLink$1;

    invoke-direct {v1, p0}, Lcom/amazon/nwstd/cms/NewsstandCMSLink$1;-><init>(Lcom/amazon/nwstd/cms/NewsstandCMSLink;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private postBackgroundTriggerReconnection()V
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/amazon/nwstd/cms/NewsstandCMSLink;->mActionsHandler:Landroid/os/Handler;

    new-instance v1, Lcom/amazon/nwstd/cms/NewsstandCMSLink$2;

    invoke-direct {v1, p0}, Lcom/amazon/nwstd/cms/NewsstandCMSLink$2;-><init>(Lcom/amazon/nwstd/cms/NewsstandCMSLink;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private pushLibraryBanner(Lcom/amazon/nwstd/cms/CMSLibraryBanner;)Z
    .locals 5

    .line 236
    invoke-static {}, Lcom/amazon/nwstd/utils/Assertion;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    invoke-static {}, Lcom/amazon/nwstd/utils/ThreadUtils;->isRunningOnUiThread()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Do not run CMS link commands on the main thread !"

    invoke-static {v0, v1}, Lcom/amazon/nwstd/utils/Assertion;->Assert(ZLjava/lang/String;)V

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/amazon/nwstd/cms/NewsstandCMSLink;->mCMSServerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 241
    :try_start_0
    iget-object v1, p0, Lcom/amazon/nwstd/cms/NewsstandCMSLink;->mCMSServer:Lcom/amazon/kindle/cms/api/CMSServer;

    if-nez v1, :cond_1

    .line 242
    sget-object v1, Lcom/amazon/nwstd/cms/NewsstandCMSLink;->TAG:Ljava/lang/String;

    const/16 v2, 0x8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CMS Server unavailable, banner data will be pushed when the connection is reestablished.[banner = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v2, p1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p1, 0x0

    .line 244
    monitor-exit v0

    return p1

    .line 246
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    invoke-direct {p0, p1}, Lcom/amazon/nwstd/cms/NewsstandCMSLink;->internalPushLibraryBanner(Lcom/amazon/nwstd/cms/CMSLibraryBanner;)Z

    move-result p1

    return p1

    :catchall_0
    move-exception p1

    .line 246
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private removeLibraryBanner()Z
    .locals 4

    .line 343
    invoke-static {}, Lcom/amazon/nwstd/utils/Assertion;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    invoke-static {}, Lcom/amazon/nwstd/utils/ThreadUtils;->isRunningOnUiThread()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Do not run CMS link commands on the main thread !"

    invoke-static {v0, v1}, Lcom/amazon/nwstd/utils/Assertion;->Assert(ZLjava/lang/String;)V

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/amazon/nwstd/cms/NewsstandCMSLink;->mCMSServerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 348
    :try_start_0
    iget-object v1, p0, Lcom/amazon/nwstd/cms/NewsstandCMSLink;->mCMSServer:Lcom/amazon/kindle/cms/api/CMSServer;

    if-nez v1, :cond_1

    .line 349
    sget-object v1, Lcom/amazon/nwstd/cms/NewsstandCMSLink;->TAG:Ljava/lang/String;

    const/16 v2, 0x8

    const-string v3, "CMS Server unavailable, banner data will be removed when the connection is reestablished."

    invoke-static {v1, v2, v3}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v1, 0x0

    .line 350
    monitor-exit v0

    return v1

    .line 352
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 354
    invoke-direct {p0}, Lcom/amazon/nwstd/cms/NewsstandCMSLink;->internalRemoveLibraryBanner()Z

    move-result v0

    return v0

    :catchall_0
    move-exception v1

    .line 352
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private triggerReconnection()V
    .locals 10

    .line 477
    invoke-static {}, Lcom/amazon/nwstd/utils/Assertion;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 478
    invoke-static {}, Lcom/amazon/nwstd/utils/ThreadUtils;->isRunningOnUiThread()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Do not run CMS reconnect on the main thread !"

    invoke-static {v0, v1}, Lcom/amazon/nwstd/utils/Assertion;->Assert(ZLjava/lang/String;)V

    .line 480
    :cond_0
    iget-object v0, p0, Lcom/amazon/nwstd/cms/NewsstandCMSLink;->mCMSServerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 481
    :try_start_0
    iget-object v1, p0, Lcom/amazon/nwstd/cms/NewsstandCMSLink;->mCMSServer:Lcom/amazon/kindle/cms/api/CMSServer;

    if-eqz v1, :cond_1

    .line 482
    monitor-exit v0

    return-void

    .line 485
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x2710

    sub-long/2addr v1, v3

    iget-wide v3, p0, Lcom/amazon/nwstd/cms/NewsstandCMSLink;->mReconnectionRetryTimestamp:J

    cmp-long v5, v1, v3

    if-lez v5, :cond_3

    .line 486
    iget-wide v1, p0, Lcom/amazon/nwstd/cms/NewsstandCMSLink;->mReconnectionRetryTimestamp:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_2

    .line 487
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    const-string v2, "NewsstandUpsellBanner"

    const-string v3, "UpsellBannerCMSConnectionError"

    invoke-virtual {v1, v2, v3}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/amazon/nwstd/cms/NewsstandCMSLink;->mReconnectionRetryTimestamp:J

    .line 493
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0xa

    const-wide/16 v8, 0xa

    move-object v3, p0

    .line 496
    invoke-direct/range {v3 .. v9}, Lcom/amazon/nwstd/cms/NewsstandCMSLink;->connectWithDelayBetweenRetries(JJJ)Z

    return-void

    .line 491
    :cond_3
    :try_start_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 493
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public pushLibraryBannerAsync(Lcom/amazon/nwstd/cms/CMSLibraryBanner;)V
    .locals 4

    .line 223
    iget-object v0, p0, Lcom/amazon/nwstd/cms/NewsstandCMSLink;->mFutureActionsQueue:Ljava/util/Queue;

    monitor-enter v0

    .line 224
    :try_start_0
    iget-object v1, p0, Lcom/amazon/nwstd/cms/NewsstandCMSLink;->mFutureActionsQueue:Ljava/util/Queue;

    new-instance v2, Lcom/amazon/nwstd/cms/NewsstandCMSLink$FutureAction;

    sget-object v3, Lcom/amazon/nwstd/cms/NewsstandCMSLink$FutureActionType;->ADD:Lcom/amazon/nwstd/cms/NewsstandCMSLink$FutureActionType;

    invoke-direct {v2, p0, v3, p1}, Lcom/amazon/nwstd/cms/NewsstandCMSLink$FutureAction;-><init>(Lcom/amazon/nwstd/cms/NewsstandCMSLink;Lcom/amazon/nwstd/cms/NewsstandCMSLink$FutureActionType;Lcom/amazon/nwstd/cms/CMSLibraryBanner;)V

    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 225
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    invoke-direct {p0}, Lcom/amazon/nwstd/cms/NewsstandCMSLink;->postBackgroundExecuteActions()V

    return-void

    :catchall_0
    move-exception p1

    .line 225
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected removeLibraryBannerAsync()V
    .locals 5

    .line 314
    iget-object v0, p0, Lcom/amazon/nwstd/cms/NewsstandCMSLink;->mFutureActionsQueue:Ljava/util/Queue;

    monitor-enter v0

    .line 315
    :try_start_0
    iget-object v1, p0, Lcom/amazon/nwstd/cms/NewsstandCMSLink;->mFutureActionsQueue:Ljava/util/Queue;

    new-instance v2, Lcom/amazon/nwstd/cms/NewsstandCMSLink$FutureAction;

    sget-object v3, Lcom/amazon/nwstd/cms/NewsstandCMSLink$FutureActionType;->REMOVE:Lcom/amazon/nwstd/cms/NewsstandCMSLink$FutureActionType;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v3, v4}, Lcom/amazon/nwstd/cms/NewsstandCMSLink$FutureAction;-><init>(Lcom/amazon/nwstd/cms/NewsstandCMSLink;Lcom/amazon/nwstd/cms/NewsstandCMSLink$FutureActionType;Lcom/amazon/nwstd/cms/CMSLibraryBanner;)V

    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 316
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    invoke-direct {p0}, Lcom/amazon/nwstd/cms/NewsstandCMSLink;->postBackgroundExecuteActions()V

    return-void

    :catchall_0
    move-exception v1

    .line 316
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
