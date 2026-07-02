.class Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferThreadPool;
.super Ljava/lang/Object;
.source "TransferThreadPool.java"


# static fields
.field private static final LOGGER:Lcom/amazon/kindle/com/amazonaws/logging/Log;

.field private static final WAIT_TIME:I = 0xfa

.field private static executorMainTask:Ljava/util/concurrent/ExecutorService;

.field private static executorPartTask:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const-class v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferService;

    invoke-static {v0}, Lcom/amazon/kindle/com/amazonaws/logging/LogFactory;->getLog(Ljava/lang/Class;)Lcom/amazon/kindle/com/amazonaws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferThreadPool;->LOGGER:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    return-void
.end method

.method private static buildExecutor(I)Ljava/util/concurrent/ExecutorService;
    .locals 8

    .line 93
    new-instance v7, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-wide/16 v3, 0xa

    move-object v0, v7

    move v1, p0

    move v2, p0

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 100
    new-instance p0, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;

    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;-><init>()V

    invoke-virtual {v7, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->setRejectedExecutionHandler(Ljava/util/concurrent/RejectedExecutionHandler;)V

    const/4 p0, 0x1

    .line 101
    invoke-virtual {v7, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    return-object v7
.end method

.method static declared-synchronized init(I)V
    .locals 5

    const-class v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferThreadPool;

    monitor-enter v0

    .line 36
    :try_start_0
    sget-object v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferThreadPool;->LOGGER:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Initializing the thread pool of size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->debug(Ljava/lang/Object;)V

    int-to-double v1, p0

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double/2addr v1, v3

    .line 38
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int p0, v1

    const/4 v1, 0x1

    invoke-static {p0, v1}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 40
    sget-object v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferThreadPool;->executorMainTask:Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_0

    .line 41
    invoke-static {p0}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferThreadPool;->buildExecutor(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    sput-object v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferThreadPool;->executorMainTask:Ljava/util/concurrent/ExecutorService;

    .line 43
    :cond_0
    sget-object v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferThreadPool;->executorPartTask:Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_1

    .line 44
    invoke-static {p0}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferThreadPool;->buildExecutor(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    sput-object p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferThreadPool;->executorPartTask:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static submitTask(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
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

    .line 49
    invoke-static {}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;->getDefaultThreadPoolSize()I

    move-result v0

    invoke-static {v0}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferThreadPool;->init(I)V

    .line 50
    instance-of v0, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;

    if-eqz v0, :cond_0

    .line 51
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferThreadPool;->executorPartTask:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0

    .line 53
    :cond_0
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferThreadPool;->executorMainTask:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method
