.class public final Lcom/audible/mobile/download/service/PositionSyncDownloadService;
.super Lcom/audible/mobile/download/service/BaseDownloadService;
.source "PositionSyncDownloadService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/audible/mobile/download/service/BaseDownloadService<",
        "Lcom/audible/mobile/download/service/sync/PositionSyncDownloadRequest;",
        "Lcom/audible/mobile/download/service/sync/PositionSyncDownloadRequest$Key;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    sget-object v0, Lcom/audible/mobile/download/ContentType;->PositionSync:Lcom/audible/mobile/download/ContentType;

    invoke-direct {p0, v0}, Lcom/audible/mobile/download/service/BaseDownloadService;-><init>(Lcom/audible/mobile/download/ContentType;)V

    return-void
.end method


# virtual methods
.method protected newDownloadRequestFactory(Lcom/audible/mobile/catalog/filesystem/ContentTypeStorageLocationStrategy;Lcom/audible/mobile/download/lowstorage/LowStorageStrategy;)Lcom/audible/mobile/downloader/factory/DownloadRequestFactory;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/mobile/catalog/filesystem/ContentTypeStorageLocationStrategy;",
            "Lcom/audible/mobile/download/lowstorage/LowStorageStrategy;",
            ")",
            "Lcom/audible/mobile/downloader/factory/DownloadRequestFactory<",
            "Lcom/audible/mobile/download/service/sync/PositionSyncDownloadRequest;",
            "Lcom/audible/mobile/download/service/LibraryDownloadRequestData;",
            ">;"
        }
    .end annotation

    .line 24
    new-instance v0, Lcom/audible/mobile/download/service/sync/PositionSyncDownloadRequestFactory;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/audible/mobile/download/service/BaseDownloadService;->getUrlResolutionStrategy()Lcom/audible/mobile/download/UrlResolutionStrategy;

    move-result-object v2

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/audible/mobile/download/service/sync/PositionSyncDownloadRequestFactory;-><init>(Landroid/content/Context;Lcom/audible/mobile/catalog/filesystem/ContentTypeStorageLocationStrategy;Lcom/audible/mobile/download/lowstorage/LowStorageStrategy;Lcom/audible/mobile/download/UrlResolutionStrategy;)V

    return-object v0
.end method
