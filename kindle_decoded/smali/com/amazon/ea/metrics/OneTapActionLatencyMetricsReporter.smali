.class public final Lcom/amazon/ea/metrics/OneTapActionLatencyMetricsReporter;
.super Ljava/lang/Object;
.source "OneTapActionLatencyMetricsReporter.kt"


# instance fields
.field private final metricsManager:Lcom/amazon/kcp/application/metrics/internal/MetricsManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/amazon/ea/metrics/OneTapActionLatencyMetricsReporter;-><init>(Lcom/amazon/kcp/application/metrics/internal/MetricsManager;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/application/metrics/internal/MetricsManager;)V
    .locals 1

    const-string/jumbo v0, "metricsManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/ea/metrics/OneTapActionLatencyMetricsReporter;->metricsManager:Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/amazon/kcp/application/metrics/internal/MetricsManager;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 11
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    const-string p2, "MetricsManager.getInstance()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/ea/metrics/OneTapActionLatencyMetricsReporter;-><init>(Lcom/amazon/kcp/application/metrics/internal/MetricsManager;)V

    return-void
.end method


# virtual methods
.method public final reportActionLatency(Lcom/amazon/ea/metrics/OneTapBookActionsMetricPayload;)V
    .locals 7

    const-string/jumbo v0, "payload"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1}, Lcom/amazon/ea/metrics/OneTapBookActionsMetricPayload;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    iget-object v1, p0, Lcom/amazon/ea/metrics/OneTapActionLatencyMetricsReporter;->metricsManager:Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    invoke-virtual {p1}, Lcom/amazon/ea/metrics/OneTapBookActionsMetricPayload;->getMetricSource()Ljava/lang/String;

    move-result-object v2

    .line 16
    invoke-virtual {p1}, Lcom/amazon/ea/metrics/OneTapBookActionsMetricPayload;->getCountersMap()Ljava/util/Map;

    move-result-object v3

    .line 17
    invoke-virtual {p1}, Lcom/amazon/ea/metrics/OneTapBookActionsMetricPayload;->getTimersMap()Ljava/util/Map;

    move-result-object v4

    .line 18
    invoke-virtual {p1}, Lcom/amazon/ea/metrics/OneTapBookActionsMetricPayload;->getAttributesMap()Ljava/util/Map;

    move-result-object v5

    .line 19
    invoke-virtual {p1}, Lcom/amazon/ea/metrics/OneTapBookActionsMetricPayload;->getFreeText()Ljava/lang/String;

    move-result-object v6

    .line 15
    invoke-virtual/range {v1 .. v6}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetrics(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
