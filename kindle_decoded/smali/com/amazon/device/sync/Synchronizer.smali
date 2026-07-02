.class final Lcom/amazon/device/sync/Synchronizer;
.super Ljava/lang/Object;
.source "Synchronizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/sync/Synchronizer$SyncActionScope;
    }
.end annotation


# static fields
.field private static final LOCK:Ljava/lang/Object;

.field private static sInstance:Lcom/amazon/device/sync/Synchronizer;


# instance fields
.field private mConnectivityManagerWrapper:Lcom/amazon/whispersync/dcp/framework/ConnectivityManagerWrapper;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation
.end field

.field private mContext:Landroid/content/Context;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation
.end field

.field private mExecutor:Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor;

.field private mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private mIsSubscribedToDirectory:Z

.field private mLog:Lcom/amazon/whispersync/dcp/framework/DCPLog;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation
.end field

.field private final mOperationsIdentifier:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mSystemWrapper:Lcom/amazon/whispersync/dcp/framework/SystemWrapper;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation
.end field

.field private mWhispersyncConfig:Lcom/amazon/device/sync/platform/WhispersyncConfig;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 36
    sput-object v0, Lcom/amazon/device/sync/Synchronizer;->LOCK:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/amazon/device/sync/Synchronizer;->mOperationsIdentifier:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 41
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/sync/Synchronizer;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 52
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/RoboContextWrapper;

    invoke-direct {v0, p1}, Lcom/amazon/whispersync/dcp/framework/RoboContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-static {v0, p0}, Lcom/amazon/device/sync/SyncGuiceHelper;->injectMembers(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    new-instance p1, Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor;

    iget-object v2, p0, Lcom/amazon/device/sync/Synchronizer;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/amazon/device/sync/Synchronizer;->mConnectivityManagerWrapper:Lcom/amazon/whispersync/dcp/framework/ConnectivityManagerWrapper;

    iget-object v4, p0, Lcom/amazon/device/sync/Synchronizer;->mSystemWrapper:Lcom/amazon/whispersync/dcp/framework/SystemWrapper;

    iget-object v5, p0, Lcom/amazon/device/sync/Synchronizer;->mLog:Lcom/amazon/whispersync/dcp/framework/DCPLog;

    iget-object v6, p0, Lcom/amazon/device/sync/Synchronizer;->mWhispersyncConfig:Lcom/amazon/device/sync/platform/WhispersyncConfig;

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor;-><init>(Landroid/content/Context;Lcom/amazon/whispersync/dcp/framework/ConnectivityManagerWrapper;Lcom/amazon/whispersync/dcp/framework/SystemWrapper;Lcom/amazon/whispersync/dcp/framework/DCPLog;Lcom/amazon/device/sync/platform/WhispersyncConfig;)V

    iput-object p1, p0, Lcom/amazon/device/sync/Synchronizer;->mExecutor:Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor;

    const/4 p1, 0x0

    .line 58
    iput-boolean p1, p0, Lcom/amazon/device/sync/Synchronizer;->mIsSubscribedToDirectory:Z

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/device/sync/Synchronizer;)Landroid/content/Context;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/amazon/device/sync/Synchronizer;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/device/sync/Synchronizer;)I
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/amazon/device/sync/Synchronizer;->getNextId()I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/amazon/device/sync/Synchronizer;)Lcom/amazon/whispersync/dcp/framework/DCPLog;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/amazon/device/sync/Synchronizer;->mLog:Lcom/amazon/whispersync/dcp/framework/DCPLog;

    return-object p0
.end method

.method private addOperation(Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor$ListenableOperation;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor$ListenableOperation;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 338
    invoke-direct {p0}, Lcom/amazon/device/sync/Synchronizer;->getExecutor()Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor;->addOperation(Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor$ListenableOperation;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method private addOperation(Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 333
    invoke-direct {p0}, Lcom/amazon/device/sync/Synchronizer;->getExecutor()Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->addOperation(Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method private static combineFutures(Ljava/util/concurrent/Future;Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 353
    new-instance v0, Lcom/amazon/device/sync/Synchronizer$5;

    invoke-direct {v0, p0, p1}, Lcom/amazon/device/sync/Synchronizer$5;-><init>(Ljava/util/concurrent/Future;Ljava/util/concurrent/Future;)V

    return-object v0
.end method

.method private createDirectorySubscription(Ljava/lang/String;)V
    .locals 4

    .line 289
    sget-object v0, Lcom/amazon/device/sync/Synchronizer;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 291
    :try_start_0
    iget-boolean v1, p0, Lcom/amazon/device/sync/Synchronizer;->mIsSubscribedToDirectory:Z

    if-nez v1, :cond_1

    .line 293
    new-instance v1, Lcom/amazon/device/sync/SendDirectorySubscriptionSyncOperation;

    invoke-direct {p0}, Lcom/amazon/device/sync/Synchronizer;->getNextId()I

    move-result v2

    iget-object v3, p0, Lcom/amazon/device/sync/Synchronizer;->mLog:Lcom/amazon/whispersync/dcp/framework/DCPLog;

    invoke-direct {v1, v2, p1, v3}, Lcom/amazon/device/sync/SendDirectorySubscriptionSyncOperation;-><init>(ILjava/lang/String;Lcom/amazon/whispersync/dcp/framework/DCPLog;)V

    .line 296
    iget-object v2, p0, Lcom/amazon/device/sync/Synchronizer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/amazon/device/sync/SendDirectorySubscriptionSyncOperation;->isSubscriptionAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 298
    invoke-virtual {p0, p1}, Lcom/amazon/device/sync/Synchronizer;->sendDirectorySubscription(Ljava/lang/String;)Ljava/util/concurrent/Future;

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 302
    iput-boolean p1, p0, Lcom/amazon/device/sync/Synchronizer;->mIsSubscribedToDirectory:Z

    .line 305
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private getExecutor()Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor;
    .locals 1

    .line 348
    iget-object v0, p0, Lcom/amazon/device/sync/Synchronizer;->mExecutor:Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor;

    return-object v0
.end method

.method public static getInstance()Lcom/amazon/device/sync/Synchronizer;
    .locals 3

    .line 83
    sget-object v0, Lcom/amazon/device/sync/Synchronizer;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 85
    :try_start_0
    sget-object v1, Lcom/amazon/device/sync/Synchronizer;->sInstance:Lcom/amazon/device/sync/Synchronizer;

    if-eqz v1, :cond_0

    .line 90
    sget-object v1, Lcom/amazon/device/sync/Synchronizer;->sInstance:Lcom/amazon/device/sync/Synchronizer;

    monitor-exit v0

    return-object v1

    .line 87
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Synchronizer is not initialized"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 91
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getNextId()I
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/amazon/device/sync/Synchronizer;->mOperationsIdentifier:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    return v0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 2

    .line 63
    sget-object v0, Lcom/amazon/device/sync/Synchronizer;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 65
    :try_start_0
    sget-object v1, Lcom/amazon/device/sync/Synchronizer;->sInstance:Lcom/amazon/device/sync/Synchronizer;

    if-eqz v1, :cond_0

    .line 69
    monitor-exit v0

    return-void

    .line 72
    :cond_0
    new-instance v1, Lcom/amazon/device/sync/Synchronizer;

    invoke-direct {v1, p0}, Lcom/amazon/device/sync/Synchronizer;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/amazon/device/sync/Synchronizer;->sInstance:Lcom/amazon/device/sync/Synchronizer;

    .line 73
    invoke-direct {v1}, Lcom/amazon/device/sync/Synchronizer;->onInitializationCompleted()V

    .line 74
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static initializeForUTs(Landroid/content/Context;)V
    .locals 2

    .line 124
    sget-object v0, Lcom/amazon/device/sync/Synchronizer;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 126
    :try_start_0
    sget-object v1, Lcom/amazon/device/sync/Synchronizer;->sInstance:Lcom/amazon/device/sync/Synchronizer;

    if-eqz v1, :cond_0

    .line 128
    sget-object v1, Lcom/amazon/device/sync/Synchronizer;->sInstance:Lcom/amazon/device/sync/Synchronizer;

    invoke-virtual {v1}, Lcom/amazon/device/sync/Synchronizer;->stop()V

    const/4 v1, 0x0

    .line 129
    sput-object v1, Lcom/amazon/device/sync/Synchronizer;->sInstance:Lcom/amazon/device/sync/Synchronizer;

    .line 131
    :cond_0
    invoke-static {p0}, Lcom/amazon/device/sync/Synchronizer;->initialize(Landroid/content/Context;)V

    .line 132
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private onInitializationCompleted()V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/amazon/device/sync/Synchronizer;->mExecutor:Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor;

    invoke-virtual {v0}, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->start()V

    return-void
.end method


# virtual methods
.method createDatasetSubscription(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 251
    invoke-direct {p0, p1}, Lcom/amazon/device/sync/Synchronizer;->createDirectorySubscription(Ljava/lang/String;)V

    .line 252
    new-instance v0, Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor$ListenableOperation;

    new-instance v10, Lcom/amazon/device/sync/Synchronizer$4;

    invoke-direct {p0}, Lcom/amazon/device/sync/Synchronizer;->getNextId()I

    move-result v3

    iget-object v6, p0, Lcom/amazon/device/sync/Synchronizer;->mLog:Lcom/amazon/whispersync/dcp/framework/DCPLog;

    move-object v1, v10

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    invoke-direct/range {v1 .. v9}, Lcom/amazon/device/sync/Synchronizer$4;-><init>(Lcom/amazon/device/sync/Synchronizer;ILjava/lang/String;Ljava/lang/String;Lcom/amazon/whispersync/dcp/framework/DCPLog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v10}, Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor$ListenableOperation;-><init>(Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;)V

    invoke-direct {p0, v0}, Lcom/amazon/device/sync/Synchronizer;->addOperation(Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor$ListenableOperation;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public downloadAll(Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 186
    invoke-direct {p0, p1}, Lcom/amazon/device/sync/Synchronizer;->createDirectorySubscription(Ljava/lang/String;)V

    .line 188
    new-instance v0, Lcom/amazon/device/sync/Synchronizer$2;

    new-instance v7, Lcom/amazon/device/sync/FetchDatasetsSyncOperation;

    invoke-direct {p0}, Lcom/amazon/device/sync/Synchronizer;->getNextId()I

    move-result v2

    iget-object v4, p0, Lcom/amazon/device/sync/Synchronizer;->mLog:Lcom/amazon/whispersync/dcp/framework/DCPLog;

    iget-object v6, p0, Lcom/amazon/device/sync/Synchronizer;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    move-object v1, v7

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/amazon/device/sync/FetchDatasetsSyncOperation;-><init>(ILjava/lang/String;Lcom/amazon/whispersync/dcp/framework/DCPLog;ZLandroid/content/Context;)V

    invoke-direct {v0, p0, v7, p1, p2}, Lcom/amazon/device/sync/Synchronizer$2;-><init>(Lcom/amazon/device/sync/Synchronizer;Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/amazon/device/sync/Synchronizer;->addOperation(Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor$ListenableOperation;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public downloadDataset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 277
    invoke-direct {p0, p1}, Lcom/amazon/device/sync/Synchronizer;->createDirectorySubscription(Ljava/lang/String;)V

    .line 278
    new-instance v7, Lcom/amazon/device/sync/FetchRecordsSyncOperation;

    invoke-direct {p0}, Lcom/amazon/device/sync/Synchronizer;->getNextId()I

    move-result v1

    iget-object v5, p0, Lcom/amazon/device/sync/Synchronizer;->mLog:Lcom/amazon/whispersync/dcp/framework/DCPLog;

    iget-object v6, p0, Lcom/amazon/device/sync/Synchronizer;->mContext:Landroid/content/Context;

    move-object v0, v7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/amazon/device/sync/FetchRecordsSyncOperation;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whispersync/dcp/framework/DCPLog;Landroid/content/Context;)V

    invoke-direct {p0, v7}, Lcom/amazon/device/sync/Synchronizer;->addOperation(Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public downloadDirectory(Ljava/lang/String;Lcom/amazon/whispersync/Reason;)Ljava/util/concurrent/Future;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/whispersync/Reason;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 234
    invoke-direct {p0, p1}, Lcom/amazon/device/sync/Synchronizer;->createDirectorySubscription(Ljava/lang/String;)V

    .line 235
    new-instance v7, Lcom/amazon/device/sync/FetchDatasetsSyncOperation;

    invoke-direct {p0}, Lcom/amazon/device/sync/Synchronizer;->getNextId()I

    move-result v1

    iget-object v4, p0, Lcom/amazon/device/sync/Synchronizer;->mLog:Lcom/amazon/whispersync/dcp/framework/DCPLog;

    iget-object v6, p0, Lcom/amazon/device/sync/Synchronizer;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    move-object v0, v7

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/amazon/device/sync/FetchDatasetsSyncOperation;-><init>(ILjava/lang/String;Lcom/amazon/whispersync/Reason;Lcom/amazon/whispersync/dcp/framework/DCPLog;ZLandroid/content/Context;)V

    invoke-direct {p0, v7}, Lcom/amazon/device/sync/Synchronizer;->addOperation(Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/amazon/device/sync/Synchronizer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public onNetworkChanged()V
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/amazon/device/sync/Synchronizer;->mExecutor:Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor;

    invoke-virtual {v0}, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->onNetworkStateChanged()V

    return-void
.end method

.method reset()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 96
    sget-object v0, Lcom/amazon/device/sync/Synchronizer;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 100
    :try_start_0
    iput-boolean v1, p0, Lcom/amazon/device/sync/Synchronizer;->mIsSubscribedToDirectory:Z

    .line 102
    iget-object v2, p0, Lcom/amazon/device/sync/Synchronizer;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 103
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    iput-object v2, p0, Lcom/amazon/device/sync/Synchronizer;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 105
    iget-object v2, p0, Lcom/amazon/device/sync/Synchronizer;->mExecutor:Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor;

    invoke-virtual {v2}, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->shutdownNow()V

    .line 106
    new-instance v2, Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor;

    iget-object v4, p0, Lcom/amazon/device/sync/Synchronizer;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/amazon/device/sync/Synchronizer;->mConnectivityManagerWrapper:Lcom/amazon/whispersync/dcp/framework/ConnectivityManagerWrapper;

    iget-object v6, p0, Lcom/amazon/device/sync/Synchronizer;->mSystemWrapper:Lcom/amazon/whispersync/dcp/framework/SystemWrapper;

    iget-object v7, p0, Lcom/amazon/device/sync/Synchronizer;->mLog:Lcom/amazon/whispersync/dcp/framework/DCPLog;

    iget-object v8, p0, Lcom/amazon/device/sync/Synchronizer;->mWhispersyncConfig:Lcom/amazon/device/sync/platform/WhispersyncConfig;

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor;-><init>(Landroid/content/Context;Lcom/amazon/whispersync/dcp/framework/ConnectivityManagerWrapper;Lcom/amazon/whispersync/dcp/framework/SystemWrapper;Lcom/amazon/whispersync/dcp/framework/DCPLog;Lcom/amazon/device/sync/platform/WhispersyncConfig;)V

    iput-object v2, p0, Lcom/amazon/device/sync/Synchronizer;->mExecutor:Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor;

    .line 111
    invoke-virtual {v2}, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->start()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    :try_start_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v2

    .line 116
    iget-object v3, p0, Lcom/amazon/device/sync/Synchronizer;->mLog:Lcom/amazon/whispersync/dcp/framework/DCPLog;

    const-string v4, "Exception during clear()."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v1

    invoke-virtual {v3, v4, v5}, Lcom/amazon/whispersync/dcp/framework/DCPLog;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 117
    throw v2

    .line 119
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public sendDirectorySubscription(Ljava/lang/String;)Ljava/util/concurrent/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 310
    new-instance v0, Lcom/amazon/device/sync/SendDirectorySubscriptionSyncOperation;

    invoke-direct {p0}, Lcom/amazon/device/sync/Synchronizer;->getNextId()I

    move-result v1

    iget-object v2, p0, Lcom/amazon/device/sync/Synchronizer;->mLog:Lcom/amazon/whispersync/dcp/framework/DCPLog;

    invoke-direct {v0, v1, p1, v2}, Lcom/amazon/device/sync/SendDirectorySubscriptionSyncOperation;-><init>(ILjava/lang/String;Lcom/amazon/whispersync/dcp/framework/DCPLog;)V

    invoke-direct {p0, v0}, Lcom/amazon/device/sync/Synchronizer;->addOperation(Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public stop()V
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/amazon/device/sync/Synchronizer;->mExecutor:Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor;

    invoke-virtual {v0}, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->stop()V

    return-void
.end method

.method public synchronizeAll(Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 143
    invoke-virtual {p0, p1, p2}, Lcom/amazon/device/sync/Synchronizer;->uploadAll(Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 144
    invoke-virtual {p0, p1, p2}, Lcom/amazon/device/sync/Synchronizer;->downloadAll(Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 146
    invoke-static {v0, p1}, Lcom/amazon/device/sync/Synchronizer;->combineFutures(Ljava/util/concurrent/Future;Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public synchronizeDataset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 242
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/device/sync/Synchronizer;->uploadDataset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 243
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/device/sync/Synchronizer;->downloadDataset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 245
    invoke-static {v0, p1}, Lcom/amazon/device/sync/Synchronizer;->combineFutures(Ljava/util/concurrent/Future;Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public synchronizeDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 214
    new-instance v0, Lcom/amazon/device/sync/Synchronizer$3;

    new-instance v1, Lcom/amazon/device/sync/SendDatasetsSyncOperation;

    invoke-direct {p0}, Lcom/amazon/device/sync/Synchronizer;->getNextId()I

    move-result v2

    iget-object v3, p0, Lcom/amazon/device/sync/Synchronizer;->mLog:Lcom/amazon/whispersync/dcp/framework/DCPLog;

    invoke-direct {v1, v2, p1, p2, v3}, Lcom/amazon/device/sync/SendDatasetsSyncOperation;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/amazon/whispersync/dcp/framework/DCPLog;)V

    invoke-direct {v0, p0, v1, p1}, Lcom/amazon/device/sync/Synchronizer$3;-><init>(Lcom/amazon/device/sync/Synchronizer;Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/amazon/device/sync/Synchronizer;->addOperation(Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor$ListenableOperation;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public uploadAll(Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 151
    invoke-direct {p0, p1}, Lcom/amazon/device/sync/Synchronizer;->createDirectorySubscription(Ljava/lang/String;)V

    .line 153
    new-instance v0, Lcom/amazon/device/sync/Synchronizer$1;

    new-instance v1, Lcom/amazon/device/sync/SendDatasetsSyncOperation;

    invoke-direct {p0}, Lcom/amazon/device/sync/Synchronizer;->getNextId()I

    move-result v2

    iget-object v3, p0, Lcom/amazon/device/sync/Synchronizer;->mLog:Lcom/amazon/whispersync/dcp/framework/DCPLog;

    invoke-direct {v1, v2, p1, p2, v3}, Lcom/amazon/device/sync/SendDatasetsSyncOperation;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/amazon/whispersync/dcp/framework/DCPLog;)V

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/amazon/device/sync/Synchronizer$1;-><init>(Lcom/amazon/device/sync/Synchronizer;Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/amazon/device/sync/Synchronizer;->addOperation(Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor$ListenableOperation;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public uploadDataset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 271
    invoke-direct {p0, p1}, Lcom/amazon/device/sync/Synchronizer;->createDirectorySubscription(Ljava/lang/String;)V

    .line 272
    new-instance v6, Lcom/amazon/device/sync/SendRecordsSyncOperation;

    invoke-direct {p0}, Lcom/amazon/device/sync/Synchronizer;->getNextId()I

    move-result v1

    iget-object v5, p0, Lcom/amazon/device/sync/Synchronizer;->mLog:Lcom/amazon/whispersync/dcp/framework/DCPLog;

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/amazon/device/sync/SendRecordsSyncOperation;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whispersync/dcp/framework/DCPLog;)V

    invoke-direct {p0, v6}, Lcom/amazon/device/sync/Synchronizer;->addOperation(Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public uploadDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 228
    invoke-direct {p0, p1}, Lcom/amazon/device/sync/Synchronizer;->createDirectorySubscription(Ljava/lang/String;)V

    .line 229
    new-instance v0, Lcom/amazon/device/sync/SendDatasetsSyncOperation;

    invoke-direct {p0}, Lcom/amazon/device/sync/Synchronizer;->getNextId()I

    move-result v1

    iget-object v2, p0, Lcom/amazon/device/sync/Synchronizer;->mLog:Lcom/amazon/whispersync/dcp/framework/DCPLog;

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/amazon/device/sync/SendDatasetsSyncOperation;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/amazon/whispersync/dcp/framework/DCPLog;)V

    invoke-direct {p0, v0}, Lcom/amazon/device/sync/Synchronizer;->addOperation(Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public waitUntilStop(J)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 325
    iget-object v0, p0, Lcom/amazon/device/sync/Synchronizer;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 326
    iget-object v0, p0, Lcom/amazon/device/sync/Synchronizer;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p1, p2, v1}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    .line 328
    iget-object v0, p0, Lcom/amazon/device/sync/Synchronizer;->mExecutor:Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->waitUntilStop(J)Z

    move-result p1

    return p1
.end method
