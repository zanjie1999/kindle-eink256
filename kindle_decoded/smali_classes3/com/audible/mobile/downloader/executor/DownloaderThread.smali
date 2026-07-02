.class public interface abstract Lcom/audible/mobile/downloader/executor/DownloaderThread;
.super Ljava/lang/Object;
.source "DownloaderThread.java"

# interfaces
.implements Lcom/audible/mobile/downloader/executor/NonExecutorThreadPoolThread;


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
        "Lcom/audible/mobile/downloader/executor/NonExecutorThreadPoolThread;"
    }
.end annotation


# virtual methods
.method public abstract interruptRequestIfPresent(Lcom/audible/mobile/downloader/interfaces/DownloadRequest$Key;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKey;)Z"
        }
    .end annotation
.end method
