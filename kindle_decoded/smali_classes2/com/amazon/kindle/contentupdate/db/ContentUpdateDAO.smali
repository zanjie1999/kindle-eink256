.class public Lcom/amazon/kindle/contentupdate/db/ContentUpdateDAO;
.super Ljava/lang/Object;
.source "ContentUpdateDAO.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/contentupdate/db/ContentUpdateDAO$DuplicateRequestException;
    }
.end annotation


# static fields
.field private static final COLUMNS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static volatile instance:Lcom/amazon/kindle/contentupdate/db/ContentUpdateDAO;


# instance fields
.field private final dbHelper:Lcom/amazon/kindle/contentupdate/db/ContentUpdateDBHelper;

.field private final gson:Lcom/google/gson/Gson;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 28
    const-class v0, Lcom/amazon/kindle/contentupdate/db/ContentUpdateDAO;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/contentupdate/db/ContentUpdateDAO;->TAG:Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 30
    sget-object v1, Lcom/amazon/kindle/contentupdate/db/ContentUpdateField;->ID:Lcom/amazon/kindle/contentupdate/db/ContentUpdateField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/kindle/contentupdate/db/ContentUpdateField;->USERID:Lcom/amazon/kindle/contentupdate/db/ContentUpdateField;

    .line 31
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/kindle/contentupdate/db/ContentUpdateField;->REQUEST_ID:Lcom/amazon/kindle/contentupdate/db/ContentUpdateField;

    .line 32
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/kindle/contentupdate/db/ContentUpdateField;->TODO_ITEM:Lcom/amazon/kindle/contentupdate/db/ContentUpdateField;

    .line 33
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/kindle/contentupdate/db/ContentUpdateField;->START_TIME:Lcom/amazon/kindle/contentupdate/db/ContentUpdateField;

    .line 34
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kindle/contentupdate/db/ContentUpdateDAO;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lcom/amazon/kindle/contentupdate/db/ContentUpdateDBHelper;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/contentupdate/db/ContentUpdateDBHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazon/kindle/contentupdate/db/ContentUpdateDAO;->dbHelper:Lcom/amazon/kindle/contentupdate/db/ContentUpdateDBHelper;

    .line 54
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/contentupdate/db/ContentUpdateDAO;->gson:Lcom/google/gson/Gson;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/amazon/kindle/contentupdate/db/ContentUpdateDAO;
    .locals 2

    .line 39
    sget-object v0, Lcom/amazon/kindle/contentupdate/db/ContentUpdateDAO;->instance:Lcom/amazon/kindle/contentupdate/db/ContentUpdateDAO;

    if-nez v0, :cond_1

    .line 40
    const-class v0, Lcom/amazon/kindle/contentupdate/db/ContentUpdateDAO;

    monitor-enter v0

    .line 41
    :try_start_0
    sget-object v1, Lcom/amazon/kindle/contentupdate/db/ContentUpdateDAO;->instance:Lcom/amazon/kindle/contentupdate/db/ContentUpdateDAO;

    if-nez v1, :cond_0

    .line 42
    new-instance v1, Lcom/amazon/kindle/contentupdate/db/ContentUpdateDAO;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/contentupdate/db/ContentUpdateDAO;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/amazon/kindle/contentupdate/db/ContentUpdateDAO;->instance:Lcom/amazon/kindle/contentupdate/db/ContentUpdateDAO;

    .line 44
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 46
    :cond_1
    :goto_0
    sget-object p0, Lcom/amazon/kindle/contentupdate/db/ContentUpdateDAO;->instance:Lcom/amazon/kindle/contentupdate/db/ContentUpdateDAO;

    return-object p0
.end method

.method private requestIdExists(Ljava/lang/String;)Z
    .locals 11

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/contentupdate/db/ContentUpdateField;->REQUEST_ID:Lcom/amazon/kindle/contentupdate/db/ContentUpdateField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " = ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object p1, v6, v10

    const/4 p1, 0x0

    .line 89
    :try_start_0
    iget-object v2, p0, Lcom/amazon/kindle/contentupdate/db/ContentUpdateDAO;->dbHelper:Lcom/amazon/kindle/contentupdate/db/ContentUpdateDBHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "ContentUpdates"

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 90
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 93
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    return v1

    :catchall_0
    move-exception v0

    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 95
    :cond_2
    throw v0
.end method


# virtual methods
.method public declared-synchronized addUpdate(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/messaging/ITodoItem;J)Lcom/amazon/kindle/contentupdate/db/UpdateItem;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/contentupdate/db/ContentUpdateDAO$DuplicateRequestException;
        }
    .end annotation

    monitor-enter p0

    .line 108
    :try_start_0
    invoke-direct {p0, p2}, Lcom/amazon/kindle/contentupdate/db/ContentUpdateDAO;->requestIdExists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 113
    sget-object v1, Lcom/amazon/kindle/contentupdate/db/ContentUpdateField;->USERID:Lcom/amazon/kindle/contentupdate/db/ContentUpdateField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    sget-object v1, Lcom/amazon/kindle/contentupdate/db/ContentUpdateField;->REQUEST_ID:Lcom/amazon/kindle/contentupdate/db/ContentUpdateField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    sget-object v1, Lcom/amazon/kindle/contentupdate/db/ContentUpdateField;->TODO_ITEM:Lcom/amazon/kindle/contentupdate/db/ContentUpdateField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kindle/contentupdate/db/ContentUpdateDAO;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v2, p3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    sget-object v1, Lcom/amazon/kindle/contentupdate/db/ContentUpdateField;->START_TIME:Lcom/amazon/kindle/contentupdate/db/ContentUpdateField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 118
    iget-object v1, p0, Lcom/amazon/kindle/contentupdate/db/ContentUpdateDAO;->dbHelper:Lcom/amazon/kindle/contentupdate/db/ContentUpdateDBHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 119
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-wide/16 v2, -0x1

    :try_start_1
    const-string v7, "ContentUpdates"

    const/4 v8, 0x0

    .line 124
    invoke-virtual {v1, v7, v8, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 125
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Successfully inserted content update with id "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 128
    :try_start_3
    sget-object v7, Lcom/amazon/kindle/contentupdate/db/ContentUpdateDAO;->TAG:Ljava/lang/String;

    const-string v8, "Failed to insert content update"

    invoke-static {v7, v8, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 135
    :goto_1
    :try_start_4
    new-instance v0, Lcom/amazon/kindle/contentupdate/db/UpdateItem;

    move-object v1, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-wide v7, p4

    invoke-direct/range {v1 .. v8}, Lcom/amazon/kindle/contentupdate/db/UpdateItem;-><init>(JLjava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/messaging/ITodoItem;J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-object v0

    .line 130
    :goto_2
    :try_start_5
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 131
    throw v0

    .line 109
    :cond_0
    new-instance v0, Lcom/amazon/kindle/contentupdate/db/ContentUpdateDAO$DuplicateRequestException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request ID already exists: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/kindle/contentupdate/db/ContentUpdateDAO$DuplicateRequestException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public deleteUpdate(Lcom/amazon/kindle/contentupdate/db/UpdateItem;)I
    .locals 5

    .line 143
    iget-object v0, p0, Lcom/amazon/kindle/contentupdate/db/ContentUpdateDAO;->dbHelper:Lcom/amazon/kindle/contentupdate/db/ContentUpdateDBHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 144
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/amazon/kindle/contentupdate/db/ContentUpdateField;->ID:Lcom/amazon/kindle/contentupdate/db/ContentUpdateField;

    .line 147
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 148
    invoke-virtual {p1}, Lcom/amazon/kindle/contentupdate/db/UpdateItem;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    :try_start_0
    const-string p1, "ContentUpdates"

    .line 152
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    .line 153
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 156
    throw p1
.end method

.method public getAllUpdates()Ljava/util/Collection;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/contentupdate/db/UpdateItem;",
            ">;"
        }
    .end annotation

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 64
    iget-object v1, p0, Lcom/amazon/kindle/contentupdate/db/ContentUpdateDAO;->dbHelper:Lcom/amazon/kindle/contentupdate/db/ContentUpdateDBHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    sget-object v4, Lcom/amazon/kindle/contentupdate/db/ContentUpdateDAO;->COLUMNS:[Ljava/lang/String;

    const-string v3, "ContentUpdates"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 67
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 68
    sget-object v2, Lcom/amazon/kindle/contentupdate/db/ContentUpdateField;->ID:Lcom/amazon/kindle/contentupdate/db/ContentUpdateField;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 69
    sget-object v2, Lcom/amazon/kindle/contentupdate/db/ContentUpdateField;->USERID:Lcom/amazon/kindle/contentupdate/db/ContentUpdateField;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 70
    sget-object v2, Lcom/amazon/kindle/contentupdate/db/ContentUpdateField;->REQUEST_ID:Lcom/amazon/kindle/contentupdate/db/ContentUpdateField;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 71
    iget-object v2, p0, Lcom/amazon/kindle/contentupdate/db/ContentUpdateDAO;->gson:Lcom/google/gson/Gson;

    sget-object v3, Lcom/amazon/kindle/contentupdate/db/ContentUpdateField;->TODO_ITEM:Lcom/amazon/kindle/contentupdate/db/ContentUpdateField;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-class v8, Lcom/amazon/kindle/services/sync/todo/TodoItemAdaptor;

    invoke-virtual {v2, v3, v8}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/amazon/kindle/krx/messaging/ITodoItem;

    .line 72
    sget-object v2, Lcom/amazon/kindle/contentupdate/db/ContentUpdateField;->START_TIME:Lcom/amazon/kindle/contentupdate/db/ContentUpdateField;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 73
    new-instance v2, Lcom/amazon/kindle/contentupdate/db/UpdateItem;

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lcom/amazon/kindle/contentupdate/db/UpdateItem;-><init>(JLjava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/messaging/ITodoItem;J)V

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 76
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 77
    throw v0
.end method
