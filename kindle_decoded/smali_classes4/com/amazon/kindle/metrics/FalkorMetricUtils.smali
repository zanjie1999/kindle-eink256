.class public final Lcom/amazon/kindle/metrics/FalkorMetricUtils;
.super Ljava/lang/Object;
.source "FalkorMetricUtils.kt"


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/metrics/FalkorMetricUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lcom/amazon/kindle/metrics/FalkorMetricUtils;

    invoke-direct {v0}, Lcom/amazon/kindle/metrics/FalkorMetricUtils;-><init>()V

    sput-object v0, Lcom/amazon/kindle/metrics/FalkorMetricUtils;->INSTANCE:Lcom/amazon/kindle/metrics/FalkorMetricUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final reportMetrics(Ljava/lang/String;)V
    .locals 10

    .line 46
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "NextEpisodePerformanceKey"

    .line 48
    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->getMetricElapsedTime(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NextEpisodeDownloadFailedEvent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.amazon.falkor.bottomsheet.EndOfEpisodeJSInterface"

    invoke-virtual {v0, v3, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v2, "TOCEpisodePerformanceKey"

    .line 51
    invoke-virtual {v0, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->getMetricElapsedTime(Ljava/lang/String;)J

    move-result-wide v6

    const-string v3, "com.amazon.falkor.panels.EpisodeListViewController"

    cmp-long v8, v6, v4

    if-eqz v8, :cond_1

    .line 52
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TOCEpisodeNavigationFailed:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v6, "TOCLockedEpisodePerformanceKey"

    .line 54
    invoke-virtual {v0, v6}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->getMetricElapsedTime(Ljava/lang/String;)J

    move-result-wide v7

    cmp-long v9, v7, v4

    if-eqz v9, :cond_2

    .line 55
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TOCLockedEpisodeNavigationFailed:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_2
    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->cancelMetricTimer(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v0, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->cancelMetricTimer(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v0, v6}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->cancelMetricTimer(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final reportAssetsDownloadFailedMetrics(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)V
    .locals 1

    const-string v0, "errorMetric"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/kindle/metrics/FalkorMetricUtils;->reportMetrics(Ljava/lang/String;)V

    return-void
.end method

.method public final reportDownloadCanceledMetrics()V
    .locals 1

    const-string v0, "Cancelled"

    .line 32
    invoke-direct {p0, v0}, Lcom/amazon/kindle/metrics/FalkorMetricUtils;->reportMetrics(Ljava/lang/String;)V

    return-void
.end method

.method public final reportOpenCanceledMetrics(Ljava/lang/String;)V
    .locals 1

    const-string v0, "cancelMethod"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0, p1}, Lcom/amazon/kindle/metrics/FalkorMetricUtils;->reportMetrics(Ljava/lang/String;)V

    return-void
.end method
