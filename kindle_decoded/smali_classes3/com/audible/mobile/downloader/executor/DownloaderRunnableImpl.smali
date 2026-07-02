.class Lcom/audible/mobile/downloader/executor/DownloaderRunnableImpl;
.super Ljava/lang/Object;
.source "DownloaderRunnableImpl.java"

# interfaces
.implements Lcom/audible/mobile/downloader/executor/DownloaderRunnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Request::",
        "Lcom/audible/mobile/downloader/interfaces/DownloadRequest<",
        "TKey;>;Key::",
        "Lcom/audible/mobile/downloader/interfaces/DownloadRequest$Key;",
        "S::",
        "Lcom/audible/mobile/downloader/interfaces/StatefulDownloadRequest<",
        "TRequest;TKey;>;>",
        "Ljava/lang/Object;",
        "Lcom/audible/mobile/downloader/executor/DownloaderRunnable<",
        "TRequest;TKey;TS;>;"
    }
.end annotation


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;


# instance fields
.field protected currentRequest:Lcom/audible/mobile/downloader/interfaces/StatefulDownloadRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field protected final downloadResultHandler:Lcom/audible/mobile/downloader/executor/DownloadResultHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/audible/mobile/downloader/executor/DownloadResultHandler<",
            "TRequest;TKey;TS;>;"
        }
    .end annotation
.end field

.field protected final transient downloaderFactory:Lcom/audible/mobile/downloader/factory/DownloaderFactory;

.field protected final getNextRequestCallable:Lcom/audible/mobile/downloader/executor/GetNextRequestCallable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/audible/mobile/downloader/executor/GetNextRequestCallable<",
            "TRequest;TKey;TS;>;"
        }
    .end annotation
.end field

.field protected final readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;

    const-class v1, Lcom/audible/mobile/downloader/executor/DownloaderRunnableImpl;

    invoke-direct {v0, v1}, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/audible/mobile/downloader/executor/DownloaderRunnableImpl;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/audible/mobile/downloader/factory/DownloaderFactory;Lcom/audible/mobile/downloader/interfaces/TopologicallySortedSet;Ljava/util/concurrent/locks/ReadWriteLock;Ljava/util/concurrent/locks/Condition;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/mobile/downloader/factory/DownloaderFactory;",
            "Lcom/audible/mobile/downloader/interfaces/TopologicallySortedSet<",
            "TS;>;",
            "Ljava/util/concurrent/locks/ReadWriteLock;",
            "Ljava/util/concurrent/locks/Condition;",
            ")V"
        }
    .end annotation

    .line 46
    new-instance v5, Lcom/audible/mobile/downloader/executor/GetNextRequestCallable;

    invoke-direct {v5, p2, p4}, Lcom/audible/mobile/downloader/executor/GetNextRequestCallable;-><init>(Lcom/audible/mobile/downloader/interfaces/TopologicallySortedSet;Ljava/util/concurrent/locks/Condition;)V

    new-instance v6, Lcom/audible/mobile/downloader/executor/DownloadResultHandler;

    invoke-direct {v6, p2}, Lcom/audible/mobile/downloader/executor/DownloadResultHandler;-><init>(Lcom/audible/mobile/downloader/interfaces/TopologicallySortedSet;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/audible/mobile/downloader/executor/DownloaderRunnableImpl;-><init>(Lcom/audible/mobile/downloader/factory/DownloaderFactory;Lcom/audible/mobile/downloader/interfaces/TopologicallySortedSet;Ljava/util/concurrent/locks/ReadWriteLock;Ljava/util/concurrent/locks/Condition;Lcom/audible/mobile/downloader/executor/GetNextRequestCallable;Lcom/audible/mobile/downloader/executor/DownloadResultHandler;)V

    return-void
.end method

.method public constructor <init>(Lcom/audible/mobile/downloader/factory/DownloaderFactory;Lcom/audible/mobile/downloader/interfaces/TopologicallySortedSet;Ljava/util/concurrent/locks/ReadWriteLock;Ljava/util/concurrent/locks/Condition;Lcom/audible/mobile/downloader/executor/GetNextRequestCallable;Lcom/audible/mobile/downloader/executor/DownloadResultHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/mobile/downloader/factory/DownloaderFactory;",
            "Lcom/audible/mobile/downloader/interfaces/TopologicallySortedSet<",
            "TS;>;",
            "Ljava/util/concurrent/locks/ReadWriteLock;",
            "Ljava/util/concurrent/locks/Condition;",
            "Lcom/audible/mobile/downloader/executor/GetNextRequestCallable;",
            "Lcom/audible/mobile/downloader/executor/DownloadResultHandler<",
            "TRequest;TKey;TS;>;)V"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/audible/mobile/downloader/executor/DownloaderRunnableImpl;->downloaderFactory:Lcom/audible/mobile/downloader/factory/DownloaderFactory;

    .line 51
    iput-object p3, p0, Lcom/audible/mobile/downloader/executor/DownloaderRunnableImpl;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 53
    iput-object p5, p0, Lcom/audible/mobile/downloader/executor/DownloaderRunnableImpl;->getNextRequestCallable:Lcom/audible/mobile/downloader/executor/GetNextRequestCallable;

    .line 54
    iput-object p6, p0, Lcom/audible/mobile/downloader/executor/DownloaderRunnableImpl;->downloadResultHandler:Lcom/audible/mobile/downloader/executor/DownloadResultHandler;

    return-void
.end method


# virtual methods
.method protected acquireRequest()Lcom/audible/mobile/downloader/interfaces/StatefulDownloadRequest;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/audible/mobile/downloader/executor/DownloaderRunnableImpl;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x0

    .line 95
    :try_start_0
    iget-object v1, p0, Lcom/audible/mobile/downloader/executor/DownloaderRunnableImpl;->getNextRequestCallable:Lcom/audible/mobile/downloader/executor/GetNextRequestCallable;

    invoke-virtual {v1}, Lcom/audible/mobile/downloader/executor/GetNextRequestCallable;->call()Lcom/audible/mobile/downloader/interfaces/StatefulDownloadRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/audible/mobile/downloader/executor/DownloaderRunnableImpl;->currentRequest:Lcom/audible/mobile/downloader/interfaces/StatefulDownloadRequest;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    :try_start_1
    sget-object v0, Lcom/audible/mobile/downloader/DownloadStatus;->IN_PROGRESS:Lcom/audible/mobile/downloader/DownloadStatus;

    invoke-interface {v1, v0}, Lcom/audible/mobile/downloader/interfaces/HasDownloadStatus;->setDownloadStatus(Lcom/audible/mobile/downloader/DownloadStatus;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    iget-object v0, p0, Lcom/audible/mobile/downloader/executor/DownloaderRunnableImpl;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 116
    iget-object v0, p0, Lcom/audible/mobile/downloader/executor/DownloaderRunnableImpl;->currentRequest:Lcom/audible/mobile/downloader/interfaces/StatefulDownloadRequest;

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 104
    :try_start_2
    sget-object v2, Lcom/audible/mobile/downloader/executor/DownloaderRunnableImpl;->LOGGER:Lorg/slf4j/Logger;

    const-string v3, "An exception occurred while acquiring next request callable"

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 113
    :goto_0
    iget-object v1, p0, Lcom/audible/mobile/downloader/executor/DownloaderRunnableImpl;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    .line 99
    :catch_1
    :try_start_3
    sget-object v1, Lcom/audible/mobile/downloader/executor/DownloaderRunnableImpl;->LOGGER:Lorg/slf4j/Logger;

    const-string v2, "Interrupted while acquiring next request callable"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 113
    :goto_1
    iget-object v1, p0, Lcom/audible/mobile/downloader/executor/DownloaderRunnableImpl;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 114
    throw v0
.end method

.method public getCurrentRequest()Lcom/audible/mobile/downloader/interfaces/StatefulDownloadRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/audible/mobile/downloader/executor/DownloaderRunnableImpl;->currentRequest:Lcom/audible/mobile/downloader/interfaces/StatefulDownloadRequest;

    return-object v0
.end method

.method protected handleResult(Lcom/audible/mobile/downloader/interfaces/StatefulDownloadRequest;Lcom/audible/mobile/downloader/interfaces/Downloader$Result;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Lcom/audible/mobile/downloader/interfaces/Downloader$Result;",
            ")V"
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/audible/mobile/downloader/executor/DownloaderRunnableImpl;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 142
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    .line 145
    iget-object v0, p0, Lcom/audible/mobile/downloader/executor/DownloaderRunnableImpl;->downloadResultHandler:Lcom/audible/mobile/downloader/executor/DownloadResultHandler;

    invoke-virtual {v0, p2, p1}, Lcom/audible/mobile/downloader/executor/DownloadResultHandler;->handleDownloadResult(Lcom/audible/mobile/downloader/interfaces/Downloader$Result;Lcom/audible/mobile/downloader/interfaces/StatefulDownloadRequest;)V

    const/4 p1, 0x0

    .line 146
    iput-object p1, p0, Lcom/audible/mobile/downloader/executor/DownloaderRunnableImpl;->currentRequest:Lcom/audible/mobile/downloader/interfaces/StatefulDownloadRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    iget-object p1, p0, Lcom/audible/mobile/downloader/executor/DownloaderRunnableImpl;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/audible/mobile/downloader/executor/DownloaderRunnableImpl;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 149
    throw p1
.end method

.method public run()V
    .locals 2

    .line 67
    invoke-virtual {p0}, Lcom/audible/mobile/downloader/executor/DownloaderRunnableImpl;->acquireRequest()Lcom/audible/mobile/downloader/interfaces/StatefulDownloadRequest;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 72
    :cond_0
    invoke-virtual {p0, v0}, Lcom/audible/mobile/downloader/executor/DownloaderRunnableImpl;->startDownload(Lcom/audible/mobile/downloader/interfaces/StatefulDownloadRequest;)Lcom/audible/mobile/downloader/interfaces/Downloader$Result;

    move-result-object v1

    .line 73
    invoke-virtual {p0, v0, v1}, Lcom/audible/mobile/downloader/executor/DownloaderRunnableImpl;->handleResult(Lcom/audible/mobile/downloader/interfaces/StatefulDownloadRequest;Lcom/audible/mobile/downloader/interfaces/Downloader$Result;)V

    return-void
.end method

.method protected startDownload(Lcom/audible/mobile/downloader/interfaces/StatefulDownloadRequest;)Lcom/audible/mobile/downloader/interfaces/Downloader$Result;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)",
            "Lcom/audible/mobile/downloader/interfaces/Downloader$Result;"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/audible/mobile/downloader/executor/DownloaderRunnableImpl;->downloaderFactory:Lcom/audible/mobile/downloader/factory/DownloaderFactory;

    invoke-interface {p1}, Lcom/audible/mobile/downloader/interfaces/DownloadRequest$Pair;->getRequest()Lcom/audible/mobile/downloader/interfaces/DownloadRequest;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/mobile/framework/Factory1;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/mobile/downloader/interfaces/Downloader;

    .line 125
    invoke-interface {p1}, Lcom/audible/mobile/downloader/interfaces/DownloadRequest$Pair;->getRequest()Lcom/audible/mobile/downloader/interfaces/DownloadRequest;

    move-result-object v1

    invoke-interface {v1}, Lcom/audible/mobile/downloader/interfaces/DownloadRequest;->getRetryPolicy()Lcom/audible/mobile/downloader/policy/RetryPolicy;

    move-result-object v1

    invoke-interface {v1}, Lcom/audible/mobile/downloader/policy/RetryPolicy;->onStart()V

    .line 128
    :try_start_0
    invoke-interface {p1}, Lcom/audible/mobile/downloader/interfaces/DownloadRequest$Pair;->getRequest()Lcom/audible/mobile/downloader/interfaces/DownloadRequest;

    move-result-object v1

    invoke-interface {v1}, Lcom/audible/mobile/downloader/interfaces/DownloadRequest;->getCommand()Lcom/audible/mobile/downloader/interfaces/DownloadCommand;

    move-result-object v1

    invoke-interface {p1}, Lcom/audible/mobile/downloader/interfaces/DownloadRequest$Pair;->getRequest()Lcom/audible/mobile/downloader/interfaces/DownloadRequest;

    move-result-object v2

    invoke-interface {v2}, Lcom/audible/mobile/downloader/interfaces/DownloadRequest;->getHandler()Lcom/audible/mobile/downloader/interfaces/DownloadHandler;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/audible/mobile/downloader/interfaces/Downloader;->download(Lcom/audible/mobile/downloader/interfaces/DownloadCommand;Lcom/audible/mobile/downloader/interfaces/DownloadHandler;)Lcom/audible/mobile/downloader/interfaces/Downloader$Result;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception v0

    .line 130
    sget-object v1, Lcom/audible/mobile/downloader/executor/DownloaderRunnableImpl;->LOGGER:Lorg/slf4j/Logger;

    const-string v2, "An exception occured while downloading {}"

    invoke-interface {v1, v2, p1, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 131
    sget-object p1, Lcom/audible/mobile/downloader/interfaces/Downloader$Result;->FATAL_ERROR:Lcom/audible/mobile/downloader/interfaces/Downloader$Result;

    return-object p1
.end method
