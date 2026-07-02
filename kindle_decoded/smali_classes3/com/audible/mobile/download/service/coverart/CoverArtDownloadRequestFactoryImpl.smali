.class public final Lcom/audible/mobile/download/service/coverart/CoverArtDownloadRequestFactoryImpl;
.super Lcom/audible/mobile/downloader/factory/AbstractDownloadRequestFactory;
.source "CoverArtDownloadRequestFactoryImpl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/audible/mobile/downloader/factory/AbstractDownloadRequestFactory<",
        "Lcom/audible/mobile/download/service/coverart/CoverArtDownloadRequest;",
        "Lcom/audible/mobile/download/service/LibraryDownloadRequestData;",
        ">;"
    }
.end annotation


# instance fields
.field private final coverArtLocationPatternResourceId:I

.field private final coverArtSize:I

.field private final urlResolutionStrategy:Lcom/audible/mobile/download/UrlResolutionStrategy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/audible/mobile/catalog/filesystem/ContentTypeStorageLocationStrategy;Lcom/audible/mobile/download/lowstorage/LowStorageStrategy;Lcom/audible/mobile/download/UrlResolutionStrategy;II)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/audible/mobile/downloader/factory/AbstractDownloadRequestFactory;-><init>(Landroid/content/Context;Lcom/audible/mobile/catalog/filesystem/ContentTypeStorageLocationStrategy;Lcom/audible/mobile/download/lowstorage/LowStorageStrategy;)V

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/audible/mobile/download/service/coverart/CoverArtDownloadRequestFactoryImpl;->coverArtSize:I

    .line 45
    iput p6, p0, Lcom/audible/mobile/download/service/coverart/CoverArtDownloadRequestFactoryImpl;->coverArtLocationPatternResourceId:I

    .line 46
    iput-object p4, p0, Lcom/audible/mobile/download/service/coverart/CoverArtDownloadRequestFactoryImpl;->urlResolutionStrategy:Lcom/audible/mobile/download/UrlResolutionStrategy;

    return-void
.end method

.method private determineCoverArtSize(Lcom/audible/mobile/download/Request;)I
    .locals 1

    .line 80
    invoke-virtual {p1}, Lcom/audible/mobile/download/Request;->getOptionalPayload()Ljava/lang/String;

    move-result-object p1

    const/4 v0, -0x1

    .line 81
    invoke-static {p1, v0}, Lcom/audible/mobile/util/NumberUtils;->toInt(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 82
    :cond_0
    iget p1, p0, Lcom/audible/mobile/download/service/coverart/CoverArtDownloadRequestFactoryImpl;->coverArtSize:I

    :goto_0
    return p1
.end method


# virtual methods
.method protected newDownloadRequestInternal(Lcom/audible/mobile/downloader/interfaces/DownloadHandler;Lcom/audible/mobile/download/service/LibraryDownloadRequestData;Lcom/audible/mobile/downloader/policy/RetryPolicy;Lcom/audible/mobile/downloader/policy/NetworkStatePolicy;)Lcom/audible/mobile/download/service/coverart/CoverArtDownloadRequest;
    .locals 16

    move-object/from16 v0, p0

    .line 53
    invoke-interface/range {p2 .. p2}, Lcom/audible/mobile/download/service/LibraryDownloadRequestData;->getDownloadRequest()Lcom/audible/mobile/download/Request;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/audible/mobile/download/service/coverart/CoverArtDownloadRequestFactoryImpl;->determineCoverArtSize(Lcom/audible/mobile/download/Request;)I

    move-result v1

    .line 55
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 56
    invoke-interface/range {p2 .. p2}, Lcom/audible/mobile/download/service/LibraryDownloadRequestData;->getAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v3

    invoke-interface {v3}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "asin"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "image_size"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v3, v0, Lcom/audible/mobile/download/service/coverart/CoverArtDownloadRequestFactoryImpl;->urlResolutionStrategy:Lcom/audible/mobile/download/UrlResolutionStrategy;

    invoke-interface/range {p2 .. p2}, Lcom/audible/mobile/downloader/factory/DownloadRequestData;->getType()Lcom/audible/mobile/downloader/factory/DownloadType;

    move-result-object v4

    check-cast v4, Lcom/audible/mobile/download/ContentType;

    invoke-interface {v3, v4, v2}, Lcom/audible/mobile/download/UrlResolutionStrategy;->resolve(Lcom/audible/mobile/download/ContentType;Ljava/util/Map;)Ljava/net/URL;

    move-result-object v2

    .line 60
    new-instance v4, Lcom/audible/mobile/downloader/BaseGETDownloadCommand;

    invoke-direct {v4, v2}, Lcom/audible/mobile/downloader/BaseGETDownloadCommand;-><init>(Ljava/net/URL;)V

    .line 62
    new-instance v8, Lcom/audible/mobile/download/service/coverart/CoverArtDownloadRequest$Key;

    invoke-interface/range {p2 .. p2}, Lcom/audible/mobile/download/service/LibraryDownloadRequestData;->getAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v2

    invoke-direct {v8, v2}, Lcom/audible/mobile/download/service/coverart/CoverArtDownloadRequest$Key;-><init>(Lcom/audible/mobile/domain/Asin;)V

    .line 63
    invoke-virtual/range {p0 .. p0}, Lcom/audible/mobile/downloader/factory/AbstractDownloadRequestFactory;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, v0, Lcom/audible/mobile/download/service/coverart/CoverArtDownloadRequestFactoryImpl;->coverArtLocationPatternResourceId:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface/range {p2 .. p2}, Lcom/audible/mobile/download/service/LibraryDownloadRequestData;->getAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v6

    invoke-interface {v6}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v6, 0x1

    aput-object v1, v5, v6

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 64
    invoke-virtual/range {p0 .. p0}, Lcom/audible/mobile/downloader/factory/AbstractDownloadRequestFactory;->getContentTypeStorageLocationStrategy()Lcom/audible/mobile/catalog/filesystem/ContentTypeStorageLocationStrategy;

    move-result-object v2

    invoke-interface/range {p2 .. p2}, Lcom/audible/mobile/downloader/factory/DownloadRequestData;->getType()Lcom/audible/mobile/downloader/factory/DownloadType;

    move-result-object v3

    check-cast v3, Lcom/audible/mobile/download/ContentType;

    invoke-interface {v2, v3, v1}, Lcom/audible/mobile/catalog/filesystem/ContentTypeStorageLocationStrategy;->getStorageLocationFor(Lcom/audible/mobile/download/ContentType;Ljava/lang/String;)Ljava/io/File;

    move-result-object v15

    .line 67
    new-instance v1, Lcom/audible/mobile/downloader/handler/FileDownloadHandler;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v15, v6}, Lcom/audible/mobile/downloader/handler/FileDownloadHandler;-><init>(Lcom/audible/mobile/downloader/interfaces/DownloadHandler;Ljava/io/File;Z)V

    .line 68
    new-instance v14, Lcom/audible/mobile/download/networking/DatabaseDownloadHandler;

    invoke-virtual/range {p0 .. p0}, Lcom/audible/mobile/downloader/factory/AbstractDownloadRequestFactory;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface/range {p2 .. p2}, Lcom/audible/mobile/download/service/LibraryDownloadRequestData;->getDownloadUri()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v14, v1, v2, v3}, Lcom/audible/mobile/download/networking/DatabaseDownloadHandler;-><init>(Lcom/audible/mobile/downloader/handler/FileDownloadHandler;Landroid/content/Context;Landroid/net/Uri;)V

    .line 69
    new-instance v1, Lcom/audible/mobile/download/networking/CatalogFileSystemDownloadHandler;

    invoke-virtual/range {p0 .. p0}, Lcom/audible/mobile/downloader/factory/AbstractDownloadRequestFactory;->getContext()Landroid/content/Context;

    move-result-object v10

    sget-object v11, Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;->COVER_ART:Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;

    .line 70
    invoke-interface/range {p2 .. p2}, Lcom/audible/mobile/download/service/LibraryDownloadRequestData;->getDownloadRequest()Lcom/audible/mobile/download/Request;

    move-result-object v12

    move-object v9, v1

    move-object v13, v15

    invoke-direct/range {v9 .. v14}, Lcom/audible/mobile/download/networking/CatalogFileSystemDownloadHandler;-><init>(Landroid/content/Context;Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;Lcom/audible/mobile/download/Request;Ljava/io/File;Lcom/audible/mobile/downloader/interfaces/DownloadHandler;)V

    .line 71
    new-instance v2, Lcom/audible/mobile/download/networking/BroadcastDownloadHandler;

    invoke-virtual/range {p0 .. p0}, Lcom/audible/mobile/downloader/factory/AbstractDownloadRequestFactory;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-interface/range {p2 .. p2}, Lcom/audible/mobile/download/service/LibraryDownloadRequestData;->getDownloadRequest()Lcom/audible/mobile/download/Request;

    move-result-object v12

    .line 72
    invoke-interface/range {p2 .. p2}, Lcom/audible/mobile/download/service/LibraryDownloadRequestData;->getBaseDownloadService()Lcom/audible/mobile/download/service/BaseDownloadService;

    move-result-object v13

    invoke-interface/range {p2 .. p2}, Lcom/audible/mobile/download/service/LibraryDownloadRequestData;->getStartId()I

    move-result v14

    move-object v9, v2

    move-object v10, v1

    invoke-direct/range {v9 .. v15}, Lcom/audible/mobile/download/networking/BroadcastDownloadHandler;-><init>(Lcom/audible/mobile/downloader/interfaces/DownloadHandler;Landroid/content/Context;Lcom/audible/mobile/download/Request;Lcom/audible/mobile/download/service/BaseDownloadService;ILjava/io/File;)V

    .line 73
    new-instance v7, Lcom/audible/mobile/download/networking/LowStorageAwareDownloadHandler;

    invoke-virtual/range {p0 .. p0}, Lcom/audible/mobile/downloader/factory/AbstractDownloadRequestFactory;->getLowStorageStrategy()Lcom/audible/mobile/download/lowstorage/LowStorageStrategy;

    move-result-object v1

    sget-object v3, Lcom/audible/mobile/download/ContentType;->CoverArt:Lcom/audible/mobile/download/ContentType;

    invoke-direct {v7, v2, v1, v3}, Lcom/audible/mobile/download/networking/LowStorageAwareDownloadHandler;-><init>(Lcom/audible/mobile/downloader/interfaces/DownloadHandler;Lcom/audible/mobile/download/lowstorage/LowStorageStrategy;Lcom/audible/mobile/download/ContentType;)V

    .line 75
    new-instance v1, Lcom/audible/mobile/download/service/coverart/CoverArtDownloadRequest;

    move-object v3, v1

    move-object/from16 v5, p4

    move-object/from16 v6, p3

    invoke-direct/range {v3 .. v8}, Lcom/audible/mobile/download/service/coverart/CoverArtDownloadRequest;-><init>(Lcom/audible/mobile/downloader/interfaces/DownloadCommand;Lcom/audible/mobile/downloader/policy/NetworkStatePolicy;Lcom/audible/mobile/downloader/policy/RetryPolicy;Lcom/audible/mobile/downloader/interfaces/DownloadHandler;Lcom/audible/mobile/download/service/coverart/CoverArtDownloadRequest$Key;)V

    return-object v1
.end method

.method protected bridge synthetic newDownloadRequestInternal(Lcom/audible/mobile/downloader/interfaces/DownloadHandler;Lcom/audible/mobile/downloader/factory/DownloadRequestData;Lcom/audible/mobile/downloader/policy/RetryPolicy;Lcom/audible/mobile/downloader/policy/NetworkStatePolicy;)Lcom/audible/mobile/downloader/interfaces/DownloadRequest;
    .locals 0

    .line 33
    check-cast p2, Lcom/audible/mobile/download/service/LibraryDownloadRequestData;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/audible/mobile/download/service/coverart/CoverArtDownloadRequestFactoryImpl;->newDownloadRequestInternal(Lcom/audible/mobile/downloader/interfaces/DownloadHandler;Lcom/audible/mobile/download/service/LibraryDownloadRequestData;Lcom/audible/mobile/downloader/policy/RetryPolicy;Lcom/audible/mobile/downloader/policy/NetworkStatePolicy;)Lcom/audible/mobile/download/service/coverart/CoverArtDownloadRequest;

    move-result-object p1

    return-object p1
.end method
