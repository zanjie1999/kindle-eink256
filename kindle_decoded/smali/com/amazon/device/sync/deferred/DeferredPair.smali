.class public final Lcom/amazon/device/sync/deferred/DeferredPair;
.super Ljava/lang/Object;
.source "DeferredPair.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Observer;"
    }
.end annotation


# instance fields
.field private final mDone:Lcom/amazon/device/sync/deferred/DeferredObservable;

.field private final mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private final mFirst:Lcom/amazon/device/sync/deferred/Deferred;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/device/sync/deferred/Deferred<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mPending:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mSecond:Lcom/amazon/device/sync/deferred/Deferred;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/device/sync/deferred/Deferred<",
            "TU;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/amazon/device/sync/deferred/Deferred;Lcom/amazon/device/sync/deferred/Deferred;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Lcom/amazon/device/sync/deferred/Deferred<",
            "TT;>;",
            "Lcom/amazon/device/sync/deferred/Deferred<",
            "TU;>;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/amazon/device/sync/deferred/DeferredPair;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 22
    new-instance p1, Lcom/amazon/device/sync/deferred/DeferredObservable;

    invoke-direct {p1}, Lcom/amazon/device/sync/deferred/DeferredObservable;-><init>()V

    iput-object p1, p0, Lcom/amazon/device/sync/deferred/DeferredPair;->mDone:Lcom/amazon/device/sync/deferred/DeferredObservable;

    .line 23
    iput-object p2, p0, Lcom/amazon/device/sync/deferred/DeferredPair;->mFirst:Lcom/amazon/device/sync/deferred/Deferred;

    .line 24
    iput-object p3, p0, Lcom/amazon/device/sync/deferred/DeferredPair;->mSecond:Lcom/amazon/device/sync/deferred/Deferred;

    .line 25
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/amazon/device/sync/deferred/DeferredPair;->mPending:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/device/sync/deferred/DeferredPair;)Lcom/amazon/device/sync/deferred/Deferred;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/amazon/device/sync/deferred/DeferredPair;->mFirst:Lcom/amazon/device/sync/deferred/Deferred;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/device/sync/deferred/DeferredPair;)Lcom/amazon/device/sync/deferred/Deferred;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/amazon/device/sync/deferred/DeferredPair;->mSecond:Lcom/amazon/device/sync/deferred/Deferred;

    return-object p0
.end method

.method static both(Ljava/util/concurrent/ScheduledExecutorService;Lcom/amazon/device/sync/deferred/Deferred;Lcom/amazon/device/sync/deferred/Deferred;)Lcom/amazon/device/sync/deferred/DeferredPair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Lcom/amazon/device/sync/deferred/Deferred<",
            "TT;>;",
            "Lcom/amazon/device/sync/deferred/Deferred<",
            "TU;>;)",
            "Lcom/amazon/device/sync/deferred/DeferredPair<",
            "TT;TU;>;"
        }
    .end annotation

    .line 31
    new-instance v0, Lcom/amazon/device/sync/deferred/DeferredPair;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/device/sync/deferred/DeferredPair;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/amazon/device/sync/deferred/Deferred;Lcom/amazon/device/sync/deferred/Deferred;)V

    .line 32
    invoke-virtual {p1, v0}, Lcom/amazon/device/sync/deferred/Deferred;->onDone(Ljava/util/Observer;)V

    .line 33
    invoke-virtual {p2, v0}, Lcom/amazon/device/sync/deferred/Deferred;->onDone(Ljava/util/Observer;)V

    return-object v0
.end method


# virtual methods
.method public getFirst()Lcom/amazon/device/sync/deferred/Deferred;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/device/sync/deferred/Deferred<",
            "TT;>;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/amazon/device/sync/deferred/DeferredPair;->mFirst:Lcom/amazon/device/sync/deferred/Deferred;

    return-object v0
.end method

.method public getSecond()Lcom/amazon/device/sync/deferred/Deferred;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/device/sync/deferred/Deferred<",
            "TU;>;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/amazon/device/sync/deferred/DeferredPair;->mSecond:Lcom/amazon/device/sync/deferred/Deferred;

    return-object v0
.end method

.method onDone(Ljava/util/Observer;)V
    .locals 3

    .line 93
    iget-object v0, p0, Lcom/amazon/device/sync/deferred/DeferredPair;->mDone:Lcom/amazon/device/sync/deferred/DeferredObservable;

    monitor-enter v0

    .line 95
    :try_start_0
    iget-object v1, p0, Lcom/amazon/device/sync/deferred/DeferredPair;->mPending:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-gtz v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/amazon/device/sync/deferred/DeferredPair;->mDone:Lcom/amazon/device/sync/deferred/DeferredObservable;

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Ljava/util/Observer;->update(Ljava/util/Observable;Ljava/lang/Object;)V

    goto :goto_0

    .line 101
    :cond_0
    iget-object v1, p0, Lcom/amazon/device/sync/deferred/DeferredPair;->mDone:Lcom/amazon/device/sync/deferred/DeferredObservable;

    invoke-virtual {v1, p1}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    .line 103
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

.method public then(Ljava/util/concurrent/Callable;)Lcom/amazon/device/sync/deferred/Deferred;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TR;>;)",
            "Lcom/amazon/device/sync/deferred/Deferred<",
            "TR;>;"
        }
    .end annotation

    .line 39
    new-instance v0, Lcom/amazon/device/sync/deferred/Deferred;

    iget-object v1, p0, Lcom/amazon/device/sync/deferred/DeferredPair;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v0, v1, p1}, Lcom/amazon/device/sync/deferred/Deferred;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/Callable;)V

    .line 40
    invoke-virtual {p0, v0}, Lcom/amazon/device/sync/deferred/DeferredPair;->onDone(Ljava/util/Observer;)V

    return-object v0
.end method

.method public thenFirst()Lcom/amazon/device/sync/deferred/Deferred;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/device/sync/deferred/Deferred<",
            "TT;>;"
        }
    .end annotation

    .line 46
    new-instance v0, Lcom/amazon/device/sync/deferred/DeferredPair$1;

    invoke-direct {v0, p0}, Lcom/amazon/device/sync/deferred/DeferredPair$1;-><init>(Lcom/amazon/device/sync/deferred/DeferredPair;)V

    invoke-virtual {p0, v0}, Lcom/amazon/device/sync/deferred/DeferredPair;->then(Ljava/util/concurrent/Callable;)Lcom/amazon/device/sync/deferred/Deferred;

    move-result-object v0

    return-object v0
.end method

.method public thenSecond()Lcom/amazon/device/sync/deferred/Deferred;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/device/sync/deferred/Deferred<",
            "TU;>;"
        }
    .end annotation

    .line 58
    new-instance v0, Lcom/amazon/device/sync/deferred/DeferredPair$2;

    invoke-direct {v0, p0}, Lcom/amazon/device/sync/deferred/DeferredPair$2;-><init>(Lcom/amazon/device/sync/deferred/DeferredPair;)V

    invoke-virtual {p0, v0}, Lcom/amazon/device/sync/deferred/DeferredPair;->then(Ljava/util/concurrent/Callable;)Lcom/amazon/device/sync/deferred/Deferred;

    move-result-object v0

    return-object v0
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 0

    .line 81
    iget-object p1, p0, Lcom/amazon/device/sync/deferred/DeferredPair;->mPending:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-gtz p1, :cond_0

    .line 83
    iget-object p1, p0, Lcom/amazon/device/sync/deferred/DeferredPair;->mDone:Lcom/amazon/device/sync/deferred/DeferredObservable;

    monitor-enter p1

    .line 85
    :try_start_0
    iget-object p2, p0, Lcom/amazon/device/sync/deferred/DeferredPair;->mDone:Lcom/amazon/device/sync/deferred/DeferredObservable;

    invoke-virtual {p2}, Lcom/amazon/device/sync/deferred/DeferredObservable;->setChanged()V

    .line 86
    iget-object p2, p0, Lcom/amazon/device/sync/deferred/DeferredPair;->mDone:Lcom/amazon/device/sync/deferred/DeferredObservable;

    invoke-virtual {p2}, Ljava/util/Observable;->notifyObservers()V

    .line 87
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    :cond_0
    :goto_0
    return-void
.end method
