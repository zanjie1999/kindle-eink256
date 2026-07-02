.class Lcom/audible/mobile/downloader/executor/GetNextRequestCallable;
.super Ljava/lang/Object;
.source "GetNextRequestCallable.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


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
        "Ljava/util/concurrent/Callable<",
        "Lcom/audible/mobile/downloader/interfaces/StatefulDownloadRequest<",
        "TRequest;TKey;>;>;"
    }
.end annotation


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;


# instance fields
.field protected final queue:Lcom/audible/mobile/downloader/interfaces/TopologicallySortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/audible/mobile/downloader/interfaces/TopologicallySortedSet<",
            "TS;>;"
        }
    .end annotation
.end field

.field protected final waitCondition:Ljava/util/concurrent/locks/Condition;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    new-instance v0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;

    const-class v1, Lcom/audible/mobile/downloader/executor/GetNextRequestCallable;

    invoke-direct {v0, v1}, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/audible/mobile/downloader/executor/GetNextRequestCallable;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/audible/mobile/downloader/interfaces/TopologicallySortedSet;Ljava/util/concurrent/locks/Condition;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/mobile/downloader/interfaces/TopologicallySortedSet<",
            "TS;>;",
            "Ljava/util/concurrent/locks/Condition;",
            ")V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/audible/mobile/downloader/executor/GetNextRequestCallable;->queue:Lcom/audible/mobile/downloader/interfaces/TopologicallySortedSet;

    .line 34
    iput-object p2, p0, Lcom/audible/mobile/downloader/executor/GetNextRequestCallable;->waitCondition:Ljava/util/concurrent/locks/Condition;

    return-void
.end method


# virtual methods
.method public call()Lcom/audible/mobile/downloader/interfaces/StatefulDownloadRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 41
    :goto_0
    invoke-virtual {p0}, Lcom/audible/mobile/downloader/executor/GetNextRequestCallable;->getNextAvailableRequestFromQueue()Lcom/audible/mobile/downloader/interfaces/StatefulDownloadRequest;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 46
    :cond_0
    sget-object v0, Lcom/audible/mobile/downloader/executor/GetNextRequestCallable;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "No available request, waiting"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/audible/mobile/downloader/executor/GetNextRequestCallable;->waitCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V

    goto :goto_0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 18
    invoke-virtual {p0}, Lcom/audible/mobile/downloader/executor/GetNextRequestCallable;->call()Lcom/audible/mobile/downloader/interfaces/StatefulDownloadRequest;

    move-result-object v0

    return-object v0
.end method

.method protected getNextAvailableRequestFromQueue()Lcom/audible/mobile/downloader/interfaces/StatefulDownloadRequest;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/audible/mobile/downloader/executor/GetNextRequestCallable;->queue:Lcom/audible/mobile/downloader/interfaces/TopologicallySortedSet;

    invoke-interface {v0}, Lcom/audible/mobile/downloader/interfaces/TopologicallySortedSet;->topoLeafList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/audible/mobile/downloader/interfaces/StatefulDownloadRequest;

    .line 67
    invoke-interface {v1}, Lcom/audible/mobile/downloader/interfaces/HasDownloadStatus;->getDownloadStatus()Lcom/audible/mobile/downloader/DownloadStatus;

    move-result-object v2

    .line 68
    sget-object v3, Lcom/audible/mobile/downloader/DownloadStatus;->QUEUED:Lcom/audible/mobile/downloader/DownloadStatus;

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    invoke-interface {v1}, Lcom/audible/mobile/downloader/interfaces/DownloadRequest$Pair;->getRequest()Lcom/audible/mobile/downloader/interfaces/DownloadRequest;

    move-result-object v2

    invoke-interface {v2}, Lcom/audible/mobile/downloader/interfaces/DownloadRequest;->getNetworkPolicy()Lcom/audible/mobile/downloader/policy/NetworkStatePolicy;

    move-result-object v2

    invoke-interface {v2}, Lcom/audible/mobile/downloader/policy/NetworkStatePolicy;->canDownload()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method
