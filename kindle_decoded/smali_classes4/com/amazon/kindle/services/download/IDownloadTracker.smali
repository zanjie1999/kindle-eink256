.class public interface abstract Lcom/amazon/kindle/services/download/IDownloadTracker;
.super Ljava/lang/Object;
.source "IDownloadTracker.java"


# virtual methods
.method public abstract reportCurrentProgress(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract reportCurrentProgress(JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract reportState(Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;Ljava/lang/String;)V
.end method

.method public abstract setMaxProgress(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract setMaxProgress(JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method
