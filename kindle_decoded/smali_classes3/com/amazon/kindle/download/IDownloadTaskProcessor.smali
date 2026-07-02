.class public interface abstract Lcom/amazon/kindle/download/IDownloadTaskProcessor;
.super Ljava/lang/Object;
.source "IDownloadTaskProcessor.kt"


# virtual methods
.method public abstract addTasks(Ljava/util/Collection;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/amazon/kindle/download/DownloadRequestTask<",
            "*>;>;)Z"
        }
    .end annotation
.end method

.method public abstract getParallelDownloadCount()I
.end method

.method public abstract isPaused()Z
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

.method public abstract pause()V
.end method

.method public abstract purgeCancelledTasks(Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/amazon/kindle/download/DownloadRequestTask<",
            "*>;>;)V"
        }
    .end annotation
.end method

.method public abstract reprioritizeTasks(Ljava/util/Collection;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/amazon/kindle/download/DownloadRequestTask<",
            "*>;>;)Z"
        }
    .end annotation
.end method

.method public abstract resume()V
.end method

.method public abstract setParallelDownloadCount(I)Z
.end method
