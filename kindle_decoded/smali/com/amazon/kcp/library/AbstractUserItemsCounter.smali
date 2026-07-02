.class public abstract Lcom/amazon/kcp/library/AbstractUserItemsCounter;
.super Ljava/lang/Object;
.source "AbstractUserItemsCounter.java"


# instance fields
.field protected counter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected updateCallback:Lcom/amazon/kindle/callback/ICallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kindle/callback/ICallback<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/callback/ICallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/callback/ICallback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/amazon/kcp/library/AbstractUserItemsCounter;->updateCallback:Lcom/amazon/kindle/callback/ICallback;

    return-void
.end method

.method private updateFromDB()V
    .locals 3

    .line 104
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/library/AbstractUserItemsCounter$1;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/library/AbstractUserItemsCounter$1;-><init>(Lcom/amazon/kcp/library/AbstractUserItemsCounter;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->execute(Ljava/lang/Runnable;Z)V

    return-void
.end method


# virtual methods
.method protected executeUpdateCallback()V
    .locals 3

    .line 132
    iget-object v0, p0, Lcom/amazon/kcp/library/AbstractUserItemsCounter;->updateCallback:Lcom/amazon/kindle/callback/ICallback;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amazon/kcp/library/AbstractUserItemsCounter;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v1, :cond_0

    .line 133
    new-instance v2, Lcom/amazon/kindle/callback/OperationResult;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/amazon/kindle/callback/OperationResult;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Lcom/amazon/kindle/callback/ICallback;->call(Lcom/amazon/kindle/callback/OperationResult;)V

    :cond_0
    return-void
.end method

.method protected forceUpdate()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized getUserItemsCount()I
    .locals 1

    monitor-enter p0

    .line 59
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/kcp/library/AbstractUserItemsCounter;->forceUpdate()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/library/AbstractUserItemsCounter;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v0, :cond_1

    .line 60
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kcp/library/AbstractUserItemsCounter;->updateFromDB()V

    .line 61
    iget-object v0, p0, Lcom/amazon/kcp/library/AbstractUserItemsCounter;->counter:Ljava/util/concurrent/atomic/AtomicInteger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    const/4 v0, -0x1

    .line 62
    monitor-exit p0

    return v0

    .line 65
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/amazon/kcp/library/AbstractUserItemsCounter;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract getUserItemsCountFromDB()I
.end method

.method public onAuthenticationEvent(Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 139
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;->getType()Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;->LOGIN:Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    if-ne p1, v0, :cond_0

    .line 140
    invoke-virtual {p0}, Lcom/amazon/kcp/library/AbstractUserItemsCounter;->resetCountFromDB()V

    :cond_0
    return-void
.end method

.method public registerHandler()V
    .locals 1

    .line 43
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method public removeUpdateCallback()V
    .locals 1

    const/4 v0, 0x0

    .line 125
    iput-object v0, p0, Lcom/amazon/kcp/library/AbstractUserItemsCounter;->updateCallback:Lcom/amazon/kindle/callback/ICallback;

    return-void
.end method

.method public resetCountFromDB()V
    .locals 0

    .line 81
    invoke-direct {p0}, Lcom/amazon/kcp/library/AbstractUserItemsCounter;->updateFromDB()V

    return-void
.end method

.method public setUpdateCallback(Lcom/amazon/kindle/callback/ICallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/callback/ICallback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 118
    iput-object p1, p0, Lcom/amazon/kcp/library/AbstractUserItemsCounter;->updateCallback:Lcom/amazon/kindle/callback/ICallback;

    return-void
.end method

.method public unregisterHandler()V
    .locals 1

    .line 50
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    return-void
.end method

.method updateFromDbSynchronous()V
    .locals 2

    .line 89
    invoke-virtual {p0}, Lcom/amazon/kcp/library/AbstractUserItemsCounter;->getUserItemsCountFromDB()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 92
    iput-object v0, p0, Lcom/amazon/kcp/library/AbstractUserItemsCounter;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void

    .line 95
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/library/AbstractUserItemsCounter;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v1, :cond_1

    .line 96
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/amazon/kcp/library/AbstractUserItemsCounter;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 97
    invoke-virtual {p0}, Lcom/amazon/kcp/library/AbstractUserItemsCounter;->executeUpdateCallback()V

    goto :goto_0

    .line 98
    :cond_1
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v1

    if-eq v1, v0, :cond_2

    .line 99
    invoke-virtual {p0}, Lcom/amazon/kcp/library/AbstractUserItemsCounter;->executeUpdateCallback()V

    :cond_2
    :goto_0
    return-void
.end method
