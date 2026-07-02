.class public Lcom/audible/mobile/download/service/SidecarDownloadService;
.super Lcom/audible/mobile/download/service/BaseDownloadService;
.source "SidecarDownloadService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/audible/mobile/download/service/BaseDownloadService<",
        "Lcom/audible/mobile/download/service/sidecar/SidecarDownloadRequest;",
        "Lcom/audible/mobile/download/service/sidecar/SidecarDownloadRequest$Key;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    sget-object v0, Lcom/audible/mobile/download/ContentType;->Sidecar:Lcom/audible/mobile/download/ContentType;

    invoke-direct {p0, v0}, Lcom/audible/mobile/download/service/BaseDownloadService;-><init>(Lcom/audible/mobile/download/ContentType;)V

    return-void
.end method


# virtual methods
.method protected newDownloadRequestFactory(Lcom/audible/mobile/catalog/filesystem/ContentTypeStorageLocationStrategy;Lcom/audible/mobile/download/lowstorage/LowStorageStrategy;)Lcom/audible/mobile/downloader/factory/DownloadRequestFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/mobile/catalog/filesystem/ContentTypeStorageLocationStrategy;",
            "Lcom/audible/mobile/download/lowstorage/LowStorageStrategy;",
            ")",
            "Lcom/audible/mobile/downloader/factory/DownloadRequestFactory<",
            "Lcom/audible/mobile/download/service/sidecar/SidecarDownloadRequest;",
            "Lcom/audible/mobile/download/service/LibraryDownloadRequestData;",
            ">;"
        }
    .end annotation

    .line 22
    new-instance p2, Lcom/audible/mobile/download/service/sidecar/SidecarDownloadRequestFactoryImpl;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/audible/mobile/download/service/sidecar/SidecarDownloadRequestFactoryImpl;-><init>(Landroid/content/Context;Lcom/audible/mobile/catalog/filesystem/ContentTypeStorageLocationStrategy;)V

    return-object p2
.end method
