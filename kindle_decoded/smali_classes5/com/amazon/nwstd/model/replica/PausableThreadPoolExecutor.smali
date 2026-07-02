.class public Lcom/amazon/nwstd/model/replica/PausableThreadPoolExecutor;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "PausableThreadPoolExecutor.java"


# instance fields
.field private isPaused:Z

.field private mAfterExecuteRunnable:Ljava/lang/Runnable;

.field private pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private unpaused:Ljava/util/concurrent/locks/Condition;


# direct methods
.method public constructor <init>(ILjava/util/concurrent/ThreadFactory;)V
    .locals 8

    .line 22
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-wide/16 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 34
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lcom/amazon/nwstd/model/replica/PausableThreadPoolExecutor;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 35
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/nwstd/model/replica/PausableThreadPoolExecutor;->unpaused:Ljava/util/concurrent/locks/Condition;

    return-void
.end method

.method private wakeUpCondition()V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/PausableThreadPoolExecutor;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/PausableThreadPoolExecutor;->unpaused:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/PausableThreadPoolExecutor;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/amazon/nwstd/model/replica/PausableThreadPoolExecutor;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 99
    throw v0
.end method


# virtual methods
.method protected afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 0

    .line 57
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    .line 59
    iget-object p1, p0, Lcom/amazon/nwstd/model/replica/PausableThreadPoolExecutor;->mAfterExecuteRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 60
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method protected beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V
    .locals 0

    .line 38
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V

    .line 40
    iget-object p2, p0, Lcom/amazon/nwstd/model/replica/PausableThreadPoolExecutor;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 42
    :goto_0
    :try_start_0
    iget-boolean p2, p0, Lcom/amazon/nwstd/model/replica/PausableThreadPoolExecutor;->isPaused:Z

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->isTerminating()Z

    move-result p2

    if-nez p2, :cond_0

    .line 43
    iget-object p2, p0, Lcom/amazon/nwstd/model/replica/PausableThreadPoolExecutor;->unpaused:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Condition;->await()V

    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->isTerminating()Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_1

    .line 47
    :cond_1
    new-instance p2, Ljava/lang/InterruptedException;

    invoke-direct {p2}, Ljava/lang/InterruptedException;-><init>()V

    throw p2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 49
    :catch_0
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    :goto_1
    iget-object p1, p0, Lcom/amazon/nwstd/model/replica/PausableThreadPoolExecutor;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :goto_2
    iget-object p2, p0, Lcom/amazon/nwstd/model/replica/PausableThreadPoolExecutor;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 52
    throw p1
.end method

.method public pause()V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/PausableThreadPoolExecutor;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v0, 0x1

    .line 67
    :try_start_0
    iput-boolean v0, p0, Lcom/amazon/nwstd/model/replica/PausableThreadPoolExecutor;->isPaused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/PausableThreadPoolExecutor;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/amazon/nwstd/model/replica/PausableThreadPoolExecutor;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 70
    throw v0
.end method

.method public resume()V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/PausableThreadPoolExecutor;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v0, 0x0

    .line 76
    :try_start_0
    iput-boolean v0, p0, Lcom/amazon/nwstd/model/replica/PausableThreadPoolExecutor;->isPaused:Z

    .line 77
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/PausableThreadPoolExecutor;->unpaused:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    iget-object v0, p0, Lcom/amazon/nwstd/model/replica/PausableThreadPoolExecutor;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/amazon/nwstd/model/replica/PausableThreadPoolExecutor;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 80
    throw v0
.end method

.method public shutdown()V
    .locals 0

    .line 85
    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 87
    invoke-direct {p0}, Lcom/amazon/nwstd/model/replica/PausableThreadPoolExecutor;->wakeUpCondition()V

    return-void
.end method
