.class public Lcom/amazon/kcp/application/metrics/internal/MetricsManager;
.super Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;
.source "MetricsManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.kcp.application.metrics.internal.MetricsManager"

.field private static instance:Lcom/amazon/kcp/application/metrics/internal/MetricsManager;


# instance fields
.field private metricsManagerImpl:Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    invoke-direct {v0}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;-><init>()V

    sput-object v0, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->instance:Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;
    .locals 1

    .line 50
    sget-object v0, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->instance:Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    return-object v0
.end method


# virtual methods
.method public getDefaultDomain()Ljava/lang/String;
    .locals 1

    .line 76
    invoke-virtual {p0}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->metricsManagerImpl:Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->getDefaultDomain()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMetricsSettings()Lcom/amazon/kindle/krx/metrics/IMetricsSettings;
    .locals 1

    .line 84
    invoke-virtual {p0}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->metricsManagerImpl:Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->getMetricsSettings()Lcom/amazon/kindle/krx/metrics/IMetricsSettings;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public initialize(Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;)V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->metricsManagerImpl:Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;

    if-nez v0, :cond_0

    .line 34
    iput-object p1, p0, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->metricsManagerImpl:Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;

    goto :goto_0

    .line 36
    :cond_0
    sget-object p1, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->TAG:Ljava/lang/String;

    const-string v0, "MetricsManager had been initialized, don\'t need to be initialized again."

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public isInitialized()Z
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->metricsManagerImpl:Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/services/metrics/MetricType;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 106
    invoke-virtual {p3}, Lcom/amazon/kindle/services/metrics/MetricType;->convert()Lcom/amazon/kindle/krx/metrics/MetricType;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    return-void
.end method

.method public reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/services/metrics/MetricType;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/services/metrics/MetricType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 124
    invoke-virtual {p3}, Lcom/amazon/kindle/services/metrics/MetricType;->convert()Lcom/amazon/kindle/krx/metrics/MetricType;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;Ljava/util/Map;)V

    return-void
.end method

.method public reportMetrics(Lcom/amazon/kindle/krx/metrics/MetricsData;)V
    .locals 2

    .line 60
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/metrics/MetricsData;->getMetricType()Lcom/amazon/kindle/krx/metrics/MetricType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/metrics/MetricType;->DEBUG:Lcom/amazon/kindle/krx/metrics/MetricType;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 65
    invoke-virtual {p0}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getMetricsSettings()Lcom/amazon/kindle/krx/metrics/IMetricsSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/metrics/IMetricsSettings;->isDebugLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reporting metrics: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/metrics/MetricsData;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getMetricsSettings()Lcom/amazon/kindle/krx/metrics/IMetricsSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/metrics/IMetricsSettings;->isMetricsEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 69
    iget-object v0, p0, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->metricsManagerImpl:Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetrics(Lcom/amazon/kindle/krx/metrics/MetricsData;)V

    :cond_2
    return-void
.end method

.method public reportTimerMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/services/metrics/MetricType;J)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 143
    invoke-virtual {p3}, Lcom/amazon/kindle/services/metrics/MetricType;->convert()Lcom/amazon/kindle/krx/metrics/MetricType;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportTimerMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;J)V

    return-void
.end method
