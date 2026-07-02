.class public final Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricLogger;
.super Ljava/lang/Object;
.source "ExoDrmAuthenticationMetricLogger.kt"


# instance fields
.field private acr:Lcom/audible/mobile/domain/ACR;

.field private asin:Lcom/audible/mobile/domain/Asin;

.field private final metricManager:Lcom/audible/mobile/metric/logger/MetricManager;


# direct methods
.method public constructor <init>(Lcom/audible/mobile/metric/logger/MetricManager;)V
    .locals 1

    const-string v0, "metricManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricLogger;->metricManager:Lcom/audible/mobile/metric/logger/MetricManager;

    return-void
.end method

.method private final addAsinAndAcrData(Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;)Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder<",
            "**>;>(TT;)TT;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricLogger;->asin:Lcom/audible/mobile/domain/Asin;

    if-eqz v0, :cond_0

    .line 72
    sget-object v1, Lcom/audible/mobile/metric/domain/CommonDataTypes;->ASIN_DATA_TYPE:Lcom/audible/mobile/metric/domain/DataType;

    invoke-virtual {p1, v1, v0}, Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;->addDataPoint(Lcom/audible/mobile/metric/domain/DataType;Ljava/lang/Object;)Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricLogger;->acr:Lcom/audible/mobile/domain/ACR;

    if-eqz v0, :cond_1

    .line 75
    sget-object v1, Lcom/audible/mobile/metric/domain/CommonDataTypes;->ACR_DATA_TYPE:Lcom/audible/mobile/metric/domain/DataType;

    invoke-virtual {p1, v1, v0}, Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;->addDataPoint(Lcom/audible/mobile/metric/domain/DataType;Ljava/lang/Object;)Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;

    :cond_1
    return-object p1
.end method


# virtual methods
.method public final getAndStartAuthTimerMetric()Lcom/audible/mobile/metric/domain/TimerMetric;
    .locals 4

    .line 32
    new-instance v0, Lcom/audible/mobile/metric/domain/impl/TimerMetricImpl$Builder;

    .line 33
    sget-object v1, Lcom/audible/mobile/metric/logger/AAPCategory;->DrmPlayer:Lcom/audible/mobile/metric/logger/AAPCategory;

    .line 34
    sget-object v2, Lcom/audible/mobile/metric/logger/AAPSource;->Player:Lcom/audible/mobile/metric/logger/AAPSource;

    .line 35
    sget-object v3, Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricNames;->EXO_DRM_CDN_FILE_AUTHENTICATION_TIMER:Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricNames;

    .line 32
    invoke-direct {v0, v1, v2, v3}, Lcom/audible/mobile/metric/domain/impl/TimerMetricImpl$Builder;-><init>(Lcom/audible/mobile/metric/domain/Metric$Category;Lcom/audible/mobile/metric/domain/Metric$Source;Lcom/audible/mobile/metric/domain/Metric$Name;)V

    .line 38
    invoke-direct {p0, v0}, Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricLogger;->addAsinAndAcrData(Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;)Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;

    check-cast v0, Lcom/audible/mobile/metric/domain/impl/TimerMetricImpl$Builder;

    invoke-virtual {v0}, Lcom/audible/mobile/metric/domain/impl/TimerMetricImpl$Builder;->build()Lcom/audible/mobile/metric/domain/TimerMetric;

    move-result-object v0

    .line 39
    invoke-interface {v0}, Lcom/audible/mobile/metric/domain/TimerMetric;->start()V

    const-string v1, "metric"

    .line 40
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final recordCounterMetric(Lcom/audible/mobile/metric/domain/Metric$Name;)V
    .locals 3

    const-string v0, "metricName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    new-instance v0, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;

    .line 51
    sget-object v1, Lcom/audible/mobile/metric/logger/AAPCategory;->ExoPlayer:Lcom/audible/mobile/metric/logger/AAPCategory;

    .line 52
    sget-object v2, Lcom/audible/mobile/metric/logger/AAPSource;->Player:Lcom/audible/mobile/metric/logger/AAPSource;

    .line 50
    invoke-direct {v0, v1, v2, p1}, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;-><init>(Lcom/audible/mobile/metric/domain/Metric$Category;Lcom/audible/mobile/metric/domain/Metric$Source;Lcom/audible/mobile/metric/domain/Metric$Name;)V

    .line 54
    invoke-direct {p0, v0}, Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricLogger;->addAsinAndAcrData(Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;)Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;

    check-cast v0, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;

    invoke-virtual {v0}, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;->build()Lcom/audible/mobile/metric/domain/CounterMetric;

    move-result-object p1

    .line 56
    iget-object v0, p0, Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricLogger;->metricManager:Lcom/audible/mobile/metric/logger/MetricManager;

    invoke-interface {v0, p1}, Lcom/audible/mobile/metric/logger/MetricLogger;->record(Lcom/audible/mobile/metric/domain/CounterMetric;)V

    return-void
.end method

.method public final recordExceptionMetric(Lcom/audible/mobile/metric/domain/Metric$Name;Ljava/lang/Exception;)V
    .locals 3

    const-string v0, "metricName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exception"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    new-instance v0, Lcom/audible/mobile/metric/domain/impl/ExceptionMetricImpl$Builder;

    .line 61
    sget-object v1, Lcom/audible/mobile/metric/logger/AAPCategory;->ExoPlayer:Lcom/audible/mobile/metric/logger/AAPCategory;

    .line 62
    sget-object v2, Lcom/audible/mobile/metric/logger/AAPSource;->Player:Lcom/audible/mobile/metric/logger/AAPSource;

    .line 60
    invoke-direct {v0, v1, v2, p1, p2}, Lcom/audible/mobile/metric/domain/impl/ExceptionMetricImpl$Builder;-><init>(Lcom/audible/mobile/metric/domain/Metric$Category;Lcom/audible/mobile/metric/domain/Metric$Source;Lcom/audible/mobile/metric/domain/Metric$Name;Ljava/lang/Throwable;)V

    .line 65
    invoke-direct {p0, v0}, Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricLogger;->addAsinAndAcrData(Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;)Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;

    check-cast v0, Lcom/audible/mobile/metric/domain/impl/ExceptionMetricImpl$Builder;

    invoke-virtual {v0}, Lcom/audible/mobile/metric/domain/impl/ExceptionMetricImpl$Builder;->build()Lcom/audible/mobile/metric/domain/ExceptionMetric;

    move-result-object p1

    .line 67
    iget-object p2, p0, Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricLogger;->metricManager:Lcom/audible/mobile/metric/logger/MetricManager;

    invoke-interface {p2, p1}, Lcom/audible/mobile/metric/logger/MetricLogger;->record(Lcom/audible/mobile/metric/domain/ExceptionMetric;)V

    return-void
.end method

.method public final recordTimerMetric(Lcom/audible/mobile/metric/domain/TimerMetric;)V
    .locals 1

    const-string v0, "metric"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "time metric cannot be null"

    .line 44
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 45
    invoke-interface {p1}, Lcom/audible/mobile/metric/domain/TimerMetric;->stop()V

    .line 46
    iget-object v0, p0, Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricLogger;->metricManager:Lcom/audible/mobile/metric/logger/MetricManager;

    invoke-interface {v0, p1}, Lcom/audible/mobile/metric/logger/MetricLogger;->record(Lcom/audible/mobile/metric/domain/DurationMetric;)V

    return-void
.end method

.method public final setAcr(Lcom/audible/mobile/domain/ACR;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricLogger;->acr:Lcom/audible/mobile/domain/ACR;

    return-void
.end method

.method public final setAsin(Lcom/audible/mobile/domain/Asin;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricLogger;->asin:Lcom/audible/mobile/domain/Asin;

    return-void
.end method
