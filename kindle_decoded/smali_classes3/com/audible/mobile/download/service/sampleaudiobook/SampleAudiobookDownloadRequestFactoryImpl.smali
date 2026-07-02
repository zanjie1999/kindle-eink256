.class public final Lcom/audible/mobile/download/service/sampleaudiobook/SampleAudiobookDownloadRequestFactoryImpl;
.super Lcom/audible/mobile/downloader/factory/AbstractDownloadRequestFactory;
.source "SampleAudiobookDownloadRequestFactoryImpl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/audible/mobile/downloader/factory/AbstractDownloadRequestFactory<",
        "Lcom/audible/mobile/download/service/sampleaudiobook/SampleAudiobookDownloadRequest;",
        "Lcom/audible/mobile/download/service/LibraryDownloadRequestData;",
        ">;"
    }
.end annotation


# static fields
.field private static final PARAMETER_ASIN:Ljava/lang/String; = "asin"

.field private static final PARAMETER_CODEC:Ljava/lang/String; = "codec"

.field private static final PARAMETER_DEVICE_TYPE:Ljava/lang/String; = "devicetype"

.field private static final PARAMETER_DEVICE_TYPE_HP:Ljava/lang/String; = "hp"


# instance fields
.field private final identityManager:Lcom/audible/mobile/identity/IdentityManager;

.field private final urlResolutionStrategy:Lcom/audible/mobile/download/UrlResolutionStrategy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/audible/mobile/identity/IdentityManager;Lcom/audible/mobile/catalog/filesystem/ContentTypeStorageLocationStrategy;Lcom/audible/mobile/download/lowstorage/LowStorageStrategy;Lcom/audible/mobile/download/UrlResolutionStrategy;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p3, p4}, Lcom/audible/mobile/downloader/factory/AbstractDownloadRequestFactory;-><init>(Landroid/content/Context;Lcom/audible/mobile/catalog/filesystem/ContentTypeStorageLocationStrategy;Lcom/audible/mobile/download/lowstorage/LowStorageStrategy;)V

    .line 52
    iput-object p2, p0, Lcom/audible/mobile/download/service/sampleaudiobook/SampleAudiobookDownloadRequestFactoryImpl;->identityManager:Lcom/audible/mobile/identity/IdentityManager;

    .line 53
    iput-object p5, p0, Lcom/audible/mobile/download/service/sampleaudiobook/SampleAudiobookDownloadRequestFactoryImpl;->urlResolutionStrategy:Lcom/audible/mobile/download/UrlResolutionStrategy;

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

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 84
    invoke-interface {p1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v1, "asin"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    invoke-virtual {p2}, Lcom/audible/mobile/domain/Format;->getCodec()Lcom/audible/mobile/domain/Codec;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    const-string p2, "codec"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "devicetype"

    const-string p2, "hp"

    .line 86
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method protected newDownloadRequestInternal(Lcom/audible/mobile/downloader/interfaces/DownloadHandler;Lcom/audible/mobile/download/service/LibraryDownloadRequestData;Lcom/audible/mobile/downloader/policy/RetryPolicy;Lcom/audible/mobile/downloader/policy/NetworkStatePolicy;)Lcom/audible/mobile/download/service/sampleaudiobook/SampleAudiobookDownloadRequest;
    .locals 15

    move-object v0, p0

    .line 60
    invoke-interface/range {p2 .. p2}, Lcom/audible/mobile/download/service/LibraryDownloadRequestData;->getAdditionalPayload()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/audible/mobile/domain/Format;->valueOf(Ljava/lang/String;)Lcom/audible/mobile/domain/Format;

    move-result-object v1

    .line 62
    new-instance v7, Lcom/audible/mobile/download/service/sampleaudiobook/SampleAudiobookDownloadRequest$Key;

    invoke-interface/range {p2 .. p2}, Lcom/audible/mobile/download/service/LibraryDownloadRequestData;->getAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v2

    invoke-direct {v7, v2, v1}, Lcom/audible/mobile/download/service/sampleaudiobook/SampleAudiobookDownloadRequest$Key;-><init>(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/Format;)V

    .line 63
    invoke-virtual {p0}, Lcom/audible/mobile/downloader/factory/AbstractDownloadRequestFactory;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/audible/mobile/download/R$string;->sampleAudiobookDownloadDestinationPattern:I

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

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 64
    invoke-virtual {v1}, Lcom/audible/mobile/domain/Format;->getExtension()Lcom/audible/mobile/domain/Extension;

    move-result-object v5

    const/4 v8, 0x2

    aput-object v5, v4, v8

    .line 63
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 65
    invoke-virtual {p0}, Lcom/audible/mobile/downloader/factory/AbstractDownloadRequestFactory;->getContentTypeStorageLocationStrategy()Lcom/audible/mobile/catalog/filesystem/ContentTypeStorageLocationStrategy;

    move-result-object v3

    sget-object v4, Lcom/audible/mobile/download/ContentType;->SampleAudiobook:Lcom/audible/mobile/download/ContentType;

    invoke-interface {v3, v4, v2}, Lcom/audible/mobile/catalog/filesystem/ContentTypeStorageLocationStrategy;->getStorageLocationFor(Lcom/audible/mobile/download/ContentType;Ljava/lang/String;)Ljava/io/File;

    move-result-object v14

    .line 67
    new-instance v2, Lcom/audible/mobile/downloader/handler/FileDownloadHandler;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v14, v6}, Lcom/audible/mobile/downloader/handler/FileDownloadHandler;-><init>(Lcom/audible/mobile/downloader/interfaces/DownloadHandler;Ljava/io/File;Z)V

    .line 68
    new-instance v13, Lcom/audible/mobile/download/networking/DatabaseDownloadHandler;

    invoke-virtual {p0}, Lcom/audible/mobile/downloader/factory/AbstractDownloadRequestFactory;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface/range {p2 .. p2}, Lcom/audible/mobile/download/service/LibraryDownloadRequestData;->getDownloadUri()Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v13, v2, v3, v4}, Lcom/audible/mobile/download/networking/DatabaseDownloadHandler;-><init>(Lcom/audible/mobile/downloader/handler/FileDownloadHandler;Landroid/content/Context;Landroid/net/Uri;)V

    .line 69
    new-instance v2, Lcom/audible/mobile/download/networking/CatalogFileSystemDownloadHandler;

    invoke-virtual {p0}, Lcom/audible/mobile/downloader/factory/AbstractDownloadRequestFactory;->getContext()Landroid/content/Context;

    move-result-object v9

    sget-object v10, Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;->AUDIO_SAMPLE:Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;

    .line 70
    invoke-interface/range {p2 .. p2}, Lcom/audible/mobile/download/service/LibraryDownloadRequestData;->getDownloadRequest()Lcom/audible/mobile/download/Request;

    move-result-object v11

    move-object v8, v2

    move-object v12, v14

    invoke-direct/range {v8 .. v13}, Lcom/audible/mobile/download/networking/CatalogFileSystemDownloadHandler;-><init>(Landroid/content/Context;Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;Lcom/audible/mobile/download/Request;Ljava/io/File;Lcom/audible/mobile/downloader/interfaces/DownloadHandler;)V

    .line 71
    new-instance v3, Lcom/audible/mobile/download/networking/BroadcastDownloadHandler;

    invoke-virtual {p0}, Lcom/audible/mobile/downloader/factory/AbstractDownloadRequestFactory;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-interface/range {p2 .. p2}, Lcom/audible/mobile/download/service/LibraryDownloadRequestData;->getDownloadRequest()Lcom/audible/mobile/download/Request;

    move-result-object v11

    .line 72
    invoke-interface/range {p2 .. p2}, Lcom/audible/mobile/download/service/LibraryDownloadRequestData;->getBaseDownloadService()Lcom/audible/mobile/download/service/BaseDownloadService;

    move-result-object v12

    invoke-interface/range {p2 .. p2}, Lcom/audible/mobile/download/service/LibraryDownloadRequestData;->getStartId()I

    move-result v13

    move-object v8, v3

    move-object v9, v2

    invoke-direct/range {v8 .. v14}, Lcom/audible/mobile/download/networking/BroadcastDownloadHandler;-><init>(Lcom/audible/mobile/downloader/interfaces/DownloadHandler;Landroid/content/Context;Lcom/audible/mobile/download/Request;Lcom/audible/mobile/download/service/BaseDownloadService;ILjava/io/File;)V

    .line 73
    new-instance v6, Lcom/audible/mobile/download/networking/LowStorageAwareDownloadHandler;

    invoke-virtual {p0}, Lcom/audible/mobile/downloader/factory/AbstractDownloadRequestFactory;->getLowStorageStrategy()Lcom/audible/mobile/download/lowstorage/LowStorageStrategy;

    move-result-object v2

    sget-object v4, Lcom/audible/mobile/download/ContentType;->SampleAudiobook:Lcom/audible/mobile/download/ContentType;

    invoke-direct {v6, v3, v2, v4}, Lcom/audible/mobile/download/networking/LowStorageAwareDownloadHandler;-><init>(Lcom/audible/mobile/downloader/interfaces/DownloadHandler;Lcom/audible/mobile/download/lowstorage/LowStorageStrategy;Lcom/audible/mobile/download/ContentType;)V

    .line 75
    invoke-interface/range {p2 .. p2}, Lcom/audible/mobile/download/service/LibraryDownloadRequestData;->getAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/audible/mobile/download/service/sampleaudiobook/SampleAudiobookDownloadRequestFactoryImpl;->constructUrlParameters(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/Format;)Ljava/util/Map;

    move-result-object v1

    .line 76
    iget-object v2, v0, Lcom/audible/mobile/download/service/sampleaudiobook/SampleAudiobookDownloadRequestFactoryImpl;->urlResolutionStrategy:Lcom/audible/mobile/download/UrlResolutionStrategy;

    invoke-interface/range {p2 .. p2}, Lcom/audible/mobile/downloader/factory/DownloadRequestData;->getType()Lcom/audible/mobile/downloader/factory/DownloadType;

    move-result-object v3

    check-cast v3, Lcom/audible/mobile/download/ContentType;

    invoke-interface {v2, v3, v1}, Lcom/audible/mobile/download/UrlResolutionStrategy;->resolve(Lcom/audible/mobile/download/ContentType;Ljava/util/Map;)Ljava/net/URL;

    move-result-object v1

    .line 77
    new-instance v3, Lcom/audible/mobile/downloader/BaseGETDownloadCommand;

    invoke-direct {v3, v1}, Lcom/audible/mobile/downloader/BaseGETDownloadCommand;-><init>(Ljava/net/URL;)V

    .line 79
    new-instance v1, Lcom/audible/mobile/download/service/sampleaudiobook/SampleAudiobookDownloadRequest;

    move-object v2, v1

    move-object/from16 v4, p4

    move-object/from16 v5, p3

    invoke-direct/range {v2 .. v7}, Lcom/audible/mobile/download/service/sampleaudiobook/SampleAudiobookDownloadRequest;-><init>(Lcom/audible/mobile/downloader/interfaces/DownloadCommand;Lcom/audible/mobile/downloader/policy/NetworkStatePolicy;Lcom/audible/mobile/downloader/policy/RetryPolicy;Lcom/audible/mobile/downloader/interfaces/DownloadHandler;Lcom/audible/mobile/download/service/sampleaudiobook/SampleAudiobookDownloadRequest$Key;)V

    return-object v1
.end method

.method protected bridge synthetic newDownloadRequestInternal(Lcom/audible/mobile/downloader/interfaces/DownloadHandler;Lcom/audible/mobile/downloader/factory/DownloadRequestData;Lcom/audible/mobile/downloader/policy/RetryPolicy;Lcom/audible/mobile/downloader/policy/NetworkStatePolicy;)Lcom/audible/mobile/downloader/interfaces/DownloadRequest;
    .locals 0

    .line 35
    check-cast p2, Lcom/audible/mobile/download/service/LibraryDownloadRequestData;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/audible/mobile/download/service/sampleaudiobook/SampleAudiobookDownloadRequestFactoryImpl;->newDownloadRequestInternal(Lcom/audible/mobile/downloader/interfaces/DownloadHandler;Lcom/audible/mobile/download/service/LibraryDownloadRequestData;Lcom/audible/mobile/downloader/policy/RetryPolicy;Lcom/audible/mobile/downloader/policy/NetworkStatePolicy;)Lcom/audible/mobile/download/service/sampleaudiobook/SampleAudiobookDownloadRequest;

    move-result-object p1

    return-object p1
.end method
