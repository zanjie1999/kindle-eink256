.class Lcom/amazon/kindle/com/amazonaws/metrics/ByteThroughputHelper;
.super Lcom/amazon/kindle/com/amazonaws/metrics/ByteThroughputProvider;
.source "ByteThroughputHelper.java"


# static fields
.field private static final REPORT_INTERVAL_SECS:I = 0xa


# direct methods
.method constructor <init>(Lcom/amazon/kindle/com/amazonaws/metrics/ThroughputMetricType;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/amazon/kindle/com/amazonaws/metrics/ByteThroughputProvider;-><init>(Lcom/amazon/kindle/com/amazonaws/metrics/ThroughputMetricType;)V

    return-void
.end method


# virtual methods
.method public increment(IJ)V
    .locals 0

    .line 50
    invoke-super {p0, p1, p2, p3}, Lcom/amazon/kindle/com/amazonaws/metrics/ByteThroughputProvider;->increment(IJ)V

    return-void
.end method

.method reportMetrics()V
    .locals 1

    .line 41
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/metrics/ByteThroughputProvider;->getByteCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 42
    invoke-static {}, Lcom/amazon/kindle/com/amazonaws/metrics/AwsSdkMetrics;->getServiceMetricCollector()Lcom/amazon/kindle/com/amazonaws/metrics/ServiceMetricCollector;

    move-result-object v0

    .line 43
    invoke-virtual {v0, p0}, Lcom/amazon/kindle/com/amazonaws/metrics/ServiceMetricCollector;->collectByteThroughput(Lcom/amazon/kindle/com/amazonaws/metrics/ByteThroughputProvider;)V

    .line 44
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/metrics/ByteThroughputProvider;->reset()V

    :cond_0
    return-void
.end method

.method startTiming()J
    .locals 5

    .line 34
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/metrics/ByteThroughputProvider;->getDurationNano()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    const-wide/16 v2, 0xa

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/metrics/ByteThroughputHelper;->reportMetrics()V

    .line 37
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method
