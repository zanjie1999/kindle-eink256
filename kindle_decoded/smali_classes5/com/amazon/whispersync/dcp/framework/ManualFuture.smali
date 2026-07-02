.class public Lcom/amazon/whispersync/dcp/framework/ManualFuture;
.super Ljava/lang/Object;
.source "ManualFuture.java"

# interfaces
.implements Ljava/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private mCancelRequested:Z

.field private mCancelReturnValue:Z

.field private mCancelled:Z

.field private mDone:Z

.field private mException:Ljava/lang/Exception;

.field private final mExecutionLatch:Ljava/util/concurrent/CountDownLatch;

.field private final mLock:Ljava/lang/Object;

.field private mResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    .line 14
    iput-object v1, p0, Lcom/amazon/whispersync/dcp/framework/ManualFuture;->mLock:Ljava/lang/Object;

    .line 15
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lcom/amazon/whispersync/dcp/framework/ManualFuture;->mExecutionLatch:Ljava/util/concurrent/CountDownLatch;

    .line 16
    iput-boolean v0, p0, Lcom/amazon/whispersync/dcp/framework/ManualFuture;->mDone:Z

    .line 17
    iput-boolean v0, p0, Lcom/amazon/whispersync/dcp/framework/ManualFuture;->mCancelRequested:Z

    .line 18
    iput-boolean v0, p0, Lcom/amazon/whispersync/dcp/framework/ManualFuture;->mCancelReturnValue:Z

    .line 19
    iput-boolean v0, p0, Lcom/amazon/whispersync/dcp/framework/ManualFuture;->mCancelled:Z

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ManualFuture;->mResult:Ljava/lang/Object;

    .line 21
    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ManualFuture;->mException:Ljava/lang/Exception;

    return-void
.end method

.method private getResult()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ManualFuture;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 81
    :try_start_0
    iget-boolean v1, p0, Lcom/amazon/whispersync/dcp/framework/ManualFuture;->mCancelled:Z

    if-nez v1, :cond_1

    .line 86
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/ManualFuture;->mException:Ljava/lang/Exception;

    if-nez v1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/ManualFuture;->mResult:Ljava/lang/Object;

    monitor-exit v0

    return-object v1

    .line 88
    :cond_0
    new-instance v1, Ljava/util/concurrent/ExecutionException;

    iget-object v2, p0, Lcom/amazon/whispersync/dcp/framework/ManualFuture;->mException:Ljava/lang/Exception;

    invoke-direct {v1, v2}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 83
    :cond_1
    new-instance v1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v1

    :catchall_0
    move-exception v1

    .line 92
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isCompleted()Z
    .locals 1

    .line 54
    iget-boolean v0, p0, Lcom/amazon/whispersync/dcp/framework/ManualFuture;->mDone:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/amazon/whispersync/dcp/framework/ManualFuture;->mCancelRequested:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 2

    .line 26
    iget-object p1, p0, Lcom/amazon/whispersync/dcp/framework/ManualFuture;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 28
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/ManualFuture;->isCompleted()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/amazon/whispersync/dcp/framework/ManualFuture;->mCancelReturnValue:Z

    .line 29
    iput-boolean v1, p0, Lcom/amazon/whispersync/dcp/framework/ManualFuture;->mCancelRequested:Z

    .line 30
    monitor-exit p1

    return v0

    :catchall_0
    move-exception v0

    .line 31
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ManualFuture;->mExecutionLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 62
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/ManualFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ManualFuture;->mExecutionLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 74
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/ManualFuture;->getResult()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 71
    :cond_0
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {p1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw p1
.end method

.method public isCancelRequested()Z
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ManualFuture;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 131
    :try_start_0
    iget-boolean v1, p0, Lcom/amazon/whispersync/dcp/framework/ManualFuture;->mCancelRequested:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 132
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isCancelled()Z
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ManualFuture;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 39
    :try_start_0
    iget-boolean v1, p0, Lcom/amazon/whispersync/dcp/framework/ManualFuture;->mCancelReturnValue:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 40
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isDone()Z
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ManualFuture;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 48
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/ManualFuture;->isCompleted()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 49
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onCancelled()V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ManualFuture;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 121
    :try_start_0
    iput-boolean v1, p0, Lcom/amazon/whispersync/dcp/framework/ManualFuture;->mCancelled:Z

    .line 122
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ManualFuture;->mExecutionLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_0
    move-exception v1

    .line 122
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onCompleted(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ManualFuture;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 99
    :try_start_0
    iput-boolean v1, p0, Lcom/amazon/whispersync/dcp/framework/ManualFuture;->mDone:Z

    .line 100
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/ManualFuture;->mResult:Ljava/lang/Object;

    .line 101
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    iget-object p1, p0, Lcom/amazon/whispersync/dcp/framework/ManualFuture;->mExecutionLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_0
    move-exception p1

    .line 101
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onException(Ljava/lang/Exception;)V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ManualFuture;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 110
    :try_start_0
    iput-boolean v1, p0, Lcom/amazon/whispersync/dcp/framework/ManualFuture;->mDone:Z

    .line 111
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/ManualFuture;->mException:Ljava/lang/Exception;

    .line 112
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    iget-object p1, p0, Lcom/amazon/whispersync/dcp/framework/ManualFuture;->mExecutionLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_0
    move-exception p1

    .line 112
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
