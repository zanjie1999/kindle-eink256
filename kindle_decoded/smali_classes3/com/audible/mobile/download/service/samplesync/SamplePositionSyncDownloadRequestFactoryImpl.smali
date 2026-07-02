.class public final Lcom/audible/mobile/download/service/samplesync/SamplePositionSyncDownloadRequestFactoryImpl;
.super Lcom/audible/mobile/downloader/factory/AbstractDownloadRequestFactory;
.source "SamplePositionSyncDownloadRequestFactoryImpl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/audible/mobile/downloader/factory/AbstractDownloadRequestFactory<",
        "Lcom/audible/mobile/download/service/samplesync/SamplePositionSyncDownloadRequest;",
        "Lcom/audible/mobile/download/service/LibraryDownloadRequestData;",
        ">;"
    }
.end annotation


# static fields
.field private static final PARAMETER_ASIN:Ljava/lang/String; = "audioBookAsin"

.field private static final PARAMETER_EBOOK_ACR:Ljava/lang/String; = "eBookACR"

.field private static final PARAMETER_FORMAT:Ljava/lang/String; = "audioBookFormat"


# instance fields
.field private final urlResolutionStrategy:Lcom/audible/mobile/download/UrlResolutionStrategy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/audible/mobile/catalog/filesystem/ContentTypeStorageLocationStrategy;Lcom/audible/mobile/download/lowstorage/LowStorageStrategy;Lcom/audible/mobile/download/UrlResolutionStrategy;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/audible/mobile/downloader/factory/AbstractDownloadRequestFactory;-><init>(Landroid/content/Context;Lcom/audible/mobile/catalog/filesystem/ContentTypeStorageLocationStrategy;Lcom/audible/mobile/download/lowstorage/LowStorageStrategy;)V

    const-string p1, "urlResolutionStrategy is required"

    .line 54
    invoke-static {p4, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 55
    iput-object p4, p0, Lcom/audible/mobile/download/service/samplesync/SamplePositionSyncDownloadRequestFactoryImpl;->urlResolutionStrategy:Lcom/audible/mobile/download/UrlResolutionStrategy;

    return-void
.end method

.method private constructUrlParameters(Lcom/audible/mobile/domain/ACR;Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/Format;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/mobile/domain/ACR;",
            "Lcom/audible/mobile/domain/Asin;",
            "Lcom/audible/mobile/domain/Format;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 90
    invoke-interface {p1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v1, "eBookACR"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    invoke-interface {p2}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object p1

    const-string p2, "audioBookAsin"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    const-string p2, "audioBookFormat"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method protected newDownloadRequestInternal(Lcom/audible/mobile/downloader/interfaces/DownloadHandler;Lcom/audible/mobile/download/service/LibraryDownloadRequestData;Lcom/audible/mobile/downloader/policy/RetryPolicy;Lcom/audible/mobile/downloader/policy/NetworkStatePolicy;)Lcom/audible/mobile/download/service/samplesync/SamplePositionSyncDownloadRequest;
    .locals 17

    move-object/from16 v0, p0

    .line 63
    invoke-interface/range {p2 .. p2}, Lcom/audible/mobile/download/service/LibraryDownloadRequestData;->getAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v1

    .line 64
    invoke-interface/range {p2 .. p2}, Lcom/audible/mobile/download/service/LibraryDownloadRequestData;->getAdditionalPayload()Ljava/lang/String;

    move-result-object v2

    const-string v3, "###"

    invoke-virtual {v0, v2, v3}, Lcom/audible/mobile/downloader/factory/AbstractDownloadRequestFactory;->splitOnDelimeter(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 65
    invoke-virtual {v0, v2}, Lcom/audible/mobile/downloader/factory/AbstractDownloadRequestFactory;->extractFormatFromOptionalPayload([Ljava/lang/String;)Lcom/audible/mobile/domain/Format;

    move-result-object v3

    .line 66
    invoke-virtual {v0, v2}, Lcom/audible/mobile/downloader/factory/AbstractDownloadRequestFactory;->extractEbookAcrFromOptionalPayload([Ljava/lang/String;)Lcom/audible/mobile/domain/ACR;

    move-result-object v2

    .line 68
    new-instance v9, Lcom/audible/mobile/download/service/samplesync/SamplePositionSyncDownloadRequest$Key;

    invoke-direct {v9, v2, v1, v3}, Lcom/audible/mobile/download/service/samplesync/SamplePositionSyncDownloadRequest$Key;-><init>(Lcom/audible/mobile/domain/ACR;Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/Format;)V

    .line 69
    invoke-virtual/range {p0 .. p0}, Lcom/audible/mobile/downloader/factory/AbstractDownloadRequestFactory;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/audible/mobile/download/R$string;->samplePositionSyncDownloadDestinationPattern:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v2}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-interface {v1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 71
    invoke-virtual/range {p0 .. p0}, Lcom/audible/mobile/downloader/factory/AbstractDownloadRequestFactory;->getContentTypeStorageLocationStrategy()Lcom/audible/mobile/catalog/filesystem/ContentTypeStorageLocationStrategy;

    move-result-object v5

    sget-object v6, Lcom/audible/mobile/download/ContentType;->SamplePositionSync:Lcom/audible/mobile/download/ContentType;

    invoke-interface {v5, v6, v4}, Lcom/audible/mobile/catalog/filesystem/ContentTypeStorageLocationStrategy;->getStorageLocationFor(Lcom/audible/mobile/download/ContentType;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 73
    new-instance v5, Lcom/audible/mobile/downloader/handler/FileDownloadHandler;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v4, v8}, Lcom/audible/mobile/downloader/handler/FileDownloadHandler;-><init>(Lcom/audible/mobile/downloader/interfaces/DownloadHandler;Ljava/io/File;Z)V

    .line 74
    new-instance v15, Lcom/audible/mobile/download/networking/DatabaseDownloadHandler;

    invoke-virtual/range {p0 .. p0}, Lcom/audible/mobile/downloader/factory/AbstractDownloadRequestFactory;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-interface/range {p2 .. p2}, Lcom/audible/mobile/download/service/LibraryDownloadRequestData;->getDownloadUri()Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v15, v5, v6, v7}, Lcom/audible/mobile/download/networking/DatabaseDownloadHandler;-><init>(Lcom/audible/mobile/downloader/handler/FileDownloadHandler;Landroid/content/Context;Landroid/net/Uri;)V

    .line 75
    new-instance v5, Lcom/audible/mobile/download/networking/CatalogFileSystemDownloadHandler;

    invoke-virtual/range {p0 .. p0}, Lcom/audible/mobile/downloader/factory/AbstractDownloadRequestFactory;->getContext()Landroid/content/Context;

    move-result-object v11

    sget-object v12, Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;->POSITION_SYNC:Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;

    .line 76
    invoke-interface/range {p2 .. p2}, Lcom/audible/mobile/download/service/LibraryDownloadRequestData;->getDownloadRequest()Lcom/audible/mobile/download/Request;

    move-result-object v13

    move-object v10, v5

    move-object v14, v4

    invoke-direct/range {v10 .. v15}, Lcom/audible/mobile/download/networking/CatalogFileSystemDownloadHandler;-><init>(Landroid/content/Context;Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;Lcom/audible/mobile/download/Request;Ljava/io/File;Lcom/audible/mobile/downloader/interfaces/DownloadHandler;)V

    .line 77
    new-instance v6, Lcom/audible/mobile/download/networking/BroadcastDownloadHandler;

    invoke-virtual/range {p0 .. p0}, Lcom/audible/mobile/downloader/factory/AbstractDownloadRequestFactory;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-interface/range {p2 .. p2}, Lcom/audible/mobile/download/service/LibraryDownloadRequestData;->getDownloadRequest()Lcom/audible/mobile/download/Request;

    move-result-object v13

    .line 78
    invoke-interface/range {p2 .. p2}, Lcom/audible/mobile/download/service/LibraryDownloadRequestData;->getBaseDownloadService()Lcom/audible/mobile/download/service/BaseDownloadService;

    move-result-object v14

    invoke-interface/range {p2 .. p2}, Lcom/audible/mobile/download/service/LibraryDownloadRequestData;->getStartId()I

    move-result v15

    move-object v10, v6

    move-object v11, v5

    move-object/from16 v16, v4

    invoke-direct/range {v10 .. v16}, Lcom/audible/mobile/download/networking/BroadcastDownloadHandler;-><init>(Lcom/audible/mobile/downloader/interfaces/DownloadHandler;Landroid/content/Context;Lcom/audible/mobile/download/Request;Lcom/audible/mobile/download/service/BaseDownloadService;ILjava/io/File;)V

    .line 79
    new-instance v8, Lcom/audible/mobile/download/networking/LowStorageAwareDownloadHandler;

    invoke-virtual/range {p0 .. p0}, Lcom/audible/mobile/downloader/factory/AbstractDownloadRequestFactory;->getLowStorageStrategy()Lcom/audible/mobile/download/lowstorage/LowStorageStrategy;

    move-result-object v4

    sget-object v5, Lcom/audible/mobile/download/ContentType;->SamplePositionSync:Lcom/audible/mobile/download/ContentType;

    invoke-direct {v8, v6, v4, v5}, Lcom/audible/mobile/download/networking/LowStorageAwareDownloadHandler;-><init>(Lcom/audible/mobile/downloader/interfaces/DownloadHandler;Lcom/audible/mobile/download/lowstorage/LowStorageStrategy;Lcom/audible/mobile/download/ContentType;)V

    .line 81
    invoke-direct {v0, v2, v1, v3}, Lcom/audible/mobile/download/service/samplesync/SamplePositionSyncDownloadRequestFactoryImpl;->constructUrlParameters(Lcom/audible/mobile/domain/ACR;Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/Format;)Ljava/util/Map;

    move-result-object v1

    .line 82
    iget-object v2, v0, Lcom/audible/mobile/download/service/samplesync/SamplePositionSyncDownloadRequestFactoryImpl;->urlResolutionStrategy:Lcom/audible/mobile/download/UrlResolutionStrategy;

    invoke-interface/range {p2 .. p2}, Lcom/audible/mobile/downloader/factory/DownloadRequestData;->getType()Lcom/audible/mobile/downloader/factory/DownloadType;

    move-result-object v3

    check-cast v3, Lcom/audible/mobile/download/ContentType;

    invoke-interface {v2, v3, v1}, Lcom/audible/mobile/download/UrlResolutionStrategy;->resolve(Lcom/audible/mobile/download/ContentType;Ljava/util/Map;)Ljava/net/URL;

    move-result-object v1

    .line 83
    new-instance v5, Lcom/audible/mobile/downloader/BaseGETDownloadCommand;

    invoke-direct {v5, v1}, Lcom/audible/mobile/downloader/BaseGETDownloadCommand;-><init>(Ljava/net/URL;)V

    .line 85
    new-instance v1, Lcom/audible/mobile/download/service/samplesync/SamplePositionSyncDownloadRequest;

    move-object v4, v1

    move-object/from16 v6, p4

    move-object/from16 v7, p3

    invoke-direct/range {v4 .. v9}, Lcom/audible/mobile/download/service/samplesync/SamplePositionSyncDownloadRequest;-><init>(Lcom/audible/mobile/downloader/interfaces/DownloadCommand;Lcom/audible/mobile/downloader/policy/NetworkStatePolicy;Lcom/audible/mobile/downloader/policy/RetryPolicy;Lcom/audible/mobile/downloader/interfaces/DownloadHandler;Lcom/audible/mobile/download/service/samplesync/SamplePositionSyncDownloadRequest$Key;)V

    return-object v1
.end method

.method protected bridge synthetic newDownloadRequestInternal(Lcom/audible/mobile/downloader/interfaces/DownloadHandler;Lcom/audible/mobile/downloader/factory/DownloadRequestData;Lcom/audible/mobile/downloader/policy/RetryPolicy;Lcom/audible/mobile/downloader/policy/NetworkStatePolicy;)Lcom/audible/mobile/downloader/interfaces/DownloadRequest;
    .locals 0

    .line 38
    check-cast p2, Lcom/audible/mobile/download/service/LibraryDownloadRequestData;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/audible/mobile/download/service/samplesync/SamplePositionSyncDownloadRequestFactoryImpl;->newDownloadRequestInternal(Lcom/audible/mobile/downloader/interfaces/DownloadHandler;Lcom/audible/mobile/download/service/LibraryDownloadRequestData;Lcom/audible/mobile/downloader/policy/RetryPolicy;Lcom/audible/mobile/downloader/policy/NetworkStatePolicy;)Lcom/audible/mobile/download/service/samplesync/SamplePositionSyncDownloadRequest;

    move-result-object p1

    return-object p1
.end method
