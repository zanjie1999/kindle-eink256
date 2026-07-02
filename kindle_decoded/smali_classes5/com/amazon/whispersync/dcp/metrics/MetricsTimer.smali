.class public Lcom/amazon/whispersync/dcp/metrics/MetricsTimer;
.super Ljava/lang/Object;
.source "MetricsTimer.java"


# static fields
.field private static final MILLISECONDS_PER_NANOSECOND:J = 0xf4240L

.field private static final TAG:Ljava/lang/String; = "com.amazon.whispersync.dcp.metrics.MetricsTimer"


# instance fields
.field private final mCollector:Lcom/amazon/whispersync/dcp/metrics/MetricsCollector;

.field private final mEventId:Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;

.field private mStart:J

.field private final mTimerName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whispersync/dcp/metrics/MetricsCollector;Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/metrics/MetricsTimer;->mCollector:Lcom/amazon/whispersync/dcp/metrics/MetricsCollector;

    .line 33
    iput-object p2, p0, Lcom/amazon/whispersync/dcp/metrics/MetricsTimer;->mEventId:Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;

    .line 34
    iput-object p3, p0, Lcom/amazon/whispersync/dcp/metrics/MetricsTimer;->mTimerName:Ljava/lang/String;

    const-wide/16 p1, -0x1

    .line 35
    iput-wide p1, p0, Lcom/amazon/whispersync/dcp/metrics/MetricsTimer;->mStart:J

    return-void
.end method


# virtual methods
.method public getEventId()Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/metrics/MetricsTimer;->mEventId:Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/metrics/MetricsTimer;->mTimerName:Ljava/lang/String;

    return-object v0
.end method

.method public start()V
    .locals 3

    .line 47
    sget-object v0, Lcom/amazon/whispersync/dcp/metrics/MetricsTimer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting timer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/whispersync/dcp/metrics/MetricsTimer;->mTimerName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/whispersync/dcp/metrics/MetricsTimer;->mEventId:Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/whispersync/dcp/metrics/MetricsTimer;->mStart:J

    return-void
.end method

.method public stop()V
    .locals 7

    .line 59
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/amazon/whispersync/dcp/metrics/MetricsTimer;->mStart:J

    sub-long/2addr v0, v2

    const-wide/32 v4, 0xf4240

    div-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    .line 62
    sget-object v0, Lcom/amazon/whispersync/dcp/metrics/MetricsTimer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timer not started: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/whispersync/dcp/metrics/MetricsTimer;->mTimerName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 66
    :cond_0
    sget-object v2, Lcom/amazon/whispersync/dcp/metrics/MetricsTimer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stopping timer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/amazon/whispersync/dcp/metrics/MetricsTimer;->mTimerName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, -0x1

    .line 67
    iput-wide v2, p0, Lcom/amazon/whispersync/dcp/metrics/MetricsTimer;->mStart:J

    .line 69
    iget-object v2, p0, Lcom/amazon/whispersync/dcp/metrics/MetricsTimer;->mCollector:Lcom/amazon/whispersync/dcp/metrics/MetricsCollector;

    if-nez v2, :cond_1

    .line 71
    sget-object v0, Lcom/amazon/whispersync/dcp/metrics/MetricsTimer;->TAG:Ljava/lang/String;

    const-string v1, "Could not record timer because no collector was set"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 75
    :cond_1
    iget-object v3, p0, Lcom/amazon/whispersync/dcp/metrics/MetricsTimer;->mEventId:Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;

    iget-object v4, p0, Lcom/amazon/whispersync/dcp/metrics/MetricsTimer;->mTimerName:Ljava/lang/String;

    invoke-interface {v2, v3, v4, v0, v1}, Lcom/amazon/whispersync/dcp/metrics/MetricsCollector;->recordMetricTimerEvent(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;Ljava/lang/String;J)V

    return-void
.end method
