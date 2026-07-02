.class public final Lcom/amazon/whispersync/dcp/framework/DBHelpers;
.super Ljava/lang/Object;
.source "DBHelpers.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBool(Landroid/database/Cursor;Ljava/lang/String;)Z
    .locals 0

    .line 17
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    .line 19
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getFloat(Landroid/database/Cursor;Ljava/lang/String;)F
    .locals 0

    .line 38
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    .line 40
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result p0

    return p0
.end method

.method public static getInt(Landroid/database/Cursor;Ljava/lang/String;)I
    .locals 0

    .line 24
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    .line 26
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    return p0
.end method

.method public static getLong(Landroid/database/Cursor;Ljava/lang/String;)J
    .locals 0

    .line 31
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    .line 33
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p0

    return-wide p0
.end method

.method private static getResultFromCursorOrThrow(Landroid/database/Cursor;I)Ljava/lang/String;
    .locals 0

    .line 302
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/amazon/whispersync/dcp/framework/DBHelpers;->getResultFromCursorOrThrow(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getResultFromCursorOrThrow(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 307
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    invoke-static {p0, p1}, Lcom/amazon/whispersync/dcp/framework/DBHelpers;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 309
    :cond_0
    new-instance p0, Lcom/amazon/whispersync/dcp/framework/EmptyCursorException;

    const-string p1, "Cursor is empty"

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/dcp/framework/EmptyCursorException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 45
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    .line 47
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static insertIfAbsent(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)J
    .locals 1

    const-string v0, "ROWID"

    .line 131
    invoke-static {p0, p1, v0, p3, p4}, Lcom/amazon/whispersync/dcp/framework/DBHelpers;->querySingleResult(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 135
    invoke-static {p3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0

    :cond_0
    const/4 p3, 0x0

    .line 139
    invoke-virtual {p0, p1, p3, p2}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static isNull(Landroid/database/Cursor;Ljava/lang/String;)Z
    .locals 0

    .line 100
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    .line 102
    invoke-interface {p0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result p0

    return p0
.end method

.method public static iterateOverCursor(Landroid/database/Cursor;Lcom/amazon/whispersync/dcp/framework/Task;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Lcom/amazon/whispersync/dcp/framework/Task<",
            "Ljava/lang/Void;",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .line 52
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/DBHelpers$1;

    invoke-direct {v0, p1}, Lcom/amazon/whispersync/dcp/framework/DBHelpers$1;-><init>(Lcom/amazon/whispersync/dcp/framework/Task;)V

    invoke-static {p0, v0}, Lcom/amazon/whispersync/dcp/framework/DBHelpers;->runWithCursor(Landroid/database/Cursor;Lcom/amazon/whispersync/dcp/framework/Task;)Ljava/lang/Object;

    return-void
.end method

.method public static querySingleResult(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 149
    invoke-static/range {v0 .. v5}, Lcom/amazon/whispersync/dcp/framework/DBHelpers;->querySingleResult(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static querySingleResult(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 162
    :try_start_0
    invoke-static/range {p0 .. p5}, Lcom/amazon/whispersync/dcp/framework/DBHelpers;->querySingleResultOrThrow(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lcom/amazon/whispersync/dcp/framework/BadCursorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/amazon/whispersync/dcp/framework/EmptyCursorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static querySingleResult(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 217
    invoke-static/range {v0 .. v5}, Lcom/amazon/whispersync/dcp/framework/DBHelpers;->querySingleResult(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static querySingleResult(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 227
    invoke-static/range {v0 .. v6}, Lcom/amazon/whispersync/dcp/framework/DBHelpers;->querySingleResult(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static querySingleResult(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 242
    :try_start_0
    invoke-static/range {p0 .. p6}, Lcom/amazon/whispersync/dcp/framework/DBHelpers;->querySingleResultOrThrow(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lcom/amazon/whispersync/dcp/framework/BadCursorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/amazon/whispersync/dcp/framework/EmptyCursorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static querySingleResultOrThrow(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 183
    invoke-static/range {v0 .. v5}, Lcom/amazon/whispersync/dcp/framework/DBHelpers;->querySingleResultOrThrow(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static querySingleResultOrThrow(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v3, v0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 193
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 203
    :try_start_0
    invoke-static {p0, p2}, Lcom/amazon/whispersync/dcp/framework/DBHelpers;->getResultFromCursorOrThrow(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw p1

    .line 196
    :cond_0
    new-instance p0, Lcom/amazon/whispersync/dcp/framework/BadCursorException;

    const-string p1, "Cursor is null"

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/dcp/framework/BadCursorException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static querySingleResultOrThrow(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 261
    invoke-static/range {v0 .. v5}, Lcom/amazon/whispersync/dcp/framework/DBHelpers;->querySingleResultOrThrow(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static querySingleResultOrThrow(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 271
    invoke-static/range {v0 .. v6}, Lcom/amazon/whispersync/dcp/framework/DBHelpers;->querySingleResultOrThrow(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static querySingleResultOrThrow(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v3, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v8, p5

    move-object/from16 v9, p6

    .line 282
    invoke-virtual/range {v1 .. v9}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 292
    :try_start_0
    invoke-static {v1, v0}, Lcom/amazon/whispersync/dcp/framework/DBHelpers;->getResultFromCursorOrThrow(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    move-object v2, v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v2

    .line 285
    :cond_0
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/BadCursorException;

    const-string v1, "Cursor is null"

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/dcp/framework/BadCursorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static runWithCursor(Landroid/database/Cursor;Lcom/amazon/whispersync/dcp/framework/Task;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/database/Cursor;",
            "Lcom/amazon/whispersync/dcp/framework/Task<",
            "TT;",
            "Landroid/database/Cursor;",
            ">;)TT;"
        }
    .end annotation

    .line 71
    :try_start_0
    invoke-static {p0, p1}, Lcom/amazon/whispersync/dcp/framework/DBHelpers;->runWithCursorOrThrow(Landroid/database/Cursor;Lcom/amazon/whispersync/dcp/framework/Task;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Lcom/amazon/whispersync/dcp/framework/BadCursorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static runWithCursorOrThrow(Landroid/database/Cursor;Lcom/amazon/whispersync/dcp/framework/Task;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/database/Cursor;",
            "Lcom/amazon/whispersync/dcp/framework/Task<",
            "TT;",
            "Landroid/database/Cursor;",
            ">;)TT;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 90
    :try_start_0
    invoke-interface {p1, p0}, Lcom/amazon/whispersync/dcp/framework/Task;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw p1

    .line 85
    :cond_0
    new-instance p0, Lcom/amazon/whispersync/dcp/framework/BadCursorException;

    const-string p1, "Cursor is null"

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/dcp/framework/BadCursorException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static varargs upgradeTable(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Lcom/amazon/whispersync/dcp/framework/SQLTable;[Ljava/lang/String;)V
    .locals 7

    .line 319
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->beginTransaction()V

    .line 322
    :try_start_0
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/SQLTable;

    invoke-direct {v0, p1}, Lcom/amazon/whispersync/dcp/framework/SQLTable;-><init>(Lcom/amazon/whispersync/dcp/framework/SQLTable;)V

    .line 323
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "temp_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/SQLTable;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/dcp/framework/SQLTable;->setName(Ljava/lang/String;)V

    .line 325
    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/SQLTable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->execSQL(Ljava/lang/String;)V

    .line 327
    array-length v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p2, v3

    .line 329
    invoke-virtual {p0, v4}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->execSQL(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string p2, ", "

    .line 332
    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/SQLTable;->getColumnNames()Ljava/util/List;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/amazon/whispersync/dcp/framework/StringUtils;->join(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "INSERT INTO %s (%s) SELECT %s FROM %s;"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    .line 334
    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/SQLTable;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v5, 0x2

    aput-object p2, v3, v5

    const/4 p2, 0x3

    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/SQLTable;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, p2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->execSQL(Ljava/lang/String;)V

    const-string p2, "DROP TABLE %s;"

    new-array v1, v4, [Ljava/lang/Object;

    .line 339
    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/SQLTable;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->execSQL(Ljava/lang/String;)V

    const-string p2, "ALTER TABLE %s RENAME TO %s;"

    new-array v1, v5, [Ljava/lang/Object;

    .line 340
    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/SQLTable;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/SQLTable;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v4

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->execSQL(Ljava/lang/String;)V

    .line 342
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 346
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->endTransaction()V

    throw p1
.end method

.method public static upsert(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)J
    .locals 1

    const-string v0, "ROWID"

    .line 112
    invoke-static {p0, p1, v0, p3, p4}, Lcom/amazon/whispersync/dcp/framework/DBHelpers;->querySingleResult(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_0

    const/4 p4, 0x1

    new-array p4, p4, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p3, p4, v0

    const-string v0, "ROWID = ?"

    .line 116
    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 117
    invoke-static {p3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0

    :cond_0
    const/4 p3, 0x0

    .line 121
    invoke-virtual {p0, p1, p3, p2}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p0

    return-wide p0
.end method
