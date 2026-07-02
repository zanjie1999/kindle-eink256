.class public final Lcom/audible/hushpuppy/common/metric/MetricManager;
.super Ljava/lang/Object;
.source "MetricManager.java"

# interfaces
.implements Lcom/audible/hushpuppy/common/metric/IMetricLogger;


# static fields
.field private static final INSTANCE:Lcom/audible/hushpuppy/common/metric/MetricManager;


# instance fields
.field private defaultLogger:Lcom/audible/hushpuppy/common/metric/IMetricLogger;

.field private final hushpuppyMetricLoggers:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/audible/hushpuppy/common/metric/IMetricLogger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lcom/audible/hushpuppy/common/metric/MetricManager;

    invoke-direct {v0}, Lcom/audible/hushpuppy/common/metric/MetricManager;-><init>()V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/MetricManager;->INSTANCE:Lcom/audible/hushpuppy/common/metric/MetricManager;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 45
    new-instance v0, Lcom/audible/hushpuppy/common/metric/DummyMetricLogger;

    invoke-direct {v0}, Lcom/audible/hushpuppy/common/metric/DummyMetricLogger;-><init>()V

    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/common/metric/MetricManager;-><init>(Lcom/audible/hushpuppy/common/metric/IMetricLogger;)V

    return-void
.end method

.method constructor <init>(Lcom/audible/hushpuppy/common/metric/IMetricLogger;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/audible/hushpuppy/common/metric/MetricManager;->hushpuppyMetricLoggers:Ljava/util/Collection;

    .line 55
    iput-object p1, p0, Lcom/audible/hushpuppy/common/metric/MetricManager;->defaultLogger:Lcom/audible/hushpuppy/common/metric/IMetricLogger;

    .line 56
    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;
    .locals 1

    .line 66
    sget-object v0, Lcom/audible/hushpuppy/common/metric/MetricManager;->INSTANCE:Lcom/audible/hushpuppy/common/metric/MetricManager;

    return-object v0
.end method


# virtual methods
.method public register(Lcom/audible/hushpuppy/common/metric/IMetricLogger;)V
    .locals 2

    const-string v0, "metricLogger can\'t be null."

    .line 76
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 79
    iget-object v0, p0, Lcom/audible/hushpuppy/common/metric/MetricManager;->hushpuppyMetricLoggers:Ljava/util/Collection;

    iget-object v1, p0, Lcom/audible/hushpuppy/common/metric/MetricManager;->defaultLogger:Lcom/audible/hushpuppy/common/metric/IMetricLogger;

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/audible/hushpuppy/common/metric/MetricManager;->hushpuppyMetricLoggers:Ljava/util/Collection;

    iget-object v1, p0, Lcom/audible/hushpuppy/common/metric/MetricManager;->defaultLogger:Lcom/audible/hushpuppy/common/metric/IMetricLogger;

    invoke-interface {v0, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 81
    iput-object v0, p0, Lcom/audible/hushpuppy/common/metric/MetricManager;->defaultLogger:Lcom/audible/hushpuppy/common/metric/IMetricLogger;

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/common/metric/MetricManager;->hushpuppyMetricLoggers:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/audible/hushpuppy/common/metric/MetricManager;->hushpuppyMetricLoggers:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/audible/hushpuppy/common/metric/IMetricLogger;

    .line 90
    invoke-interface {v1, p1, p2}, Lcom/audible/hushpuppy/common/metric/IMetricLogger;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Ljava/lang/String;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/audible/hushpuppy/common/metric/MetricManager;->hushpuppyMetricLoggers:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/audible/hushpuppy/common/metric/IMetricLogger;

    .line 99
    invoke-interface {v1, p1, p2, p3}, Lcom/audible/hushpuppy/common/metric/IMetricLogger;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Ljava/lang/String;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public startSynchronousTimerMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;)V
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/audible/hushpuppy/common/metric/MetricManager;->hushpuppyMetricLoggers:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/audible/hushpuppy/common/metric/IMetricLogger;

    .line 155
    invoke-interface {v1, p1}, Lcom/audible/hushpuppy/common/metric/IMetricLogger;->startSynchronousTimerMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public startSynchronousTimerMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;Ljava/lang/String;)V
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/audible/hushpuppy/common/metric/MetricManager;->hushpuppyMetricLoggers:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/audible/hushpuppy/common/metric/IMetricLogger;

    .line 163
    invoke-interface {v1, p1, p2}, Lcom/audible/hushpuppy/common/metric/IMetricLogger;->startSynchronousTimerMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public startTimerMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;)V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/audible/hushpuppy/common/metric/MetricManager;->hushpuppyMetricLoggers:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/audible/hushpuppy/common/metric/IMetricLogger;

    .line 123
    invoke-interface {v1, p1}, Lcom/audible/hushpuppy/common/metric/IMetricLogger;->startTimerMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public startTimerMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;Ljava/lang/String;)V
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/audible/hushpuppy/common/metric/MetricManager;->hushpuppyMetricLoggers:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/audible/hushpuppy/common/metric/IMetricLogger;

    .line 131
    invoke-interface {v1, p1, p2}, Lcom/audible/hushpuppy/common/metric/IMetricLogger;->startTimerMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public stopSynchronousTimerMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;)V
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/audible/hushpuppy/common/metric/MetricManager;->hushpuppyMetricLoggers:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/audible/hushpuppy/common/metric/IMetricLogger;

    .line 171
    invoke-interface {v1, p1}, Lcom/audible/hushpuppy/common/metric/IMetricLogger;->stopSynchronousTimerMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public stopSynchronousTimerMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;Ljava/lang/String;)V
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/audible/hushpuppy/common/metric/MetricManager;->hushpuppyMetricLoggers:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/audible/hushpuppy/common/metric/IMetricLogger;

    .line 179
    invoke-interface {v1, p1, p2}, Lcom/audible/hushpuppy/common/metric/IMetricLogger;->stopSynchronousTimerMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public stopTimerMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;)V
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/audible/hushpuppy/common/metric/MetricManager;->hushpuppyMetricLoggers:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/audible/hushpuppy/common/metric/IMetricLogger;

    .line 139
    invoke-interface {v1, p1}, Lcom/audible/hushpuppy/common/metric/IMetricLogger;->stopTimerMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public stopTimerMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;Ljava/lang/String;)V
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/audible/hushpuppy/common/metric/MetricManager;->hushpuppyMetricLoggers:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/audible/hushpuppy/common/metric/IMetricLogger;

    .line 147
    invoke-interface {v1, p1, p2}, Lcom/audible/hushpuppy/common/metric/IMetricLogger;->stopTimerMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
