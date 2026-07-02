.class public abstract Lcom/amazon/client/metrics/thirdparty/batch/transmitter/ThreadPoolBatchTransmitter;
.super Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter;
.source "ThreadPoolBatchTransmitter.java"


# static fields
.field private static final THREAD_KEEP_ALIVE_TIME_MS:I = 0x1

.field private static final THREAD_NAME_BATCH_TRANSMITTER:Ljava/lang/String; = "BatchTransmitterThreadName"

.field private static final THREAD_POOL_CORE_SIZE:I = 0x1

.field private static final THREAD_POOL_MAX_SIZE:I = 0x1

.field private static final THREAD_POOL_QUEUE_CAPACITY:I = 0x2

.field private static final THREAD_POOL_TERMINATION_WAIT_MS:I = 0x1388

.field private static final log:Lcom/amazon/dp/logger/DPLogger;


# instance fields
.field protected mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Lcom/amazon/dp/logger/DPLogger;

    const-string v1, "Metrics:ThreadPoolBatchTransmitter"

    invoke-direct {v0, v1}, Lcom/amazon/dp/logger/DPLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/ThreadPoolBatchTransmitter;->log:Lcom/amazon/dp/logger/DPLogger;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/client/metrics/thirdparty/batch/queue/ByteArrayQueue;Lcom/amazon/client/metrics/thirdparty/transport/MetricsTransport;Lcom/amazon/client/metrics/thirdparty/batch/transmitter/UploadResultBroadcaster;Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;Landroid/content/Context;)V
    .locals 0

    .line 60
    invoke-direct/range {p0 .. p5}, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter;-><init>(Lcom/amazon/client/metrics/thirdparty/batch/queue/ByteArrayQueue;Lcom/amazon/client/metrics/thirdparty/transport/MetricsTransport;Lcom/amazon/client/metrics/thirdparty/batch/transmitter/UploadResultBroadcaster;Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;Landroid/content/Context;)V

    .line 61
    invoke-direct {p0}, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/ThreadPoolBatchTransmitter;->createDefaultThreadPoolExecutor()V

    return-void
.end method

.method private createDefaultThreadPoolExecutor()V
    .locals 9

    .line 88
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v0, 0x2

    invoke-direct {v6, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    new-instance v7, Lcom/amazon/device/utils/thirdparty/BackgroundThreadFactory;

    const-string v0, "BatchTransmitterThreadName"

    invoke-direct {v7, v0}, Lcom/amazon/device/utils/thirdparty/BackgroundThreadFactory;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x1

    const-wide/16 v3, 0x1

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v8, p0, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/ThreadPoolBatchTransmitter;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 93
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;

    invoke-direct {v0}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;-><init>()V

    invoke-virtual {v8, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->setRejectedExecutionHandler(Ljava/util/concurrent/RejectedExecutionHandler;)V

    return-void
.end method


# virtual methods
.method public shutdown()V
    .locals 6

    const-string/jumbo v0, "shutdown"

    .line 101
    invoke-super {p0}, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter;->shutdown()V

    .line 103
    iget-object v1, p0, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/ThreadPoolBatchTransmitter;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    const/4 v1, 0x0

    .line 105
    :try_start_0
    iget-object v2, p0, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/ThreadPoolBatchTransmitter;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 106
    iget-object v2, p0, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/ThreadPoolBatchTransmitter;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v2}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    .line 108
    iget-object v2, p0, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/ThreadPoolBatchTransmitter;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 109
    sget-object v2, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/ThreadPoolBatchTransmitter;->log:Lcom/amazon/dp/logger/DPLogger;

    const-string v3, "Thread pool did not terminate."

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3, v4}, Lcom/amazon/dp/logger/DPLoggerBase;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 113
    sget-object v3, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/ThreadPoolBatchTransmitter;->log:Lcom/amazon/dp/logger/DPLogger;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v1

    const-string v1, "Thread pool interrupted on shutdown."

    invoke-virtual {v3, v0, v1, v4}, Lcom/amazon/dp/logger/DPLoggerBase;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    :goto_0
    return-void
.end method

.method public declared-synchronized transmitBatches(Z)V
    .locals 5

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 134
    :try_start_0
    sget-object p1, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/ThreadPoolBatchTransmitter;->log:Lcom/amazon/dp/logger/DPLogger;

    const-string/jumbo v1, "transmitBatches"

    const-string v2, "Enabling broadcast result for next run."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v2, v3}, Lcom/amazon/dp/logger/DPLoggerBase;->verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    iget-object p1, p0, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter;->mQueuePusher:Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter$QueuePusher;

    invoke-virtual {p1}, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter$QueuePusher;->enableBroadcastResultForNextRun()V

    .line 137
    :cond_0
    iget-object p1, p0, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/ThreadPoolBatchTransmitter;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter;->mQueuePusher:Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter$QueuePusher;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 143
    :try_start_1
    sget-object v1, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/ThreadPoolBatchTransmitter;->log:Lcom/amazon/dp/logger/DPLogger;

    const-string/jumbo v2, "transmitBatches"

    const-string v3, "Unexpected rejected execution exception while executing QueuePusher"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v0

    invoke-virtual {v1, v2, v3, v4}, Lcom/amazon/dp/logger/DPLoggerBase;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method
