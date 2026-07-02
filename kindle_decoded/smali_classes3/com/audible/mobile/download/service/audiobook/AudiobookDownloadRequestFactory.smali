.class public Lcom/audible/mobile/download/service/audiobook/AudiobookDownloadRequestFactory;
.super Lcom/audible/mobile/downloader/factory/AbstractDownloadRequestFactory;
.source "AudiobookDownloadRequestFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/audible/mobile/downloader/factory/AbstractDownloadRequestFactory<",
        "Lcom/audible/mobile/download/service/audiobook/AudiobookDownloadRequest;",
        "Lcom/audible/mobile/download/service/LibraryDownloadRequestData;",
        ">;"
    }
.end annotation


# instance fields
.field private final identityManager:Lcom/audible/mobile/identity/IdentityManager;

.field private final urlResolutionStrategy:Lcom/audible/mobile/download/UrlResolutionStrategy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/audible/mobile/identity/IdentityManager;Lcom/audible/mobile/catalog/filesystem/ContentTypeStorageLocationStrategy;Lcom/audible/mobile/download/lowstorage/LowStorageStrategy;Lcom/audible/mobile/download/UrlResolutionStrategy;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p3, p4}, Lcom/audible/mobile/downloader/factory/AbstractDownloadRequestFactory;-><init>(Landroid/content/Context;Lcom/audible/mobile/catalog/filesystem/ContentTypeStorageLocationStrategy;Lcom/audible/mobile/download/lowstorage/LowStorageStrategy;)V

    .line 44
    iput-object p2, p0, Lcom/audible/mobile/download/service/audiobook/AudiobookDownloadRequestFactory;->identityManager:Lcom/audible/mobile/identity/IdentityManager;

    .line 45
    iput-object p5, p0, Lcom/audible/mobile/download/service/audiobook/AudiobookDownloadRequestFactory;->urlResolutionStrategy:Lcom/audible/mobile/download/UrlResolutionStrategy;

    return-void
.end method

.method private constructUrlParameters(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/Format;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/mobile/domain/Asin;",
            "Lcom/audible/mobile/domain/Format;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 83
    invoke-interface {p1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v1, "key"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    invoke-virtual {p2}, Lcom/audible/mobile/domain/Format;->getCodec()Lcom/audible/mobile/domain/Codec;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    const-string p2, "codec"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method protected newDownloadRequestInternal(Lcom/audible/mobile/downloader/interfaces/DownloadHandler;Lcom/audible/mobile/download/service/LibraryDownloadRequestData;Lcom/audible/mobile/downloader/policy/RetryPolicy;Lcom/audible/mobile/downloader/policy/NetworkStatePolicy;)Lcom/audible/mobile/download/service/audiobook/AudiobookDownloadRequest;
    .locals 22

    move-object/from16 v0, p0

    .line 53
    invoke-interface/range {p2 .. p2}, Lcom/audible/mobile/download/service/LibraryDownloadRequestData;->getAdditionalPayload()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/audible/mobile/domain/Format;->valueOf(Ljava/lang/String;)Lcom/audible/mobile/domain/Format;

    move-result-object v1

    .line 55
    new-instance v8, Lcom/audible/mobile/download/service/audiobook/AudiobookDownloadRequest$Key;

    invoke-interface/range {p2 .. p2}, Lcom/audible/mobile/download/service/LibraryDownloadRequestData;->getCustomerId()Lcom/audible/mobile/domain/CustomerId;

    move-result-object v2

    invoke-interface/range {p2 .. p2}, Lcom/audible/mobile/download/service/LibraryDownloadRequestData;->getAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v3

    invoke-direct {v8, v2, v3, v1}, Lcom/audible/mobile/download/service/audiobook/AudiobookDownloadRequest$Key;-><init>(Lcom/audible/mobile/domain/CustomerId;Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/Format;)V

    .line 56
    invoke-virtual/range {p0 .. p0}, Lcom/audible/mobile/downloader/factory/AbstractDownloadRequestFactory;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/audible/mobile/download/R$string;->audiobookDownloadDestinationPattern:I

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface/range {p2 .. p2}, Lcom/audible/mobile/download/service/LibraryDownloadRequestData;->getAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v5

    invoke-interface {v5}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1}, Lcom/audible/mobile/domain/Format;->getCodec()Lcom/audible/mobile/domain/Codec;

    move-result-object v5

    const/4 v9, 0x1

    aput-object v5, v4, v9

    .line 57
    invoke-virtual {v1}, Lcom/audible/mobile/domain/Format;->getExtension()Lcom/audible/mobile/domain/Extension;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    .line 56
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 58
    invoke-virtual/range {p0 .. p0}, Lcom/audible/mobile/downloader/factory/AbstractDownloadRequestFactory;->getContentTypeStorageLocationStrategy()Lcom/audible/mobile/catalog/filesystem/ContentTypeStorageLocationStrategy;

    move-result-object v3

    sget-object v4, Lcom/audible/mobile/download/ContentType;->Audiobook:Lcom/audible/mobile/download/ContentType;

    invoke-interface {v3, v4, v2}, Lcom/audible/mobile/catalog/filesystem/ContentTypeStorageLocationStrategy;->getStorageLocationFor(Lcom/audible/mobile/download/ContentType;Ljava/lang/String;)Ljava/io/File;

    move-result-object v15

    .line 61
    new-instance v10, Lcom/audible/mobile/download/networking/CCDSUrlAwareDownloadHandler;

    iget-object v4, v0, Lcom/audible/mobile/download/service/audiobook/AudiobookDownloadRequestFactory;->urlResolutionStrategy:Lcom/audible/mobile/download/UrlResolutionStrategy;

    iget-object v2, v0, Lcom/audible/mobile/download/service/audiobook/AudiobookDownloadRequestFactory;->identityManager:Lcom/audible/mobile/identity/IdentityManager;

    invoke-interface {v2}, Lcom/audible/mobile/identity/IdentityManager;->getDeviceType()Lcom/audible/mobile/identity/DeviceType;

    move-result-object v6

    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object v2, v10

    move-object v5, v1

    invoke-direct/range {v2 .. v7}, Lcom/audible/mobile/download/networking/CCDSUrlAwareDownloadHandler;-><init>(Lcom/audible/mobile/downloader/interfaces/DownloadHandler;Lcom/audible/mobile/download/UrlResolutionStrategy;Lcom/audible/mobile/domain/Format;Lcom/audible/mobile/identity/DeviceType;Z)V

    .line 62
    new-instance v2, Lcom/audible/mobile/downloader/handler/FileDownloadHandler;

    invoke-direct {v2, v10, v15, v9}, Lcom/audible/mobile/downloader/handler/FileDownloadHandler;-><init>(Lcom/audible/mobile/downloader/interfaces/DownloadHandler;Ljava/io/File;Z)V

    .line 63
    invoke-virtual {v2}, Lcom/audible/mobile/downloader/handler/FileDownloadHandler;->getInProgressOrCompletedFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    .line 64
    new-instance v5, Lcom/audible/mobile/download/networking/DatabaseDownloadHandler;

    invoke-virtual/range {p0 .. p0}, Lcom/audible/mobile/downloader/factory/AbstractDownloadRequestFactory;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-interface/range {p2 .. p2}, Lcom/audible/mobile/download/service/LibraryDownloadRequestData;->getDownloadUri()Landroid/net/Uri;

    move-result-object v19

    move-object/from16 v16, v5

    move-object/from16 v17, v2

    move-wide/from16 v20, v3

    invoke-direct/range {v16 .. v21}, Lcom/audible/mobile/download/networking/DatabaseDownloadHandler;-><init>(Lcom/audible/mobile/downloader/handler/FileDownloadHandler;Landroid/content/Context;Landroid/net/Uri;J)V

    .line 65
    new-instance v2, Lcom/audible/mobile/download/networking/CatalogFileSystemDownloadHandler;

    invoke-virtual/range {p0 .. p0}, Lcom/audible/mobile/downloader/factory/AbstractDownloadRequestFactory;->getContext()Landroid/content/Context;

    move-result-object v11

    sget-object v12, Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;->AUDIO:Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;

    .line 66
    invoke-interface/range {p2 .. p2}, Lcom/audible/mobile/download/service/LibraryDownloadRequestData;->getDownloadRequest()Lcom/audible/mobile/download/Request;

    move-result-object v13

    move-object v10, v2

    move-object v14, v15

    move-object v6, v15

    move-object v15, v5

    invoke-direct/range {v10 .. v15}, Lcom/audible/mobile/download/networking/CatalogFileSystemDownloadHandler;-><init>(Landroid/content/Context;Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;Lcom/audible/mobile/download/Request;Ljava/io/File;Lcom/audible/mobile/downloader/interfaces/DownloadHandler;)V

    .line 67
    new-instance v11, Lcom/audible/mobile/download/networking/ServiceForegroundingDownloadHandler;

    invoke-interface/range {p2 .. p2}, Lcom/audible/mobile/download/service/LibraryDownloadRequestData;->getBaseDownloadService()Lcom/audible/mobile/download/service/BaseDownloadService;

    move-result-object v5

    .line 68
    invoke-interface/range {p2 .. p2}, Lcom/audible/mobile/download/service/LibraryDownloadRequestData;->getDownloadRequest()Lcom/audible/mobile/download/Request;

    move-result-object v7

    invoke-direct {v11, v2, v5, v7}, Lcom/audible/mobile/download/networking/ServiceForegroundingDownloadHandler;-><init>(Lcom/audible/mobile/downloader/interfaces/DownloadHandler;Lcom/audible/mobile/download/service/BaseDownloadService;Lcom/audible/mobile/download/Request;)V

    .line 69
    new-instance v2, Lcom/audible/mobile/download/networking/BroadcastDownloadHandler;

    invoke-virtual/range {p0 .. p0}, Lcom/audible/mobile/downloader/factory/AbstractDownloadRequestFactory;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-interface/range {p2 .. p2}, Lcom/audible/mobile/download/service/LibraryDownloadRequestData;->getDownloadRequest()Lcom/audible/mobile/download/Request;

    move-result-object v13

    .line 70
    invoke-interface/range {p2 .. p2}, Lcom/audible/mobile/download/service/LibraryDownloadRequestData;->getBaseDownloadService()Lcom/audible/mobile/download/service/BaseDownloadService;

    move-result-object v14

    invoke-interface/range {p2 .. p2}, Lcom/audible/mobile/download/service/LibraryDownloadRequestData;->getStartId()I

    move-result v15

    move-object v10, v2

    move-object/from16 v16, v6

    invoke-direct/range {v10 .. v16}, Lcom/audible/mobile/download/networking/BroadcastDownloadHandler;-><init>(Lcom/audible/mobile/downloader/interfaces/DownloadHandler;Landroid/content/Context;Lcom/audible/mobile/download/Request;Lcom/audible/mobile/download/service/BaseDownloadService;ILjava/io/File;)V

    .line 71
    new-instance v6, Lcom/audible/mobile/download/networking/LowStorageAwareDownloadHandler;

    invoke-virtual/range {p0 .. p0}, Lcom/audible/mobile/downloader/factory/AbstractDownloadRequestFactory;->getLowStorageStrategy()Lcom/audible/mobile/download/lowstorage/LowStorageStrategy;

    move-result-object v5

    sget-object v7, Lcom/audible/mobile/download/ContentType;->Audiobook:Lcom/audible/mobile/download/ContentType;

    invoke-direct {v6, v2, v5, v7}, Lcom/audible/mobile/download/networking/LowStorageAwareDownloadHandler;-><init>(Lcom/audible/mobile/downloader/interfaces/DownloadHandler;Lcom/audible/mobile/download/lowstorage/LowStorageStrategy;Lcom/audible/mobile/download/ContentType;)V

    .line 73
    invoke-interface/range {p2 .. p2}, Lcom/audible/mobile/download/service/LibraryDownloadRequestData;->getAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/audible/mobile/download/service/audiobook/AudiobookDownloadRequestFactory;->constructUrlParameters(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/Format;)Ljava/util/Map;

    move-result-object v1

    .line 74
    iget-object v2, v0, Lcom/audible/mobile/download/service/audiobook/AudiobookDownloadRequestFactory;->urlResolutionStrategy:Lcom/audible/mobile/download/UrlResolutionStrategy;

    invoke-interface/range {p2 .. p2}, Lcom/audible/mobile/downloader/factory/DownloadRequestData;->getType()Lcom/audible/mobile/downloader/factory/DownloadType;

    move-result-object v5

    check-cast v5, Lcom/audible/mobile/download/ContentType;

    invoke-interface {v2, v5, v1}, Lcom/audible/mobile/download/UrlResolutionStrategy;->resolve(Lcom/audible/mobile/download/ContentType;Ljava/util/Map;)Ljava/net/URL;

    move-result-object v1

    .line 75
    new-instance v5, Lcom/audible/mobile/downloader/BaseGETDownloadCommand;

    invoke-direct {v5, v1, v3, v4}, Lcom/audible/mobile/downloader/BaseGETDownloadCommand;-><init>(Ljava/net/URL;J)V

    .line 77
    new-instance v1, Lcom/audible/mobile/download/service/audiobook/AudiobookDownloadRequest;

    move-object v2, v1

    move-object v3, v5

    move-object/from16 v4, p4

    move-object/from16 v5, p3

    move-object v7, v8

    invoke-direct/range {v2 .. v7}, Lcom/audible/mobile/download/service/audiobook/AudiobookDownloadRequest;-><init>(Lcom/audible/mobile/downloader/interfaces/DownloadCommand;Lcom/audible/mobile/downloader/policy/NetworkStatePolicy;Lcom/audible/mobile/downloader/policy/RetryPolicy;Lcom/audible/mobile/downloader/interfaces/DownloadHandler;Lcom/audible/mobile/download/service/audiobook/AudiobookDownloadRequest$Key;)V

    return-object v1
.end method

.method protected bridge synthetic newDownloadRequestInternal(Lcom/audible/mobile/downloader/interfaces/DownloadHandler;Lcom/audible/mobile/downloader/factory/DownloadRequestData;Lcom/audible/mobile/downloader/policy/RetryPolicy;Lcom/audible/mobile/downloader/policy/NetworkStatePolicy;)Lcom/audible/mobile/downloader/interfaces/DownloadRequest;
    .locals 0

    .line 34
    check-cast p2, Lcom/audible/mobile/download/service/LibraryDownloadRequestData;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/audible/mobile/download/service/audiobook/AudiobookDownloadRequestFactory;->newDownloadRequestInternal(Lcom/audible/mobile/downloader/interfaces/DownloadHandler;Lcom/audible/mobile/download/service/LibraryDownloadRequestData;Lcom/audible/mobile/downloader/policy/RetryPolicy;Lcom/audible/mobile/downloader/policy/NetworkStatePolicy;)Lcom/audible/mobile/download/service/audiobook/AudiobookDownloadRequest;

    move-result-object p1

    return-object p1
.end method
