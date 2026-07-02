.class public final Lcom/audible/mobile/download/service/sync/PositionSyncDownloadRequestFactory;
.super Lcom/audible/mobile/downloader/factory/AbstractDownloadRequestFactory;
.source "PositionSyncDownloadRequestFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/audible/mobile/downloader/factory/AbstractDownloadRequestFactory<",
        "Lcom/audible/mobile/download/service/sync/PositionSyncDownloadRequest;",
        "Lcom/audible/mobile/download/service/LibraryDownloadRequestData;",
        ">;"
    }
.end annotation


# instance fields
.field private final urlResolutionStrategy:Lcom/audible/mobile/download/UrlResolutionStrategy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/audible/mobile/catalog/filesystem/ContentTypeStorageLocationStrategy;Lcom/audible/mobile/download/lowstorage/LowStorageStrategy;Lcom/audible/mobile/download/UrlResolutionStrategy;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/audible/mobile/downloader/factory/AbstractDownloadRequestFactory;-><init>(Landroid/content/Context;Lcom/audible/mobile/catalog/filesystem/ContentTypeStorageLocationStrategy;Lcom/audible/mobile/download/lowstorage/LowStorageStrategy;)V

    .line 41
    iput-object p4, p0, Lcom/audible/mobile/download/service/sync/PositionSyncDownloadRequestFactory;->urlResolutionStrategy:Lcom/audible/mobile/download/UrlResolutionStrategy;

    return-void
.end method


# virtual methods
.method protected newDownloadRequestInternal(Lcom/audible/mobile/downloader/interfaces/DownloadHandler;Lcom/audible/mobile/download/service/LibraryDownloadRequestData;Lcom/audible/mobile/downloader/policy/RetryPolicy;Lcom/audible/mobile/downloader/policy/NetworkStatePolicy;)Lcom/audible/mobile/download/service/sync/PositionSyncDownloadRequest;
    .locals 16

    .line 48
    new-instance v0, Lcom/audible/mobile/domain/ImmutableACRImpl;

    invoke-interface/range {p2 .. p2}, Lcom/audible/mobile/download/service/LibraryDownloadRequestData;->getAdditionalPayload()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/audible/mobile/domain/ImmutableACRImpl;-><init>(Ljava/lang/String;)V

    move-object/from16 v1, p0

    .line 50
    iget-object v2, v1, Lcom/audible/mobile/download/service/sync/PositionSyncDownloadRequestFactory;->urlResolutionStrategy:Lcom/audible/mobile/download/UrlResolutionStrategy;

    invoke-interface/range {p2 .. p2}, Lcom/audible/mobile/downloader/factory/DownloadRequestData;->getType()Lcom/audible/mobile/downloader/factory/DownloadType;

    move-result-object v3

    check-cast v3, Lcom/audible/mobile/download/ContentType;

    invoke-interface/range {p2 .. p2}, Lcom/audible/mobile/download/service/LibraryDownloadRequestData;->getAdditionalPayload()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/audible/mobile/download/UrlResolutionStrategy;->resolve(Lcom/audible/mobile/download/ContentType;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2

    .line 51
    new-instance v4, Lcom/audible/mobile/downloader/BaseGETDownloadCommand;

    const/4 v3, 0x0

    invoke-direct {v4, v2, v3}, Lcom/audible/mobile/downloader/BaseGETDownloadCommand;-><init>(Ljava/net/URL;Z)V

    .line 53
    new-instance v8, Lcom/audible/mobile/download/service/sync/PositionSyncDownloadRequest$Key;

    invoke-direct {v8, v0}, Lcom/audible/mobile/download/service/sync/PositionSyncDownloadRequest$Key;-><init>(Lcom/audible/mobile/domain/ACR;)V

    .line 54
    invoke-virtual/range {p0 .. p0}, Lcom/audible/mobile/downloader/factory/AbstractDownloadRequestFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/audible/mobile/download/R$string;->positionSyncDownloadDestinationPattern:I

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    invoke-interface/range {p2 .. p2}, Lcom/audible/mobile/download/service/LibraryDownloadRequestData;->getAdditionalPayload()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {v0, v2, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-virtual/range {p0 .. p0}, Lcom/audible/mobile/downloader/factory/AbstractDownloadRequestFactory;->getContentTypeStorageLocationStrategy()Lcom/audible/mobile/catalog/filesystem/ContentTypeStorageLocationStrategy;

    move-result-object v2

    sget-object v3, Lcom/audible/mobile/download/ContentType;->PositionSync:Lcom/audible/mobile/download/ContentType;

    invoke-interface {v2, v3, v0}, Lcom/audible/mobile/catalog/filesystem/ContentTypeStorageLocationStrategy;->getStorageLocationFor(Lcom/audible/mobile/download/ContentType;Ljava/lang/String;)Ljava/io/File;

    move-result-object v15

    .line 57
    new-instance v0, Lcom/audible/mobile/downloader/handler/FileDownloadHandler;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v15, v5}, Lcom/audible/mobile/downloader/handler/FileDownloadHandler;-><init>(Lcom/audible/mobile/downloader/interfaces/DownloadHandler;Ljava/io/File;Z)V

    .line 58
    new-instance v14, Lcom/audible/mobile/download/networking/DatabaseDownloadHandler;

    invoke-virtual/range {p0 .. p0}, Lcom/audible/mobile/downloader/factory/AbstractDownloadRequestFactory;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface/range {p2 .. p2}, Lcom/audible/mobile/download/service/LibraryDownloadRequestData;->getDownloadUri()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v14, v0, v2, v3}, Lcom/audible/mobile/download/networking/DatabaseDownloadHandler;-><init>(Lcom/audible/mobile/downloader/handler/FileDownloadHandler;Landroid/content/Context;Landroid/net/Uri;)V

    .line 59
    new-instance v0, Lcom/audible/mobile/download/networking/CatalogFileSystemDownloadHandler;

    invoke-virtual/range {p0 .. p0}, Lcom/audible/mobile/downloader/factory/AbstractDownloadRequestFactory;->getContext()Landroid/content/Context;

    move-result-object v10

    sget-object v11, Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;->POSITION_SYNC:Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;

    .line 60
    invoke-interface/range {p2 .. p2}, Lcom/audible/mobile/download/service/LibraryDownloadRequestData;->getDownloadRequest()Lcom/audible/mobile/download/Request;

    move-result-object v12

    move-object v9, v0

    move-object v13, v15

    invoke-direct/range {v9 .. v14}, Lcom/audible/mobile/download/networking/CatalogFileSystemDownloadHandler;-><init>(Landroid/content/Context;Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;Lcom/audible/mobile/download/Request;Ljava/io/File;Lcom/audible/mobile/downloader/interfaces/DownloadHandler;)V

    .line 61
    new-instance v2, Lcom/audible/mobile/download/networking/BroadcastDownloadHandler;

    invoke-virtual/range {p0 .. p0}, Lcom/audible/mobile/downloader/factory/AbstractDownloadRequestFactory;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-interface/range {p2 .. p2}, Lcom/audible/mobile/download/service/LibraryDownloadRequestData;->getDownloadRequest()Lcom/audible/mobile/download/Request;

    move-result-object v12

    .line 62
    invoke-interface/range {p2 .. p2}, Lcom/audible/mobile/download/service/LibraryDownloadRequestData;->getBaseDownloadService()Lcom/audible/mobile/download/service/BaseDownloadService;

    move-result-object v13

    invoke-interface/range {p2 .. p2}, Lcom/audible/mobile/download/service/LibraryDownloadRequestData;->getStartId()I

    move-result v14

    move-object v9, v2

    move-object v10, v0

    invoke-direct/range {v9 .. v15}, Lcom/audible/mobile/download/networking/BroadcastDownloadHandler;-><init>(Lcom/audible/mobile/downloader/interfaces/DownloadHandler;Landroid/content/Context;Lcom/audible/mobile/download/Request;Lcom/audible/mobile/download/service/BaseDownloadService;ILjava/io/File;)V

    .line 63
    new-instance v7, Lcom/audible/mobile/download/networking/LowStorageAwareDownloadHandler;

    invoke-virtual/range {p0 .. p0}, Lcom/audible/mobile/downloader/factory/AbstractDownloadRequestFactory;->getLowStorageStrategy()Lcom/audible/mobile/download/lowstorage/LowStorageStrategy;

    move-result-object v0

    sget-object v3, Lcom/audible/mobile/download/ContentType;->PositionSync:Lcom/audible/mobile/download/ContentType;

    invoke-direct {v7, v2, v0, v3}, Lcom/audible/mobile/download/networking/LowStorageAwareDownloadHandler;-><init>(Lcom/audible/mobile/downloader/interfaces/DownloadHandler;Lcom/audible/mobile/download/lowstorage/LowStorageStrategy;Lcom/audible/mobile/download/ContentType;)V

    .line 65
    new-instance v0, Lcom/audible/mobile/download/service/sync/PositionSyncDownloadRequest;

    move-object v3, v0

    move-object/from16 v5, p4

    move-object/from16 v6, p3

    invoke-direct/range {v3 .. v8}, Lcom/audible/mobile/download/service/sync/PositionSyncDownloadRequest;-><init>(Lcom/audible/mobile/downloader/interfaces/DownloadCommand;Lcom/audible/mobile/downloader/policy/NetworkStatePolicy;Lcom/audible/mobile/downloader/policy/RetryPolicy;Lcom/audible/mobile/downloader/interfaces/DownloadHandler;Lcom/audible/mobile/download/service/sync/PositionSyncDownloadRequest$Key;)V

    return-object v0
.end method

.method protected bridge synthetic newDownloadRequestInternal(Lcom/audible/mobile/downloader/interfaces/DownloadHandler;Lcom/audible/mobile/downloader/factory/DownloadRequestData;Lcom/audible/mobile/downloader/policy/RetryPolicy;Lcom/audible/mobile/downloader/policy/NetworkStatePolicy;)Lcom/audible/mobile/downloader/interfaces/DownloadRequest;
    .locals 0

    .line 33
    check-cast p2, Lcom/audible/mobile/download/service/LibraryDownloadRequestData;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/audible/mobile/download/service/sync/PositionSyncDownloadRequestFactory;->newDownloadRequestInternal(Lcom/audible/mobile/downloader/interfaces/DownloadHandler;Lcom/audible/mobile/download/service/LibraryDownloadRequestData;Lcom/audible/mobile/downloader/policy/RetryPolicy;Lcom/audible/mobile/downloader/policy/NetworkStatePolicy;)Lcom/audible/mobile/download/service/sync/PositionSyncDownloadRequest;

    move-result-object p1

    return-object p1
.end method
