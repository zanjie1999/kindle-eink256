.class public final Lcom/audible/mobile/download/service/similarity/SimilarityDownloadRequestFactoryImpl;
.super Lcom/audible/mobile/downloader/factory/AbstractDownloadRequestFactory;
.source "SimilarityDownloadRequestFactoryImpl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/audible/mobile/downloader/factory/AbstractDownloadRequestFactory<",
        "Lcom/audible/mobile/download/service/similarity/SimilarityDownloadRequest;",
        "Lcom/audible/mobile/download/service/LibraryDownloadRequestData;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, v0}, Lcom/audible/mobile/downloader/factory/AbstractDownloadRequestFactory;-><init>(Landroid/content/Context;Lcom/audible/mobile/catalog/filesystem/ContentTypeStorageLocationStrategy;)V

    return-void
.end method


# virtual methods
.method protected newDownloadRequestInternal(Lcom/audible/mobile/downloader/interfaces/DownloadHandler;Lcom/audible/mobile/download/service/LibraryDownloadRequestData;Lcom/audible/mobile/downloader/policy/RetryPolicy;Lcom/audible/mobile/downloader/policy/NetworkStatePolicy;)Lcom/audible/mobile/download/service/similarity/SimilarityDownloadRequest;
    .locals 8

    .line 31
    invoke-interface {p2}, Lcom/audible/mobile/download/service/LibraryDownloadRequestData;->getAdditionalPayload()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/audible/mobile/domain/Similarity;->valueOf(Ljava/lang/String;)Lcom/audible/mobile/domain/Similarity;

    move-result-object p1

    .line 32
    invoke-interface {p2}, Lcom/audible/mobile/download/service/LibraryDownloadRequestData;->getCustomerId()Lcom/audible/mobile/domain/CustomerId;

    move-result-object v0

    .line 33
    invoke-interface {p2}, Lcom/audible/mobile/download/service/LibraryDownloadRequestData;->getAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v1

    .line 34
    new-instance v7, Lcom/audible/mobile/download/service/similarity/SimilarityDownloadRequest$Key;

    invoke-direct {v7, v0, v1, p1}, Lcom/audible/mobile/download/service/similarity/SimilarityDownloadRequest$Key;-><init>(Lcom/audible/mobile/domain/CustomerId;Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/Similarity;)V

    .line 35
    new-instance v6, Lcom/audible/mobile/download/networking/BroadcastAndCleanUpInMemoryDownloadHandler;

    invoke-direct {v6, p2}, Lcom/audible/mobile/download/networking/BroadcastAndCleanUpInMemoryDownloadHandler;-><init>(Lcom/audible/mobile/download/service/LibraryDownloadRequestData;)V

    .line 37
    new-instance v3, Lcom/audible/mobile/download/service/similarity/SimilarityDownloadCommand;

    invoke-virtual {p0}, Lcom/audible/mobile/downloader/factory/AbstractDownloadRequestFactory;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v7}, Lcom/audible/mobile/download/service/similarity/SimilarityDownloadRequest$Key;->getAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object p2

    invoke-direct {v3, p1, p2}, Lcom/audible/mobile/download/service/similarity/SimilarityDownloadCommand;-><init>(Landroid/content/Context;Lcom/audible/mobile/domain/Asin;)V

    .line 38
    new-instance p1, Lcom/audible/mobile/download/service/similarity/SimilarityDownloadRequest;

    move-object v2, p1

    move-object v4, p4

    move-object v5, p3

    invoke-direct/range {v2 .. v7}, Lcom/audible/mobile/download/service/similarity/SimilarityDownloadRequest;-><init>(Lcom/audible/mobile/downloader/interfaces/DownloadCommand;Lcom/audible/mobile/downloader/policy/NetworkStatePolicy;Lcom/audible/mobile/downloader/policy/RetryPolicy;Lcom/audible/mobile/downloader/interfaces/DownloadHandler;Lcom/audible/mobile/download/service/similarity/SimilarityDownloadRequest$Key;)V

    return-object p1
.end method

.method protected bridge synthetic newDownloadRequestInternal(Lcom/audible/mobile/downloader/interfaces/DownloadHandler;Lcom/audible/mobile/downloader/factory/DownloadRequestData;Lcom/audible/mobile/downloader/policy/RetryPolicy;Lcom/audible/mobile/downloader/policy/NetworkStatePolicy;)Lcom/audible/mobile/downloader/interfaces/DownloadRequest;
    .locals 0

    .line 21
    check-cast p2, Lcom/audible/mobile/download/service/LibraryDownloadRequestData;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/audible/mobile/download/service/similarity/SimilarityDownloadRequestFactoryImpl;->newDownloadRequestInternal(Lcom/audible/mobile/downloader/interfaces/DownloadHandler;Lcom/audible/mobile/download/service/LibraryDownloadRequestData;Lcom/audible/mobile/downloader/policy/RetryPolicy;Lcom/audible/mobile/downloader/policy/NetworkStatePolicy;)Lcom/audible/mobile/download/service/similarity/SimilarityDownloadRequest;

    move-result-object p1

    return-object p1
.end method
