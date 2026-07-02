.class public interface abstract Lcom/amazon/kindle/krx/download/IKRXDownloadManager;
.super Ljava/lang/Object;
.source "IKRXDownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/krx/download/IKRXDownloadManager$AuthenticationType;
    }
.end annotation


# virtual methods
.method public abstract cancelDownload(Ljava/lang/String;)V
.end method

.method public abstract downloadBook(Lcom/amazon/kindle/krx/content/IBook;)Z
.end method

.method public abstract downloadBook(Ljava/lang/String;Lcom/amazon/kindle/krx/download/IDownloadStatusListener;)Z
.end method

.method public abstract downloadSidecar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/amazon/kindle/krx/download/IKRXResponseHandler;)Ljava/lang/String;
.end method

.method public abstract downloadSidecar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/amazon/kindle/krx/download/IKRXResponseHandler;Ljava/util/Map;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/amazon/kindle/krx/download/IKRXResponseHandler;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract enqueueDownloadRequest(Lcom/amazon/kindle/krx/download/IKRXDownloadRequest;)Ljava/lang/String;
.end method

.method public abstract getStatus(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract registerDownloadProgressListener(Ljava/lang/String;Lcom/amazon/kindle/krx/download/IDownloadStatusListener;)V
.end method

.method public abstract signRequest(Lcom/amazon/kindle/krx/download/IKRXDownloadRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
