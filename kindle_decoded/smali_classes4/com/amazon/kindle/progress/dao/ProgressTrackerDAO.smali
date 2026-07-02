.class public Lcom/amazon/kindle/progress/dao/ProgressTrackerDAO;
.super Ljava/lang/Object;
.source "ProgressTrackerDAO.java"

# interfaces
.implements Lcom/amazon/kindle/progress/dao/IProgressTrackerDAO;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static instance:Lcom/amazon/kindle/progress/dao/IProgressTrackerDAO;


# instance fields
.field private dbHelper:Lcom/amazon/kindle/progress/db/ProgressTrackerDB;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lcom/amazon/kindle/progress/dao/ProgressTrackerDAO;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/progress/dao/ProgressTrackerDAO;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 25
    sput-object v0, Lcom/amazon/kindle/progress/dao/ProgressTrackerDAO;->instance:Lcom/amazon/kindle/progress/dao/IProgressTrackerDAO;

    return-void
.end method

.method private constructor <init>(Lcom/amazon/kindle/progress/db/ProgressTrackerDB;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/amazon/kindle/progress/dao/ProgressTrackerDAO;->dbHelper:Lcom/amazon/kindle/progress/db/ProgressTrackerDB;

    return-void
.end method

.method private cursorToProgressTracker(Landroid/database/Cursor;)Lcom/amazon/kindle/progress/IProgressTracker;
    .locals 8

    .line 44
    new-instance v0, Lcom/amazon/kindle/progress/ProgressTracker;

    invoke-direct {v0}, Lcom/amazon/kindle/progress/ProgressTracker;-><init>()V

    .line 46
    invoke-static {}, Lcom/amazon/kindle/progress/ProgressTrackerField;->values()[Lcom/amazon/kindle/progress/ProgressTrackerField;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 47
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 49
    sget-object v6, Lcom/amazon/kindle/progress/dao/ProgressTrackerDAO$2;->$SwitchMap$com$amazon$kindle$progress$ProgressTrackerField:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 72
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown field: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", make sure that you add case support for new fields added"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 69
    :pswitch_0
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/amazon/kindle/progress/ProgressTracker;->setRetryCount(I)V

    goto :goto_1

    .line 66
    :pswitch_1
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/amazon/kindle/progress/ProgressTracker;->setTaskPriority(I)V

    goto :goto_1

    .line 63
    :pswitch_2
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/amazon/kindle/progress/ProgressTracker;->setTaskProgress(I)V

    goto :goto_1

    .line 60
    :pswitch_3
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/amazon/kindle/progress/ProgressTracker;->setTaskCreated(J)V

    goto :goto_1

    .line 57
    :pswitch_4
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/amazon/kindle/progress/ProgressTracker;->setTaskLastUpdated(J)V

    goto :goto_1

    .line 54
    :pswitch_5
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/amazon/kindle/progress/ProgressTracker;->setTaskType(Ljava/lang/String;)V

    goto :goto_1

    .line 51
    :pswitch_6
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/amazon/kindle/progress/ProgressTracker;->setKey(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static declared-synchronized getInstance(Lcom/amazon/kindle/progress/db/ProgressTrackerDB;)Lcom/amazon/kindle/progress/dao/IProgressTrackerDAO;
    .locals 2

    const-class v0, Lcom/amazon/kindle/progress/dao/ProgressTrackerDAO;

    monitor-enter v0

    .line 33
    :try_start_0
    sget-object v1, Lcom/amazon/kindle/progress/dao/ProgressTrackerDAO;->instance:Lcom/amazon/kindle/progress/dao/IProgressTrackerDAO;

    if-nez v1, :cond_0

    .line 35
    new-instance v1, Lcom/amazon/kindle/progress/dao/ProgressTrackerDAO;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/progress/dao/ProgressTrackerDAO;-><init>(Lcom/amazon/kindle/progress/db/ProgressTrackerDB;)V

    sput-object v1, Lcom/amazon/kindle/progress/dao/ProgressTrackerDAO;->instance:Lcom/amazon/kindle/progress/dao/IProgressTrackerDAO;

    .line 40
    :cond_0
    sget-object p0, Lcom/amazon/kindle/progress/dao/ProgressTrackerDAO;->instance:Lcom/amazon/kindle/progress/dao/IProgressTrackerDAO;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private parseFields(Lcom/amazon/kindle/progress/IProgressTracker;Ljava/util/Collection;)Landroid/content/ContentValues;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/progress/IProgressTracker;",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/progress/ProgressTrackerField;",
            ">;)",
            "Landroid/content/ContentValues;"
        }
    .end annotation

    .line 139
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 141
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/progress/ProgressTrackerField;

    .line 142
    sget-object v2, Lcom/amazon/kindle/progress/dao/ProgressTrackerDAO$2;->$SwitchMap$com$amazon$kindle$progress$ProgressTrackerField:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 173
    :pswitch_0
    sget-object v1, Lcom/amazon/kindle/progress/ProgressTrackerField;->RETRY_COUNT:Lcom/amazon/kindle/progress/ProgressTrackerField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    .line 174
    invoke-interface {p1}, Lcom/amazon/kindle/progress/IProgressTracker;->getRetryCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 173
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 169
    :pswitch_1
    sget-object v1, Lcom/amazon/kindle/progress/ProgressTrackerField;->TASK_PRIORITY:Lcom/amazon/kindle/progress/ProgressTrackerField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    .line 170
    invoke-interface {p1}, Lcom/amazon/kindle/progress/IProgressTracker;->getPriority()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 169
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 154
    :pswitch_2
    sget-object v1, Lcom/amazon/kindle/progress/ProgressTrackerField;->TASK_PROGRESS:Lcom/amazon/kindle/progress/ProgressTrackerField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    .line 155
    invoke-interface {p1}, Lcom/amazon/kindle/progress/IProgressTracker;->getTaskProgress()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 154
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 159
    :pswitch_3
    sget-object v1, Lcom/amazon/kindle/progress/ProgressTrackerField;->TASK_CREATED:Lcom/amazon/kindle/progress/ProgressTrackerField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    .line 160
    invoke-interface {p1}, Lcom/amazon/kindle/progress/IProgressTracker;->getTaskCreated()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 159
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    .line 164
    :pswitch_4
    sget-object v1, Lcom/amazon/kindle/progress/ProgressTrackerField;->TASK_UPDATED:Lcom/amazon/kindle/progress/ProgressTrackerField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    .line 165
    invoke-interface {p1}, Lcom/amazon/kindle/progress/IProgressTracker;->getTaskLastUpdated()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 164
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    .line 149
    :pswitch_5
    sget-object v1, Lcom/amazon/kindle/progress/ProgressTrackerField;->TASK_TYPE:Lcom/amazon/kindle/progress/ProgressTrackerField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    .line 150
    invoke-interface {p1}, Lcom/amazon/kindle/progress/IProgressTracker;->getTaskType()Ljava/lang/String;

    move-result-object v2

    .line 149
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 144
    :pswitch_6
    sget-object v1, Lcom/amazon/kindle/progress/ProgressTrackerField;->KEY:Lcom/amazon/kindle/progress/ProgressTrackerField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    .line 145
    invoke-interface {p1}, Lcom/amazon/kindle/progress/IProgressTracker;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 144
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public deleteProgressTrackers(Ljava/lang/String;JJ)V
    .locals 7

    .line 232
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 236
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amazon/kindle/progress/ProgressTrackerField;->TASK_TYPE:Lcom/amazon/kindle/progress/ProgressTrackerField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " = ? AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    cmp-long v6, p2, v4

    if-nez v6, :cond_2

    cmp-long p2, p4, v4

    if-nez p2, :cond_1

    return-void

    .line 243
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Lcom/amazon/kindle/progress/ProgressTrackerField;->TASK_CREATED:Lcom/amazon/kindle/progress/ProgressTrackerField;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " >= ?"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v1, [Ljava/lang/String;

    aput-object p1, p3, v3

    .line 244
    invoke-static {p4, p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, v2

    goto :goto_0

    :cond_2
    cmp-long v6, p4, v4

    if-nez v6, :cond_3

    .line 247
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p5, Lcom/amazon/kindle/progress/ProgressTrackerField;->TASK_CREATED:Lcom/amazon/kindle/progress/ProgressTrackerField;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p5, " <= ?"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    new-array p5, v1, [Ljava/lang/String;

    aput-object p1, p5, v3

    .line 248
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p5, v2

    move-object p2, p4

    move-object p3, p5

    goto :goto_0

    .line 250
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/amazon/kindle/progress/ProgressTrackerField;->TASK_CREATED:Lcom/amazon/kindle/progress/ProgressTrackerField;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " NOT BETWEEN ? AND ?"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v3

    .line 252
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v2

    .line 253
    invoke-static {p4, p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v1

    move-object p2, v0

    move-object p3, v4

    .line 257
    :goto_0
    iget-object p1, p0, Lcom/amazon/kindle/progress/dao/ProgressTrackerDAO;->dbHelper:Lcom/amazon/kindle/progress/db/ProgressTrackerDB;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    .line 258
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    const-string p4, "ProgressTracking"

    .line 261
    invoke-virtual {p1, p4, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 262
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 265
    throw p2
.end method

.method public getProgressTrackerByKeyAndTaskType(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/progress/IProgressTracker;
    .locals 9

    .line 85
    iget-object v0, p0, Lcom/amazon/kindle/progress/dao/ProgressTrackerDAO;->dbHelper:Lcom/amazon/kindle/progress/db/ProgressTrackerDB;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v0, 0x0

    :try_start_0
    const-string v2, "ProgressTracking"

    .line 90
    invoke-static {}, Lcom/amazon/kindle/progress/ProgressTrackerField;->getAllFieldsAsArray()[Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/amazon/kindle/progress/ProgressTrackerField;->KEY:Lcom/amazon/kindle/progress/ProgressTrackerField;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "=? AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/amazon/kindle/progress/ProgressTrackerField;->TASK_TYPE:Lcom/amazon/kindle/progress/ProgressTrackerField;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "=?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 89
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    .line 93
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 97
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 98
    :goto_0
    invoke-direct {p0, v1}, Lcom/amazon/kindle/progress/dao/ProgressTrackerDAO;->cursorToProgressTracker(Landroid/database/Cursor;)Lcom/amazon/kindle/progress/IProgressTracker;

    move-result-object v2

    .line 100
    invoke-interface {v1}, Landroid/database/Cursor;->isLast()Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_2

    if-eqz v1, :cond_1

    .line 109
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v2

    .line 97
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

    .line 109
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception v2

    move-object v1, v0

    .line 105
    :goto_2
    :try_start_3
    sget-object v3, Lcom/amazon/kindle/progress/dao/ProgressTrackerDAO;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to get prgress tracker for Key="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", type="

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, v2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_5

    .line 109
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    return-object v0

    :catchall_1
    move-exception p1

    move-object v0, v1

    :goto_3
    if-eqz v0, :cond_6

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 111
    :cond_6
    throw p1
.end method

.method public insert(Lcom/amazon/kindle/progress/IProgressTracker;)J
    .locals 6

    .line 306
    sget-object v0, Lcom/amazon/kindle/progress/ProgressTrackerField;->ALL_FIELDS:Ljava/util/Collection;

    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/progress/dao/ProgressTrackerDAO;->parseFields(Lcom/amazon/kindle/progress/IProgressTracker;Ljava/util/Collection;)Landroid/content/ContentValues;

    move-result-object p1

    .line 308
    iget-object v0, p0, Lcom/amazon/kindle/progress/dao/ProgressTrackerDAO;->dbHelper:Lcom/amazon/kindle/progress/db/ProgressTrackerDB;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 309
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-wide/16 v1, -0x3

    :try_start_0
    const-string v3, "ProgressTracking"

    const/4 v4, 0x0

    const/4 v5, 0x5

    .line 312
    invoke-virtual {v0, v3, v4, p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v1

    .line 314
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 320
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 318
    :try_start_1
    sget-object v3, Lcom/amazon/kindle/progress/dao/ProgressTrackerDAO;->TAG:Ljava/lang/String;

    const-string v4, "WTF"

    invoke-static {v3, v4, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_0
    move-exception p1

    .line 316
    sget-object v3, Lcom/amazon/kindle/progress/dao/ProgressTrackerDAO;->TAG:Ljava/lang/String;

    const-string v4, "exception inserting"

    invoke-static {v3, v4, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :goto_1
    return-wide v1

    :catchall_1
    move-exception p1

    .line 320
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 321
    throw p1
.end method
