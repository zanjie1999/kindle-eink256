.class public Lcom/audible/android/kcp/hushpuppy/library/CatalogFilesystemHushpuppyLibraryService;
.super Ljava/lang/Object;
.source "CatalogFilesystemHushpuppyLibraryService.java"


# static fields
.field protected static final CATALOG_ASIN_FILE_TYPE_SELECTION:Ljava/lang/String;

.field protected static final DOWNLOAD_ASIN_SELECTION:Ljava/lang/String;

.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private final mAudioMetadataProvider:Lcom/audible/mobile/audio/metadata/AudioMetadataProvider;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 42
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/android/kcp/hushpuppy/library/CatalogFilesystemHushpuppyLibraryService;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/android/kcp/hushpuppy/library/CatalogFilesystemHushpuppyLibraryService;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "FILE_TYPE"

    const-string v1, "ASIN"

    .line 44
    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/audible/android/kcp/util/DbUtil;->getAndSelection([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/audible/android/kcp/hushpuppy/library/CatalogFilesystemHushpuppyLibraryService;->CATALOG_ASIN_FILE_TYPE_SELECTION:Ljava/lang/String;

    const-string v2, "FILE_LOCATION_URI"

    .line 47
    filled-new-array {v2, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/audible/android/kcp/util/DbUtil;->getAndSelection([Ljava/lang/String;)Ljava/lang/String;

    .line 54
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/audible/android/kcp/util/DbUtil;->getAndSelection([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/audible/android/kcp/hushpuppy/library/CatalogFilesystemHushpuppyLibraryService;->DOWNLOAD_ASIN_SELECTION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/audible/android/kcp/hushpuppy/library/CatalogFilesystemHushpuppyLibraryService;->mContext:Landroid/content/Context;

    .line 68
    new-instance v0, Lcom/audible/mobile/player/metadata/SdkBasedAudioMetadataProviderImpl;

    .line 69
    invoke-static {p1}, Lcom/audible/mobile/framework/ComponentRegistry;->getInstance(Landroid/content/Context;)Lcom/audible/mobile/framework/ComponentRegistry;

    move-result-object v1

    const-class v2, Lcom/audible/mobile/identity/IdentityManager;

    invoke-virtual {v1, v2}, Lcom/audible/mobile/framework/ComponentRegistry;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/audible/mobile/identity/IdentityManager;

    .line 70
    invoke-static {p1}, Lcom/audible/mobile/framework/ComponentRegistry;->getInstance(Landroid/content/Context;)Lcom/audible/mobile/framework/ComponentRegistry;

    move-result-object v2

    const-class v3, Lcom/audible/mobile/metric/logger/MetricManager;

    invoke-virtual {v2, v3}, Lcom/audible/mobile/framework/ComponentRegistry;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/audible/mobile/metric/logger/MetricManager;

    invoke-direct {v0, p1, v1, v2}, Lcom/audible/mobile/player/metadata/SdkBasedAudioMetadataProviderImpl;-><init>(Landroid/content/Context;Lcom/audible/mobile/identity/IdentityManager;Lcom/audible/mobile/metric/logger/MetricManager;)V

    iput-object v0, p0, Lcom/audible/android/kcp/hushpuppy/library/CatalogFilesystemHushpuppyLibraryService;->mAudioMetadataProvider:Lcom/audible/mobile/audio/metadata/AudioMetadataProvider;

    return-void
.end method

.method private getAsinCursor(Ljava/io/File;[Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    .line 371
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, v5, v0

    .line 373
    iget-object p1, p0, Lcom/audible/android/kcp/hushpuppy/library/CatalogFilesystemHushpuppyLibraryService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v6, 0x0

    move-object v2, p3

    move-object v3, p2

    move-object v4, p4

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method private getAsinFromDownloadFileLocation(Ljava/io/File;)Lcom/audible/mobile/domain/Asin;
    .locals 4

    const-string v0, "ASIN"

    .line 344
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    .line 346
    iget-object v2, p0, Lcom/audible/android/kcp/hushpuppy/library/CatalogFilesystemHushpuppyLibraryService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/audible/mobile/download/provider/DownloadContract$DownloadItem;->getContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "LOCAL_DOWNLOAD_URI LIKE ?"

    .line 347
    invoke-direct {p0, p1, v1, v2, v3}, Lcom/audible/android/kcp/hushpuppy/library/CatalogFilesystemHushpuppyLibraryService;->getAsinCursor(Ljava/io/File;[Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    .line 354
    :cond_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 355
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 358
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    if-nez v0, :cond_2

    return-object v1

    .line 365
    :cond_2
    invoke-static {v0}, Lcom/audible/mobile/domain/ImmutableAsinImpl;->nullSafeFactory(Ljava/lang/String;)Lcom/audible/mobile/domain/Asin;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception v0

    .line 358
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 359
    throw v0
.end method


# virtual methods
.method public getAsinByFileLocation(Ljava/io/File;)Lcom/audible/mobile/domain/Asin;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 296
    :cond_0
    invoke-virtual {p0, p1}, Lcom/audible/android/kcp/hushpuppy/library/CatalogFilesystemHushpuppyLibraryService;->getAsinFromCatalogFileLocation(Ljava/io/File;)Lcom/audible/mobile/domain/Asin;

    move-result-object v0

    if-nez v0, :cond_1

    .line 299
    invoke-direct {p0, p1}, Lcom/audible/android/kcp/hushpuppy/library/CatalogFilesystemHushpuppyLibraryService;->getAsinFromDownloadFileLocation(Ljava/io/File;)Lcom/audible/mobile/domain/Asin;

    move-result-object v0

    .line 300
    sget-object p1, Lcom/audible/android/kcp/hushpuppy/library/CatalogFilesystemHushpuppyLibraryService;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Downloaded asin"

    invoke-interface {p1, v1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-object v0
.end method

.method public getAsinFromCatalogFileLocation(Ljava/io/File;)Lcom/audible/mobile/domain/Asin;
    .locals 4

    const-string v0, "ASIN"

    .line 379
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    .line 381
    iget-object v2, p0, Lcom/audible/android/kcp/hushpuppy/library/CatalogFilesystemHushpuppyLibraryService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$CatalogFiles;->getContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "FILE_LOCATION_URI LIKE ?"

    .line 383
    invoke-direct {p0, p1, v1, v2, v3}, Lcom/audible/android/kcp/hushpuppy/library/CatalogFilesystemHushpuppyLibraryService;->getAsinCursor(Ljava/io/File;[Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    .line 390
    :cond_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 391
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 394
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    if-nez v0, :cond_2

    return-object v1

    .line 401
    :cond_2
    invoke-static {v0}, Lcom/audible/mobile/domain/ImmutableAsinImpl;->nullSafeFactory(Ljava/lang/String;)Lcom/audible/mobile/domain/Asin;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception v0

    .line 394
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 395
    throw v0
.end method

.method protected getCatalogCursorByAsin(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/audible/android/kcp/hushpuppy/library/CatalogFilesystemHushpuppyLibraryService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$CatalogFiles;->getContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v2

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 412
    invoke-interface {p1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v0

    const/4 p1, 0x1

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v5, p1

    .line 414
    iget-object p1, p0, Lcom/audible/android/kcp/hushpuppy/library/CatalogFilesystemHushpuppyLibraryService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v4, Lcom/audible/android/kcp/hushpuppy/library/CatalogFilesystemHushpuppyLibraryService;->CATALOG_ASIN_FILE_TYPE_SELECTION:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v3, p3

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public getDownloadAudiobookInfo(Lcom/audible/mobile/domain/Asin;Z)Lcom/audible/hushpuppy/common/audiobook/IHushpuppyAudiobookInfo;
    .locals 13

    .line 308
    sget-object v0, Lcom/audible/android/kcp/hushpuppy/library/CatalogFilesystemHushpuppyLibraryService;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Getting download audiobook info"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    const-string v0, "LOCAL_DOWNLOAD_URI"

    .line 310
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/audible/android/kcp/hushpuppy/library/CatalogFilesystemHushpuppyLibraryService;->getDownloadCursorByAsin(Lcom/audible/mobile/domain/Asin;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 317
    :cond_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 318
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 320
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 321
    invoke-static {v0}, Lcom/audible/mobile/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 322
    sget-object p1, Lcom/audible/android/kcp/hushpuppy/library/CatalogFilesystemHushpuppyLibraryService;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "File Location URI string is Null or Empty... Cannot get Audiobook Info!!"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v2

    .line 326
    :cond_1
    :try_start_1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 328
    iget-object v3, p0, Lcom/audible/android/kcp/hushpuppy/library/CatalogFilesystemHushpuppyLibraryService;->mAudioMetadataProvider:Lcom/audible/mobile/audio/metadata/AudioMetadataProvider;

    new-instance v4, Lcom/audible/mobile/player/AudioDataSource;

    sget-object v5, Lcom/audible/mobile/player/AudioDataSourceType;->AudibleDrmExo:Lcom/audible/mobile/player/AudioDataSourceType;

    invoke-direct {v4, p1, v0, v5}, Lcom/audible/mobile/player/AudioDataSource;-><init>(Lcom/audible/mobile/domain/Asin;Landroid/net/Uri;Lcom/audible/mobile/player/AudioDataSourceType;)V

    invoke-interface {v3, v4}, Lcom/audible/mobile/framework/Factory1;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;

    if-eqz v3, :cond_3

    .line 331
    new-instance v2, Lcom/audible/hushpuppy/common/audiobook/HushpuppyAudiobookInfo;

    invoke-virtual {v3}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->getNarrator()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    .line 332
    invoke-virtual {v3}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->getPublishDate()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->getAuthor()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/io/File;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-nez p2, :cond_2

    const/4 p2, 0x1

    const/4 v12, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    const/4 v12, 0x0

    :goto_0
    move-object v4, v2

    move-object v6, p1

    invoke-direct/range {v4 .. v12}, Lcom/audible/hushpuppy/common/audiobook/HushpuppyAudiobookInfo;-><init>(Ljava/lang/String;Lcom/audible/mobile/domain/Asin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 336
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v2

    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v2

    :catchall_0
    move-exception p1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 337
    throw p1
.end method

.method protected getDownloadCursorByAsin(Lcom/audible/mobile/domain/Asin;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/audible/android/kcp/hushpuppy/library/CatalogFilesystemHushpuppyLibraryService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/audible/mobile/download/provider/DownloadContract$DownloadItem;->getContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v2

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 425
    invoke-interface {p1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v0

    .line 427
    iget-object p1, p0, Lcom/audible/android/kcp/hushpuppy/library/CatalogFilesystemHushpuppyLibraryService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v4, Lcom/audible/android/kcp/hushpuppy/library/CatalogFilesystemHushpuppyLibraryService;->DOWNLOAD_ASIN_SELECTION:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public getDownloadedContentFilePath()Ljava/lang/String;
    .locals 2

    .line 279
    iget-object v0, p0, Lcom/audible/android/kcp/hushpuppy/library/CatalogFilesystemHushpuppyLibraryService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/audible/mobile/framework/ComponentRegistry;->getInstance(Landroid/content/Context;)Lcom/audible/mobile/framework/ComponentRegistry;

    move-result-object v0

    const-class v1, Lcom/audible/mobile/catalog/filesystem/ContentTypeStorageLocationStrategy;

    invoke-virtual {v0, v1}, Lcom/audible/mobile/framework/ComponentRegistry;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/mobile/catalog/filesystem/ContentTypeStorageLocationStrategy;

    .line 281
    invoke-interface {v0}, Lcom/audible/mobile/catalog/filesystem/ContentTypeStorageLocationStrategy;->getUnspecifiedStorageLocation()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalAudiobookInfo(Lcom/audible/mobile/domain/Asin;Z)Lcom/audible/hushpuppy/common/audiobook/IHushpuppyAudiobookInfo;
    .locals 14

    move-object v1, p0

    move-object v0, p1

    .line 112
    sget-object v2, Lcom/audible/android/kcp/hushpuppy/library/CatalogFilesystemHushpuppyLibraryService;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v3, "Getting local audiobook info"

    invoke-interface {v2, v3}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 113
    sget-object v2, Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;->AUDIO:Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;->AUDIO_SAMPLE:Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;

    :goto_0
    const-string v3, "FILE_LOCATION_URI"

    .line 115
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p1, v2, v4}, Lcom/audible/android/kcp/hushpuppy/library/CatalogFilesystemHushpuppyLibraryService;->getCatalogCursorByAsin(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    const/4 v2, 0x0

    if-nez v11, :cond_1

    return-object v2

    .line 122
    :cond_1
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 123
    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 125
    invoke-interface {v11, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 126
    sget-object v5, Lcom/audible/android/kcp/hushpuppy/library/CatalogFilesystemHushpuppyLibraryService;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "File location uri for Audiobook:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 127
    invoke-static {v4}, Lcom/audible/mobile/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 128
    sget-object v0, Lcom/audible/android/kcp/hushpuppy/library/CatalogFilesystemHushpuppyLibraryService;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v3, "File Location URI string is Null or Empty... Cannot get Audiobook Info!!"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    return-object v2

    .line 132
    :cond_2
    :try_start_1
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 133
    iget-object v5, v1, Lcom/audible/android/kcp/hushpuppy/library/CatalogFilesystemHushpuppyLibraryService;->mAudioMetadataProvider:Lcom/audible/mobile/audio/metadata/AudioMetadataProvider;

    new-instance v6, Lcom/audible/mobile/player/AudioDataSource;

    sget-object v7, Lcom/audible/mobile/player/AudioDataSourceType;->AudibleDrmExo:Lcom/audible/mobile/player/AudioDataSourceType;

    invoke-direct {v6, p1, v4, v7}, Lcom/audible/mobile/player/AudioDataSource;-><init>(Lcom/audible/mobile/domain/Asin;Landroid/net/Uri;Lcom/audible/mobile/player/AudioDataSourceType;)V

    invoke-interface {v5, v6}, Lcom/audible/mobile/framework/Factory1;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;

    if-eqz v5, :cond_1

    .line 136
    sget-object v2, Lcom/audible/android/kcp/hushpuppy/library/CatalogFilesystemHushpuppyLibraryService;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Audiobook metadata found:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 137
    new-instance v12, Lcom/audible/hushpuppy/common/audiobook/HushpuppyAudiobookInfo;

    invoke-virtual {v5}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->getNarrator()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 138
    invoke-virtual {v5}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->getPublishDate()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->getAuthor()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/io/File;

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v10, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-nez p2, :cond_3

    const/4 v2, 0x1

    const/4 v13, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    const/4 v13, 0x0

    :goto_1
    move-object v2, v12

    move-object v4, p1

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move v10, v13

    invoke-direct/range {v2 .. v10}, Lcom/audible/hushpuppy/common/audiobook/HushpuppyAudiobookInfo;-><init>(Ljava/lang/String;Lcom/audible/mobile/domain/Asin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    return-object v12

    :cond_4
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    return-object v2

    :catchall_0
    move-exception v0

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 143
    throw v0
.end method

.method public getLocalSyncFilePath(Lcom/audible/mobile/domain/Asin;)Ljava/io/File;
    .locals 3

    .line 156
    sget-object v0, Lcom/audible/android/kcp/hushpuppy/library/CatalogFilesystemHushpuppyLibraryService;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Getting Sync File Path"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 157
    sget-object v0, Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;->POSITION_SYNC:Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;

    const-string v1, "FILE_LOCATION_URI"

    .line 159
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v2}, Lcom/audible/android/kcp/hushpuppy/library/CatalogFilesystemHushpuppyLibraryService;->getCatalogCursorByAsin(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 166
    :cond_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 167
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 169
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 170
    invoke-static {v1}, Lcom/audible/mobile/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 171
    sget-object v1, Lcom/audible/android/kcp/hushpuppy/library/CatalogFilesystemHushpuppyLibraryService;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "File Location URI string is Null or Empty... Cannot get Sync File Path!!"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0

    .line 175
    :cond_1
    :try_start_1
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 176
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 179
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v1

    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 180
    throw v0
.end method

.method public updateLocalAudioFileLocation(Lcom/audible/mobile/domain/Asin;ZLjava/io/File;)I
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p3, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    .line 198
    sget-object p2, Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;->AUDIO:Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;

    goto :goto_0

    :cond_1
    sget-object p2, Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;->AUDIO_SAMPLE:Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;

    .line 199
    :goto_0
    iget-object v1, p0, Lcom/audible/android/kcp/hushpuppy/library/CatalogFilesystemHushpuppyLibraryService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$CatalogFiles;->getContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    .line 200
    invoke-interface {p1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v0

    const/4 p1, 0x1

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, p1

    .line 202
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 203
    invoke-static {p3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "FILE_LOCATION_URI"

    invoke-virtual {p1, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-object p2, p0, Lcom/audible/android/kcp/hushpuppy/library/CatalogFilesystemHushpuppyLibraryService;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    sget-object p3, Lcom/audible/android/kcp/hushpuppy/library/CatalogFilesystemHushpuppyLibraryService;->CATALOG_ASIN_FILE_TYPE_SELECTION:Ljava/lang/String;

    invoke-virtual {p2, v1, p1, p3, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_2
    :goto_1
    return v0
.end method

.method public updateLocalSyncFileLocation(Lcom/audible/mobile/domain/Asin;Ljava/io/File;)I
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 220
    :cond_0
    sget-object v1, Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;->POSITION_SYNC:Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;

    .line 221
    iget-object v2, p0, Lcom/audible/android/kcp/hushpuppy/library/CatalogFilesystemHushpuppyLibraryService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$CatalogFiles;->getContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    .line 222
    invoke-interface {p1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v0

    const/4 p1, 0x1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, p1

    .line 224
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 225
    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "FILE_LOCATION_URI"

    invoke-virtual {p1, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object p2, p0, Lcom/audible/android/kcp/hushpuppy/library/CatalogFilesystemHushpuppyLibraryService;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    sget-object v0, Lcom/audible/android/kcp/hushpuppy/library/CatalogFilesystemHushpuppyLibraryService;->CATALOG_ASIN_FILE_TYPE_SELECTION:Ljava/lang/String;

    invoke-virtual {p2, v2, p1, v0, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    return v0
.end method
