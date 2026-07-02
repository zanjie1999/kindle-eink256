.class public Lcom/audible/android/kcp/download/ContentProviderAudioFileManager;
.super Ljava/lang/Object;
.source "ContentProviderAudioFileManager.java"

# interfaces
.implements Lcom/audible/android/kcp/download/AudioFileManager;


# static fields
.field private static final CATALOG_ASIN_FILE_TYPE_SELECTION:Ljava/lang/String;

.field private static final CATALOG_FILE_TYPE_SELECTION:Ljava/lang/String;

.field private static final DOWNLOAD_ASIN_FILE_TYPE_SELECTION:Ljava/lang/String;

.field private static final DOWNLOAD_FILE_TYPE_SELECTION:Ljava/lang/String;

.field protected static final DOWNLOAD_STATUS_SELECTION:Ljava/lang/String;

.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private final mAudiobookCallbackRegistrar:Lcom/audible/android/kcp/download/callback/DownloadStatusCallbackRegistrar;

.field private final mContext:Landroid/content/Context;

.field private final mDownloadErrorStorage:Lcom/audible/android/kcp/download/DownloadErrorStorage;

.field private final mDownloadManager:Lcom/audible/mobile/download/DownloadManager;

.field private final mPlayerManager:Lcom/audible/android/kcp/player/manager/AiRPlayerManager;

.field private final mSampleAudiobookCallbackRegistrar:Lcom/audible/android/kcp/download/callback/DownloadStatusCallbackRegistrar;

.field private final mSampleSyncCallbackRegistrar:Lcom/audible/android/kcp/download/callback/DownloadStatusCallbackRegistrar;

.field private final mSyncCallbackRegistrar:Lcom/audible/android/kcp/download/callback/DownloadStatusCallbackRegistrar;

.field private final mUnidentifiedWaitingDownloadCallbacks:Lcom/audible/android/kcp/download/callback/DownloadStatusCallbackHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 46
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/android/kcp/download/ContentProviderAudioFileManager;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/android/kcp/download/ContentProviderAudioFileManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "FILE_TYPE"

    .line 48
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/audible/android/kcp/util/DbUtil;->getAndSelection([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/audible/android/kcp/download/ContentProviderAudioFileManager;->CATALOG_FILE_TYPE_SELECTION:Ljava/lang/String;

    const-string v1, "ASIN"

    .line 50
    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/audible/android/kcp/util/DbUtil;->getAndSelection([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/audible/android/kcp/download/ContentProviderAudioFileManager;->CATALOG_ASIN_FILE_TYPE_SELECTION:Ljava/lang/String;

    const-string v0, "CATEGORY_NAME"

    .line 53
    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/audible/android/kcp/util/DbUtil;->getAndSelection([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/audible/android/kcp/download/ContentProviderAudioFileManager;->DOWNLOAD_ASIN_FILE_TYPE_SELECTION:Ljava/lang/String;

    .line 56
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/audible/android/kcp/util/DbUtil;->getAndSelection([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/audible/android/kcp/download/ContentProviderAudioFileManager;->DOWNLOAD_FILE_TYPE_SELECTION:Ljava/lang/String;

    const-string v0, "STATUS"

    .line 58
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/audible/android/kcp/util/DbUtil;->getAndSelection([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/audible/android/kcp/download/ContentProviderAudioFileManager;->DOWNLOAD_STATUS_SELECTION:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/audible/mobile/download/DownloadManager;Lcom/audible/android/kcp/download/DownloadErrorStorage;Lcom/audible/android/kcp/download/callback/DownloadStatusCallbackRegistrar;Lcom/audible/android/kcp/download/callback/DownloadStatusCallbackRegistrar;Lcom/audible/android/kcp/download/callback/DownloadStatusCallbackRegistrar;Lcom/audible/android/kcp/download/callback/DownloadStatusCallbackRegistrar;Lcom/audible/android/kcp/download/callback/DownloadStatusCallbackHolder;Lcom/audible/android/kcp/player/manager/AiRPlayerManager;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/audible/android/kcp/download/ContentProviderAudioFileManager;->mContext:Landroid/content/Context;

    .line 89
    iput-object p2, p0, Lcom/audible/android/kcp/download/ContentProviderAudioFileManager;->mDownloadManager:Lcom/audible/mobile/download/DownloadManager;

    .line 90
    iput-object p3, p0, Lcom/audible/android/kcp/download/ContentProviderAudioFileManager;->mDownloadErrorStorage:Lcom/audible/android/kcp/download/DownloadErrorStorage;

    .line 91
    iput-object p4, p0, Lcom/audible/android/kcp/download/ContentProviderAudioFileManager;->mAudiobookCallbackRegistrar:Lcom/audible/android/kcp/download/callback/DownloadStatusCallbackRegistrar;

    .line 92
    iput-object p5, p0, Lcom/audible/android/kcp/download/ContentProviderAudioFileManager;->mSyncCallbackRegistrar:Lcom/audible/android/kcp/download/callback/DownloadStatusCallbackRegistrar;

    .line 93
    iput-object p6, p0, Lcom/audible/android/kcp/download/ContentProviderAudioFileManager;->mSampleAudiobookCallbackRegistrar:Lcom/audible/android/kcp/download/callback/DownloadStatusCallbackRegistrar;

    .line 94
    iput-object p7, p0, Lcom/audible/android/kcp/download/ContentProviderAudioFileManager;->mSampleSyncCallbackRegistrar:Lcom/audible/android/kcp/download/callback/DownloadStatusCallbackRegistrar;

    .line 95
    iput-object p8, p0, Lcom/audible/android/kcp/download/ContentProviderAudioFileManager;->mUnidentifiedWaitingDownloadCallbacks:Lcom/audible/android/kcp/download/callback/DownloadStatusCallbackHolder;

    .line 96
    iput-object p9, p0, Lcom/audible/android/kcp/download/ContentProviderAudioFileManager;->mPlayerManager:Lcom/audible/android/kcp/player/manager/AiRPlayerManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/audible/mobile/download/DownloadManager;Lcom/audible/mobile/preferences/PreferenceStore;Lcom/audible/android/kcp/player/manager/AiRPlayerManager;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/audible/mobile/download/DownloadManager;",
            "Lcom/audible/mobile/preferences/PreferenceStore<",
            "Lcom/audible/android/kcp/common/AiRPreferencesStore$Key;",
            ">;",
            "Lcom/audible/android/kcp/player/manager/AiRPlayerManager;",
            ")V"
        }
    .end annotation

    .line 73
    new-instance v3, Lcom/audible/android/kcp/download/DownloadErrorStorage;

    invoke-direct {v3, p3}, Lcom/audible/android/kcp/download/DownloadErrorStorage;-><init>(Lcom/audible/mobile/preferences/PreferenceStore;)V

    new-instance v4, Lcom/audible/android/kcp/download/callback/DefaultDownloadStatusCallbackRegistrar;

    sget-object v0, Lcom/audible/mobile/download/ContentType;->Audiobook:Lcom/audible/mobile/download/ContentType;

    .line 76
    invoke-virtual {v0}, Lcom/audible/mobile/download/ContentType;->toIntentCategory()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, p1, v0, p3}, Lcom/audible/android/kcp/download/callback/DefaultDownloadStatusCallbackRegistrar;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/audible/mobile/preferences/PreferenceStore;)V

    new-instance v5, Lcom/audible/android/kcp/download/callback/DefaultDownloadStatusCallbackRegistrar;

    sget-object v0, Lcom/audible/mobile/download/ContentType;->PositionSync:Lcom/audible/mobile/download/ContentType;

    .line 77
    invoke-virtual {v0}, Lcom/audible/mobile/download/ContentType;->toIntentCategory()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, p1, v0, p3}, Lcom/audible/android/kcp/download/callback/DefaultDownloadStatusCallbackRegistrar;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/audible/mobile/preferences/PreferenceStore;)V

    new-instance v6, Lcom/audible/android/kcp/download/callback/DefaultDownloadStatusCallbackRegistrar;

    sget-object v0, Lcom/audible/mobile/download/ContentType;->SampleAudiobook:Lcom/audible/mobile/download/ContentType;

    .line 78
    invoke-virtual {v0}, Lcom/audible/mobile/download/ContentType;->toIntentCategory()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, p1, v0, p3}, Lcom/audible/android/kcp/download/callback/DefaultDownloadStatusCallbackRegistrar;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/audible/mobile/preferences/PreferenceStore;)V

    new-instance v7, Lcom/audible/android/kcp/download/callback/DefaultDownloadStatusCallbackRegistrar;

    sget-object v0, Lcom/audible/mobile/download/ContentType;->SamplePositionSync:Lcom/audible/mobile/download/ContentType;

    .line 79
    invoke-virtual {v0}, Lcom/audible/mobile/download/ContentType;->toIntentCategory()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, p1, v0, p3}, Lcom/audible/android/kcp/download/callback/DefaultDownloadStatusCallbackRegistrar;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/audible/mobile/preferences/PreferenceStore;)V

    new-instance v8, Lcom/audible/android/kcp/download/callback/MappedDownloadStatusCallbackHolder;

    invoke-direct {v8}, Lcom/audible/android/kcp/download/callback/MappedDownloadStatusCallbackHolder;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v9, p4

    .line 73
    invoke-direct/range {v0 .. v9}, Lcom/audible/android/kcp/download/ContentProviderAudioFileManager;-><init>(Landroid/content/Context;Lcom/audible/mobile/download/DownloadManager;Lcom/audible/android/kcp/download/DownloadErrorStorage;Lcom/audible/android/kcp/download/callback/DownloadStatusCallbackRegistrar;Lcom/audible/android/kcp/download/callback/DownloadStatusCallbackRegistrar;Lcom/audible/android/kcp/download/callback/DownloadStatusCallbackRegistrar;Lcom/audible/android/kcp/download/callback/DownloadStatusCallbackRegistrar;Lcom/audible/android/kcp/download/callback/DownloadStatusCallbackHolder;Lcom/audible/android/kcp/player/manager/AiRPlayerManager;)V

    return-void
.end method

.method private getCatalogCursorByAsin(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 670
    :cond_0
    iget-object v0, p0, Lcom/audible/android/kcp/download/ContentProviderAudioFileManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$CatalogFiles;->getContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v2

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 672
    invoke-interface {p1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v0

    const/4 p1, 0x1

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v5, p1

    .line 674
    iget-object p1, p0, Lcom/audible/android/kcp/download/ContentProviderAudioFileManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v4, Lcom/audible/android/kcp/download/ContentProviderAudioFileManager;->CATALOG_ASIN_FILE_TYPE_SELECTION:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v3, p3

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method private getDownloadCursor(Ljava/util/Map;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .line 638
    iget-object v0, p0, Lcom/audible/android/kcp/download/ContentProviderAudioFileManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/audible/mobile/download/provider/DownloadContract$DownloadItem;->getContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v2

    .line 640
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 641
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 642
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 643
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 644
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 646
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 647
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 650
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-static {p1}, Lcom/audible/android/kcp/util/DbUtil;->getAndSelection([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 651
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {v1, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, [Ljava/lang/String;

    .line 653
    iget-object p1, p0, Lcom/audible/android/kcp/download/ContentProviderAudioFileManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v6, 0x0

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method private getDownloadCursorByAsin(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/download/ContentType;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 620
    :cond_0
    iget-object v0, p0, Lcom/audible/android/kcp/download/ContentProviderAudioFileManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/audible/mobile/download/provider/DownloadContract$DownloadItem;->getContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v2

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 622
    invoke-interface {p1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v0

    const/4 p1, 0x1

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v5, p1

    .line 624
    iget-object p1, p0, Lcom/audible/android/kcp/download/ContentProviderAudioFileManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v4, Lcom/audible/android/kcp/download/ContentProviderAudioFileManager;->DOWNLOAD_ASIN_FILE_TYPE_SELECTION:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v3, p3

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method private getDownloadId(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/download/ContentType;)Ljava/lang/Long;
    .locals 0

    .line 602
    invoke-direct {p0, p1, p2}, Lcom/audible/android/kcp/download/ContentProviderAudioFileManager;->getDownloadIds(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/download/ContentType;)Ljava/util/List;

    move-result-object p1

    .line 604
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    :goto_0
    return-object p1
.end method

.method private getDownloadIds(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/download/ContentType;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/mobile/domain/Asin;",
            "Lcom/audible/mobile/download/ContentType;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 577
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "_id"

    .line 579
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, p2, v2}, Lcom/audible/android/kcp/download/ContentProviderAudioFileManager;->getDownloadCursorByAsin(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/download/ContentType;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 583
    :goto_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 584
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    .line 585
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 587
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 590
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 591
    throw p2

    :cond_1
    :goto_1
    return-object v0
.end method

.method private getDownloadingStatus(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/download/ContentType;)Lcom/audible/mobile/downloader/DownloadStatus;
    .locals 2

    const-string v0, "STATUS"

    .line 510
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, p2, v1}, Lcom/audible/android/kcp/download/ContentProviderAudioFileManager;->getDownloadCursorByAsin(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/download/ContentType;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return-object p2

    .line 517
    :cond_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 518
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 519
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 521
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 532
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p2

    .line 525
    :cond_1
    :try_start_1
    invoke-static {v0}, Lcom/audible/mobile/downloader/DownloadStatus;->valueOf(Ljava/lang/String;)Lcom/audible/mobile/downloader/DownloadStatus;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 532
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p2

    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p2

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 533
    throw p2
.end method

.method private getDownloadingStatus(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/download/ContentType;Ljava/lang/String;)Lcom/audible/mobile/downloader/DownloadStatus;
    .locals 4

    .line 541
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 542
    invoke-interface {p1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ASIN"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CATEGORY_NAME"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "OPTIONAL_PAYLOAD"

    .line 544
    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "STATUS"

    .line 546
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/audible/android/kcp/download/ContentProviderAudioFileManager;->getDownloadCursor(Ljava/util/Map;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 549
    sget-object v0, Lcom/audible/android/kcp/download/ContentProviderAudioFileManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 550
    invoke-interface {p1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v3

    const/4 p1, 0x1

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, p1

    const/4 p1, 0x2

    aput-object p3, v1, p1

    const-string p1, "Couldn\'t find download status for ASIN: %s, Category: %s, Optional Payload: %s"

    .line 549
    invoke-interface {v0, p1, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    .line 555
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 556
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 557
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 559
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 560
    sget-object p1, Lcom/audible/android/kcp/download/ContentProviderAudioFileManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "Download status is empty!"

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 571
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v2

    .line 564
    :cond_1
    :try_start_1
    invoke-static {p1}, Lcom/audible/mobile/downloader/DownloadStatus;->valueOf(Ljava/lang/String;)Lcom/audible/mobile/downloader/DownloadStatus;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 571
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object p1

    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v2

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 572
    throw p1
.end method


# virtual methods
.method public cancelDownload(Lcom/audible/mobile/domain/Asin;Lcom/audible/android/kcp/download/receiver/AirDownloadType;)Z
    .locals 6

    .line 129
    sget-object v0, Lcom/audible/android/kcp/download/receiver/AirDownloadType;->AUDIOBOOK:Lcom/audible/android/kcp/download/receiver/AirDownloadType;

    if-ne p2, v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/audible/android/kcp/download/ContentProviderAudioFileManager;->mPlayerManager:Lcom/audible/android/kcp/player/manager/AiRPlayerManager;

    invoke-interface {v0, p1}, Lcom/audible/android/kcp/player/manager/AiRPlayerManager;->handlePlayerResetOnCancelDownload(Lcom/audible/mobile/domain/Asin;)V

    .line 133
    :cond_0
    invoke-virtual {p2}, Lcom/audible/android/kcp/download/receiver/AirDownloadType;->getContentType()Lcom/audible/mobile/download/ContentType;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/audible/android/kcp/download/ContentProviderAudioFileManager;->getDownloadIds(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/download/ContentType;)Ljava/util/List;

    move-result-object v0

    .line 135
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 136
    iget-object v3, p0, Lcom/audible/android/kcp/download/ContentProviderAudioFileManager;->mDownloadManager:Lcom/audible/mobile/download/DownloadManager;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Lcom/audible/mobile/download/DownloadManager;->cancel(J)V

    goto :goto_0

    .line 139
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/audible/android/kcp/download/ContentProviderAudioFileManager;->deleteFile(Lcom/audible/mobile/domain/Asin;Lcom/audible/android/kcp/download/receiver/AirDownloadType;)Z

    .line 141
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public declared-synchronized clearAllDownloads()V
    .locals 8

    monitor-enter p0

    .line 441
    :try_start_0
    iget-object v0, p0, Lcom/audible/android/kcp/download/ContentProviderAudioFileManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/audible/mobile/download/provider/DownloadContract$DownloadItem;->getContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "_id"

    .line 442
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v7

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 446
    sget-object v2, Lcom/audible/mobile/downloader/DownloadStatus;->QUEUED:Lcom/audible/mobile/downloader/DownloadStatus;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    .line 447
    iget-object v1, p0, Lcom/audible/android/kcp/download/ContentProviderAudioFileManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v4, Lcom/audible/android/kcp/download/ContentProviderAudioFileManager;->DOWNLOAD_STATUS_SELECTION:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v2, v0

    move-object v3, v7

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v1, :cond_0

    .line 449
    monitor-exit p0

    return-void

    .line 452
    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "_id"

    .line 453
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 454
    sget-object v4, Lcom/audible/android/kcp/download/ContentProviderAudioFileManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removing download with downloadId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 455
    iget-object v4, p0, Lcom/audible/android/kcp/download/ContentProviderAudioFileManager;->mDownloadManager:Lcom/audible/mobile/download/DownloadManager;

    invoke-interface {v4, v2, v3}, Lcom/audible/mobile/download/DownloadManager;->cancel(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 458
    :cond_1
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 462
    iget-object v1, p0, Lcom/audible/android/kcp/download/ContentProviderAudioFileManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v0

    move-object v3, v7

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 463
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-nez v0, :cond_2

    .line 466
    monitor-exit p0

    return-void

    .line 469
    :cond_2
    :goto_1
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "_id"

    .line 470
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 471
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 474
    :cond_3
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 478
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 479
    sget-object v2, Lcom/audible/android/kcp/download/ContentProviderAudioFileManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removing download with downloadId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 480
    iget-object v2, p0, Lcom/audible/android/kcp/download/ContentProviderAudioFileManager;->mDownloadManager:Lcom/audible/mobile/download/DownloadManager;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Lcom/audible/mobile/download/DownloadManager;->cancel(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    .line 482
    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    .line 474
    :try_start_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 475
    throw v1

    :catchall_1
    move-exception v0

    .line 458
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 459
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public deleteAllFiles()I
    .locals 11

    .line 164
    invoke-static {}, Lcom/audible/android/kcp/download/receiver/AirDownloadType;->values()[Lcom/audible/android/kcp/download/receiver/AirDownloadType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v5, v0, v3

    .line 165
    iget-object v6, p0, Lcom/audible/android/kcp/download/ContentProviderAudioFileManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v7, p0, Lcom/audible/android/kcp/download/ContentProviderAudioFileManager;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$CatalogFiles;->getContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v7

    sget-object v8, Lcom/audible/android/kcp/download/ContentProviderAudioFileManager;->CATALOG_FILE_TYPE_SELECTION:Ljava/lang/String;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    .line 166
    invoke-virtual {v5}, Lcom/audible/android/kcp/download/receiver/AirDownloadType;->getFileType()Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v2

    .line 165
    invoke-virtual {v6, v7, v8, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v4, v6

    .line 169
    sget-object v7, Lcom/audible/android/kcp/download/ContentProviderAudioFileManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    const-string v8, "%d %s file deleted"

    invoke-interface {v7, v8, v6, v5}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return v4
.end method

.method public deleteFile(Lcom/audible/mobile/domain/Asin;Lcom/audible/android/kcp/download/receiver/AirDownloadType;)Z
    .locals 6

    .line 147
    iget-object v0, p0, Lcom/audible/android/kcp/download/ContentProviderAudioFileManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/audible/android/kcp/download/ContentProviderAudioFileManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$CatalogFiles;->getContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/audible/android/kcp/download/ContentProviderAudioFileManager;->CATALOG_ASIN_FILE_TYPE_SELECTION:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    .line 148
    invoke-interface {p1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {p2}, Lcom/audible/android/kcp/download/receiver/AirDownloadType;->getFileType()Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    const/4 v4, 0x1

    aput-object p2, v3, v4

    .line 147
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    if-gtz p2, :cond_0

    .line 151
    sget-object p2, Lcom/audible/android/kcp/download/ContentProviderAudioFileManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to delete Audiobook with Asin: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return v5

    :cond_0
    return v4
.end method

.method public forceClearAllDownloads()V
    .locals 4

    .line 491
    iget-object v0, p0, Lcom/audible/android/kcp/download/ContentProviderAudioFileManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/audible/mobile/download/provider/DownloadContract$DownloadItem;->getContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    .line 492
    iget-object v1, p0, Lcom/audible/android/kcp/download/ContentProviderAudioFileManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 495
    :try_start_0
    invoke-virtual {v1, v0, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 496
    sget-object v1, Lcom/audible/android/kcp/download/ContentProviderAudioFileManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "forceClearAllDownloads, num of rows deleted:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 498
    :catch_0
    sget-object v0, Lcom/audible/android/kcp/download/ContentProviderAudioFileManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "forceClearAllDownloads, provider is not ready, can\'t perform the action!"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 501
    :cond_0
    sget-object v0, Lcom/audible/android/kcp/download/ContentProviderAudioFileManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "forceClearAllDownloads, uri is null, can\'t perform the action!"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public getDownloadStatus(Lcom/audible/mobile/domain/Asin;Lcom/audible/android/kcp/download/receiver/AirDownloadType;)Lcom/audible/mobile/downloader/DownloadStatus;
    .locals 1

    .line 249
    invoke-virtual {p2}, Lcom/audible/android/kcp/download/receiver/AirDownloadType;->getContentType()Lcom/audible/mobile/download/ContentType;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/audible/android/kcp/download/ContentProviderAudioFileManager;->getDownloadingStatus(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/download/ContentType;)Lcom/audible/mobile/downloader/DownloadStatus;

    move-result-object v0

    if-nez v0, :cond_0

    .line 251
    invoke-virtual {p0, p1, p2}, Lcom/audible/android/kcp/download/ContentProviderAudioFileManager;->isDownloaded(Lcom/audible/mobile/domain/Asin;Lcom/audible/android/kcp/download/receiver/AirDownloadType;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 252
    sget-object p1, Lcom/audible/mobile/downloader/DownloadStatus;->FINISHED:Lcom/audible/mobile/downloader/DownloadStatus;

    return-object p1

    :cond_0
    return-object v0
.end method

.method public getDownloadStatus(Lcom/audible/mobile/domain/Asin;Lcom/audible/android/kcp/download/receiver/AirDownloadType;Ljava/lang/String;)Lcom/audible/mobile/downloader/DownloadStatus;
    .locals 1

    .line 261
    invoke-virtual {p2}, Lcom/audible/android/kcp/download/receiver/AirDownloadType;->getContentType()Lcom/audible/mobile/download/ContentType;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lcom/audible/android/kcp/download/ContentProviderAudioFileManager;->getDownloadingStatus(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/download/ContentType;Ljava/lang/String;)Lcom/audible/mobile/downloader/DownloadStatus;

    move-result-object p3

    if-nez p3, :cond_0

    .line 263
    invoke-virtual {p0, p1, p2}, Lcom/audible/android/kcp/download/ContentProviderAudioFileManager;->isDownloaded(Lcom/audible/mobile/domain/Asin;Lcom/audible/android/kcp/download/receiver/AirDownloadType;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 264
    sget-object p1, Lcom/audible/mobile/downloader/DownloadStatus;->FINISHED:Lcom/audible/mobile/downloader/DownloadStatus;

    return-object p1

    :cond_0
    return-object p3
.end method

.method public getFileSize(Lcom/audible/mobile/domain/Asin;Lcom/audible/android/kcp/download/receiver/AirDownloadType;)Ljava/lang/Long;
    .locals 2

    .line 228
    invoke-virtual {p2}, Lcom/audible/android/kcp/download/receiver/AirDownloadType;->getFileType()Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;

    move-result-object p2

    const-string v0, "FILE_SIZE_BYTES"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, p2, v1}, Lcom/audible/android/kcp/download/ContentProviderAudioFileManager;->getCatalogCursorByAsin(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return-object p2

    .line 235
    :cond_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 236
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    .line 237
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p2

    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p2

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 241
    throw p2
.end method

.method public getPartialFileLocation(Lcom/audible/mobile/domain/Asin;Lcom/audible/android/kcp/download/receiver/AirDownloadType;)Ljava/io/File;
    .locals 2

    .line 202
    invoke-virtual {p2}, Lcom/audible/android/kcp/download/receiver/AirDownloadType;->getContentType()Lcom/audible/mobile/download/ContentType;

    move-result-object p2

    const-string v0, "LOCAL_DOWNLOAD_URI"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, p2, v1}, Lcom/audible/android/kcp/download/ContentProviderAudioFileManager;->getDownloadCursorByAsin(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/download/ContentType;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return-object p2

    .line 210
    :cond_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 211
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 212
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 214
    invoke-static {v0}, Lcom/audible/mobile/util/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 215
    new-instance p2, Ljava/io/File;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p2

    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p2

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 220
    throw p2
.end method

.method public isDownloaded(Lcom/audible/mobile/domain/Asin;Lcom/audible/android/kcp/download/receiver/AirDownloadType;)Z
    .locals 1

    .line 319
    invoke-virtual {p2}, Lcom/audible/android/kcp/download/receiver/AirDownloadType;->getFileType()Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/audible/android/kcp/download/ContentProviderAudioFileManager;->getCatalogCursorByAsin(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 326
    :cond_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return p2

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 329
    throw p2
.end method

.method public isDownloading(Lcom/audible/mobile/domain/Asin;Lcom/audible/android/kcp/download/receiver/AirDownloadType;)Z
    .locals 0

    .line 273
    invoke-virtual {p0, p1, p2}, Lcom/audible/android/kcp/download/ContentProviderAudioFileManager;->getDownloadStatus(Lcom/audible/mobile/domain/Asin;Lcom/audible/android/kcp/download/receiver/AirDownloadType;)Lcom/audible/mobile/downloader/DownloadStatus;

    move-result-object p1

    .line 274
    sget-object p2, Lcom/audible/mobile/downloader/DownloadStatus;->IN_PROGRESS:Lcom/audible/mobile/downloader/DownloadStatus;

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isQueued(Lcom/audible/mobile/domain/Asin;Lcom/audible/android/kcp/download/receiver/AirDownloadType;)Z
    .locals 0

    .line 312
    invoke-virtual {p0, p1, p2}, Lcom/audible/android/kcp/download/ContentProviderAudioFileManager;->getDownloadStatus(Lcom/audible/mobile/domain/Asin;Lcom/audible/android/kcp/download/receiver/AirDownloadType;)Lcom/audible/mobile/downloader/DownloadStatus;

    move-result-object p1

    .line 313
    sget-object p2, Lcom/audible/mobile/downloader/DownloadStatus;->QUEUED:Lcom/audible/mobile/downloader/DownloadStatus;

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public declared-synchronized registerDownloadStatusCallback(Lcom/audible/mobile/domain/Asin;Lcom/audible/android/kcp/download/receiver/AirDownloadType;Lcom/audible/android/kcp/download/callback/DownloadStatusCallback;)V
    .locals 4

    monitor-enter p0

    .line 385
    :try_start_0
    sget-object v0, Lcom/audible/android/kcp/download/ContentProviderAudioFileManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerDownloadStatusCallback: registering "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 385
    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 389
    invoke-virtual {p2}, Lcom/audible/android/kcp/download/receiver/AirDownloadType;->getContentType()Lcom/audible/mobile/download/ContentType;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/audible/android/kcp/download/ContentProviderAudioFileManager;->getDownloadId(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/download/ContentType;)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    .line 394
    sget-object v0, Lcom/audible/android/kcp/download/ContentProviderAudioFileManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "registerDownloadStatusCallback: can\'t register because the download hasn\'t started yet."

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 395
    iget-object v0, p0, Lcom/audible/android/kcp/download/ContentProviderAudioFileManager;->mUnidentifiedWaitingDownloadCallbacks:Lcom/audible/android/kcp/download/callback/DownloadStatusCallbackHolder;

    invoke-interface {v0, p1, p2, p3}, Lcom/audible/android/kcp/download/callback/DownloadStatusCallbackHolder;->holdCallback(Lcom/audible/mobile/domain/Asin;Lcom/audible/android/kcp/download/receiver/AirDownloadType;Lcom/audible/android/kcp/download/callback/DownloadStatusCallback;)V

    goto :goto_0

    .line 397
    :cond_0
    sget-object v1, Lcom/audible/android/kcp/download/ContentProviderAudioFileManager$1;->$SwitchMap$com$audible$android$kcp$download$receiver$AirDownloadType:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v3, 0x2

    if-eq v1, v3, :cond_3

    const/4 v3, 0x3

    if-eq v1, v3, :cond_2

    const/4 v3, 0x4

    if-eq v1, v3, :cond_1

    .line 411
    sget-object p1, Lcom/audible/android/kcp/download/ContentProviderAudioFileManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-array p3, v2, [Ljava/lang/String;

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown downloadType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " will be ignored!"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p3, v0

    invoke-interface {p1, p3}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    goto :goto_0

    .line 408
    :cond_1
    iget-object p2, p0, Lcom/audible/android/kcp/download/ContentProviderAudioFileManager;->mSampleSyncCallbackRegistrar:Lcom/audible/android/kcp/download/callback/DownloadStatusCallbackRegistrar;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p2, v0, v1, p1, p3}, Lcom/audible/android/kcp/download/callback/DownloadStatusCallbackRegistrar;->registerDownloadStatusCallback(JLcom/audible/mobile/domain/Asin;Lcom/audible/android/kcp/download/callback/DownloadStatusCallback;)V

    goto :goto_0

    .line 405
    :cond_2
    iget-object p2, p0, Lcom/audible/android/kcp/download/ContentProviderAudioFileManager;->mSyncCallbackRegistrar:Lcom/audible/android/kcp/download/callback/DownloadStatusCallbackRegistrar;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p2, v0, v1, p1, p3}, Lcom/audible/android/kcp/download/callback/DownloadStatusCallbackRegistrar;->registerDownloadStatusCallback(JLcom/audible/mobile/domain/Asin;Lcom/audible/android/kcp/download/callback/DownloadStatusCallback;)V

    goto :goto_0

    .line 402
    :cond_3
    iget-object p2, p0, Lcom/audible/android/kcp/download/ContentProviderAudioFileManager;->mSampleAudiobookCallbackRegistrar:Lcom/audible/android/kcp/download/callback/DownloadStatusCallbackRegistrar;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p2, v0, v1, p1, p3}, Lcom/audible/android/kcp/download/callback/DownloadStatusCallbackRegistrar;->registerDownloadStatusCallback(JLcom/audible/mobile/domain/Asin;Lcom/audible/android/kcp/download/callback/DownloadStatusCallback;)V

    goto :goto_0

    .line 399
    :cond_4
    iget-object p2, p0, Lcom/audible/android/kcp/download/ContentProviderAudioFileManager;->mAudiobookCallbackRegistrar:Lcom/audible/android/kcp/download/callback/DownloadStatusCallbackRegistrar;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p2, v0, v1, p1, p3}, Lcom/audible/android/kcp/download/callback/DownloadStatusCallbackRegistrar;->registerDownloadStatusCallback(JLcom/audible/mobile/domain/Asin;Lcom/audible/android/kcp/download/callback/DownloadStatusCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 415
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized startDownload(Lcom/audible/android/kcp/download/receiver/DownloadRequestProvider;)V
    .locals 6

    monitor-enter p0

    .line 102
    :try_start_0
    invoke-interface {p1}, Lcom/audible/android/kcp/download/receiver/DownloadRequestProvider;->getRequest()Lcom/audible/mobile/download/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/audible/mobile/download/Request;->getAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v0

    .line 103
    invoke-interface {p1}, Lcom/audible/android/kcp/download/receiver/DownloadRequestProvider;->getDownloadType()Lcom/audible/android/kcp/download/receiver/AirDownloadType;

    move-result-object v1

    .line 104
    invoke-interface {p1}, Lcom/audible/android/kcp/download/receiver/DownloadRequestProvider;->getRequest()Lcom/audible/mobile/download/Request;

    move-result-object v2

    invoke-virtual {v2}, Lcom/audible/mobile/download/Request;->getOptionalPayload()Ljava/lang/String;

    move-result-object v2

    .line 105
    invoke-virtual {p0, v0, v1, v2}, Lcom/audible/android/kcp/download/ContentProviderAudioFileManager;->getDownloadStatus(Lcom/audible/mobile/domain/Asin;Lcom/audible/android/kcp/download/receiver/AirDownloadType;Ljava/lang/String;)Lcom/audible/mobile/downloader/DownloadStatus;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 107
    sget-object v3, Lcom/audible/mobile/downloader/DownloadStatus;->FINISHED:Lcom/audible/mobile/downloader/DownloadStatus;

    if-ne v2, v3, :cond_1

    .line 108
    :cond_0
    sget-object v2, Lcom/audible/android/kcp/download/ContentProviderAudioFileManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v3, "Enqueuing download for a %s"

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 109
    iget-object v2, p0, Lcom/audible/android/kcp/download/ContentProviderAudioFileManager;->mDownloadManager:Lcom/audible/mobile/download/DownloadManager;

    invoke-interface {p1}, Lcom/audible/android/kcp/download/receiver/DownloadRequestProvider;->getRequest()Lcom/audible/mobile/download/Request;

    move-result-object p1

    invoke-interface {v2, p1}, Lcom/audible/mobile/download/DownloadManager;->enqueue(Lcom/audible/mobile/download/Request;)J

    .line 110
    iget-object p1, p0, Lcom/audible/android/kcp/download/ContentProviderAudioFileManager;->mDownloadErrorStorage:Lcom/audible/android/kcp/download/DownloadErrorStorage;

    invoke-virtual {p1, v0}, Lcom/audible/android/kcp/download/DownloadErrorStorage;->removeFailedAudiobook(Lcom/audible/mobile/domain/Asin;)V

    .line 113
    :cond_1
    iget-object p1, p0, Lcom/audible/android/kcp/download/ContentProviderAudioFileManager;->mUnidentifiedWaitingDownloadCallbacks:Lcom/audible/android/kcp/download/callback/DownloadStatusCallbackHolder;

    invoke-interface {p1, v0, v1}, Lcom/audible/android/kcp/download/callback/DownloadStatusCallbackHolder;->removeWaitingCallbacks(Lcom/audible/mobile/domain/Asin;Lcom/audible/android/kcp/download/receiver/AirDownloadType;)Ljava/util/List;

    move-result-object p1

    .line 114
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 115
    sget-object v2, Lcom/audible/android/kcp/download/ContentProviderAudioFileManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v3, "New %s download has %d waiting callbacks, will try to re-register them"

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 118
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/audible/android/kcp/download/callback/DownloadStatusCallback;

    .line 119
    invoke-virtual {p0, v0, v1, v2}, Lcom/audible/android/kcp/download/ContentProviderAudioFileManager;->registerDownloadStatusCallback(Lcom/audible/mobile/domain/Asin;Lcom/audible/android/kcp/download/receiver/AirDownloadType;Lcom/audible/android/kcp/download/callback/DownloadStatusCallback;)V

    .line 120
    invoke-interface {v2}, Lcom/audible/android/kcp/download/callback/DownloadStatusCallback;->onDownloadQueued()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 122
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unregisterDownloadStatusCallback(Lcom/audible/mobile/domain/Asin;Lcom/audible/android/kcp/download/receiver/AirDownloadType;Lcom/audible/android/kcp/download/callback/DownloadStatusCallback;)V
    .locals 1

    monitor-enter p0

    .line 420
    :try_start_0
    iget-object v0, p0, Lcom/audible/android/kcp/download/ContentProviderAudioFileManager;->mUnidentifiedWaitingDownloadCallbacks:Lcom/audible/android/kcp/download/callback/DownloadStatusCallbackHolder;

    invoke-interface {v0, p1, p2}, Lcom/audible/android/kcp/download/callback/DownloadStatusCallbackHolder;->removeWaitingCallbacks(Lcom/audible/mobile/domain/Asin;Lcom/audible/android/kcp/download/receiver/AirDownloadType;)Ljava/util/List;

    .line 422
    sget-object v0, Lcom/audible/android/kcp/download/ContentProviderAudioFileManager$1;->$SwitchMap$com$audible$android$kcp$download$receiver$AirDownloadType:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 433
    :cond_0
    iget-object p2, p0, Lcom/audible/android/kcp/download/ContentProviderAudioFileManager;->mSampleSyncCallbackRegistrar:Lcom/audible/android/kcp/download/callback/DownloadStatusCallbackRegistrar;

    invoke-interface {p2, p1, p3}, Lcom/audible/android/kcp/download/callback/DownloadStatusCallbackRegistrar;->unregisterDownloadStatusCallback(Lcom/audible/mobile/domain/Asin;Lcom/audible/android/kcp/download/callback/DownloadStatusCallback;)V

    goto :goto_0

    .line 430
    :cond_1
    iget-object p2, p0, Lcom/audible/android/kcp/download/ContentProviderAudioFileManager;->mSyncCallbackRegistrar:Lcom/audible/android/kcp/download/callback/DownloadStatusCallbackRegistrar;

    invoke-interface {p2, p1, p3}, Lcom/audible/android/kcp/download/callback/DownloadStatusCallbackRegistrar;->unregisterDownloadStatusCallback(Lcom/audible/mobile/domain/Asin;Lcom/audible/android/kcp/download/callback/DownloadStatusCallback;)V

    goto :goto_0

    .line 427
    :cond_2
    iget-object p2, p0, Lcom/audible/android/kcp/download/ContentProviderAudioFileManager;->mSampleAudiobookCallbackRegistrar:Lcom/audible/android/kcp/download/callback/DownloadStatusCallbackRegistrar;

    invoke-interface {p2, p1, p3}, Lcom/audible/android/kcp/download/callback/DownloadStatusCallbackRegistrar;->unregisterDownloadStatusCallback(Lcom/audible/mobile/domain/Asin;Lcom/audible/android/kcp/download/callback/DownloadStatusCallback;)V

    goto :goto_0

    .line 424
    :cond_3
    iget-object p2, p0, Lcom/audible/android/kcp/download/ContentProviderAudioFileManager;->mAudiobookCallbackRegistrar:Lcom/audible/android/kcp/download/callback/DownloadStatusCallbackRegistrar;

    invoke-interface {p2, p1, p3}, Lcom/audible/android/kcp/download/callback/DownloadStatusCallbackRegistrar;->unregisterDownloadStatusCallback(Lcom/audible/mobile/domain/Asin;Lcom/audible/android/kcp/download/callback/DownloadStatusCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 436
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
