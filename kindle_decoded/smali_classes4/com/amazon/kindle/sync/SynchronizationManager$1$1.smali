.class Lcom/amazon/kindle/sync/SynchronizationManager$1$1;
.super Ljava/lang/Object;
.source "SynchronizationManager.java"

# interfaces
.implements Lcom/amazon/foundation/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/sync/SynchronizationManager$1;->call()Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kindle/sync/SynchronizationManager$1;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/sync/SynchronizationManager$1;)V
    .locals 0

    .line 502
    iput-object p1, p0, Lcom/amazon/kindle/sync/SynchronizationManager$1$1;->this$1:Lcom/amazon/kindle/sync/SynchronizationManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 6

    .line 506
    iget-object v0, p0, Lcom/amazon/kindle/sync/SynchronizationManager$1$1;->this$1:Lcom/amazon/kindle/sync/SynchronizationManager$1;

    iget-object v1, v0, Lcom/amazon/kindle/sync/SynchronizationManager$1;->this$0:Lcom/amazon/kindle/sync/SynchronizationManager;

    iget-object v2, v0, Lcom/amazon/kindle/sync/SynchronizationManager$1;->val$syncTaskKey:Ljava/lang/Integer;

    iget-object v0, v0, Lcom/amazon/kindle/sync/SynchronizationManager$1;->val$taskToAdd:Lcom/amazon/kindle/sync/SyncTask;

    invoke-static {v1, v2, v0}, Lcom/amazon/kindle/sync/SynchronizationManager;->access$400(Lcom/amazon/kindle/sync/SynchronizationManager;Ljava/lang/Integer;Lcom/amazon/kindle/sync/SyncTask;)V

    .line 507
    iget-object v0, p0, Lcom/amazon/kindle/sync/SynchronizationManager$1$1;->this$1:Lcom/amazon/kindle/sync/SynchronizationManager$1;

    iget-object v1, v0, Lcom/amazon/kindle/sync/SynchronizationManager$1;->val$metricsManager:Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    iget-object v0, v0, Lcom/amazon/kindle/sync/SynchronizationManager$1;->val$syncStepTimer:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->getMetricElapsedTime(Ljava/lang/String;)J

    move-result-wide v0

    .line 508
    iget-object v2, p0, Lcom/amazon/kindle/sync/SynchronizationManager$1$1;->this$1:Lcom/amazon/kindle/sync/SynchronizationManager$1;

    iget-object v3, v2, Lcom/amazon/kindle/sync/SynchronizationManager$1;->val$metricsManager:Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    iget-object v2, v2, Lcom/amazon/kindle/sync/SynchronizationManager$1;->val$syncStepTimer:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->cancelMetricTimer(Ljava/lang/String;)V

    .line 510
    iget-object v2, p0, Lcom/amazon/kindle/sync/SynchronizationManager$1$1;->this$1:Lcom/amazon/kindle/sync/SynchronizationManager$1;

    iget-object v2, v2, Lcom/amazon/kindle/sync/SynchronizationManager$1;->val$taskToAdd:Lcom/amazon/kindle/sync/SyncTask;

    invoke-virtual {v2}, Lcom/amazon/kindle/sync/SyncTask;->hasError()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 511
    iget-object v2, p0, Lcom/amazon/kindle/sync/SynchronizationManager$1$1;->this$1:Lcom/amazon/kindle/sync/SynchronizationManager$1;

    iget-object v2, v2, Lcom/amazon/kindle/sync/SynchronizationManager$1;->val$metricsManager:Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SyncStepFailed_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/amazon/kindle/sync/SynchronizationManager$1$1;->this$1:Lcom/amazon/kindle/sync/SynchronizationManager$1;

    iget-object v4, v4, Lcom/amazon/kindle/sync/SynchronizationManager$1;->val$syncTaskKey:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/amazon/kindle/krx/metrics/MetricType;->ERROR:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v5, "SynchronizationManager"

    invoke-virtual {v2, v5, v3, v4}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    .line 512
    iget-object v2, p0, Lcom/amazon/kindle/sync/SynchronizationManager$1$1;->this$1:Lcom/amazon/kindle/sync/SynchronizationManager$1;

    iget-object v2, v2, Lcom/amazon/kindle/sync/SynchronizationManager$1;->val$metricsManager:Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SyncStepFailedTimer_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/amazon/kindle/sync/SynchronizationManager$1$1;->this$1:Lcom/amazon/kindle/sync/SynchronizationManager$1;

    iget-object v4, v4, Lcom/amazon/kindle/sync/SynchronizationManager$1;->val$syncTaskKey:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SynchronizationManager"

    invoke-virtual {v2, v4, v3, v0, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportTimerMetric(Ljava/lang/String;Ljava/lang/String;J)V

    .line 513
    iget-object v0, p0, Lcom/amazon/kindle/sync/SynchronizationManager$1$1;->this$1:Lcom/amazon/kindle/sync/SynchronizationManager$1;

    iget-object v0, v0, Lcom/amazon/kindle/sync/SynchronizationManager$1;->val$params:Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    sget-object v1, Lcom/amazon/kcp/application/sync/internal/SyncResult;->ERROR:Lcom/amazon/kcp/application/sync/internal/SyncResult;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->setResult(Lcom/amazon/kcp/application/sync/internal/SyncResult;)V

    .line 514
    iget-object v0, p0, Lcom/amazon/kindle/sync/SynchronizationManager$1$1;->this$1:Lcom/amazon/kindle/sync/SynchronizationManager$1;

    iget-object v0, v0, Lcom/amazon/kindle/sync/SynchronizationManager$1;->this$0:Lcom/amazon/kindle/sync/SynchronizationManager;

    invoke-static {v0}, Lcom/amazon/kindle/sync/SynchronizationManager;->access$100(Lcom/amazon/kindle/sync/SynchronizationManager;)Lcom/amazon/kindle/event/EventBroker;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/event/Event;

    iget-object v2, p0, Lcom/amazon/kindle/sync/SynchronizationManager$1$1;->this$1:Lcom/amazon/kindle/sync/SynchronizationManager$1;

    iget-object v2, v2, Lcom/amazon/kindle/sync/SynchronizationManager$1;->val$syncTaskKey:Ljava/lang/Integer;

    sget-object v3, Lcom/amazon/kindle/sync/SynchronizationManager;->SYNC_STEP_FAILED:Lcom/amazon/kindle/event/EventType;

    invoke-direct {v1, v2, v3}, Lcom/amazon/kindle/event/Event;-><init>(Ljava/lang/Object;Lcom/amazon/kindle/event/EventType;)V

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/event/EventBroker;->publishEvent(Lcom/amazon/kindle/event/Event;)V

    goto :goto_0

    .line 516
    :cond_0
    iget-object v2, p0, Lcom/amazon/kindle/sync/SynchronizationManager$1$1;->this$1:Lcom/amazon/kindle/sync/SynchronizationManager$1;

    iget-object v2, v2, Lcom/amazon/kindle/sync/SynchronizationManager$1;->val$metricsManager:Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SyncStepSucceeded_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/amazon/kindle/sync/SynchronizationManager$1$1;->this$1:Lcom/amazon/kindle/sync/SynchronizationManager$1;

    iget-object v4, v4, Lcom/amazon/kindle/sync/SynchronizationManager$1;->val$syncTaskKey:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v5, "SynchronizationManager"

    invoke-virtual {v2, v5, v3, v4}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    .line 517
    iget-object v2, p0, Lcom/amazon/kindle/sync/SynchronizationManager$1$1;->this$1:Lcom/amazon/kindle/sync/SynchronizationManager$1;

    iget-object v2, v2, Lcom/amazon/kindle/sync/SynchronizationManager$1;->val$metricsManager:Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SyncStepSucceededTimer_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/amazon/kindle/sync/SynchronizationManager$1$1;->this$1:Lcom/amazon/kindle/sync/SynchronizationManager$1;

    iget-object v4, v4, Lcom/amazon/kindle/sync/SynchronizationManager$1;->val$syncTaskKey:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SynchronizationManager"

    invoke-virtual {v2, v4, v3, v0, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportTimerMetric(Ljava/lang/String;Ljava/lang/String;J)V

    .line 518
    iget-object v0, p0, Lcom/amazon/kindle/sync/SynchronizationManager$1$1;->this$1:Lcom/amazon/kindle/sync/SynchronizationManager$1;

    iget-object v0, v0, Lcom/amazon/kindle/sync/SynchronizationManager$1;->this$0:Lcom/amazon/kindle/sync/SynchronizationManager;

    invoke-static {v0}, Lcom/amazon/kindle/sync/SynchronizationManager;->access$100(Lcom/amazon/kindle/sync/SynchronizationManager;)Lcom/amazon/kindle/event/EventBroker;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/event/Event;

    iget-object v2, p0, Lcom/amazon/kindle/sync/SynchronizationManager$1$1;->this$1:Lcom/amazon/kindle/sync/SynchronizationManager$1;

    iget-object v2, v2, Lcom/amazon/kindle/sync/SynchronizationManager$1;->val$syncTaskKey:Ljava/lang/Integer;

    sget-object v3, Lcom/amazon/kindle/sync/SynchronizationManager;->SYNC_STEP_SUCCEEDED:Lcom/amazon/kindle/event/EventType;

    invoke-direct {v1, v2, v3}, Lcom/amazon/kindle/event/Event;-><init>(Ljava/lang/Object;Lcom/amazon/kindle/event/EventType;)V

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/event/EventBroker;->publishEvent(Lcom/amazon/kindle/event/Event;)V

    .line 521
    :goto_0
    iget-object v0, p0, Lcom/amazon/kindle/sync/SynchronizationManager$1$1;->this$1:Lcom/amazon/kindle/sync/SynchronizationManager$1;

    iget-object v0, v0, Lcom/amazon/kindle/sync/SynchronizationManager$1;->this$0:Lcom/amazon/kindle/sync/SynchronizationManager;

    invoke-static {v0}, Lcom/amazon/kindle/sync/SynchronizationManager;->access$500(Lcom/amazon/kindle/sync/SynchronizationManager;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 523
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/sync/SynchronizationManager$1$1;->this$1:Lcom/amazon/kindle/sync/SynchronizationManager$1;

    iget-object v1, v1, Lcom/amazon/kindle/sync/SynchronizationManager$1;->this$0:Lcom/amazon/kindle/sync/SynchronizationManager;

    invoke-static {v1}, Lcom/amazon/kindle/sync/SynchronizationManager;->access$500(Lcom/amazon/kindle/sync/SynchronizationManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_4

    .line 525
    :try_start_1
    iget-object v1, p0, Lcom/amazon/kindle/sync/SynchronizationManager$1$1;->this$1:Lcom/amazon/kindle/sync/SynchronizationManager$1;

    iget-object v1, v1, Lcom/amazon/kindle/sync/SynchronizationManager$1;->val$params:Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    invoke-virtual {v1}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->getSyncFinishCallback()Lcom/amazon/foundation/internal/IBooleanCallback;

    move-result-object v1

    .line 526
    iget-object v2, p0, Lcom/amazon/kindle/sync/SynchronizationManager$1$1;->this$1:Lcom/amazon/kindle/sync/SynchronizationManager$1;

    iget-object v2, v2, Lcom/amazon/kindle/sync/SynchronizationManager$1;->val$params:Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->getResult()Lcom/amazon/kcp/application/sync/internal/SyncResult;

    move-result-object v2

    sget-object v3, Lcom/amazon/kcp/application/sync/internal/SyncResult;->ERROR:Lcom/amazon/kcp/application/sync/internal/SyncResult;

    if-ne v2, v3, :cond_1

    .line 527
    iget-object v2, p0, Lcom/amazon/kindle/sync/SynchronizationManager$1$1;->this$1:Lcom/amazon/kindle/sync/SynchronizationManager$1;

    iget-object v2, v2, Lcom/amazon/kindle/sync/SynchronizationManager$1;->this$0:Lcom/amazon/kindle/sync/SynchronizationManager;

    invoke-static {v2}, Lcom/amazon/kindle/sync/SynchronizationManager;->access$100(Lcom/amazon/kindle/sync/SynchronizationManager;)Lcom/amazon/kindle/event/EventBroker;

    move-result-object v2

    new-instance v3, Lcom/amazon/kindle/event/Event;

    iget-object v4, p0, Lcom/amazon/kindle/sync/SynchronizationManager$1$1;->this$1:Lcom/amazon/kindle/sync/SynchronizationManager$1;

    iget-object v4, v4, Lcom/amazon/kindle/sync/SynchronizationManager$1;->val$params:Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    .line 528
    invoke-virtual {v4}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->getType()Lcom/amazon/kcp/application/sync/internal/SyncType;

    move-result-object v4

    sget-object v5, Lcom/amazon/kindle/sync/SynchronizationManager;->SYNC_FAILED:Lcom/amazon/kindle/event/EventType;

    invoke-direct {v3, v4, v5}, Lcom/amazon/kindle/event/Event;-><init>(Ljava/lang/Object;Lcom/amazon/kindle/event/EventType;)V

    .line 527
    invoke-virtual {v2, v3}, Lcom/amazon/kindle/event/EventBroker;->publishEvent(Lcom/amazon/kindle/event/Event;)V

    if-eqz v1, :cond_3

    const/4 v2, 0x0

    .line 530
    invoke-interface {v1, v2}, Lcom/amazon/foundation/internal/IBooleanCallback;->execute(Z)V

    goto :goto_1

    .line 533
    :cond_1
    iget-object v2, p0, Lcom/amazon/kindle/sync/SynchronizationManager$1$1;->this$1:Lcom/amazon/kindle/sync/SynchronizationManager$1;

    iget-object v2, v2, Lcom/amazon/kindle/sync/SynchronizationManager$1;->this$0:Lcom/amazon/kindle/sync/SynchronizationManager;

    invoke-static {v2}, Lcom/amazon/kindle/sync/SynchronizationManager;->access$100(Lcom/amazon/kindle/sync/SynchronizationManager;)Lcom/amazon/kindle/event/EventBroker;

    move-result-object v2

    new-instance v3, Lcom/amazon/kindle/event/Event;

    iget-object v4, p0, Lcom/amazon/kindle/sync/SynchronizationManager$1$1;->this$1:Lcom/amazon/kindle/sync/SynchronizationManager$1;

    iget-object v4, v4, Lcom/amazon/kindle/sync/SynchronizationManager$1;->val$params:Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    .line 534
    invoke-virtual {v4}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->getType()Lcom/amazon/kcp/application/sync/internal/SyncType;

    move-result-object v4

    sget-object v5, Lcom/amazon/kindle/sync/SynchronizationManager;->SYNC_SUCCEEDED:Lcom/amazon/kindle/event/EventType;

    invoke-direct {v3, v4, v5}, Lcom/amazon/kindle/event/Event;-><init>(Ljava/lang/Object;Lcom/amazon/kindle/event/EventType;)V

    .line 533
    invoke-virtual {v2, v3}, Lcom/amazon/kindle/event/EventBroker;->publishEvent(Lcom/amazon/kindle/event/Event;)V

    .line 535
    iget-object v2, p0, Lcom/amazon/kindle/sync/SynchronizationManager$1$1;->this$1:Lcom/amazon/kindle/sync/SynchronizationManager$1;

    iget-object v2, v2, Lcom/amazon/kindle/sync/SynchronizationManager$1;->val$params:Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    sget-object v3, Lcom/amazon/kcp/application/sync/internal/SyncResult;->SUCCESS:Lcom/amazon/kcp/application/sync/internal/SyncResult;

    invoke-virtual {v2, v3}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->setResult(Lcom/amazon/kcp/application/sync/internal/SyncResult;)V

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    .line 537
    invoke-interface {v1, v2}, Lcom/amazon/foundation/internal/IBooleanCallback;->execute(Z)V

    .line 539
    :cond_2
    iget-object v1, p0, Lcom/amazon/kindle/sync/SynchronizationManager$1$1;->this$1:Lcom/amazon/kindle/sync/SynchronizationManager$1;

    iget-object v1, v1, Lcom/amazon/kindle/sync/SynchronizationManager$1;->val$params:Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    sget-object v2, Lcom/amazon/kcp/application/sync/internal/SyncResult;->SUCCESS:Lcom/amazon/kcp/application/sync/internal/SyncResult;

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->setResult(Lcom/amazon/kcp/application/sync/internal/SyncResult;)V

    .line 542
    :cond_3
    :goto_1
    new-instance v1, Lcom/amazon/kindle/sync/SynchronizationManagerEvent;

    sget-object v2, Lcom/amazon/kindle/sync/SynchronizationManagerEvent$EventType;->SYNC_FINISHED:Lcom/amazon/kindle/sync/SynchronizationManagerEvent$EventType;

    iget-object v3, p0, Lcom/amazon/kindle/sync/SynchronizationManager$1$1;->this$1:Lcom/amazon/kindle/sync/SynchronizationManager$1;

    iget-object v3, v3, Lcom/amazon/kindle/sync/SynchronizationManager$1;->val$params:Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    invoke-direct {v1, v2, v3}, Lcom/amazon/kindle/sync/SynchronizationManagerEvent;-><init>(Lcom/amazon/kindle/sync/SynchronizationManagerEvent$EventType;Lcom/amazon/kcp/application/sync/internal/SyncParameters;)V

    .line 543
    iget-object v2, p0, Lcom/amazon/kindle/sync/SynchronizationManager$1$1;->this$1:Lcom/amazon/kindle/sync/SynchronizationManager$1;

    iget-object v2, v2, Lcom/amazon/kindle/sync/SynchronizationManager$1;->this$0:Lcom/amazon/kindle/sync/SynchronizationManager;

    invoke-static {v2}, Lcom/amazon/kindle/sync/SynchronizationManager;->access$000(Lcom/amazon/kindle/sync/SynchronizationManager;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    .line 545
    iget-object v1, p0, Lcom/amazon/kindle/sync/SynchronizationManager$1$1;->this$1:Lcom/amazon/kindle/sync/SynchronizationManager$1;

    iget-object v1, v1, Lcom/amazon/kindle/sync/SynchronizationManager$1;->this$0:Lcom/amazon/kindle/sync/SynchronizationManager;

    iget-object v2, p0, Lcom/amazon/kindle/sync/SynchronizationManager$1$1;->this$1:Lcom/amazon/kindle/sync/SynchronizationManager$1;

    iget-object v2, v2, Lcom/amazon/kindle/sync/SynchronizationManager$1;->val$params:Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    iget-object v3, p0, Lcom/amazon/kindle/sync/SynchronizationManager$1$1;->this$1:Lcom/amazon/kindle/sync/SynchronizationManager$1;

    iget-object v3, v3, Lcom/amazon/kindle/sync/SynchronizationManager$1;->val$statusTracker:Lcom/amazon/foundation/internal/LastErrorSavingStatusTracker;

    invoke-static {v1, v2, v3}, Lcom/amazon/kindle/sync/SynchronizationManager;->access$600(Lcom/amazon/kindle/sync/SynchronizationManager;Lcom/amazon/kcp/application/sync/internal/SyncParameters;Lcom/amazon/foundation/internal/LastErrorSavingStatusTracker;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 548
    :try_start_2
    invoke-static {}, Lcom/amazon/kindle/sync/SynchronizationManager;->access$300()Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in syncWorker, in kill event"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " Message : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " trace : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 553
    :goto_2
    iget-object v1, p0, Lcom/amazon/kindle/sync/SynchronizationManager$1$1;->this$1:Lcom/amazon/kindle/sync/SynchronizationManager$1;

    iget-object v1, v1, Lcom/amazon/kindle/sync/SynchronizationManager$1;->this$0:Lcom/amazon/kindle/sync/SynchronizationManager;

    invoke-static {v1}, Lcom/amazon/kindle/sync/SynchronizationManager;->access$200(Lcom/amazon/kindle/sync/SynchronizationManager;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 554
    :try_start_3
    iget-object v2, p0, Lcom/amazon/kindle/sync/SynchronizationManager$1$1;->this$1:Lcom/amazon/kindle/sync/SynchronizationManager$1;

    iget-object v2, v2, Lcom/amazon/kindle/sync/SynchronizationManager$1;->this$0:Lcom/amazon/kindle/sync/SynchronizationManager;

    invoke-static {v2}, Lcom/amazon/kindle/sync/SynchronizationManager;->access$200(Lcom/amazon/kindle/sync/SynchronizationManager;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kindle/sync/SynchronizationManager$1$1;->this$1:Lcom/amazon/kindle/sync/SynchronizationManager$1;

    iget-object v3, v3, Lcom/amazon/kindle/sync/SynchronizationManager$1;->val$params:Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 555
    monitor-exit v1

    goto :goto_3

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    .line 557
    :cond_4
    :goto_3
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method
