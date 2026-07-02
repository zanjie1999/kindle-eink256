.class Lcom/amazon/kcp/library/SwipeRefreshHelper$1;
.super Ljava/lang/Object;
.source "SwipeRefreshHelper.java"

# interfaces
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/SwipeRefreshHelper;-><init>(Landroid/content/Context;Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;Ljava/lang/String;Lcom/amazon/kcp/library/SwipeRefreshHelper$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/SwipeRefreshHelper;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$metricsClass:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/SwipeRefreshHelper;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/amazon/kcp/library/SwipeRefreshHelper$1;->this$0:Lcom/amazon/kcp/library/SwipeRefreshHelper;

    iput-object p2, p0, Lcom/amazon/kcp/library/SwipeRefreshHelper$1;->val$metricsClass:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/kcp/library/SwipeRefreshHelper$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 3

    .line 103
    iget-object v0, p0, Lcom/amazon/kcp/library/SwipeRefreshHelper$1;->this$0:Lcom/amazon/kcp/library/SwipeRefreshHelper;

    invoke-static {}, Lcom/amazon/kcp/library/SwipeRefreshHelper;->access$100()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/library/SwipeRefreshHelper;->access$002(Lcom/amazon/kcp/library/SwipeRefreshHelper;J)J

    .line 104
    iget-object v0, p0, Lcom/amazon/kcp/library/SwipeRefreshHelper$1;->this$0:Lcom/amazon/kcp/library/SwipeRefreshHelper;

    invoke-static {v0}, Lcom/amazon/kcp/library/SwipeRefreshHelper;->access$200(Lcom/amazon/kcp/library/SwipeRefreshHelper;)V

    .line 105
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->isAuthenticated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/amazon/kcp/library/SwipeRefreshHelper$1;->this$0:Lcom/amazon/kcp/library/SwipeRefreshHelper;

    const/4 v1, 0x0

    const-string v2, "PullToRefresh-NotLoggedIn"

    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/library/SwipeRefreshHelper;->access$300(Lcom/amazon/kcp/library/SwipeRefreshHelper;ZLjava/lang/String;)V

    goto :goto_0

    .line 107
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/services/IReaderServicesObjectFactory;->getNetworkService()Lcom/amazon/kindle/network/INetworkService;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/network/INetworkService;->hasNetworkConnectivity()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 108
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getSynchronizationManager()Lcom/amazon/kindle/sync/SynchronizationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/sync/SynchronizationManager;->isSyncing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/SwipeRefreshHelper$1;->val$metricsClass:Ljava/lang/String;

    const-string v2, "PullToRefresh-AlreadyInProgress"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/library/SwipeRefreshHelper$1;->val$metricsClass:Ljava/lang/String;

    iget-object v1, p0, Lcom/amazon/kcp/library/SwipeRefreshHelper$1;->this$0:Lcom/amazon/kcp/library/SwipeRefreshHelper;

    invoke-static {v1}, Lcom/amazon/kcp/library/SwipeRefreshHelper;->access$000(Lcom/amazon/kcp/library/SwipeRefreshHelper;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/library/SwipeRefreshHelper$CompletionMetricEmitter;->start(Ljava/lang/String;J)V

    .line 112
    iget-object v0, p0, Lcom/amazon/kcp/library/SwipeRefreshHelper$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/kcp/application/sync/SyncHelper;->initiateFullLibrarySync(Landroid/content/Context;)V

    goto :goto_0

    .line 114
    :cond_2
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "ConnectionError"

    invoke-interface {v0, v2, v1}, Lcom/amazon/kcp/application/IUIMessaging;->showAlert(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/amazon/kcp/library/SwipeRefreshHelper$1;->this$0:Lcom/amazon/kcp/library/SwipeRefreshHelper;

    const/4 v1, 0x1

    const-string v2, "PullToRefresh-NoNetwork"

    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/library/SwipeRefreshHelper;->access$300(Lcom/amazon/kcp/library/SwipeRefreshHelper;ZLjava/lang/String;)V

    :goto_0
    return-void
.end method
