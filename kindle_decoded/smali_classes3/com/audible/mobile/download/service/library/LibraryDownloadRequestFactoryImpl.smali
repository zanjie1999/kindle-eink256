.class public final Lcom/audible/mobile/download/service/library/LibraryDownloadRequestFactoryImpl;
.super Lcom/audible/mobile/downloader/factory/AbstractDownloadRequestFactory;
.source "LibraryDownloadRequestFactoryImpl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/audible/mobile/downloader/factory/AbstractDownloadRequestFactory<",
        "Lcom/audible/mobile/download/service/library/LibraryDownloadRequest;",
        "Lcom/audible/mobile/download/service/LibraryDownloadRequestData;",
        ">;"
    }
.end annotation


# instance fields
.field private final identityManager:Lcom/audible/mobile/identity/IdentityManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/audible/mobile/identity/IdentityManager;Lcom/audible/mobile/catalog/filesystem/ContentTypeStorageLocationStrategy;Lcom/audible/mobile/download/lowstorage/LowStorageStrategy;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p3, p4}, Lcom/audible/mobile/downloader/factory/AbstractDownloadRequestFactory;-><init>(Landroid/content/Context;Lcom/audible/mobile/catalog/filesystem/ContentTypeStorageLocationStrategy;Lcom/audible/mobile/download/lowstorage/LowStorageStrategy;)V

    .line 37
    iput-object p2, p0, Lcom/audible/mobile/download/service/library/LibraryDownloadRequestFactoryImpl;->identityManager:Lcom/audible/mobile/identity/IdentityManager;

    return-void
.end method


# virtual methods
.method protected newDownloadRequestInternal(Lcom/audible/mobile/downloader/interfaces/DownloadHandler;Lcom/audible/mobile/download/service/LibraryDownloadRequestData;Lcom/audible/mobile/downloader/policy/RetryPolicy;Lcom/audible/mobile/downloader/policy/NetworkStatePolicy;)Lcom/audible/mobile/download/service/library/LibraryDownloadRequest;
    .locals 17

    .line 44
    invoke-interface/range {p2 .. p2}, Lcom/audible/mobile/download/service/LibraryDownloadRequestData;->getAdditionalPayload()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v2, v1

    goto :goto_0

    .line 45
    :cond_0
    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lcom/audible/mobile/util/NumberUtils;->toLong(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 46
    :goto_0
    new-instance v4, Lcom/audible/mobile/download/service/library/LibraryDownloadCommand;

    invoke-virtual/range {p0 .. p0}, Lcom/audible/mobile/downloader/factory/AbstractDownloadRequestFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    move-object/from16 v9, p0

    iget-object v3, v9, Lcom/audible/mobile/download/service/library/LibraryDownloadRequestFactoryImpl;->identityManager:Lcom/audible/mobile/identity/IdentityManager;

    invoke-interface {v3}, Lcom/audible/mobile/identity/IdentityManager;->getCustomerPreferredMarketplace()Lcom/audible/mobile/identity/Marketplace;

    move-result-object v3

    invoke-direct {v4, v0, v3, v2}, Lcom/audible/mobile/download/service/library/LibraryDownloadCommand;-><init>(Landroid/content/Context;Lcom/audible/mobile/identity/Marketplace;Ljava/util/Date;)V

    .line 48
    new-instance v8, Lcom/audible/mobile/download/service/library/LibraryDownloadRequest$Key;

    invoke-interface/range {p2 .. p2}, Lcom/audible/mobile/download/service/LibraryDownloadRequestData;->getCustomerId()Lcom/audible/mobile/domain/CustomerId;

    move-result-object v0

    invoke-direct {v8, v0, v2}, Lcom/audible/mobile/download/service/library/LibraryDownloadRequest$Key;-><init>(Lcom/audible/mobile/domain/CustomerId;Ljava/util/Date;)V

    .line 49
    invoke-virtual/range {p0 .. p0}, Lcom/audible/mobile/downloader/factory/AbstractDownloadRequestFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/audible/mobile/download/R$string;->libraryDownloadDestination:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-virtual/range {p0 .. p0}, Lcom/audible/mobile/downloader/factory/AbstractDownloadRequestFactory;->getContentTypeStorageLocationStrategy()Lcom/audible/mobile/catalog/filesystem/ContentTypeStorageLocationStrategy;

    move-result-object v2

    sget-object v3, Lcom/audible/mobile/download/ContentType;->Library:Lcom/audible/mobile/download/ContentType;

    invoke-interface {v2, v3, v0}, Lcom/audible/mobile/catalog/filesystem/ContentTypeStorageLocationStrategy;->getStorageLocationFor(Lcom/audible/mobile/download/ContentType;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 52
    new-instance v2, Lcom/audible/mobile/downloader/handler/FileDownloadHandler;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v0, v3}, Lcom/audible/mobile/downloader/handler/FileDownloadHandler;-><init>(Lcom/audible/mobile/downloader/interfaces/DownloadHandler;Ljava/io/File;Z)V

    .line 53
    new-instance v15, Lcom/audible/mobile/download/networking/DatabaseDownloadHandler;

    invoke-virtual/range {p0 .. p0}, Lcom/audible/mobile/downloader/factory/AbstractDownloadRequestFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface/range {p2 .. p2}, Lcom/audible/mobile/download/service/LibraryDownloadRequestData;->getDownloadUri()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v15, v2, v1, v3}, Lcom/audible/mobile/download/networking/DatabaseDownloadHandler;-><init>(Lcom/audible/mobile/downloader/handler/FileDownloadHandler;Landroid/content/Context;Landroid/net/Uri;)V

    .line 54
    new-instance v1, Lcom/audible/mobile/download/networking/CatalogFileSystemDownloadHandler;

    invoke-virtual/range {p0 .. p0}, Lcom/audible/mobile/downloader/factory/AbstractDownloadRequestFactory;->getContext()Landroid/content/Context;

    move-result-object v11

    sget-object v12, Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;->LIBRARY:Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;

    .line 55
    invoke-interface/range {p2 .. p2}, Lcom/audible/mobile/download/service/LibraryDownloadRequestData;->getDownloadRequest()Lcom/audible/mobile/download/Request;

    move-result-object v13

    move-object v10, v1

    move-object v14, v0

    invoke-direct/range {v10 .. v15}, Lcom/audible/mobile/download/networking/CatalogFileSystemDownloadHandler;-><init>(Landroid/content/Context;Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;Lcom/audible/mobile/download/Request;Ljava/io/File;Lcom/audible/mobile/downloader/interfaces/DownloadHandler;)V

    .line 56
    new-instance v2, Lcom/audible/mobile/download/networking/BroadcastDownloadHandler;

    invoke-virtual/range {p0 .. p0}, Lcom/audible/mobile/downloader/factory/AbstractDownloadRequestFactory;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-interface/range {p2 .. p2}, Lcom/audible/mobile/download/service/LibraryDownloadRequestData;->getDownloadRequest()Lcom/audible/mobile/download/Request;

    move-result-object v13

    .line 57
    invoke-interface/range {p2 .. p2}, Lcom/audible/mobile/download/service/LibraryDownloadRequestData;->getBaseDownloadService()Lcom/audible/mobile/download/service/BaseDownloadService;

    move-result-object v14

    invoke-interface/range {p2 .. p2}, Lcom/audible/mobile/download/service/LibraryDownloadRequestData;->getStartId()I

    move-result v15

    move-object v10, v2

    move-object v11, v1

    move-object/from16 v16, v0

    invoke-direct/range {v10 .. v16}, Lcom/audible/mobile/download/networking/BroadcastDownloadHandler;-><init>(Lcom/audible/mobile/downloader/interfaces/DownloadHandler;Landroid/content/Context;Lcom/audible/mobile/download/Request;Lcom/audible/mobile/download/service/BaseDownloadService;ILjava/io/File;)V

    .line 58
    new-instance v7, Lcom/audible/mobile/download/networking/LowStorageAwareDownloadHandler;

    invoke-virtual/range {p0 .. p0}, Lcom/audible/mobile/downloader/factory/AbstractDownloadRequestFactory;->getLowStorageStrategy()Lcom/audible/mobile/download/lowstorage/LowStorageStrategy;

    move-result-object v0

    sget-object v1, Lcom/audible/mobile/download/ContentType;->Library:Lcom/audible/mobile/download/ContentType;

    invoke-direct {v7, v2, v0, v1}, Lcom/audible/mobile/download/networking/LowStorageAwareDownloadHandler;-><init>(Lcom/audible/mobile/downloader/interfaces/DownloadHandler;Lcom/audible/mobile/download/lowstorage/LowStorageStrategy;Lcom/audible/mobile/download/ContentType;)V

    .line 60
    new-instance v0, Lcom/audible/mobile/download/service/library/LibraryDownloadRequest;

    move-object v3, v0

    move-object/from16 v5, p4

    move-object/from16 v6, p3

    invoke-direct/range {v3 .. v8}, Lcom/audible/mobile/download/service/library/LibraryDownloadRequest;-><init>(Lcom/audible/mobile/downloader/interfaces/DownloadCommand;Lcom/audible/mobile/downloader/policy/NetworkStatePolicy;Lcom/audible/mobile/downloader/policy/RetryPolicy;Lcom/audible/mobile/downloader/interfaces/DownloadHandler;Lcom/audible/mobile/download/service/library/LibraryDownloadRequest$Key;)V

    return-object v0
.end method

.method protected bridge synthetic newDownloadRequestInternal(Lcom/audible/mobile/downloader/interfaces/DownloadHandler;Lcom/audible/mobile/downloader/factory/DownloadRequestData;Lcom/audible/mobile/downloader/policy/RetryPolicy;Lcom/audible/mobile/downloader/policy/NetworkStatePolicy;)Lcom/audible/mobile/downloader/interfaces/DownloadRequest;
    .locals 0

    .line 30
    check-cast p2, Lcom/audible/mobile/download/service/LibraryDownloadRequestData;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/audible/mobile/download/service/library/LibraryDownloadRequestFactoryImpl;->newDownloadRequestInternal(Lcom/audible/mobile/downloader/interfaces/DownloadHandler;Lcom/audible/mobile/download/service/LibraryDownloadRequestData;Lcom/audible/mobile/downloader/policy/RetryPolicy;Lcom/audible/mobile/downloader/policy/NetworkStatePolicy;)Lcom/audible/mobile/download/service/library/LibraryDownloadRequest;

    move-result-object p1

    return-object p1
.end method
