.class public Lcom/amazon/whispersync/dcp/framework/ComponentDebugStateProvider;
.super Landroid/content/ContentProvider;
.source "ComponentDebugStateProvider.java"


# static fields
.field static final AUTHORITY:Ljava/lang/String; = "com.amazon.whispersync.dcp.framework.ComponentState"

.field static final AUTHORITY_URI:Landroid/net/Uri;

.field public static final COLUMN_ID:Ljava/lang/String; = "id"

.field static final ROW_MIME_SUBTYPE:Ljava/lang/String; = "vnd.amazon.dcp.framework.ComponentDebugStateProvider.row"


# instance fields
.field private mImpl:Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl;

.field private mOpenHelper:Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "com.amazon.whispersync.dcp.framework.ComponentState"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/dcp/framework/ComponentDebugStateProvider;->AUTHORITY_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 30
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl;

    invoke-direct {v0}, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ComponentDebugStateProvider;->mImpl:Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl;

    return-void
.end method

.method private getColumnNames(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 108
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const-string p2, "PRAGMA table_info(%s)"

    .line 110
    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    const-string p2, "name"

    .line 113
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    .line 115
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 122
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw p2
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ComponentDebugStateProvider;->mImpl:Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl;->isKnownUri(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ComponentDebugStateProvider;->mImpl:Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ComponentDebugStateProvider;->mImpl:Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 7

    .line 69
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/ComponentDebugStateProvider;->mOpenHelper:Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteOpenHelper;

    invoke-virtual {v1}, Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteOpenHelper;->getWritableDatabase()Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;

    move-result-object v1

    .line 72
    invoke-virtual {v1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->beginTransaction()V

    .line 75
    :try_start_0
    iget-object v2, p0, Lcom/amazon/whispersync/dcp/framework/ComponentDebugStateProvider;->mImpl:Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl;

    invoke-virtual {v2, p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl;->isKnownUri(Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 77
    new-instance v2, Lcom/amazon/whispersync/dcp/framework/SQLTable;

    invoke-direct {v2, v0}, Lcom/amazon/whispersync/dcp/framework/SQLTable;-><init>(Ljava/lang/String;)V

    const-string v3, "id"

    const-string v4, "TEXT PRIMARY KEY ON CONFLICT REPLACE"

    invoke-virtual {v2, v3, v4}, Lcom/amazon/whispersync/dcp/framework/SQLTable;->addColumn(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/SQLTable;

    move-result-object v2

    .line 79
    invoke-virtual {v2}, Lcom/amazon/whispersync/dcp/framework/SQLTable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->execSQL(Ljava/lang/String;)V

    .line 81
    iget-object v2, p0, Lcom/amazon/whispersync/dcp/framework/ComponentDebugStateProvider;->mImpl:Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl;

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "rowid"

    const-string/jumbo v5, "vnd.amazon.dcp.framework.ComponentDebugStateProvider.row"

    invoke-virtual {v2, p1, v3, v4, v5}, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl;->addURI(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :cond_0
    invoke-direct {p0, v1, v0}, Lcom/amazon/whispersync/dcp/framework/ComponentDebugStateProvider;->getColumnNames(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    .line 87
    invoke-virtual {p2}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 89
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 90
    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 92
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ALTER TABLE "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ADD COLUMN "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " TEXT"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->execSQL(Ljava/lang/String;)V

    goto :goto_0

    .line 95
    :cond_2
    invoke-virtual {v1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    invoke-virtual {v1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->endTransaction()V

    .line 100
    invoke-virtual {v1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->close()V

    .line 103
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ComponentDebugStateProvider;->mImpl:Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 99
    invoke-virtual {v1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->endTransaction()V

    .line 100
    invoke-virtual {v1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->close()V

    throw p1
.end method

.method public onCreate()Z
    .locals 4

    .line 35
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/ComponentDebugStateProvider$1;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v3, v2}, Lcom/amazon/whispersync/dcp/framework/ComponentDebugStateProvider$1;-><init>(Lcom/amazon/whispersync/dcp/framework/ComponentDebugStateProvider;Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ComponentDebugStateProvider;->mOpenHelper:Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteOpenHelper;

    .line 43
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ComponentDebugStateProvider;->mImpl:Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl;->setContentResolver(Landroid/content/ContentResolver;)V

    .line 44
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ComponentDebugStateProvider;->mImpl:Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl;

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/ComponentDebugStateProvider;->mOpenHelper:Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteOpenHelper;

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl;->setOpenHelper(Lcom/amazon/whispersync/dcp/framework/SQLiteOpenHelperWrapper;)V

    return v2
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    .line 52
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ComponentDebugStateProvider;->mImpl:Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl;->isKnownUri(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    new-instance p1, Landroid/database/MatrixCursor;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/String;

    invoke-direct {p1, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    return-object p1

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ComponentDebugStateProvider;->mImpl:Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ComponentDebugStateProvider;->mImpl:Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl;->isKnownUri(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ComponentDebugStateProvider;->mImpl:Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method
