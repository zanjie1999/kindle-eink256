.class public interface abstract Lcom/audible/hushpuppy/service/network/common/IDownloadRequestFactory;
.super Ljava/lang/Object;
.source "IDownloadRequestFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/audible/mobile/downloader/interfaces/DownloadRequest;",
        "K::",
        "Lcom/audible/mobile/downloader/interfaces/DownloadRequest$Key;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract newDownloadRequest(Lcom/audible/mobile/downloader/interfaces/DownloadCommand;Lcom/audible/mobile/downloader/factory/DownloadType;ZLcom/audible/mobile/downloader/interfaces/DownloadHandler;Lcom/audible/mobile/downloader/interfaces/DownloadRequest$Key;)Lcom/audible/mobile/downloader/interfaces/DownloadRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/mobile/downloader/interfaces/DownloadCommand;",
            "Lcom/audible/mobile/downloader/factory/DownloadType;",
            "Z",
            "Lcom/audible/mobile/downloader/interfaces/DownloadHandler;",
            "TK;)TT;"
        }
    .end annotation
.end method
