.class public interface abstract Lcom/amazon/kindle/services/download/IReaderDownloadManager;
.super Ljava/lang/Object;
.source "IReaderDownloadManager.java"


# virtual methods
.method public abstract addDownload(Lcom/amazon/kindle/services/download/IDownloadRequest;)Z
.end method

.method public abstract addGroupForDownload(Lcom/amazon/kindle/services/download/IDownloadRequestGroup;)Z
.end method

.method public abstract cancelDownload(Ljava/util/Map;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/model/content/IBookID;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;)Z"
        }
    .end annotation
.end method

.method public abstract getAssetsInDownloadQueue()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract handleDownloadError(Ljava/lang/String;)V
.end method

.method public abstract registerDownloadTracker(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/webservices/IWebStatusAndProgressTracker;)V
.end method

.method public varargs abstract reprioritizeDownload(Ljava/lang/String;[Ljava/lang/String;)Z
.end method

.method public abstract restartFailedDownloads(Ljava/lang/String;)Z
.end method
