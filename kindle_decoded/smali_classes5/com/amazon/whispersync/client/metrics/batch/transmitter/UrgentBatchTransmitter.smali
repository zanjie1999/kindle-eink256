.class public Lcom/amazon/whispersync/client/metrics/batch/transmitter/UrgentBatchTransmitter;
.super Lcom/amazon/whispersync/client/metrics/batch/transmitter/PeriodicBatchTransmitter;
.source "UrgentBatchTransmitter.java"

# interfaces
.implements Lcom/amazon/whispersync/client/metrics/batch/queue/ByteArrayQueueListener;
.implements Lcom/amazon/whispersync/client/metrics/transport/TransportStateNotifier$TransportWarmedListener;


# static fields
.field private static final log:Lcom/amazon/whispersync/dp/logger/DPLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v1, "Metrics:UrgentBatchTransmitter"

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/client/metrics/batch/transmitter/UrgentBatchTransmitter;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whispersync/client/metrics/batch/queue/ByteArrayQueue;Lcom/amazon/whispersync/client/metrics/transport/MetricsTransport;Lcom/amazon/whispersync/client/metrics/batch/transmitter/UploadResultBroadcaster;Lcom/amazon/whispersync/client/metrics/configuration/BatchPipelineConfiguration;Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;J)V
    .locals 0

    .line 39
    invoke-direct/range {p0 .. p7}, Lcom/amazon/whispersync/client/metrics/batch/transmitter/PeriodicBatchTransmitter;-><init>(Lcom/amazon/whispersync/client/metrics/batch/queue/ByteArrayQueue;Lcom/amazon/whispersync/client/metrics/transport/MetricsTransport;Lcom/amazon/whispersync/client/metrics/batch/transmitter/UploadResultBroadcaster;Lcom/amazon/whispersync/client/metrics/configuration/BatchPipelineConfiguration;Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;J)V

    .line 41
    instance-of p3, p2, Lcom/amazon/whispersync/client/metrics/transport/TransportStateNotifier;

    if-eqz p3, :cond_0

    .line 42
    check-cast p2, Lcom/amazon/whispersync/client/metrics/transport/TransportStateNotifier;

    invoke-interface {p2, p0}, Lcom/amazon/whispersync/client/metrics/transport/TransportStateNotifier;->listenForTransportWarmed(Lcom/amazon/whispersync/client/metrics/transport/TransportStateNotifier$TransportWarmedListener;)V

    .line 46
    invoke-interface {p1, p0}, Lcom/amazon/whispersync/client/metrics/batch/queue/ByteArrayQueue;->addListener(Lcom/amazon/whispersync/client/metrics/batch/queue/ByteArrayQueueListener;)V

    return-void

    .line 44
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unsupported MetricsTransport. TransportStateNotifier expected."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public notifyTransportWarmed()V
    .locals 5

    .line 55
    sget-object v0, Lcom/amazon/whispersync/client/metrics/batch/transmitter/UrgentBatchTransmitter;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "notifyTransportWarmed"

    const-string v4, "Notified that the transport is warm. Attempting to send batches."

    invoke-virtual {v0, v3, v4, v2}, Lcom/amazon/whispersync/dp/logger/DPLogger;->verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    invoke-virtual {p0, v1}, Lcom/amazon/whispersync/client/metrics/batch/transmitter/ThreadPoolBatchTransmitter;->transmitBatches(Z)V

    return-void
.end method

.method public onInsert(JJ)V
    .locals 1

    .line 65
    sget-object p1, Lcom/amazon/whispersync/client/metrics/batch/transmitter/UrgentBatchTransmitter;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const/4 p2, 0x0

    new-array p3, p2, [Ljava/lang/Object;

    const-string p4, "onInsert"

    const-string v0, "attempting transmission of batches"

    invoke-virtual {p1, p4, v0, p3}, Lcom/amazon/whispersync/dp/logger/DPLogger;->verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    invoke-virtual {p0, p2}, Lcom/amazon/whispersync/client/metrics/batch/transmitter/ThreadPoolBatchTransmitter;->transmitBatches(Z)V

    return-void
.end method
