.class public Lcom/amazon/kcp/application/metrics/internal/PerfMetricsCollector;
.super Ljava/lang/Object;
.source "PerfMetricsCollector.java"

# interfaces
.implements Lcom/amazon/kindle/krx/metrics/IBatchMetricCollector;


# static fields
.field private static DEBUG_LOGS:Z

.field private static final TAG:Ljava/lang/String;

.field private static final instance:Lcom/amazon/kcp/application/metrics/internal/PerfMetricsCollector;


# instance fields
.field private completeEvents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/metrics/PerfMetricEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private incompleteEvents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/krx/metrics/PerfMetricEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Lcom/amazon/kcp/application/metrics/internal/PerfMetricsCollector;

    invoke-direct {v0}, Lcom/amazon/kcp/application/metrics/internal/PerfMetricsCollector;-><init>()V

    sput-object v0, Lcom/amazon/kcp/application/metrics/internal/PerfMetricsCollector;->instance:Lcom/amazon/kcp/application/metrics/internal/PerfMetricsCollector;

    .line 26
    const-class v0, Lcom/amazon/kcp/application/metrics/internal/PerfMetricsCollector;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/application/metrics/internal/PerfMetricsCollector;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 43
    sput-boolean v0, Lcom/amazon/kcp/application/metrics/internal/PerfMetricsCollector;->DEBUG_LOGS:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/application/metrics/internal/PerfMetricsCollector;->incompleteEvents:Ljava/util/Map;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/application/metrics/internal/PerfMetricsCollector;->completeEvents:Ljava/util/Map;

    return-void
.end method

.method public static getInstance()Lcom/amazon/kindle/krx/metrics/IBatchMetricCollector;
    .locals 1

    .line 51
    sget-object v0, Lcom/amazon/kcp/application/metrics/internal/PerfMetricsCollector;->instance:Lcom/amazon/kcp/application/metrics/internal/PerfMetricsCollector;

    return-object v0
.end method


# virtual methods
.method public collectEndTimerMetric(Ljava/lang/String;JLjava/lang/String;)V
    .locals 2

    .line 161
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/application/metrics/internal/PerfMetricsCollector;->incompleteEvents:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 167
    iget-object v0, p0, Lcom/amazon/kcp/application/metrics/internal/PerfMetricsCollector;->incompleteEvents:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/metrics/PerfMetricEvent;

    .line 168
    iput-wide p2, v0, Lcom/amazon/kindle/krx/metrics/PerfMetricEvent;->endTime:J

    .line 169
    iget-object p2, p0, Lcom/amazon/kcp/application/metrics/internal/PerfMetricsCollector;->completeEvents:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-nez p2, :cond_1

    .line 172
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    if-eqz p4, :cond_3

    .line 177
    iget-object p3, v0, Lcom/amazon/kindle/krx/metrics/PerfMetricEvent;->additionalText:Ljava/lang/String;

    if-nez p3, :cond_2

    .line 178
    iput-object p4, v0, Lcom/amazon/kindle/krx/metrics/PerfMetricEvent;->additionalText:Ljava/lang/String;

    goto :goto_0

    .line 180
    :cond_2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v0, Lcom/amazon/kindle/krx/metrics/PerfMetricEvent;->additionalText:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, v0, Lcom/amazon/kindle/krx/metrics/PerfMetricEvent;->additionalText:Ljava/lang/String;

    .line 184
    :cond_3
    :goto_0
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    iget-object p3, p0, Lcom/amazon/kcp/application/metrics/internal/PerfMetricsCollector;->completeEvents:Ljava/util/Map;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    sget-boolean p2, Lcom/amazon/kcp/application/metrics/internal/PerfMetricsCollector;->DEBUG_LOGS:Z

    if-eqz p2, :cond_4

    .line 188
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Completed Event: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_4
    return-void
.end method

.method public collectEndTimerMetric(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 141
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getCurrentTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/amazon/kcp/application/metrics/internal/PerfMetricsCollector;->collectEndTimerMetric(Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method public collectStartTimerMetric(Ljava/lang/String;JLjava/lang/String;)V
    .locals 1

    .line 146
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 150
    :cond_0
    new-instance v0, Lcom/amazon/kindle/krx/metrics/PerfMetricEvent;

    invoke-direct {v0, p1, p4}, Lcom/amazon/kindle/krx/metrics/PerfMetricEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iput-wide p2, v0, Lcom/amazon/kindle/krx/metrics/PerfMetricEvent;->startTime:J

    .line 152
    iget-object p2, p0, Lcom/amazon/kcp/application/metrics/internal/PerfMetricsCollector;->incompleteEvents:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-boolean p2, Lcom/amazon/kcp/application/metrics/internal/PerfMetricsCollector;->DEBUG_LOGS:Z

    if-eqz p2, :cond_1

    .line 155
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Started Event: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public collectStartTimerMetric(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 136
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getCurrentTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/amazon/kcp/application/metrics/internal/PerfMetricsCollector;->collectStartTimerMetric(Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method public removeAll()V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/amazon/kcp/application/metrics/internal/PerfMetricsCollector;->incompleteEvents:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 110
    iget-object v0, p0, Lcom/amazon/kcp/application/metrics/internal/PerfMetricsCollector;->completeEvents:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public submitSpecificMetrics(Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/IMetricsAggregator;Ljava/lang/String;)V
    .locals 9

    .line 56
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 62
    invoke-virtual {p0, p1, p3}, Lcom/amazon/kcp/application/metrics/internal/PerfMetricsCollector;->submitSpecificMetrics(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/application/metrics/internal/PerfMetricsCollector;->completeEvents:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_5

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 73
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/krx/metrics/PerfMetricEvent;

    .line 74
    invoke-virtual {v1}, Lcom/amazon/kindle/krx/metrics/PerfMetricEvent;->toString()Ljava/lang/String;

    move-result-object v2

    .line 75
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_2

    .line 77
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 80
    :cond_2
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 84
    :cond_3
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 93
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 94
    invoke-interface {p2, v0}, Lcom/amazon/kindle/krx/metrics/IMetricsAggregator;->aggregate(Ljava/util/List;)J

    move-result-wide v5

    const/4 v1, 0x0

    .line 95
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/metrics/PerfMetricEvent;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/metrics/PerfMetricEvent;->toString()Ljava/lang/String;

    move-result-object v3

    .line 97
    sget-boolean v0, Lcom/amazon/kcp/application/metrics/internal/PerfMetricsCollector;->DEBUG_LOGS:Z

    if-eqz v0, :cond_4

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    :cond_4
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    sget-object v2, Lcom/amazon/kcp/application/metrics/internal/PerfMetricsCollector;->TAG:Ljava/lang/String;

    sget-object v4, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const/4 v7, 0x0

    move-object v8, p3

    invoke-virtual/range {v1 .. v8}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportTimerMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;JLjava/util/Map;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    return-void
.end method

.method public submitSpecificMetrics(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 115
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/application/metrics/internal/PerfMetricsCollector;->completeEvents:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_2

    .line 123
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/metrics/PerfMetricEvent;

    .line 124
    invoke-virtual {v0}, Lcom/amazon/kindle/krx/metrics/PerfMetricEvent;->toString()Ljava/lang/String;

    move-result-object v3

    .line 125
    sget-boolean v1, Lcom/amazon/kcp/application/metrics/internal/PerfMetricsCollector;->DEBUG_LOGS:Z

    if-eqz v1, :cond_1

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/metrics/PerfMetricEvent;->getDifference()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    sget-object v2, Lcom/amazon/kcp/application/metrics/internal/PerfMetricsCollector;->TAG:Ljava/lang/String;

    sget-object v4, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/metrics/PerfMetricEvent;->getDifference()J

    move-result-wide v5

    const/4 v7, 0x0

    move-object v8, p2

    invoke-virtual/range {v1 .. v8}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportTimerMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;JLjava/util/Map;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method
