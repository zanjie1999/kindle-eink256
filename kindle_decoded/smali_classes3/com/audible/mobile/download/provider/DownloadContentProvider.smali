.class public abstract Lcom/audible/mobile/download/provider/DownloadContentProvider;
.super Landroid/content/ContentProvider;
.source "DownloadContentProvider.java"


# static fields
.field private static final DOWNLOAD_ITEM:I = 0x2

.field private static final DOWNLOAD_ITEMS:I = 0x1


# instance fields
.field private contentTypeServiceResolver:Lcom/audible/mobile/download/ContentTypeServiceResolver;

.field private downloadDataSource:Lcom/audible/mobile/download/provider/DownloadDataSource;

.field private final uriMatcher:Landroid/content/UriMatcher;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 29
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v0, p0, Lcom/audible/mobile/download/provider/DownloadContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    .line 33
    new-instance v0, Lcom/audible/mobile/download/ContentTypeServiceResolver;

    invoke-direct {v0}, Lcom/audible/mobile/download/ContentTypeServiceResolver;-><init>()V

    iput-object v0, p0, Lcom/audible/mobile/download/provider/DownloadContentProvider;->contentTypeServiceResolver:Lcom/audible/mobile/download/ContentTypeServiceResolver;

    return-void
.end method

.method private configureUriMatcher()V
    .locals 4

    .line 37
    iget-object v0, p0, Lcom/audible/mobile/download/provider/DownloadContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/audible/mobile/download/provider/DownloadContract;->AUTHORITY:Lcom/audible/mobile/provider/Authority;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/audible/mobile/provider/Authority;->getAuthority(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "downloads"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 38
    iget-object v0, p0, Lcom/audible/mobile/download/provider/DownloadContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/audible/mobile/download/provider/DownloadContract;->AUTHORITY:Lcom/audible/mobile/provider/Authority;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/audible/mobile/provider/Authority;->getAuthority(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "downloads/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private createDownloadIntent(Lcom/audible/mobile/download/ContentType;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 3

    .line 103
    iget-object v0, p0, Lcom/audible/mobile/download/provider/DownloadContentProvider;->contentTypeServiceResolver:Lcom/audible/mobile/download/ContentTypeServiceResolver;

    invoke-virtual {v0, p1}, Lcom/audible/mobile/download/ContentTypeServiceResolver;->getServiceForContentType(Lcom/audible/mobile/download/ContentType;)Ljava/lang/Class;

    move-result-object v0

    .line 104
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "com.audible.mobile.download.action.START_DOWNLOAD"

    .line 105
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    invoke-virtual {p1}, Lcom/audible/mobile/download/ContentType;->toIntentCategory()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.audible.mobile.download.extra.DOWNLOAD_ID"

    .line 107
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v1
.end method

.method private notifyChange(Landroid/net/Uri;)V
    .locals 2

    .line 154
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method

.method private setNotificationUri(Landroid/database/Cursor;Landroid/net/Uri;)V
    .locals 1

    .line 159
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    return-void
.end method


# virtual methods
.method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    .line 116
    iget-object v0, p0, Lcom/audible/mobile/download/provider/DownloadContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const-string v1, "downloads"

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 p2, 0x2

    if-ne v0, p2, :cond_0

    .line 118
    iget-object p2, p0, Lcom/audible/mobile/download/provider/DownloadContentProvider;->downloadDataSource:Lcom/audible/mobile/download/provider/DownloadDataSource;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    .line 119
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    new-array p3, v2, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, p3, v0

    const-string p1, "_id = ?"

    .line 121
    invoke-virtual {p2, v1, p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1

    .line 127
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported Uri: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 123
    :cond_1
    iget-object p1, p0, Lcom/audible/mobile/download/provider/DownloadContentProvider;->downloadDataSource:Lcom/audible/mobile/download/provider/DownloadDataSource;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    .line 125
    invoke-virtual {p1, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    .line 76
    iget-object v0, p0, Lcom/audible/mobile/download/provider/DownloadContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string p1, "vnd.android.cursor.item/downloads"

    return-object p1

    .line 83
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p1, "vnd.android.cursor.dir/downloads"

    return-object p1
.end method

.method public final insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 4

    .line 90
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/audible/mobile/download/provider/DownloadContract$DownloadItem;->getContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Unrecognized uri."

    invoke-static {v0, v1}, Lcom/audible/mobile/util/Assert;->isTrue(ZLjava/lang/String;)V

    const-string v0, "CATEGORY_NAME"

    .line 91
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    invoke-static {v0}, Lcom/audible/mobile/download/ContentType;->valueOf(Ljava/lang/String;)Lcom/audible/mobile/download/ContentType;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lcom/audible/mobile/download/provider/DownloadContentProvider;->downloadDataSource:Lcom/audible/mobile/download/provider/DownloadDataSource;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "downloads"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 94
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/audible/mobile/download/provider/DownloadContract$DownloadItem;->getContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p2

    invoke-static {p2, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p2

    .line 95
    invoke-direct {p0, v0, p2}, Lcom/audible/mobile/download/provider/DownloadContentProvider;->createDownloadIntent(Lcom/audible/mobile/download/ContentType;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 96
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 97
    invoke-direct {p0, p1}, Lcom/audible/mobile/download/provider/DownloadContentProvider;->notifyChange(Landroid/net/Uri;)V

    return-object p2
.end method

.method public final onCreate()Z
    .locals 2

    .line 44
    new-instance v0, Lcom/audible/mobile/download/provider/DownloadDataSource;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/audible/mobile/download/provider/DownloadDataSource;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/audible/mobile/download/provider/DownloadContentProvider;->downloadDataSource:Lcom/audible/mobile/download/provider/DownloadDataSource;

    .line 45
    invoke-direct {p0}, Lcom/audible/mobile/download/provider/DownloadContentProvider;->configureUriMatcher()V

    const/4 v0, 0x1

    return v0
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9

    .line 52
    iget-object v0, p0, Lcom/audible/mobile/download/provider/DownloadContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 p3, 0x2

    if-ne v0, p3, :cond_0

    .line 63
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p3

    .line 64
    iget-object p4, p0, Lcom/audible/mobile/download/provider/DownloadContentProvider;->downloadDataSource:Lcom/audible/mobile/download/provider/DownloadDataSource;

    invoke-virtual {p4}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 65
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "_id = "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v1, "downloads"

    move-object v2, p2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    .line 66
    invoke-direct {p0, p2, p1}, Lcom/audible/mobile/download/provider/DownloadContentProvider;->setNotificationUri(Landroid/database/Cursor;Landroid/net/Uri;)V

    return-object p2

    .line 70
    :cond_0
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

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/audible/mobile/download/provider/DownloadContentProvider;->downloadDataSource:Lcom/audible/mobile/download/provider/DownloadDataSource;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v2, "downloads"

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v8, p5

    .line 59
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    .line 60
    invoke-direct {p0, p2, p1}, Lcom/audible/mobile/download/provider/DownloadContentProvider;->setNotificationUri(Landroid/database/Cursor;Landroid/net/Uri;)V

    return-object p2
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    .line 134
    iget-object p3, p0, Lcom/audible/mobile/download/provider/DownloadContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {p3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p3

    const/4 p4, 0x2

    if-ne p3, p4, :cond_1

    .line 136
    iget-object p3, p0, Lcom/audible/mobile/download/provider/DownloadContentProvider;->downloadDataSource:Lcom/audible/mobile/download/provider/DownloadDataSource;

    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p3

    .line 138
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p4, v0, v1

    const-string p4, "downloads"

    const-string v1, "_id = ?"

    .line 140
    invoke-virtual {p3, p4, p2, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    if-lez p2, :cond_0

    .line 143
    invoke-direct {p0, p1}, Lcom/audible/mobile/download/provider/DownloadContentProvider;->notifyChange(Landroid/net/Uri;)V

    :cond_0
    return p2

    .line 148
    :cond_1
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
.end method
