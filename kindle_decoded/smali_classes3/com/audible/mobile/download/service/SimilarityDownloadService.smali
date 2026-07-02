.class public Lcom/audible/mobile/download/service/SimilarityDownloadService;
.super Lcom/audible/mobile/download/service/BaseDownloadService;
.source "SimilarityDownloadService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/audible/mobile/download/service/BaseDownloadService<",
        "Lcom/audible/mobile/download/service/similarity/SimilarityDownloadRequest;",
        "Lcom/audible/mobile/download/service/similarity/SimilarityDownloadRequest$Key;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    sget-object v0, Lcom/audible/mobile/download/ContentType;->Similarity:Lcom/audible/mobile/download/ContentType;

    invoke-direct {p0, v0}, Lcom/audible/mobile/download/service/BaseDownloadService;-><init>(Lcom/audible/mobile/download/ContentType;)V

    return-void
.end method


# virtual methods
.method protected newDownloadRequestFactory(Lcom/audible/mobile/catalog/filesystem/ContentTypeStorageLocationStrategy;Lcom/audible/mobile/download/lowstorage/LowStorageStrategy;)Lcom/audible/mobile/downloader/factory/DownloadRequestFactory;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/mobile/catalog/filesystem/ContentTypeStorageLocationStrategy;",
            "Lcom/audible/mobile/download/lowstorage/LowStorageStrategy;",
            ")",
            "Lcom/audible/mobile/downloader/factory/DownloadRequestFactory<",
            "Lcom/audible/mobile/download/service/similarity/SimilarityDownloadRequest;",
            "Lcom/audible/mobile/download/service/LibraryDownloadRequestData;",
            ">;"
        }
    .end annotation

    .line 22
    new-instance p1, Lcom/audible/mobile/download/service/similarity/SimilarityDownloadRequestFactoryImpl;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/audible/mobile/download/service/similarity/SimilarityDownloadRequestFactoryImpl;-><init>(Landroid/content/Context;)V

    return-object p1
.end method
