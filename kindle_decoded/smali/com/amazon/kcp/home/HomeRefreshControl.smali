.class public final Lcom/amazon/kcp/home/HomeRefreshControl;
.super Ljava/lang/Object;
.source "HomeRefreshControl.kt"

# interfaces
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/home/HomeRefreshControl$Listener;,
        Lcom/amazon/kcp/home/HomeRefreshControl$ListenerAdapter;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final listener:Lcom/amazon/kcp/home/HomeRefreshControl$Listener;

.field private final metricsClass:Ljava/lang/String;

.field private networkCallback:Lcom/amazon/kcp/home/HomeRefreshControl$networkCallback$1;

.field private startTime:J

.field private final swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;Ljava/lang/String;Lcom/amazon/kcp/home/HomeRefreshControl$Listener;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "swipeRefreshLayout"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "metricsClass"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/home/HomeRefreshControl;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/amazon/kcp/home/HomeRefreshControl;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iput-object p3, p0, Lcom/amazon/kcp/home/HomeRefreshControl;->metricsClass:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/kcp/home/HomeRefreshControl;->listener:Lcom/amazon/kcp/home/HomeRefreshControl$Listener;

    .line 49
    new-instance p1, Lcom/amazon/kcp/home/HomeRefreshControl$networkCallback$1;

    invoke-direct {p1, p0}, Lcom/amazon/kcp/home/HomeRefreshControl$networkCallback$1;-><init>(Lcom/amazon/kcp/home/HomeRefreshControl;)V

    iput-object p1, p0, Lcom/amazon/kcp/home/HomeRefreshControl;->networkCallback:Lcom/amazon/kcp/home/HomeRefreshControl$networkCallback$1;

    .line 78
    iget-object p1, p0, Lcom/amazon/kcp/home/HomeRefreshControl;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {p1, p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 80
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 82
    iget-object p1, p0, Lcom/amazon/kcp/home/HomeRefreshControl;->context:Landroid/content/Context;

    const-string p2, "connectivity"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Landroid/net/ConnectivityManager;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Landroid/net/ConnectivityManager;

    if-eqz p1, :cond_1

    .line 83
    new-instance p2, Landroid/net/NetworkRequest$Builder;

    invoke-direct {p2}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {p2}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object p2

    iget-object p3, p0, Lcom/amazon/kcp/home/HomeRefreshControl;->networkCallback:Lcom/amazon/kcp/home/HomeRefreshControl$networkCallback$1;

    invoke-virtual {p1, p2, p3}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_1
    return-void
.end method

.method public static final synthetic access$finishIfNecessary(Lcom/amazon/kcp/home/HomeRefreshControl;ZLjava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/home/HomeRefreshControl;->finishIfNecessary(ZLjava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getContext$p(Lcom/amazon/kcp/home/HomeRefreshControl;)Landroid/content/Context;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/amazon/kcp/home/HomeRefreshControl;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$startIfNecessary(Lcom/amazon/kcp/home/HomeRefreshControl;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/amazon/kcp/home/HomeRefreshControl;->startIfNecessary()V

    return-void
.end method

.method private final finishIfNecessary(ZLjava/lang/String;)V
    .locals 6

    .line 164
    iget-object v0, p0, Lcom/amazon/kcp/home/HomeRefreshControl;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->isRefreshing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/home/HomeRefreshControl;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 169
    iget-object v0, p0, Lcom/amazon/kcp/home/HomeRefreshControl;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iget-object v2, p0, Lcom/amazon/kcp/home/HomeRefreshControl;->context:Landroid/content/Context;

    sget v3, Lcom/amazon/kcp/home/R$string;->kre_home_sync_end:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->announceForAccessibility(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_1

    .line 171
    iget-object p1, p0, Lcom/amazon/kcp/home/HomeRefreshControl;->listener:Lcom/amazon/kcp/home/HomeRefreshControl$Listener;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/amazon/kcp/home/HomeRefreshControl$Listener;->onAfterRefresh()V

    :cond_1
    if-eqz p2, :cond_2

    .line 175
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kcp/home/HomeRefreshControl;->metricsClass:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/amazon/kcp/home/HomeRefreshControl;->startTime:J

    sub-long/2addr v2, v4

    invoke-virtual {p1, v0, p2, v2, v3}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportTimerMetric(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_2
    const-string p1, "HomePullToRefresh"

    .line 177
    invoke-static {p1, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    return-void
.end method

.method private final startIfNecessary()V
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/amazon/kcp/home/HomeRefreshControl;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->isRefreshing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/amazon/kcp/home/HomeRefreshControl;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final onDeactivate()V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "PullToRefresh-Abandoned"

    .line 148
    invoke-direct {p0, v0, v1}, Lcom/amazon/kcp/home/HomeRefreshControl;->finishIfNecessary(ZLjava/lang/String;)V

    return-void
.end method

.method public final onDeeplinkEvent(Lcom/amazon/kcp/application/DeeplinkEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    invoke-virtual {p1}, Lcom/amazon/kcp/application/DeeplinkEvent;->getType()Lcom/amazon/kcp/application/DeeplinkEvent$Type;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/application/DeeplinkEvent$Type;->START_BOOK_OPEN:Lcom/amazon/kcp/application/DeeplinkEvent$Type;

    if-ne v0, v1, :cond_0

    .line 126
    iget-object p1, p0, Lcom/amazon/kcp/home/HomeRefreshControl;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    new-instance v0, Lcom/amazon/kcp/home/HomeRefreshControl$onDeeplinkEvent$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/home/HomeRefreshControl$onDeeplinkEvent$1;-><init>(Lcom/amazon/kcp/home/HomeRefreshControl;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 127
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kcp/application/DeeplinkEvent;->getType()Lcom/amazon/kcp/application/DeeplinkEvent$Type;

    move-result-object p1

    sget-object v0, Lcom/amazon/kcp/application/DeeplinkEvent$Type;->END_BOOK_OPEN:Lcom/amazon/kcp/application/DeeplinkEvent$Type;

    if-ne p1, v0, :cond_1

    .line 128
    iget-object p1, p0, Lcom/amazon/kcp/home/HomeRefreshControl;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    new-instance v0, Lcom/amazon/kcp/home/HomeRefreshControl$onDeeplinkEvent$2;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/home/HomeRefreshControl$onDeeplinkEvent$2;-><init>(Lcom/amazon/kcp/home/HomeRefreshControl;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "PullToRefresh-Abandoned"

    .line 136
    invoke-direct {p0, v0, v1}, Lcom/amazon/kcp/home/HomeRefreshControl;->finishIfNecessary(ZLjava/lang/String;)V

    .line 138
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    .line 140
    iget-object v0, p0, Lcom/amazon/kcp/home/HomeRefreshControl;->context:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroid/net/ConnectivityManager;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_1

    .line 141
    iget-object v1, p0, Lcom/amazon/kcp/home/HomeRefreshControl;->networkCallback:Lcom/amazon/kcp/home/HomeRefreshControl$networkCallback$1;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_1
    return-void
.end method

.method public onRefresh()V
    .locals 5

    .line 87
    iget-object v0, p0, Lcom/amazon/kcp/home/HomeRefreshControl;->listener:Lcom/amazon/kcp/home/HomeRefreshControl$Listener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kcp/home/HomeRefreshControl$Listener;->onBeforeRefresh()V

    .line 89
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    const-string v2, "Utils.getFactory().authenticationManager"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->isAuthenticated()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    const-string v1, "PullToRefresh-NotLoggedIn"

    .line 90
    invoke-direct {p0, v0, v1}, Lcom/amazon/kcp/home/HomeRefreshControl;->finishIfNecessary(ZLjava/lang/String;)V

    return-void

    .line 94
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/services/IReaderServicesObjectFactory;->getNetworkService()Lcom/amazon/kindle/network/INetworkService;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/network/INetworkService;->hasNetworkConnectivity()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 95
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    const/4 v1, 0x0

    const-string v3, "ConnectionError"

    invoke-interface {v0, v3, v1}, Lcom/amazon/kcp/application/IUIMessaging;->showAlert(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "PullToRefresh-NoNetwork"

    .line 96
    invoke-direct {p0, v2, v0}, Lcom/amazon/kcp/home/HomeRefreshControl;->finishIfNecessary(ZLjava/lang/String;)V

    return-void

    .line 100
    :cond_2
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getSynchronizationManager()Lcom/amazon/kindle/sync/SynchronizationManager;

    move-result-object v0

    const-string v1, "Utils.getFactory().synchronizationManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/kindle/sync/SynchronizationManager;->isSyncing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 101
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/home/HomeRefreshControl;->metricsClass:Ljava/lang/String;

    const-string v3, "PullToRefresh-AlreadyInProgress"

    invoke-virtual {v0, v1, v3}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v0, "HomePullToRefresh"

    .line 104
    invoke-static {v0, v2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 105
    iget-object v0, p0, Lcom/amazon/kcp/home/HomeRefreshControl;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iget-object v1, p0, Lcom/amazon/kcp/home/HomeRefreshControl;->context:Landroid/content/Context;

    sget v3, Lcom/amazon/kcp/home/R$string;->kre_home_sync_start:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/kcp/home/HomeRefreshControl;->startTime:J

    .line 107
    sget-object v3, Lcom/amazon/kcp/home/CompletionMetricEmitter;->Companion:Lcom/amazon/kcp/home/CompletionMetricEmitter$Companion;

    iget-object v4, p0, Lcom/amazon/kcp/home/HomeRefreshControl;->metricsClass:Ljava/lang/String;

    invoke-virtual {v3, v4, v0, v1}, Lcom/amazon/kcp/home/CompletionMetricEmitter$Companion;->start(Ljava/lang/String;J)V

    .line 109
    invoke-static {}, Lcom/amazon/kcp/home/feeds/HomeFeedManagerSingleton;->getInstance()Lcom/amazon/kcp/home/feeds/HomeFeedManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/home/HomeRefreshControl$onRefresh$1;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/home/HomeRefreshControl$onRefresh$1;-><init>(Lcom/amazon/kcp/home/HomeRefreshControl;)V

    invoke-interface {v0, v2, v1}, Lcom/amazon/kcp/home/feeds/HomeFeedManager;->makeHomeFeedRequest(ZLcom/amazon/kcp/home/feeds/FeedResponseHandler;)V

    return-void
.end method

.method public final onSynchronizationManagerEvent(Lcom/amazon/kindle/sync/SynchronizationManagerEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    invoke-virtual {p1}, Lcom/amazon/kindle/sync/SynchronizationManagerEvent;->getType()Lcom/amazon/kindle/sync/SynchronizationManagerEvent$EventType;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/sync/SynchronizationManagerEvent$EventType;->SYNC_FINISHED:Lcom/amazon/kindle/sync/SynchronizationManagerEvent$EventType;

    if-ne p1, v0, :cond_0

    .line 119
    iget-object p1, p0, Lcom/amazon/kcp/home/HomeRefreshControl;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    new-instance v0, Lcom/amazon/kcp/home/HomeRefreshControl$onSynchronizationManagerEvent$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/home/HomeRefreshControl$onSynchronizationManagerEvent$1;-><init>(Lcom/amazon/kcp/home/HomeRefreshControl;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
