.class public abstract Lcom/audible/mobile/catalog/filesystem/provider/CatalogFileSystemContentProvider;
.super Landroid/content/ContentProvider;
.source "CatalogFileSystemContentProvider.java"


# static fields
.field private static final CONST_MATCH_ITEM:I = 0x1

.field private static final CONST_MATCH_ITEMS:I

.field private static final QUERY_COLUMNS_FOR_FILES_TO_BE_DELETED:[Ljava/lang/String;


# instance fields
.field private catalogFileSystemDatasource:Lcom/audible/mobile/catalog/filesystem/provider/CatalogFileSystemDatasource;

.field private final logger:Lorg/slf4j/Logger;

.field private uriMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "FILE_LOCATION_URI"

    .line 47
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/audible/mobile/catalog/filesystem/provider/CatalogFileSystemContentProvider;->QUERY_COLUMNS_FOR_FILES_TO_BE_DELETED:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 43
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 45
    new-instance v0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/audible/mobile/catalog/filesystem/provider/CatalogFileSystemContentProvider;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method private closeCursor(Landroid/database/Cursor;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 283
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void
.end method

.method private configureUriMatcher()V
    .locals 4

    .line 69
    iget-object v0, p0, Lcom/audible/mobile/catalog/filesystem/provider/CatalogFileSystemContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract;->AUTHORITY:Lcom/audible/mobile/provider/Authority;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/audible/mobile/provider/Authority;->getAuthority(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CATALOG_FILES"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 70
    iget-object v0, p0, Lcom/audible/mobile/catalog/filesystem/provider/CatalogFileSystemContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract;->AUTHORITY:Lcom/audible/mobile/provider/Authority;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/audible/mobile/provider/Authority;->getAuthority(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CATALOG_FILES/#"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private submitCoverArtTransformationRequest(Landroid/content/ContentValues;)V
    .locals 4

    .line 268
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "ASIN"

    .line 269
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/audible/mobile/domain/ImmutableAsinImpl;->nullSafeFactory(Ljava/lang/String;)Lcom/audible/mobile/domain/Asin;

    move-result-object v0

    const-string v1, "FILE_LOCATION_URI"

    .line 270
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 271
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/audible/mobile/catalog/filesystem/coverart/CoverArtTransformationService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 272
    sget-object v2, Lcom/audible/mobile/catalog/filesystem/coverart/CoverArtTransformationService;->EXTRA_ASIN:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 273
    sget-object v0, Lcom/audible/mobile/catalog/filesystem/coverart/CoverArtTransformationService;->EXTRA_LOCATION_URI:Ljava/lang/String;

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 274
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/audible/mobile/catalog/filesystem/coverart/CoverArtTransformationService;->enqueueWork(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 276
    :cond_0
    iget-object p1, p0, Lcom/audible/mobile/catalog/filesystem/provider/CatalogFileSystemContentProvider;->logger:Lorg/slf4j/Logger;

    const-string v0, "Context is null, can\'t submit cover art transformations request!"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private validateContentValues(Landroid/content/ContentValues;)V
    .locals 2

    const-string v0, "FILE_TYPE"

    .line 137
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FILE_LOCATION_URI"

    .line 138
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 139
    invoke-direct {p0, p1}, Lcom/audible/mobile/catalog/filesystem/provider/CatalogFileSystemContentProvider;->validateFile(Ljava/lang/String;)V

    .line 140
    invoke-direct {p0, v0}, Lcom/audible/mobile/catalog/filesystem/provider/CatalogFileSystemContentProvider;->validateFileTypeEnum(Ljava/lang/String;)V

    return-void
.end method

.method private validateFile(Ljava/lang/String;)V
    .locals 3

    .line 164
    invoke-static {p1}, Lcom/audible/mobile/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 167
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 168
    invoke-static {p1}, Lcom/audible/mobile/util/UriUtils;->uriToFile(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p1

    .line 169
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting to save file to repository, but file doesn\'t exist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/audible/mobile/util/Assert;->isTrue(ZLjava/lang/String;)V

    return-void
.end method

.method private validateFileTypeEnum(Ljava/lang/String;)V
    .locals 1

    .line 151
    invoke-static {p1}, Lcom/audible/mobile/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 154
    :cond_0
    invoke-static {p1}, Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;->valueOf(Ljava/lang/String;)Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;

    return-void
.end method


# virtual methods
.method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 10

    .line 175
    iget-object v0, p0, Lcom/audible/mobile/catalog/filesystem/provider/CatalogFileSystemContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/audible/mobile/catalog/filesystem/provider/CatalogFileSystemContentProvider;->catalogFileSystemDatasource:Lcom/audible/mobile/catalog/filesystem/provider/CatalogFileSystemDatasource;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    sget-object v4, Lcom/audible/mobile/catalog/filesystem/provider/CatalogFileSystemContentProvider;->QUERY_COLUMNS_FOR_FILES_TO_BE_DELETED:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v3, "CATALOG_FILES"

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 181
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 183
    iget-object v3, p0, Lcom/audible/mobile/catalog/filesystem/provider/CatalogFileSystemContentProvider;->catalogFileSystemDatasource:Lcom/audible/mobile/catalog/filesystem/provider/CatalogFileSystemDatasource;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "CATALOG_FILES"

    invoke-virtual {v3, v4, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    if-eq v2, p2, :cond_1

    .line 186
    iget-object p3, p0, Lcom/audible/mobile/catalog/filesystem/provider/CatalogFileSystemContentProvider;->logger:Lorg/slf4j/Logger;

    .line 187
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Attempting to delete ASIN file system meta data.  However, file list to delete of size {} does not match rows deleted {}"

    .line 186
    invoke-interface {p3, v4, v2, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 191
    :cond_1
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 193
    :cond_2
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 194
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    .line 195
    invoke-static {p3}, Lcom/audible/mobile/util/UriUtils;->uriToFile(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p3

    .line 197
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 198
    iget-object v2, p0, Lcom/audible/mobile/catalog/filesystem/provider/CatalogFileSystemContentProvider;->logger:Lorg/slf4j/Logger;

    const-string v3, "Deleting local file [{}] because it was removed from the catalog file system."

    invoke-interface {v2, v3, p3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 199
    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_3

    .line 200
    iget-object v2, p0, Lcom/audible/mobile/catalog/filesystem/provider/CatalogFileSystemContentProvider;->logger:Lorg/slf4j/Logger;

    const-string v3, "Unable to delete local file [{}].  Could lead to out of space issues since we are no longer tracking it."

    invoke-interface {v2, v3, p3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 203
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p3, :cond_2

    .line 207
    :cond_4
    invoke-direct {p0, v0}, Lcom/audible/mobile/catalog/filesystem/provider/CatalogFileSystemContentProvider;->closeCursor(Landroid/database/Cursor;)V

    if-lez p2, :cond_5

    .line 211
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p3, p1, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_5
    return p2

    :catchall_0
    move-exception p1

    .line 207
    invoke-direct {p0, v0}, Lcom/audible/mobile/catalog/filesystem/provider/CatalogFileSystemContentProvider;->closeCursor(Landroid/database/Cursor;)V

    .line 208
    throw p1
.end method

.method public final getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    .line 90
    iget-object v0, p0, Lcom/audible/mobile/catalog/filesystem/provider/CatalogFileSystemContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string p1, "vnd.android.cursor.item/catalog_file"

    return-object p1

    .line 98
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown Uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p1, "vnd.android.cursor.dir/catalog_files"

    return-object p1
.end method

.method public final insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 4

    .line 104
    iget-object v0, p0, Lcom/audible/mobile/catalog/filesystem/provider/CatalogFileSystemContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    if-nez v0, :cond_3

    .line 107
    invoke-direct {p0, p2}, Lcom/audible/mobile/catalog/filesystem/provider/CatalogFileSystemContentProvider;->validateContentValues(Landroid/content/ContentValues;)V

    const-string v0, "FILE_TYPE"

    .line 108
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;->valueOf(Ljava/lang/String;)Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;

    move-result-object v0

    const-string v1, "FILE_SUB_TYPE"

    .line 109
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 112
    sget-object v2, Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;->COVER_ART:Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    invoke-static {v1}, Lcom/audible/mobile/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    invoke-direct {p0, p2}, Lcom/audible/mobile/catalog/filesystem/provider/CatalogFileSystemContentProvider;->submitCoverArtTransformationRequest(Landroid/content/ContentValues;)V

    return-object v3

    :cond_0
    const-string v0, "CREATION_DATE_MS_UTC"

    .line 119
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_1

    .line 120
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_1
    const-string v0, "FILE_SIZE_BYTES"

    .line 123
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, "FILE_LOCATION_URI"

    .line 124
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/audible/mobile/util/UriUtils;->uriToFile(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v1

    .line 125
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 127
    :cond_2
    iget-object v0, p0, Lcom/audible/mobile/catalog/filesystem/provider/CatalogFileSystemContentProvider;->catalogFileSystemDatasource:Lcom/audible/mobile/catalog/filesystem/provider/CatalogFileSystemDatasource;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "CATALOG_FILES"

    const-string v2, ""

    invoke-virtual {v0, v1, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 128
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {p2, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 129
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$CatalogFiles;->getContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    .line 132
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown Uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final onCreate()Z
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/audible/mobile/catalog/filesystem/provider/CatalogFileSystemContentProvider;->logger:Lorg/slf4j/Logger;

    const-string v1, "Creating catalog file system content provider."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 61
    new-instance v0, Lcom/audible/mobile/catalog/filesystem/provider/CatalogFileSystemDatasource;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/audible/mobile/catalog/filesystem/provider/CatalogFileSystemDatasource;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/audible/mobile/catalog/filesystem/provider/CatalogFileSystemContentProvider;->catalogFileSystemDatasource:Lcom/audible/mobile/catalog/filesystem/provider/CatalogFileSystemDatasource;

    .line 62
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v0, p0, Lcom/audible/mobile/catalog/filesystem/provider/CatalogFileSystemContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    .line 63
    invoke-direct {p0}, Lcom/audible/mobile/catalog/filesystem/provider/CatalogFileSystemContentProvider;->configureUriMatcher()V

    const/4 v0, 0x1

    return v0
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    .line 76
    iget-object v0, p0, Lcom/audible/mobile/catalog/filesystem/provider/CatalogFileSystemContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 p2, 0x1

    if-eq v0, p2, :cond_0

    .line 84
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unknown Uri: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 79
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unsupported Uri: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 81
    :cond_1
    iget-object p1, p0, Lcom/audible/mobile/catalog/filesystem/provider/CatalogFileSystemContentProvider;->catalogFileSystemDatasource:Lcom/audible/mobile/catalog/filesystem/provider/CatalogFileSystemDatasource;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v1, "CATALOG_FILES"

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 9

    .line 223
    iget-object v0, p0, Lcom/audible/mobile/catalog/filesystem/provider/CatalogFileSystemContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 226
    :cond_0
    invoke-direct {p0, p2}, Lcom/audible/mobile/catalog/filesystem/provider/CatalogFileSystemContentProvider;->validateContentValues(Landroid/content/ContentValues;)V

    const-string v0, "FILE_LOCATION_URI"

    .line 229
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 231
    sget-object v5, Lcom/audible/mobile/catalog/filesystem/provider/CatalogFileSystemContentProvider;->QUERY_COLUMNS_FOR_FILES_TO_BE_DELETED:[Ljava/lang/String;

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v3 .. v8}, Lcom/audible/mobile/catalog/filesystem/provider/CatalogFileSystemContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 232
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    .line 233
    iget-object v5, p0, Lcom/audible/mobile/catalog/filesystem/provider/CatalogFileSystemContentProvider;->logger:Lorg/slf4j/Logger;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v1

    const/4 v4, 0x1

    aput-object p3, v6, v4

    const/4 v4, 0x2

    aput-object p4, v6, v4

    const-string v4, "Found {} matching items for query {} with args {}"

    invoke-interface {v5, v4, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    move-object v3, v2

    .line 237
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/audible/mobile/catalog/filesystem/provider/CatalogFileSystemContentProvider;->catalogFileSystemDatasource:Lcom/audible/mobile/catalog/filesystem/provider/CatalogFileSystemDatasource;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "CATALOG_FILES"

    invoke-virtual {v4, v5, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    if-lez p2, :cond_5

    if-eqz v3, :cond_4

    .line 242
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 244
    :cond_2
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 246
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_3

    .line 247
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-static {p3}, Lcom/audible/mobile/util/UriUtils;->uriToFile(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p3

    .line 249
    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    move-result p4

    if-eqz p4, :cond_3

    .line 250
    iget-object p4, p0, Lcom/audible/mobile/catalog/filesystem/provider/CatalogFileSystemContentProvider;->logger:Lorg/slf4j/Logger;

    const-string v4, "Deleting local file [{}] because we updated the record to reference another file."

    invoke-interface {p4, v4, p3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 253
    :cond_3
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result p3

    if-nez p3, :cond_2

    .line 256
    :cond_4
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    invoke-virtual {p3, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    :cond_5
    invoke-direct {p0, v3}, Lcom/audible/mobile/catalog/filesystem/provider/CatalogFileSystemContentProvider;->closeCursor(Landroid/database/Cursor;)V

    return p2

    :catchall_0
    move-exception p1

    invoke-direct {p0, v3}, Lcom/audible/mobile/catalog/filesystem/provider/CatalogFileSystemContentProvider;->closeCursor(Landroid/database/Cursor;)V

    .line 261
    throw p1
.end method
