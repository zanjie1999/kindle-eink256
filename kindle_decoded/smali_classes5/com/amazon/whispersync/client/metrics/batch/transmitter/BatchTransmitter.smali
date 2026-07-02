.class public abstract Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter;
.super Ljava/lang/Object;
.source "BatchTransmitter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter$QueuePusher;
    }
.end annotation


# static fields
.field private static final NULL_METRIC_EVENT:Lcom/amazon/whispersync/client/metrics/MetricEvent;

.field private static final log:Lcom/amazon/whispersync/dp/logger/DPLogger;


# instance fields
.field protected final mByteArrayQueue:Lcom/amazon/whispersync/client/metrics/batch/queue/ByteArrayQueue;

.field protected final mMetricsTransport:Lcom/amazon/whispersync/client/metrics/transport/MetricsTransport;

.field final mPeriodicMetricReporter:Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;

.field protected final mQueuePusher:Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter$QueuePusher;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 38
    new-instance v0, Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v1, "Metrics:BatchTransmitter"

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    .line 39
    new-instance v0, Lcom/amazon/whispersync/client/metrics/NullMetricEvent;

    const-string v1, "MetricsService"

    const-string v2, "BatchTransmitter"

    invoke-direct {v0, v1, v2}, Lcom/amazon/whispersync/client/metrics/NullMetricEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter;->NULL_METRIC_EVENT:Lcom/amazon/whispersync/client/metrics/MetricEvent;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whispersync/client/metrics/batch/queue/ByteArrayQueue;Lcom/amazon/whispersync/client/metrics/transport/MetricsTransport;Lcom/amazon/whispersync/client/metrics/batch/transmitter/UploadResultBroadcaster;Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter;->mByteArrayQueue:Lcom/amazon/whispersync/client/metrics/batch/queue/ByteArrayQueue;

    .line 59
    iput-object p2, p0, Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter;->mMetricsTransport:Lcom/amazon/whispersync/client/metrics/transport/MetricsTransport;

    .line 60
    new-instance p1, Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter$QueuePusher;

    invoke-direct {p1, p0, p3}, Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter$QueuePusher;-><init>(Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter;Lcom/amazon/whispersync/client/metrics/batch/transmitter/UploadResultBroadcaster;)V

    iput-object p1, p0, Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter;->mQueuePusher:Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter$QueuePusher;

    .line 62
    iget-object p1, p0, Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter;->mByteArrayQueue:Lcom/amazon/whispersync/client/metrics/batch/queue/ByteArrayQueue;

    if-eqz p1, :cond_1

    .line 66
    iget-object p1, p0, Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter;->mMetricsTransport:Lcom/amazon/whispersync/client/metrics/transport/MetricsTransport;

    if-eqz p1, :cond_0

    .line 69
    iput-object p4, p0, Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter;->mPeriodicMetricReporter:Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;

    return-void

    .line 67
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Metrics transport instance cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 63
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Byte array queue cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000()Lcom/amazon/whispersync/dp/logger/DPLogger;
    .locals 1

    .line 36
    sget-object v0, Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    return-object v0
.end method

.method static synthetic access$100()Lcom/amazon/whispersync/client/metrics/MetricEvent;
    .locals 1

    .line 36
    sget-object v0, Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter;->NULL_METRIC_EVENT:Lcom/amazon/whispersync/client/metrics/MetricEvent;

    return-object v0
.end method


# virtual methods
.method public shutdown()V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter;->mQueuePusher:Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter$QueuePusher;

    invoke-virtual {v0}, Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter$QueuePusher;->shutdown()V

    .line 78
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter;->mByteArrayQueue:Lcom/amazon/whispersync/client/metrics/batch/queue/ByteArrayQueue;

    invoke-interface {v0}, Lcom/amazon/whispersync/client/metrics/batch/queue/ByteArrayQueue;->shutdown()V

    .line 79
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter;->mMetricsTransport:Lcom/amazon/whispersync/client/metrics/transport/MetricsTransport;

    invoke-interface {v0}, Lcom/amazon/whispersync/client/metrics/transport/MetricsTransport;->close()V

    return-void
.end method

.method public abstract transmitBatches(Z)V
.end method
