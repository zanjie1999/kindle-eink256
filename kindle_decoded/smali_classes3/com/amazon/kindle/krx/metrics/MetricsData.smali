.class public Lcom/amazon/kindle/krx/metrics/MetricsData;
.super Ljava/lang/Object;
.source "MetricsData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/krx/metrics/MetricsData$Counter;,
        Lcom/amazon/kindle/krx/metrics/MetricsData$Timer;
    }
.end annotation


# instance fields
.field private attributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private counters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/krx/metrics/MetricsData$Counter;",
            ">;"
        }
    .end annotation
.end field

.field private freeText:Ljava/lang/String;

.field private instanceTimer:Lcom/amazon/kindle/krx/metrics/MetricsData$Timer;

.field private metricType:Lcom/amazon/kindle/krx/metrics/MetricType;

.field private program:Ljava/lang/String;

.field private source:Ljava/lang/String;

.field private timers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/metrics/MetricsData$Timer;",
            ">;>;"
        }
    .end annotation
.end field

.field private withAppVersion:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcom/amazon/kindle/krx/metrics/MetricsData;->withAppVersion:Z

    .line 37
    sget-object v0, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    iput-object v0, p0, Lcom/amazon/kindle/krx/metrics/MetricsData;->metricType:Lcom/amazon/kindle/krx/metrics/MetricType;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/krx/metrics/MetricsData;->counters:Ljava/util/Map;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/krx/metrics/MetricsData;->timers:Ljava/util/Map;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/krx/metrics/MetricsData;->attributes:Ljava/util/Map;

    .line 121
    iput-object p1, p0, Lcom/amazon/kindle/krx/metrics/MetricsData;->program:Ljava/lang/String;

    .line 122
    iput-object p2, p0, Lcom/amazon/kindle/krx/metrics/MetricsData;->source:Ljava/lang/String;

    .line 123
    new-instance p1, Lcom/amazon/kindle/krx/metrics/MetricsData$Timer;

    invoke-direct {p1}, Lcom/amazon/kindle/krx/metrics/MetricsData$Timer;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/krx/metrics/MetricsData;->instanceTimer:Lcom/amazon/kindle/krx/metrics/MetricsData$Timer;

    .line 124
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/amazon/kindle/krx/metrics/MetricsData$Timer;->start:J

    return-void
.end method


# virtual methods
.method public declared-synchronized addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;
    .locals 1

    monitor-enter p0

    .line 322
    :try_start_0
    invoke-static {p1}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/amazon/kindle/krx/metrics/MetricsData;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 325
    :cond_0
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addAttributes(Ljava/util/Map;)Lcom/amazon/kindle/krx/metrics/MetricsData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazon/kindle/krx/metrics/MetricsData;"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 334
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 335
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 336
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 339
    :cond_0
    monitor-exit p0

    return-object p0
.end method

.method public declared-synchronized addCountingMetric(Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 279
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addCountingMetric(Ljava/lang/String;I)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addCountingMetric(Ljava/lang/String;I)Lcom/amazon/kindle/krx/metrics/MetricsData;
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 290
    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addCountingMetric(Ljava/lang/String;ILjava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addCountingMetric(Ljava/lang/String;ILjava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;
    .locals 2

    monitor-enter p0

    .line 301
    :try_start_0
    invoke-static {p1}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    if-ltz p2, :cond_1

    .line 302
    iget-object v0, p0, Lcom/amazon/kindle/krx/metrics/MetricsData;->counters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/metrics/MetricsData$Counter;

    if-nez v0, :cond_0

    .line 304
    new-instance v0, Lcom/amazon/kindle/krx/metrics/MetricsData$Counter;

    invoke-direct {v0}, Lcom/amazon/kindle/krx/metrics/MetricsData$Counter;-><init>()V

    .line 305
    iget-object v1, p0, Lcom/amazon/kindle/krx/metrics/MetricsData;->counters:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    :cond_0
    iget p1, v0, Lcom/amazon/kindle/krx/metrics/MetricsData$Counter;->count:I

    add-int/2addr p1, p2

    iput p1, v0, Lcom/amazon/kindle/krx/metrics/MetricsData$Counter;->count:I

    .line 308
    invoke-static {p3}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 309
    iput-object p3, v0, Lcom/amazon/kindle/krx/metrics/MetricsData$Counter;->freeText:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    :cond_1
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addTimingMetric(Ljava/lang/String;JJ)Lcom/amazon/kindle/krx/metrics/MetricsData;
    .locals 7

    monitor-enter p0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 210
    :try_start_0
    invoke-virtual/range {v0 .. v6}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addTimingMetric(Ljava/lang/String;JJLjava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addTimingMetric(Ljava/lang/String;JJLjava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;
    .locals 3

    monitor-enter p0

    .line 223
    :try_start_0
    invoke-static {p1}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_2

    const-wide/16 v0, -0x1

    cmp-long v2, p4, v0

    if-eqz v2, :cond_0

    cmp-long v0, p4, p2

    if-ltz v0, :cond_2

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/metrics/MetricsData;->timers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_1

    .line 229
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 230
    iget-object v1, p0, Lcom/amazon/kindle/krx/metrics/MetricsData;->timers:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    :cond_1
    new-instance p1, Lcom/amazon/kindle/krx/metrics/MetricsData$Timer;

    invoke-direct {p1}, Lcom/amazon/kindle/krx/metrics/MetricsData$Timer;-><init>()V

    .line 233
    iput-wide p2, p1, Lcom/amazon/kindle/krx/metrics/MetricsData$Timer;->start:J

    .line 234
    iput-wide p4, p1, Lcom/amazon/kindle/krx/metrics/MetricsData$Timer;->end:J

    .line 235
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    invoke-static {p6}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 237
    iput-object p6, p1, Lcom/amazon/kindle/krx/metrics/MetricsData$Timer;->freeText:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    :cond_2
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public endMetrics()V
    .locals 10

    .line 160
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 161
    iget-object v2, p0, Lcom/amazon/kindle/krx/metrics/MetricsData;->instanceTimer:Lcom/amazon/kindle/krx/metrics/MetricsData$Timer;

    iget-wide v3, v2, Lcom/amazon/kindle/krx/metrics/MetricsData$Timer;->end:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-gez v7, :cond_0

    .line 162
    iput-wide v0, v2, Lcom/amazon/kindle/krx/metrics/MetricsData$Timer;->end:J

    .line 165
    :cond_0
    iget-object v2, p0, Lcom/amazon/kindle/krx/metrics/MetricsData;->timers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 166
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kindle/krx/metrics/MetricsData$Timer;

    .line 167
    iget-wide v7, v4, Lcom/amazon/kindle/krx/metrics/MetricsData$Timer;->end:J

    cmp-long v9, v7, v5

    if-gez v9, :cond_2

    .line 168
    iput-wide v0, v4, Lcom/amazon/kindle/krx/metrics/MetricsData$Timer;->end:J

    goto :goto_0

    :cond_3
    return-void
.end method

.method public declared-synchronized getAttributes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 366
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/metrics/MetricsData;->attributes:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCountingMetrics()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/krx/metrics/MetricsData$Counter;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 357
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/metrics/MetricsData;->counters:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getEndTime()J
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/amazon/kindle/krx/metrics/MetricsData;->instanceTimer:Lcom/amazon/kindle/krx/metrics/MetricsData$Timer;

    iget-wide v0, v0, Lcom/amazon/kindle/krx/metrics/MetricsData$Timer;->end:J

    return-wide v0
.end method

.method public getFreeText()Ljava/lang/String;
    .locals 1

    .line 406
    iget-object v0, p0, Lcom/amazon/kindle/krx/metrics/MetricsData;->freeText:Ljava/lang/String;

    return-object v0
.end method

.method public getMetricType()Lcom/amazon/kindle/krx/metrics/MetricType;
    .locals 1

    .line 384
    iget-object v0, p0, Lcom/amazon/kindle/krx/metrics/MetricsData;->metricType:Lcom/amazon/kindle/krx/metrics/MetricType;

    return-object v0
.end method

.method public getProgram()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/amazon/kindle/krx/metrics/MetricsData;->program:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/amazon/kindle/krx/metrics/MetricsData;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()J
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/amazon/kindle/krx/metrics/MetricsData;->instanceTimer:Lcom/amazon/kindle/krx/metrics/MetricsData$Timer;

    iget-wide v0, v0, Lcom/amazon/kindle/krx/metrics/MetricsData$Timer;->start:J

    return-wide v0
.end method

.method public declared-synchronized getTimingMetrics()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/metrics/MetricsData$Timer;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    .line 348
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/metrics/MetricsData;->timers:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isWithAppVersion()Z
    .locals 1

    .line 188
    iget-boolean v0, p0, Lcom/amazon/kindle/krx/metrics/MetricsData;->withAppVersion:Z

    return v0
.end method

.method public setFreeText(Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;
    .locals 0

    .line 375
    iput-object p1, p0, Lcom/amazon/kindle/krx/metrics/MetricsData;->freeText:Ljava/lang/String;

    return-object p0
.end method

.method public setMetricType(Lcom/amazon/kindle/krx/metrics/MetricType;)Lcom/amazon/kindle/krx/metrics/MetricsData;
    .locals 2

    .line 394
    iget-object v0, p0, Lcom/amazon/kindle/krx/metrics/MetricsData;->metricType:Lcom/amazon/kindle/krx/metrics/MetricType;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/metrics/MetricType;->getPriority()I

    move-result v0

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/metrics/MetricType;->getPriority()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 395
    iput-object p1, p0, Lcom/amazon/kindle/krx/metrics/MetricsData;->metricType:Lcom/amazon/kindle/krx/metrics/MetricType;

    :cond_0
    return-object p0
.end method

.method public setWithAppVersion(Z)Lcom/amazon/kindle/krx/metrics/MetricsData;
    .locals 0

    .line 198
    iput-boolean p1, p0, Lcom/amazon/kindle/krx/metrics/MetricsData;->withAppVersion:Z

    return-object p0
.end method

.method public declared-synchronized startTimingMetric(Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;
    .locals 6

    monitor-enter p0

    .line 250
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addTimingMetric(Ljava/lang/String;JJ)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized stopTimingMetric(Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;
    .locals 8

    monitor-enter p0

    .line 259
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 260
    iget-object v2, p0, Lcom/amazon/kindle/krx/metrics/MetricsData;->timers:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_1

    .line 262
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/krx/metrics/MetricsData$Timer;

    .line 263
    iget-wide v3, v2, Lcom/amazon/kindle/krx/metrics/MetricsData$Timer;->end:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-gez v7, :cond_0

    .line 264
    iput-wide v0, v2, Lcom/amazon/kindle/krx/metrics/MetricsData$Timer;->end:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 268
    :cond_1
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 411
    :try_start_0
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 412
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->omitNullValues()Lcom/google/common/base/MoreObjects$ToStringHelper;

    const-string v1, "program"

    iget-object v2, p0, Lcom/amazon/kindle/krx/metrics/MetricsData;->program:Ljava/lang/String;

    .line 413
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    const-string v1, "source"

    iget-object v2, p0, Lcom/amazon/kindle/krx/metrics/MetricsData;->source:Ljava/lang/String;

    .line 414
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    const-string v1, "metricType"

    iget-object v2, p0, Lcom/amazon/kindle/krx/metrics/MetricsData;->metricType:Lcom/amazon/kindle/krx/metrics/MetricType;

    .line 415
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    const-string v1, "freeText"

    iget-object v2, p0, Lcom/amazon/kindle/krx/metrics/MetricsData;->freeText:Ljava/lang/String;

    .line 416
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    const-string v1, "withAppVersion"

    iget-boolean v2, p0, Lcom/amazon/kindle/krx/metrics/MetricsData;->withAppVersion:Z

    .line 417
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    const-string v1, "instanceTimer"

    iget-object v2, p0, Lcom/amazon/kindle/krx/metrics/MetricsData;->instanceTimer:Lcom/amazon/kindle/krx/metrics/MetricsData$Timer;

    .line 418
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    const-string v1, "attributes"

    iget-object v2, p0, Lcom/amazon/kindle/krx/metrics/MetricsData;->attributes:Ljava/util/Map;

    .line 419
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    const-string v1, "counters"

    iget-object v2, p0, Lcom/amazon/kindle/krx/metrics/MetricsData;->counters:Ljava/util/Map;

    .line 420
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    const-string v1, "timers"

    iget-object v2, p0, Lcom/amazon/kindle/krx/metrics/MetricsData;->timers:Ljava/util/Map;

    .line 421
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 422
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 411
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
