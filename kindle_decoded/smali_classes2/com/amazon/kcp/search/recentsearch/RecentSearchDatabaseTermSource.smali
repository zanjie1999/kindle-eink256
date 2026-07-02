.class public Lcom/amazon/kcp/search/recentsearch/RecentSearchDatabaseTermSource;
.super Ljava/lang/Object;
.source "RecentSearchDatabaseTermSource.java"


# static fields
.field private static volatile instance:Lcom/amazon/kcp/search/recentsearch/RecentSearchDatabaseTermSource;


# instance fields
.field private sqliteOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/database/sqlite/SQLiteOpenHelper;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/amazon/kcp/search/recentsearch/RecentSearchDatabaseTermSource;->sqliteOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/amazon/kcp/search/recentsearch/RecentSearchDatabaseTermSource;
    .locals 4

    const-class v0, Lcom/amazon/kcp/search/recentsearch/RecentSearchDatabaseTermSource;

    monitor-enter v0

    .line 46
    :try_start_0
    sget-object v1, Lcom/amazon/kcp/search/recentsearch/RecentSearchDatabaseTermSource;->instance:Lcom/amazon/kcp/search/recentsearch/RecentSearchDatabaseTermSource;

    if-nez v1, :cond_0

    .line 48
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 49
    new-instance v2, Lcom/amazon/kcp/search/recentsearch/RecentSearchDatabaseTermSource;

    new-instance v3, Lcom/amazon/kcp/search/recentsearch/RecentSearchDatabaseOpenerHelper;

    invoke-direct {v3, v1}, Lcom/amazon/kcp/search/recentsearch/RecentSearchDatabaseOpenerHelper;-><init>(Landroid/content/Context;)V

    invoke-direct {v2, v3}, Lcom/amazon/kcp/search/recentsearch/RecentSearchDatabaseTermSource;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    sput-object v2, Lcom/amazon/kcp/search/recentsearch/RecentSearchDatabaseTermSource;->instance:Lcom/amazon/kcp/search/recentsearch/RecentSearchDatabaseTermSource;

    .line 51
    :cond_0
    sget-object v1, Lcom/amazon/kcp/search/recentsearch/RecentSearchDatabaseTermSource;->instance:Lcom/amazon/kcp/search/recentsearch/RecentSearchDatabaseTermSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public declared-synchronized clearTable()V
    .locals 2

    monitor-enter p0

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/search/recentsearch/RecentSearchDatabaseTermSource;->sqliteOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 186
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v1, "DROP TABLE IF EXISTS CUSTOMER_TERMS;"

    .line 188
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "CREATE TABLE IF NOT EXISTS CUSTOMER_TERMS (BookId TEXT,Term TEXT,Timestamp INTEGER,PRIMARY KEY (BookId, Term));"

    .line 192
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "CREATE TRIGGER refreshDatabaseOnInsert AFTER INSERT ON CUSTOMER_TERMS BEGIN DELETE FROM CUSTOMER_TERMS WHERE BookId = NEW.BookId AND Term NOT IN (SELECT Term FROM CUSTOMER_TERMS WHERE BookId = NEW.BookId ORDER BY Timestamp DESC LIMIT 10); END"

    .line 194
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 195
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 197
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 199
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 202
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    .line 197
    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 198
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized close()V
    .locals 1

    monitor-enter p0

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/search/recentsearch/RecentSearchDatabaseTermSource;->sqliteOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deleteAllTermsForBookId(Ljava/lang/String;)I
    .locals 3

    monitor-enter p0

    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/search/recentsearch/RecentSearchDatabaseTermSource;->sqliteOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 153
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x1

    :try_start_1
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "CUSTOMER_TERMS"

    const-string v2, "BookId = ?"

    .line 156
    invoke-virtual {v0, p1, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    .line 158
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 162
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 165
    :cond_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 160
    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 161
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getCurrentTimeStamp()J
    .locals 2

    .line 174
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized getSearchTermsForBookId(Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/search/recentsearch/RecentSearchDatabaseTermData;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 118
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 120
    iget-object v1, p0, Lcom/amazon/kcp/search/recentsearch/RecentSearchDatabaseTermSource;->sqliteOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v2, 0x1

    new-array v7, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v7, v2

    const/4 v3, 0x1

    const-string v4, "CUSTOMER_TERMS"

    .line 123
    sget-object v5, Lcom/amazon/kcp/search/recentsearch/RecentSearchDatabaseTableQuery;->ALL_COLUMNS:[Ljava/lang/String;

    const-string v6, "BookId = ?"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "Timestamp DESC"

    const/4 v11, 0x0

    move-object v2, v1

    invoke-virtual/range {v2 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 127
    :goto_0
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 128
    new-instance v2, Lcom/amazon/kcp/search/recentsearch/RecentSearchDatabaseTermData;

    const-string v3, "BookId"

    .line 129
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Term"

    .line 130
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Timestamp"

    .line 131
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/amazon/kcp/search/recentsearch/RecentSearchDatabaseTermData;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 132
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 135
    :cond_0
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 137
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 138
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 140
    :cond_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 135
    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 136
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized insertUpdateTerm(Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 3

    monitor-enter p0

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/search/recentsearch/RecentSearchDatabaseTermSource;->sqliteOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 93
    :try_start_1
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    const-string v2, "BookId"

    .line 94
    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Term"

    .line 95
    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Timestamp"

    .line 96
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "CUSTOMER_TERMS"

    const/4 p2, 0x0

    const/4 p3, 0x5

    .line 98
    invoke-virtual {v0, p1, p2, v1, p3}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide p1

    .line 100
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 104
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 105
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_0
    const-wide/16 p3, -0x1

    cmp-long v0, p1, p3

    if-lez v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 107
    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 102
    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 103
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method
