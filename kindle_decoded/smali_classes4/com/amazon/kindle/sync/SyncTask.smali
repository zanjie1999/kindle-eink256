.class public Lcom/amazon/kindle/sync/SyncTask;
.super Ljava/lang/Object;
.source "SyncTask.java"


# instance fields
.field protected cancelled:Z

.field private command:Lcom/amazon/kcp/application/internal/commands/CCommand;

.field private killEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/amazon/foundation/ICallback;",
            ">;"
        }
    .end annotation
.end field

.field private metricsTimer:Ljava/lang/String;

.field private reason:Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;

.field protected started:Z

.field private syncStep:I


# direct methods
.method public constructor <init>(ILcom/amazon/kcp/application/models/internal/TodoModel$Reason;Lcom/amazon/kcp/application/internal/commands/CCommand;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/sync/SyncTask;->killEvents:Ljava/util/ArrayList;

    .line 38
    iput p1, p0, Lcom/amazon/kindle/sync/SyncTask;->syncStep:I

    .line 39
    iput-object p2, p0, Lcom/amazon/kindle/sync/SyncTask;->reason:Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;

    .line 40
    iput-object p3, p0, Lcom/amazon/kindle/sync/SyncTask;->command:Lcom/amazon/kcp/application/internal/commands/CCommand;

    return-void
.end method


# virtual methods
.method public declared-synchronized cancel()Z
    .locals 1

    monitor-enter p0

    .line 89
    :try_start_0
    iget-boolean v0, p0, Lcom/amazon/kindle/sync/SyncTask;->started:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 90
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x1

    .line 92
    :try_start_1
    iput-boolean v0, p0, Lcom/amazon/kindle/sync/SyncTask;->cancelled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public execute()Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 97
    monitor-enter p0

    const/4 v0, 0x1

    .line 98
    :try_start_0
    iput-boolean v0, p0, Lcom/amazon/kindle/sync/SyncTask;->started:Z

    .line 99
    iget-boolean v0, p0, Lcom/amazon/kindle/sync/SyncTask;->cancelled:Z

    if-eqz v0, :cond_0

    .line 100
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    monitor-exit p0

    return-object v0

    .line 102
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    iget-object v0, p0, Lcom/amazon/kindle/sync/SyncTask;->command:Lcom/amazon/kcp/application/internal/commands/CCommand;

    invoke-interface {v0}, Lcom/amazon/foundation/internal/IAsynchronousCallback;->execute()V

    .line 104
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    :catchall_0
    move-exception v0

    .line 102
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getCommand()Lcom/amazon/kcp/application/internal/commands/CCommand;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/amazon/kindle/sync/SyncTask;->command:Lcom/amazon/kcp/application/internal/commands/CCommand;

    return-object v0
.end method

.method public getReason()Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/amazon/kindle/sync/SyncTask;->reason:Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;

    return-object v0
.end method

.method public getSyncStep()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/amazon/kindle/sync/SyncTask;->syncStep:I

    return v0
.end method

.method public hasError()Z
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/amazon/kindle/sync/SyncTask;->command:Lcom/amazon/kcp/application/internal/commands/CCommand;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/CAsynchronousCallback;->hasError()Z

    move-result v0

    return v0
.end method

.method public onKillEvent(Lcom/amazon/foundation/internal/IAsynchronousCallback$KillEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 64
    monitor-enter p0

    .line 65
    :try_start_0
    invoke-virtual {p1}, Lcom/amazon/foundation/internal/IAsynchronousCallback$KillEvent;->getPublisher()Lcom/amazon/foundation/internal/IAsynchronousCallback;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kindle/sync/SyncTask;->command:Lcom/amazon/kcp/application/internal/commands/CCommand;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 66
    iget-object p1, p0, Lcom/amazon/kindle/sync/SyncTask;->killEvents:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/foundation/ICallback;

    .line 67
    invoke-interface {v0}, Lcom/amazon/foundation/ICallback;->execute()V

    goto :goto_0

    .line 70
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/sync/SyncTask;->killEvents:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 71
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    .line 73
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public registerKillEvent(Lcom/amazon/foundation/ICallback;)V
    .locals 1

    .line 56
    monitor-enter p0

    .line 57
    :try_start_0
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 58
    iget-object v0, p0, Lcom/amazon/kindle/sync/SyncTask;->killEvents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public declared-synchronized shouldOverride(Lcom/amazon/kindle/sync/SyncTask;)Z
    .locals 3

    monitor-enter p0

    .line 116
    :try_start_0
    iget v0, p0, Lcom/amazon/kindle/sync/SyncTask;->syncStep:I

    iget v1, p1, Lcom/amazon/kindle/sync/SyncTask;->syncStep:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 117
    monitor-exit p0

    return v2

    .line 120
    :cond_0
    :try_start_1
    iget-boolean v0, p1, Lcom/amazon/kindle/sync/SyncTask;->cancelled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 121
    monitor-exit p0

    return v1

    .line 125
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/amazon/kindle/sync/SyncTask;->getReason()Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 126
    invoke-virtual {p0}, Lcom/amazon/kindle/sync/SyncTask;->getReason()Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;->honorXAdpCallAfter()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 127
    :cond_2
    invoke-virtual {p1}, Lcom/amazon/kindle/sync/SyncTask;->getReason()Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 128
    invoke-virtual {p1}, Lcom/amazon/kindle/sync/SyncTask;->getReason()Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/application/models/internal/TodoModel$Reason;->honorXAdpCallAfter()Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_4

    .line 129
    :cond_3
    monitor-exit p0

    return v1

    .line 131
    :cond_4
    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
