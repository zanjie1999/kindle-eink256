.class public Lcom/amazon/whispersync/client/metrics/ConcurrentMetricEvent;
.super Ljava/lang/Object;
.source "ConcurrentMetricEvent.java"

# interfaces
.implements Lcom/amazon/whispersync/client/metrics/MetricEvent;


# instance fields
.field private final mDelegate:Lcom/amazon/whispersync/client/metrics/MetricEvent;


# direct methods
.method protected constructor <init>(Lcom/amazon/whispersync/client/metrics/MetricEvent;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/amazon/whispersync/client/metrics/ConcurrentMetricEvent;->mDelegate:Lcom/amazon/whispersync/client/metrics/MetricEvent;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 30
    invoke-static {}, Lcom/amazon/whispersync/client/metrics/MetricEventType;->getDefault()Lcom/amazon/whispersync/client/metrics/MetricEventType;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/whispersync/client/metrics/ConcurrentMetricEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whispersync/client/metrics/MetricEventType;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whispersync/client/metrics/MetricEventType;)V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amazon/whispersync/client/metrics/ConcurrentMetricEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whispersync/client/metrics/MetricEventType;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whispersync/client/metrics/MetricEventType;Z)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/amazon/whispersync/client/metrics/BasicMetricEvent;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/amazon/whispersync/client/metrics/BasicMetricEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whispersync/client/metrics/MetricEventType;Z)V

    iput-object v0, p0, Lcom/amazon/whispersync/client/metrics/ConcurrentMetricEvent;->mDelegate:Lcom/amazon/whispersync/client/metrics/MetricEvent;

    return-void
.end method


# virtual methods
.method public declared-synchronized addCounter(Ljava/lang/String;D)V
    .locals 1

    monitor-enter p0

    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/ConcurrentMetricEvent;->mDelegate:Lcom/amazon/whispersync/client/metrics/MetricEvent;

    invoke-interface {v0, p1, p2, p3}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->addCounter(Ljava/lang/String;D)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addDataPoint(Lcom/amazon/whispersync/client/metrics/DataPoint;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/client/metrics/MetricsException;
        }
    .end annotation

    monitor-enter p0

    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/ConcurrentMetricEvent;->mDelegate:Lcom/amazon/whispersync/client/metrics/MetricEvent;

    invoke-interface {v0, p1}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->addDataPoint(Lcom/amazon/whispersync/client/metrics/DataPoint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addDataPoints(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/client/metrics/DataPoint;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/client/metrics/MetricsException;
        }
    .end annotation

    monitor-enter p0

    .line 144
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/ConcurrentMetricEvent;->mDelegate:Lcom/amazon/whispersync/client/metrics/MetricEvent;

    invoke-interface {v0, p1}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->addDataPoints(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/ConcurrentMetricEvent;->mDelegate:Lcom/amazon/whispersync/client/metrics/MetricEvent;

    invoke-interface {v0, p1, p2}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->addString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addTimer(Ljava/lang/String;D)V
    .locals 1

    monitor-enter p0

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/ConcurrentMetricEvent;->mDelegate:Lcom/amazon/whispersync/client/metrics/MetricEvent;

    invoke-interface {v0, p1, p2, p3}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->addTimer(Ljava/lang/String;D)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addTimer(Ljava/lang/String;DI)V
    .locals 1

    monitor-enter p0

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/ConcurrentMetricEvent;->mDelegate:Lcom/amazon/whispersync/client/metrics/MetricEvent;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->addTimer(Ljava/lang/String;DI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized appendString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/ConcurrentMetricEvent;->mDelegate:Lcom/amazon/whispersync/client/metrics/MetricEvent;

    invoke-interface {v0, p1, p2}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->appendString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/ConcurrentMetricEvent;->mDelegate:Lcom/amazon/whispersync/client/metrics/MetricEvent;

    invoke-interface {v0}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAsDataPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/client/metrics/DataPoint;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/ConcurrentMetricEvent;->mDelegate:Lcom/amazon/whispersync/client/metrics/MetricEvent;

    invoke-interface {v0}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->getAsDataPoints()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAsDataPointsAndClear()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/client/metrics/DataPoint;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/ConcurrentMetricEvent;->mDelegate:Lcom/amazon/whispersync/client/metrics/MetricEvent;

    invoke-interface {v0}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->getAsDataPoints()Ljava/util/List;

    move-result-object v0

    .line 153
    iget-object v1, p0, Lcom/amazon/whispersync/client/metrics/ConcurrentMetricEvent;->mDelegate:Lcom/amazon/whispersync/client/metrics/MetricEvent;

    invoke-interface {v1}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMetricEventType()Lcom/amazon/whispersync/client/metrics/MetricEventType;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/ConcurrentMetricEvent;->mDelegate:Lcom/amazon/whispersync/client/metrics/MetricEvent;

    invoke-interface {v0}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->getMetricEventType()Lcom/amazon/whispersync/client/metrics/MetricEventType;

    move-result-object v0

    return-object v0
.end method

.method public getProgram()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/ConcurrentMetricEvent;->mDelegate:Lcom/amazon/whispersync/client/metrics/MetricEvent;

    invoke-interface {v0}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->getProgram()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/ConcurrentMetricEvent;->mDelegate:Lcom/amazon/whispersync/client/metrics/MetricEvent;

    invoke-interface {v0}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->getSource()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized hasDataPoints()Z
    .locals 1

    monitor-enter p0

    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/ConcurrentMetricEvent;->mDelegate:Lcom/amazon/whispersync/client/metrics/MetricEvent;

    invoke-interface {v0}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->hasDataPoints()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized incrementCounter(Ljava/lang/String;D)V
    .locals 1

    monitor-enter p0

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/ConcurrentMetricEvent;->mDelegate:Lcom/amazon/whispersync/client/metrics/MetricEvent;

    invoke-interface {v0, p1, p2, p3}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->incrementCounter(Ljava/lang/String;D)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeCounter(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/ConcurrentMetricEvent;->mDelegate:Lcom/amazon/whispersync/client/metrics/MetricEvent;

    invoke-interface {v0, p1}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->removeCounter(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeString(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/ConcurrentMetricEvent;->mDelegate:Lcom/amazon/whispersync/client/metrics/MetricEvent;

    invoke-interface {v0, p1}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->removeString(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeTimer(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/ConcurrentMetricEvent;->mDelegate:Lcom/amazon/whispersync/client/metrics/MetricEvent;

    invoke-interface {v0, p1}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->removeTimer(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized restoreFromMap(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 162
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/ConcurrentMetricEvent;->mDelegate:Lcom/amazon/whispersync/client/metrics/MetricEvent;

    invoke-interface {v0, p1}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->restoreFromMap(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized saveToMap(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/ConcurrentMetricEvent;->mDelegate:Lcom/amazon/whispersync/client/metrics/MetricEvent;

    invoke-interface {v0, p1}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->saveToMap(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized startTimer(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/ConcurrentMetricEvent;->mDelegate:Lcom/amazon/whispersync/client/metrics/MetricEvent;

    invoke-interface {v0, p1}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->startTimer(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized stopTimer(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/ConcurrentMetricEvent;->mDelegate:Lcom/amazon/whispersync/client/metrics/MetricEvent;

    invoke-interface {v0, p1}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->stopTimer(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 134
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/ConcurrentMetricEvent;->mDelegate:Lcom/amazon/whispersync/client/metrics/MetricEvent;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
