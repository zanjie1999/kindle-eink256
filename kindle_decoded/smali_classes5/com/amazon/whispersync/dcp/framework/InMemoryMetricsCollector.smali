.class public Lcom/amazon/whispersync/dcp/framework/InMemoryMetricsCollector;
.super Lcom/amazon/whispersync/dcp/metrics/LoggingMetricsCollector;
.source "InMemoryMetricsCollector.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private final mActiveTimers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mCounters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mMetricEvents:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mTimings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const-class v0, Lcom/amazon/whispersync/dcp/framework/InMemoryMetricsCollector;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/dcp/framework/InMemoryMetricsCollector;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 27
    sget-object v0, Lcom/amazon/whispersync/dcp/framework/InMemoryMetricsCollector;->TAG:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/dcp/metrics/LoggingMetricsCollector;-><init>(Ljava/lang/String;)V

    .line 23
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/InMemoryMetricsCollector;->mMetricEvents:Ljava/util/Queue;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/InMemoryMetricsCollector;->mCounters:Ljava/util/HashMap;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/InMemoryMetricsCollector;->mTimings:Ljava/util/HashMap;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/InMemoryMetricsCollector;->mActiveTimers:Ljava/util/HashMap;

    return-void
.end method

.method private getElapsedTime(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;Ljava/lang/String;)J
    .locals 2

    .line 130
    invoke-static {p1, p2}, Lcom/amazon/whispersync/dcp/framework/InMemoryMetricsCollector;->metricKey(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 131
    iget-object p2, p0, Lcom/amazon/whispersync/dcp/framework/InMemoryMetricsCollector;->mActiveTimers:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-nez p1, :cond_0

    .line 134
    sget-object p1, Lcom/amazon/whispersync/dcp/framework/InMemoryMetricsCollector;->TAG:Ljava/lang/String;

    const-string p2, "Error stopping timer that doesn\'t exist, ignoring"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 p1, 0x0

    return-wide p1

    .line 138
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    sub-long/2addr v0, p1

    return-wide v0
.end method

.method private static metricKey(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 179
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;->getDomain()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;->getComponent()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;->getName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x2

    aput-object p0, v0, v1

    const/4 p0, 0x3

    aput-object p1, v0, p0

    const-string p0, "%s:%s:%s:%s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/InMemoryMetricsCollector;->mMetricEvents:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 42
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/InMemoryMetricsCollector;->mActiveTimers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 43
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/InMemoryMetricsCollector;->mCounters:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 44
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/InMemoryMetricsCollector;->mTimings:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public counterHasValue(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;Ljava/lang/String;)Z
    .locals 0

    .line 157
    invoke-static {p1, p2}, Lcom/amazon/whispersync/dcp/framework/InMemoryMetricsCollector;->metricKey(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 158
    iget-object p2, p0, Lcom/amazon/whispersync/dcp/framework/InMemoryMetricsCollector;->mCounters:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getCounterValue(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;Ljava/lang/String;)I
    .locals 0

    .line 143
    invoke-static {p1, p2}, Lcom/amazon/whispersync/dcp/framework/InMemoryMetricsCollector;->metricKey(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 144
    iget-object p2, p0, Lcom/amazon/whispersync/dcp/framework/InMemoryMetricsCollector;->mCounters:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 151
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getMetricEvents()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/InMemoryMetricsCollector;->mMetricEvents:Ljava/util/Queue;

    return-object v0
.end method

.method public getTiming(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 165
    invoke-static {p1, p2}, Lcom/amazon/whispersync/dcp/framework/InMemoryMetricsCollector;->metricKey(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 166
    iget-object p2, p0, Lcom/amazon/whispersync/dcp/framework/InMemoryMetricsCollector;->mTimings:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    .line 169
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    return-object p1
.end method

.method public incrementMetricCounter(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;Ljava/lang/String;I)V
    .locals 1

    .line 73
    invoke-static {p1, p2}, Lcom/amazon/whispersync/dcp/framework/InMemoryMetricsCollector;->metricKey(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 74
    iget-object p2, p0, Lcom/amazon/whispersync/dcp/framework/InMemoryMetricsCollector;->mCounters:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 77
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/InMemoryMetricsCollector;->mCounters:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    add-int/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public incrementMetricCounter(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;Ljava/util/Map;)V
    .locals 2
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

    .line 62
    invoke-super {p0, p1, p2}, Lcom/amazon/whispersync/dcp/metrics/LoggingMetricsCollector;->incrementMetricCounter(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;Ljava/util/Map;)V

    .line 64
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 66
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p1, v1, v0}, Lcom/amazon/whispersync/dcp/framework/InMemoryMetricsCollector;->incrementMetricCounter(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    const-string v0, "counter"

    .line 68
    invoke-virtual {p0, p1, v0, p2}, Lcom/amazon/whispersync/dcp/framework/InMemoryMetricsCollector;->incrementMetricCounter(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;Ljava/lang/String;I)V

    return-void
.end method

.method public varargs incrementMetricCounter(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;[Ljava/lang/String;)V
    .locals 4

    .line 50
    invoke-super {p0, p1, p2}, Lcom/amazon/whispersync/dcp/metrics/LoggingMetricsCollector;->incrementMetricCounter(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;[Ljava/lang/String;)V

    .line 52
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    if-ge v1, v0, :cond_0

    aget-object v3, p2, v1

    .line 54
    invoke-virtual {p0, p1, v3, v2}, Lcom/amazon/whispersync/dcp/framework/InMemoryMetricsCollector;->incrementMetricCounter(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;Ljava/lang/String;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string p2, "counter"

    .line 56
    invoke-virtual {p0, p1, p2, v2}, Lcom/amazon/whispersync/dcp/framework/InMemoryMetricsCollector;->incrementMetricCounter(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;Ljava/lang/String;I)V

    return-void
.end method

.method protected logMetric(Ljava/lang/String;)V
    .locals 1

    .line 189
    invoke-super {p0, p1}, Lcom/amazon/whispersync/dcp/metrics/LoggingMetricsCollector;->logMetric(Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/InMemoryMetricsCollector;->mMetricEvents:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public recordMetricTimerEvent(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;Ljava/lang/String;J)V
    .locals 1

    .line 85
    invoke-super {p0, p1, p2, p3, p4}, Lcom/amazon/whispersync/dcp/metrics/LoggingMetricsCollector;->recordMetricTimerEvent(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;Ljava/lang/String;J)V

    .line 87
    invoke-static {p1, p2}, Lcom/amazon/whispersync/dcp/framework/InMemoryMetricsCollector;->metricKey(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 88
    iget-object p2, p0, Lcom/amazon/whispersync/dcp/framework/InMemoryMetricsCollector;->mTimings:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    if-nez p2, :cond_0

    .line 91
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 92
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/InMemoryMetricsCollector;->mTimings:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    :cond_0
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public startDurableTimer(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;Ljava/lang/String;)V
    .locals 2

    .line 100
    invoke-super {p0, p1, p2}, Lcom/amazon/whispersync/dcp/metrics/LoggingMetricsCollector;->startDurableTimer(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;Ljava/lang/String;)V

    .line 102
    invoke-static {p1, p2}, Lcom/amazon/whispersync/dcp/framework/InMemoryMetricsCollector;->metricKey(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 103
    iget-object p2, p0, Lcom/amazon/whispersync/dcp/framework/InMemoryMetricsCollector;->mActiveTimers:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public stopDurableTimer(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;Ljava/lang/String;)J
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 109
    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/whispersync/dcp/framework/InMemoryMetricsCollector;->stopDurableTimer(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide p1

    return-wide p1
.end method

.method public varargs stopDurableTimer(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;Ljava/lang/String;[Ljava/lang/String;)J
    .locals 4

    .line 115
    invoke-super {p0, p1, p2, p3}, Lcom/amazon/whispersync/dcp/metrics/LoggingMetricsCollector;->stopDurableTimer(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;Ljava/lang/String;[Ljava/lang/String;)J

    .line 117
    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/dcp/framework/InMemoryMetricsCollector;->getElapsedTime(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;Ljava/lang/String;)J

    move-result-wide v0

    .line 119
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/amazon/whispersync/dcp/framework/InMemoryMetricsCollector;->recordMetricTimerEvent(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;Ljava/lang/String;J)V

    .line 120
    array-length p2, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_0

    aget-object v3, p3, v2

    .line 122
    invoke-virtual {p0, p1, v3, v0, v1}, Lcom/amazon/whispersync/dcp/framework/InMemoryMetricsCollector;->recordMetricTimerEvent(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;Ljava/lang/String;J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method
