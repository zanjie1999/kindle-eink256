.class public Lcom/amazon/device/sync/deferred/Deferred;
.super Ljava/util/concurrent/FutureTask;
.source "Deferred.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/FutureTask<",
        "TT;>;",
        "Ljava/util/Observer;"
    }
.end annotation


# static fields
.field private static final NO_OP:Ljava/lang/Runnable;


# instance fields
.field private final mDone:Lcom/amazon/device/sync/deferred/DeferredObservable;

.field protected final mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field protected final mRetryPolicy:Lcom/amazon/device/sync/gear/RetryPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lcom/amazon/device/sync/deferred/Deferred$1;

    invoke-direct {v0}, Lcom/amazon/device/sync/deferred/Deferred$1;-><init>()V

    sput-object v0, Lcom/amazon/device/sync/deferred/Deferred;->NO_OP:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "TT;)V"
        }
    .end annotation

    .line 27
    sget-object v0, Lcom/amazon/device/sync/deferred/Deferred;->NO_OP:Ljava/lang/Runnable;

    sget-object v1, Lcom/amazon/device/sync/gear/RetryPolicy;->NONE:Lcom/amazon/device/sync/gear/RetryPolicy;

    invoke-direct {p0, p1, v0, v1}, Lcom/amazon/device/sync/deferred/Deferred;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;Lcom/amazon/device/sync/gear/RetryPolicy;)V

    .line 28
    invoke-virtual {p0, p2}, Ljava/util/concurrent/FutureTask;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;)V
    .locals 1

    .line 33
    sget-object v0, Lcom/amazon/device/sync/gear/RetryPolicy;->NONE:Lcom/amazon/device/sync/gear/RetryPolicy;

    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/device/sync/deferred/Deferred;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;Lcom/amazon/device/sync/gear/RetryPolicy;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;Lcom/amazon/device/sync/gear/RetryPolicy;)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p2, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 39
    iput-object p1, p0, Lcom/amazon/device/sync/deferred/Deferred;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 40
    new-instance p1, Lcom/amazon/device/sync/deferred/DeferredObservable;

    invoke-direct {p1}, Lcom/amazon/device/sync/deferred/DeferredObservable;-><init>()V

    iput-object p1, p0, Lcom/amazon/device/sync/deferred/Deferred;->mDone:Lcom/amazon/device/sync/deferred/DeferredObservable;

    .line 41
    iput-object p3, p0, Lcom/amazon/device/sync/deferred/Deferred;->mRetryPolicy:Lcom/amazon/device/sync/gear/RetryPolicy;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/Callable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)V"
        }
    .end annotation

    .line 46
    sget-object v0, Lcom/amazon/device/sync/gear/RetryPolicy;->NONE:Lcom/amazon/device/sync/gear/RetryPolicy;

    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/device/sync/deferred/Deferred;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/Callable;Lcom/amazon/device/sync/gear/RetryPolicy;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/Callable;Lcom/amazon/device/sync/gear/RetryPolicy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Ljava/util/concurrent/Callable<",
            "TT;>;",
            "Lcom/amazon/device/sync/gear/RetryPolicy;",
            ")V"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 52
    iput-object p1, p0, Lcom/amazon/device/sync/deferred/Deferred;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 53
    new-instance p1, Lcom/amazon/device/sync/deferred/DeferredObservable;

    invoke-direct {p1}, Lcom/amazon/device/sync/deferred/DeferredObservable;-><init>()V

    iput-object p1, p0, Lcom/amazon/device/sync/deferred/Deferred;->mDone:Lcom/amazon/device/sync/deferred/DeferredObservable;

    .line 54
    iput-object p3, p0, Lcom/amazon/device/sync/deferred/Deferred;->mRetryPolicy:Lcom/amazon/device/sync/gear/RetryPolicy;

    return-void
.end method


# virtual methods
.method protected done()V
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/amazon/device/sync/deferred/Deferred;->mDone:Lcom/amazon/device/sync/deferred/DeferredObservable;

    monitor-enter v0

    .line 180
    :try_start_0
    iget-object v1, p0, Lcom/amazon/device/sync/deferred/Deferred;->mDone:Lcom/amazon/device/sync/deferred/DeferredObservable;

    invoke-virtual {v1}, Lcom/amazon/device/sync/deferred/DeferredObservable;->setChanged()V

    .line 181
    iget-object v1, p0, Lcom/amazon/device/sync/deferred/Deferred;->mDone:Lcom/amazon/device/sync/deferred/DeferredObservable;

    invoke-virtual {v1}, Ljava/util/Observable;->notifyObservers()V

    .line 182
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method onDone(Ljava/util/Observer;)V
    .locals 3

    .line 132
    iget-object v0, p0, Lcom/amazon/device/sync/deferred/Deferred;->mDone:Lcom/amazon/device/sync/deferred/DeferredObservable;

    monitor-enter v0

    .line 134
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->isDone()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    iget-object v1, p0, Lcom/amazon/device/sync/deferred/Deferred;->mDone:Lcom/amazon/device/sync/deferred/DeferredObservable;

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Ljava/util/Observer;->update(Ljava/util/Observable;Ljava/lang/Object;)V

    goto :goto_0

    .line 140
    :cond_0
    iget-object v1, p0, Lcom/amazon/device/sync/deferred/Deferred;->mDone:Lcom/amazon/device/sync/deferred/DeferredObservable;

    invoke-virtual {v1, p1}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    .line 142
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public run()V
    .locals 4

    .line 168
    invoke-super {p0}, Ljava/util/concurrent/FutureTask;->run()V

    .line 169
    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/amazon/device/sync/deferred/Deferred;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/amazon/device/sync/deferred/Deferred;->mRetryPolicy:Lcom/amazon/device/sync/gear/RetryPolicy;

    invoke-interface {v1}, Lcom/amazon/device/sync/gear/RetryPolicy;->getWaitTime()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p0, v1, v2, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    return-void
.end method

.method protected setException(Ljava/lang/Throwable;)V
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/amazon/device/sync/deferred/Deferred;->mRetryPolicy:Lcom/amazon/device/sync/gear/RetryPolicy;

    invoke-interface {v0, p1}, Lcom/amazon/device/sync/gear/RetryPolicy;->canRetry(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    invoke-super {p0, p1}, Ljava/util/concurrent/FutureTask;->setException(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public then(Lcom/amazon/device/sync/deferred/Function;)Lcom/amazon/device/sync/deferred/Deferred;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/device/sync/deferred/Function<",
            "TT;TU;>;)",
            "Lcom/amazon/device/sync/deferred/Deferred<",
            "TU;>;"
        }
    .end annotation

    .line 83
    new-instance v0, Lcom/amazon/device/sync/deferred/Deferred$2;

    invoke-direct {v0, p0, p1}, Lcom/amazon/device/sync/deferred/Deferred$2;-><init>(Lcom/amazon/device/sync/deferred/Deferred;Lcom/amazon/device/sync/deferred/Function;)V

    sget-object p1, Lcom/amazon/device/sync/gear/RetryPolicy;->NONE:Lcom/amazon/device/sync/gear/RetryPolicy;

    invoke-virtual {p0, v0, p1}, Lcom/amazon/device/sync/deferred/Deferred;->then(Ljava/util/concurrent/Callable;Lcom/amazon/device/sync/gear/RetryPolicy;)Lcom/amazon/device/sync/deferred/Deferred;

    move-result-object p1

    return-object p1
.end method

.method public then(Lcom/amazon/device/sync/deferred/Function;Lcom/amazon/device/sync/gear/RetryPolicy;)Lcom/amazon/device/sync/deferred/Deferred;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/device/sync/deferred/Function<",
            "TT;TU;>;",
            "Lcom/amazon/device/sync/gear/RetryPolicy;",
            ")",
            "Lcom/amazon/device/sync/deferred/Deferred<",
            "TU;>;"
        }
    .end annotation

    .line 95
    new-instance v0, Lcom/amazon/device/sync/deferred/Deferred$3;

    invoke-direct {v0, p0, p1}, Lcom/amazon/device/sync/deferred/Deferred$3;-><init>(Lcom/amazon/device/sync/deferred/Deferred;Lcom/amazon/device/sync/deferred/Function;)V

    invoke-virtual {p0, v0, p2}, Lcom/amazon/device/sync/deferred/Deferred;->then(Ljava/util/concurrent/Callable;Lcom/amazon/device/sync/gear/RetryPolicy;)Lcom/amazon/device/sync/deferred/Deferred;

    move-result-object p1

    return-object p1
.end method

.method public then(Ljava/lang/Runnable;)Lcom/amazon/device/sync/deferred/Deferred;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            ")",
            "Lcom/amazon/device/sync/deferred/Deferred<",
            "TU;>;"
        }
    .end annotation

    .line 59
    sget-object v0, Lcom/amazon/device/sync/gear/RetryPolicy;->NONE:Lcom/amazon/device/sync/gear/RetryPolicy;

    invoke-virtual {p0, p1, v0}, Lcom/amazon/device/sync/deferred/Deferred;->then(Ljava/lang/Runnable;Lcom/amazon/device/sync/gear/RetryPolicy;)Lcom/amazon/device/sync/deferred/Deferred;

    move-result-object p1

    return-object p1
.end method

.method public then(Ljava/lang/Runnable;Lcom/amazon/device/sync/gear/RetryPolicy;)Lcom/amazon/device/sync/deferred/Deferred;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "Lcom/amazon/device/sync/gear/RetryPolicy;",
            ")",
            "Lcom/amazon/device/sync/deferred/Deferred<",
            "TU;>;"
        }
    .end annotation

    .line 64
    new-instance v0, Lcom/amazon/device/sync/deferred/Deferred;

    iget-object v1, p0, Lcom/amazon/device/sync/deferred/Deferred;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v0, v1, p1, p2}, Lcom/amazon/device/sync/deferred/Deferred;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;Lcom/amazon/device/sync/gear/RetryPolicy;)V

    .line 65
    invoke-virtual {p0, v0}, Lcom/amazon/device/sync/deferred/Deferred;->onDone(Ljava/util/Observer;)V

    return-object v0
.end method

.method public then(Ljava/util/concurrent/Callable;)Lcom/amazon/device/sync/deferred/Deferred;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TU;>;)",
            "Lcom/amazon/device/sync/deferred/Deferred<",
            "TU;>;"
        }
    .end annotation

    .line 71
    sget-object v0, Lcom/amazon/device/sync/gear/RetryPolicy;->NONE:Lcom/amazon/device/sync/gear/RetryPolicy;

    invoke-virtual {p0, p1, v0}, Lcom/amazon/device/sync/deferred/Deferred;->then(Ljava/util/concurrent/Callable;Lcom/amazon/device/sync/gear/RetryPolicy;)Lcom/amazon/device/sync/deferred/Deferred;

    move-result-object p1

    return-object p1
.end method

.method public then(Ljava/util/concurrent/Callable;Lcom/amazon/device/sync/gear/RetryPolicy;)Lcom/amazon/device/sync/deferred/Deferred;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TU;>;",
            "Lcom/amazon/device/sync/gear/RetryPolicy;",
            ")",
            "Lcom/amazon/device/sync/deferred/Deferred<",
            "TU;>;"
        }
    .end annotation

    .line 76
    new-instance p2, Lcom/amazon/device/sync/deferred/Deferred;

    iget-object v0, p0, Lcom/amazon/device/sync/deferred/Deferred;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {p2, v0, p1}, Lcom/amazon/device/sync/deferred/Deferred;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/Callable;)V

    .line 77
    invoke-virtual {p0, p2}, Lcom/amazon/device/sync/deferred/Deferred;->onDone(Ljava/util/Observer;)V

    return-object p2
.end method

.method public then(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Callable;)Lcom/amazon/device/sync/deferred/DeferredPair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TR;>;",
            "Ljava/util/concurrent/Callable<",
            "TS;>;)",
            "Lcom/amazon/device/sync/deferred/DeferredPair<",
            "TR;TS;>;"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/amazon/device/sync/deferred/Deferred;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {p0, p1}, Lcom/amazon/device/sync/deferred/Deferred;->then(Ljava/util/concurrent/Callable;)Lcom/amazon/device/sync/deferred/Deferred;

    move-result-object p1

    invoke-virtual {p0, p2}, Lcom/amazon/device/sync/deferred/Deferred;->then(Ljava/util/concurrent/Callable;)Lcom/amazon/device/sync/deferred/Deferred;

    move-result-object p2

    invoke-static {v0, p1, p2}, Lcom/amazon/device/sync/deferred/DeferredPair;->both(Ljava/util/concurrent/ScheduledExecutorService;Lcom/amazon/device/sync/deferred/Deferred;Lcom/amazon/device/sync/deferred/Deferred;)Lcom/amazon/device/sync/deferred/DeferredPair;

    move-result-object p1

    return-object p1
.end method

.method public then(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Callable;Lcom/amazon/device/sync/gear/RetryPolicy;)Lcom/amazon/device/sync/deferred/DeferredPair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TR;>;",
            "Ljava/util/concurrent/Callable<",
            "TS;>;",
            "Lcom/amazon/device/sync/gear/RetryPolicy;",
            ")",
            "Lcom/amazon/device/sync/deferred/DeferredPair<",
            "TR;TS;>;"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/amazon/device/sync/deferred/Deferred;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {p0, p1, p3}, Lcom/amazon/device/sync/deferred/Deferred;->then(Ljava/util/concurrent/Callable;Lcom/amazon/device/sync/gear/RetryPolicy;)Lcom/amazon/device/sync/deferred/Deferred;

    move-result-object p1

    invoke-virtual {p0, p2, p3}, Lcom/amazon/device/sync/deferred/Deferred;->then(Ljava/util/concurrent/Callable;Lcom/amazon/device/sync/gear/RetryPolicy;)Lcom/amazon/device/sync/deferred/Deferred;

    move-result-object p2

    invoke-static {v0, p1, p2}, Lcom/amazon/device/sync/deferred/DeferredPair;->both(Ljava/util/concurrent/ScheduledExecutorService;Lcom/amazon/device/sync/deferred/Deferred;Lcom/amazon/device/sync/deferred/Deferred;)Lcom/amazon/device/sync/deferred/DeferredPair;

    move-result-object p1

    return-object p1
.end method

.method public thenCollection(Ljava/util/concurrent/Callable;)Lcom/amazon/device/sync/deferred/DeferredCollection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "Ljava/util/Collection<",
            "TU;>;>;)",
            "Lcom/amazon/device/sync/deferred/DeferredCollection<",
            "TU;>;"
        }
    .end annotation

    .line 107
    new-instance v0, Lcom/amazon/device/sync/deferred/DeferredCollection;

    iget-object v1, p0, Lcom/amazon/device/sync/deferred/Deferred;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v0, v1, p1}, Lcom/amazon/device/sync/deferred/DeferredCollection;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/Callable;)V

    .line 108
    invoke-virtual {p0, v0}, Lcom/amazon/device/sync/deferred/Deferred;->onDone(Ljava/util/Observer;)V

    return-object v0
.end method

.method public thenCollection(Ljava/util/concurrent/Callable;Lcom/amazon/device/sync/gear/RetryPolicy;)Lcom/amazon/device/sync/deferred/DeferredCollection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "Ljava/util/Collection<",
            "TU;>;>;",
            "Lcom/amazon/device/sync/gear/RetryPolicy;",
            ")",
            "Lcom/amazon/device/sync/deferred/DeferredCollection<",
            "TU;>;"
        }
    .end annotation

    .line 114
    new-instance v0, Lcom/amazon/device/sync/deferred/DeferredCollection;

    iget-object v1, p0, Lcom/amazon/device/sync/deferred/Deferred;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v0, v1, p1, p2}, Lcom/amazon/device/sync/deferred/DeferredCollection;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/Callable;Lcom/amazon/device/sync/gear/RetryPolicy;)V

    .line 115
    invoke-virtual {p0, v0}, Lcom/amazon/device/sync/deferred/Deferred;->onDone(Ljava/util/Observer;)V

    return-object v0
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 2

    .line 148
    iget-object p1, p0, Lcom/amazon/device/sync/deferred/Deferred;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object p2, p0, Lcom/amazon/device/sync/deferred/Deferred;->mRetryPolicy:Lcom/amazon/device/sync/gear/RetryPolicy;

    invoke-interface {p2}, Lcom/amazon/device/sync/gear/RetryPolicy;->getWaitTime()J

    move-result-wide v0

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, p0, v0, v1, p2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method
