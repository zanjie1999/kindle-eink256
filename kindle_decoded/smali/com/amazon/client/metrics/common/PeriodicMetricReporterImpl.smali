.class public Lcom/amazon/client/metrics/common/PeriodicMetricReporterImpl;
.super Ljava/lang/Object;
.source "PeriodicMetricReporterImpl.java"

# interfaces
.implements Lcom/amazon/client/metrics/common/PeriodicMetricReporter;


# instance fields
.field private final mDelegatePeriodicMetricReporter:Lcom/amazon/client/metrics/common/PeriodicMetricReporter;


# direct methods
.method public constructor <init>(Lcom/amazon/client/metrics/common/MetricsFactory;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 100
    invoke-static {}, Lcom/amazon/client/metrics/common/MetricEventType;->getDefault()Lcom/amazon/client/metrics/common/MetricEventType;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amazon/client/metrics/common/PeriodicMetricReporterImpl;-><init>(Lcom/amazon/client/metrics/common/MetricsFactory;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/client/metrics/common/MetricEventType;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/client/metrics/common/MetricsFactory;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/client/metrics/common/MetricEventType;)V
    .locals 7

    .line 87
    sget-object v5, Lcom/amazon/client/metrics/common/Priority;->NORMAL:Lcom/amazon/client/metrics/common/Priority;

    sget-object v6, Lcom/amazon/client/metrics/common/Channel;->ANONYMOUS:Lcom/amazon/client/metrics/common/Channel;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/amazon/client/metrics/common/PeriodicMetricReporterImpl;-><init>(Lcom/amazon/client/metrics/common/MetricsFactory;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/client/metrics/common/MetricEventType;Lcom/amazon/client/metrics/common/Priority;Lcom/amazon/client/metrics/common/Channel;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/client/metrics/common/MetricsFactory;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/client/metrics/common/MetricEventType;Lcom/amazon/client/metrics/common/Priority;Lcom/amazon/client/metrics/common/Channel;)V
    .locals 8

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-static {}, Lcom/amazon/client/metrics/common/internal/util/DevicePlatformIdentifierUtil;->getInstance()Lcom/amazon/client/metrics/common/internal/util/DevicePlatformIdentifierUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/client/metrics/common/internal/util/DevicePlatformIdentifierUtil;->isDevicePlatformFireOS()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    new-instance v0, Lcom/amazon/client/metrics/common/internal/fireos/FireOSPeriodicMetricReporterImpl;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/amazon/client/metrics/common/internal/fireos/FireOSPeriodicMetricReporterImpl;-><init>(Lcom/amazon/client/metrics/common/MetricsFactory;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/client/metrics/common/MetricEventType;Lcom/amazon/client/metrics/common/Priority;Lcom/amazon/client/metrics/common/Channel;)V

    iput-object v0, p0, Lcom/amazon/client/metrics/common/PeriodicMetricReporterImpl;->mDelegatePeriodicMetricReporter:Lcom/amazon/client/metrics/common/PeriodicMetricReporter;

    goto :goto_0

    .line 52
    :cond_0
    new-instance v0, Lcom/amazon/client/metrics/common/internal/android/AndroidPeriodicMetricReporterImpl;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/amazon/client/metrics/common/internal/android/AndroidPeriodicMetricReporterImpl;-><init>(Lcom/amazon/client/metrics/common/MetricsFactory;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/client/metrics/common/MetricEventType;Lcom/amazon/client/metrics/common/Priority;Lcom/amazon/client/metrics/common/Channel;)V

    iput-object v0, p0, Lcom/amazon/client/metrics/common/PeriodicMetricReporterImpl;->mDelegatePeriodicMetricReporter:Lcom/amazon/client/metrics/common/PeriodicMetricReporter;

    :goto_0
    return-void
.end method


# virtual methods
.method public createTrackedMetricEvent(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/client/metrics/common/MetricEvent;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/amazon/client/metrics/common/PeriodicMetricReporterImpl;->mDelegatePeriodicMetricReporter:Lcom/amazon/client/metrics/common/PeriodicMetricReporter;

    invoke-interface {v0, p1, p2}, Lcom/amazon/client/metrics/common/PeriodicMetricReporter;->createTrackedMetricEvent(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/client/metrics/common/MetricEvent;

    move-result-object p1

    return-object p1
.end method

.method public startRecordingPeriodically(JLjava/util/concurrent/TimeUnit;)V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/amazon/client/metrics/common/PeriodicMetricReporterImpl;->mDelegatePeriodicMetricReporter:Lcom/amazon/client/metrics/common/PeriodicMetricReporter;

    invoke-interface {v0, p1, p2, p3}, Lcom/amazon/client/metrics/common/PeriodicMetricReporter;->startRecordingPeriodically(JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method
