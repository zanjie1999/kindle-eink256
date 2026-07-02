.class public Lcom/amazon/kcp/search/SearchPMETHelper;
.super Ljava/lang/Object;
.source "SearchPMETHelper.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final SURFACE_METRICS_EVENT_PREFIX:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const-class v0, Lcom/amazon/kcp/search/SearchPMETHelper;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/search/SearchPMETHelper;->LOG_TAG:Ljava/lang/String;

    .line 18
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1P"

    goto :goto_0

    :cond_0
    const-string v0, "3P"

    :goto_0
    sput-object v0, Lcom/amazon/kcp/search/SearchPMETHelper;->SURFACE_METRICS_EVENT_PREFIX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cleanTimers()V
    .locals 2

    .line 43
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "LibrarySearchLatencyMetricKey"

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->cancelMetricTimer(Ljava/lang/String;)V

    .line 44
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "StoreSearchLatencyMetricKey"

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->cancelMetricTimer(Ljava/lang/String;)V

    .line 45
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "StoreAddMoreLatencyMetricsKey"

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->cancelMetricTimer(Ljava/lang/String;)V

    .line 46
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "SearchSuggestionMetricKey"

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->cancelMetricTimer(Ljava/lang/String;)V

    return-void
.end method

.method private static endTimer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 143
    invoke-static {p0}, Lcom/amazon/kcp/search/SearchPMETHelper;->logTimerEndForDebugging(Ljava/lang/String;)V

    .line 144
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    .line 146
    invoke-static {p1}, Lcom/amazon/kcp/search/SearchPMETHelper;->getMetricsEventNameBasedOnSurface(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "SearchActivity"

    .line 144
    invoke-virtual {v0, v1, p1, p0}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->stopMetricTimerIfExists(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static getMetricsEventNameBasedOnSurface(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 159
    sget-object v1, Lcom/amazon/kcp/search/SearchPMETHelper;->SURFACE_METRICS_EVENT_PREFIX:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const-string p0, "%s:%s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static logTimerEndForDebugging(Ljava/lang/String;)V
    .locals 7

    .line 171
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->getMetricElapsedTime(Ljava/lang/String;)J

    move-result-wide v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-lez v6, :cond_0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v2

    .line 173
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v4, v3

    const-string p0, "There is a timer running on key %s, timer is %d, metrics"

    invoke-static {p0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-array v0, v3, [Ljava/lang/Object;

    aput-object p0, v0, v2

    const-string p0, "No timer found for key %s"

    .line 175
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public static publishOccuranceMetrics(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 113
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 117
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    .line 118
    invoke-static {p0}, Lcom/amazon/kcp/search/SearchPMETHelper;->getMetricsEventNameBasedOnSurface(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 117
    invoke-virtual {v0, p1, p0}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 114
    :cond_1
    :goto_0
    sget-object p0, Lcom/amazon/kcp/search/SearchPMETHelper;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Both key and calling class cannot be null or empty."

    invoke-static {p0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static recordLibrarySearchEnd()V
    .locals 2

    const-string v0, "LibrarySearchLatencyMetricKey"

    const-string v1, "LibrarySearchLatency"

    .line 81
    invoke-static {v0, v1}, Lcom/amazon/kcp/search/SearchPMETHelper;->endTimer(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static recordLibrarySearchStart()V
    .locals 1

    const-string v0, "LibrarySearchLatencyMetricKey"

    .line 53
    invoke-static {v0}, Lcom/amazon/kcp/search/SearchPMETHelper;->restartTimer(Ljava/lang/String;)V

    return-void
.end method

.method public static recordSearchSuggestionEnd()V
    .locals 2

    const-string v0, "SearchSuggestionMetricKey"

    const-string v1, "SearchSuggestionLatency"

    .line 95
    invoke-static {v0, v1}, Lcom/amazon/kcp/search/SearchPMETHelper;->endTimer(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static recordSearchSuggestionStart()V
    .locals 1

    const-string v0, "SearchSuggestionMetricKey"

    .line 67
    invoke-static {v0}, Lcom/amazon/kcp/search/SearchPMETHelper;->restartTimer(Ljava/lang/String;)V

    return-void
.end method

.method public static recordStoreAddMoreSearchStart()V
    .locals 1

    const-string v0, "StoreAddMoreLatencyMetricsKey"

    .line 74
    invoke-static {v0}, Lcom/amazon/kcp/search/SearchPMETHelper;->restartTimer(Ljava/lang/String;)V

    return-void
.end method

.method public static recordStoreSearchAddMoreEnd()V
    .locals 2

    const-string v0, "StoreAddMoreLatencyMetricsKey"

    const-string v1, "StoreSearchAddMoreLatency"

    .line 102
    invoke-static {v0, v1}, Lcom/amazon/kcp/search/SearchPMETHelper;->endTimer(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static recordStoreSearchEnd()V
    .locals 2

    const-string v0, "StoreSearchLatencyMetricKey"

    const-string v1, "StoreSearchLatency"

    .line 88
    invoke-static {v0, v1}, Lcom/amazon/kcp/search/SearchPMETHelper;->endTimer(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static recordStoreSearchStart()V
    .locals 1

    const-string v0, "StoreSearchLatencyMetricKey"

    .line 60
    invoke-static {v0}, Lcom/amazon/kcp/search/SearchPMETHelper;->restartTimer(Ljava/lang/String;)V

    return-void
.end method

.method private static restartTimer(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string v1, "Start timer for key %s"

    .line 128
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 130
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->cancelMetricTimer(Ljava/lang/String;)V

    .line 132
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->startMetricTimer(Ljava/lang/String;)V

    return-void
.end method
