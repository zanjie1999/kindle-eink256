.class Lcom/amazon/kindle/sync/SynchronizationManager$1;
.super Ljava/lang/Object;
.source "SynchronizationManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/sync/SynchronizationManager;->addCommands(Lcom/amazon/kcp/application/sync/internal/SyncParameters;Ljava/util/Collection;Lcom/amazon/foundation/internal/LastErrorSavingStatusTracker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/sync/SynchronizationManager;

.field final synthetic val$isFirstCommand:Z

.field final synthetic val$metricsManager:Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

.field final synthetic val$params:Lcom/amazon/kcp/application/sync/internal/SyncParameters;

.field final synthetic val$statusTracker:Lcom/amazon/foundation/internal/LastErrorSavingStatusTracker;

.field final synthetic val$syncStepTimer:Ljava/lang/String;

.field final synthetic val$syncTaskKey:Ljava/lang/Integer;

.field final synthetic val$taskToAdd:Lcom/amazon/kindle/sync/SyncTask;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/sync/SynchronizationManager;ZLcom/amazon/kcp/application/metrics/internal/MetricsManager;Lcom/amazon/kcp/application/sync/internal/SyncParameters;Ljava/lang/Integer;Ljava/lang/String;Lcom/amazon/kindle/sync/SyncTask;Lcom/amazon/foundation/internal/LastErrorSavingStatusTracker;)V
    .locals 0

    .line 475
    iput-object p1, p0, Lcom/amazon/kindle/sync/SynchronizationManager$1;->this$0:Lcom/amazon/kindle/sync/SynchronizationManager;

    iput-boolean p2, p0, Lcom/amazon/kindle/sync/SynchronizationManager$1;->val$isFirstCommand:Z

    iput-object p3, p0, Lcom/amazon/kindle/sync/SynchronizationManager$1;->val$metricsManager:Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    iput-object p4, p0, Lcom/amazon/kindle/sync/SynchronizationManager$1;->val$params:Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    iput-object p5, p0, Lcom/amazon/kindle/sync/SynchronizationManager$1;->val$syncTaskKey:Ljava/lang/Integer;

    iput-object p6, p0, Lcom/amazon/kindle/sync/SynchronizationManager$1;->val$syncStepTimer:Ljava/lang/String;

    iput-object p7, p0, Lcom/amazon/kindle/sync/SynchronizationManager$1;->val$taskToAdd:Lcom/amazon/kindle/sync/SyncTask;

    iput-object p8, p0, Lcom/amazon/kindle/sync/SynchronizationManager$1;->val$statusTracker:Lcom/amazon/foundation/internal/LastErrorSavingStatusTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 480
    :try_start_0
    iget-boolean v0, p0, Lcom/amazon/kindle/sync/SynchronizationManager$1;->val$isFirstCommand:Z

    if-eqz v0, :cond_1

    .line 481
    iget-object v0, p0, Lcom/amazon/kindle/sync/SynchronizationManager$1;->val$metricsManager:Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    iget-object v1, p0, Lcom/amazon/kindle/sync/SynchronizationManager$1;->val$params:Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    invoke-virtual {v1}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->getType()Lcom/amazon/kcp/application/sync/internal/SyncType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/application/sync/internal/SyncType;->getMetricTimer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->startMetricTimer(Ljava/lang/String;)V

    .line 482
    iget-object v0, p0, Lcom/amazon/kindle/sync/SynchronizationManager$1;->val$metricsManager:Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    const-string v1, "SynchronizationManager"

    const-string v2, "SyncStarted"

    sget-object v3, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    .line 484
    new-instance v0, Lcom/amazon/kindle/sync/SynchronizationManagerEvent;

    sget-object v1, Lcom/amazon/kindle/sync/SynchronizationManagerEvent$EventType;->SYNC_STARTED:Lcom/amazon/kindle/sync/SynchronizationManagerEvent$EventType;

    iget-object v2, p0, Lcom/amazon/kindle/sync/SynchronizationManager$1;->val$params:Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    invoke-direct {v0, v1, v2}, Lcom/amazon/kindle/sync/SynchronizationManagerEvent;-><init>(Lcom/amazon/kindle/sync/SynchronizationManagerEvent$EventType;Lcom/amazon/kcp/application/sync/internal/SyncParameters;)V

    .line 485
    iget-object v1, p0, Lcom/amazon/kindle/sync/SynchronizationManager$1;->this$0:Lcom/amazon/kindle/sync/SynchronizationManager;

    invoke-static {v1}, Lcom/amazon/kindle/sync/SynchronizationManager;->access$000(Lcom/amazon/kindle/sync/SynchronizationManager;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    .line 487
    iget-object v0, p0, Lcom/amazon/kindle/sync/SynchronizationManager$1;->this$0:Lcom/amazon/kindle/sync/SynchronizationManager;

    invoke-static {v0}, Lcom/amazon/kindle/sync/SynchronizationManager;->access$100(Lcom/amazon/kindle/sync/SynchronizationManager;)Lcom/amazon/kindle/event/EventBroker;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/event/Event;

    iget-object v2, p0, Lcom/amazon/kindle/sync/SynchronizationManager$1;->val$params:Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->getType()Lcom/amazon/kcp/application/sync/internal/SyncType;

    move-result-object v2

    sget-object v3, Lcom/amazon/kindle/sync/SynchronizationManager;->SYNC_START:Lcom/amazon/kindle/event/EventType;

    invoke-direct {v1, v2, v3}, Lcom/amazon/kindle/event/Event;-><init>(Ljava/lang/Object;Lcom/amazon/kindle/event/EventType;)V

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/event/EventBroker;->publishEvent(Lcom/amazon/kindle/event/Event;)V

    .line 488
    iget-object v0, p0, Lcom/amazon/kindle/sync/SynchronizationManager$1;->this$0:Lcom/amazon/kindle/sync/SynchronizationManager;

    invoke-static {v0}, Lcom/amazon/kindle/sync/SynchronizationManager;->access$200(Lcom/amazon/kindle/sync/SynchronizationManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 489
    :try_start_1
    iget-object v1, p0, Lcom/amazon/kindle/sync/SynchronizationManager$1;->val$params:Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    invoke-virtual {v1}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->getResult()Lcom/amazon/kcp/application/sync/internal/SyncResult;

    move-result-object v1

    sget-object v2, Lcom/amazon/kcp/application/sync/internal/SyncResult;->NOT_STARTED:Lcom/amazon/kcp/application/sync/internal/SyncResult;

    if-ne v1, v2, :cond_0

    .line 490
    iget-object v1, p0, Lcom/amazon/kindle/sync/SynchronizationManager$1;->val$params:Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    sget-object v2, Lcom/amazon/kcp/application/sync/internal/SyncResult;->IN_PROGRESS:Lcom/amazon/kcp/application/sync/internal/SyncResult;

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->setResult(Lcom/amazon/kcp/application/sync/internal/SyncResult;)V

    .line 492
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    .line 494
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kindle/sync/SynchronizationManager$1;->this$0:Lcom/amazon/kindle/sync/SynchronizationManager;

    invoke-static {v0}, Lcom/amazon/kindle/sync/SynchronizationManager;->access$100(Lcom/amazon/kindle/sync/SynchronizationManager;)Lcom/amazon/kindle/event/EventBroker;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/event/Event;

    iget-object v2, p0, Lcom/amazon/kindle/sync/SynchronizationManager$1;->val$syncTaskKey:Ljava/lang/Integer;

    sget-object v3, Lcom/amazon/kindle/sync/SynchronizationManager;->SYNC_STEP_START:Lcom/amazon/kindle/event/EventType;

    invoke-direct {v1, v2, v3}, Lcom/amazon/kindle/event/Event;-><init>(Ljava/lang/Object;Lcom/amazon/kindle/event/EventType;)V

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/event/EventBroker;->publishEvent(Lcom/amazon/kindle/event/Event;)V

    .line 495
    iget-object v0, p0, Lcom/amazon/kindle/sync/SynchronizationManager$1;->val$metricsManager:Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    const-string v1, "SynchronizationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SyncStarted_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/kindle/sync/SynchronizationManager$1;->val$syncTaskKey:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    .line 496
    iget-object v0, p0, Lcom/amazon/kindle/sync/SynchronizationManager$1;->val$metricsManager:Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    iget-object v1, p0, Lcom/amazon/kindle/sync/SynchronizationManager$1;->val$syncStepTimer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->cancelMetricTimer(Ljava/lang/String;)V

    .line 497
    iget-object v0, p0, Lcom/amazon/kindle/sync/SynchronizationManager$1;->val$metricsManager:Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    iget-object v1, p0, Lcom/amazon/kindle/sync/SynchronizationManager$1;->val$syncStepTimer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->startMetricTimer(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 499
    :catch_0
    invoke-static {}, Lcom/amazon/kindle/sync/SynchronizationManager;->access$300()Ljava/lang/String;

    .line 502
    :goto_1
    iget-object v0, p0, Lcom/amazon/kindle/sync/SynchronizationManager$1;->val$taskToAdd:Lcom/amazon/kindle/sync/SyncTask;

    new-instance v1, Lcom/amazon/kindle/sync/SynchronizationManager$1$1;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/sync/SynchronizationManager$1$1;-><init>(Lcom/amazon/kindle/sync/SynchronizationManager$1;)V

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/sync/SyncTask;->registerKillEvent(Lcom/amazon/foundation/ICallback;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 564
    :try_start_3
    iget-object v2, p0, Lcom/amazon/kindle/sync/SynchronizationManager$1;->val$taskToAdd:Lcom/amazon/kindle/sync/SyncTask;

    invoke-virtual {v2}, Lcom/amazon/kindle/sync/SyncTask;->execute()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    xor-int/2addr v2, v0

    const/4 v3, 0x0

    goto :goto_2

    :catch_1
    move-exception v2

    .line 566
    invoke-static {}, Lcom/amazon/kindle/sync/SynchronizationManager;->access$300()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Error executing sync task"

    invoke-static {v3, v4, v2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    :goto_2
    if-nez v2, :cond_3

    if-eqz v3, :cond_2

    goto :goto_3

    .line 590
    :cond_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_3
    :goto_3
    if-eqz v2, :cond_4

    .line 572
    iget-object v0, p0, Lcom/amazon/kindle/sync/SynchronizationManager$1;->val$metricsManager:Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SyncStepCancelled_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/kindle/sync/SynchronizationManager$1;->val$syncTaskKey:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v4, "SynchronizationManager"

    invoke-virtual {v0, v4, v2, v3}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    .line 574
    :cond_4
    iget-object v0, p0, Lcom/amazon/kindle/sync/SynchronizationManager$1;->this$0:Lcom/amazon/kindle/sync/SynchronizationManager;

    iget-object v2, p0, Lcom/amazon/kindle/sync/SynchronizationManager$1;->val$syncTaskKey:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/amazon/kindle/sync/SynchronizationManager$1;->val$taskToAdd:Lcom/amazon/kindle/sync/SyncTask;

    invoke-static {v0, v2, v3}, Lcom/amazon/kindle/sync/SynchronizationManager;->access$400(Lcom/amazon/kindle/sync/SynchronizationManager;Ljava/lang/Integer;Lcom/amazon/kindle/sync/SyncTask;)V

    .line 575
    iget-object v0, p0, Lcom/amazon/kindle/sync/SynchronizationManager$1;->this$0:Lcom/amazon/kindle/sync/SynchronizationManager;

    invoke-static {v0}, Lcom/amazon/kindle/sync/SynchronizationManager;->access$500(Lcom/amazon/kindle/sync/SynchronizationManager;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 577
    :try_start_4
    iget-object v2, p0, Lcom/amazon/kindle/sync/SynchronizationManager$1;->this$0:Lcom/amazon/kindle/sync/SynchronizationManager;

    invoke-static {v2}, Lcom/amazon/kindle/sync/SynchronizationManager;->access$500(Lcom/amazon/kindle/sync/SynchronizationManager;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_5

    .line 578
    iget-object v2, p0, Lcom/amazon/kindle/sync/SynchronizationManager$1;->this$0:Lcom/amazon/kindle/sync/SynchronizationManager;

    invoke-static {v2}, Lcom/amazon/kindle/sync/SynchronizationManager;->access$200(Lcom/amazon/kindle/sync/SynchronizationManager;)Ljava/util/List;

    move-result-object v2

    monitor-enter v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 579
    :try_start_5
    iget-object v3, p0, Lcom/amazon/kindle/sync/SynchronizationManager$1;->this$0:Lcom/amazon/kindle/sync/SynchronizationManager;

    invoke-static {v3}, Lcom/amazon/kindle/sync/SynchronizationManager;->access$200(Lcom/amazon/kindle/sync/SynchronizationManager;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/kindle/sync/SynchronizationManager$1;->val$params:Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    invoke-interface {v3, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 580
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 582
    :try_start_6
    new-instance v2, Lcom/amazon/kindle/sync/SynchronizationManagerEvent;

    sget-object v3, Lcom/amazon/kindle/sync/SynchronizationManagerEvent$EventType;->SYNC_FINISHED:Lcom/amazon/kindle/sync/SynchronizationManagerEvent$EventType;

    iget-object v4, p0, Lcom/amazon/kindle/sync/SynchronizationManager$1;->val$params:Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    invoke-direct {v2, v3, v4}, Lcom/amazon/kindle/sync/SynchronizationManagerEvent;-><init>(Lcom/amazon/kindle/sync/SynchronizationManagerEvent$EventType;Lcom/amazon/kcp/application/sync/internal/SyncParameters;)V

    .line 583
    iget-object v3, p0, Lcom/amazon/kindle/sync/SynchronizationManager$1;->this$0:Lcom/amazon/kindle/sync/SynchronizationManager;

    invoke-static {v3}, Lcom/amazon/kindle/sync/SynchronizationManager;->access$000(Lcom/amazon/kindle/sync/SynchronizationManager;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    .line 585
    iget-object v2, p0, Lcom/amazon/kindle/sync/SynchronizationManager$1;->this$0:Lcom/amazon/kindle/sync/SynchronizationManager;

    iget-object v3, p0, Lcom/amazon/kindle/sync/SynchronizationManager$1;->val$params:Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    iget-object v4, p0, Lcom/amazon/kindle/sync/SynchronizationManager$1;->val$statusTracker:Lcom/amazon/foundation/internal/LastErrorSavingStatusTracker;

    invoke-static {v2, v3, v4}, Lcom/amazon/kindle/sync/SynchronizationManager;->access$600(Lcom/amazon/kindle/sync/SynchronizationManager;Lcom/amazon/kcp/application/sync/internal/SyncParameters;Lcom/amazon/foundation/internal/LastErrorSavingStatusTracker;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_4

    :catchall_1
    move-exception v1

    .line 580
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v1

    .line 587
    :cond_5
    :goto_4
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 588
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :catchall_2
    move-exception v1

    .line 587
    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 475
    invoke-virtual {p0}, Lcom/amazon/kindle/sync/SynchronizationManager$1;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
