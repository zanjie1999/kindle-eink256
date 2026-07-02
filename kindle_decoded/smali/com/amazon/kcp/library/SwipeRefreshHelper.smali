.class public final Lcom/amazon/kcp/library/SwipeRefreshHelper;
.super Ljava/lang/Object;
.source "SwipeRefreshHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/SwipeRefreshHelper$CompletionMetricEmitter;,
        Lcom/amazon/kcp/library/SwipeRefreshHelper$ListenerAdapter;,
        Lcom/amazon/kcp/library/SwipeRefreshHelper$Listener;
    }
.end annotation


# static fields
.field private static final METRIC_PREFIX:Ljava/lang/String; = "PullToRefresh-"


# instance fields
.field private final listener:Lcom/amazon/kcp/library/SwipeRefreshHelper$Listener;

.field private final metricsClass:Ljava/lang/String;

.field private startTime:J

.field private final swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;Ljava/lang/String;Lcom/amazon/kcp/library/SwipeRefreshHelper$Listener;)V
    .locals 0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p3, p0, Lcom/amazon/kcp/library/SwipeRefreshHelper;->metricsClass:Ljava/lang/String;

    .line 98
    iput-object p4, p0, Lcom/amazon/kcp/library/SwipeRefreshHelper;->listener:Lcom/amazon/kcp/library/SwipeRefreshHelper$Listener;

    .line 99
    iput-object p2, p0, Lcom/amazon/kcp/library/SwipeRefreshHelper;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 100
    new-instance p4, Lcom/amazon/kcp/library/SwipeRefreshHelper$1;

    invoke-direct {p4, p0, p3, p1}, Lcom/amazon/kcp/library/SwipeRefreshHelper$1;-><init>(Lcom/amazon/kcp/library/SwipeRefreshHelper;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {p2, p4}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 119
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/library/SwipeRefreshHelper;)J
    .locals 2

    .line 34
    iget-wide v0, p0, Lcom/amazon/kcp/library/SwipeRefreshHelper;->startTime:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/amazon/kcp/library/SwipeRefreshHelper;J)J
    .locals 0

    .line 34
    iput-wide p1, p0, Lcom/amazon/kcp/library/SwipeRefreshHelper;->startTime:J

    return-wide p1
.end method

.method static synthetic access$100()J
    .locals 2

    .line 34
    invoke-static {}, Lcom/amazon/kcp/library/SwipeRefreshHelper;->time()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$200(Lcom/amazon/kcp/library/SwipeRefreshHelper;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/amazon/kcp/library/SwipeRefreshHelper;->notifyOnBeforeRefreshStarted()V

    return-void
.end method

.method static synthetic access$300(Lcom/amazon/kcp/library/SwipeRefreshHelper;ZLjava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/library/SwipeRefreshHelper;->finishIfNecessary(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/amazon/kcp/library/SwipeRefreshHelper;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/amazon/kcp/library/SwipeRefreshHelper;->startIfNecessary()V

    return-void
.end method

.method private finishIfNecessary(ZLjava/lang/String;)V
    .locals 5

    .line 173
    iget-object v0, p0, Lcom/amazon/kcp/library/SwipeRefreshHelper;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->isRefreshing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/amazon/kcp/library/SwipeRefreshHelper;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    if-eqz p1, :cond_0

    .line 176
    invoke-direct {p0}, Lcom/amazon/kcp/library/SwipeRefreshHelper;->notifyOnAfterRefreshFinished()V

    :cond_0
    if-eqz p2, :cond_1

    .line 179
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kcp/library/SwipeRefreshHelper;->metricsClass:Ljava/lang/String;

    invoke-static {}, Lcom/amazon/kcp/library/SwipeRefreshHelper;->time()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/amazon/kcp/library/SwipeRefreshHelper;->startTime:J

    sub-long/2addr v1, v3

    invoke-virtual {p1, v0, p2, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportTimerMetric(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_1
    return-void
.end method

.method private notifyOnAfterRefreshFinished()V
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/amazon/kcp/library/SwipeRefreshHelper;->listener:Lcom/amazon/kcp/library/SwipeRefreshHelper$Listener;

    if-eqz v0, :cond_0

    .line 202
    invoke-interface {v0}, Lcom/amazon/kcp/library/SwipeRefreshHelper$Listener;->onAfterRefreshFinished()V

    :cond_0
    return-void
.end method

.method private notifyOnBeforeRefreshStarted()V
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/amazon/kcp/library/SwipeRefreshHelper;->listener:Lcom/amazon/kcp/library/SwipeRefreshHelper$Listener;

    if-eqz v0, :cond_0

    .line 196
    invoke-interface {v0}, Lcom/amazon/kcp/library/SwipeRefreshHelper$Listener;->onBeforeRefreshStarted()V

    :cond_0
    return-void
.end method

.method private startIfNecessary()V
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/amazon/kcp/library/SwipeRefreshHelper;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->isRefreshing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/amazon/kcp/library/SwipeRefreshHelper;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    :cond_0
    return-void
.end method

.method private static time()J
    .locals 2

    .line 191
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "PullToRefresh-Abandoned"

    .line 127
    invoke-direct {p0, v0, v1}, Lcom/amazon/kcp/library/SwipeRefreshHelper;->finishIfNecessary(ZLjava/lang/String;)V

    .line 128
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    return-void
.end method

.method public onDeeplinkEvent(Lcom/amazon/kcp/application/DeeplinkEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 155
    invoke-virtual {p1}, Lcom/amazon/kcp/application/DeeplinkEvent;->getType()Lcom/amazon/kcp/application/DeeplinkEvent$Type;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/application/DeeplinkEvent$Type;->START_BOOK_OPEN:Lcom/amazon/kcp/application/DeeplinkEvent$Type;

    if-ne v0, v1, :cond_0

    .line 156
    iget-object p1, p0, Lcom/amazon/kcp/library/SwipeRefreshHelper;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    new-instance v0, Lcom/amazon/kcp/library/SwipeRefreshHelper$3;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/SwipeRefreshHelper$3;-><init>(Lcom/amazon/kcp/library/SwipeRefreshHelper;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 162
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kcp/application/DeeplinkEvent;->getType()Lcom/amazon/kcp/application/DeeplinkEvent$Type;

    move-result-object p1

    sget-object v0, Lcom/amazon/kcp/application/DeeplinkEvent$Type;->END_BOOK_OPEN:Lcom/amazon/kcp/application/DeeplinkEvent$Type;

    if-ne p1, v0, :cond_1

    .line 163
    iget-object p1, p0, Lcom/amazon/kcp/library/SwipeRefreshHelper;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    new-instance v0, Lcom/amazon/kcp/library/SwipeRefreshHelper$4;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/SwipeRefreshHelper$4;-><init>(Lcom/amazon/kcp/library/SwipeRefreshHelper;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onSynchronizationManagerEvent(Lcom/amazon/kindle/sync/SynchronizationManagerEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 143
    invoke-virtual {p1}, Lcom/amazon/kindle/sync/SynchronizationManagerEvent;->getType()Lcom/amazon/kindle/sync/SynchronizationManagerEvent$EventType;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/sync/SynchronizationManagerEvent$EventType;->SYNC_FINISHED:Lcom/amazon/kindle/sync/SynchronizationManagerEvent$EventType;

    if-ne p1, v0, :cond_0

    .line 144
    iget-object p1, p0, Lcom/amazon/kcp/library/SwipeRefreshHelper;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    new-instance v0, Lcom/amazon/kcp/library/SwipeRefreshHelper$2;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/SwipeRefreshHelper$2;-><init>(Lcom/amazon/kcp/library/SwipeRefreshHelper;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "PullToRefresh-Abandoned"

    .line 138
    invoke-direct {p0, v0, v1}, Lcom/amazon/kcp/library/SwipeRefreshHelper;->finishIfNecessary(ZLjava/lang/String;)V

    return-void
.end method
