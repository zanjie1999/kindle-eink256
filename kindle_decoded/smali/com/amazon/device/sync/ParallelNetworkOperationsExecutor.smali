.class Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;
.super Ljava/lang/Object;
.source "ParallelNetworkOperationsExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;
    }
.end annotation


# static fields
.field private static final NUMBER:Ljava/util/regex/Pattern;


# instance fields
.field private final mConnectivityManager:Lcom/amazon/whispersync/dcp/framework/ConnectivityManagerWrapper;

.field private final mContext:Landroid/content/Context;

.field private final mFailedFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field protected final mLog:Lcom/amazon/whispersync/dcp/framework/DCPLog;

.field private final mNetworkOperationsThreadPoolSize:I

.field private mNetworkStateChangeEvent:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mOperationsExecutorService:Ljava/util/concurrent/ExecutorService;

.field private final mPendingOperations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList<",
            "Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mSystemWrapper:Lcom/amazon/whispersync/dcp/framework/SystemWrapper;

.field private final mTimeout:Lcom/amazon/device/sync/ExecutorTimeout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "\\d+"

    .line 37
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->NUMBER:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/whispersync/dcp/framework/ConnectivityManagerWrapper;Lcom/amazon/whispersync/dcp/framework/SystemWrapper;Lcom/amazon/whispersync/dcp/framework/DCPLog;Lcom/amazon/device/sync/platform/WhispersyncConfig;)V
    .locals 2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    .line 42
    iput-object v1, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->mLock:Ljava/lang/Object;

    .line 43
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->mPendingOperations:Ljava/util/HashMap;

    .line 45
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->mStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 49
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->mNetworkStateChangeEvent:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 50
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/whispersync/dcp/framework/FinishedFuture;->completed(Ljava/lang/Object;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->mFailedFuture:Ljava/util/concurrent/Future;

    .line 59
    iput-object p1, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->mContext:Landroid/content/Context;

    .line 60
    iput-object p2, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->mConnectivityManager:Lcom/amazon/whispersync/dcp/framework/ConnectivityManagerWrapper;

    .line 61
    iput-object p4, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->mLog:Lcom/amazon/whispersync/dcp/framework/DCPLog;

    .line 62
    iput-object p3, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->mSystemWrapper:Lcom/amazon/whispersync/dcp/framework/SystemWrapper;

    .line 63
    new-instance p1, Lcom/amazon/device/sync/ExecutorTimeout;

    iget-object p2, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->mSystemWrapper:Lcom/amazon/whispersync/dcp/framework/SystemWrapper;

    invoke-direct {p1, p2}, Lcom/amazon/device/sync/ExecutorTimeout;-><init>(Lcom/amazon/whispersync/dcp/framework/SystemWrapper;)V

    iput-object p1, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->mTimeout:Lcom/amazon/device/sync/ExecutorTimeout;

    .line 64
    invoke-interface {p5}, Lcom/amazon/device/sync/platform/WhispersyncConfig;->getNetworkOperationsThreadPoolSize()I

    move-result p1

    iput p1, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->mNetworkOperationsThreadPoolSize:I

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;)Ljava/lang/Object;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;)Ljava/util/HashMap;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->mPendingOperations:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->mStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$400(Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;)Lcom/amazon/device/sync/ExecutorTimeout;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->mTimeout:Lcom/amazon/device/sync/ExecutorTimeout;

    return-object p0
.end method

.method static synthetic access$500(Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->mNetworkStateChangeEvent:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$600(Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;)Z
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->processOperation(Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->submitOperation(Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;)V

    return-void
.end method

.method private processOperation(Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;)Z
    .locals 9

    const-string v0, " and will be retried"

    const-string v1, ""

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 288
    :try_start_0
    iget-object v4, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->mLog:Lcom/amazon/whispersync/dcp/framework/DCPLog;

    invoke-virtual {p1, v4, v5}, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;->execute(Landroid/content/Context;Lcom/amazon/whispersync/dcp/framework/DCPLog;)V

    .line 289
    iget-object v4, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->mTimeout:Lcom/amazon/device/sync/ExecutorTimeout;

    invoke-virtual {v4}, Lcom/amazon/device/sync/ExecutorTimeout;->onOperationSucceeded()V
    :try_end_0
    .catch Lcom/amazon/device/sync/failures/AuthenticationFailedException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lcom/amazon/device/sync/failures/AccessDeniedException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lcom/amazon/device/sync/failures/ThrottlingException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/amazon/device/sync/rpc/RPCException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/amazon/whispersync/ResourceNotAvailableException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_8

    :catchall_0
    move-exception v0

    const/4 v3, 0x1

    goto/16 :goto_9

    :catch_0
    move-exception v0

    .line 371
    :try_start_1
    invoke-static {p1}, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;->access$300(Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;)V

    .line 372
    iget-object v1, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->mLog:Lcom/amazon/whispersync/dcp/framework/DCPLog;

    const-string v4, "%s failed due to RuntimeException"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;->getDescription()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-virtual {v1, v0, v4, v5}, Lcom/amazon/whispersync/dcp/framework/DCPLog;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto/16 :goto_8

    :catch_1
    move-exception v4

    .line 359
    :try_start_2
    iget-object v5, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->mTimeout:Lcom/amazon/device/sync/ExecutorTimeout;

    invoke-virtual {v5}, Lcom/amazon/device/sync/ExecutorTimeout;->onNetworkError()V

    .line 360
    iget-object v5, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->mTimeout:Lcom/amazon/device/sync/ExecutorTimeout;

    invoke-virtual {v5}, Lcom/amazon/device/sync/ExecutorTimeout;->isRetriable()Z

    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v5, :cond_0

    .line 363
    :try_start_3
    invoke-static {p1}, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;->access$300(Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    const/4 v5, 0x1

    .line 365
    :goto_0
    :try_start_4
    iget-object v6, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->mLog:Lcom/amazon/whispersync/dcp/framework/DCPLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "%s failed due to IO Exception"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;->getDescription()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v3

    invoke-virtual {v6, v4, v0, v1}, Lcom/amazon/whispersync/dcp/framework/DCPLog;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v5, :cond_7

    goto/16 :goto_5

    :catchall_1
    move-exception v0

    move v3, v5

    goto/16 :goto_9

    :catch_2
    move-exception v0

    .line 352
    :try_start_5
    iget-object v1, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1, v0}, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;->handleResourceNotAvailableException(Landroid/content/Context;Lcom/amazon/whispersync/ResourceNotAvailableException;)V

    .line 353
    invoke-static {p1}, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;->access$300(Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;)V

    .line 355
    iget-object v1, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->mLog:Lcom/amazon/whispersync/dcp/framework/DCPLog;

    const-string v4, "%s failed due to ResourceNotAvailableException"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;->getDescription()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-virtual {v1, v0, v4, v5}, Lcom/amazon/whispersync/dcp/framework/DCPLog;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_8

    :catch_3
    move-exception v0

    .line 345
    invoke-virtual {p1}, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;->generateLocalStoreException()Lcom/amazon/device/sync/failures/LocalStoreException;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;->access$800(Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;Ljava/lang/Exception;)V

    .line 347
    iget-object v1, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->mLog:Lcom/amazon/whispersync/dcp/framework/DCPLog;

    const-string v4, "%s failed due to SQLException"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;->getDescription()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-virtual {v1, v0, v4, v5}, Lcom/amazon/whispersync/dcp/framework/DCPLog;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto/16 :goto_8

    :catchall_2
    move-exception v0

    goto/16 :goto_9

    :catch_4
    move-exception v4

    .line 323
    :try_start_6
    invoke-virtual {v4}, Lcom/amazon/device/sync/rpc/RPCException;->getHttpStatus()I

    move-result v5

    div-int/lit8 v5, v5, 0x64
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const/4 v6, 0x4

    if-ne v5, v6, :cond_2

    .line 327
    :try_start_7
    invoke-static {p1}, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;->access$300(Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;)V

    .line 328
    iget-object v0, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->mLog:Lcom/amazon/whispersync/dcp/framework/DCPLog;

    const-string v1, "%s failed with code %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;->getDescription()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-virtual {v4}, Lcom/amazon/device/sync/rpc/RPCException;->getHttpStatus()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v0, v4, v1, v5}, Lcom/amazon/whispersync/dcp/framework/DCPLog;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    const/4 v5, 0x0

    goto :goto_4

    .line 332
    :cond_2
    :try_start_8
    iget-object v5, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->mTimeout:Lcom/amazon/device/sync/ExecutorTimeout;

    invoke-virtual {v5}, Lcom/amazon/device/sync/ExecutorTimeout;->onServerError()V

    .line 333
    iget-object v5, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->mTimeout:Lcom/amazon/device/sync/ExecutorTimeout;

    invoke-virtual {v5}, Lcom/amazon/device/sync/ExecutorTimeout;->isRetriable()Z

    move-result v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-nez v5, :cond_3

    .line 336
    :try_start_9
    invoke-static {p1}, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;->access$300(Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    const/4 v5, 0x0

    goto :goto_2

    :cond_3
    const/4 v5, 0x1

    .line 338
    :goto_2
    :try_start_a
    iget-object v6, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->mLog:Lcom/amazon/whispersync/dcp/framework/DCPLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "%s failed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_4

    goto :goto_3

    :cond_4
    move-object v0, v1

    :goto_3
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;->getDescription()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v3

    invoke-virtual {v6, v4, v0, v1}, Lcom/amazon/whispersync/dcp/framework/DCPLog;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :goto_4
    if-eqz v5, :cond_7

    .line 378
    :goto_5
    invoke-virtual {p1, v2}, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;->setShouldRetry(Z)V

    goto/16 :goto_8

    :catch_5
    move-exception v4

    .line 309
    :try_start_b
    iget-object v5, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->mLog:Lcom/amazon/whispersync/dcp/framework/DCPLog;

    const-string v6, "%s has been throttled by server"

    new-array v7, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;->getDescription()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-virtual {v5, v6, v7}, Lcom/amazon/whispersync/dcp/framework/DCPLog;->i(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 310
    iget-object v5, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->mTimeout:Lcom/amazon/device/sync/ExecutorTimeout;

    invoke-virtual {v4}, Lcom/amazon/device/sync/failures/ThrottlingException;->getRetryAfterTime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/amazon/device/sync/ExecutorTimeout;->onThrottlingException(J)V

    .line 311
    iget-object v5, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->mTimeout:Lcom/amazon/device/sync/ExecutorTimeout;

    invoke-virtual {v5}, Lcom/amazon/device/sync/ExecutorTimeout;->isRetriable()Z

    move-result v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-nez v5, :cond_5

    .line 314
    :try_start_c
    invoke-static {p1}, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;->access$300(Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    const/4 v5, 0x0

    goto :goto_6

    :cond_5
    const/4 v5, 0x1

    .line 316
    :goto_6
    :try_start_d
    iget-object v6, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->mLog:Lcom/amazon/whispersync/dcp/framework/DCPLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "%s failed due to Throttling Exception"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_6

    goto :goto_7

    :cond_6
    move-object v0, v1

    :goto_7
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;->getDescription()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v3

    invoke-virtual {v6, v4, v0, v1}, Lcom/amazon/whispersync/dcp/framework/DCPLog;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    if-eqz v5, :cond_7

    goto :goto_5

    :catch_6
    move-exception v0

    .line 302
    :try_start_e
    iget-object v1, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->mLog:Lcom/amazon/whispersync/dcp/framework/DCPLog;

    const-string v4, "\'%s\' has been rejected since Access Denied at the server"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;->getDescription()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-virtual {v1, v4, v5}, Lcom/amazon/whispersync/dcp/framework/DCPLog;->i(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 303
    iget-object v1, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->mTimeout:Lcom/amazon/device/sync/ExecutorTimeout;

    invoke-virtual {v1}, Lcom/amazon/device/sync/ExecutorTimeout;->onServerError()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 305
    :try_start_f
    invoke-static {p1, v0}, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;->access$800(Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;Ljava/lang/Exception;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    goto :goto_8

    .line 294
    :catch_7
    :try_start_10
    iget-object v0, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->mLog:Lcom/amazon/whispersync/dcp/framework/DCPLog;

    const-string v1, "\'%s\' has been rejected since Authentication Failed at the server"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;->getDescription()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-virtual {v0, v1, v4}, Lcom/amazon/whispersync/dcp/framework/DCPLog;->i(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 296
    iget-object v0, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->mTimeout:Lcom/amazon/device/sync/ExecutorTimeout;

    invoke-virtual {v0}, Lcom/amazon/device/sync/ExecutorTimeout;->onServerError()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 298
    :try_start_11
    invoke-static {p1}, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;->access$300(Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    :cond_7
    :goto_8
    return v3

    :goto_9
    if-eqz v3, :cond_8

    .line 378
    invoke-virtual {p1, v2}, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;->setShouldRetry(Z)V

    :cond_8
    throw v0
.end method

.method private submitOperation(Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;)V
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->mOperationsExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$1;-><init>(Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method


# virtual methods
.method public addOperation(Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;)Ljava/util/concurrent/Future;
    .locals 4
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

    .line 154
    iget-object v0, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 156
    :try_start_0
    iget-object v1, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->mStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    .line 159
    iget-object p1, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->mFailedFuture:Ljava/util/concurrent/Future;

    monitor-exit v0

    return-object p1

    .line 161
    :cond_0
    iget-object v1, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->mPendingOperations:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;->getLockKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 163
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 164
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 165
    iget-object v2, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->mPendingOperations:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;->getLockKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    goto :goto_0

    .line 170
    :cond_1
    iget-object v1, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->mPendingOperations:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;->getLockKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    .line 172
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 174
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;

    invoke-virtual {p1}, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;->getFuture()Ljava/util/concurrent/Future;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 178
    :cond_2
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 181
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    .line 184
    invoke-direct {p0, p1}, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->submitOperation(Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;)V

    .line 187
    :cond_3
    invoke-virtual {p1}, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;->getFuture()Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 181
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected isNetworkAvailable()Z
    .locals 1

    .line 432
    iget-object v0, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->mConnectivityManager:Lcom/amazon/whispersync/dcp/framework/ConnectivityManagerWrapper;

    invoke-static {v0}, Lcom/amazon/whispersync/dcp/framework/ConnectivityUtils;->isConnected(Lcom/amazon/whispersync/dcp/framework/ConnectivityManagerWrapper;)Z

    move-result v0

    return v0
.end method

.method public onNetworkStateChanged()V
    .locals 3

    .line 437
    iget-object v0, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 439
    :try_start_0
    iget-object v1, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->mNetworkStateChangeEvent:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 440
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public shutdownNow()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 451
    iget-object v0, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->mOperationsExecutorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->mOperationsExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    :cond_0
    return-void
.end method

.method public start()V
    .locals 7

    .line 417
    iget-object v0, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 419
    :try_start_0
    iget-object v1, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->mLog:Lcom/amazon/whispersync/dcp/framework/DCPLog;

    const-string v2, "ParallelNetworkOperationsExecutor: Starting executor with size:%s"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget v5, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->mNetworkOperationsThreadPoolSize:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v4}, Lcom/amazon/whispersync/dcp/framework/DCPLog;->i(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 421
    iget v1, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->mNetworkOperationsThreadPoolSize:I

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->mOperationsExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 422
    iget-object v1, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->mStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 426
    monitor-exit v0

    return-void

    .line 424
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Executor is already started"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 426
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public stop()V
    .locals 5

    .line 387
    iget-object v0, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 389
    :try_start_0
    iget-object v1, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->mStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 390
    iget-object v1, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->mOperationsExecutorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->mOperationsExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v1

    if-nez v1, :cond_0

    .line 392
    iget-object v1, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->mOperationsExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 396
    :try_start_1
    iget-object v1, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->mOperationsExecutorService:Ljava/util/concurrent/ExecutorService;

    const-wide/16 v2, 0x1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 404
    :catch_0
    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->mPendingOperations:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 406
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;

    .line 408
    invoke-static {v3}, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;->access$300(Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;)V

    goto :goto_0

    .line 411
    :cond_2
    iget-object v1, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->mPendingOperations:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 412
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public waitUntilStop(J)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 445
    iget-object v0, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->mOperationsExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 446
    iget-object v0, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->mOperationsExecutorService:Ljava/util/concurrent/ExecutorService;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p1, p2, v1}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    return p1
.end method
