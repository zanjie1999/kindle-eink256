.class public Lcom/amazon/device/sync/deferred/DeferredCollection;
.super Lcom/amazon/device/sync/deferred/Deferred;
.source "DeferredCollection.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/amazon/device/sync/deferred/Deferred<",
        "Ljava/util/Collection<",
        "TT;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Ljava/util/Collection<",
            "TT;>;)V"
        }
    .end annotation

    .line 31
    new-instance v0, Lcom/amazon/device/sync/deferred/DeferredCollection$1;

    invoke-direct {v0, p2}, Lcom/amazon/device/sync/deferred/DeferredCollection$1;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, p1, v0}, Lcom/amazon/device/sync/deferred/Deferred;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/Callable;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Ljava/util/concurrent/Callable<",
            "Ljava/util/Collection<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/amazon/device/sync/deferred/Deferred;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/Callable;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/Callable;Lcom/amazon/device/sync/gear/RetryPolicy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Ljava/util/concurrent/Callable<",
            "Ljava/util/Collection<",
            "TT;>;>;",
            "Lcom/amazon/device/sync/gear/RetryPolicy;",
            ")V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/device/sync/deferred/Deferred;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/Callable;Lcom/amazon/device/sync/gear/RetryPolicy;)V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/device/sync/deferred/DeferredCollection;Ljava/lang/Object;)V
    .locals 0

    .line 16
    invoke-virtual {p0, p1}, Ljava/util/concurrent/FutureTask;->set(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method scatter(Lcom/amazon/device/sync/deferred/Function;Lcom/amazon/device/sync/gear/RetryPolicy;Lcom/amazon/device/sync/deferred/DeferredCollection;Ljava/util/List;)Lcom/amazon/device/sync/deferred/Deferred;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/device/sync/deferred/Function<",
            "TT;TU;>;",
            "Lcom/amazon/device/sync/gear/RetryPolicy;",
            "Lcom/amazon/device/sync/deferred/DeferredCollection<",
            "TU;>;",
            "Ljava/util/List<",
            "TU;>;)",
            "Lcom/amazon/device/sync/deferred/Deferred<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 57
    new-instance v0, Lcom/amazon/device/sync/deferred/Deferred;

    iget-object v1, p0, Lcom/amazon/device/sync/deferred/Deferred;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v8, Lcom/amazon/device/sync/deferred/DeferredCollection$2;

    move-object v2, v8

    move-object v3, p0

    move-object v4, p3

    move-object v5, p1

    move-object v6, p4

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/amazon/device/sync/deferred/DeferredCollection$2;-><init>(Lcom/amazon/device/sync/deferred/DeferredCollection;Lcom/amazon/device/sync/deferred/DeferredCollection;Lcom/amazon/device/sync/deferred/Function;Ljava/util/List;Lcom/amazon/device/sync/gear/RetryPolicy;)V

    invoke-direct {v0, v1, v8}, Lcom/amazon/device/sync/deferred/Deferred;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public thenWithEach(Lcom/amazon/device/sync/deferred/Function;)Lcom/amazon/device/sync/deferred/DeferredCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/device/sync/deferred/Function<",
            "TT;TU;>;)",
            "Lcom/amazon/device/sync/deferred/DeferredCollection<",
            "TU;>;"
        }
    .end annotation

    .line 43
    sget-object v0, Lcom/amazon/device/sync/gear/RetryPolicy;->NONE:Lcom/amazon/device/sync/gear/RetryPolicy;

    invoke-virtual {p0, p1, v0}, Lcom/amazon/device/sync/deferred/DeferredCollection;->thenWithEach(Lcom/amazon/device/sync/deferred/Function;Lcom/amazon/device/sync/gear/RetryPolicy;)Lcom/amazon/device/sync/deferred/DeferredCollection;

    move-result-object p1

    return-object p1
.end method

.method public thenWithEach(Lcom/amazon/device/sync/deferred/Function;Lcom/amazon/device/sync/gear/RetryPolicy;)Lcom/amazon/device/sync/deferred/DeferredCollection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/device/sync/deferred/Function<",
            "TT;TU;>;",
            "Lcom/amazon/device/sync/gear/RetryPolicy;",
            ")",
            "Lcom/amazon/device/sync/deferred/DeferredCollection<",
            "TU;>;"
        }
    .end annotation

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 49
    new-instance v1, Lcom/amazon/device/sync/deferred/DeferredCollection;

    iget-object v2, p0, Lcom/amazon/device/sync/deferred/Deferred;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v1, v2, v0}, Lcom/amazon/device/sync/deferred/DeferredCollection;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/Collection;)V

    .line 50
    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/amazon/device/sync/deferred/DeferredCollection;->scatter(Lcom/amazon/device/sync/deferred/Function;Lcom/amazon/device/sync/gear/RetryPolicy;Lcom/amazon/device/sync/deferred/DeferredCollection;Ljava/util/List;)Lcom/amazon/device/sync/deferred/Deferred;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/device/sync/deferred/Deferred;->onDone(Ljava/util/Observer;)V

    return-object v1
.end method
