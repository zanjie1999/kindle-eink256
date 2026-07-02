.class public final Lcom/amazon/kcp/library/SwipeRefreshHelper$CompletionMetricEmitter;
.super Ljava/lang/Object;
.source "SwipeRefreshHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/SwipeRefreshHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CompletionMetricEmitter"
.end annotation


# static fields
.field private static final instances:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/amazon/kcp/library/SwipeRefreshHelper$CompletionMetricEmitter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final metricsClass:Ljava/lang/String;

.field private final startTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 213
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 214
    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/SwipeRefreshHelper$CompletionMetricEmitter;->instances:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;J)V
    .locals 0

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    iput-object p1, p0, Lcom/amazon/kcp/library/SwipeRefreshHelper$CompletionMetricEmitter;->metricsClass:Ljava/lang/String;

    .line 222
    iput-wide p2, p0, Lcom/amazon/kcp/library/SwipeRefreshHelper$CompletionMetricEmitter;->startTime:J

    return-void
.end method

.method static start(Ljava/lang/String;J)V
    .locals 1

    .line 232
    new-instance v0, Lcom/amazon/kcp/library/SwipeRefreshHelper$CompletionMetricEmitter;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/kcp/library/SwipeRefreshHelper$CompletionMetricEmitter;-><init>(Ljava/lang/String;J)V

    .line 233
    sget-object p0, Lcom/amazon/kcp/library/SwipeRefreshHelper$CompletionMetricEmitter;->instances:Ljava/util/Set;

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 234
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onSynchronizationManagerEvent(Lcom/amazon/kindle/sync/SynchronizationManagerEvent;)V
    .locals 6
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 239
    invoke-virtual {p1}, Lcom/amazon/kindle/sync/SynchronizationManagerEvent;->getType()Lcom/amazon/kindle/sync/SynchronizationManagerEvent$EventType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/sync/SynchronizationManagerEvent$EventType;->SYNC_FINISHED:Lcom/amazon/kindle/sync/SynchronizationManagerEvent$EventType;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/amazon/kcp/library/SwipeRefreshHelper$CompletionMetricEmitter;->instances:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 240
    invoke-virtual {p1}, Lcom/amazon/kindle/sync/SynchronizationManagerEvent;->getSyncParameters()Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->getResult()Lcom/amazon/kcp/application/sync/internal/SyncResult;

    move-result-object p1

    sget-object v0, Lcom/amazon/kcp/application/sync/internal/SyncResult;->ERROR:Lcom/amazon/kcp/application/sync/internal/SyncResult;

    if-ne p1, v0, :cond_0

    const-string p1, "PullToRefresh-Failed"

    goto :goto_0

    :cond_0
    const-string p1, "PullToRefresh-Succeeded"

    .line 242
    :goto_0
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/SwipeRefreshHelper$CompletionMetricEmitter;->metricsClass:Ljava/lang/String;

    invoke-static {}, Lcom/amazon/kcp/library/SwipeRefreshHelper;->access$100()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/amazon/kcp/library/SwipeRefreshHelper$CompletionMetricEmitter;->startTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportTimerMetric(Ljava/lang/String;Ljava/lang/String;J)V

    .line 243
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
