.class public final Lcom/amazon/kcp/util/fastmetrics/RemoveInvalidDownloadsMetrics;
.super Ljava/lang/Object;
.source "RemoveInvalidDownloadsMetrics.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/util/fastmetrics/RemoveInvalidDownloadsMetrics$RemoveInvalidDownloadsOperationState;
    }
.end annotation


# static fields
.field private static final FAILURE_TYPE_DELIMITER:Ljava/lang/String; = "_"

.field private static final METRIC_NAME_CHECK_INVALID_DOWNLOADS:Ljava/lang/String; = "CHECK_INVALID_DOWNLOADS"

.field private static final METRIC_NAME_REMOVE_INVALID_DOWNLOADS:Ljava/lang/String; = "REMOVE_INVALID_DOWNLOADS_OPERATION"

.field private static final METRIC_TYPE_FAILURE:Ljava/lang/String; = "FAILURE"

.field private static final METRIC_TYPE_REQUEST:Ljava/lang/String; = "REQUEST"

.field private static final METRIC_TYPE_SUCCESS:Ljava/lang/String; = "SUCCESS"

.field private static final METRIC_TYPE_TOTAL_ASINS:Ljava/lang/String; = "TOTAL_ASINS"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 6
    new-instance v0, Lcom/amazon/kcp/util/fastmetrics/RemoveInvalidDownloadsMetrics;

    invoke-direct {v0}, Lcom/amazon/kcp/util/fastmetrics/RemoveInvalidDownloadsMetrics;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final reportRemoveInvalidDownloadsOperationSize(I)V
    .locals 6

    .line 30
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "TOTAL_ASINS"

    invoke-static {v0, p0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v2

    .line 31
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v3

    .line 32
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v4

    const-string v1, "REMOVE_INVALID_DOWNLOADS_OPERATION"

    const-string v5, "REMOVE_INVALID_DOWNLOADS_OPERATION"

    .line 31
    invoke-virtual/range {v0 .. v5}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetrics(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public static final reportRemoveInvalidDownloadsOperationState(Lcom/amazon/kcp/util/fastmetrics/RemoveInvalidDownloadsMetrics$RemoveInvalidDownloadsOperationState;)V
    .locals 3

    const-string v0, "operationState"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    .line 22
    sget-object v1, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v2, "REMOVE_INVALID_DOWNLOADS_OPERATION"

    .line 21
    invoke-virtual {v0, v2, p0, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    return-void
.end method

.method public static final reportServiceRequestMetrics()V
    .locals 4

    .line 40
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    .line 41
    sget-object v1, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v2, "CHECK_INVALID_DOWNLOADS"

    const-string v3, "REQUEST"

    .line 40
    invoke-virtual {v0, v2, v3, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    return-void
.end method

.method public static final reportServiceResponseMetrics(ZI)V
    .locals 3

    const-string v0, "CHECK_INVALID_DOWNLOADS"

    if-eqz p0, :cond_0

    .line 50
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p0

    .line 51
    sget-object p1, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v1, "SUCCESS"

    .line 50
    invoke-virtual {p0, v0, v1, p1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    goto :goto_0

    .line 53
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p0

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FAILURE_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    .line 53
    invoke-virtual {p0, v0, p1, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    :goto_0
    return-void
.end method
