.class public Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter$QueuePusher;
.super Ljava/lang/Object;
.source "BatchTransmitter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "QueuePusher"
.end annotation


# instance fields
.field private mBroadcastResultForCurrentRun:Z

.field private final mEnableBroadcastResultForNextRun:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mIsActive:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mUploadResultBroadcaster:Lcom/amazon/client/metrics/thirdparty/batch/transmitter/UploadResultBroadcaster;

.field final synthetic this$0:Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter;


# direct methods
.method public constructor <init>(Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter;Lcom/amazon/client/metrics/thirdparty/batch/transmitter/UploadResultBroadcaster;)V
    .locals 1

    .line 117
    iput-object p1, p0, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter$QueuePusher;->this$0:Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter$QueuePusher;->mIsActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 119
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter$QueuePusher;->mEnableBroadcastResultForNextRun:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 120
    iput-object p2, p0, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter$QueuePusher;->mUploadResultBroadcaster:Lcom/amazon/client/metrics/thirdparty/batch/transmitter/UploadResultBroadcaster;

    return-void
.end method

.method private getExceptionRootCause(Ljava/lang/Exception;)Ljava/lang/Throwable;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 359
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eq p1, v0, :cond_1

    move-object p1, v0

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method private sendBatches(Lcom/amazon/client/metrics/thirdparty/batch/queue/ByteArrayQueue;)Z
    .locals 13

    .line 164
    invoke-interface {p1}, Lcom/amazon/client/metrics/thirdparty/batch/queue/ByteArrayQueue;->getQueueName()Ljava/lang/String;

    move-result-object v0

    .line 169
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    const/4 v6, -0x1

    const/4 v7, 0x2

    const-string v8, "QueuePusher.sendBatches"

    const/4 v9, 0x1

    if-nez v3, :cond_4

    .line 175
    :try_start_0
    invoke-interface {p1}, Lcom/amazon/client/metrics/thirdparty/batch/queue/ByteArrayQueue;->remove()Lcom/amazon/client/metrics/thirdparty/batch/queue/SerializedBatch;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 180
    invoke-direct {p0, v10}, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter$QueuePusher;->transmitBatch(Lcom/amazon/client/metrics/thirdparty/batch/queue/SerializedBatch;)Lcom/amazon/client/metrics/thirdparty/transport/UploadResult;

    move-result-object v11

    .line 181
    invoke-virtual {v11}, Lcom/amazon/client/metrics/thirdparty/transport/UploadResult;->getUploadStatus()I

    move-result v12

    if-eq v12, v9, :cond_3

    if-eq v12, v7, :cond_1

    const/4 v7, 0x4

    if-eq v12, v7, :cond_0

    const/4 v7, 0x5

    if-eq v12, v7, :cond_0

    const/4 v7, 0x6

    if-eq v12, v7, :cond_1

    const/4 v7, 0x7

    if-eq v12, v7, :cond_0

    const/16 v7, 0xa

    if-eq v12, v7, :cond_1

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    .line 189
    :cond_1
    invoke-interface {v1, v10}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 192
    iget-boolean v4, p0, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter$QueuePusher;->mBroadcastResultForCurrentRun:Z

    if-eqz v4, :cond_2

    .line 193
    iget-object v4, p0, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter$QueuePusher;->mUploadResultBroadcaster:Lcom/amazon/client/metrics/thirdparty/batch/transmitter/UploadResultBroadcaster;

    invoke-virtual {v11}, Lcom/amazon/client/metrics/thirdparty/transport/UploadResult;->getUploadStatus()I

    move-result v7

    invoke-virtual {v4, v7, v2, v0}, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/UploadResultBroadcaster;->broadcastResult(IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :catch_0
    move-exception p1

    goto/16 :goto_3

    :cond_4
    const-string v3, " queue batches sent"

    if-eqz v4, :cond_7

    .line 203
    :try_start_1
    invoke-static {}, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter;->access$000()Lcom/amazon/dp/logger/DPLogger;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Partial number of "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v2

    invoke-virtual {v4, v8, v3, v7}, Lcom/amazon/dp/logger/DPLoggerBase;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    iget-boolean v3, p0, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter$QueuePusher;->mBroadcastResultForCurrentRun:Z

    if-eqz v3, :cond_5

    .line 205
    iget-object v3, p0, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter$QueuePusher;->mUploadResultBroadcaster:Lcom/amazon/client/metrics/thirdparty/batch/transmitter/UploadResultBroadcaster;

    invoke-virtual {v3, v6, v5, v0}, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/UploadResultBroadcaster;->broadcastResult(IILjava/lang/String;)V

    .line 209
    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Deque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    .line 210
    invoke-interface {v1}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/client/metrics/thirdparty/batch/queue/SerializedBatch;

    .line 211
    invoke-interface {p1, v3, v2}, Lcom/amazon/client/metrics/thirdparty/batch/queue/ByteArrayQueue;->addFirst(Lcom/amazon/client/metrics/thirdparty/batch/queue/SerializedBatch;Z)V

    goto :goto_1

    .line 215
    :cond_6
    invoke-interface {p1}, Lcom/amazon/client/metrics/thirdparty/batch/queue/ByteArrayQueue;->persistBatches()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 247
    :goto_2
    iget-object p1, p0, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter$QueuePusher;->this$0:Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter;

    iget-object p1, p1, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter;->mMetricsTransport:Lcom/amazon/client/metrics/thirdparty/transport/MetricsTransport;

    invoke-interface {p1}, Lcom/amazon/client/metrics/thirdparty/transport/MetricsTransport;->close()V

    return v2

    .line 219
    :cond_7
    :try_start_2
    invoke-static {}, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter;->access$000()Lcom/amazon/dp/logger/DPLogger;

    move-result-object p1

    const-string v1, "Drained batch queue."

    new-array v4, v7, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Number of "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v9

    invoke-virtual {p1, v8, v1, v4}, Lcom/amazon/dp/logger/DPLoggerBase;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    iget-boolean p1, p0, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter$QueuePusher;->mBroadcastResultForCurrentRun:Z

    if-eqz p1, :cond_8

    .line 222
    iget-object p1, p0, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter$QueuePusher;->mUploadResultBroadcaster:Lcom/amazon/client/metrics/thirdparty/batch/transmitter/UploadResultBroadcaster;

    invoke-virtual {p1, v9, v5, v0}, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/UploadResultBroadcaster;->broadcastResult(IILjava/lang/String;)V

    :cond_8
    if-lez v5, :cond_9

    .line 228
    invoke-direct {p0}, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter$QueuePusher;->updateActiveUploadStats()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 247
    :cond_9
    iget-object p1, p0, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter$QueuePusher;->this$0:Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter;

    iget-object p1, p1, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter;->mMetricsTransport:Lcom/amazon/client/metrics/thirdparty/transport/MetricsTransport;

    invoke-interface {p1}, Lcom/amazon/client/metrics/thirdparty/transport/MetricsTransport;->close()V

    return v9

    .line 234
    :goto_3
    :try_start_3
    invoke-static {}, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter;->access$000()Lcom/amazon/dp/logger/DPLogger;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to send  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " queue batches"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v8, v3, v4}, Lcom/amazon/dp/logger/DPLoggerBase;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 235
    iget-boolean v1, p0, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter$QueuePusher;->mBroadcastResultForCurrentRun:Z

    if-eqz v1, :cond_a

    .line 237
    iget-object v1, p0, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter$QueuePusher;->mUploadResultBroadcaster:Lcom/amazon/client/metrics/thirdparty/batch/transmitter/UploadResultBroadcaster;

    invoke-virtual {v1, v6, v2, v0}, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/UploadResultBroadcaster;->broadcastResult(IILjava/lang/String;)V

    .line 239
    :cond_a
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter$QueuePusher;->this$0:Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter;

    iget-object v0, v0, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter;->mPeriodicMetricReporter:Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;

    invoke-interface {v0}, Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;->getMetricEvent()Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    move-result-object v0

    const-string v1, "QueuePusher.BATCH_FAILURE"

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-interface {v0, v1, v3, v4}, Lcom/amazon/client/metrics/thirdparty/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    .line 242
    invoke-direct {p0, p1}, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter$QueuePusher;->getExceptionRootCause(Ljava/lang/Exception;)Ljava/lang/Throwable;

    move-result-object p1

    .line 243
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter$QueuePusher;->this$0:Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter;

    iget-object v0, v0, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter;->mPeriodicMetricReporter:Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;

    invoke-interface {v0}, Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;->getMetricEvent()Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "QueuePusher.BATCH_FAILURE.Exception."

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 243
    invoke-interface {v0, p1, v3, v4}, Lcom/amazon/client/metrics/thirdparty/MetricEvent;->incrementCounter(Ljava/lang/String;D)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2

    .line 247
    :goto_4
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter$QueuePusher;->this$0:Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter;

    iget-object v0, v0, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter;->mMetricsTransport:Lcom/amazon/client/metrics/thirdparty/transport/MetricsTransport;

    invoke-interface {v0}, Lcom/amazon/client/metrics/thirdparty/transport/MetricsTransport;->close()V

    .line 248
    throw p1
.end method

.method private transmitBatch(Lcom/amazon/client/metrics/thirdparty/batch/queue/SerializedBatch;)Lcom/amazon/client/metrics/thirdparty/transport/UploadResult;
    .locals 6

    .line 252
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter$QueuePusher;->this$0:Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter;

    iget-object v0, v0, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter;->mMetricsTransport:Lcom/amazon/client/metrics/thirdparty/transport/MetricsTransport;

    invoke-virtual {p1}, Lcom/amazon/client/metrics/thirdparty/batch/queue/SerializedBatch;->getSerializedBytes()[B

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amazon/client/metrics/thirdparty/transport/MetricsTransport;->transmit([B)Lcom/amazon/client/metrics/thirdparty/transport/UploadResult;

    move-result-object p1

    .line 253
    invoke-virtual {p1}, Lcom/amazon/client/metrics/thirdparty/transport/UploadResult;->getUploadStatus()I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "QueuePusher.sendBatches"

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 277
    :pswitch_1
    invoke-static {}, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter;->access$000()Lcom/amazon/dp/logger/DPLogger;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v5, "Batch transmission failed on IOException, re-enqueueing batch."

    invoke-virtual {v0, v2, v5, v1}, Lcom/amazon/dp/logger/DPLoggerBase;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 278
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter$QueuePusher;->this$0:Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter;

    iget-object v0, v0, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter;->mPeriodicMetricReporter:Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;

    invoke-interface {v0}, Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;->getMetricEvent()Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    move-result-object v0

    const-string v1, "MetricsTransport.IO_ERROR"

    invoke-interface {v0, v1, v3, v4}, Lcom/amazon/client/metrics/thirdparty/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    .line 280
    invoke-virtual {p1}, Lcom/amazon/client/metrics/thirdparty/transport/UploadResult;->getExceptionThrown()Ljava/lang/Exception;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter$QueuePusher;->getExceptionRootCause(Ljava/lang/Exception;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 282
    iget-object v1, p0, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter$QueuePusher;->this$0:Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter;

    iget-object v1, v1, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter;->mPeriodicMetricReporter:Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;

    invoke-interface {v1}, Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;->getMetricEvent()Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MetricsTransport.IO_ERROR.Exception."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 282
    invoke-interface {v1, v0, v3, v4}, Lcom/amazon/client/metrics/thirdparty/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    goto/16 :goto_0

    .line 257
    :pswitch_2
    invoke-static {}, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter;->access$000()Lcom/amazon/dp/logger/DPLogger;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v5, "Batch transmission failed on empty data error, discarded."

    invoke-virtual {v0, v2, v5, v1}, Lcom/amazon/dp/logger/DPLoggerBase;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 258
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter$QueuePusher;->this$0:Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter;

    iget-object v0, v0, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter;->mPeriodicMetricReporter:Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;

    invoke-interface {v0}, Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;->getMetricEvent()Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    move-result-object v0

    const-string v1, "MetricsTransport.EMPTY_DATA_ERROR"

    invoke-interface {v0, v1, v3, v4}, Lcom/amazon/client/metrics/thirdparty/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    goto/16 :goto_0

    .line 263
    :pswitch_3
    invoke-static {}, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter;->access$000()Lcom/amazon/dp/logger/DPLogger;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v5, "Batch transmission failed due to no usable connection, re-enqueuing batch"

    invoke-virtual {v0, v2, v5, v1}, Lcom/amazon/dp/logger/DPLoggerBase;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 264
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter$QueuePusher;->this$0:Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter;

    iget-object v0, v0, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter;->mPeriodicMetricReporter:Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;

    invoke-interface {v0}, Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;->getMetricEvent()Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    move-result-object v0

    const-string v1, "MetricsTransport.NO_USABLE_CONNECTION"

    invoke-interface {v0, v1, v3, v4}, Lcom/amazon/client/metrics/thirdparty/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    goto/16 :goto_0

    .line 309
    :pswitch_4
    invoke-static {}, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter;->access$000()Lcom/amazon/dp/logger/DPLogger;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v5, "Batch transmission failed on unknown error, re-enqueuing batch"

    invoke-virtual {v0, v2, v5, v1}, Lcom/amazon/dp/logger/DPLoggerBase;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 310
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter$QueuePusher;->this$0:Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter;

    iget-object v0, v0, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter;->mPeriodicMetricReporter:Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;

    invoke-interface {v0}, Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;->getMetricEvent()Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    move-result-object v0

    const-string v1, "MetricsTransport.UNEXPECTED_ERROR"

    invoke-interface {v0, v1, v3, v4}, Lcom/amazon/client/metrics/thirdparty/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    .line 311
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter$QueuePusher;->this$0:Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter;

    iget-object v0, v0, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter;->mPeriodicMetricReporter:Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;

    invoke-interface {v0}, Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;->getMetricEvent()Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MetricsTransport.UNEXPECTED_ERROR.Response."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/client/metrics/thirdparty/transport/UploadResult;->getResponseCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3, v4}, Lcom/amazon/client/metrics/thirdparty/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    goto/16 :goto_0

    .line 290
    :pswitch_5
    invoke-static {}, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter;->access$000()Lcom/amazon/dp/logger/DPLogger;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v5, "Batch transmission failed on credentials error, re-enqueuing batch."

    invoke-virtual {v0, v2, v5, v1}, Lcom/amazon/dp/logger/DPLoggerBase;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 291
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter$QueuePusher;->this$0:Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter;

    iget-object v0, v0, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter;->mPeriodicMetricReporter:Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;

    invoke-interface {v0}, Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;->getMetricEvent()Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    move-result-object v0

    const-string v1, "MetricsTransport.CREDENTIALS_ERROR"

    invoke-interface {v0, v1, v3, v4}, Lcom/amazon/client/metrics/thirdparty/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    goto/16 :goto_0

    .line 296
    :pswitch_6
    invoke-static {}, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter;->access$000()Lcom/amazon/dp/logger/DPLogger;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v5, "Batch transmission failed on server error, re-enqueuing batch"

    invoke-virtual {v0, v2, v5, v1}, Lcom/amazon/dp/logger/DPLoggerBase;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 297
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter$QueuePusher;->this$0:Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter;

    iget-object v0, v0, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter;->mPeriodicMetricReporter:Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;

    invoke-interface {v0}, Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;->getMetricEvent()Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    move-result-object v0

    const-string v1, "MetricsTransport.SERVER_ERROR"

    invoke-interface {v0, v1, v3, v4}, Lcom/amazon/client/metrics/thirdparty/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    .line 298
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter$QueuePusher;->this$0:Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter;

    iget-object v0, v0, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter;->mPeriodicMetricReporter:Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;

    invoke-interface {v0}, Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;->getMetricEvent()Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MetricsTransport.SERVER_ERROR.Response."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/client/metrics/thirdparty/transport/UploadResult;->getResponseCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3, v4}, Lcom/amazon/client/metrics/thirdparty/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    goto :goto_0

    .line 270
    :pswitch_7
    invoke-static {}, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter;->access$000()Lcom/amazon/dp/logger/DPLogger;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v5, "Batch transmission failed on client error, discarded."

    invoke-virtual {v0, v2, v5, v1}, Lcom/amazon/dp/logger/DPLoggerBase;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 271
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter$QueuePusher;->this$0:Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter;

    iget-object v0, v0, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter;->mPeriodicMetricReporter:Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;

    invoke-interface {v0}, Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;->getMetricEvent()Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    move-result-object v0

    const-string v1, "MetricsTransport.CLIENT_ERROR"

    invoke-interface {v0, v1, v3, v4}, Lcom/amazon/client/metrics/thirdparty/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    .line 272
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter$QueuePusher;->this$0:Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter;

    iget-object v0, v0, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter;->mPeriodicMetricReporter:Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;

    invoke-interface {v0}, Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;->getMetricEvent()Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MetricsTransport.CLIENT_ERROR.Response."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/client/metrics/thirdparty/transport/UploadResult;->getResponseCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3, v4}, Lcom/amazon/client/metrics/thirdparty/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    goto :goto_0

    .line 303
    :pswitch_8
    invoke-static {}, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter;->access$000()Lcom/amazon/dp/logger/DPLogger;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v5, "Batch transmission failed on network error, re-enqueuing batch"

    invoke-virtual {v0, v2, v5, v1}, Lcom/amazon/dp/logger/DPLoggerBase;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 304
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter$QueuePusher;->this$0:Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter;

    iget-object v0, v0, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter;->mPeriodicMetricReporter:Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;

    invoke-interface {v0}, Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;->getMetricEvent()Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    move-result-object v0

    const-string v1, "MetricsTransport.NETWORK_ERROR"

    invoke-interface {v0, v1, v3, v4}, Lcom/amazon/client/metrics/thirdparty/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    goto :goto_0

    .line 316
    :pswitch_9
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter$QueuePusher;->this$0:Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter;

    iget-object v0, v0, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter;->mPeriodicMetricReporter:Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;

    invoke-interface {v0}, Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;->getMetricEvent()Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    move-result-object v0

    const-string v1, "MetricsTransport.SUCCESS"

    invoke-interface {v0, v1, v3, v4}, Lcom/amazon/client/metrics/thirdparty/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    :cond_0
    :goto_0
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateActiveUploadStats()V
    .locals 10

    .line 329
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter$QueuePusher;->this$0:Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter;

    invoke-static {v0}, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter;->access$100(Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "ActiveUploadStats"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 330
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 331
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const/4 v3, 0x6

    .line 332
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x3

    .line 333
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x2

    .line 334
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const-string v5, "lastUploadDay"

    const/4 v6, -0x1

    .line 336
    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    if-eq v7, v3, :cond_0

    .line 337
    invoke-interface {v2, v5, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 338
    iget-object v3, p0, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter$QueuePusher;->this$0:Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter;

    iget-object v3, v3, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter;->mPeriodicMetricReporter:Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;

    invoke-interface {v3}, Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;->getMetricEvent()Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    move-result-object v3

    const-string v5, "MetricsTransport.DAILY_ACTIVE_UPLOADS"

    invoke-interface {v3, v5, v8, v9}, Lcom/amazon/client/metrics/thirdparty/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    :cond_0
    const-string v3, "lastUploadWeek"

    .line 340
    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-eq v5, v4, :cond_1

    .line 341
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 342
    iget-object v3, p0, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter$QueuePusher;->this$0:Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter;

    iget-object v3, v3, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter;->mPeriodicMetricReporter:Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;

    invoke-interface {v3}, Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;->getMetricEvent()Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    move-result-object v3

    const-string v4, "MetricsTransport.WEEKLY_ACTIVE_UPLOADS"

    invoke-interface {v3, v4, v8, v9}, Lcom/amazon/client/metrics/thirdparty/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    :cond_1
    const-string v3, "lastUploadMonth"

    .line 344
    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 345
    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 346
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter$QueuePusher;->this$0:Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter;

    iget-object v0, v0, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter;->mPeriodicMetricReporter:Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;

    invoke-interface {v0}, Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;->getMetricEvent()Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    move-result-object v0

    const-string v1, "MetricsTransport.MONTHLY_ACTIVE_UPLOADS"

    invoke-interface {v0, v1, v8, v9}, Lcom/amazon/client/metrics/thirdparty/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    .line 348
    :cond_2
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public enableBroadcastResultForNextRun()V
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter$QueuePusher;->mEnableBroadcastResultForNextRun:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public run()V
    .locals 4

    .line 126
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter$QueuePusher;->mIsActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-string v1, "QueuePusher.run"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 127
    invoke-static {}, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter;->access$000()Lcom/amazon/dp/logger/DPLogger;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Shutdown invoked."

    invoke-virtual {v0, v1, v3, v2}, Lcom/amazon/dp/logger/DPLoggerBase;->verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter$QueuePusher;->mEnableBroadcastResultForNextRun:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter$QueuePusher;->mBroadcastResultForCurrentRun:Z

    .line 137
    invoke-static {}, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter;->access$000()Lcom/amazon/dp/logger/DPLogger;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Transmitting batches."

    invoke-virtual {v0, v1, v3, v2}, Lcom/amazon/dp/logger/DPLoggerBase;->verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter$QueuePusher;->this$0:Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter;

    iget-object v0, v0, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter;->mByteArrayQueue:Lcom/amazon/client/metrics/thirdparty/batch/queue/ByteArrayQueue;

    invoke-direct {p0, v0}, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter$QueuePusher;->sendBatches(Lcom/amazon/client/metrics/thirdparty/batch/queue/ByteArrayQueue;)Z

    return-void
.end method

.method public shutdown()V
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter$QueuePusher;->mIsActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
