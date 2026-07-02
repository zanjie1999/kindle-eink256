.class public Lcom/amazon/whispersync/client/metrics/batch/transmitter/PeriodicBatchTransmitter$Transmitter;
.super Ljava/lang/Object;
.source "PeriodicBatchTransmitter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/client/metrics/batch/transmitter/PeriodicBatchTransmitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Transmitter"
.end annotation


# instance fields
.field private final mIsActive:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic this$0:Lcom/amazon/whispersync/client/metrics/batch/transmitter/PeriodicBatchTransmitter;


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/client/metrics/batch/transmitter/PeriodicBatchTransmitter;)V
    .locals 1

    .line 74
    iput-object p1, p0, Lcom/amazon/whispersync/client/metrics/batch/transmitter/PeriodicBatchTransmitter$Transmitter;->this$0:Lcom/amazon/whispersync/client/metrics/batch/transmitter/PeriodicBatchTransmitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/amazon/whispersync/client/metrics/batch/transmitter/PeriodicBatchTransmitter$Transmitter;->mIsActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 81
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/batch/transmitter/PeriodicBatchTransmitter$Transmitter;->mIsActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-string v1, "Transmitter.run"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 82
    invoke-static {}, Lcom/amazon/whispersync/client/metrics/batch/transmitter/PeriodicBatchTransmitter;->access$000()Lcom/amazon/whispersync/dp/logger/DPLogger;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Shutdown invoked."

    invoke-virtual {v0, v1, v3, v2}, Lcom/amazon/whispersync/dp/logger/DPLogger;->verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/batch/transmitter/PeriodicBatchTransmitter$Transmitter;->this$0:Lcom/amazon/whispersync/client/metrics/batch/transmitter/PeriodicBatchTransmitter;

    invoke-virtual {v0, v2}, Lcom/amazon/whispersync/client/metrics/batch/transmitter/ThreadPoolBatchTransmitter;->transmitBatches(Z)V

    .line 89
    invoke-static {}, Lcom/amazon/whispersync/client/metrics/batch/transmitter/PeriodicBatchTransmitter;->access$000()Lcom/amazon/whispersync/dp/logger/DPLogger;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Rescheduling next transmission."

    invoke-virtual {v0, v1, v3, v2}, Lcom/amazon/whispersync/dp/logger/DPLogger;->verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/batch/transmitter/PeriodicBatchTransmitter$Transmitter;->this$0:Lcom/amazon/whispersync/client/metrics/batch/transmitter/PeriodicBatchTransmitter;

    invoke-static {v0}, Lcom/amazon/whispersync/client/metrics/batch/transmitter/PeriodicBatchTransmitter;->access$200(Lcom/amazon/whispersync/client/metrics/batch/transmitter/PeriodicBatchTransmitter;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whispersync/client/metrics/batch/transmitter/PeriodicBatchTransmitter$Transmitter;->this$0:Lcom/amazon/whispersync/client/metrics/batch/transmitter/PeriodicBatchTransmitter;

    invoke-static {v1}, Lcom/amazon/whispersync/client/metrics/batch/transmitter/PeriodicBatchTransmitter;->access$100(Lcom/amazon/whispersync/client/metrics/batch/transmitter/PeriodicBatchTransmitter;)Lcom/amazon/whispersync/client/metrics/batch/transmitter/PeriodicBatchTransmitter$Transmitter;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/whispersync/client/metrics/batch/transmitter/PeriodicBatchTransmitter$Transmitter;->this$0:Lcom/amazon/whispersync/client/metrics/batch/transmitter/PeriodicBatchTransmitter;

    iget-object v2, v2, Lcom/amazon/whispersync/client/metrics/batch/transmitter/PeriodicBatchTransmitter;->mBatchPipelineConfiguration:Lcom/amazon/whispersync/client/metrics/configuration/BatchPipelineConfiguration;

    invoke-interface {v2}, Lcom/amazon/whispersync/client/metrics/configuration/BatchPipelineConfiguration;->getTransmissionPeriodMillis()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public shutdown()V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/batch/transmitter/PeriodicBatchTransmitter$Transmitter;->mIsActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
