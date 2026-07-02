.class public Lcom/amazon/client/metrics/common/internal/fireos/FireOSPeriodicMetricReporterImpl;
.super Ljava/lang/Object;
.source "FireOSPeriodicMetricReporterImpl.java"

# interfaces
.implements Lcom/amazon/client/metrics/common/PeriodicMetricReporter;


# instance fields
.field private mDelegateFirstPartyPeriodicMetricReporter:Lcom/amazon/client/metrics/PeriodicMetricReporterImpl;


# direct methods
.method public constructor <init>(Lcom/amazon/client/metrics/common/MetricsFactory;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/client/metrics/common/MetricEventType;Lcom/amazon/client/metrics/common/Priority;Lcom/amazon/client/metrics/common/Channel;)V
    .locals 8

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_6

    .line 51
    instance-of v0, p1, Lcom/amazon/client/metrics/common/internal/fireos/FireOSMetricsFactory;

    if-eqz v0, :cond_5

    .line 55
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 59
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p4, :cond_2

    if-eqz p5, :cond_1

    if-eqz p6, :cond_0

    .line 76
    move-object v2, p1

    check-cast v2, Lcom/amazon/client/metrics/common/internal/fireos/FireOSMetricsFactory;

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/amazon/client/metrics/common/internal/fireos/FireOSPeriodicMetricReporterImpl;->createFirstPartyPeriodicMetricReporter(Lcom/amazon/client/metrics/common/internal/fireos/FireOSMetricsFactory;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/client/metrics/common/MetricEventType;Lcom/amazon/client/metrics/common/Priority;Lcom/amazon/client/metrics/common/Channel;)Lcom/amazon/client/metrics/PeriodicMetricReporterImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/client/metrics/common/internal/fireos/FireOSPeriodicMetricReporterImpl;->mDelegateFirstPartyPeriodicMetricReporter:Lcom/amazon/client/metrics/PeriodicMetricReporterImpl;

    return-void

    .line 72
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Channel may not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 68
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Priority may not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 64
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "MetricEventType may not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 60
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Source may not be null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 56
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Program may not be null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 52
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "MetricsFactory must be instance of FireOSMetricsFactory"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 48
    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "MetricsFactory may not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private createFirstPartyPeriodicMetricReporter(Lcom/amazon/client/metrics/common/internal/fireos/FireOSMetricsFactory;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/client/metrics/common/MetricEventType;Lcom/amazon/client/metrics/common/Priority;Lcom/amazon/client/metrics/common/Channel;)Lcom/amazon/client/metrics/PeriodicMetricReporterImpl;
    .locals 7

    .line 152
    invoke-virtual {p1}, Lcom/amazon/client/metrics/common/internal/fireos/FireOSMetricsFactory;->getDelegateMetricsFactory()Lcom/amazon/client/metrics/MetricsFactory;

    move-result-object v1

    .line 155
    invoke-virtual {p4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/client/metrics/MetricEventType;->valueOf(Ljava/lang/String;)Lcom/amazon/client/metrics/MetricEventType;

    move-result-object v4

    .line 159
    sget-object p1, Lcom/amazon/client/metrics/common/Priority;->RESERVED_FOR_NON_ANONYMOUS_METRICS:Lcom/amazon/client/metrics/common/Priority;

    invoke-virtual {p1, p5}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 160
    sget-object p1, Lcom/amazon/client/metrics/Channel;->NON_ANONYMOUS:Lcom/amazon/client/metrics/Channel;

    .line 161
    sget-object p4, Lcom/amazon/client/metrics/Priority;->NORMAL:Lcom/amazon/client/metrics/Priority;

    :goto_0
    move-object v6, p1

    move-object v5, p4

    goto :goto_1

    .line 162
    :cond_0
    sget-object p1, Lcom/amazon/client/metrics/common/Priority;->RESERVED_FOR_LOCATION_SERVICE:Lcom/amazon/client/metrics/common/Priority;

    invoke-virtual {p1, p5}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 163
    sget-object p1, Lcom/amazon/client/metrics/Channel;->LOCATION:Lcom/amazon/client/metrics/Channel;

    .line 164
    sget-object p4, Lcom/amazon/client/metrics/Priority;->NORMAL:Lcom/amazon/client/metrics/Priority;

    goto :goto_0

    .line 166
    :cond_1
    invoke-virtual {p6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/client/metrics/Channel;->valueOf(Ljava/lang/String;)Lcom/amazon/client/metrics/Channel;

    move-result-object p1

    .line 167
    invoke-virtual {p5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/amazon/client/metrics/Priority;->valueOf(Ljava/lang/String;)Lcom/amazon/client/metrics/Priority;

    move-result-object p4

    goto :goto_0

    .line 170
    :goto_1
    new-instance p1, Lcom/amazon/client/metrics/PeriodicMetricReporterImpl;

    move-object v0, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/amazon/client/metrics/PeriodicMetricReporterImpl;-><init>(Lcom/amazon/client/metrics/MetricsFactory;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/client/metrics/MetricEventType;Lcom/amazon/client/metrics/Priority;Lcom/amazon/client/metrics/Channel;)V

    return-object p1
.end method


# virtual methods
.method public createTrackedMetricEvent(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/client/metrics/common/MetricEvent;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/amazon/client/metrics/common/internal/fireos/FireOSPeriodicMetricReporterImpl;->mDelegateFirstPartyPeriodicMetricReporter:Lcom/amazon/client/metrics/PeriodicMetricReporterImpl;

    .line 113
    invoke-virtual {v0, p1, p2}, Lcom/amazon/client/metrics/PeriodicMetricReporterImpl;->createTrackedMetricEvent(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/client/metrics/MetricEvent;

    move-result-object p1

    .line 112
    invoke-static {p1}, Lcom/amazon/client/metrics/common/MetricEventConverter;->convertMetricEvent_fromFirstPartyToCommon(Lcom/amazon/client/metrics/MetricEvent;)Lcom/amazon/client/metrics/common/MetricEvent;

    move-result-object p1

    return-object p1
.end method

.method public startRecordingPeriodically(JLjava/util/concurrent/TimeUnit;)V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/amazon/client/metrics/common/internal/fireos/FireOSPeriodicMetricReporterImpl;->mDelegateFirstPartyPeriodicMetricReporter:Lcom/amazon/client/metrics/PeriodicMetricReporterImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/client/metrics/PeriodicMetricReporterImpl;->startRecordingPeriodically(JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method
