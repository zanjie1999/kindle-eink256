.class public final Lcom/audible/mobile/download/service/SampleAudiobookDownloadService;
.super Lcom/audible/mobile/download/service/BaseDownloadService;
.source "SampleAudiobookDownloadService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/audible/mobile/download/service/BaseDownloadService<",
        "Lcom/audible/mobile/download/service/sampleaudiobook/SampleAudiobookDownloadRequest;",
        "Lcom/audible/mobile/download/service/sampleaudiobook/SampleAudiobookDownloadRequest$Key;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    sget-object v0, Lcom/audible/mobile/download/ContentType;->SampleAudiobook:Lcom/audible/mobile/download/ContentType;

    invoke-direct {p0, v0}, Lcom/audible/mobile/download/service/BaseDownloadService;-><init>(Lcom/audible/mobile/download/ContentType;)V

    return-void
.end method


# virtual methods
.method protected newDownloadRequestFactory(Lcom/audible/mobile/catalog/filesystem/ContentTypeStorageLocationStrategy;Lcom/audible/mobile/download/lowstorage/LowStorageStrategy;)Lcom/audible/mobile/downloader/factory/DownloadRequestFactory;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/mobile/catalog/filesystem/ContentTypeStorageLocationStrategy;",
            "Lcom/audible/mobile/download/lowstorage/LowStorageStrategy;",
            ")",
            "Lcom/audible/mobile/downloader/factory/DownloadRequestFactory<",
            "Lcom/audible/mobile/download/service/sampleaudiobook/SampleAudiobookDownloadRequest;",
            "Lcom/audible/mobile/download/service/LibraryDownloadRequestData;",
            ">;"
        }
    .end annotation

    .line 25
    invoke-static {p0}, Lcom/audible/mobile/framework/ComponentRegistry;->getInstance(Landroid/content/Context;)Lcom/audible/mobile/framework/ComponentRegistry;

    move-result-object v0

    const-class v1, Lcom/audible/mobile/identity/IdentityManager;

    invoke-virtual {v0, v1}, Lcom/audible/mobile/framework/ComponentRegistry;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/audible/mobile/identity/IdentityManager;

    .line 26
    new-instance v0, Lcom/audible/mobile/download/service/sampleaudiobook/SampleAudiobookDownloadRequestFactoryImpl;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 27
    invoke-virtual {p0}, Lcom/audible/mobile/download/service/BaseDownloadService;->getUrlResolutionStrategy()Lcom/audible/mobile/download/UrlResolutionStrategy;

    move-result-object v6

    move-object v1, v0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/audible/mobile/download/service/sampleaudiobook/SampleAudiobookDownloadRequestFactoryImpl;-><init>(Landroid/content/Context;Lcom/audible/mobile/identity/IdentityManager;Lcom/audible/mobile/catalog/filesystem/ContentTypeStorageLocationStrategy;Lcom/audible/mobile/download/lowstorage/LowStorageStrategy;Lcom/audible/mobile/download/UrlResolutionStrategy;)V

    return-object v0
.end method
