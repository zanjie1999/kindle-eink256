.class public Lcom/audible/mobile/downloader/executor/DownloaderThreadFactory;
.super Ljava/lang/Object;
.source "DownloaderThreadFactory.java"

# interfaces
.implements Lcom/audible/mobile/framework/Factory;


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
        "Lcom/audible/mobile/framework/Factory<",
        "Lcom/audible/mobile/downloader/executor/DownloaderThread<",
        "TRequest;TKey;TS;>;>;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private downloaderFactory:Lcom/audible/mobile/downloader/factory/DownloaderFactory;

.field private queue:Lcom/audible/mobile/downloader/interfaces/TopologicallySortedSet;

.field private readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

.field private waitCondition:Ljava/util/concurrent/locks/Condition;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/audible/mobile/downloader/executor/DownloaderThread;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/audible/mobile/downloader/executor/DownloaderThread<",
            "TRequest;TKey;TS;>;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/audible/mobile/downloader/executor/DownloaderThreadFactory;->context:Landroid/content/Context;

    const-string v1, "context must not be null"

    invoke-static {v0, v1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lcom/audible/mobile/downloader/executor/DownloaderThreadFactory;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    const-string v1, "readWriteLock must not be null"

    invoke-static {v0, v1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lcom/audible/mobile/downloader/executor/DownloaderThreadFactory;->waitCondition:Ljava/util/concurrent/locks/Condition;

    const-string v1, "waitCondition must not be null"

    invoke-static {v0, v1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 64
    iget-object v0, p0, Lcom/audible/mobile/downloader/executor/DownloaderThreadFactory;->downloaderFactory:Lcom/audible/mobile/downloader/factory/DownloaderFactory;

    const-string v1, "downloaderFactory must not be null"

    invoke-static {v0, v1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Lcom/audible/mobile/downloader/executor/DownloaderThreadFactory;->queue:Lcom/audible/mobile/downloader/interfaces/TopologicallySortedSet;

    const-string v1, "queue must not be null"

    invoke-static {v0, v1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 66
    new-instance v0, Lcom/audible/mobile/downloader/executor/DownloaderThreadImpl;

    iget-object v3, p0, Lcom/audible/mobile/downloader/executor/DownloaderThreadFactory;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/audible/mobile/downloader/executor/DownloaderThreadFactory;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    iget-object v5, p0, Lcom/audible/mobile/downloader/executor/DownloaderThreadFactory;->waitCondition:Ljava/util/concurrent/locks/Condition;

    iget-object v6, p0, Lcom/audible/mobile/downloader/executor/DownloaderThreadFactory;->downloaderFactory:Lcom/audible/mobile/downloader/factory/DownloaderFactory;

    iget-object v7, p0, Lcom/audible/mobile/downloader/executor/DownloaderThreadFactory;->queue:Lcom/audible/mobile/downloader/interfaces/TopologicallySortedSet;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/audible/mobile/downloader/executor/DownloaderThreadImpl;-><init>(Landroid/content/Context;Ljava/util/concurrent/locks/ReadWriteLock;Ljava/util/concurrent/locks/Condition;Lcom/audible/mobile/downloader/factory/DownloaderFactory;Lcom/audible/mobile/downloader/interfaces/TopologicallySortedSet;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/audible/mobile/downloader/executor/DownloaderThreadFactory;->get()Lcom/audible/mobile/downloader/executor/DownloaderThread;

    move-result-object v0

    return-object v0
.end method

.method public setCondition(Ljava/util/concurrent/locks/Condition;)Lcom/audible/mobile/downloader/executor/DownloaderThreadFactory;
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/audible/mobile/downloader/executor/DownloaderThreadFactory;->waitCondition:Ljava/util/concurrent/locks/Condition;

    return-object p0
.end method

.method public setContext(Landroid/content/Context;)Lcom/audible/mobile/downloader/executor/DownloaderThreadFactory;
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/audible/mobile/downloader/executor/DownloaderThreadFactory;->context:Landroid/content/Context;

    return-object p0
.end method

.method public setDownloaderFactory(Lcom/audible/mobile/downloader/factory/DownloaderFactory;)Lcom/audible/mobile/downloader/executor/DownloaderThreadFactory;
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/audible/mobile/downloader/executor/DownloaderThreadFactory;->downloaderFactory:Lcom/audible/mobile/downloader/factory/DownloaderFactory;

    return-object p0
.end method

.method public setQueue(Lcom/audible/mobile/downloader/interfaces/TopologicallySortedSet;)Lcom/audible/mobile/downloader/executor/DownloaderThreadFactory;
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/audible/mobile/downloader/executor/DownloaderThreadFactory;->queue:Lcom/audible/mobile/downloader/interfaces/TopologicallySortedSet;

    return-object p0
.end method

.method public setReadWriteLock(Ljava/util/concurrent/locks/ReadWriteLock;)Lcom/audible/mobile/downloader/executor/DownloaderThreadFactory;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/audible/mobile/downloader/executor/DownloaderThreadFactory;->readWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    return-object p0
.end method
