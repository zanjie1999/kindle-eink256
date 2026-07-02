.class public Lcom/amazon/kindle/revoke/dao/RevokeTrackerDAO;
.super Ljava/lang/Object;
.source "RevokeTrackerDAO.java"

# interfaces
.implements Lcom/amazon/kindle/revoke/dao/IRevokeTrackerDAO;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static instance:Lcom/amazon/kindle/revoke/dao/IRevokeTrackerDAO;


# instance fields
.field private dbHelper:Lcom/amazon/kindle/revoke/db/RevokeTrackerDB;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-class v0, Lcom/amazon/kindle/revoke/dao/RevokeTrackerDAO;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/revoke/dao/RevokeTrackerDAO;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 38
    sput-object v0, Lcom/amazon/kindle/revoke/dao/RevokeTrackerDAO;->instance:Lcom/amazon/kindle/revoke/dao/IRevokeTrackerDAO;

    return-void
.end method

.method private constructor <init>(Lcom/amazon/kindle/revoke/db/RevokeTrackerDB;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/amazon/kindle/revoke/dao/RevokeTrackerDAO;->dbHelper:Lcom/amazon/kindle/revoke/db/RevokeTrackerDB;

    return-void
.end method

.method private cursorToRevokeTracker(Landroid/database/Cursor;)Lcom/amazon/kindle/revoke/IRevokeTracker;
    .locals 8

    .line 181
    new-instance v0, Lcom/amazon/kindle/revoke/RevokeTracker;

    invoke-direct {v0}, Lcom/amazon/kindle/revoke/RevokeTracker;-><init>()V

    .line 183
    invoke-static {}, Lcom/amazon/kindle/revoke/RevokeTrackerField;->values()[Lcom/amazon/kindle/revoke/RevokeTrackerField;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, v1, v3

    .line 184
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 186
    sget-object v6, Lcom/amazon/kindle/revoke/dao/RevokeTrackerDAO$2;->$SwitchMap$com$amazon$kindle$revoke$RevokeTrackerField:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v6, v6, v7

    const/4 v7, 0x1

    if-eq v6, v7, :cond_3

    const/4 v7, 0x2

    if-eq v6, v7, :cond_2

    const/4 v7, 0x3

    if-eq v6, v7, :cond_1

    const/4 v7, 0x4

    if-ne v6, v7, :cond_0

    .line 197
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/amazon/kindle/revoke/RevokeTracker;->setRetryCount(I)V

    goto :goto_1

    .line 200
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown field: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", make sure that you add case support for new fields added"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 194
    :cond_1
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/amazon/kindle/revoke/RevokeTracker;->setFailureType(Ljava/lang/String;)V

    goto :goto_1

    .line 191
    :cond_2
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/amazon/kindle/revoke/RevokeTracker;->setBookType(Ljava/lang/String;)V

    goto :goto_1

    .line 188
    :cond_3
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/amazon/kindle/revoke/RevokeTracker;->setAsin(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public static declared-synchronized getInstance(Lcom/amazon/kindle/revoke/db/RevokeTrackerDB;)Lcom/amazon/kindle/revoke/dao/IRevokeTrackerDAO;
    .locals 2

    const-class v0, Lcom/amazon/kindle/revoke/dao/RevokeTrackerDAO;

    monitor-enter v0

    .line 46
    :try_start_0
    sget-object v1, Lcom/amazon/kindle/revoke/dao/RevokeTrackerDAO;->instance:Lcom/amazon/kindle/revoke/dao/IRevokeTrackerDAO;

    if-nez v1, :cond_0

    .line 48
    new-instance v1, Lcom/amazon/kindle/revoke/dao/RevokeTrackerDAO;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/revoke/dao/RevokeTrackerDAO;-><init>(Lcom/amazon/kindle/revoke/db/RevokeTrackerDB;)V

    sput-object v1, Lcom/amazon/kindle/revoke/dao/RevokeTrackerDAO;->instance:Lcom/amazon/kindle/revoke/dao/IRevokeTrackerDAO;

    .line 53
    :cond_0
    sget-object p0, Lcom/amazon/kindle/revoke/dao/RevokeTrackerDAO;->instance:Lcom/amazon/kindle/revoke/dao/IRevokeTrackerDAO;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getRevokeTrackers(Landroid/database/Cursor;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/revoke/IRevokeTracker;",
            ">;"
        }
    .end annotation

    .line 208
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_2

    .line 210
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 214
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 215
    :goto_0
    invoke-direct {p0, p1}, Lcom/amazon/kindle/revoke/dao/RevokeTrackerDAO;->cursorToRevokeTracker(Landroid/database/Cursor;)Lcom/amazon/kindle/revoke/IRevokeTracker;

    move-result-object v1

    .line 216
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    invoke-interface {p1}, Landroid/database/Cursor;->isLast()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 214
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method private parseFields(Lcom/amazon/kindle/revoke/IRevokeTracker;Ljava/util/Collection;)Landroid/content/ContentValues;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/revoke/IRevokeTracker;",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/revoke/RevokeTrackerField;",
            ">;)",
            "Landroid/content/ContentValues;"
        }
    .end annotation

    .line 229
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 231
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/revoke/RevokeTrackerField;

    .line 232
    sget-object v2, Lcom/amazon/kindle/revoke/dao/RevokeTrackerDAO$2;->$SwitchMap$com$amazon$kindle$revoke$RevokeTrackerField:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 249
    :cond_0
    sget-object v1, Lcom/amazon/kindle/revoke/RevokeTrackerField;->RETRY_COUNT:Lcom/amazon/kindle/revoke/RevokeTrackerField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    .line 250
    invoke-interface {p1}, Lcom/amazon/kindle/revoke/IRevokeTracker;->getRetryCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 249
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 244
    :cond_1
    sget-object v1, Lcom/amazon/kindle/revoke/RevokeTrackerField;->FAILURE_TYPE:Lcom/amazon/kindle/revoke/RevokeTrackerField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    .line 245
    invoke-interface {p1}, Lcom/amazon/kindle/revoke/IRevokeTracker;->getFailureType()Ljava/lang/String;

    move-result-object v2

    .line 244
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 239
    :cond_2
    sget-object v1, Lcom/amazon/kindle/revoke/RevokeTrackerField;->BOOK_TYPE:Lcom/amazon/kindle/revoke/RevokeTrackerField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    .line 240
    invoke-interface {p1}, Lcom/amazon/kindle/revoke/IRevokeTracker;->getBookType()Ljava/lang/String;

    move-result-object v2

    .line 239
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 234
    :cond_3
    sget-object v1, Lcom/amazon/kindle/revoke/RevokeTrackerField;->ASIN:Lcom/amazon/kindle/revoke/RevokeTrackerField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    .line 235
    invoke-interface {p1}, Lcom/amazon/kindle/revoke/IRevokeTracker;->getAsin()Ljava/lang/String;

    move-result-object v2

    .line 234
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    return-object v0
.end method


# virtual methods
.method public deleteRevokeTrackers(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 118
    sget-object v0, Lcom/amazon/kindle/revoke/RevokeTrackerField;->ASIN:Lcom/amazon/kindle/revoke/RevokeTrackerField;

    .line 119
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 118
    invoke-static {p1, v1, v1, v0, v1}, Lcom/amazon/kindle/db/Batch;->generateBatches(Ljava/util/Collection;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 121
    iget-object v1, p0, Lcom/amazon/kindle/revoke/dao/RevokeTrackerDAO;->dbHelper:Lcom/amazon/kindle/revoke/db/RevokeTrackerDB;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 122
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 124
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/db/Batch;

    const-string v3, "FailureRevokeReqTracker"

    .line 125
    invoke-virtual {v2}, Lcom/amazon/kindle/db/Batch;->getWhereClause()Ljava/lang/String;

    move-result-object v4

    .line 126
    invoke-virtual {v2}, Lcom/amazon/kindle/db/Batch;->getBindArgs()[Ljava/lang/String;

    move-result-object v2

    .line 125
    invoke-virtual {v1, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 128
    :cond_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 133
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 134
    new-instance p1, Ljava/lang/Thread;

    new-instance v1, Lcom/amazon/kindle/revoke/dao/RevokeTrackerDAO$1;

    invoke-direct {v1, p0, v0}, Lcom/amazon/kindle/revoke/dao/RevokeTrackerDAO$1;-><init>(Lcom/amazon/kindle/revoke/dao/RevokeTrackerDAO;Ljava/util/List;)V

    invoke-direct {p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 141
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 130
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 131
    throw p1
.end method

.method public getAllRevokeTrackers()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/revoke/IRevokeTracker;",
            ">;"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/amazon/kindle/revoke/dao/RevokeTrackerDAO;->dbHelper:Lcom/amazon/kindle/revoke/db/RevokeTrackerDB;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 149
    invoke-static {}, Lcom/amazon/kindle/revoke/RevokeTrackerField;->getAllFieldsAsArray()[Ljava/lang/String;

    move-result-object v3

    const-string v2, "FailureRevokeReqTracker"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 148
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 152
    invoke-direct {p0, v0}, Lcom/amazon/kindle/revoke/dao/RevokeTrackerDAO;->getRevokeTrackers(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v1

    .line 153
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v1
.end method

.method public getRevokeTrackerByAsin(Ljava/lang/String;)Lcom/amazon/kindle/revoke/IRevokeTracker;
    .locals 9

    .line 59
    iget-object v0, p0, Lcom/amazon/kindle/revoke/dao/RevokeTrackerDAO;->dbHelper:Lcom/amazon/kindle/revoke/db/RevokeTrackerDB;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v0, 0x0

    :try_start_0
    const-string v2, "FailureRevokeReqTracker"

    .line 64
    invoke-static {}, Lcom/amazon/kindle/revoke/RevokeTrackerField;->getAllFieldsAsArray()[Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/amazon/kindle/revoke/RevokeTrackerField;->ASIN:Lcom/amazon/kindle/revoke/RevokeTrackerField;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "=?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 63
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    .line 67
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 71
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 72
    :goto_0
    invoke-direct {p0, v1}, Lcom/amazon/kindle/revoke/dao/RevokeTrackerDAO;->cursorToRevokeTracker(Landroid/database/Cursor;)Lcom/amazon/kindle/revoke/IRevokeTracker;

    move-result-object v2

    .line 74
    invoke-interface {v1}, Landroid/database/Cursor;->isLast()Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_2

    if-eqz v1, :cond_1

    .line 83
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v2

    .line 71
    :cond_2
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_2

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    .line 83
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception v2

    move-object v1, v0

    .line 79
    :goto_2
    :try_start_3
    sget-object v3, Lcom/amazon/kindle/revoke/dao/RevokeTrackerDAO;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to get revoke tracker for Asin = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, v2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_5

    .line 83
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    return-object v0

    :catchall_1
    move-exception p1

    move-object v0, v1

    :goto_3
    if-eqz v0, :cond_6

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 85
    :cond_6
    throw p1
.end method

.method public getRevokeTrackersByFailureType(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/revoke/IRevokeTracker;",
            ">;"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/amazon/kindle/revoke/dao/RevokeTrackerDAO;->dbHelper:Lcom/amazon/kindle/revoke/db/RevokeTrackerDB;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 94
    invoke-static {}, Lcom/amazon/kindle/revoke/RevokeTrackerField;->getAllFieldsAsArray()[Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/amazon/kindle/revoke/RevokeTrackerField;->FAILURE_TYPE:Lcom/amazon/kindle/revoke/RevokeTrackerField;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "=?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v5, v0

    const-string v2, "FailureRevokeReqTracker"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 93
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 97
    invoke-direct {p0, p1}, Lcom/amazon/kindle/revoke/dao/RevokeTrackerDAO;->getRevokeTrackers(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    .line 98
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0
.end method

.method public insert(Lcom/amazon/kindle/revoke/IRevokeTracker;)J
    .locals 6

    .line 160
    sget-object v0, Lcom/amazon/kindle/revoke/RevokeTrackerField;->ALL_FIELDS:Ljava/util/Collection;

    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/revoke/dao/RevokeTrackerDAO;->parseFields(Lcom/amazon/kindle/revoke/IRevokeTracker;Ljava/util/Collection;)Landroid/content/ContentValues;

    move-result-object p1

    .line 162
    iget-object v0, p0, Lcom/amazon/kindle/revoke/dao/RevokeTrackerDAO;->dbHelper:Lcom/amazon/kindle/revoke/db/RevokeTrackerDB;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 163
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-wide/16 v1, -0x2

    :try_start_0
    const-string v3, "FailureRevokeReqTracker"

    const/4 v4, 0x0

    const/4 v5, 0x5

    .line 166
    invoke-virtual {v0, v3, v4, p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v1

    .line 168
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 172
    :try_start_1
    sget-object v3, Lcom/amazon/kindle/revoke/dao/RevokeTrackerDAO;->TAG:Ljava/lang/String;

    const-string v4, "Throwable error "

    invoke-static {v3, v4, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_0
    move-exception p1

    .line 170
    sget-object v3, Lcom/amazon/kindle/revoke/dao/RevokeTrackerDAO;->TAG:Ljava/lang/String;

    const-string v4, "exception inserting"

    invoke-static {v3, v4, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :goto_1
    return-wide v1

    :catchall_1
    move-exception p1

    .line 174
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 175
    throw p1
.end method
