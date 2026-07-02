.class public interface abstract Lcom/amazon/kindle/download/DownloadRequestTask$Delegate;
.super Ljava/lang/Object;
.source "DownloadRequestTask.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/download/DownloadRequestTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Delegate"
.end annotation


# virtual methods
.method public abstract onStatusUpdate(Lcom/amazon/kindle/services/download/IDownloadRequest;Lcom/amazon/kindle/webservices/RequestStatus;)V
.end method

.method public abstract onTaskComplete(Lcom/amazon/kindle/download/DownloadRequestTask;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/download/DownloadRequestTask<",
            "*>;)V"
        }
    .end annotation
.end method
