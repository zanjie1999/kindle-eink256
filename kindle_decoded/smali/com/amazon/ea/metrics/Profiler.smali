.class public Lcom/amazon/ea/metrics/Profiler;
.super Ljava/lang/Object;
.source "Profiler.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final attributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final counters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected endTime:J

.field protected final errorCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private isClosed:Z

.field private transient metricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

.field protected final numOpenReferences:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected final operation:Ljava/lang/String;

.field protected final startTime:J

.field protected final timers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const-class v0, Lcom/amazon/ea/metrics/Profiler;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/ea/metrics/Profiler;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/amazon/ea/metrics/Profiler;)V
    .locals 2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iget-object v0, p1, Lcom/amazon/ea/metrics/Profiler;->operation:Ljava/lang/String;

    iput-object v0, p0, Lcom/amazon/ea/metrics/Profiler;->operation:Ljava/lang/String;

    .line 60
    iget-object v0, p1, Lcom/amazon/ea/metrics/Profiler;->metricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    iput-object v0, p0, Lcom/amazon/ea/metrics/Profiler;->metricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    .line 61
    iget-object v0, p1, Lcom/amazon/ea/metrics/Profiler;->counters:Ljava/util/Map;

    iput-object v0, p0, Lcom/amazon/ea/metrics/Profiler;->counters:Ljava/util/Map;

    .line 62
    iget-object v0, p1, Lcom/amazon/ea/metrics/Profiler;->timers:Ljava/util/Map;

    iput-object v0, p0, Lcom/amazon/ea/metrics/Profiler;->timers:Ljava/util/Map;

    .line 63
    iget-object v0, p1, Lcom/amazon/ea/metrics/Profiler;->attributes:Ljava/util/Map;

    iput-object v0, p0, Lcom/amazon/ea/metrics/Profiler;->attributes:Ljava/util/Map;

    .line 64
    iget-wide v0, p1, Lcom/amazon/ea/metrics/Profiler;->startTime:J

    iput-wide v0, p0, Lcom/amazon/ea/metrics/Profiler;->startTime:J

    .line 65
    iget-object v0, p1, Lcom/amazon/ea/metrics/Profiler;->errorCount:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object v0, p0, Lcom/amazon/ea/metrics/Profiler;->errorCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 66
    iget-object p1, p1, Lcom/amazon/ea/metrics/Profiler;->numOpenReferences:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, p0, Lcom/amazon/ea/metrics/Profiler;->numOpenReferences:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 67
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/IMetricsManager;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/amazon/ea/metrics/Profiler;->operation:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lcom/amazon/ea/metrics/Profiler;->metricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    .line 50
    invoke-static {}, Lcom/amazon/ea/guava/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/ea/metrics/Profiler;->counters:Ljava/util/Map;

    .line 51
    invoke-static {}, Lcom/amazon/ea/guava/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/ea/metrics/Profiler;->timers:Ljava/util/Map;

    .line 52
    invoke-static {}, Lcom/amazon/ea/guava/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/ea/metrics/Profiler;->attributes:Ljava/util/Map;

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/amazon/ea/metrics/Profiler;->startTime:J

    .line 54
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/amazon/ea/metrics/Profiler;->errorCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 55
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/amazon/ea/metrics/Profiler;->numOpenReferences:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private declared-synchronized condCount(ZLjava/lang/String;)Z
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 292
    :goto_0
    :try_start_0
    invoke-virtual {p0, p2, v0}, Lcom/amazon/ea/metrics/Profiler;->addCount(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized addAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    if-eqz p2, :cond_0

    .line 220
    :try_start_0
    iget-object v0, p0, Lcom/amazon/ea/metrics/Profiler;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 222
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized addCount(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 89
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/amazon/ea/metrics/Profiler;->addCount(Ljava/lang/String;I)V
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

.method public declared-synchronized addCount(Ljava/lang/String;I)V
    .locals 2

    monitor-enter p0

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/amazon/ea/metrics/Profiler;->counters:Ljava/util/Map;

    iget-object v1, p0, Lcom/amazon/ea/metrics/Profiler;->counters:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/amazon/ea/metrics/Profiler;->counters:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr p2, v1

    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addError(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/amazon/ea/metrics/Profiler;->errorCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    const-string v0, "Errors"

    const/4 v1, 0x1

    .line 112
    invoke-virtual {p0, v0, v1}, Lcom/amazon/ea/metrics/Profiler;->addCount(Ljava/lang/String;I)V

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Errors."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lcom/amazon/ea/metrics/Profiler;->addCount(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addException(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(TT;)TT;"
        }
    .end annotation

    monitor-enter p0

    move-object v0, p1

    .line 127
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/util/concurrent/ExecutionException;

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 128
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exceptions."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/ea/metrics/Profiler;->addError(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    :cond_1
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addTimeMillis(Ljava/lang/String;J)V
    .locals 3

    monitor-enter p0

    .line 145
    :try_start_0
    iget-object v0, p0, Lcom/amazon/ea/metrics/Profiler;->timers:Ljava/util/Map;

    iget-object v1, p0, Lcom/amazon/ea/metrics/Profiler;->timers:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/amazon/ea/metrics/Profiler;->timers:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    add-long/2addr p2, v1

    :goto_0
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized close()V
    .locals 7

    monitor-enter p0

    .line 228
    :try_start_0
    iget-boolean v0, p0, Lcom/amazon/ea/metrics/Profiler;->isClosed:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 229
    iput-boolean v0, p0, Lcom/amazon/ea/metrics/Profiler;->isClosed:Z

    .line 230
    iget-object v0, p0, Lcom/amazon/ea/metrics/Profiler;->numOpenReferences:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_2

    .line 231
    invoke-virtual {p0}, Lcom/amazon/ea/metrics/Profiler;->setProfilerTime()V

    .line 232
    invoke-virtual {p0}, Lcom/amazon/ea/metrics/Profiler;->hasErrors()Z

    move-result v0

    const-string v1, "HasErrors"

    invoke-direct {p0, v0, v1}, Lcom/amazon/ea/metrics/Profiler;->condCount(ZLjava/lang/String;)Z

    .line 233
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    sget-object v0, Lcom/amazon/ea/metrics/Profiler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Submitting metrics\noperation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/ea/metrics/Profiler;->operation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\ncounters"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/ea/metrics/Profiler;->counters:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\ntimers"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/ea/metrics/Profiler;->timers:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\nattributes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/ea/metrics/Profiler;->attributes:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/amazon/ea/metrics/Profiler;->metricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    if-nez v0, :cond_1

    .line 238
    invoke-static {}, Lcom/amazon/ea/metrics/M;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/ea/metrics/Profiler;->metricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    if-nez v0, :cond_1

    .line 240
    sget-object v0, Lcom/amazon/ea/metrics/Profiler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MetricsManager is null; cannot report Profiler: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/ea/metrics/Profiler;->operation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    monitor-exit p0

    return-void

    .line 244
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/amazon/ea/metrics/Profiler;->metricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EndActions."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/ea/metrics/Profiler;->operation:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/ea/metrics/Profiler;->counters:Ljava/util/Map;

    iget-object v4, p0, Lcom/amazon/ea/metrics/Profiler;->timers:Ljava/util/Map;

    iget-object v5, p0, Lcom/amazon/ea/metrics/Profiler;->attributes:Ljava/util/Map;

    const-string v6, ""

    invoke-interface/range {v1 .. v6}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetrics(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 247
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized closeFromDisk()V
    .locals 7

    monitor-enter p0

    .line 254
    :try_start_0
    iget-boolean v0, p0, Lcom/amazon/ea/metrics/Profiler;->isClosed:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 255
    iput-boolean v0, p0, Lcom/amazon/ea/metrics/Profiler;->isClosed:Z

    .line 256
    iget-object v0, p0, Lcom/amazon/ea/metrics/Profiler;->numOpenReferences:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_2

    .line 257
    invoke-virtual {p0}, Lcom/amazon/ea/metrics/Profiler;->hasErrors()Z

    move-result v0

    const-string v1, "HasErrors"

    invoke-direct {p0, v0, v1}, Lcom/amazon/ea/metrics/Profiler;->condCount(ZLjava/lang/String;)Z

    .line 258
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    sget-object v0, Lcom/amazon/ea/metrics/Profiler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Submitting metrics\noperation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/ea/metrics/Profiler;->operation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\ncounters"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/ea/metrics/Profiler;->counters:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\ntimers"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/ea/metrics/Profiler;->timers:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\nattributes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/ea/metrics/Profiler;->attributes:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/amazon/ea/metrics/Profiler;->metricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    if-nez v0, :cond_1

    .line 263
    invoke-static {}, Lcom/amazon/ea/metrics/M;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/ea/metrics/Profiler;->metricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    if-nez v0, :cond_1

    .line 265
    sget-object v0, Lcom/amazon/ea/metrics/Profiler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MetricsManager is null; cannot report Profiler: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/ea/metrics/Profiler;->operation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    monitor-exit p0

    return-void

    .line 269
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/amazon/ea/metrics/Profiler;->metricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EndActions."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/ea/metrics/Profiler;->operation:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/ea/metrics/Profiler;->counters:Ljava/util/Map;

    iget-object v4, p0, Lcom/amazon/ea/metrics/Profiler;->timers:Ljava/util/Map;

    iget-object v5, p0, Lcom/amazon/ea/metrics/Profiler;->attributes:Ljava/util/Map;

    const-string v6, ""

    invoke-interface/range {v1 .. v6}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetrics(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 272
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized condSet(ZLjava/lang/String;)Z
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 168
    :goto_0
    :try_start_0
    invoke-virtual {p0, p2, v0}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized createChild()Lcom/amazon/ea/metrics/Profiler;
    .locals 1

    monitor-enter p0

    .line 278
    :try_start_0
    new-instance v0, Lcom/amazon/ea/metrics/Profiler;

    invoke-direct {v0, p0}, Lcom/amazon/ea/metrics/Profiler;-><init>(Lcom/amazon/ea/metrics/Profiler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hasErrors()Z
    .locals 1

    monitor-enter p0

    .line 183
    :try_start_0
    iget-object v0, p0, Lcom/amazon/ea/metrics/Profiler;->errorCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized initCount(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/amazon/ea/metrics/Profiler;->counters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/amazon/ea/metrics/Profiler;->counters:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setCount(Ljava/lang/String;I)V
    .locals 1

    monitor-enter p0

    .line 207
    :try_start_0
    iget-object v0, p0, Lcom/amazon/ea/metrics/Profiler;->counters:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setProfilerTime()V
    .locals 6

    monitor-enter p0

    .line 154
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/ea/metrics/Profiler;->endTime:J

    .line 155
    iget-object v2, p0, Lcom/amazon/ea/metrics/Profiler;->timers:Ljava/util/Map;

    const-string v3, "Time"

    iget-wide v4, p0, Lcom/amazon/ea/metrics/Profiler;->startTime:J

    sub-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
