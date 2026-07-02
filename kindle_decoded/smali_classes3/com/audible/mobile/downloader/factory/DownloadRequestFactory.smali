.class public interface abstract Lcom/audible/mobile/downloader/factory/DownloadRequestFactory;
.super Ljava/lang/Object;
.source "DownloadRequestFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/audible/mobile/downloader/interfaces/DownloadRequest<",
        "+",
        "Lcom/audible/mobile/downloader/interfaces/DownloadRequest$Key;",
        ">;D::",
        "Lcom/audible/mobile/downloader/factory/DownloadRequestData<",
        "+",
        "Lcom/audible/mobile/downloader/factory/DownloadType;",
        ">;>",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract newDownloadRequest(Lcom/audible/mobile/downloader/interfaces/DownloadHandler;Lcom/audible/mobile/downloader/factory/DownloadRequestData;)Lcom/audible/mobile/downloader/interfaces/DownloadRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/mobile/downloader/interfaces/DownloadHandler;",
            "TD;)TT;"
        }
    .end annotation
.end method
