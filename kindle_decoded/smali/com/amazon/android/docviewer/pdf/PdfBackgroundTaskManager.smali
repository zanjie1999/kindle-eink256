.class public Lcom/amazon/android/docviewer/pdf/PdfBackgroundTaskManager;
.super Ljava/lang/Object;
.source "PdfBackgroundTaskManager.java"


# static fields
.field private static final NUM_BACKGROUND_TASKS:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static m_service:Ljava/util/concurrent/ExecutorService;

.field private static final queuedTasks:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/amazon/android/docviewer/pdf/PdfBackgroundTask<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const-class v0, Lcom/amazon/android/docviewer/pdf/PdfBackgroundTaskManager;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/android/docviewer/pdf/PdfBackgroundTaskManager;->TAG:Ljava/lang/String;

    .line 23
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/amazon/android/docviewer/pdf/PdfBackgroundTaskManager;->queuedTasks:Ljava/util/Queue;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-direct {p0}, Lcom/amazon/android/docviewer/pdf/PdfBackgroundTaskManager;->createService()V

    return-void
.end method

.method private createService()V
    .locals 9

    .line 79
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v7, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;

    invoke-direct {v7}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0x3c

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v8, Lcom/amazon/android/docviewer/pdf/PdfBackgroundTaskManager;->m_service:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method declared-synchronized newTask(Ljava/util/concurrent/Callable;)Lcom/amazon/android/docviewer/pdf/PdfBackgroundTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)",
            "Lcom/amazon/android/docviewer/pdf/PdfBackgroundTask<",
            "TV;>;"
        }
    .end annotation

    monitor-enter p0

    .line 35
    :try_start_0
    new-instance v0, Lcom/amazon/android/docviewer/pdf/PdfBackgroundTask;

    invoke-direct {v0, p1, p0}, Lcom/amazon/android/docviewer/pdf/PdfBackgroundTask;-><init>(Ljava/util/concurrent/Callable;Lcom/amazon/android/docviewer/pdf/PdfBackgroundTaskManager;)V

    .line 36
    sget-object p1, Lcom/amazon/android/docviewer/pdf/PdfBackgroundTaskManager;->queuedTasks:Ljava/util/Queue;

    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method runImmediately(Lcom/amazon/android/docviewer/pdf/PdfBackgroundTask;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/android/docviewer/pdf/PdfBackgroundTask<",
            "TV;>;)V"
        }
    .end annotation

    .line 70
    monitor-enter p1

    .line 71
    :try_start_0
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/pdf/PdfBackgroundTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/pdf/PdfBackgroundTask;->getFutureResult()Ljava/util/concurrent/Future;

    move-result-object v0

    if-nez v0, :cond_0

    .line 72
    sget-object v0, Lcom/amazon/android/docviewer/pdf/PdfBackgroundTaskManager;->m_service:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/android/docviewer/pdf/PdfBackgroundTask;->setFutureResult(Ljava/util/concurrent/Future;)V

    .line 74
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized runSubmittedBackgroundTasks()V
    .locals 1

    monitor-enter p0

    .line 59
    :try_start_0
    sget-object v0, Lcom/amazon/android/docviewer/pdf/PdfBackgroundTaskManager;->queuedTasks:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 60
    monitor-exit p0

    return-void

    .line 62
    :cond_0
    :goto_0
    :try_start_1
    sget-object v0, Lcom/amazon/android/docviewer/pdf/PdfBackgroundTaskManager;->queuedTasks:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 64
    sget-object v0, Lcom/amazon/android/docviewer/pdf/PdfBackgroundTaskManager;->queuedTasks:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/docviewer/pdf/PdfBackgroundTask;

    .line 65
    invoke-virtual {p0, v0}, Lcom/amazon/android/docviewer/pdf/PdfBackgroundTaskManager;->runImmediately(Lcom/amazon/android/docviewer/pdf/PdfBackgroundTask;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 67
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized shutdownNow()V
    .locals 4

    monitor-enter p0

    .line 45
    :try_start_0
    sget-object v0, Lcom/amazon/android/docviewer/pdf/PdfBackgroundTaskManager;->m_service:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    :try_start_1
    sget-object v0, Lcom/amazon/android/docviewer/pdf/PdfBackgroundTaskManager;->m_service:Ljava/util/concurrent/ExecutorService;

    const-wide/16 v1, 0x32

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 49
    :catch_0
    :try_start_2
    sget-object v0, Lcom/amazon/android/docviewer/pdf/PdfBackgroundTaskManager;->TAG:Ljava/lang/String;

    const-string v1, "Caught interrupted exception waiting for tasks to terminate"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 52
    :goto_0
    sget-object v0, Lcom/amazon/android/docviewer/pdf/PdfBackgroundTaskManager;->m_service:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 53
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
