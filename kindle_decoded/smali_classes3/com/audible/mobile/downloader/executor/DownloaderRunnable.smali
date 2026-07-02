.class public interface abstract Lcom/audible/mobile/downloader/executor/DownloaderRunnable;
.super Ljava/lang/Object;
.source "DownloaderRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


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
        "Ljava/lang/Runnable;"
    }
.end annotation


# virtual methods
.method public abstract getCurrentRequest()Lcom/audible/mobile/downloader/interfaces/StatefulDownloadRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation
.end method
