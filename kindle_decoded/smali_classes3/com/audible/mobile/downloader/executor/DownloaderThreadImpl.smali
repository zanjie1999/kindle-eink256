.class Lcom/audible/mobile/downloader/executor/DownloaderThreadImpl;
.super Ljava/lang/Thread;
.source "DownloaderThreadImpl.java"

# interfaces
.implements Lcom/audible/mobile/downloader/executor/DownloaderThread;


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
        "Ljava/lang/Thread;",
        "Lcom/audible/mobile/downloader/executor/DownloaderThread<",
        "TRequest;TKey;TS;>;"
    }
.end annotation


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;

.field private static final THREAD_ID_COUNT:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field protected downloaderRunnable:Lcom/audible/mobile/downloader/executor/DownloaderRunnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/audible/mobile/downloader/executor/DownloaderRunnable<",
            "TRequest;TKey;TS;>;"
        }
    .end annotation
.end field

.field private volatile isShutdown:Z

.field protected final readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    new-instance v0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;

    const-class v1, Lcom/audible/mobile/downloader/executor/DownloaderThreadImpl;

    invoke-direct {v0, v1}, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/audible/mobile/downloader/executor/DownloaderThreadImpl;->LOGGER:Lorg/slf4j/Logger;

    .line 29
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/audible/mobile/downloader/executor/DownloaderThreadImpl;->THREAD_ID_COUNT:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/locks/ReadWriteLock;Lcom/audible/mobile/downloader/executor/DownloaderRunnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/locks/ReadWriteLock;",
            "Lcom/audible/mobile/downloader/executor/DownloaderRunnable<",
            "TRequest;TKey;TS;>;)V"
        }
    .end annotation

    .line 67
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v0, Lcom/audible/mobile/downloader/executor/DownloaderThreadImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/audible/mobile/downloader/executor/DownloaderThreadImpl;->THREAD_ID_COUNT:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 34
    iput-boolean p1, p0, Lcom/audible/mobile/downloader/executor/DownloaderThreadImpl;->isShutdown:Z

    .line 68
    iput-object p2, p0, Lcom/audible/mobile/downloader/executor/DownloaderThreadImpl;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 71
    iput-object p3, p0, Lcom/audible/mobile/downloader/executor/DownloaderThreadImpl;->downloaderRunnable:Lcom/audible/mobile/downloader/executor/DownloaderRunnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/locks/ReadWriteLock;Ljava/util/concurrent/locks/Condition;Lcom/audible/mobile/downloader/factory/DownloaderFactory;Lcom/audible/mobile/downloader/interfaces/TopologicallySortedSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/locks/ReadWriteLock;",
            "Ljava/util/concurrent/locks/Condition;",
            "Lcom/audible/mobile/downloader/factory/DownloaderFactory;",
            "Lcom/audible/mobile/downloader/interfaces/TopologicallySortedSet<",
            "TS;>;)V"
        }
    .end annotation

    .line 55
    new-instance v0, Lcom/audible/mobile/downloader/executor/DownloaderRunnableImpl;

    invoke-direct {v0, p4, p5, p2, p3}, Lcom/audible/mobile/downloader/executor/DownloaderRunnableImpl;-><init>(Lcom/audible/mobile/downloader/factory/DownloaderFactory;Lcom/audible/mobile/downloader/interfaces/TopologicallySortedSet;Ljava/util/concurrent/locks/ReadWriteLock;Ljava/util/concurrent/locks/Condition;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/audible/mobile/downloader/executor/DownloaderThreadImpl;-><init>(Landroid/content/Context;Ljava/util/concurrent/locks/ReadWriteLock;Lcom/audible/mobile/downloader/executor/DownloaderRunnable;)V

    return-void
.end method


# virtual methods
.method public getCurrentRequest()Lcom/audible/mobile/downloader/interfaces/StatefulDownloadRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/audible/mobile/downloader/executor/DownloaderThreadImpl;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/audible/mobile/downloader/executor/DownloaderThreadImpl;->downloaderRunnable:Lcom/audible/mobile/downloader/executor/DownloaderRunnable;

    invoke-interface {v0}, Lcom/audible/mobile/downloader/executor/DownloaderRunnable;->getCurrentRequest()Lcom/audible/mobile/downloader/interfaces/StatefulDownloadRequest;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    iget-object v1, p0, Lcom/audible/mobile/downloader/executor/DownloaderThreadImpl;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/audible/mobile/downloader/executor/DownloaderThreadImpl;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 115
    throw v0
.end method

.method public interruptRequestIfPresent(Lcom/audible/mobile/downloader/interfaces/DownloadRequest$Key;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKey;)Z"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/audible/mobile/downloader/executor/DownloaderThreadImpl;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 123
    :try_start_0
    invoke-virtual {p0}, Lcom/audible/mobile/downloader/executor/DownloaderThreadImpl;->getCurrentRequest()Lcom/audible/mobile/downloader/interfaces/StatefulDownloadRequest;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 136
    :goto_0
    iget-object p1, p0, Lcom/audible/mobile/downloader/executor/DownloaderThreadImpl;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v1

    .line 128
    :cond_0
    :try_start_1
    invoke-interface {v0}, Lcom/audible/mobile/downloader/interfaces/DownloadRequest$Pair;->getRequest()Lcom/audible/mobile/downloader/interfaces/DownloadRequest;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/mobile/downloader/interfaces/DownloadRequest;->getKey()Lcom/audible/mobile/downloader/interfaces/DownloadRequest$Key;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 132
    :cond_1
    invoke-virtual {p0}, Lcom/audible/mobile/downloader/executor/DownloaderThreadImpl;->performInterrupt()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    .line 136
    iget-object v0, p0, Lcom/audible/mobile/downloader/executor/DownloaderThreadImpl;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/audible/mobile/downloader/executor/DownloaderThreadImpl;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 137
    throw p1
.end method

.method protected performInterrupt()V
    .locals 0

    .line 146
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

.method public run()V
    .locals 1

    .line 152
    :goto_0
    iget-boolean v0, p0, Lcom/audible/mobile/downloader/executor/DownloaderThreadImpl;->isShutdown:Z

    if-nez v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/audible/mobile/downloader/executor/DownloaderThreadImpl;->downloaderRunnable:Lcom/audible/mobile/downloader/executor/DownloaderRunnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public shutdown()V
    .locals 1

    const/4 v0, 0x1

    .line 77
    iput-boolean v0, p0, Lcom/audible/mobile/downloader/executor/DownloaderThreadImpl;->isShutdown:Z

    return-void
.end method

.method public shutdownNow()V
    .locals 0

    .line 83
    invoke-virtual {p0}, Lcom/audible/mobile/downloader/executor/DownloaderThreadImpl;->shutdown()V

    .line 84
    invoke-virtual {p0}, Lcom/audible/mobile/downloader/executor/DownloaderThreadImpl;->performInterrupt()V

    return-void
.end method
