.class abstract Lcom/audible/mobile/downloader/AbstractDownloadController;
.super Ljava/lang/Object;
.source "AbstractDownloadController.java"

# interfaces
.implements Lcom/audible/mobile/downloader/interfaces/DownloadController;


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
        "Lcom/audible/mobile/downloader/interfaces/DownloadController<",
        "TRequest;TKey;>;"
    }
.end annotation


# instance fields
.field private final downloaderService:Lcom/audible/mobile/downloader/executor/ThreadedDownloaderService;

.field protected final transient logger:Lorg/slf4j/Logger;

.field protected final queue:Lcom/audible/mobile/downloader/interfaces/TopologicallySortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/audible/mobile/downloader/interfaces/TopologicallySortedSet<",
            "TS;>;"
        }
    .end annotation
.end field

.field protected final readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

.field protected final writeCondition:Ljava/util/concurrent/locks/Condition;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/audible/mobile/downloader/factory/DownloaderFactory;)V
    .locals 1

    .line 51
    new-instance v0, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet;

    invoke-direct {v0}, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/audible/mobile/downloader/AbstractDownloadController;-><init>(Landroid/content/Context;Lcom/audible/mobile/downloader/factory/DownloaderFactory;Lcom/audible/mobile/downloader/interfaces/TopologicallySortedSet;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/audible/mobile/downloader/factory/DownloaderFactory;Lcom/audible/mobile/downloader/interfaces/TopologicallySortedSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/audible/mobile/downloader/factory/DownloaderFactory;",
            "Lcom/audible/mobile/downloader/interfaces/TopologicallySortedSet<",
            "TS;>;)V"
        }
    .end annotation

    .line 56
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/audible/mobile/downloader/AbstractDownloadController;-><init>(Landroid/content/Context;Lcom/audible/mobile/downloader/factory/DownloaderFactory;Lcom/audible/mobile/downloader/interfaces/TopologicallySortedSet;Ljava/util/concurrent/locks/ReadWriteLock;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/audible/mobile/downloader/factory/DownloaderFactory;Lcom/audible/mobile/downloader/interfaces/TopologicallySortedSet;Ljava/util/concurrent/locks/ReadWriteLock;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/audible/mobile/downloader/factory/DownloaderFactory;",
            "Lcom/audible/mobile/downloader/interfaces/TopologicallySortedSet<",
            "TS;>;",
            "Ljava/util/concurrent/locks/ReadWriteLock;",
            ")V"
        }
    .end annotation

    .line 62
    invoke-interface {p4}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/audible/mobile/downloader/AbstractDownloadController;-><init>(Landroid/content/Context;Lcom/audible/mobile/downloader/factory/DownloaderFactory;Lcom/audible/mobile/downloader/interfaces/TopologicallySortedSet;Ljava/util/concurrent/locks/ReadWriteLock;Ljava/util/concurrent/locks/Condition;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/audible/mobile/downloader/factory/DownloaderFactory;Lcom/audible/mobile/downloader/interfaces/TopologicallySortedSet;Ljava/util/concurrent/locks/ReadWriteLock;Ljava/util/concurrent/locks/Condition;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/audible/mobile/downloader/factory/DownloaderFactory;",
            "Lcom/audible/mobile/downloader/interfaces/TopologicallySortedSet<",
            "TS;>;",
            "Ljava/util/concurrent/locks/ReadWriteLock;",
            "Ljava/util/concurrent/locks/Condition;",
            ")V"
        }
    .end annotation

    .line 68
    new-instance v6, Lcom/audible/mobile/downloader/executor/ThreadedDownloaderServiceImpl;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p4

    move-object v3, p5

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/audible/mobile/downloader/executor/ThreadedDownloaderServiceImpl;-><init>(Landroid/content/Context;Ljava/util/concurrent/locks/ReadWriteLock;Ljava/util/concurrent/locks/Condition;Lcom/audible/mobile/downloader/factory/DownloaderFactory;Lcom/audible/mobile/downloader/interfaces/TopologicallySortedSet;)V

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/audible/mobile/downloader/AbstractDownloadController;-><init>(Lcom/audible/mobile/downloader/factory/DownloaderFactory;Lcom/audible/mobile/downloader/interfaces/TopologicallySortedSet;Ljava/util/concurrent/locks/ReadWriteLock;Ljava/util/concurrent/locks/Condition;Lcom/audible/mobile/downloader/executor/ThreadedDownloaderService;)V

    return-void
.end method

.method protected constructor <init>(Lcom/audible/mobile/downloader/factory/DownloaderFactory;Lcom/audible/mobile/downloader/interfaces/TopologicallySortedSet;Ljava/util/concurrent/locks/ReadWriteLock;Ljava/util/concurrent/locks/Condition;Lcom/audible/mobile/downloader/executor/ThreadedDownloaderService;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/mobile/downloader/factory/DownloaderFactory;",
            "Lcom/audible/mobile/downloader/interfaces/TopologicallySortedSet<",
            "TS;>;",
            "Ljava/util/concurrent/locks/ReadWriteLock;",
            "Ljava/util/concurrent/locks/Condition;",
            "Lcom/audible/mobile/downloader/executor/ThreadedDownloaderService;",
            ")V"
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance p1, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;-><init>(Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/audible/mobile/downloader/AbstractDownloadController;->logger:Lorg/slf4j/Logger;

    .line 76
    iput-object p2, p0, Lcom/audible/mobile/downloader/AbstractDownloadController;->queue:Lcom/audible/mobile/downloader/interfaces/TopologicallySortedSet;

    .line 77
    iput-object p5, p0, Lcom/audible/mobile/downloader/AbstractDownloadController;->downloaderService:Lcom/audible/mobile/downloader/executor/ThreadedDownloaderService;

    .line 78
    iput-object p3, p0, Lcom/audible/mobile/downloader/AbstractDownloadController;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 79
    iput-object p4, p0, Lcom/audible/mobile/downloader/AbstractDownloadController;->writeCondition:Ljava/util/concurrent/locks/Condition;

    return-void
.end method

.method private addStatefulRequest(Lcom/audible/mobile/downloader/interfaces/TopologicallySortedSet;Lcom/audible/mobile/downloader/interfaces/DownloadRequest;)Lcom/audible/mobile/downloader/interfaces/StatefulDownloadRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/mobile/downloader/interfaces/TopologicallySortedSet<",
            "TS;>;TRequest;)TS;"
        }
    .end annotation

    .line 164
    new-instance v0, Lcom/audible/mobile/downloader/BaseStatefulRequest;

    invoke-direct {v0, p2}, Lcom/audible/mobile/downloader/BaseStatefulRequest;-><init>(Lcom/audible/mobile/downloader/interfaces/DownloadRequest;)V

    .line 165
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private removeRequest(Lcom/audible/mobile/downloader/interfaces/StatefulDownloadRequest;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .line 245
    iget-object v0, p0, Lcom/audible/mobile/downloader/AbstractDownloadController;->logger:Lorg/slf4j/Logger;

    invoke-interface {p1}, Lcom/audible/mobile/downloader/interfaces/DownloadRequest$Pair;->getRequest()Lcom/audible/mobile/downloader/interfaces/DownloadRequest;

    move-result-object v1

    const-string v2, "removing {} from queue"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 249
    iget-object v0, p0, Lcom/audible/mobile/downloader/AbstractDownloadController;->queue:Lcom/audible/mobile/downloader/interfaces/TopologicallySortedSet;

    invoke-interface {v0, p1}, Lcom/audible/mobile/downloader/interfaces/TopologicallySortedSet;->getDependencies(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    .line 250
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/audible/mobile/downloader/interfaces/StatefulDownloadRequest;

    .line 251
    iget-object v2, p0, Lcom/audible/mobile/downloader/AbstractDownloadController;->logger:Lorg/slf4j/Logger;

    const-string v3, "removing dependency {}"

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 252
    invoke-interface {v1}, Lcom/audible/mobile/downloader/interfaces/DownloadRequest$Pair;->getKey()Lcom/audible/mobile/downloader/interfaces/DownloadRequest$Key;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/audible/mobile/downloader/AbstractDownloadController;->removeRequest(Lcom/audible/mobile/downloader/interfaces/DownloadRequest$Key;)V

    goto :goto_0

    .line 256
    :cond_0
    invoke-interface {p1}, Lcom/audible/mobile/downloader/interfaces/DownloadRequest$Pair;->getRequest()Lcom/audible/mobile/downloader/interfaces/DownloadRequest;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/mobile/downloader/interfaces/DownloadRequest;->getHandler()Lcom/audible/mobile/downloader/interfaces/DownloadHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/mobile/downloader/interfaces/DownloadHandler;->onCancelled()V

    .line 259
    invoke-interface {p1}, Lcom/audible/mobile/downloader/interfaces/HasDownloadStatus;->getDownloadStatus()Lcom/audible/mobile/downloader/DownloadStatus;

    move-result-object v0

    sget-object v1, Lcom/audible/mobile/downloader/DownloadStatus;->IN_PROGRESS:Lcom/audible/mobile/downloader/DownloadStatus;

    if-ne v0, v1, :cond_1

    .line 260
    invoke-interface {p1}, Lcom/audible/mobile/downloader/interfaces/DownloadRequest$Pair;->getKey()Lcom/audible/mobile/downloader/interfaces/DownloadRequest$Key;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/audible/mobile/downloader/AbstractDownloadController;->interruptIfDownloading(Lcom/audible/mobile/downloader/interfaces/DownloadRequest$Key;)Z

    goto :goto_1

    .line 263
    :cond_1
    iget-object v0, p0, Lcom/audible/mobile/downloader/AbstractDownloadController;->queue:Lcom/audible/mobile/downloader/interfaces/TopologicallySortedSet;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 264
    invoke-interface {p1}, Lcom/audible/mobile/downloader/interfaces/DownloadRequest$Pair;->getRequest()Lcom/audible/mobile/downloader/interfaces/DownloadRequest;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/mobile/downloader/interfaces/DownloadRequest;->getHandler()Lcom/audible/mobile/downloader/interfaces/DownloadHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/mobile/downloader/interfaces/DownloadHandler;->onRemoved()V

    .line 267
    :goto_1
    sget-object v0, Lcom/audible/mobile/downloader/DownloadStatus;->CANCELLED:Lcom/audible/mobile/downloader/DownloadStatus;

    invoke-interface {p1, v0}, Lcom/audible/mobile/downloader/interfaces/HasDownloadStatus;->setDownloadStatus(Lcom/audible/mobile/downloader/DownloadStatus;)V

    return-void
.end method


# virtual methods
.method public addRequest(Lcom/audible/mobile/downloader/interfaces/DownloadRequest;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRequest;)V"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/audible/mobile/downloader/AbstractDownloadController;->downloaderService:Lcom/audible/mobile/downloader/executor/ThreadedDownloaderService;

    invoke-interface {v0}, Lcom/audible/mobile/downloader/executor/NonExecutorThreadPool;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/audible/mobile/downloader/AbstractDownloadController;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 128
    :try_start_0
    invoke-interface {p1}, Lcom/audible/mobile/downloader/interfaces/DownloadRequest;->getKey()Lcom/audible/mobile/downloader/interfaces/DownloadRequest$Key;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/audible/mobile/downloader/AbstractDownloadController;->getRequestFromQueue(Lcom/audible/mobile/downloader/interfaces/DownloadRequest$Key;)Lcom/audible/mobile/downloader/interfaces/StatefulDownloadRequest;

    move-result-object v0

    if-nez v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/audible/mobile/downloader/AbstractDownloadController;->logger:Lorg/slf4j/Logger;

    const-string v1, "adding {} to queue"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 133
    iget-object v0, p0, Lcom/audible/mobile/downloader/AbstractDownloadController;->queue:Lcom/audible/mobile/downloader/interfaces/TopologicallySortedSet;

    invoke-direct {p0, v0, p1}, Lcom/audible/mobile/downloader/AbstractDownloadController;->addStatefulRequest(Lcom/audible/mobile/downloader/interfaces/TopologicallySortedSet;Lcom/audible/mobile/downloader/interfaces/DownloadRequest;)Lcom/audible/mobile/downloader/interfaces/StatefulDownloadRequest;

    move-result-object v0

    goto :goto_0

    .line 137
    :cond_1
    invoke-interface {v0}, Lcom/audible/mobile/downloader/interfaces/HasDownloadStatus;->getDownloadStatus()Lcom/audible/mobile/downloader/DownloadStatus;

    move-result-object v1

    .line 138
    invoke-virtual {v1}, Lcom/audible/mobile/downloader/DownloadStatus;->isLive()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 139
    iget-object v0, p0, Lcom/audible/mobile/downloader/AbstractDownloadController;->logger:Lorg/slf4j/Logger;

    const-string v1, "{} already in queue"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    iget-object p1, p0, Lcom/audible/mobile/downloader/AbstractDownloadController;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 142
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/audible/mobile/downloader/AbstractDownloadController;->logger:Lorg/slf4j/Logger;

    const-string v3, "{} already in queue, but was in a {} state. Setting to queued."

    invoke-interface {v2, v3, p1, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 143
    sget-object p1, Lcom/audible/mobile/downloader/DownloadStatus;->QUEUED:Lcom/audible/mobile/downloader/DownloadStatus;

    invoke-interface {v0, p1}, Lcom/audible/mobile/downloader/interfaces/HasDownloadStatus;->setDownloadStatus(Lcom/audible/mobile/downloader/DownloadStatus;)V

    .line 147
    :goto_0
    invoke-virtual {p0, v0}, Lcom/audible/mobile/downloader/AbstractDownloadController;->startDownloadIfAppropriate(Lcom/audible/mobile/downloader/interfaces/StatefulDownloadRequest;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    iget-object p1, p0, Lcom/audible/mobile/downloader/AbstractDownloadController;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/audible/mobile/downloader/AbstractDownloadController;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 150
    throw p1
.end method

.method protected getRequestFromQueue(Lcom/audible/mobile/downloader/interfaces/DownloadRequest$Key;)Lcom/audible/mobile/downloader/interfaces/StatefulDownloadRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKey;)TS;"
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lcom/audible/mobile/downloader/AbstractDownloadController;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 214
    :try_start_0
    iget-object v0, p0, Lcom/audible/mobile/downloader/AbstractDownloadController;->queue:Lcom/audible/mobile/downloader/interfaces/TopologicallySortedSet;

    invoke-interface {v0}, Lcom/audible/mobile/downloader/interfaces/TopologicallySortedSet;->topoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/audible/mobile/downloader/interfaces/StatefulDownloadRequest;

    .line 215
    invoke-interface {v1}, Lcom/audible/mobile/downloader/interfaces/DownloadRequest$Pair;->getKey()Lcom/audible/mobile/downloader/interfaces/DownloadRequest$Key;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 221
    iget-object p1, p0, Lcom/audible/mobile/downloader/AbstractDownloadController;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1

    :cond_1
    const/4 p1, 0x0

    iget-object v0, p0, Lcom/audible/mobile/downloader/AbstractDownloadController;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/audible/mobile/downloader/AbstractDownloadController;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 222
    throw p1
.end method

.method protected interruptIfDownloading(Lcom/audible/mobile/downloader/interfaces/DownloadRequest$Key;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKey;)Z"
        }
    .end annotation

    .line 233
    iget-object v0, p0, Lcom/audible/mobile/downloader/AbstractDownloadController;->downloaderService:Lcom/audible/mobile/downloader/executor/ThreadedDownloaderService;

    invoke-interface {v0, p1}, Lcom/audible/mobile/downloader/executor/ThreadedDownloaderService;->cancel(Lcom/audible/mobile/downloader/interfaces/DownloadRequest$Key;)Z

    move-result p1

    return p1
.end method

.method protected notifyDownloaders()V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/audible/mobile/downloader/AbstractDownloadController;->writeCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    return-void
.end method

.method public removeAllRequests()V
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/audible/mobile/downloader/AbstractDownloadController;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 196
    :try_start_0
    iget-object v0, p0, Lcom/audible/mobile/downloader/AbstractDownloadController;->queue:Lcom/audible/mobile/downloader/interfaces/TopologicallySortedSet;

    invoke-interface {v0}, Lcom/audible/mobile/downloader/interfaces/TopologicallySortedSet;->topoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/audible/mobile/downloader/interfaces/StatefulDownloadRequest;

    .line 197
    invoke-direct {p0, v1}, Lcom/audible/mobile/downloader/AbstractDownloadController;->removeRequest(Lcom/audible/mobile/downloader/interfaces/StatefulDownloadRequest;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/audible/mobile/downloader/AbstractDownloadController;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/audible/mobile/downloader/AbstractDownloadController;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 201
    throw v0
.end method

.method public removeRequest(Lcom/audible/mobile/downloader/interfaces/DownloadRequest$Key;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKey;)V"
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lcom/audible/mobile/downloader/AbstractDownloadController;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 177
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/audible/mobile/downloader/AbstractDownloadController;->getRequestFromQueue(Lcom/audible/mobile/downloader/interfaces/DownloadRequest$Key;)Lcom/audible/mobile/downloader/interfaces/StatefulDownloadRequest;

    move-result-object v0

    if-nez v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/audible/mobile/downloader/AbstractDownloadController;->logger:Lorg/slf4j/Logger;

    const-string v1, "{} is not present, can\'t remove"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    iget-object p1, p0, Lcom/audible/mobile/downloader/AbstractDownloadController;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 185
    :cond_0
    :try_start_1
    invoke-direct {p0, v0}, Lcom/audible/mobile/downloader/AbstractDownloadController;->removeRequest(Lcom/audible/mobile/downloader/interfaces/StatefulDownloadRequest;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 187
    iget-object p1, p0, Lcom/audible/mobile/downloader/AbstractDownloadController;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/audible/mobile/downloader/AbstractDownloadController;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 188
    throw p1
.end method

.method protected startDownloadIfAppropriate(Lcom/audible/mobile/downloader/interfaces/StatefulDownloadRequest;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/audible/mobile/downloader/AbstractDownloadController;->queue:Lcom/audible/mobile/downloader/interfaces/TopologicallySortedSet;

    invoke-interface {v0, p1}, Lcom/audible/mobile/downloader/interfaces/TopologicallySortedSet;->getAllDependencies(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/audible/mobile/downloader/interfaces/StatefulDownloadRequest;

    .line 100
    invoke-interface {v1}, Lcom/audible/mobile/downloader/interfaces/HasDownloadStatus;->getDownloadStatus()Lcom/audible/mobile/downloader/DownloadStatus;

    move-result-object v2

    sget-object v3, Lcom/audible/mobile/downloader/DownloadStatus;->FINISHED:Lcom/audible/mobile/downloader/DownloadStatus;

    if-eq v2, v3, :cond_0

    .line 101
    iget-object v0, p0, Lcom/audible/mobile/downloader/AbstractDownloadController;->logger:Lorg/slf4j/Logger;

    const-string v2, "{} has a live dependency {}, not downloading yet"

    invoke-interface {v0, v2, p1, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 106
    :cond_1
    invoke-virtual {p0}, Lcom/audible/mobile/downloader/AbstractDownloadController;->notifyDownloaders()V

    return-void
.end method

.method public terminate()V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/audible/mobile/downloader/AbstractDownloadController;->downloaderService:Lcom/audible/mobile/downloader/executor/ThreadedDownloaderService;

    invoke-interface {v0}, Lcom/audible/mobile/downloader/executor/NonExecutorThreadPool;->shutdownNow()V

    return-void
.end method
