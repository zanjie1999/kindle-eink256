.class public Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporterImpl;
.super Ljava/lang/Object;
.source "PeriodicMetricReporterImpl.java"

# interfaces
.implements Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporterImpl$PeriodicCommand;
    }
.end annotation


# static fields
.field private static final SHUTDOWN_TIMEOUT_MS:J = 0x7d0L


# instance fields
.field protected final mAdditionalMetricEvents:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/amazon/whispersync/client/metrics/MetricEvent;",
            ">;"
        }
    .end annotation
.end field

.field protected final mCommand:Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporterImpl$PeriodicCommand;

.field protected final mMetricEvent:Lcom/amazon/whispersync/client/metrics/MetricEvent;

.field protected final mMetricsFactory:Lcom/amazon/whispersync/client/metrics/MetricsFactory;

.field protected final mPriority:Lcom/amazon/whispersync/client/metrics/Priority;

.field protected final mThreadPool:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/client/metrics/MetricsFactory;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 149
    invoke-static {}, Lcom/amazon/whispersync/client/metrics/MetricEventType;->getDefault()Lcom/amazon/whispersync/client/metrics/MetricEventType;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporterImpl;-><init>(Lcom/amazon/whispersync/client/metrics/MetricsFactory;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whispersync/client/metrics/MetricEventType;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whispersync/client/metrics/MetricsFactory;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whispersync/client/metrics/MetricEventType;)V
    .locals 6

    .line 136
    sget-object v5, Lcom/amazon/whispersync/client/metrics/Priority;->NORMAL:Lcom/amazon/whispersync/client/metrics/Priority;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporterImpl;-><init>(Lcom/amazon/whispersync/client/metrics/MetricsFactory;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whispersync/client/metrics/MetricEventType;Lcom/amazon/whispersync/client/metrics/Priority;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whispersync/client/metrics/MetricsFactory;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whispersync/client/metrics/MetricEventType;Lcom/amazon/whispersync/client/metrics/Priority;)V
    .locals 1

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 95
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    .line 98
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iput-object p1, p0, Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporterImpl;->mMetricsFactory:Lcom/amazon/whispersync/client/metrics/MetricsFactory;

    .line 103
    new-instance p1, Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporterImpl$PeriodicCommand;

    invoke-direct {p1, p0}, Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporterImpl$PeriodicCommand;-><init>(Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporterImpl;)V

    iput-object p1, p0, Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporterImpl;->mCommand:Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporterImpl$PeriodicCommand;

    .line 104
    new-instance p1, Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporterImpl$1;

    invoke-direct {p1, p0}, Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporterImpl$1;-><init>(Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporterImpl;)V

    invoke-static {p1}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporterImpl;->mThreadPool:Ljava/util/concurrent/ScheduledExecutorService;

    .line 114
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporterImpl;->mAdditionalMetricEvents:Ljava/util/Collection;

    .line 119
    iget-object p1, p0, Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporterImpl;->mMetricsFactory:Lcom/amazon/whispersync/client/metrics/MetricsFactory;

    const/4 v0, 0x1

    invoke-interface {p1, p2, p3, p4, v0}, Lcom/amazon/whispersync/client/metrics/MetricsFactory;->createConcurrentMetricEvent(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whispersync/client/metrics/MetricEventType;Z)Lcom/amazon/whispersync/client/metrics/MetricEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporterImpl;->mMetricEvent:Lcom/amazon/whispersync/client/metrics/MetricEvent;

    .line 122
    iput-object p5, p0, Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporterImpl;->mPriority:Lcom/amazon/whispersync/client/metrics/Priority;

    return-void

    .line 99
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Argument: source cannot be null or empty."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 96
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Argument: program cannot be null or empty."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 93
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Argument: factory cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporterImpl;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporterImpl;->recordMetricEvent()V

    return-void
.end method

.method private recordMetricEvent()V
    .locals 4

    .line 228
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporterImpl;->mMetricsFactory:Lcom/amazon/whispersync/client/metrics/MetricsFactory;

    iget-object v1, p0, Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporterImpl;->mMetricEvent:Lcom/amazon/whispersync/client/metrics/MetricEvent;

    iget-object v2, p0, Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporterImpl;->mPriority:Lcom/amazon/whispersync/client/metrics/Priority;

    invoke-interface {v0, v1, v2}, Lcom/amazon/whispersync/client/metrics/MetricsFactory;->record(Lcom/amazon/whispersync/client/metrics/MetricEvent;Lcom/amazon/whispersync/client/metrics/Priority;)V

    .line 230
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporterImpl;->mAdditionalMetricEvents:Ljava/util/Collection;

    monitor-enter v0

    .line 231
    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporterImpl;->mAdditionalMetricEvents:Ljava/util/Collection;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 232
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/client/metrics/MetricEvent;

    .line 234
    iget-object v2, p0, Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporterImpl;->mMetricsFactory:Lcom/amazon/whispersync/client/metrics/MetricsFactory;

    iget-object v3, p0, Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporterImpl;->mPriority:Lcom/amazon/whispersync/client/metrics/Priority;

    invoke-interface {v2, v1, v3}, Lcom/amazon/whispersync/client/metrics/MetricsFactory;->record(Lcom/amazon/whispersync/client/metrics/MetricEvent;Lcom/amazon/whispersync/client/metrics/Priority;)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 232
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public createTrackedMetricEvent(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/whispersync/client/metrics/MetricEvent;
    .locals 1

    .line 167
    invoke-static {}, Lcom/amazon/whispersync/client/metrics/MetricEventType;->getDefault()Lcom/amazon/whispersync/client/metrics/MetricEventType;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporterImpl;->createTrackedMetricEvent(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whispersync/client/metrics/MetricEventType;)Lcom/amazon/whispersync/client/metrics/MetricEvent;

    move-result-object p1

    return-object p1
.end method

.method public createTrackedMetricEvent(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whispersync/client/metrics/MetricEventType;)Lcom/amazon/whispersync/client/metrics/MetricEvent;
    .locals 2

    .line 173
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporterImpl;->mAdditionalMetricEvents:Ljava/util/Collection;

    monitor-enter v0

    .line 174
    :try_start_0
    iget-object v1, p0, Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporterImpl;->mMetricsFactory:Lcom/amazon/whispersync/client/metrics/MetricsFactory;

    invoke-interface {v1, p1, p2, p3}, Lcom/amazon/whispersync/client/metrics/MetricsFactory;->createConcurrentMetricEvent(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whispersync/client/metrics/MetricEventType;)Lcom/amazon/whispersync/client/metrics/MetricEvent;

    move-result-object p1

    .line 176
    iget-object p2, p0, Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporterImpl;->mAdditionalMetricEvents:Ljava/util/Collection;

    invoke-interface {p2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 177
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 178
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getMetricEvent()Lcom/amazon/whispersync/client/metrics/MetricEvent;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporterImpl;->mMetricEvent:Lcom/amazon/whispersync/client/metrics/MetricEvent;

    return-object v0
.end method

.method public shutdown()V
    .locals 4

    .line 203
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporterImpl;->mCommand:Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporterImpl$PeriodicCommand;

    invoke-virtual {v0}, Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporterImpl$PeriodicCommand;->shutdown()V

    .line 204
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporterImpl;->mThreadPool:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 208
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporterImpl;->mThreadPool:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x7d0

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/ScheduledExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporterImpl;->mThreadPool:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 211
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporterImpl;->mThreadPool:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/ScheduledExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 217
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

    .line 157
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporterImpl;->mThreadPool:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporterImpl;->mCommand:Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporterImpl$PeriodicCommand;

    move-wide v2, p1

    move-wide v4, p1

    move-object v6, p3

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public stopTrackingMetricEvent(Lcom/amazon/whispersync/client/metrics/MetricEvent;)V
    .locals 2

    .line 183
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporterImpl;->mAdditionalMetricEvents:Ljava/util/Collection;

    monitor-enter v0

    .line 184
    :try_start_0
    iget-object v1, p0, Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporterImpl;->mAdditionalMetricEvents:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 189
    monitor-exit v0

    return-void

    .line 191
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporterImpl;->mMetricsFactory:Lcom/amazon/whispersync/client/metrics/MetricsFactory;

    iget-object v1, p0, Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporterImpl;->mPriority:Lcom/amazon/whispersync/client/metrics/Priority;

    invoke-interface {v0, p1, v1}, Lcom/amazon/whispersync/client/metrics/MetricsFactory;->record(Lcom/amazon/whispersync/client/metrics/MetricEvent;Lcom/amazon/whispersync/client/metrics/Priority;)V

    return-void

    :catchall_0
    move-exception p1

    .line 191
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
