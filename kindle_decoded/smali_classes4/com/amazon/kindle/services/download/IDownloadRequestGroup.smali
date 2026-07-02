.class public interface abstract Lcom/amazon/kindle/services/download/IDownloadRequestGroup;
.super Ljava/lang/Object;
.source "IDownloadRequestGroup.java"

# interfaces
.implements Lcom/amazon/kindle/services/download/IAssetGroup;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;
    }
.end annotation


# virtual methods
.method public abstract addAssets(Ljava/util/Collection;)Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/services/download/IBookAsset;",
            ">;)",
            "Ljava/util/HashSet<",
            "Lcom/amazon/kindle/services/download/IDownloadRequest;",
            ">;"
        }
    .end annotation
.end method

.method public abstract addDownloadRequests(Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/services/download/IDownloadRequest;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getDownloadStats()Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;
.end method

.method public abstract getError()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;
.end method

.method public abstract getGroupDownloadStatus()Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;
.end method

.method public abstract getIDownloadTracker()Lcom/amazon/kindle/services/download/IDownloadTracker;
.end method

.method public abstract getRequest(Ljava/lang/String;)Lcom/amazon/kindle/services/download/IDownloadRequest;
.end method

.method public abstract getRequestIds()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRequests()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/services/download/IDownloadRequest;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRequiredAssetSize()J
.end method

.method public abstract getTotalAssetSize()J
.end method

.method public abstract isComplete()Z
.end method

.method public abstract setError(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)V
.end method

.method public abstract setIDownloadTracker(Lcom/amazon/kindle/services/download/IDownloadTracker;)V
.end method

.method public abstract setReportedToPreconditionMetrics(Z)V
.end method

.method public abstract shouldPreemptCurrentDownload()Z
.end method
