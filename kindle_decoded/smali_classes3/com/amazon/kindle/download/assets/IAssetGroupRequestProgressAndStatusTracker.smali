.class public interface abstract Lcom/amazon/kindle/download/assets/IAssetGroupRequestProgressAndStatusTracker;
.super Ljava/lang/Object;
.source "DownloadRequestGroupProgressAndStatusTracker.kt"


# virtual methods
.method public abstract addNewRequest(Lcom/amazon/kindle/services/download/IDownloadRequest;)V
.end method

.method public abstract getAllRequestsStatus()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/services/download/IDownloadRequest;",
            "Lcom/amazon/kindle/webservices/RequestStatus;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRequestStatus(Lcom/amazon/kindle/services/download/IDownloadRequest;)Lcom/amazon/kindle/webservices/RequestStatus;
.end method

.method public abstract setDownloadTracker(Lcom/amazon/kindle/services/download/IDownloadTracker;)V
.end method

.method public abstract translateToGroupStatus()Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;
.end method
