.class public Lcom/amazon/whispersync/dcp/framework/AutoResetEvent;
.super Ljava/lang/Object;
.source "AutoResetEvent.java"


# instance fields
.field private final mSemaphore:Ljava/util/concurrent/Semaphore;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/AutoResetEvent;->mSemaphore:Ljava/util/concurrent/Semaphore;

    return-void
.end method


# virtual methods
.method public signalEvent()V
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/AutoResetEvent;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method

.method public waitEvent()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 18
    invoke-static {}, Lcom/amazon/whispersync/dcp/framework/MagicThread;->throwIfInterrupted()V

    .line 20
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/AutoResetEvent;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 21
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/AutoResetEvent;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->drainPermits()I

    return-void
.end method

.method public waitEvent(JLjava/util/concurrent/TimeUnit;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 26
    invoke-static {}, Lcom/amazon/whispersync/dcp/framework/MagicThread;->throwIfInterrupted()V

    .line 28
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/AutoResetEvent;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 32
    iget-object p2, p0, Lcom/amazon/whispersync/dcp/framework/AutoResetEvent;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p2}, Ljava/util/concurrent/Semaphore;->drainPermits()I

    :cond_0
    return p1
.end method
