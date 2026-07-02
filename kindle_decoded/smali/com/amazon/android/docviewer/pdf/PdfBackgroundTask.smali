.class Lcom/amazon/android/docviewer/pdf/PdfBackgroundTask;
.super Ljava/lang/Object;
.source "PdfBackgroundTask.java"

# interfaces
.implements Ljava/util/concurrent/Callable;
.implements Ljava/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "TV;>;",
        "Ljava/util/concurrent/Future<",
        "TV;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final callable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TV;>;"
        }
    .end annotation
.end field

.field private final callableClassName:Ljava/lang/String;

.field private cancelled:Z

.field private futureResult:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "TV;>;"
        }
    .end annotation
.end field

.field private final taskManager:Lcom/amazon/android/docviewer/pdf/PdfBackgroundTaskManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const-class v0, Lcom/amazon/android/docviewer/pdf/PdfBackgroundTask;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/android/docviewer/pdf/PdfBackgroundTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Callable;Lcom/amazon/android/docviewer/pdf/PdfBackgroundTaskManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;",
            "Lcom/amazon/android/docviewer/pdf/PdfBackgroundTaskManager;",
            ")V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/pdf/PdfBackgroundTask;->cancelled:Z

    .line 24
    iput-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfBackgroundTask;->callable:Ljava/util/concurrent/Callable;

    .line 25
    iput-object p2, p0, Lcom/amazon/android/docviewer/pdf/PdfBackgroundTask;->taskManager:Lcom/amazon/android/docviewer/pdf/PdfBackgroundTaskManager;

    .line 26
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfBackgroundTask;->callableClassName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 32
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting task: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfBackgroundTask;->callableClassName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfBackgroundTask;->callable:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finishing task: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/android/docviewer/pdf/PdfBackgroundTask;->callableClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 37
    sget-object v1, Lcom/amazon/android/docviewer/pdf/PdfBackgroundTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caught exception attempting to run task "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized cancel(Z)Z
    .locals 2

    monitor-enter p0

    .line 53
    :try_start_0
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/pdf/PdfBackgroundTask;->cancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 54
    monitor-exit p0

    return p1

    :cond_0
    const/4 v0, 0x1

    .line 56
    :try_start_1
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/pdf/PdfBackgroundTask;->cancelled:Z

    .line 58
    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfBackgroundTask;->futureResult:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_1

    .line 59
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfBackgroundTask;->futureResult:Ljava/util/concurrent/Future;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    .line 61
    :cond_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    monitor-enter p0

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfBackgroundTask;->futureResult:Ljava/util/concurrent/Future;

    if-nez v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfBackgroundTask;->taskManager:Lcom/amazon/android/docviewer/pdf/PdfBackgroundTaskManager;

    invoke-virtual {v0, p0}, Lcom/amazon/android/docviewer/pdf/PdfBackgroundTaskManager;->runImmediately(Lcom/amazon/android/docviewer/pdf/PdfBackgroundTask;)V

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfBackgroundTask;->futureResult:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    monitor-enter p0

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfBackgroundTask;->futureResult:Ljava/util/concurrent/Future;

    if-nez v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfBackgroundTask;->taskManager:Lcom/amazon/android/docviewer/pdf/PdfBackgroundTaskManager;

    invoke-virtual {v0, p0}, Lcom/amazon/android/docviewer/pdf/PdfBackgroundTaskManager;->runImmediately(Lcom/amazon/android/docviewer/pdf/PdfBackgroundTask;)V

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfBackgroundTask;->futureResult:Ljava/util/concurrent/Future;

    invoke-interface {v0, p1, p2, p3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized getFutureResult()Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "TV;>;"
        }
    .end annotation

    monitor-enter p0

    .line 118
    :try_start_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfBackgroundTask;->futureResult:Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNoBlocking()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    monitor-enter p0

    .line 114
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfBackgroundTask;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfBackgroundTask;->getNoThrow()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getNoThrow()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 98
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfBackgroundTask;->get()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 103
    sget-object v1, Lcom/amazon/android/docviewer/pdf/PdfBackgroundTask;->TAG:Ljava/lang/String;

    const-string v2, "execution error"

    invoke-static {v1, v2, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 100
    sget-object v1, Lcom/amazon/android/docviewer/pdf/PdfBackgroundTask;->TAG:Ljava/lang/String;

    const-string v2, "interrupted"

    invoke-static {v1, v2, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 101
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized isCancelled()Z
    .locals 1

    monitor-enter p0

    .line 83
    :try_start_0
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/pdf/PdfBackgroundTask;->cancelled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfBackgroundTask;->futureResult:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfBackgroundTask;->futureResult:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isDone()Z
    .locals 1

    monitor-enter p0

    .line 88
    :try_start_0
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/pdf/PdfBackgroundTask;->cancelled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfBackgroundTask;->futureResult:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfBackgroundTask;->futureResult:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setFutureResult(Ljava/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "TV;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 122
    :try_start_0
    iput-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfBackgroundTask;->futureResult:Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
