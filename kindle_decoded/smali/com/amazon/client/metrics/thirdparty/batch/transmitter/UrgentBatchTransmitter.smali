.class public Lcom/amazon/client/metrics/thirdparty/batch/transmitter/UrgentBatchTransmitter;
.super Lcom/amazon/client/metrics/thirdparty/batch/transmitter/PeriodicBatchTransmitter;
.source "UrgentBatchTransmitter.java"

# interfaces
.implements Lcom/amazon/client/metrics/thirdparty/batch/queue/ByteArrayQueueListener;
.implements Lcom/amazon/client/metrics/thirdparty/transport/TransportStateNotifier$TransportWarmedListener;


# static fields
.field private static final log:Lcom/amazon/dp/logger/DPLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Lcom/amazon/dp/logger/DPLogger;

    const-string v1, "Metrics:UrgentBatchTransmitter"

    invoke-direct {v0, v1}, Lcom/amazon/dp/logger/DPLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/UrgentBatchTransmitter;->log:Lcom/amazon/dp/logger/DPLogger;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/client/metrics/thirdparty/batch/queue/ByteArrayQueue;Lcom/amazon/client/metrics/thirdparty/transport/MetricsTransport;Lcom/amazon/client/metrics/thirdparty/batch/transmitter/UploadResultBroadcaster;Lcom/amazon/client/metrics/thirdparty/configuration/BatchPipelineConfiguration;Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;JLandroid/content/Context;)V
    .locals 0

    .line 39
    invoke-direct/range {p0 .. p8}, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/PeriodicBatchTransmitter;-><init>(Lcom/amazon/client/metrics/thirdparty/batch/queue/ByteArrayQueue;Lcom/amazon/client/metrics/thirdparty/transport/MetricsTransport;Lcom/amazon/client/metrics/thirdparty/batch/transmitter/UploadResultBroadcaster;Lcom/amazon/client/metrics/thirdparty/configuration/BatchPipelineConfiguration;Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;JLandroid/content/Context;)V

    .line 41
    instance-of p3, p2, Lcom/amazon/client/metrics/thirdparty/transport/TransportStateNotifier;

    if-eqz p3, :cond_0

    .line 42
    check-cast p2, Lcom/amazon/client/metrics/thirdparty/transport/TransportStateNotifier;

    invoke-interface {p2, p0}, Lcom/amazon/client/metrics/thirdparty/transport/TransportStateNotifier;->listenForTransportWarmed(Lcom/amazon/client/metrics/thirdparty/transport/TransportStateNotifier$TransportWarmedListener;)V

    .line 46
    invoke-interface {p1, p0}, Lcom/amazon/client/metrics/thirdparty/batch/queue/ByteArrayQueue;->addListener(Lcom/amazon/client/metrics/thirdparty/batch/queue/ByteArrayQueueListener;)V

    return-void

    .line 44
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unsupported MetricsTransport. TransportStateNotifier expected."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public onInsert(JJ)V
    .locals 1

    .line 65
    sget-object p1, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/UrgentBatchTransmitter;->log:Lcom/amazon/dp/logger/DPLogger;

    const/4 p2, 0x0

    new-array p3, p2, [Ljava/lang/Object;

    const-string/jumbo p4, "onInsert"

    const-string v0, "attempting transmission of batches"

    invoke-virtual {p1, p4, v0, p3}, Lcom/amazon/dp/logger/DPLoggerBase;->verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    invoke-virtual {p0, p2}, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/ThreadPoolBatchTransmitter;->transmitBatches(Z)V

    return-void
.end method
