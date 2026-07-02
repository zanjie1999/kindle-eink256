.class public Lcom/audible/mobile/downloader/executor/ThreadedDownloaderServiceImpl;
.super Lcom/audible/mobile/downloader/executor/NonExecutorThreadPoolImpl;
.source "ThreadedDownloaderServiceImpl.java"

# interfaces
.implements Lcom/audible/mobile/downloader/executor/ThreadedDownloaderService;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/audible/mobile/downloader/executor/NonExecutorThreadPoolImpl<",
        "Lcom/audible/mobile/downloader/executor/DownloaderThread;",
        ">;",
        "Lcom/audible/mobile/downloader/executor/ThreadedDownloaderService;"
    }
.end annotation


# static fields
.field private static final DEFAULT_THREADSIZE:I = 0x1


# instance fields
.field private final context:Landroid/content/Context;

.field private final networkResumptionBroadcastReceiver:Lcom/audible/mobile/downloader/executor/NetworkResumptionBroadcastReceiver;


# direct methods
.method constructor <init>(ILcom/audible/mobile/downloader/executor/DownloaderThreadFactory;Landroid/content/Context;Ljava/util/concurrent/locks/Lock;Ljava/util/concurrent/locks/Condition;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/audible/mobile/downloader/executor/NonExecutorThreadPoolImpl;-><init>(ILcom/audible/mobile/framework/Factory;)V

    .line 33
    iput-object p3, p0, Lcom/audible/mobile/downloader/executor/ThreadedDownloaderServiceImpl;->context:Landroid/content/Context;

    .line 34
    new-instance p1, Lcom/audible/mobile/downloader/executor/NetworkResumptionBroadcastReceiver;

    invoke-direct {p1, p4, p5}, Lcom/audible/mobile/downloader/executor/NetworkResumptionBroadcastReceiver;-><init>(Ljava/util/concurrent/locks/Lock;Ljava/util/concurrent/locks/Condition;)V

    iput-object p1, p0, Lcom/audible/mobile/downloader/executor/ThreadedDownloaderServiceImpl;->networkResumptionBroadcastReceiver:Lcom/audible/mobile/downloader/executor/NetworkResumptionBroadcastReceiver;

    .line 35
    invoke-virtual {p1, p3}, Lcom/audible/mobile/downloader/executor/NetworkResumptionBroadcastReceiver;->register(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/locks/ReadWriteLock;Ljava/util/concurrent/locks/Condition;Lcom/audible/mobile/downloader/factory/DownloaderFactory;Lcom/audible/mobile/downloader/interfaces/TopologicallySortedSet;)V
    .locals 6

    .line 21
    new-instance v2, Lcom/audible/mobile/downloader/executor/DownloaderThreadFactory;

    invoke-direct {v2}, Lcom/audible/mobile/downloader/executor/DownloaderThreadFactory;-><init>()V

    invoke-virtual {v2, p1}, Lcom/audible/mobile/downloader/executor/DownloaderThreadFactory;->setContext(Landroid/content/Context;)Lcom/audible/mobile/downloader/executor/DownloaderThreadFactory;

    invoke-virtual {v2, p2}, Lcom/audible/mobile/downloader/executor/DownloaderThreadFactory;->setReadWriteLock(Ljava/util/concurrent/locks/ReadWriteLock;)Lcom/audible/mobile/downloader/executor/DownloaderThreadFactory;

    invoke-virtual {v2, p3}, Lcom/audible/mobile/downloader/executor/DownloaderThreadFactory;->setCondition(Ljava/util/concurrent/locks/Condition;)Lcom/audible/mobile/downloader/executor/DownloaderThreadFactory;

    invoke-virtual {v2, p4}, Lcom/audible/mobile/downloader/executor/DownloaderThreadFactory;->setDownloaderFactory(Lcom/audible/mobile/downloader/factory/DownloaderFactory;)Lcom/audible/mobile/downloader/executor/DownloaderThreadFactory;

    .line 22
    invoke-virtual {v2, p5}, Lcom/audible/mobile/downloader/executor/DownloaderThreadFactory;->setQueue(Lcom/audible/mobile/downloader/interfaces/TopologicallySortedSet;)Lcom/audible/mobile/downloader/executor/DownloaderThreadFactory;

    invoke-interface {p2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    const/4 v1, 0x1

    move-object v0, p0

    move-object v3, p1

    move-object v5, p3

    .line 21
    invoke-direct/range {v0 .. v5}, Lcom/audible/mobile/downloader/executor/ThreadedDownloaderServiceImpl;-><init>(ILcom/audible/mobile/downloader/executor/DownloaderThreadFactory;Landroid/content/Context;Ljava/util/concurrent/locks/Lock;Ljava/util/concurrent/locks/Condition;)V

    return-void
.end method


# virtual methods
.method public cancel(Lcom/audible/mobile/downloader/interfaces/DownloadRequest$Key;)Z
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/audible/mobile/downloader/executor/NonExecutorThreadPoolImpl;->threadList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/audible/mobile/downloader/executor/DownloaderThread;

    .line 53
    invoke-interface {v1, p1}, Lcom/audible/mobile/downloader/executor/DownloaderThread;->interruptRequestIfPresent(Lcom/audible/mobile/downloader/interfaces/DownloadRequest$Key;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public shutdownNow()V
    .locals 2

    .line 46
    invoke-super {p0}, Lcom/audible/mobile/downloader/executor/NonExecutorThreadPoolImpl;->shutdown()V

    .line 47
    iget-object v0, p0, Lcom/audible/mobile/downloader/executor/ThreadedDownloaderServiceImpl;->networkResumptionBroadcastReceiver:Lcom/audible/mobile/downloader/executor/NetworkResumptionBroadcastReceiver;

    iget-object v1, p0, Lcom/audible/mobile/downloader/executor/ThreadedDownloaderServiceImpl;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/audible/mobile/downloader/executor/NetworkResumptionBroadcastReceiver;->unregister(Landroid/content/Context;)V

    return-void
.end method
