.class public abstract Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter;
.super Ljava/lang/Object;
.source "BatchTransmitter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter$QueuePusher;
    }
.end annotation


# static fields
.field private static final DAILY_UPLOAD_KEY:Ljava/lang/String; = "lastUploadDay"

.field private static final MONTHLY_UPLOAD_KEY:Ljava/lang/String; = "lastUploadMonth"

.field private static final WEEKLY_UPLOAD_KEY:Ljava/lang/String; = "lastUploadWeek"

.field private static final log:Lcom/amazon/dp/logger/DPLogger;


# instance fields
.field protected final mByteArrayQueue:Lcom/amazon/client/metrics/thirdparty/batch/queue/ByteArrayQueue;

.field private mContext:Landroid/content/Context;

.field protected final mMetricsTransport:Lcom/amazon/client/metrics/thirdparty/transport/MetricsTransport;

.field final mPeriodicMetricReporter:Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;

.field protected final mQueuePusher:Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter$QueuePusher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    new-instance v0, Lcom/amazon/dp/logger/DPLogger;

    const-string v1, "Metrics:BatchTransmitter"

    invoke-direct {v0, v1}, Lcom/amazon/dp/logger/DPLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter;->log:Lcom/amazon/dp/logger/DPLogger;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/client/metrics/thirdparty/batch/queue/ByteArrayQueue;Lcom/amazon/client/metrics/thirdparty/transport/MetricsTransport;Lcom/amazon/client/metrics/thirdparty/batch/transmitter/UploadResultBroadcaster;Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;Landroid/content/Context;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter;->mByteArrayQueue:Lcom/amazon/client/metrics/thirdparty/batch/queue/ByteArrayQueue;

    .line 65
    iput-object p2, p0, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter;->mMetricsTransport:Lcom/amazon/client/metrics/thirdparty/transport/MetricsTransport;

    .line 66
    new-instance p1, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter$QueuePusher;

    invoke-direct {p1, p0, p3}, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter$QueuePusher;-><init>(Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter;Lcom/amazon/client/metrics/thirdparty/batch/transmitter/UploadResultBroadcaster;)V

    iput-object p1, p0, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter;->mQueuePusher:Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter$QueuePusher;

    if-eqz p5, :cond_2

    .line 72
    iget-object p1, p0, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter;->mByteArrayQueue:Lcom/amazon/client/metrics/thirdparty/batch/queue/ByteArrayQueue;

    if-eqz p1, :cond_1

    .line 76
    iget-object p1, p0, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter;->mMetricsTransport:Lcom/amazon/client/metrics/thirdparty/transport/MetricsTransport;

    if-eqz p1, :cond_0

    .line 79
    iput-object p4, p0, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter;->mPeriodicMetricReporter:Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;

    .line 80
    iput-object p5, p0, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter;->mContext:Landroid/content/Context;

    return-void

    .line 77
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Metrics transport instance cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 73
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Byte array queue cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 69
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Context cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000()Lcom/amazon/dp/logger/DPLogger;
    .locals 1

    .line 39
    sget-object v0, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter;->log:Lcom/amazon/dp/logger/DPLogger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter;)Landroid/content/Context;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public shutdown()V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter;->mQueuePusher:Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter$QueuePusher;

    invoke-virtual {v0}, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter$QueuePusher;->shutdown()V

    .line 89
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter;->mByteArrayQueue:Lcom/amazon/client/metrics/thirdparty/batch/queue/ByteArrayQueue;

    invoke-interface {v0}, Lcom/amazon/client/metrics/thirdparty/batch/queue/ByteArrayQueue;->shutdown()V

    .line 90
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter;->mMetricsTransport:Lcom/amazon/client/metrics/thirdparty/transport/MetricsTransport;

    invoke-interface {v0}, Lcom/amazon/client/metrics/thirdparty/transport/MetricsTransport;->shutdown()V

    return-void
.end method

.method public abstract transmitBatches(Z)V
.end method
