.class public Lcom/audible/mobile/download/service/isma/ISMADownloadRequestFactory;
.super Lcom/audible/mobile/downloader/factory/AbstractDownloadRequestFactory;
.source "ISMADownloadRequestFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/audible/mobile/downloader/factory/AbstractDownloadRequestFactory<",
        "Lcom/audible/mobile/download/service/isma/ISMADownloadRequest;",
        "Lcom/audible/mobile/download/service/LibraryDownloadRequestData;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/audible/mobile/catalog/filesystem/ContentTypeStorageLocationStrategy;Lcom/audible/mobile/download/lowstorage/LowStorageStrategy;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/audible/mobile/downloader/factory/AbstractDownloadRequestFactory;-><init>(Landroid/content/Context;Lcom/audible/mobile/catalog/filesystem/ContentTypeStorageLocationStrategy;Lcom/audible/mobile/download/lowstorage/LowStorageStrategy;)V

    return-void
.end method

.method private extractAcrFromPayload([Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    .line 70
    array-length v0, p1

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 71
    aget-object p1, p1, v0

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method private extractBitrateFromPayload([Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    .line 79
    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 80
    aget-object p1, p1, v0

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method private extractDownloadURLFromPayload([Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    .line 88
    array-length v0, p1

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x2

    .line 89
    aget-object p1, p1, v0

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method


# virtual methods
.method protected newDownloadRequestInternal(Lcom/audible/mobile/downloader/interfaces/DownloadHandler;Lcom/audible/mobile/download/service/LibraryDownloadRequestData;Lcom/audible/mobile/downloader/policy/RetryPolicy;Lcom/audible/mobile/downloader/policy/NetworkStatePolicy;)Lcom/audible/mobile/download/service/isma/ISMADownloadRequest;
    .locals 22

    move-object/from16 v0, p0

    .line 45
    invoke-interface/range {p2 .. p2}, Lcom/audible/mobile/download/service/LibraryDownloadRequestData;->getAdditionalPayload()Ljava/lang/String;

    move-result-object v1

    const-string v2, "###"

    invoke-virtual {v0, v1, v2}, Lcom/audible/mobile/downloader/factory/AbstractDownloadRequestFactory;->splitOnDelimeter(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 46
    invoke-direct {v0, v1}, Lcom/audible/mobile/download/service/isma/ISMADownloadRequestFactory;->extractAcrFromPayload([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 47
    invoke-direct {v0, v1}, Lcom/audible/mobile/download/service/isma/ISMADownloadRequestFactory;->extractBitrateFromPayload([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 48
    invoke-direct {v0, v1}, Lcom/audible/mobile/download/service/isma/ISMADownloadRequestFactory;->extractDownloadURLFromPayload([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/audible/mobile/util/UrlUtils;->toUrl(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    .line 50
    invoke-virtual/range {p0 .. p0}, Lcom/audible/mobile/downloader/factory/AbstractDownloadRequestFactory;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/audible/mobile/download/R$string;->ismaDownloadDestinationPattern:I

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface/range {p2 .. p2}, Lcom/audible/mobile/download/service/LibraryDownloadRequestData;->getAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v7

    invoke-interface {v7}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const/4 v7, 0x1

    aput-object v2, v6, v7

    const/4 v7, 0x2

    aput-object v3, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 51
    invoke-virtual/range {p0 .. p0}, Lcom/audible/mobile/downloader/factory/AbstractDownloadRequestFactory;->getContentTypeStorageLocationStrategy()Lcom/audible/mobile/catalog/filesystem/ContentTypeStorageLocationStrategy;

    move-result-object v5

    sget-object v6, Lcom/audible/mobile/download/ContentType;->Isma:Lcom/audible/mobile/download/ContentType;

    invoke-interface {v5, v6, v4}, Lcom/audible/mobile/catalog/filesystem/ContentTypeStorageLocationStrategy;->getStorageLocationFor(Lcom/audible/mobile/download/ContentType;Ljava/lang/String;)Ljava/io/File;

    move-result-object v13

    .line 53
    new-instance v5, Lcom/audible/mobile/download/networking/FileProgressBroadcastHandler;

    invoke-virtual/range {p0 .. p0}, Lcom/audible/mobile/downloader/factory/AbstractDownloadRequestFactory;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-interface/range {p2 .. p2}, Lcom/audible/mobile/download/service/LibraryDownloadRequestData;->getDownloadRequest()Lcom/audible/mobile/download/Request;

    move-result-object v12

    const/4 v11, 0x1

    move-object v7, v5

    move-object/from16 v9, p1

    move-object v10, v13

    invoke-direct/range {v7 .. v12}, Lcom/audible/mobile/download/networking/FileProgressBroadcastHandler;-><init>(Landroid/content/Context;Lcom/audible/mobile/downloader/interfaces/DownloadHandler;Ljava/io/File;ZLcom/audible/mobile/download/Request;)V

    .line 54
    invoke-virtual {v5}, Lcom/audible/mobile/downloader/handler/FileDownloadHandler;->getInProgressOrCompletedFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v14

    .line 55
    new-instance v10, Lcom/audible/mobile/download/networking/DatabaseDownloadHandler;

    invoke-virtual/range {p0 .. p0}, Lcom/audible/mobile/downloader/factory/AbstractDownloadRequestFactory;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-interface/range {p2 .. p2}, Lcom/audible/mobile/download/service/LibraryDownloadRequestData;->getDownloadUri()Landroid/net/Uri;

    move-result-object v7

    move-object v4, v10

    move-wide v8, v14

    invoke-direct/range {v4 .. v9}, Lcom/audible/mobile/download/networking/DatabaseDownloadHandler;-><init>(Lcom/audible/mobile/downloader/handler/FileDownloadHandler;Landroid/content/Context;Landroid/net/Uri;J)V

    .line 56
    new-instance v8, Lcom/audible/mobile/download/networking/ServiceForegroundingDownloadHandler;

    invoke-interface/range {p2 .. p2}, Lcom/audible/mobile/download/service/LibraryDownloadRequestData;->getBaseDownloadService()Lcom/audible/mobile/download/service/BaseDownloadService;

    move-result-object v4

    .line 57
    invoke-interface/range {p2 .. p2}, Lcom/audible/mobile/download/service/LibraryDownloadRequestData;->getDownloadRequest()Lcom/audible/mobile/download/Request;

    move-result-object v5

    invoke-direct {v8, v10, v4, v5}, Lcom/audible/mobile/download/networking/ServiceForegroundingDownloadHandler;-><init>(Lcom/audible/mobile/downloader/interfaces/DownloadHandler;Lcom/audible/mobile/download/service/BaseDownloadService;Lcom/audible/mobile/download/Request;)V

    .line 58
    new-instance v4, Lcom/audible/mobile/download/networking/BroadcastDownloadHandler;

    invoke-virtual/range {p0 .. p0}, Lcom/audible/mobile/downloader/factory/AbstractDownloadRequestFactory;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-interface/range {p2 .. p2}, Lcom/audible/mobile/download/service/LibraryDownloadRequestData;->getDownloadRequest()Lcom/audible/mobile/download/Request;

    move-result-object v10

    .line 59
    invoke-interface/range {p2 .. p2}, Lcom/audible/mobile/download/service/LibraryDownloadRequestData;->getBaseDownloadService()Lcom/audible/mobile/download/service/BaseDownloadService;

    move-result-object v11

    invoke-interface/range {p2 .. p2}, Lcom/audible/mobile/download/service/LibraryDownloadRequestData;->getStartId()I

    move-result v12

    move-object v7, v4

    invoke-direct/range {v7 .. v13}, Lcom/audible/mobile/download/networking/BroadcastDownloadHandler;-><init>(Lcom/audible/mobile/downloader/interfaces/DownloadHandler;Landroid/content/Context;Lcom/audible/mobile/download/Request;Lcom/audible/mobile/download/service/BaseDownloadService;ILjava/io/File;)V

    .line 60
    new-instance v5, Lcom/audible/mobile/download/networking/LowStorageAwareDownloadHandler;

    invoke-virtual/range {p0 .. p0}, Lcom/audible/mobile/downloader/factory/AbstractDownloadRequestFactory;->getLowStorageStrategy()Lcom/audible/mobile/download/lowstorage/LowStorageStrategy;

    move-result-object v6

    sget-object v7, Lcom/audible/mobile/download/ContentType;->Isma:Lcom/audible/mobile/download/ContentType;

    invoke-direct {v5, v4, v6, v7}, Lcom/audible/mobile/download/networking/LowStorageAwareDownloadHandler;-><init>(Lcom/audible/mobile/downloader/interfaces/DownloadHandler;Lcom/audible/mobile/download/lowstorage/LowStorageStrategy;Lcom/audible/mobile/download/ContentType;)V

    .line 62
    new-instance v4, Lcom/audible/mobile/downloader/BaseGETDownloadCommand;

    invoke-direct {v4, v1, v14, v15}, Lcom/audible/mobile/downloader/BaseGETDownloadCommand;-><init>(Ljava/net/URL;J)V

    .line 63
    new-instance v1, Lcom/audible/mobile/download/service/isma/ISMADownloadRequest$Key;

    invoke-interface/range {p2 .. p2}, Lcom/audible/mobile/download/service/LibraryDownloadRequestData;->getAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v6

    invoke-static {v2}, Lcom/audible/mobile/domain/ImmutableACRImpl;->nullSafeFactory(Ljava/lang/String;)Lcom/audible/mobile/domain/ACR;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v1, v6, v2, v3}, Lcom/audible/mobile/download/service/isma/ISMADownloadRequest$Key;-><init>(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/ACR;I)V

    .line 65
    new-instance v2, Lcom/audible/mobile/download/service/isma/ISMADownloadRequest;

    move-object/from16 v16, v2

    move-object/from16 v17, v4

    move-object/from16 v18, p4

    move-object/from16 v19, p3

    move-object/from16 v20, v5

    move-object/from16 v21, v1

    invoke-direct/range {v16 .. v21}, Lcom/audible/mobile/download/service/isma/ISMADownloadRequest;-><init>(Lcom/audible/mobile/downloader/interfaces/DownloadCommand;Lcom/audible/mobile/downloader/policy/NetworkStatePolicy;Lcom/audible/mobile/downloader/policy/RetryPolicy;Lcom/audible/mobile/downloader/interfaces/DownloadHandler;Lcom/audible/mobile/download/service/isma/ISMADownloadRequest$Key;)V

    return-object v2
.end method

.method protected bridge synthetic newDownloadRequestInternal(Lcom/audible/mobile/downloader/interfaces/DownloadHandler;Lcom/audible/mobile/downloader/factory/DownloadRequestData;Lcom/audible/mobile/downloader/policy/RetryPolicy;Lcom/audible/mobile/downloader/policy/NetworkStatePolicy;)Lcom/audible/mobile/downloader/interfaces/DownloadRequest;
    .locals 0

    .line 34
    check-cast p2, Lcom/audible/mobile/download/service/LibraryDownloadRequestData;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/audible/mobile/download/service/isma/ISMADownloadRequestFactory;->newDownloadRequestInternal(Lcom/audible/mobile/downloader/interfaces/DownloadHandler;Lcom/audible/mobile/download/service/LibraryDownloadRequestData;Lcom/audible/mobile/downloader/policy/RetryPolicy;Lcom/audible/mobile/downloader/policy/NetworkStatePolicy;)Lcom/audible/mobile/download/service/isma/ISMADownloadRequest;

    move-result-object p1

    return-object p1
.end method
