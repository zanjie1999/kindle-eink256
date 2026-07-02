.class public Lcom/amazon/notebook/module/exporting/ClippingLimitDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "ClippingLimitDBHelper.java"


# static fields
.field public static final TAG:Ljava/lang/String;

.field public static database_version:I

.field private static instance:Lcom/amazon/notebook/module/exporting/ClippingLimitDBHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    const-class v0, Lcom/amazon/notebook/module/exporting/ClippingLimitDBHelper;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/notebook/module/exporting/ClippingLimitDBHelper;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    .line 15
    sput v0, Lcom/amazon/notebook/module/exporting/ClippingLimitDBHelper;->database_version:I

    const/4 v0, 0x0

    .line 17
    sput-object v0, Lcom/amazon/notebook/module/exporting/ClippingLimitDBHelper;->instance:Lcom/amazon/notebook/module/exporting/ClippingLimitDBHelper;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 39
    sget v0, Lcom/amazon/notebook/module/exporting/ClippingLimitDBHelper;->database_version:I

    const-string v1, "clippinglimits.db"

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method public static getCreateTableSqlStatement()Ljava/lang/String;
    .locals 3

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE IF NOT EXISTS "

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "AmountExported"

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/notebook/module/exporting/ClippingLimitField;->USERID:Lcom/amazon/notebook/module/exporting/ClippingLimitField;

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " TEXT, "

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/notebook/module/exporting/ClippingLimitField;->BOOKID:Lcom/amazon/notebook/module/exporting/ClippingLimitField;

    .line 67
    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/notebook/module/exporting/ClippingLimitField;->EXPORTED:Lcom/amazon/notebook/module/exporting/ClippingLimitField;

    .line 69
    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " REAL, "

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "PRIMARY KEY ("

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/notebook/module/exporting/ClippingLimitField;->USERID:Lcom/amazon/notebook/module/exporting/ClippingLimitField;

    .line 72
    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/notebook/module/exporting/ClippingLimitField;->BOOKID:Lcom/amazon/notebook/module/exporting/ClippingLimitField;

    .line 74
    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "));"

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/amazon/notebook/module/exporting/ClippingLimitDBHelper;
    .locals 2

    const-class v0, Lcom/amazon/notebook/module/exporting/ClippingLimitDBHelper;

    monitor-enter v0

    .line 26
    :try_start_0
    sget-object v1, Lcom/amazon/notebook/module/exporting/ClippingLimitDBHelper;->instance:Lcom/amazon/notebook/module/exporting/ClippingLimitDBHelper;

    if-nez v1, :cond_0

    .line 27
    new-instance v1, Lcom/amazon/notebook/module/exporting/ClippingLimitDBHelper;

    invoke-direct {v1, p0}, Lcom/amazon/notebook/module/exporting/ClippingLimitDBHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/amazon/notebook/module/exporting/ClippingLimitDBHelper;->instance:Lcom/amazon/notebook/module/exporting/ClippingLimitDBHelper;

    .line 30
    :cond_0
    sget-object p0, Lcom/amazon/notebook/module/exporting/ClippingLimitDBHelper;->instance:Lcom/amazon/notebook/module/exporting/ClippingLimitDBHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .line 82
    invoke-static {}, Lcom/amazon/notebook/module/exporting/ClippingLimitDBHelper;->getCreateTableSqlStatement()Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 86
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 87
    sget-object v1, Lcom/amazon/notebook/module/exporting/ClippingLimitDBHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Clipping limits table been created with the create statement: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 92
    throw v0
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    return-void
.end method
