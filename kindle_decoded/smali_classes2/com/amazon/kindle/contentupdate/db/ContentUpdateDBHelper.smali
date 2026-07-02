.class Lcom/amazon/kindle/contentupdate/db/ContentUpdateDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "ContentUpdateDBHelper.java"


# static fields
.field private static final NAME:Ljava/lang/String; = "content_update.db"

.field private static final TAG:Ljava/lang/String;

.field private static final VERSION:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const-class v0, Lcom/amazon/kindle/contentupdate/db/ContentUpdateDBHelper;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/contentupdate/db/ContentUpdateDBHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "content_update.db"

    const/4 v1, 0x0

    const/4 v2, 0x3

    .line 22
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method private createContentUpdateTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE IF NOT EXISTS "

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ContentUpdates"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/contentupdate/db/ContentUpdateField;->ID:Lcom/amazon/kindle/contentupdate/db/ContentUpdateField;

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " INTEGER PRIMARY KEY, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/contentupdate/db/ContentUpdateField;->USERID:Lcom/amazon/kindle/contentupdate/db/ContentUpdateField;

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " TEXT, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/contentupdate/db/ContentUpdateField;->REQUEST_ID:Lcom/amazon/kindle/contentupdate/db/ContentUpdateField;

    .line 42
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/contentupdate/db/ContentUpdateField;->TODO_ITEM:Lcom/amazon/kindle/contentupdate/db/ContentUpdateField;

    .line 43
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/contentupdate/db/ContentUpdateField;->START_TIME:Lcom/amazon/kindle/contentupdate/db/ContentUpdateField;

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " TIMESTAMP DEFAULT CURRENT_TIMESTAMP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ");"

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private upgradeToVersion2(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 63
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    const-string v0, "DROP TABLE IF EXISTS ContentUpdates"

    .line 66
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 67
    invoke-direct {p0, p1}, Lcom/amazon/kindle/contentupdate/db/ContentUpdateDBHelper;->createContentUpdateTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 68
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 71
    throw v0
.end method

.method private upgradeToVersion3(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .line 75
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    const-string v0, "ALTER TABLE %s ADD COLUMN %s TEXT"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "ContentUpdates"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 77
    sget-object v3, Lcom/amazon/kindle/contentupdate/db/ContentUpdateField;->REQUEST_ID:Lcom/amazon/kindle/contentupdate/db/ContentUpdateField;

    .line 78
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 77
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 81
    :try_start_1
    sget-object v1, Lcom/amazon/kindle/contentupdate/db/ContentUpdateDBHelper;->TAG:Ljava/lang/String;

    const-string v2, "Error upgrading to version 3 "

    invoke-static {v1, v2, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    :goto_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :goto_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 84
    throw v0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 27
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 29
    :try_start_0
    invoke-direct {p0, p1}, Lcom/amazon/kindle/contentupdate/db/ContentUpdateDBHelper;->createContentUpdateTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 30
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 33
    throw v0
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    const/4 p3, 0x1

    if-eq p2, p3, :cond_0

    const/4 p3, 0x2

    if-eq p2, p3, :cond_1

    .line 58
    sget-object p1, Lcom/amazon/kindle/contentupdate/db/ContentUpdateDBHelper;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Detected invalid database version "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/kindle/contentupdate/db/ContentUpdateDBHelper;->upgradeToVersion2(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 55
    :cond_1
    invoke-direct {p0, p1}, Lcom/amazon/kindle/contentupdate/db/ContentUpdateDBHelper;->upgradeToVersion3(Landroid/database/sqlite/SQLiteDatabase;)V

    :goto_0
    return-void
.end method
