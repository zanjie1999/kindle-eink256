.class public Lcom/amazon/kindle/krx/application/AsyncTaskExecutor;
.super Ljava/lang/Object;
.source "AsyncTaskExecutor.java"

# interfaces
.implements Lcom/amazon/kindle/krx/application/IAsyncTaskExecutor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/krx/application/AsyncTaskExecutor$ExecutorThreadFactory;,
        Lcom/amazon/kindle/krx/application/AsyncTaskExecutor$ComparableFutureTask;
    }
.end annotation


# static fields
.field private static final MAX_POOL_SIZE:I = 0x1

.field private static final MIN_POOL_SIZE:I = 0x1


# instance fields
.field private criticalExecutor:Ljava/util/concurrent/ExecutorService;

.field private genericExecutor:Ljava/util/concurrent/ExecutorService;

.field private handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 11

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/amazon/kindle/krx/application/AsyncTaskExecutor$ExecutorThreadFactory;

    const-string v1, "critical-pool"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/amazon/kindle/krx/application/AsyncTaskExecutor$ExecutorThreadFactory;-><init>(Ljava/lang/String;I)V

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/krx/application/AsyncTaskExecutor;->criticalExecutor:Ljava/util/concurrent/ExecutorService;

    .line 46
    new-instance v0, Lcom/amazon/kindle/krx/application/AsyncTaskExecutor$1;

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v9, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v9}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    new-instance v10, Lcom/amazon/kindle/krx/application/AsyncTaskExecutor$ExecutorThreadFactory;

    const-string v2, "async-pool"

    invoke-direct {v10, v2, v1}, Lcom/amazon/kindle/krx/application/AsyncTaskExecutor$ExecutorThreadFactory;-><init>(Ljava/lang/String;I)V

    const/4 v4, 0x1

    const/4 v5, 0x1

    const-wide v6, 0x7fffffffffffffffL

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v10}, Lcom/amazon/kindle/krx/application/AsyncTaskExecutor$1;-><init>(Lcom/amazon/kindle/krx/application/AsyncTaskExecutor;IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/amazon/kindle/krx/application/AsyncTaskExecutor;->genericExecutor:Ljava/util/concurrent/ExecutorService;

    .line 59
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/amazon/kindle/krx/application/AsyncTaskExecutor;->handler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public postOnUIThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/amazon/kindle/krx/application/AsyncTaskExecutor;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public postOnUIThreadDelayed(Ljava/lang/Runnable;I)V
    .locals 3

    if-lez p2, :cond_0

    .line 118
    iget-object v0, p0, Lcom/amazon/kindle/krx/application/AsyncTaskExecutor;->handler:Landroid/os/Handler;

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 122
    :cond_0
    iget-object p2, p0, Lcom/amazon/kindle/krx/application/AsyncTaskExecutor;->handler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public submit(Lcom/amazon/kindle/krx/application/IAsyncTask;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/kindle/krx/application/IAsyncTask<",
            "TT;>;)",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    .line 100
    invoke-interface {p1}, Lcom/amazon/kindle/krx/application/IAsyncTask;->getPriority()Lcom/amazon/kindle/krx/application/IAsyncTask$TaskPriority;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/application/IAsyncTask$TaskPriority;->CRITICAL:Lcom/amazon/kindle/krx/application/IAsyncTask$TaskPriority;

    if-ne v0, v1, :cond_0

    .line 102
    iget-object v0, p0, Lcom/amazon/kindle/krx/application/AsyncTaskExecutor;->criticalExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/application/AsyncTaskExecutor;->genericExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method
