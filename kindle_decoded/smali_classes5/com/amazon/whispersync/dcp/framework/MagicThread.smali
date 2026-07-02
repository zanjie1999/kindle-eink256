.class public final Lcom/amazon/whispersync/dcp/framework/MagicThread;
.super Ljava/lang/Thread;
.source "MagicThread.java"


# instance fields
.field private mIsInterrupted:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 8
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/MagicThread;->mIsInterrupted:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static throwIfInterrupted()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 29
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    instance-of v0, v0, Lcom/amazon/whispersync/dcp/framework/MagicThread;

    if-eqz v0, :cond_1

    .line 31
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispersync/dcp/framework/MagicThread;

    .line 32
    iget-object v0, v0, Lcom/amazon/whispersync/dcp/framework/MagicThread;->mIsInterrupted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 34
    :cond_0
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 37
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_2

    :goto_0
    return-void

    .line 39
    :cond_2
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method


# virtual methods
.method public resetInterrupt()V
    .locals 2

    .line 24
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/MagicThread;->mIsInterrupted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public signalInterrupt()V
    .locals 2

    .line 19
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/MagicThread;->mIsInterrupted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
