.class public final Lcom/amazon/kcp/util/fastmetrics/PluginMetricsManager;
.super Ljava/lang/Object;
.source "PluginMetricsManager.kt"

# interfaces
.implements Lcom/amazon/kindle/krx/metrics/IMetricsManager;


# instance fields
.field private final INBOOK_CHROME_SCHEMA_IDENTIFIER:Ljava/lang/String;

.field private final MAP_KEY_SCHEMA_IDENTIFIER:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "schemaIdentifier"

    .line 16
    iput-object v0, p0, Lcom/amazon/kcp/util/fastmetrics/PluginMetricsManager;->MAP_KEY_SCHEMA_IDENTIFIER:Ljava/lang/String;

    const-string v0, "InBookChromeSchema"

    .line 17
    iput-object v0, p0, Lcom/amazon/kcp/util/fastmetrics/PluginMetricsManager;->INBOOK_CHROME_SCHEMA_IDENTIFIER:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public cancelMetricTimer(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public getDefaultDomain()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMetricElapsedTime(Ljava/lang/String;)J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getMetricStartTimestampInMillis(Ljava/lang/String;)J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getMetricsSettings()Lcom/amazon/kindle/krx/metrics/IMetricsSettings;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public newMetrics(Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public reportMetric(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V
    .locals 0

    return-void
.end method

.method public reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/krx/metrics/MetricType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/krx/metrics/MetricType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public reportMetric(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-static {p1}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 24
    iget-object v0, p0, Lcom/amazon/kcp/util/fastmetrics/PluginMetricsManager;->MAP_KEY_SCHEMA_IDENTIFIER:Ljava/lang/String;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 25
    iget-object v1, p0, Lcom/amazon/kcp/util/fastmetrics/PluginMetricsManager;->INBOOK_CHROME_SCHEMA_IDENTIFIER:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 26
    invoke-static {p1, p2, p3}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics;->recordMetricsInPlugin(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public reportMetric(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public reportMetrics(Lcom/amazon/kindle/krx/metrics/MetricsData;)V
    .locals 0

    return-void
.end method

.method public reportMetrics(Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/krx/metrics/MetricType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public reportMetrics(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public reportTimerMetric(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    return-void
.end method

.method public reportTimerMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;J)V
    .locals 0

    return-void
.end method

.method public reportTimerMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;JLjava/util/Map;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/krx/metrics/MetricType;",
            "J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public startMetricTimer(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public stopMetricTimer(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public stopMetricTimer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public stopMetricTimerIfExists(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
