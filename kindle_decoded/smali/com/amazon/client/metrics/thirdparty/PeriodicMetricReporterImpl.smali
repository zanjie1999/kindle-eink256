.class public Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporterImpl;
.super Ljava/lang/Object;
.source "PeriodicMetricReporterImpl.java"

# interfaces
.implements Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporterImpl$PeriodicCommand;
    }
.end annotation


# static fields
.field private static final SHUTDOWN_TIMEOUT_MS:J = 0x7d0L


# instance fields
.field protected final mAdditionalMetricEvents:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/amazon/client/metrics/thirdparty/MetricEvent;",
            ">;"
        }
    .end annotation
.end field

.field protected final mChannel:Lcom/amazon/client/metrics/thirdparty/Channel;

.field protected final mCommand:Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporterImpl$PeriodicCommand;

.field protected final mMetricEvent:Lcom/amazon/client/metrics/thirdparty/MetricEvent;

.field protected final mMetricsFactory:Lcom/amazon/client/metrics/thirdparty/MetricsFactory;

.field protected final mPriority:Lcom/amazon/client/metrics/thirdparty/Priority;

.field protected final mThreadPool:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public constructor <init>(Lcom/amazon/client/metrics/thirdparty/MetricsFactory;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 202
    invoke-static {}, Lcom/amazon/client/metrics/thirdparty/MetricEventType;->getDefault()Lcom/amazon/client/metrics/thirdparty/MetricEventType;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporterImpl;-><init>(Lcom/amazon/client/metrics/thirdparty/MetricsFactory;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/client/metrics/thirdparty/MetricEventType;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/client/metrics/thirdparty/MetricsFactory;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/client/metrics/thirdparty/MetricEventType;)V
    .locals 7

    .line 189
    sget-object v5, Lcom/amazon/client/metrics/thirdparty/Priority;->NORMAL:Lcom/amazon/client/metrics/thirdparty/Priority;

    sget-object v6, Lcom/amazon/client/metrics/thirdparty/Channel;->ANONYMOUS:Lcom/amazon/client/metrics/thirdparty/Channel;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporterImpl;-><init>(Lcom/amazon/client/metrics/thirdparty/MetricsFactory;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/client/metrics/thirdparty/MetricEventType;Lcom/amazon/client/metrics/thirdparty/Priority;Lcom/amazon/client/metrics/thirdparty/Channel;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/client/metrics/thirdparty/MetricsFactory;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/client/metrics/thirdparty/MetricEventType;Lcom/amazon/client/metrics/thirdparty/Priority;Lcom/amazon/client/metrics/thirdparty/Channel;)V
    .locals 1

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 103
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    .line 106
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iput-object p1, p0, Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporterImpl;->mMetricsFactory:Lcom/amazon/client/metrics/thirdparty/MetricsFactory;

    .line 111
    new-instance p1, Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporterImpl$PeriodicCommand;

    invoke-direct {p1, p0}, Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporterImpl$PeriodicCommand;-><init>(Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporterImpl;)V

    iput-object p1, p0, Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporterImpl;->mCommand:Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporterImpl$PeriodicCommand;

    .line 112
    new-instance p1, Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporterImpl$1;

    invoke-direct {p1, p0}, Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporterImpl$1;-><init>(Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporterImpl;)V

    invoke-static {p1}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporterImpl;->mThreadPool:Ljava/util/concurrent/ScheduledExecutorService;

    .line 122
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporterImpl;->mAdditionalMetricEvents:Ljava/util/Collection;

    .line 127
    iget-object p1, p0, Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporterImpl;->mMetricsFactory:Lcom/amazon/client/metrics/thirdparty/MetricsFactory;

    const/4 v0, 0x1

    invoke-interface {p1, p2, p3, p4, v0}, Lcom/amazon/client/metrics/thirdparty/MetricsFactory;->createConcurrentMetricEvent(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/client/metrics/thirdparty/MetricEventType;Z)Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporterImpl;->mMetricEvent:Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    .line 130
    iput-object p5, p0, Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporterImpl;->mPriority:Lcom/amazon/client/metrics/thirdparty/Priority;

    .line 131
    iput-object p6, p0, Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporterImpl;->mChannel:Lcom/amazon/client/metrics/thirdparty/Channel;

    return-void

    .line 107
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Argument: source cannot be null or empty."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 104
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Argument: program cannot be null or empty."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 101
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Argument: factory cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporterImpl;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporterImpl;->recordMetricEvent()V

    return-void
.end method

.method private recordMetricEvent()V
    .locals 5

    .line 281
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporterImpl;->mMetricEvent:Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    invoke-interface {v0}, Lcom/amazon/client/metrics/thirdparty/MetricEvent;->getAsDataPoints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporterImpl;->mMetricsFactory:Lcom/amazon/client/metrics/thirdparty/MetricsFactory;

    iget-object v1, p0, Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporterImpl;->mMetricEvent:Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    iget-object v2, p0, Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporterImpl;->mPriority:Lcom/amazon/client/metrics/thirdparty/Priority;

    iget-object v3, p0, Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporterImpl;->mChannel:Lcom/amazon/client/metrics/thirdparty/Channel;

    invoke-interface {v0, v1, v2, v3}, Lcom/amazon/client/metrics/thirdparty/MetricsFactory;->record(Lcom/amazon/client/metrics/thirdparty/MetricEvent;Lcom/amazon/client/metrics/thirdparty/Priority;Lcom/amazon/client/metrics/thirdparty/Channel;)V

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporterImpl;->mAdditionalMetricEvents:Ljava/util/Collection;

    monitor-enter v0

    .line 286
    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporterImpl;->mAdditionalMetricEvents:Ljava/util/Collection;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 287
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    .line 289
    invoke-interface {v1}, Lcom/amazon/client/metrics/thirdparty/MetricEvent;->getAsDataPoints()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 290
    iget-object v2, p0, Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporterImpl;->mMetricsFactory:Lcom/amazon/client/metrics/thirdparty/MetricsFactory;

    iget-object v3, p0, Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporterImpl;->mPriority:Lcom/amazon/client/metrics/thirdparty/Priority;

    iget-object v4, p0, Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporterImpl;->mChannel:Lcom/amazon/client/metrics/thirdparty/Channel;

    invoke-interface {v2, v1, v3, v4}, Lcom/amazon/client/metrics/thirdparty/MetricsFactory;->record(Lcom/amazon/client/metrics/thirdparty/MetricEvent;Lcom/amazon/client/metrics/thirdparty/Priority;Lcom/amazon/client/metrics/thirdparty/Channel;)V

    goto :goto_0

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    .line 287
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public createTrackedMetricEvent(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/client/metrics/thirdparty/MetricEvent;
    .locals 1

    .line 220
    invoke-static {}, Lcom/amazon/client/metrics/thirdparty/MetricEventType;->getDefault()Lcom/amazon/client/metrics/thirdparty/MetricEventType;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporterImpl;->createTrackedMetricEvent(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/client/metrics/thirdparty/MetricEventType;)Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    move-result-object p1

    return-object p1
.end method

.method public createTrackedMetricEvent(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/client/metrics/thirdparty/MetricEventType;)Lcom/amazon/client/metrics/thirdparty/MetricEvent;
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporterImpl;->mAdditionalMetricEvents:Ljava/util/Collection;

    monitor-enter v0

    .line 227
    :try_start_0
    iget-object v1, p0, Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporterImpl;->mMetricsFactory:Lcom/amazon/client/metrics/thirdparty/MetricsFactory;

    invoke-interface {v1, p1, p2, p3}, Lcom/amazon/client/metrics/thirdparty/MetricsFactory;->createConcurrentMetricEvent(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/client/metrics/thirdparty/MetricEventType;)Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    move-result-object p1

    .line 229
    iget-object p2, p0, Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporterImpl;->mAdditionalMetricEvents:Ljava/util/Collection;

    invoke-interface {p2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 230
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 231
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getMetricEvent()Lcom/amazon/client/metrics/thirdparty/MetricEvent;
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporterImpl;->mMetricEvent:Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    return-object v0
.end method

.method public shutdown()V
    .locals 4

    .line 256
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporterImpl;->mCommand:Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporterImpl$PeriodicCommand;

    invoke-virtual {v0}, Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporterImpl$PeriodicCommand;->shutdown()V

    .line 257
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporterImpl;->mThreadPool:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 261
    :try_start_0
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporterImpl;->mThreadPool:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x7d0

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/ScheduledExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporterImpl;->mThreadPool:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 264
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporterImpl;->mThreadPool:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/ScheduledExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 270
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    :goto_0
    return-void
.end method

.method public startRecordingPeriodically(JLjava/util/concurrent/TimeUnit;)V
    .locals 7

    .line 210
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporterImpl;->mThreadPool:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporterImpl;->mCommand:Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporterImpl$PeriodicCommand;

    move-wide v2, p1

    move-wide v4, p1

    move-object v6, p3

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method
