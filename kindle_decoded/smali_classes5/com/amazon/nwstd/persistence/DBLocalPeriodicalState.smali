.class public Lcom/amazon/nwstd/persistence/DBLocalPeriodicalState;
.super Lcom/amazon/nwstd/persistence/DBLocalStorage;
.source "DBLocalPeriodicalState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/nwstd/persistence/DBLocalPeriodicalState$DBBookmarkMapping;
    }
.end annotation


# static fields
.field private static final SQL_BOOKMARKS_BACKUP:Ljava/lang/StringBuffer;

.field private static final SQL_BOOKMARKS_COPY_DATA:Ljava/lang/StringBuffer;

.field private static final SQL_BOOKMARKS_CREATE_V2:Ljava/lang/StringBuffer;

.field private static final SQL_BOOKMARKS_DROP:Ljava/lang/StringBuffer;

.field private static final SQL_BOOKMARKS_DROP_BACKUP:Ljava/lang/StringBuffer;

.field private static final SQL_CREATE_STATEMENTS:[Ljava/lang/String;

.field private static final SQL_DROP_STATEMENTS:[Ljava/lang/String;

.field private static final SQL_MIGRATION_STATEMENTS:[[Ljava/lang/String;

.field private static final SQL_MIGRATION_STATEMENTS_V1_TO_V2:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static instance:Lcom/amazon/nwstd/persistence/DBLocalPeriodicalState;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 39
    const-class v0, Lcom/amazon/nwstd/persistence/DBLocalPeriodicalState;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/nwstd/persistence/DBLocalPeriodicalState;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 41
    sput-object v0, Lcom/amazon/nwstd/persistence/DBLocalPeriodicalState;->instance:Lcom/amazon/nwstd/persistence/DBLocalPeriodicalState;

    .line 104
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "CREATE TABLE IF NOT EXISTS "

    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "periodical_bookmarks"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " ( "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "book_asin"

    .line 106
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, " TEXT, "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "book_guid"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v6, "page_id"

    .line 107
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v7, " INTEGER, "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v7, "article_title"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v8, "description"

    .line 108
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v4, "position"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v9, " INTEGER DEFAULT -1, "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v9, " PRIMARY KEY  ("

    .line 109
    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v9, ", "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 110
    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, ") )"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sput-object v0, Lcom/amazon/nwstd/persistence/DBLocalPeriodicalState;->SQL_BOOKMARKS_CREATE_V2:Ljava/lang/StringBuffer;

    const/4 v4, 0x1

    new-array v10, v4, [Ljava/lang/String;

    .line 114
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v11, 0x0

    aput-object v0, v10, v11

    sput-object v10, Lcom/amazon/nwstd/persistence/DBLocalPeriodicalState;->SQL_CREATE_STATEMENTS:[Ljava/lang/String;

    .line 117
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "ALTER TABLE "

    .line 118
    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v10, " RENAME TO "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v10, "periodical_bookmarks_old"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sput-object v0, Lcom/amazon/nwstd/persistence/DBLocalPeriodicalState;->SQL_BOOKMARKS_BACKUP:Ljava/lang/StringBuffer;

    .line 120
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v12, "INSERT INTO "

    .line 121
    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 122
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 123
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " ) SELECT "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 124
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v2, "text"

    .line 125
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " FROM "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sput-object v0, Lcom/amazon/nwstd/persistence/DBLocalPeriodicalState;->SQL_BOOKMARKS_COPY_DATA:Ljava/lang/StringBuffer;

    .line 127
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "DROP TABLE IF EXISTS "

    .line 128
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sput-object v0, Lcom/amazon/nwstd/persistence/DBLocalPeriodicalState;->SQL_BOOKMARKS_DROP_BACKUP:Ljava/lang/StringBuffer;

    .line 130
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 131
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sput-object v0, Lcom/amazon/nwstd/persistence/DBLocalPeriodicalState;->SQL_BOOKMARKS_DROP:Ljava/lang/StringBuffer;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 134
    sget-object v1, Lcom/amazon/nwstd/persistence/DBLocalPeriodicalState;->SQL_BOOKMARKS_BACKUP:Ljava/lang/StringBuffer;

    .line 135
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v11

    sget-object v1, Lcom/amazon/nwstd/persistence/DBLocalPeriodicalState;->SQL_BOOKMARKS_CREATE_V2:Ljava/lang/StringBuffer;

    .line 136
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    sget-object v1, Lcom/amazon/nwstd/persistence/DBLocalPeriodicalState;->SQL_BOOKMARKS_COPY_DATA:Ljava/lang/StringBuffer;

    .line 137
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/nwstd/persistence/DBLocalPeriodicalState;->SQL_BOOKMARKS_DROP_BACKUP:Ljava/lang/StringBuffer;

    .line 138
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v0, v3

    sput-object v0, Lcom/amazon/nwstd/persistence/DBLocalPeriodicalState;->SQL_MIGRATION_STATEMENTS_V1_TO_V2:[Ljava/lang/String;

    new-array v1, v4, [[Ljava/lang/String;

    aput-object v0, v1, v11

    .line 141
    sput-object v1, Lcom/amazon/nwstd/persistence/DBLocalPeriodicalState;->SQL_MIGRATION_STATEMENTS:[[Ljava/lang/String;

    new-array v0, v2, [Ljava/lang/String;

    .line 147
    sget-object v1, Lcom/amazon/nwstd/persistence/DBLocalPeriodicalState;->SQL_BOOKMARKS_DROP_BACKUP:Ljava/lang/StringBuffer;

    .line 148
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v11

    sget-object v1, Lcom/amazon/nwstd/persistence/DBLocalPeriodicalState;->SQL_BOOKMARKS_DROP:Ljava/lang/StringBuffer;

    .line 149
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Lcom/amazon/nwstd/persistence/DBLocalPeriodicalState;->SQL_DROP_STATEMENTS:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 158
    invoke-direct {p0, p1}, Lcom/amazon/nwstd/persistence/DBLocalStorage;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/amazon/nwstd/persistence/DBLocalPeriodicalState;
    .locals 2

    const-class v0, Lcom/amazon/nwstd/persistence/DBLocalPeriodicalState;

    monitor-enter v0

    .line 60
    :try_start_0
    sget-object v1, Lcom/amazon/nwstd/persistence/DBLocalPeriodicalState;->instance:Lcom/amazon/nwstd/persistence/DBLocalPeriodicalState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized initialize(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lcom/amazon/nwstd/persistence/DBLocalPeriodicalState;

    monitor-enter v0

    .line 49
    :try_start_0
    sget-object v1, Lcom/amazon/nwstd/persistence/DBLocalPeriodicalState;->instance:Lcom/amazon/nwstd/persistence/DBLocalPeriodicalState;

    if-nez v1, :cond_0

    .line 50
    new-instance v1, Lcom/amazon/nwstd/persistence/DBLocalPeriodicalState;

    invoke-direct {v1, p0}, Lcom/amazon/nwstd/persistence/DBLocalPeriodicalState;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/amazon/nwstd/persistence/DBLocalPeriodicalState;->instance:Lcom/amazon/nwstd/persistence/DBLocalPeriodicalState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private declared-synchronized updateBookmarks(Lcom/amazon/kindle/model/content/LocalBookState;)V
    .locals 7

    monitor-enter p0

    .line 245
    :try_start_0
    check-cast p1, Lcom/amazon/nwstd/persistence/LocalPeriodicalState;

    .line 246
    invoke-virtual {p1}, Lcom/amazon/nwstd/persistence/LocalPeriodicalState;->getBookmarksToDelete()Ljava/util/Set;

    move-result-object v0

    .line 247
    invoke-virtual {p1}, Lcom/amazon/nwstd/persistence/LocalPeriodicalState;->getBookmarksToAdd()Ljava/util/Set;

    move-result-object v1

    .line 248
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 250
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData$Key;

    .line 251
    iget v4, v3, Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData$Key;->pageId:I

    iget v3, v3, Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData$Key;->position:I

    invoke-virtual {p1, v4, v3}, Lcom/amazon/nwstd/persistence/LocalPeriodicalState;->getBookmarkData(II)Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData;

    move-result-object v3

    .line 252
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "book_asin"

    .line 253
    invoke-virtual {v3}, Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData;->getBookAsin()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "book_guid"

    .line 254
    invoke-virtual {v3}, Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData;->getBookGuid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "page_id"

    .line 255
    invoke-virtual {v3}, Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData;->getPageId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "article_title"

    .line 256
    invoke-virtual {v3}, Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData;->getArticleTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "description"

    .line 257
    invoke-virtual {v3}, Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "position"

    .line 258
    invoke-virtual {v3}, Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData;->getPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 259
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 262
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData$Key;

    .line 263
    invoke-virtual {p0}, Lcom/amazon/nwstd/persistence/DBLocalStorage;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string/jumbo v4, "periodical_bookmarks"

    invoke-static {}, Lcom/amazon/nwstd/persistence/DBLocalPeriodicalState$DBBookmarkMapping;->getWhereClause()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1}, Lcom/amazon/nwstd/persistence/DBLocalPeriodicalState$DBBookmarkMapping;->getWhereClauseArgs(Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData$Key;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 266
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 267
    invoke-virtual {p0}, Lcom/amazon/nwstd/persistence/DBLocalStorage;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string/jumbo v3, "periodical_bookmarks"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_2

    .line 270
    :cond_2
    invoke-virtual {p1}, Lcom/amazon/nwstd/persistence/LocalPeriodicalState;->clearBookmarkHistory()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method protected getCreateTablesStatements()[Ljava/lang/String;
    .locals 1

    .line 285
    sget-object v0, Lcom/amazon/nwstd/persistence/DBLocalPeriodicalState;->SQL_CREATE_STATEMENTS:[Ljava/lang/String;

    return-object v0
.end method

.method protected getDatabaseName()Ljava/lang/String;
    .locals 1

    const-string v0, "newsstand.db"

    return-object v0
.end method

.method protected getDatabaseVersion()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getDropTablesStatements()[Ljava/lang/String;
    .locals 1

    .line 295
    sget-object v0, Lcom/amazon/nwstd/persistence/DBLocalPeriodicalState;->SQL_DROP_STATEMENTS:[Ljava/lang/String;

    return-object v0
.end method

.method protected getMigrateTablesStatements()[[Ljava/lang/String;
    .locals 1

    .line 290
    sget-object v0, Lcom/amazon/nwstd/persistence/DBLocalPeriodicalState;->SQL_MIGRATION_STATEMENTS:[[Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized loadLocalBookState(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;)Lcom/amazon/kindle/model/content/LocalBookState;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    monitor-enter p0

    if-nez p2, :cond_0

    :try_start_0
    const-string v2, "NULL"

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :cond_0
    move-object/from16 v2, p2

    .line 192
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/nwstd/persistence/DBLocalStorage;->openDB()V

    .line 194
    new-instance v10, Lcom/amazon/nwstd/persistence/LocalPeriodicalState;

    invoke-direct {v10, v0, v2, v1}, Lcom/amazon/nwstd/persistence/LocalPeriodicalState;-><init>(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;Lcom/amazon/kcp/application/ILocalStorage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    .line 198
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/nwstd/persistence/DBLocalStorage;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 207
    :try_start_2
    check-cast v0, Lcom/amazon/kcp/library/models/internal/AmznBookID;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/internal/AmznBookID;->getAsin()Ljava/lang/String;

    move-result-object v0

    .line 208
    new-instance v11, Ljava/util/ArrayList;

    const-string/jumbo v4, "page_id"

    const-string/jumbo v5, "position"

    const-string v6, "article_title"

    const-string v7, "description"

    filled-new-array {v4, v5, v6, v7}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v11, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 209
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/nwstd/persistence/DBLocalStorage;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    const-string/jumbo v13, "periodical_bookmarks"

    .line 211
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v11, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    move-object v14, v4

    check-cast v14, [Ljava/lang/String;

    const-string v15, "book_asin = ? AND book_guid = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string/jumbo v19, "page_id"

    move-object/from16 v16, v4

    .line 209
    invoke-virtual/range {v12 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 217
    :goto_1
    :try_start_3
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "page_id"

    .line 218
    invoke-interface {v11, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const-string/jumbo v3, "position"

    .line 219
    invoke-interface {v11, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const-string v3, "article_title"

    .line 220
    invoke-interface {v11, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v3, "description"

    .line 221
    invoke-interface {v11, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object v3, v10

    move-object v4, v0

    move-object v5, v2

    .line 223
    invoke-virtual/range {v3 .. v9}, Lcom/amazon/nwstd/persistence/LocalPeriodicalState;->insertBookmarkEntry(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData$Key;

    goto :goto_1

    .line 226
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/nwstd/persistence/DBLocalStorage;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v12, :cond_2

    .line 232
    :try_start_4
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 234
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/nwstd/persistence/DBLocalStorage;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 236
    monitor-exit p0

    return-object v10

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v3, v12

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    .line 228
    :goto_2
    :try_start_5
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v2

    const-string v4, "NewsstandLocalStorage"

    const-string v5, "LoadLocalPeriodicalStateFailed"

    sget-object v6, Lcom/amazon/kindle/services/metrics/MetricType;->ERROR:Lcom/amazon/kindle/services/metrics/MetricType;

    invoke-virtual {v2, v4, v5, v6}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/services/metrics/MetricType;)V

    .line 229
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/io/IOException;

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :goto_3
    move-object v12, v3

    :goto_4
    if-eqz v12, :cond_3

    .line 232
    :try_start_6
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 234
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/nwstd/persistence/DBLocalStorage;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 235
    throw v0

    :catch_2
    move-exception v0

    .line 200
    sget-object v2, Lcom/amazon/nwstd/persistence/DBLocalPeriodicalState;->TAG:Ljava/lang/String;

    const/16 v4, 0x10

    const-string v5, "IO error occurred while trying to access db to save local book state"

    invoke-static {v2, v4, v5, v0}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 201
    monitor-exit p0

    return-object v3

    :goto_5
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized save(Lcom/amazon/kindle/model/content/LocalBookState;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 164
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/nwstd/persistence/DBLocalStorage;->openDB()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 168
    :try_start_1
    invoke-virtual {p0}, Lcom/amazon/nwstd/persistence/DBLocalStorage;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 174
    :try_start_2
    invoke-direct {p0, p1}, Lcom/amazon/nwstd/persistence/DBLocalPeriodicalState;->updateBookmarks(Lcom/amazon/kindle/model/content/LocalBookState;)V

    .line 175
    invoke-virtual {p0}, Lcom/amazon/nwstd/persistence/DBLocalStorage;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 181
    :try_start_3
    invoke-virtual {p0}, Lcom/amazon/nwstd/persistence/DBLocalStorage;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 183
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 177
    :try_start_4
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "NewsstandLocalStorage"

    const-string v2, "SaveLocalBookStateFailed"

    sget-object v3, Lcom/amazon/kindle/services/metrics/MetricType;->ERROR:Lcom/amazon/kindle/services/metrics/MetricType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/services/metrics/MetricType;)V

    .line 178
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/io/IOException;

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 181
    :goto_0
    :try_start_5
    invoke-virtual {p0}, Lcom/amazon/nwstd/persistence/DBLocalStorage;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 182
    throw p1

    :catch_1
    move-exception p1

    .line 170
    sget-object v0, Lcom/amazon/nwstd/persistence/DBLocalPeriodicalState;->TAG:Ljava/lang/String;

    const/16 v1, 0x10

    const-string v2, "IO error occured while trying to access db to save local book state"

    invoke-static {v0, v1, v2, p1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 171
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method
