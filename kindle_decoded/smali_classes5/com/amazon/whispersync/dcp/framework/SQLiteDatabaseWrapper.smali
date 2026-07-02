.class public Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;
.super Ljava/lang/Object;
.source "SQLiteDatabaseWrapper.java"


# instance fields
.field protected mInner:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 26
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->mInner:Landroid/database/sqlite/SQLiteDatabase;

    return-void

    .line 23
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "inner can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static create(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;
    .locals 1

    .line 31
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;

    invoke-static {p0}, Landroid/database/sqlite/SQLiteDatabase;->create(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    return-object v0
.end method

.method public static openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;
    .locals 1

    .line 36
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;

    invoke-static {p0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    return-object v0
.end method

.method private wrapSQLException(Ljava/util/concurrent/Callable;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Return:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TReturn;>;",
            "Ljava/lang/String;",
            ")TReturn;"
        }
    .end annotation

    .line 408
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 412
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper$9;

    invoke-direct {v0, p0, p2, p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper$9;-><init>(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method private wrapSQLExceptionAndThrowOnError(Ljava/util/concurrent/Callable;Ljava/lang/String;)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation

    .line 394
    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->wrapSQLException(Ljava/util/concurrent/Callable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    return-wide v0

    .line 398
    :cond_0
    new-instance p1, Landroid/database/SQLException;

    invoke-direct {p1, p2}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public acquireReference()V
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->mInner:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->acquireReference()V

    return-void
.end method

.method public beginTransaction()V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->mInner:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    return-void
.end method

.method public beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->mInner:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V

    return-void
.end method

.method public close()V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->mInner:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-void
.end method

.method public compileStatement(Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/SQLiteStatementWrapper;
    .locals 2

    .line 61
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/SQLiteStatementWrapper;

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->mInner:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteStatementWrapper;-><init>(Landroid/database/sqlite/SQLiteStatement;)V

    return-object v0
.end method

.method public delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    .line 66
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper$1;-><init>(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const-string p1, ","

    invoke-static {p1, p3}, Lcom/amazon/whispersync/dcp/framework/StringUtils;->join(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v1, p2

    const-string p1, "Error deleting entry from table %s (whereClause = %s) (whereArgs = %s)"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->wrapSQLException(Ljava/util/concurrent/Callable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public endTransaction()V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->mInner:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void
.end method

.method public execSQL(Ljava/lang/String;)V
    .locals 3

    .line 99
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper$3;

    invoke-direct {v0, p0, p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper$3;-><init>(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Error executing sql: %s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->wrapSQLException(Ljava/util/concurrent/Callable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .line 86
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper$2;-><init>(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, ","

    invoke-static {p1, p2}, Lcom/amazon/whispersync/dcp/framework/StringUtils;->join(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    const-string p1, "Error executing sql: %s (bindArgs = %s)"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->wrapSQLException(Ljava/util/concurrent/Callable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method getInner()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->mInner:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public getMaximumSize()J
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->mInner:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getMaximumSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPageSize()J
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->mInner:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getPageSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSyncedTables()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->mInner:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getSyncedTables()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->mInner:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v0

    return v0
.end method

.method public inTransaction()Z
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->mInner:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    return v0
.end method

.method public insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->mInner:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1

    return-wide p1
.end method

.method public insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 1

    .line 142
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper$4;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper$4;-><init>(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)V

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    aput-object p1, p2, p3

    const-string p1, "Error inserting into table %s"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->wrapSQLExceptionAndThrowOnError(Ljava/util/concurrent/Callable;Ljava/lang/String;)J

    move-result-wide p1

    return-wide p1
.end method

.method public insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    .locals 7

    .line 158
    new-instance v6, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper$5;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper$5;-><init>(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)V

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    aput-object p1, p2, p3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p3, 0x1

    aput-object p1, p2, p3

    const-string p1, "Error inserting into table %s (conflictAlgorithm = %d)"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v6, p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->wrapSQLException(Ljava/util/concurrent/Callable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    return-wide p1
.end method

.method public isDbLockedByCurrentThread()Z
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->mInner:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isDbLockedByCurrentThread()Z

    move-result v0

    return v0
.end method

.method public isDbLockedByOtherThreads()Z
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->mInner:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isDbLockedByOtherThreads()Z

    move-result v0

    return v0
.end method

.method public isOpen()Z
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->mInner:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->mInner:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v0

    return v0
.end method

.method public markTableSyncable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->mInner:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->markTableSyncable(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public markTableSyncable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->mInner:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->markTableSyncable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public needUpgrade(I)Z
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->mInner:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->needUpgrade(I)Z

    move-result p1

    return p1
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    .line 236
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->mInner:Landroid/database/sqlite/SQLiteDatabase;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10

    move-object v0, p0

    .line 225
    iget-object v1, v0, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->mInner:Landroid/database/sqlite/SQLiteDatabase;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11

    move-object v0, p0

    .line 213
    iget-object v1, v0, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->mInner:Landroid/database/sqlite/SQLiteDatabase;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v1 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public queryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 12

    move-object v0, p0

    .line 250
    iget-object v1, v0, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->mInner:Landroid/database/sqlite/SQLiteDatabase;

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-virtual/range {v1 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->queryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->mInner:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->mInner:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public releaseReference()V
    .locals 1

    .line 384
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->mInner:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    return-void
.end method

.method public releaseReferenceFromContainer()V
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->mInner:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReferenceFromContainer()V

    return-void
.end method

.method public replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->mInner:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1

    return-wide p1
.end method

.method public replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 1

    .line 282
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper$6;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper$6;-><init>(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)V

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    aput-object p1, p2, p3

    const-string p1, "Error replacing entry in table %s"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->wrapSQLExceptionAndThrowOnError(Ljava/util/concurrent/Callable;Ljava/lang/String;)J

    move-result-wide p1

    return-wide p1
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->mInner:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->setLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public setLockingEnabled(Z)V
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->mInner:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->setLockingEnabled(Z)V

    return-void
.end method

.method public setMaximumSize(J)J
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->mInner:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->setMaximumSize(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public setPageSize(J)V
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->mInner:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->setPageSize(J)V

    return-void
.end method

.method public setTransactionSuccessful()V
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->mInner:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    return-void
.end method

.method public setVersion(I)V
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->mInner:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    return-void
.end method

.method public update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7

    .line 328
    new-instance v6, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper$7;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper$7;-><init>(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    const/4 p1, 0x1

    aput-object p3, p2, p1

    const-string p1, ","

    invoke-static {p1, p4}, Lcom/amazon/whispersync/dcp/framework/StringUtils;->join(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x2

    aput-object p1, p2, p3

    const-string p1, "Error updating table %s (whereClause = %s) (whereArgs = %s)"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v6, p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->wrapSQLException(Ljava/util/concurrent/Callable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I
    .locals 8

    .line 347
    new-instance v7, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper$8;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper$8;-><init>(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)V

    const/4 p2, 0x4

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    const/4 p1, 0x1

    aput-object p3, p2, p1

    const-string p1, ","

    invoke-static {p1, p4}, Lcom/amazon/whispersync/dcp/framework/StringUtils;->join(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x2

    aput-object p1, p2, p3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p3, 0x3

    aput-object p1, p2, p3

    const-string p1, "Error updating table %s (whereClause = %s) (whereArgs = %s) (conflictAlgorithm = %d)"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v7, p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->wrapSQLException(Ljava/util/concurrent/Callable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public yieldIfContended()Z
    .locals 1

    .line 364
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->mInner:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContended()Z

    move-result v0

    return v0
.end method

.method public yieldIfContendedSafely()Z
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->mInner:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedSafely()Z

    move-result v0

    return v0
.end method

.method public yieldIfContendedSafely(J)Z
    .locals 1

    .line 374
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->mInner:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedSafely(J)Z

    move-result p1

    return p1
.end method
