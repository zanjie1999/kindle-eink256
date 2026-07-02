.class public final Lcom/amazon/kcp/home/CompletionMetricEmitter;
.super Ljava/lang/Object;
.source "HomeRefreshControl.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/home/CompletionMetricEmitter$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/amazon/kcp/home/CompletionMetricEmitter$Companion;

.field private static final instances:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/amazon/kcp/home/CompletionMetricEmitter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final metricsClass:Ljava/lang/String;

.field private final startTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kcp/home/CompletionMetricEmitter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/home/CompletionMetricEmitter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kcp/home/CompletionMetricEmitter;->Companion:Lcom/amazon/kcp/home/CompletionMetricEmitter$Companion;

    .line 199
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/home/CompletionMetricEmitter;->instances:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 1

    const-string/jumbo v0, "metricsClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/home/CompletionMetricEmitter;->metricsClass:Ljava/lang/String;

    iput-wide p2, p0, Lcom/amazon/kcp/home/CompletionMetricEmitter;->startTime:J

    return-void
.end method

.method public static final synthetic access$getInstances$cp()Ljava/util/Set;
    .locals 1

    .line 184
    sget-object v0, Lcom/amazon/kcp/home/CompletionMetricEmitter;->instances:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public final onSynchronizationManagerEvent(Lcom/amazon/kindle/sync/SynchronizationManagerEvent;)V
    .locals 6
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    invoke-virtual {p1}, Lcom/amazon/kindle/sync/SynchronizationManagerEvent;->getType()Lcom/amazon/kindle/sync/SynchronizationManagerEvent$EventType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/sync/SynchronizationManagerEvent$EventType;->SYNC_FINISHED:Lcom/amazon/kindle/sync/SynchronizationManagerEvent$EventType;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/amazon/kcp/home/CompletionMetricEmitter;->instances:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
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

    .line 193
    :goto_0
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/home/CompletionMetricEmitter;->metricsClass:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/amazon/kcp/home/CompletionMetricEmitter;->startTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportTimerMetric(Ljava/lang/String;Ljava/lang/String;J)V

    .line 194
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
