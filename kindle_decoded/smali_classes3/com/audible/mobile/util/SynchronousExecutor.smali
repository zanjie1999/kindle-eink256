.class public Lcom/audible/mobile/util/SynchronousExecutor;
.super Ljava/util/concurrent/AbstractExecutorService;
.source "SynchronousExecutor.java"


# instance fields
.field private shutdown:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/util/concurrent/AbstractExecutorService;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/audible/mobile/util/SynchronousExecutor;->shutdown:Z

    return-void
.end method


# virtual methods
.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 p1, 0x1

    .line 55
    iput-boolean p1, p0, Lcom/audible/mobile/util/SynchronousExecutor;->shutdown:Z

    return p1
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 20
    iget-boolean v0, p0, Lcom/audible/mobile/util/SynchronousExecutor;->shutdown:Z

    if-nez v0, :cond_0

    .line 24
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 21
    :cond_0
    new-instance p1, Ljava/util/concurrent/RejectedExecutionException;

    invoke-direct {p1}, Ljava/util/concurrent/RejectedExecutionException;-><init>()V

    throw p1
.end method

.method public isShutdown()Z
    .locals 1

    .line 43
    iget-boolean v0, p0, Lcom/audible/mobile/util/SynchronousExecutor;->shutdown:Z

    return v0
.end method

.method public isTerminated()Z
    .locals 1

    .line 49
    iget-boolean v0, p0, Lcom/audible/mobile/util/SynchronousExecutor;->shutdown:Z

    return v0
.end method

.method public shutdown()V
    .locals 1

    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lcom/audible/mobile/util/SynchronousExecutor;->shutdown:Z

    return-void
.end method

.method public shutdownNow()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcom/audible/mobile/util/SynchronousExecutor;->shutdown:Z

    .line 37
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
