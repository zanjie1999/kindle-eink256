.class public final Lcom/amazon/kcp/util/fastmetrics/RecordRemoteLicenseReleaseMetrics;
.super Ljava/lang/Object;
.source "RecordRemoteLicenseReleaseMetrics.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/util/fastmetrics/RecordRemoteLicenseReleaseMetrics$RemoteLicenseReleaseActionType;,
        Lcom/amazon/kcp/util/fastmetrics/RecordRemoteLicenseReleaseMetrics$RemoteLicenseReleaseOperationType;
    }
.end annotation


# static fields
.field private static final FAILURE_TYPE_DELIMITER:Ljava/lang/String; = "_"

.field private static final METRIC_ACTION_TYPE_KEY:Ljava/lang/String; = "action_type"

.field private static final METRIC_ASIN_KEY:Ljava/lang/String; = "asin"

.field private static final METRIC_CONTENT_TYPE_KEY:Ljava/lang/String; = "content_type"

.field private static final METRIC_EVENT_FAILURE:Ljava/lang/String; = "failure"

.field private static final METRIC_EVENT_LATENCY:Ljava/lang/String; = "latency"

.field private static final METRIC_EVENT_REQUEST:Ljava/lang/String; = "request"

.field private static final METRIC_EVENT_SUCCESS:Ljava/lang/String; = "success"

.field private static final METRIC_EVENT_SUCCESS_ALL_INELIGIBLE_DEVICES:Ljava/lang/String; = "success_all_ineligible_devices"

.field private static final METRIC_LATENCY_KEY:Ljava/lang/String; = "latency"

.field private static final METRIC_NUMBER_OF_SELECTED_DEVICES:Ljava/lang/String; = "number_of_selected_devices"

.field private static final METRIC_TOTAL_SELECTABLE_DEVICES_KEY:Ljava/lang/String; = "total_selectable_devices"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lcom/amazon/kcp/util/fastmetrics/RecordRemoteLicenseReleaseMetrics;

    invoke-direct {v0}, Lcom/amazon/kcp/util/fastmetrics/RecordRemoteLicenseReleaseMetrics;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final reportActionMetrics(Lcom/amazon/kcp/util/fastmetrics/RecordRemoteLicenseReleaseMetrics$RemoteLicenseReleaseActionType;Lcom/amazon/kindle/krx/content/ContentType;II)V
    .locals 3

    const-string v0, "actionType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->REMOTE_LICENSE_RELEASE_ACTIONS:Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;

    invoke-virtual {v0}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->getSchemaName()Ljava/lang/String;

    move-result-object v0

    .line 35
    sget-object v1, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->REMOTE_LICENSE_RELEASE_ACTIONS:Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;

    invoke-virtual {v1}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->getSchemaVersion()I

    move-result v1

    new-instance v2, Lcom/amazon/kcp/util/fastmetrics/RecordRemoteLicenseReleaseMetrics$reportActionMetrics$1;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/amazon/kcp/util/fastmetrics/RecordRemoteLicenseReleaseMetrics$reportActionMetrics$1;-><init>(Lcom/amazon/kcp/util/fastmetrics/RecordRemoteLicenseReleaseMetrics$RemoteLicenseReleaseActionType;Lcom/amazon/kindle/krx/content/ContentType;II)V

    .line 34
    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSessionsHelper;->recordMetrics(Ljava/lang/String;ILkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final reportServiceAllIneligibleDevicesSuccessResponseMetrics(Lcom/amazon/kcp/util/fastmetrics/RecordRemoteLicenseReleaseMetrics$RemoteLicenseReleaseOperationType;ZLjava/lang/String;Lcom/amazon/kindle/krx/content/ContentType;)V
    .locals 1

    const-string p1, "operationType"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "asin"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/Pair;

    .line 86
    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    const-string p2, "content_type"

    invoke-static {p2, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    .line 87
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p2

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    .line 88
    sget-object p3, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v0, "success_all_ineligible_devices"

    .line 87
    invoke-virtual {p2, p0, v0, p3, p1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;Ljava/util/Map;)V

    return-void
.end method

.method public static final reportServiceRequestMetrics(Lcom/amazon/kcp/util/fastmetrics/RecordRemoteLicenseReleaseMetrics$RemoteLicenseReleaseOperationType;Ljava/lang/String;Lcom/amazon/kindle/krx/content/ContentType;)V
    .locals 2

    const-string v0, "operationType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "contentType"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/Pair;

    .line 48
    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, v1, v0

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    const-string p2, "content_type"

    invoke-static {p2, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    .line 49
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p2

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v1, "request"

    invoke-virtual {p2, p0, v1, v0, p1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;Ljava/util/Map;)V

    return-void
.end method

.method public static final reportServiceResponseMetrics(Lcom/amazon/kcp/util/fastmetrics/RecordRemoteLicenseReleaseMetrics$RemoteLicenseReleaseOperationType;ZILjava/lang/String;Lcom/amazon/kindle/krx/content/ContentType;J)V
    .locals 8

    const-string v0, "operationType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asin"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "contentType"

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/Pair;

    .line 63
    invoke-static {v0, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p3

    const/4 v0, 0x0

    aput-object p3, v1, v0

    invoke-virtual {p4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    const-string p4, "content_type"

    invoke-static {p4, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p3

    const/4 p4, 0x1

    aput-object p3, v1, p4

    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p3

    if-eqz p1, :cond_0

    .line 65
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    .line 66
    sget-object p4, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v0, "success"

    .line 65
    invoke-virtual {p1, p2, v0, p4, p3}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;Ljava/util/Map;)V

    goto :goto_0

    .line 68
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p4

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failure_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/amazon/kindle/krx/metrics/MetricType;->ERROR:Lcom/amazon/kindle/krx/metrics/MetricType;

    .line 68
    invoke-virtual {p1, p4, p2, v0, p3}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;Ljava/util/Map;)V

    .line 72
    :goto_0
    invoke-static {p5, p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "latency"

    invoke-static {p2, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    invoke-static {p3, p1}, Lkotlin/collections/MapsKt;->plus(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    .line 73
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const/4 v7, 0x0

    const-string v2, "latency"

    move-wide v4, p5

    invoke-virtual/range {v0 .. v7}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportTimerMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;JLjava/util/Map;Ljava/lang/String;)V

    return-void
.end method
