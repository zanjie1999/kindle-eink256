.class public Lcom/audible/mobile/download/service/CoverArtDownloadService;
.super Lcom/audible/mobile/download/service/BaseDownloadService;
.source "CoverArtDownloadService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/audible/mobile/download/service/BaseDownloadService<",
        "Lcom/audible/mobile/download/service/coverart/CoverArtDownloadRequest;",
        "Lcom/audible/mobile/download/service/coverart/CoverArtDownloadRequest$Key;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    sget-object v0, Lcom/audible/mobile/download/ContentType;->CoverArt:Lcom/audible/mobile/download/ContentType;

    invoke-direct {p0, v0}, Lcom/audible/mobile/download/service/BaseDownloadService;-><init>(Lcom/audible/mobile/download/ContentType;)V

    return-void
.end method


# virtual methods
.method protected newDownloadRequestFactory(Lcom/audible/mobile/catalog/filesystem/ContentTypeStorageLocationStrategy;Lcom/audible/mobile/download/lowstorage/LowStorageStrategy;)Lcom/audible/mobile/downloader/factory/DownloadRequestFactory;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/mobile/catalog/filesystem/ContentTypeStorageLocationStrategy;",
            "Lcom/audible/mobile/download/lowstorage/LowStorageStrategy;",
            ")",
            "Lcom/audible/mobile/downloader/factory/DownloadRequestFactory<",
            "Lcom/audible/mobile/download/service/coverart/CoverArtDownloadRequest;",
            "Lcom/audible/mobile/download/service/LibraryDownloadRequestData;",
            ">;"
        }
    .end annotation

    .line 23
    new-instance v7, Lcom/audible/mobile/download/service/coverart/CoverArtDownloadRequestFactoryImpl;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/audible/mobile/download/service/BaseDownloadService;->getUrlResolutionStrategy()Lcom/audible/mobile/download/UrlResolutionStrategy;

    move-result-object v4

    sget v5, Lcom/audible/mobile/download/R$dimen;->defaultCoverArtDownloadSize:I

    sget v6, Lcom/audible/mobile/download/R$string;->coverArtDownloadDestinationPattern:I

    move-object v0, v7

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/audible/mobile/download/service/coverart/CoverArtDownloadRequestFactoryImpl;-><init>(Landroid/content/Context;Lcom/audible/mobile/catalog/filesystem/ContentTypeStorageLocationStrategy;Lcom/audible/mobile/download/lowstorage/LowStorageStrategy;Lcom/audible/mobile/download/UrlResolutionStrategy;II)V

    return-object v7
.end method
