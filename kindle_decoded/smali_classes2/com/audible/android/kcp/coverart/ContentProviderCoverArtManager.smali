.class public Lcom/audible/android/kcp/coverart/ContentProviderCoverArtManager;
.super Ljava/lang/Object;
.source "ContentProviderCoverArtManager.java"

# interfaces
.implements Lcom/audible/android/kcp/coverart/CoverArtManager;


# static fields
.field static final CATALOG_COVER_ART_DELETION:Ljava/lang/String;

.field static final CATALOG_COVER_ART_SELECTION:Ljava/lang/String;

.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private isContentObserverRegistered:Z

.field private final mCallBacks:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/audible/android/kcp/coverart/CoverArtCallBack;",
            ">;"
        }
    .end annotation
.end field

.field private final mCatalogFileSystemUri:Landroid/net/Uri;

.field private final mContentObserver:Landroid/database/ContentObserver;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private final mDownloadManager:Lcom/audible/mobile/download/DownloadManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 40
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/android/kcp/coverart/ContentProviderCoverArtManager;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/android/kcp/coverart/ContentProviderCoverArtManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "ASIN"

    const-string v1, "FILE_TYPE"

    const-string v2, "FILE_SUB_TYPE"

    .line 46
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/audible/android/kcp/util/DbUtil;->getAndSelection([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/audible/android/kcp/coverart/ContentProviderCoverArtManager;->CATALOG_COVER_ART_SELECTION:Ljava/lang/String;

    .line 53
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/audible/android/kcp/util/DbUtil;->getAndSelection([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/audible/android/kcp/coverart/ContentProviderCoverArtManager;->CATALOG_COVER_ART_DELETION:Ljava/lang/String;

    .line 59
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/audible/android/kcp/util/DbUtil;->getAndSelection([Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/audible/mobile/download/DownloadManager;)V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lcom/audible/android/kcp/coverart/ContentProviderCoverArtManager;->isContentObserverRegistered:Z

    .line 72
    iput-object p1, p0, Lcom/audible/android/kcp/coverart/ContentProviderCoverArtManager;->mContext:Landroid/content/Context;

    .line 73
    iput-object p2, p0, Lcom/audible/android/kcp/coverart/ContentProviderCoverArtManager;->mDownloadManager:Lcom/audible/mobile/download/DownloadManager;

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/android/kcp/coverart/ContentProviderCoverArtManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 76
    iget-object p1, p0, Lcom/audible/android/kcp/coverart/ContentProviderCoverArtManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$CatalogFiles;->getContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/android/kcp/coverart/ContentProviderCoverArtManager;->mCatalogFileSystemUri:Landroid/net/Uri;

    .line 77
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/android/kcp/coverart/ContentProviderCoverArtManager;->mCallBacks:Ljava/util/Collection;

    .line 79
    new-instance p1, Lcom/audible/android/kcp/coverart/CoverArtContentObserver;

    iget-object p2, p0, Lcom/audible/android/kcp/coverart/ContentProviderCoverArtManager;->mCallBacks:Ljava/util/Collection;

    invoke-direct {p1, p0, p2}, Lcom/audible/android/kcp/coverart/CoverArtContentObserver;-><init>(Lcom/audible/android/kcp/coverart/CoverArtManager;Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/audible/android/kcp/coverart/ContentProviderCoverArtManager;->mContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private getCatalogCursorByAsinAndCoverArtType(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/audio/metadata/CoverArtType;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7

    const/4 v0, 0x3

    new-array v5, v0, [Ljava/lang/String;

    .line 201
    invoke-interface {p1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, v5, v0

    sget-object p1, Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;->COVER_ART:Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    aput-object p1, v5, v0

    invoke-interface {p2}, Lcom/audible/mobile/audio/metadata/CoverArtType;->name()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v5, p2

    .line 202
    iget-object v1, p0, Lcom/audible/android/kcp/coverart/ContentProviderCoverArtManager;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/audible/android/kcp/coverart/ContentProviderCoverArtManager;->mCatalogFileSystemUri:Landroid/net/Uri;

    sget-object v4, Lcom/audible/android/kcp/coverart/ContentProviderCoverArtManager;->CATALOG_COVER_ART_SELECTION:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v3, p3

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public deleteCoverArt(Lcom/audible/mobile/domain/Asin;)Z
    .locals 6

    .line 94
    sget-object v0, Lcom/audible/android/kcp/coverart/ContentProviderCoverArtManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-interface {p1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Removing cover art for ASIN [%s]"

    invoke-interface {v0, v2, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 96
    invoke-interface {p1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;->COVER_ART:Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 97
    iget-object v1, p0, Lcom/audible/android/kcp/coverart/ContentProviderCoverArtManager;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/audible/android/kcp/coverart/ContentProviderCoverArtManager;->mCatalogFileSystemUri:Landroid/net/Uri;

    sget-object v5, Lcom/audible/android/kcp/coverart/ContentProviderCoverArtManager;->CATALOG_COVER_ART_DELETION:Ljava/lang/String;

    invoke-virtual {v1, v4, v5, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 100
    sget-object v0, Lcom/audible/android/kcp/coverart/ContentProviderCoverArtManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-interface {p1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "Couldn\'t delete cover art with ASIN [%s]"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return v2

    :cond_0
    return v3
.end method

.method public getCoverArtStorageLocation(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/audio/metadata/CoverArtType;)Ljava/io/File;
    .locals 4

    .line 143
    sget-object v0, Lcom/audible/android/kcp/coverart/ContentProviderCoverArtManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-interface {p1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lcom/audible/mobile/audio/metadata/CoverArtType;->name()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Checking cover art for ASIN [%s] and CoverArtType [%s]"

    invoke-interface {v0, v3, v1, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v0, "FILE_LOCATION_URI"

    .line 145
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, p2, v1}, Lcom/audible/android/kcp/coverart/ContentProviderCoverArtManager;->getCatalogCursorByAsinAndCoverArtType(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/audio/metadata/CoverArtType;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    .line 149
    sget-object p1, Lcom/audible/android/kcp/coverart/ContentProviderCoverArtManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Cursor is null! This is unexpected."

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-object p2

    .line 154
    :cond_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 155
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    .line 156
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 157
    sget-object v0, Lcom/audible/android/kcp/coverart/ContentProviderCoverArtManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "File location = [%s]"

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 158
    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0

    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 164
    sget-object p1, Lcom/audible/android/kcp/coverart/ContentProviderCoverArtManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Cover art not found!"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    return-object p2

    :catchall_0
    move-exception p2

    .line 161
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 162
    throw p2
.end method
