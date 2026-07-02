.class public Lcom/amazon/client/metrics/thirdparty/ConcurrentMetricEvent;
.super Ljava/lang/Object;
.source "ConcurrentMetricEvent.java"

# interfaces
.implements Lcom/amazon/client/metrics/thirdparty/MetricEvent;


# instance fields
.field private final mCounterLock:Ljava/lang/Object;

.field private final mDVLock:Ljava/lang/Object;

.field private final mDelegate:Lcom/amazon/client/metrics/thirdparty/MetricEvent;

.field private final mTimerLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/client/metrics/thirdparty/MetricEventType;Z)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amazon/client/metrics/thirdparty/ConcurrentMetricEvent;->mCounterLock:Ljava/lang/Object;

    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amazon/client/metrics/thirdparty/ConcurrentMetricEvent;->mTimerLock:Ljava/lang/Object;

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amazon/client/metrics/thirdparty/ConcurrentMetricEvent;->mDVLock:Ljava/lang/Object;

    .line 40
    new-instance v0, Lcom/amazon/client/metrics/thirdparty/internal/BasicMetricEvent;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/amazon/client/metrics/thirdparty/internal/BasicMetricEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/client/metrics/thirdparty/MetricEventType;Z)V

    iput-object v0, p0, Lcom/amazon/client/metrics/thirdparty/ConcurrentMetricEvent;->mDelegate:Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    return-void
.end method


# virtual methods
.method public addCounter(Ljava/lang/String;D)V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/ConcurrentMetricEvent;->mCounterLock:Ljava/lang/Object;

    monitor-enter v0

    .line 66
    :try_start_0
    iget-object v1, p0, Lcom/amazon/client/metrics/thirdparty/ConcurrentMetricEvent;->mDelegate:Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    invoke-interface {v1, p1, p2, p3}, Lcom/amazon/client/metrics/thirdparty/MetricEvent;->addCounter(Ljava/lang/String;D)V

    .line 67
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public addDataPoint(Lcom/amazon/client/metrics/thirdparty/DataPoint;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/client/metrics/thirdparty/MetricsException;
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/ConcurrentMetricEvent;->mCounterLock:Ljava/lang/Object;

    monitor-enter v0

    .line 188
    :try_start_0
    iget-object v1, p0, Lcom/amazon/client/metrics/thirdparty/ConcurrentMetricEvent;->mTimerLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 189
    :try_start_1
    iget-object v2, p0, Lcom/amazon/client/metrics/thirdparty/ConcurrentMetricEvent;->mDVLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 190
    :try_start_2
    iget-object v3, p0, Lcom/amazon/client/metrics/thirdparty/ConcurrentMetricEvent;->mDelegate:Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    invoke-interface {v3, p1}, Lcom/amazon/client/metrics/thirdparty/MetricEvent;->addDataPoint(Lcom/amazon/client/metrics/thirdparty/DataPoint;)V

    .line 191
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 192
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 193
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    return-void

    :catchall_0
    move-exception p1

    .line 191
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1

    :catchall_1
    move-exception p1

    .line 192
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw p1

    :catchall_2
    move-exception p1

    .line 193
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw p1
.end method

.method public addString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/ConcurrentMetricEvent;->mDVLock:Ljava/lang/Object;

    monitor-enter v0

    .line 122
    :try_start_0
    iget-object v1, p0, Lcom/amazon/client/metrics/thirdparty/ConcurrentMetricEvent;->mDelegate:Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    invoke-interface {v1, p1, p2}, Lcom/amazon/client/metrics/thirdparty/MetricEvent;->addString(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public addTimer(Ljava/lang/String;D)V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/ConcurrentMetricEvent;->mTimerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 87
    :try_start_0
    iget-object v1, p0, Lcom/amazon/client/metrics/thirdparty/ConcurrentMetricEvent;->mDelegate:Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    invoke-interface {v1, p1, p2, p3}, Lcom/amazon/client/metrics/thirdparty/MetricEvent;->addTimer(Ljava/lang/String;D)V

    .line 88
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public appendString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/ConcurrentMetricEvent;->mDVLock:Ljava/lang/Object;

    monitor-enter v0

    .line 129
    :try_start_0
    iget-object v1, p0, Lcom/amazon/client/metrics/thirdparty/ConcurrentMetricEvent;->mDelegate:Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    invoke-interface {v1, p1, p2}, Lcom/amazon/client/metrics/thirdparty/MetricEvent;->appendString(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public clear()V
    .locals 4

    .line 142
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/ConcurrentMetricEvent;->mCounterLock:Ljava/lang/Object;

    monitor-enter v0

    .line 143
    :try_start_0
    iget-object v1, p0, Lcom/amazon/client/metrics/thirdparty/ConcurrentMetricEvent;->mTimerLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 144
    :try_start_1
    iget-object v2, p0, Lcom/amazon/client/metrics/thirdparty/ConcurrentMetricEvent;->mDVLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 145
    :try_start_2
    iget-object v3, p0, Lcom/amazon/client/metrics/thirdparty/ConcurrentMetricEvent;->mDelegate:Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    invoke-interface {v3}, Lcom/amazon/client/metrics/thirdparty/MetricEvent;->clear()V

    .line 146
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 147
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 148
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    return-void

    :catchall_0
    move-exception v3

    .line 146
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v3

    :catchall_1
    move-exception v2

    .line 147
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v2

    :catchall_2
    move-exception v1

    .line 148
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v1
.end method

.method public getAnonymous()Z
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/ConcurrentMetricEvent;->mDelegate:Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    invoke-interface {v0}, Lcom/amazon/client/metrics/thirdparty/MetricEvent;->getAnonymous()Z

    move-result v0

    return v0
.end method

.method public getAsDataPoints()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/client/metrics/thirdparty/DataPoint;",
            ">;"
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/ConcurrentMetricEvent;->mCounterLock:Ljava/lang/Object;

    monitor-enter v0

    .line 166
    :try_start_0
    iget-object v1, p0, Lcom/amazon/client/metrics/thirdparty/ConcurrentMetricEvent;->mTimerLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 167
    :try_start_1
    iget-object v2, p0, Lcom/amazon/client/metrics/thirdparty/ConcurrentMetricEvent;->mDVLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 168
    :try_start_2
    iget-object v3, p0, Lcom/amazon/client/metrics/thirdparty/ConcurrentMetricEvent;->mDelegate:Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    invoke-interface {v3}, Lcom/amazon/client/metrics/thirdparty/MetricEvent;->getAsDataPoints()Ljava/util/List;

    move-result-object v3

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    return-object v3

    :catchall_0
    move-exception v3

    .line 169
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v3

    :catchall_1
    move-exception v2

    .line 170
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v2

    :catchall_2
    move-exception v1

    .line 171
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v1
.end method

.method public getAsDataPointsAndClear()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/client/metrics/thirdparty/DataPoint;",
            ">;"
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/ConcurrentMetricEvent;->mCounterLock:Ljava/lang/Object;

    monitor-enter v0

    .line 213
    :try_start_0
    iget-object v1, p0, Lcom/amazon/client/metrics/thirdparty/ConcurrentMetricEvent;->mTimerLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 214
    :try_start_1
    iget-object v2, p0, Lcom/amazon/client/metrics/thirdparty/ConcurrentMetricEvent;->mDVLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 215
    :try_start_2
    iget-object v3, p0, Lcom/amazon/client/metrics/thirdparty/ConcurrentMetricEvent;->mDelegate:Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    invoke-interface {v3}, Lcom/amazon/client/metrics/thirdparty/MetricEvent;->getAsDataPoints()Ljava/util/List;

    move-result-object v3

    .line 216
    iget-object v4, p0, Lcom/amazon/client/metrics/thirdparty/ConcurrentMetricEvent;->mDelegate:Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    invoke-interface {v4}, Lcom/amazon/client/metrics/thirdparty/MetricEvent;->clear()V

    .line 217
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    return-object v3

    :catchall_0
    move-exception v3

    .line 218
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v3

    :catchall_1
    move-exception v2

    .line 219
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v2

    :catchall_2
    move-exception v1

    .line 220
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v1
.end method

.method public getNonAnonymousCustomerId()Ljava/lang/String;
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/ConcurrentMetricEvent;->mDelegate:Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    invoke-interface {v0}, Lcom/amazon/client/metrics/thirdparty/MetricEvent;->getNonAnonymousCustomerId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNonAnonymousSessionId()Ljava/lang/String;
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/ConcurrentMetricEvent;->mDelegate:Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    invoke-interface {v0}, Lcom/amazon/client/metrics/thirdparty/MetricEvent;->getNonAnonymousSessionId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProgram()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/ConcurrentMetricEvent;->mDelegate:Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    invoke-interface {v0}, Lcom/amazon/client/metrics/thirdparty/MetricEvent;->getProgram()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/ConcurrentMetricEvent;->mDelegate:Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    invoke-interface {v0}, Lcom/amazon/client/metrics/thirdparty/MetricEvent;->getSource()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public incrementCounter(Ljava/lang/String;D)V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/ConcurrentMetricEvent;->mCounterLock:Ljava/lang/Object;

    monitor-enter v0

    .line 73
    :try_start_0
    iget-object v1, p0, Lcom/amazon/client/metrics/thirdparty/ConcurrentMetricEvent;->mDelegate:Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    invoke-interface {v1, p1, p2, p3}, Lcom/amazon/client/metrics/thirdparty/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    .line 74
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setAnonymous(Z)V
    .locals 2

    .line 269
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/ConcurrentMetricEvent;->mDVLock:Ljava/lang/Object;

    monitor-enter v0

    .line 270
    :try_start_0
    iget-object v1, p0, Lcom/amazon/client/metrics/thirdparty/ConcurrentMetricEvent;->mDelegate:Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    invoke-interface {v1, p1}, Lcom/amazon/client/metrics/thirdparty/MetricEvent;->setAnonymous(Z)V

    .line 271
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setNonAnonymousCustomerId(Ljava/lang/String;)V
    .locals 2

    .line 262
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/ConcurrentMetricEvent;->mDVLock:Ljava/lang/Object;

    monitor-enter v0

    .line 263
    :try_start_0
    iget-object v1, p0, Lcom/amazon/client/metrics/thirdparty/ConcurrentMetricEvent;->mDelegate:Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    invoke-interface {v1, p1}, Lcom/amazon/client/metrics/thirdparty/MetricEvent;->setNonAnonymousCustomerId(Ljava/lang/String;)V

    .line 264
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setNonAnonymousSessionId(Ljava/lang/String;)V
    .locals 2

    .line 255
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/ConcurrentMetricEvent;->mDVLock:Ljava/lang/Object;

    monitor-enter v0

    .line 256
    :try_start_0
    iget-object v1, p0, Lcom/amazon/client/metrics/thirdparty/ConcurrentMetricEvent;->mDelegate:Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    invoke-interface {v1, p1}, Lcom/amazon/client/metrics/thirdparty/MetricEvent;->setNonAnonymousSessionId(Ljava/lang/String;)V

    .line 257
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public startTimer(Ljava/lang/String;)V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/ConcurrentMetricEvent;->mTimerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 101
    :try_start_0
    iget-object v1, p0, Lcom/amazon/client/metrics/thirdparty/ConcurrentMetricEvent;->mDelegate:Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    invoke-interface {v1, p1}, Lcom/amazon/client/metrics/thirdparty/MetricEvent;->startTimer(Ljava/lang/String;)V

    .line 102
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public stopTimer(Ljava/lang/String;)V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/ConcurrentMetricEvent;->mTimerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 108
    :try_start_0
    iget-object v1, p0, Lcom/amazon/client/metrics/thirdparty/ConcurrentMetricEvent;->mDelegate:Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    invoke-interface {v1, p1}, Lcom/amazon/client/metrics/thirdparty/MetricEvent;->stopTimer(Ljava/lang/String;)V

    .line 109
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 176
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/ConcurrentMetricEvent;->mCounterLock:Ljava/lang/Object;

    monitor-enter v0

    .line 177
    :try_start_0
    iget-object v1, p0, Lcom/amazon/client/metrics/thirdparty/ConcurrentMetricEvent;->mTimerLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 178
    :try_start_1
    iget-object v2, p0, Lcom/amazon/client/metrics/thirdparty/ConcurrentMetricEvent;->mDVLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 179
    :try_start_2
    iget-object v3, p0, Lcom/amazon/client/metrics/thirdparty/ConcurrentMetricEvent;->mDelegate:Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    return-object v3

    :catchall_0
    move-exception v3

    .line 180
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v3

    :catchall_1
    move-exception v2

    .line 181
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v2

    :catchall_2
    move-exception v1

    .line 182
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v1
.end method
