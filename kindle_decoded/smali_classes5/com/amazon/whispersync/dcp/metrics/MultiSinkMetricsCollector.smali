.class public abstract Lcom/amazon/whispersync/dcp/metrics/MultiSinkMetricsCollector;
.super Ljava/lang/Object;
.source "MultiSinkMetricsCollector.java"

# interfaces
.implements Lcom/amazon/whispersync/dcp/metrics/MetricsCollector;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private varargs validateExtraCounterNames([Ljava/lang/String;)V
    .locals 8

    .line 39
    array-length v0, p1

    if-nez v0, :cond_0

    return-void

    .line 44
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 46
    const-class v4, Ljava/lang/IllegalArgumentException;

    new-array v5, v1, [Ljava/lang/Object;

    const-string v6, "counter"

    const-string v7, "Illegal extra counter name: counter"

    invoke-static {v6, v3, v4, v7, v5}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotEquals(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v4, ":"

    .line 49
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    const-class v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Extra counter name may not contain a colon: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v4, v5, v3, v6}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkFalse(ZLjava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method protected abstract getCollectors()[Lcom/amazon/whispersync/dcp/metrics/MetricsCollector;
.end method

.method public incrementMetricCounter(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 61
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/metrics/MultiSinkMetricsCollector;->getCollectors()[Lcom/amazon/whispersync/dcp/metrics/MetricsCollector;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 63
    invoke-interface {v3, p1, p2}, Lcom/amazon/whispersync/dcp/metrics/MetricsCollector;->incrementMetricCounter(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;Ljava/util/Map;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs incrementMetricCounter(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;[Ljava/lang/String;)V
    .locals 4

    .line 29
    invoke-direct {p0, p2}, Lcom/amazon/whispersync/dcp/metrics/MultiSinkMetricsCollector;->validateExtraCounterNames([Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/metrics/MultiSinkMetricsCollector;->getCollectors()[Lcom/amazon/whispersync/dcp/metrics/MetricsCollector;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 33
    invoke-interface {v3, p1, p2}, Lcom/amazon/whispersync/dcp/metrics/MetricsCollector;->incrementMetricCounter(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;[Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public incrementStateMetricCounter(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 74
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/whispersync/dcp/framework/CollectionHelpers;->toArray(Ljava/util/Collection;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/dcp/metrics/MultiSinkMetricsCollector;->validateExtraCounterNames([Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/metrics/MultiSinkMetricsCollector;->getCollectors()[Lcom/amazon/whispersync/dcp/metrics/MetricsCollector;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 78
    invoke-interface {v3, p1, p2}, Lcom/amazon/whispersync/dcp/metrics/MetricsCollector;->incrementStateMetricCounter(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;Ljava/util/Map;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public recordMetricTimerEvent(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;Ljava/lang/String;J)V
    .locals 4

    .line 89
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/metrics/MultiSinkMetricsCollector;->getCollectors()[Lcom/amazon/whispersync/dcp/metrics/MetricsCollector;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 91
    invoke-interface {v3, p1, p2, p3, p4}, Lcom/amazon/whispersync/dcp/metrics/MetricsCollector;->recordMetricTimerEvent(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;Ljava/lang/String;J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public startDurableTimer(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;Ljava/lang/String;)V
    .locals 4

    .line 102
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/metrics/MultiSinkMetricsCollector;->getCollectors()[Lcom/amazon/whispersync/dcp/metrics/MetricsCollector;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 104
    invoke-interface {v3, p1, p2}, Lcom/amazon/whispersync/dcp/metrics/MetricsCollector;->startDurableTimer(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public stopDurableTimer(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;Ljava/lang/String;)J
    .locals 4

    .line 115
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/metrics/MultiSinkMetricsCollector;->getCollectors()[Lcom/amazon/whispersync/dcp/metrics/MetricsCollector;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 117
    invoke-interface {v3, p1, p2}, Lcom/amazon/whispersync/dcp/metrics/MetricsCollector;->stopDurableTimer(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;Ljava/lang/String;)J

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public varargs stopDurableTimer(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;Ljava/lang/String;[Ljava/lang/String;)J
    .locals 4

    .line 129
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/metrics/MultiSinkMetricsCollector;->getCollectors()[Lcom/amazon/whispersync/dcp/metrics/MetricsCollector;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 131
    invoke-interface {v3, p1, p2, p3}, Lcom/amazon/whispersync/dcp/metrics/MetricsCollector;->stopDurableTimer(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;Ljava/lang/String;[Ljava/lang/String;)J

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x0

    return-wide p1
.end method
