.class public Lcom/amazon/whispersync/client/metrics/batch/transmitter/PeriodicBatchTransmitter;
.super Lcom/amazon/whispersync/client/metrics/batch/transmitter/ThreadPoolBatchTransmitter;
.source "PeriodicBatchTransmitter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/client/metrics/batch/transmitter/PeriodicBatchTransmitter$Transmitter;
    }
.end annotation


# static fields
.field private static final THREAD_POOL_TERMINATION_WAIT_MS:I = 0x1388

.field private static final log:Lcom/amazon/whispersync/dp/logger/DPLogger;


# instance fields
.field protected mBatchPipelineConfiguration:Lcom/amazon/whispersync/client/metrics/configuration/BatchPipelineConfiguration;

.field private mScheduledExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private mTransmitter:Lcom/amazon/whispersync/client/metrics/batch/transmitter/PeriodicBatchTransmitter$Transmitter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    new-instance v0, Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v1, "PeriodicBatchTransmitter"

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/client/metrics/batch/transmitter/PeriodicBatchTransmitter;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whispersync/client/metrics/batch/queue/ByteArrayQueue;Lcom/amazon/whispersync/client/metrics/transport/MetricsTransport;Lcom/amazon/whispersync/client/metrics/batch/transmitter/UploadResultBroadcaster;Lcom/amazon/whispersync/client/metrics/configuration/BatchPipelineConfiguration;Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;J)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/amazon/whispersync/client/metrics/batch/transmitter/ThreadPoolBatchTransmitter;-><init>(Lcom/amazon/whispersync/client/metrics/batch/queue/ByteArrayQueue;Lcom/amazon/whispersync/client/metrics/transport/MetricsTransport;Lcom/amazon/whispersync/client/metrics/batch/transmitter/UploadResultBroadcaster;Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;)V

    .line 54
    iput-object p4, p0, Lcom/amazon/whispersync/client/metrics/batch/transmitter/PeriodicBatchTransmitter;->mBatchPipelineConfiguration:Lcom/amazon/whispersync/client/metrics/configuration/BatchPipelineConfiguration;

    .line 55
    invoke-direct {p0, p6, p7}, Lcom/amazon/whispersync/client/metrics/batch/transmitter/PeriodicBatchTransmitter;->createScheduledThreadPoolExecutor(J)V

    return-void
.end method

.method static synthetic access$000()Lcom/amazon/whispersync/dp/logger/DPLogger;
    .locals 1

    .line 39
    sget-object v0, Lcom/amazon/whispersync/client/metrics/batch/transmitter/PeriodicBatchTransmitter;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/whispersync/client/metrics/batch/transmitter/PeriodicBatchTransmitter;)Lcom/amazon/whispersync/client/metrics/batch/transmitter/PeriodicBatchTransmitter$Transmitter;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/amazon/whispersync/client/metrics/batch/transmitter/PeriodicBatchTransmitter;->mTransmitter:Lcom/amazon/whispersync/client/metrics/batch/transmitter/PeriodicBatchTransmitter$Transmitter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/whispersync/client/metrics/batch/transmitter/PeriodicBatchTransmitter;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/amazon/whispersync/client/metrics/batch/transmitter/PeriodicBatchTransmitter;->mScheduledExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-object p0
.end method

.method private createScheduledThreadPoolExecutor(J)V
    .locals 3

    .line 60
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lcom/amazon/whispersync/device/utils/BackgroundThreadFactory;

    invoke-direct {v1}, Lcom/amazon/whispersync/device/utils/BackgroundThreadFactory;-><init>()V

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/amazon/whispersync/client/metrics/batch/transmitter/PeriodicBatchTransmitter;->mScheduledExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 61
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;

    invoke-direct {v1}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setRejectedExecutionHandler(Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 62
    new-instance v0, Lcom/amazon/whispersync/client/metrics/batch/transmitter/PeriodicBatchTransmitter$Transmitter;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/client/metrics/batch/transmitter/PeriodicBatchTransmitter$Transmitter;-><init>(Lcom/amazon/whispersync/client/metrics/batch/transmitter/PeriodicBatchTransmitter;)V

    iput-object v0, p0, Lcom/amazon/whispersync/client/metrics/batch/transmitter/PeriodicBatchTransmitter;->mTransmitter:Lcom/amazon/whispersync/client/metrics/batch/transmitter/PeriodicBatchTransmitter$Transmitter;

    .line 63
    iget-object v1, p0, Lcom/amazon/whispersync/client/metrics/batch/transmitter/PeriodicBatchTransmitter;->mScheduledExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v0, p1, p2, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method


# virtual methods
.method public shutdown()V
    .locals 6

    const-string/jumbo v0, "shutdown"

    .line 100
    iget-object v1, p0, Lcom/amazon/whispersync/client/metrics/batch/transmitter/PeriodicBatchTransmitter;->mTransmitter:Lcom/amazon/whispersync/client/metrics/batch/transmitter/PeriodicBatchTransmitter$Transmitter;

    invoke-virtual {v1}, Lcom/amazon/whispersync/client/metrics/batch/transmitter/PeriodicBatchTransmitter$Transmitter;->shutdown()V

    .line 101
    iget-object v1, p0, Lcom/amazon/whispersync/client/metrics/batch/transmitter/PeriodicBatchTransmitter;->mScheduledExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdown()V

    const/4 v1, 0x0

    .line 103
    :try_start_0
    iget-object v2, p0, Lcom/amazon/whispersync/client/metrics/batch/transmitter/PeriodicBatchTransmitter;->mScheduledExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 104
    iget-object v2, p0, Lcom/amazon/whispersync/client/metrics/batch/transmitter/PeriodicBatchTransmitter;->mScheduledExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    .line 106
    iget-object v2, p0, Lcom/amazon/whispersync/client/metrics/batch/transmitter/PeriodicBatchTransmitter;->mScheduledExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 107
    sget-object v2, Lcom/amazon/whispersync/client/metrics/batch/transmitter/PeriodicBatchTransmitter;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v3, "Thread pool did not terminate."

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3, v4}, Lcom/amazon/whispersync/dp/logger/DPLogger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 111
    sget-object v3, Lcom/amazon/whispersync/client/metrics/batch/transmitter/PeriodicBatchTransmitter;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v1

    const-string v1, "Thread pool interrupted on shutdown."

    invoke-virtual {v3, v0, v1, v4}, Lcom/amazon/whispersync/dp/logger/DPLogger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 115
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/amazon/whispersync/client/metrics/batch/transmitter/ThreadPoolBatchTransmitter;->shutdown()V

    return-void
.end method
