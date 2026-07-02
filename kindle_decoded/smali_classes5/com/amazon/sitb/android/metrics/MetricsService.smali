.class public Lcom/amazon/sitb/android/metrics/MetricsService;
.super Ljava/lang/Object;
.source "MetricsService.java"


# static fields
.field private static final log:Lcom/amazon/sitb/android/ISamplingLogger;


# instance fields
.field private metricEventFactory:Lcom/amazon/sitb/android/metrics/MetricEventFactory;

.field private metricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    invoke-static {}, Lcom/amazon/sitb/android/impl/LoggerManager;->getInstance()Lcom/amazon/sitb/android/impl/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/amazon/sitb/android/metrics/MetricsService;

    invoke-virtual {v0, v1}, Lcom/amazon/sitb/android/impl/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/amazon/sitb/android/ISamplingLogger;

    move-result-object v0

    sput-object v0, Lcom/amazon/sitb/android/metrics/MetricsService;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/metrics/IMetricsManager;Lcom/amazon/sitb/android/metrics/MetricEventFactory;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/amazon/sitb/android/metrics/MetricsService;->metricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    .line 23
    iput-object p2, p0, Lcom/amazon/sitb/android/metrics/MetricsService;->metricEventFactory:Lcom/amazon/sitb/android/metrics/MetricEventFactory;

    return-void
.end method


# virtual methods
.method public addMetricCounter(Lcom/amazon/sitb/android/metrics/MetricEvent;Lcom/amazon/sitb/android/Metric;)V
    .locals 2

    if-nez p1, :cond_0

    .line 117
    sget-object v0, Lcom/amazon/sitb/android/metrics/MetricsService;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string v1, "Cannot add counter for null event"

    invoke-interface {v0, v1}, Lcom/amazon/sitb/android/ISamplingLogger;->warning(Ljava/lang/String;)V

    :cond_0
    if-nez p2, :cond_1

    .line 122
    sget-object v0, Lcom/amazon/sitb/android/metrics/MetricsService;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string v1, "Cannot add counter for null metric"

    invoke-interface {v0, v1}, Lcom/amazon/sitb/android/ISamplingLogger;->warning(Ljava/lang/String;)V

    :cond_1
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 127
    invoke-virtual {p1, p2}, Lcom/amazon/sitb/android/metrics/MetricEvent;->addCounter(Lcom/amazon/sitb/android/Metric;)V

    :cond_2
    return-void
.end method

.method public addMetricString(Lcom/amazon/sitb/android/metrics/MetricEvent;Lcom/amazon/sitb/android/Metric;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    .line 143
    sget-object v0, Lcom/amazon/sitb/android/metrics/MetricsService;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string v1, "Cannot add string for null event"

    invoke-interface {v0, v1}, Lcom/amazon/sitb/android/ISamplingLogger;->warning(Ljava/lang/String;)V

    :cond_0
    if-nez p2, :cond_1

    .line 148
    sget-object v0, Lcom/amazon/sitb/android/metrics/MetricsService;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string v1, "Cannot add string for null metric"

    invoke-interface {v0, v1}, Lcom/amazon/sitb/android/ISamplingLogger;->warning(Ljava/lang/String;)V

    :cond_1
    if-nez p2, :cond_2

    .line 153
    sget-object v0, Lcom/amazon/sitb/android/metrics/MetricsService;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string v1, "Cannot add string with null value"

    invoke-interface {v0, v1}, Lcom/amazon/sitb/android/ISamplingLogger;->warning(Ljava/lang/String;)V

    :cond_2
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    .line 158
    invoke-virtual {p1, p2, p3}, Lcom/amazon/sitb/android/metrics/MetricEvent;->addString(Lcom/amazon/sitb/android/Metric;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public createMetricEvent()Lcom/amazon/sitb/android/metrics/MetricEvent;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/amazon/sitb/android/metrics/MetricsService;->metricEventFactory:Lcom/amazon/sitb/android/metrics/MetricEventFactory;

    invoke-virtual {v0}, Lcom/amazon/sitb/android/metrics/MetricEventFactory;->create()Lcom/amazon/sitb/android/metrics/MetricEvent;

    move-result-object v0

    return-object v0
.end method

.method public recordMetricEvent(Lcom/amazon/sitb/android/metrics/MetricEvent;Ljava/lang/Class;)V
    .locals 6

    if-nez p1, :cond_0

    .line 47
    sget-object p1, Lcom/amazon/sitb/android/metrics/MetricsService;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string p2, "Cannot record null event"

    invoke-interface {p1, p2}, Lcom/amazon/sitb/android/ISamplingLogger;->warning(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/amazon/sitb/android/metrics/MetricsService;->metricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 52
    invoke-virtual {p1}, Lcom/amazon/sitb/android/metrics/MetricEvent;->getCounters()Ljava/util/Map;

    move-result-object v2

    .line 53
    invoke-virtual {p1}, Lcom/amazon/sitb/android/metrics/MetricEvent;->getTimers()Ljava/util/Map;

    move-result-object v3

    .line 54
    invoke-virtual {p1}, Lcom/amazon/sitb/android/metrics/MetricEvent;->getCustomAttributes()Ljava/util/Map;

    move-result-object v4

    const/4 v5, 0x0

    .line 51
    invoke-interface/range {v0 .. v5}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetrics(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public startMetricTimer(Lcom/amazon/sitb/android/metrics/MetricEvent;Lcom/amazon/sitb/android/Metric;)V
    .locals 2

    if-nez p1, :cond_0

    .line 69
    sget-object v0, Lcom/amazon/sitb/android/metrics/MetricsService;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string v1, "Cannot start timer for null event"

    invoke-interface {v0, v1}, Lcom/amazon/sitb/android/ISamplingLogger;->warning(Ljava/lang/String;)V

    :cond_0
    if-nez p2, :cond_1

    .line 74
    sget-object v0, Lcom/amazon/sitb/android/metrics/MetricsService;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string v1, "Cannot start timer for null metric"

    invoke-interface {v0, v1}, Lcom/amazon/sitb/android/ISamplingLogger;->warning(Ljava/lang/String;)V

    :cond_1
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 79
    invoke-virtual {p1, p2}, Lcom/amazon/sitb/android/metrics/MetricEvent;->startTimer(Lcom/amazon/sitb/android/Metric;)V

    :cond_2
    return-void
.end method

.method public stopMetricTimer(Lcom/amazon/sitb/android/metrics/MetricEvent;Lcom/amazon/sitb/android/Metric;)V
    .locals 2

    if-nez p1, :cond_0

    .line 93
    sget-object v0, Lcom/amazon/sitb/android/metrics/MetricsService;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string v1, "Cannot stop timer for null event"

    invoke-interface {v0, v1}, Lcom/amazon/sitb/android/ISamplingLogger;->warning(Ljava/lang/String;)V

    :cond_0
    if-nez p2, :cond_1

    .line 98
    sget-object v0, Lcom/amazon/sitb/android/metrics/MetricsService;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string v1, "Cannot stop timer for null metric"

    invoke-interface {v0, v1}, Lcom/amazon/sitb/android/ISamplingLogger;->warning(Ljava/lang/String;)V

    :cond_1
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 103
    invoke-virtual {p1, p2}, Lcom/amazon/sitb/android/metrics/MetricEvent;->stopTimer(Lcom/amazon/sitb/android/Metric;)V

    :cond_2
    return-void
.end method
