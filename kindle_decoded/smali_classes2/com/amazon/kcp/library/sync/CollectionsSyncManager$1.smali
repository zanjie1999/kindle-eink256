.class Lcom/amazon/kcp/library/sync/CollectionsSyncManager$1;
.super Ljava/lang/Object;
.source "CollectionsSyncManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/sync/CollectionsSyncManager;->handleUserAccountRegistration()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/sync/CollectionsSyncManager;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/sync/CollectionsSyncManager;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/amazon/kcp/library/sync/CollectionsSyncManager$1;->this$0:Lcom/amazon/kcp/library/sync/CollectionsSyncManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 108
    sget-object v0, Lcom/amazon/kcp/application/FTUEPerformanceMetricsReporter;->INSTANCE:Lcom/amazon/kcp/application/FTUEPerformanceMetricsReporter;

    sget-object v1, Lcom/amazon/kcp/application/PerfMarker;->FTUE_COLLECTIONS_SYNC_START:Lcom/amazon/kcp/application/PerfMarker;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/FTUEPerformanceMetricsReporter;->reportTimeSinceRegistration(Lcom/amazon/kcp/application/PerfMarker;)V

    .line 109
    sget-object v0, Lcom/amazon/kcp/application/FTUEPerformanceMetricsReporter;->INSTANCE:Lcom/amazon/kcp/application/FTUEPerformanceMetricsReporter;

    sget-object v1, Lcom/amazon/kcp/application/PerfMarker;->FTUE_COLLECTIONS_SYNC_START:Lcom/amazon/kcp/application/PerfMarker;

    sget-object v2, Lcom/amazon/kcp/application/PerfMarker;->FTUE_COLLECTIONS_SYNC_END:Lcom/amazon/kcp/application/PerfMarker;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/FTUEPerformanceMetricsReporter;->startTimer(Lcom/amazon/kcp/application/PerfMarker;Lcom/amazon/kcp/application/PerfMarker;)V

    .line 110
    iget-object v0, p0, Lcom/amazon/kcp/library/sync/CollectionsSyncManager$1;->this$0:Lcom/amazon/kcp/library/sync/CollectionsSyncManager;

    iget-object v0, v0, Lcom/amazon/kcp/library/sync/CollectionsSyncManager;->authManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->isAuthenticated()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 113
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/library/sync/CollectionsSyncManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Performing Collections bootstrap upon user registration..."

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/amazon/kcp/library/sync/CollectionsSyncManager$1;->this$0:Lcom/amazon/kcp/library/sync/CollectionsSyncManager;

    iget-object v0, v0, Lcom/amazon/kcp/library/sync/CollectionsSyncManager;->whispersyncClient:Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/IWhispersyncClient;

    const-string v1, "CloudCollections"

    const-string v2, "CloudCollections.Items"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/IWhispersyncClient;->connect([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/amazon/kcp/library/sync/CollectionsSyncManager$1;->this$0:Lcom/amazon/kcp/library/sync/CollectionsSyncManager;

    invoke-static {v0}, Lcom/amazon/kcp/library/sync/CollectionsSyncManager;->access$100(Lcom/amazon/kcp/library/sync/CollectionsSyncManager;)V

    .line 119
    :cond_1
    sget-object v0, Lcom/amazon/kcp/application/FTUEPerformanceMetricsReporter;->INSTANCE:Lcom/amazon/kcp/application/FTUEPerformanceMetricsReporter;

    sget-object v1, Lcom/amazon/kcp/application/PerfMarker;->FTUE_COLLECTIONS_SYNC_END:Lcom/amazon/kcp/application/PerfMarker;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/FTUEPerformanceMetricsReporter;->reportTimeSinceRegistration(Lcom/amazon/kcp/application/PerfMarker;)V

    .line 120
    sget-object v0, Lcom/amazon/kcp/application/FTUEPerformanceMetricsReporter;->INSTANCE:Lcom/amazon/kcp/application/FTUEPerformanceMetricsReporter;

    sget-object v1, Lcom/amazon/kcp/application/PerfMarker;->FTUE_COLLECTIONS_SYNC_START:Lcom/amazon/kcp/application/PerfMarker;

    sget-object v2, Lcom/amazon/kcp/application/PerfMarker;->FTUE_COLLECTIONS_SYNC_END:Lcom/amazon/kcp/application/PerfMarker;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/FTUEPerformanceMetricsReporter;->stopTimer(Lcom/amazon/kcp/application/PerfMarker;Lcom/amazon/kcp/application/PerfMarker;)V

    return-void
.end method
