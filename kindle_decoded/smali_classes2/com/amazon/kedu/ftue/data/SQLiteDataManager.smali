.class public Lcom/amazon/kedu/ftue/data/SQLiteDataManager;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SQLiteDataManager.java"

# interfaces
.implements Lcom/amazon/kedu/ftue/data/IDataManager;


# static fields
.field private static final COUNT_COLUMN_NAME:Ljava/lang/String; = "count"

.field private static final DATABASE_NAME:Ljava/lang/String; = "KeduFTUE.db"

.field private static final KEY_COLUMN_NAME:Ljava/lang/String; = "key"

.field private static final LAST_OCCURRED_COLUMN_NAME:Ljava/lang/String; = "lastOccurred"

.field private static final SCHEMA_VERSION:I = 0x1

.field private static final TABLE_NAME:Ljava/lang/String; = "KFDataEntry"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const-class v0, Lcom/amazon/kedu/ftue/data/SQLiteDataManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kedu/ftue/data/SQLiteDataManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "KeduFTUE.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 38
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method private getEventRecord(Landroid/database/Cursor;)Lcom/amazon/kedu/ftue/data/EventRecord;
    .locals 5

    .line 113
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    const-string v1, "lastOccurred"

    .line 114
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Date;->setTime(J)V

    .line 116
    new-instance v1, Lcom/amazon/kedu/ftue/data/EventRecord;

    const-string v2, "key"

    .line 117
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "count"

    .line 118
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/amazon/kedu/ftue/data/EventRecord;-><init>(Ljava/lang/String;JLjava/util/Date;)V

    return-object v1
.end method


# virtual methods
.method public clearAllEntries()V
    .locals 3

    .line 232
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "KFDataEntry"

    .line 234
    invoke-virtual {v0, v2, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public getEventRecordForKey(Ljava/lang/String;)Lcom/amazon/kedu/ftue/data/EventRecord;
    .locals 7

    const-string v0, "Failed closing results after operation"

    .line 69
    new-instance v1, Lcom/amazon/kedu/ftue/data/EventRecord;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-direct {v1, p1, v3, v4, v2}, Lcom/amazon/kedu/ftue/data/EventRecord;-><init>(Ljava/lang/String;JLjava/util/Date;)V

    .line 75
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "SELECT key, count, lastOccurred FROM KFDataEntry WHERE key = ? "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    .line 81
    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 82
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 84
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result p1

    if-nez p1, :cond_0

    .line 86
    invoke-direct {p0, v2}, Lcom/amazon/kedu/ftue/data/SQLiteDataManager;->getEventRecord(Landroid/database/Cursor;)Lcom/amazon/kedu/ftue/data/EventRecord;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    if-eqz v2, :cond_1

    .line 99
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 103
    sget-object v2, Lcom/amazon/kedu/ftue/data/SQLiteDataManager;->TAG:Ljava/lang/String;

    invoke-static {v2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 91
    :try_start_2
    sget-object v3, Lcom/amazon/kedu/ftue/data/SQLiteDataManager;->TAG:Ljava/lang/String;

    const-string v4, "Failed getting count for key"

    invoke-static {v3, v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_1

    .line 99
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_1
    :goto_0
    return-object v1

    :goto_1
    if-eqz v2, :cond_2

    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v1

    .line 103
    sget-object v2, Lcom/amazon/kedu/ftue/data/SQLiteDataManager;->TAG:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 106
    :cond_2
    :goto_2
    throw p1
.end method

.method public incrementLastOccurrenceOfAllEntries(J)V
    .locals 3

    .line 219
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UPDATE KFDataEntry SET lastOccurred = lastOccurred + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 223
    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE KFDataEntry ( key TEXT PRIMARY KEY, count INTEGER, lastOccurred INTEGER  )"

    .line 47
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    return-void
.end method

.method public recordEventForKey(Ljava/lang/String;)V
    .locals 1

    .line 185
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/amazon/kedu/ftue/data/SQLiteDataManager;->recordEventForKey(Ljava/lang/String;Ljava/util/Date;)V

    return-void
.end method

.method recordEventForKey(Ljava/lang/String;Ljava/util/Date;)V
    .locals 2

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INSERT OR REPLACE INTO KFDataEntry ( key, count, lastOccurred )  VALUES ( ?, COALESCE( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ( SELECT count FROM KFDataEntry where key = ? ) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", 0 ) + 1,  ? )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 204
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 205
    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 206
    invoke-virtual {v0, v1, p1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    const/4 v1, 0x2

    .line 207
    invoke-virtual {v0, v1, p1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 208
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 210
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    return-void
.end method
