.class public Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter$QueuePusher;
.super Ljava/lang/Object;
.source "BatchTransmitter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "QueuePusher"
.end annotation


# instance fields
.field private mBroadcastResultForCurrentRun:Z

.field private final mEnableBroadcastResultForNextRun:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mIsActive:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mUploadResultBroadcaster:Lcom/amazon/whispersync/client/metrics/batch/transmitter/UploadResultBroadcaster;

.field final synthetic this$0:Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter;


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter;Lcom/amazon/whispersync/client/metrics/batch/transmitter/UploadResultBroadcaster;)V
    .locals 1

    .line 106
    iput-object p1, p0, Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter$QueuePusher;->this$0:Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter$QueuePusher;->mIsActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 108
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter$QueuePusher;->mEnableBroadcastResultForNextRun:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 109
    iput-object p2, p0, Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter$QueuePusher;->mUploadResultBroadcaster:Lcom/amazon/whispersync/client/metrics/batch/transmitter/UploadResultBroadcaster;

    return-void
.end method

.method private sendBatches(Lcom/amazon/whispersync/client/metrics/batch/queue/ByteArrayQueue;)Z
    .locals 12

    const-string v0, "QueuePusher.sendBatches"

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 158
    :try_start_0
    invoke-interface {p1}, Lcom/amazon/whispersync/client/metrics/batch/queue/ByteArrayQueue;->remove()[B

    move-result-object v5

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v5, :cond_2

    .line 161
    iget-object v8, p0, Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter$QueuePusher;->this$0:Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter;

    iget-object v8, v8, Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter;->mMetricsTransport:Lcom/amazon/whispersync/client/metrics/transport/MetricsTransport;

    invoke-static {}, Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter;->access$100()Lcom/amazon/whispersync/client/metrics/MetricEvent;

    move-result-object v9

    invoke-interface {v8, v5, v9}, Lcom/amazon/whispersync/client/metrics/transport/MetricsTransport;->transmit([BLcom/amazon/whispersync/client/metrics/MetricEvent;)I

    move-result v8

    packed-switch v8, :pswitch_data_0

    goto/16 :goto_1

    .line 203
    :pswitch_0
    invoke-static {}, Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter;->access$000()Lcom/amazon/whispersync/dp/logger/DPLogger;

    move-result-object v9

    const-string v10, "Batch transmission failed on no http response, re-enqueuing batch."

    new-array v11, v1, [Ljava/lang/Object;

    invoke-virtual {v9, v0, v10, v11}, Lcom/amazon/whispersync/dp/logger/DPLogger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    iget-object v9, p0, Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter$QueuePusher;->this$0:Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter;

    iget-object v9, v9, Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter;->mPeriodicMetricReporter:Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;

    invoke-interface {v9}, Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;->getMetricEvent()Lcom/amazon/whispersync/client/metrics/MetricEvent;

    move-result-object v9

    const-string v10, "MetricsTransport.NO_RESPONSE_ERROR"

    invoke-interface {v9, v10, v3, v4}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    goto/16 :goto_1

    .line 197
    :pswitch_1
    invoke-static {}, Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter;->access$000()Lcom/amazon/whispersync/dp/logger/DPLogger;

    move-result-object v9

    const-string v10, "Batch transmission failed on IllegalAccessException, discarded."

    new-array v11, v1, [Ljava/lang/Object;

    invoke-virtual {v9, v0, v10, v11}, Lcom/amazon/whispersync/dp/logger/DPLogger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    iget-object v9, p0, Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter$QueuePusher;->this$0:Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter;

    iget-object v9, v9, Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter;->mPeriodicMetricReporter:Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;

    invoke-interface {v9}, Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;->getMetricEvent()Lcom/amazon/whispersync/client/metrics/MetricEvent;

    move-result-object v9

    const-string v10, "MetricsTransport.ILLEGAL_ACCESS_ERROR"

    invoke-interface {v9, v10, v3, v4}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    goto/16 :goto_1

    .line 191
    :pswitch_2
    invoke-static {}, Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter;->access$000()Lcom/amazon/whispersync/dp/logger/DPLogger;

    move-result-object v9

    const-string v10, "Batch transmission failed on IOException, discarded."

    new-array v11, v1, [Ljava/lang/Object;

    invoke-virtual {v9, v0, v10, v11}, Lcom/amazon/whispersync/dp/logger/DPLogger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    iget-object v9, p0, Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter$QueuePusher;->this$0:Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter;

    iget-object v9, v9, Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter;->mPeriodicMetricReporter:Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;

    invoke-interface {v9}, Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;->getMetricEvent()Lcom/amazon/whispersync/client/metrics/MetricEvent;

    move-result-object v9

    const-string v10, "MetricsTransport.IO_ERROR"

    invoke-interface {v9, v10, v3, v4}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    goto/16 :goto_1

    .line 185
    :pswitch_3
    invoke-static {}, Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter;->access$000()Lcom/amazon/whispersync/dp/logger/DPLogger;

    move-result-object v9

    const-string v10, "Batch transmission failed on RequestFailedException, re-enqueuing batch."

    new-array v11, v1, [Ljava/lang/Object;

    invoke-virtual {v9, v0, v10, v11}, Lcom/amazon/whispersync/dp/logger/DPLogger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    iget-object v9, p0, Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter$QueuePusher;->this$0:Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter;

    iget-object v9, v9, Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter;->mPeriodicMetricReporter:Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;

    invoke-interface {v9}, Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;->getMetricEvent()Lcom/amazon/whispersync/client/metrics/MetricEvent;

    move-result-object v9

    const-string v10, "MetricsTransport.REQUEST_FAILED_ERROR"

    invoke-interface {v9, v10, v3, v4}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    goto/16 :goto_1

    .line 166
    :pswitch_4
    invoke-static {}, Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter;->access$000()Lcom/amazon/whispersync/dp/logger/DPLogger;

    move-result-object v9

    const-string v10, "Batch transmission failed on empty data error, discarded."

    new-array v11, v1, [Ljava/lang/Object;

    invoke-virtual {v9, v0, v10, v11}, Lcom/amazon/whispersync/dp/logger/DPLogger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    iget-object v9, p0, Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter$QueuePusher;->this$0:Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter;

    iget-object v9, v9, Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter;->mPeriodicMetricReporter:Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;

    invoke-interface {v9}, Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;->getMetricEvent()Lcom/amazon/whispersync/client/metrics/MetricEvent;

    move-result-object v9

    const-string v10, "MetricsTransport.EMPTY_DATA_ERROR"

    invoke-interface {v9, v10, v3, v4}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    goto/16 :goto_1

    .line 172
    :pswitch_5
    invoke-static {}, Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter;->access$000()Lcom/amazon/whispersync/dp/logger/DPLogger;

    move-result-object v9

    const-string v10, "Batch transmission failed due to no usable connection, re-enqueuing batch"

    new-array v11, v1, [Ljava/lang/Object;

    invoke-virtual {v9, v0, v10, v11}, Lcom/amazon/whispersync/dp/logger/DPLogger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    iget-object v9, p0, Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter$QueuePusher;->this$0:Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter;

    iget-object v9, v9, Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter;->mPeriodicMetricReporter:Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;

    invoke-interface {v9}, Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;->getMetricEvent()Lcom/amazon/whispersync/client/metrics/MetricEvent;

    move-result-object v9

    const-string v10, "MetricsTransport.NO_USABLE_CONNECTION"

    invoke-interface {v9, v10, v3, v4}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    goto/16 :goto_1

    .line 228
    :pswitch_6
    invoke-static {}, Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter;->access$000()Lcom/amazon/whispersync/dp/logger/DPLogger;

    move-result-object v9

    const-string v10, "Batch transmission failed on unknown error, re-enqueuing batch"

    new-array v11, v1, [Ljava/lang/Object;

    invoke-virtual {v9, v0, v10, v11}, Lcom/amazon/whispersync/dp/logger/DPLogger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 229
    iget-object v9, p0, Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter$QueuePusher;->this$0:Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter;

    iget-object v9, v9, Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter;->mPeriodicMetricReporter:Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;

    invoke-interface {v9}, Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;->getMetricEvent()Lcom/amazon/whispersync/client/metrics/MetricEvent;

    move-result-object v9

    const-string v10, "MetricsTransport.UNEXPECTED_ERROR"

    invoke-interface {v9, v10, v3, v4}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    goto :goto_1

    .line 210
    :pswitch_7
    invoke-static {}, Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter;->access$000()Lcom/amazon/whispersync/dp/logger/DPLogger;

    move-result-object v9

    const-string v10, "Batch transmission failed on credentials error, re-enqueuing batch."

    new-array v11, v1, [Ljava/lang/Object;

    invoke-virtual {v9, v0, v10, v11}, Lcom/amazon/whispersync/dp/logger/DPLogger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 211
    iget-object v9, p0, Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter$QueuePusher;->this$0:Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter;

    iget-object v9, v9, Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter;->mPeriodicMetricReporter:Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;

    invoke-interface {v9}, Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;->getMetricEvent()Lcom/amazon/whispersync/client/metrics/MetricEvent;

    move-result-object v9

    const-string v10, "MetricsTransport.CREDENTIALS_ERROR"

    invoke-interface {v9, v10, v3, v4}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    goto :goto_1

    .line 216
    :pswitch_8
    invoke-static {}, Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter;->access$000()Lcom/amazon/whispersync/dp/logger/DPLogger;

    move-result-object v9

    const-string v10, "Batch transmission failed on server error, re-enqueuing batch"

    new-array v11, v1, [Ljava/lang/Object;

    invoke-virtual {v9, v0, v10, v11}, Lcom/amazon/whispersync/dp/logger/DPLogger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 217
    iget-object v9, p0, Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter$QueuePusher;->this$0:Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter;

    iget-object v9, v9, Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter;->mPeriodicMetricReporter:Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;

    invoke-interface {v9}, Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;->getMetricEvent()Lcom/amazon/whispersync/client/metrics/MetricEvent;

    move-result-object v9

    const-string v10, "MetricsTransport.SERVER_ERROR"

    invoke-interface {v9, v10, v3, v4}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    goto :goto_1

    .line 179
    :pswitch_9
    invoke-static {}, Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter;->access$000()Lcom/amazon/whispersync/dp/logger/DPLogger;

    move-result-object v9

    const-string v10, "Batch transmission failed on client error, discarded."

    new-array v11, v1, [Ljava/lang/Object;

    invoke-virtual {v9, v0, v10, v11}, Lcom/amazon/whispersync/dp/logger/DPLogger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    iget-object v9, p0, Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter$QueuePusher;->this$0:Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter;

    iget-object v9, v9, Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter;->mPeriodicMetricReporter:Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;

    invoke-interface {v9}, Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;->getMetricEvent()Lcom/amazon/whispersync/client/metrics/MetricEvent;

    move-result-object v9

    const-string v10, "MetricsTransport.CLIENT_ERROR"

    invoke-interface {v9, v10, v3, v4}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    goto :goto_1

    .line 222
    :pswitch_a
    invoke-static {}, Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter;->access$000()Lcom/amazon/whispersync/dp/logger/DPLogger;

    move-result-object v9

    const-string v10, "Batch transmission failed on network error, re-enqueuing batch"

    new-array v11, v1, [Ljava/lang/Object;

    invoke-virtual {v9, v0, v10, v11}, Lcom/amazon/whispersync/dp/logger/DPLogger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 223
    iget-object v9, p0, Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter$QueuePusher;->this$0:Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter;

    iget-object v9, v9, Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter;->mPeriodicMetricReporter:Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;

    invoke-interface {v9}, Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;->getMetricEvent()Lcom/amazon/whispersync/client/metrics/MetricEvent;

    move-result-object v9

    const-string v10, "MetricsTransport.NETWORK_ERROR"

    invoke-interface {v9, v10, v3, v4}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    goto :goto_1

    .line 234
    :pswitch_b
    iget-object v9, p0, Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter$QueuePusher;->this$0:Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter;

    iget-object v9, v9, Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter;->mPeriodicMetricReporter:Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;

    invoke-interface {v9}, Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;->getMetricEvent()Lcom/amazon/whispersync/client/metrics/MetricEvent;

    move-result-object v9

    const-string v10, "MetricsTransport.SUCCESS"

    invoke-interface {v9, v10, v3, v4}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    add-int/lit8 v2, v2, 0x1

    :goto_1
    if-eq v8, v6, :cond_0

    const/16 v6, 0x9

    if-eq v8, v6, :cond_0

    const/16 v6, 0xc

    if-eq v8, v6, :cond_0

    const/4 v6, 0x4

    if-eq v8, v6, :cond_0

    const/4 v6, 0x5

    if-eq v8, v6, :cond_0

    const/4 v6, 0x6

    if-eq v8, v6, :cond_0

    const/4 v6, 0x7

    if-eq v8, v6, :cond_0

    goto/16 :goto_0

    .line 249
    :cond_0
    invoke-interface {p1, v5, v1}, Lcom/amazon/whispersync/client/metrics/batch/queue/ByteArrayQueue;->add([BZ)V

    .line 250
    invoke-static {}, Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter;->access$000()Lcom/amazon/whispersync/dp/logger/DPLogger;

    move-result-object p1

    const-string v5, "Partial number of batches sent"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-virtual {p1, v0, v5, v6}, Lcom/amazon/whispersync/dp/logger/DPLogger;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 251
    iget-boolean p1, p0, Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter$QueuePusher;->mBroadcastResultForCurrentRun:Z

    if-eqz p1, :cond_1

    .line 252
    iget-object p1, p0, Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter$QueuePusher;->mUploadResultBroadcaster:Lcom/amazon/whispersync/client/metrics/batch/transmitter/UploadResultBroadcaster;

    invoke-virtual {p1, v8, v2}, Lcom/amazon/whispersync/client/metrics/batch/transmitter/UploadResultBroadcaster;->broadcastResult(II)V

    :cond_1
    return v1

    .line 258
    :cond_2
    invoke-static {}, Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter;->access$000()Lcom/amazon/whispersync/dp/logger/DPLogger;

    move-result-object p1

    const-string v5, "Drained batch queue."

    new-array v6, v6, [Ljava/lang/Object;

    const-string v8, "Number of batches sent"

    aput-object v8, v6, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {p1, v0, v5, v6}, Lcom/amazon/whispersync/dp/logger/DPLogger;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 259
    iget-boolean p1, p0, Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter$QueuePusher;->mBroadcastResultForCurrentRun:Z

    if-eqz p1, :cond_3

    .line 260
    iget-object p1, p0, Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter$QueuePusher;->mUploadResultBroadcaster:Lcom/amazon/whispersync/client/metrics/batch/transmitter/UploadResultBroadcaster;

    invoke-virtual {p1, v7, v2}, Lcom/amazon/whispersync/client/metrics/batch/transmitter/UploadResultBroadcaster;->broadcastResult(II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return v7

    :catch_0
    move-exception p1

    .line 266
    invoke-static {}, Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter;->access$000()Lcom/amazon/whispersync/dp/logger/DPLogger;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to send batches"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v0, p1, v5}, Lcom/amazon/whispersync/dp/logger/DPLogger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 267
    iget-boolean p1, p0, Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter$QueuePusher;->mBroadcastResultForCurrentRun:Z

    if-eqz p1, :cond_4

    .line 268
    iget-object p1, p0, Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter$QueuePusher;->mUploadResultBroadcaster:Lcom/amazon/whispersync/client/metrics/batch/transmitter/UploadResultBroadcaster;

    const/4 v0, -0x1

    invoke-virtual {p1, v0, v1}, Lcom/amazon/whispersync/client/metrics/batch/transmitter/UploadResultBroadcaster;->broadcastResult(II)V

    .line 270
    :cond_4
    iget-object p1, p0, Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter$QueuePusher;->this$0:Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter;

    iget-object p1, p1, Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter;->mPeriodicMetricReporter:Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;

    invoke-interface {p1}, Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;->getMetricEvent()Lcom/amazon/whispersync/client/metrics/MetricEvent;

    move-result-object p1

    const-string v0, "QueuePusher.BATCH_FAILURE"

    invoke-interface {p1, v0, v3, v4}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public enableBroadcastResultForNextRun()V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter$QueuePusher;->mEnableBroadcastResultForNextRun:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public run()V
    .locals 4

    .line 115
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter$QueuePusher;->mIsActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-string v1, "QueuePusher.run"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 116
    invoke-static {}, Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter;->access$000()Lcom/amazon/whispersync/dp/logger/DPLogger;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Shutdown invoked."

    invoke-virtual {v0, v1, v3, v2}, Lcom/amazon/whispersync/dp/logger/DPLogger;->verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter$QueuePusher;->mEnableBroadcastResultForNextRun:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter$QueuePusher;->mBroadcastResultForCurrentRun:Z

    .line 126
    invoke-static {}, Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter;->access$000()Lcom/amazon/whispersync/dp/logger/DPLogger;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Transmitting batches."

    invoke-virtual {v0, v1, v3, v2}, Lcom/amazon/whispersync/dp/logger/DPLogger;->verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter$QueuePusher;->this$0:Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter;

    iget-object v0, v0, Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter;->mByteArrayQueue:Lcom/amazon/whispersync/client/metrics/batch/queue/ByteArrayQueue;

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter$QueuePusher;->sendBatches(Lcom/amazon/whispersync/client/metrics/batch/queue/ByteArrayQueue;)Z

    return-void
.end method

.method public shutdown()V
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter$QueuePusher;->mIsActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
