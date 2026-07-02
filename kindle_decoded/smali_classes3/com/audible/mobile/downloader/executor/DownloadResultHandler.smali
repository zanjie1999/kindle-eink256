.class Lcom/audible/mobile/downloader/executor/DownloadResultHandler;
.super Ljava/lang/Object;
.source "DownloadResultHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Request::",
        "Lcom/audible/mobile/downloader/interfaces/DownloadRequest<",
        "TKey;>;Key::",
        "Lcom/audible/mobile/downloader/interfaces/DownloadRequest$Key;",
        "Stateful::",
        "Lcom/audible/mobile/downloader/interfaces/StatefulDownloadRequest<",
        "TRequest;TKey;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;


# instance fields
.field protected final queue:Lcom/audible/mobile/downloader/interfaces/TopologicallySortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/audible/mobile/downloader/interfaces/TopologicallySortedSet<",
            "TStateful;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    new-instance v0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;

    const-class v1, Lcom/audible/mobile/downloader/executor/DownloadResultHandler;

    invoke-direct {v0, v1}, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/audible/mobile/downloader/executor/DownloadResultHandler;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/audible/mobile/downloader/interfaces/TopologicallySortedSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/mobile/downloader/interfaces/TopologicallySortedSet<",
            "TStateful;>;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/audible/mobile/downloader/executor/DownloadResultHandler;->queue:Lcom/audible/mobile/downloader/interfaces/TopologicallySortedSet;

    return-void
.end method


# virtual methods
.method public handleDownloadResult(Lcom/audible/mobile/downloader/interfaces/Downloader$Result;Lcom/audible/mobile/downloader/interfaces/StatefulDownloadRequest;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/mobile/downloader/interfaces/Downloader$Result;",
            "TStateful;)V"
        }
    .end annotation

    .line 42
    sget-object v0, Lcom/audible/mobile/downloader/executor/DownloadResultHandler;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "{} when downloading {}"

    invoke-interface {v0, v2, v1, p2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 46
    sget-object v0, Lcom/audible/mobile/downloader/executor/DownloadResultHandler$1;->$SwitchMap$com$audible$mobile$downloader$interfaces$Downloader$Result:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    sget-object p1, Lcom/audible/mobile/downloader/DownloadStatus;->CANCELLED:Lcom/audible/mobile/downloader/DownloadStatus;

    invoke-interface {p2, p1}, Lcom/audible/mobile/downloader/interfaces/HasDownloadStatus;->setDownloadStatus(Lcom/audible/mobile/downloader/DownloadStatus;)V

    goto :goto_1

    .line 65
    :cond_1
    sget-object p1, Lcom/audible/mobile/downloader/DownloadStatus;->ERROR:Lcom/audible/mobile/downloader/DownloadStatus;

    invoke-interface {p2, p1}, Lcom/audible/mobile/downloader/interfaces/HasDownloadStatus;->setDownloadStatus(Lcom/audible/mobile/downloader/DownloadStatus;)V

    goto :goto_1

    .line 62
    :cond_2
    sget-object p1, Lcom/audible/mobile/downloader/DownloadStatus;->QUEUED:Lcom/audible/mobile/downloader/DownloadStatus;

    invoke-interface {p2, p1}, Lcom/audible/mobile/downloader/interfaces/HasDownloadStatus;->setDownloadStatus(Lcom/audible/mobile/downloader/DownloadStatus;)V

    goto :goto_0

    .line 52
    :cond_3
    invoke-interface {p2}, Lcom/audible/mobile/downloader/interfaces/DownloadRequest$Pair;->getRequest()Lcom/audible/mobile/downloader/interfaces/DownloadRequest;

    move-result-object p1

    invoke-interface {p1}, Lcom/audible/mobile/downloader/interfaces/DownloadRequest;->getRetryPolicy()Lcom/audible/mobile/downloader/policy/RetryPolicy;

    move-result-object p1

    invoke-interface {p1}, Lcom/audible/mobile/downloader/policy/RetryPolicy;->onInterrupted()V

    .line 57
    invoke-interface {p2}, Lcom/audible/mobile/downloader/interfaces/HasDownloadStatus;->getDownloadStatus()Lcom/audible/mobile/downloader/DownloadStatus;

    move-result-object p1

    sget-object v1, Lcom/audible/mobile/downloader/DownloadStatus;->PAUSED:Lcom/audible/mobile/downloader/DownloadStatus;

    if-eq p1, v1, :cond_4

    .line 58
    sget-object p1, Lcom/audible/mobile/downloader/DownloadStatus;->QUEUED:Lcom/audible/mobile/downloader/DownloadStatus;

    invoke-interface {p2, p1}, Lcom/audible/mobile/downloader/interfaces/HasDownloadStatus;->setDownloadStatus(Lcom/audible/mobile/downloader/DownloadStatus;)V

    :cond_4
    :goto_0
    const/4 p1, 0x0

    goto :goto_2

    .line 48
    :cond_5
    sget-object p1, Lcom/audible/mobile/downloader/DownloadStatus;->FINISHED:Lcom/audible/mobile/downloader/DownloadStatus;

    invoke-interface {p2, p1}, Lcom/audible/mobile/downloader/interfaces/HasDownloadStatus;->setDownloadStatus(Lcom/audible/mobile/downloader/DownloadStatus;)V

    :goto_1
    const/4 p1, 0x1

    :goto_2
    if-nez p1, :cond_6

    .line 75
    invoke-interface {p2}, Lcom/audible/mobile/downloader/interfaces/DownloadRequest$Pair;->getRequest()Lcom/audible/mobile/downloader/interfaces/DownloadRequest;

    move-result-object v1

    invoke-interface {v1}, Lcom/audible/mobile/downloader/interfaces/DownloadRequest;->getRetryPolicy()Lcom/audible/mobile/downloader/policy/RetryPolicy;

    move-result-object v1

    invoke-interface {v1}, Lcom/audible/mobile/downloader/policy/RetryPolicy;->canRetry()Z

    move-result v1

    if-nez v1, :cond_6

    .line 77
    sget-object p1, Lcom/audible/mobile/downloader/DownloadStatus;->ERROR:Lcom/audible/mobile/downloader/DownloadStatus;

    invoke-interface {p2, p1}, Lcom/audible/mobile/downloader/interfaces/HasDownloadStatus;->setDownloadStatus(Lcom/audible/mobile/downloader/DownloadStatus;)V

    goto :goto_3

    :cond_6
    move v0, p1

    :goto_3
    if-eqz v0, :cond_7

    .line 82
    invoke-virtual {p0, p2}, Lcom/audible/mobile/downloader/executor/DownloadResultHandler;->removeRequestAfterDownload(Lcom/audible/mobile/downloader/interfaces/StatefulDownloadRequest;)V

    :cond_7
    return-void
.end method

.method removeRequestAfterDownload(Lcom/audible/mobile/downloader/interfaces/StatefulDownloadRequest;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TStateful;)V"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/audible/mobile/downloader/executor/DownloadResultHandler;->queue:Lcom/audible/mobile/downloader/interfaces/TopologicallySortedSet;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/audible/mobile/downloader/executor/DownloadResultHandler;->queue:Lcom/audible/mobile/downloader/interfaces/TopologicallySortedSet;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 100
    :try_start_0
    invoke-interface {p1}, Lcom/audible/mobile/downloader/interfaces/DownloadRequest$Pair;->getRequest()Lcom/audible/mobile/downloader/interfaces/DownloadRequest;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/mobile/downloader/interfaces/DownloadRequest;->getHandler()Lcom/audible/mobile/downloader/interfaces/DownloadHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/mobile/downloader/interfaces/DownloadHandler;->onRemoved()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 102
    sget-object v1, Lcom/audible/mobile/downloader/executor/DownloadResultHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v2, "An exception occurred trying to call into onRemoved for {}"

    invoke-interface {v1, v2, p1, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method
