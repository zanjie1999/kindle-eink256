.class public Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl;
.super Ljava/lang/Object;
.source "SQLiteContentProviderImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl$Action;,
        Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl$UriInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.whispersync.dcp.framework.SQLiteContentProviderImpl"


# instance fields
.field private mOpenHelper:Lcom/amazon/whispersync/dcp/framework/SQLiteOpenHelperWrapper;

.field private mResolver:Landroid/content/ContentResolver;

.field private final mUriInfos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl$UriInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mUriMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl;->mUriMatcher:Landroid/content/UriMatcher;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl;->mUriInfos:Ljava/util/Map;

    return-void
.end method

.method private applyBatch(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Landroid/content/ContentProvider;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;",
            "Landroid/content/ContentProvider;",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .line 122
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/content/ContentProviderResult;

    .line 124
    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->beginTransaction()V

    const/4 v1, 0x0

    .line 127
    :goto_0
    :try_start_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 129
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentProviderOperation;

    invoke-virtual {v2, p2, v0, v1}, Landroid/content/ContentProviderOperation;->apply(Landroid/content/ContentProvider;[Landroid/content/ContentProviderResult;I)Landroid/content/ContentProviderResult;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 132
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->endTransaction()V

    return-object v0

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->endTransaction()V

    throw p2
.end method

.method private bulkInsertImpl(Landroid/net/Uri;[Landroid/content/ContentValues;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "[",
            "Landroid/content/ContentValues;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 217
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl;->getUriInfo(Landroid/net/Uri;)Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl$UriInfo;

    move-result-object v1

    .line 219
    iget-object v2, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl;->mOpenHelper:Lcom/amazon/whispersync/dcp/framework/SQLiteOpenHelperWrapper;

    invoke-virtual {v2}, Lcom/amazon/whispersync/dcp/framework/SQLiteOpenHelperWrapper;->getWritableDatabase()Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;

    move-result-object v2

    .line 220
    invoke-virtual {v2}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->beginTransaction()V

    .line 223
    :try_start_0
    array-length v3, p2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x0

    if-ge v5, v3, :cond_0

    aget-object v7, p2, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    :try_start_1
    invoke-virtual {v1}, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl$UriInfo;->getTableName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8, v6, v7}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v8

    .line 228
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v6

    .line 232
    :try_start_2
    sget-object v8, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl;->TAG:Ljava/lang/String;

    const-string v9, "Failed to insert row into database: %s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v7}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v10, v4

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 236
    :cond_0
    invoke-virtual {v2}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 240
    invoke-virtual {v2}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->endTransaction()V

    .line 241
    invoke-virtual {v2}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->close()V

    .line 244
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_1

    .line 246
    iget-object p2, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {p2, p1, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_1
    return-object v0

    :catchall_0
    move-exception p1

    .line 240
    invoke-virtual {v2}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->endTransaction()V

    .line 241
    invoke-virtual {v2}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->close()V

    throw p1
.end method

.method private performAction(Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl$Action;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7

    .line 292
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl;->mOpenHelper:Lcom/amazon/whispersync/dcp/framework/SQLiteOpenHelperWrapper;

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/SQLiteOpenHelperWrapper;->getWritableDatabase()Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;

    move-result-object v0

    move-object v1, p0

    move-object v2, v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 295
    :try_start_0
    invoke-direct/range {v1 .. v6}, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl;->performAction(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl$Action;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->close()V

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->close()V

    throw p1
.end method

.method private performAction(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl$Action;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 10

    .line 309
    invoke-virtual {p0, p3}, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl;->getUriInfo(Landroid/net/Uri;)Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl$UriInfo;

    move-result-object v0

    .line 310
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 311
    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->beginTransaction()V

    const/4 v2, 0x1

    :try_start_0
    new-array v5, v2, [Ljava/lang/String;

    .line 314
    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl$UriInfo;->getIdColumnName()Ljava/lang/String;

    move-result-object v3

    const/4 v9, 0x0

    aput-object v3, v5, v9

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v3 .. v8}, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 317
    :try_start_1
    invoke-interface {p4}, Landroid/database/Cursor;->isAfterLast()Z

    move-result p5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p5, :cond_0

    .line 341
    :try_start_2
    invoke-interface {p4}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 347
    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->endTransaction()V

    return v9

    .line 322
    :cond_0
    :try_start_3
    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl$UriInfo;->getIdColumnName()Ljava/lang/String;

    move-result-object p5

    invoke-interface {p4, p5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p5

    .line 323
    invoke-interface {p4}, Landroid/database/Cursor;->moveToNext()Z

    .line 324
    :goto_0
    invoke-interface {p4}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_2

    .line 326
    invoke-interface {p4, p5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 327
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl$UriInfo;->getIdColumnName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 328
    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl$UriInfo;->getTableName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, p1, v6, v5}, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl$Action;->doAction(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_1

    .line 330
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    invoke-interface {p4}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 334
    :cond_1
    new-instance p2, Landroid/database/sqlite/SQLiteException;

    invoke-direct {p2}, Landroid/database/sqlite/SQLiteException;-><init>()V

    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 341
    :cond_2
    :try_start_4
    invoke-interface {p4}, Landroid/database/Cursor;->close()V

    .line 343
    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 347
    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->endTransaction()V

    .line 351
    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl$UriInfo;->isGlobal()Z

    move-result p1

    if-nez p1, :cond_3

    .line 353
    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 354
    invoke-virtual {p3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, v2

    .line 355
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    sub-int/2addr p3, p2

    invoke-virtual {p1, v9, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 356
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    .line 361
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    .line 363
    iget-object p4, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {p3, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p2

    const/4 p5, 0x0

    invoke-virtual {p4, p2, p5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_1

    .line 366
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    return p1

    :catchall_0
    move-exception p2

    .line 341
    :try_start_5
    invoke-interface {p4}, Landroid/database/Cursor;->close()V

    throw p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p2

    .line 347
    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->endTransaction()V

    throw p2
.end method


# virtual methods
.method public addURI(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 87
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl;->mUriInfos:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 89
    iget-object v2, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 90
    iget-object v2, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl;->mUriInfos:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl$UriInfo;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "vnd.android.cursor.dir/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v1, p2, p3, v5}, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl$UriInfo;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/2addr v0, v1

    const-string v2, "#"

    .line 96
    invoke-static {p1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 97
    iget-object v2, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, p1, v0}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 98
    iget-object p1, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl;->mUriInfos:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl$UriInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "vnd.android.cursor.item/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p4

    const/4 v2, 0x0

    invoke-direct {v1, v2, p2, p3, p4}, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl$UriInfo;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public applyBatch(Landroid/content/ContentProvider;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentProvider;",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl;->mOpenHelper:Lcom/amazon/whispersync/dcp/framework/SQLiteOpenHelperWrapper;

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/SQLiteOpenHelperWrapper;->getWritableDatabase()Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;

    move-result-object v0

    .line 109
    :try_start_0
    invoke-direct {p0, v0, p1, p2}, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl;->applyBatch(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Landroid/content/ContentProvider;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->close()V

    throw p1
.end method

.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 0

    .line 208
    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl;->bulkInsertImpl(Landroid/net/Uri;[Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object p1

    .line 210
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    .line 268
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl$1;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl$1;-><init>(Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl;)V

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl;->performAction(Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl$Action;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    .line 201
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl;->getUriInfo(Landroid/net/Uri;)Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl$UriInfo;

    move-result-object p1

    .line 202
    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl$UriInfo;->getMIMEType()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getUriInfo(Landroid/net/Uri;)Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl$UriInfo;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 189
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl;->mUriInfos:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl;->mUriInfos:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl$UriInfo;

    return-object p1

    .line 191
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/content/ContentValues;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 254
    invoke-direct {p0, p1, v0}, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl;->bulkInsertImpl(Landroid/net/Uri;[Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object p2

    .line 256
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 258
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public isKnownUri(Landroid/net/Uri;)Z
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 182
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl;->mUriInfos:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9

    .line 148
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl;->getUriInfo(Landroid/net/Uri;)Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl$UriInfo;

    move-result-object v0

    .line 149
    new-instance v1, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v1}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 151
    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl$UriInfo;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 153
    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl$UriInfo;->isGlobal()Z

    move-result v2

    if-nez v2, :cond_0

    .line 155
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl$UriInfo;->getIdColumnName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl;->mOpenHelper:Lcom/amazon/whispersync/dcp/framework/SQLiteOpenHelperWrapper;

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/SQLiteOpenHelperWrapper;->getWritableDatabase()Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v7, p5

    .line 161
    :try_start_0
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, p4}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    .line 169
    iget-object p3, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl;->mResolver:Landroid/content/ContentResolver;

    invoke-interface {p2, p3, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->close()V

    return-object p2

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->close()V

    throw p1
.end method

.method public setContentResolver(Landroid/content/ContentResolver;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl;->mResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method public setOpenHelper(Lcom/amazon/whispersync/dcp/framework/SQLiteOpenHelperWrapper;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl;->mOpenHelper:Lcom/amazon/whispersync/dcp/framework/SQLiteOpenHelperWrapper;

    return-void
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    .line 280
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl$2;

    invoke-direct {v0, p0, p2}, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl$2;-><init>(Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl;Landroid/content/ContentValues;)V

    invoke-direct {p0, v0, p1, p3, p4}, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl;->performAction(Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl$Action;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method
