.class public interface abstract Lcom/audible/mobile/downloader/interfaces/DownloadHandler;
.super Ljava/lang/Object;
.source "DownloadHandler.java"


# virtual methods
.method public abstract getStartOffset()J
.end method

.method public abstract onBeforeContentReceived()Z
.end method

.method public abstract onBegin()Z
.end method

.method public abstract onCancelled()V
.end method

.method public abstract onConnected()V
.end method

.method public abstract onContentReceived([BI)Z
.end method

.method public abstract onError(Lcom/audible/mobile/downloader/NetworkError;Lcom/audible/mobile/downloader/NetworkErrorException;)V
.end method

.method public abstract onFinished()V
.end method

.method public abstract onInterrupt()V
.end method

.method public abstract onReceivedHeaders(ILjava/util/Map;)Lcom/audible/mobile/downloader/interfaces/ServerResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/audible/mobile/downloader/interfaces/ServerResponse;"
        }
    .end annotation
.end method

.method public abstract onRedirect(ILjava/lang/String;Ljava/util/Map;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)Z"
        }
    .end annotation
.end method

.method public abstract onRemoved()V
.end method
