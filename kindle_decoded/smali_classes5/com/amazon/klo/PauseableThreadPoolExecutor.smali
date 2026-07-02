.class public Lcom/amazon/klo/PauseableThreadPoolExecutor;
.super Ljava/util/concurrent/ScheduledThreadPoolExecutor;
.source "PauseableThreadPoolExecutor.java"


# instance fields
.field private isPaused:Z

.field private pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private unpaused:Ljava/util/concurrent/locks/Condition;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    .line 17
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lcom/amazon/klo/PauseableThreadPoolExecutor;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 18
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/klo/PauseableThreadPoolExecutor;->unpaused:Ljava/util/concurrent/locks/Condition;

    const/4 p1, 0x0

    .line 19
    iput-boolean p1, p0, Lcom/amazon/klo/PauseableThreadPoolExecutor;->isPaused:Z

    return-void
.end method


# virtual methods
.method protected beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V
    .locals 0

    .line 28
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V

    .line 29
    iget-object p2, p0, Lcom/amazon/klo/PauseableThreadPoolExecutor;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 32
    :goto_0
    :try_start_0
    iget-boolean p2, p0, Lcom/amazon/klo/PauseableThreadPoolExecutor;->isPaused:Z

    if-eqz p2, :cond_0

    .line 34
    iget-object p2, p0, Lcom/amazon/klo/PauseableThreadPoolExecutor;->unpaused:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 43
    :cond_0
    :goto_1
    iget-object p1, p0, Lcom/amazon/klo/PauseableThreadPoolExecutor;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 39
    :catch_0
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_2
    return-void

    .line 43
    :goto_3
    iget-object p2, p0, Lcom/amazon/klo/PauseableThreadPoolExecutor;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 44
    throw p1
.end method

.method public pause()V
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/amazon/klo/PauseableThreadPoolExecutor;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v0, 0x1

    .line 52
    :try_start_0
    iput-boolean v0, p0, Lcom/amazon/klo/PauseableThreadPoolExecutor;->isPaused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    iget-object v0, p0, Lcom/amazon/klo/PauseableThreadPoolExecutor;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/amazon/klo/PauseableThreadPoolExecutor;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 57
    throw v0
.end method

.method public resume()V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/amazon/klo/PauseableThreadPoolExecutor;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v0, 0x0

    .line 65
    :try_start_0
    iput-boolean v0, p0, Lcom/amazon/klo/PauseableThreadPoolExecutor;->isPaused:Z

    .line 66
    iget-object v0, p0, Lcom/amazon/klo/PauseableThreadPoolExecutor;->unpaused:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    iget-object v0, p0, Lcom/amazon/klo/PauseableThreadPoolExecutor;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/amazon/klo/PauseableThreadPoolExecutor;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 71
    throw v0
.end method
