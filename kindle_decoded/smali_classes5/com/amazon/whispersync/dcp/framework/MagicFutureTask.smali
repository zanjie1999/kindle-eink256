.class public Lcom/amazon/whispersync/dcp/framework/MagicFutureTask;
.super Ljava/util/concurrent/FutureTask;
.source "MagicFutureTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/FutureTask<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private mRunner:Lcom/amazon/whispersync/dcp/framework/MagicThread;

.field private mTaskFinishedLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 12
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/MagicFutureTask;->mTaskFinishedLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 22
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/MagicFutureTask;->mRunner:Lcom/amazon/whispersync/dcp/framework/MagicThread;

    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/MagicThread;->signalInterrupt()V

    .line 27
    :cond_0
    invoke-super {p0, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result p1

    return p1
.end method

.method public run()V
    .locals 3

    .line 33
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispersync/dcp/framework/MagicThread;

    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/MagicFutureTask;->mRunner:Lcom/amazon/whispersync/dcp/framework/MagicThread;

    const/4 v0, 0x0

    .line 36
    :try_start_0
    invoke-super {p0}, Ljava/util/concurrent/FutureTask;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/MagicFutureTask;->mTaskFinishedLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 46
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/MagicFutureTask;->mRunner:Lcom/amazon/whispersync/dcp/framework/MagicThread;

    invoke-virtual {v1}, Lcom/amazon/whispersync/dcp/framework/MagicThread;->resetInterrupt()V

    .line 47
    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/MagicFutureTask;->mRunner:Lcom/amazon/whispersync/dcp/framework/MagicThread;

    return-void

    :catchall_0
    move-exception v1

    .line 40
    iget-object v2, p0, Lcom/amazon/whispersync/dcp/framework/MagicFutureTask;->mTaskFinishedLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 46
    iget-object v2, p0, Lcom/amazon/whispersync/dcp/framework/MagicFutureTask;->mRunner:Lcom/amazon/whispersync/dcp/framework/MagicThread;

    invoke-virtual {v2}, Lcom/amazon/whispersync/dcp/framework/MagicThread;->resetInterrupt()V

    .line 47
    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/MagicFutureTask;->mRunner:Lcom/amazon/whispersync/dcp/framework/MagicThread;

    throw v1
.end method

.method public waitUntilFinished(JLjava/util/concurrent/TimeUnit;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 57
    invoke-static {}, Lcom/amazon/whispersync/dcp/framework/MagicThread;->throwIfInterrupted()V

    .line 59
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/MagicFutureTask;->mTaskFinishedLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    return p1
.end method
