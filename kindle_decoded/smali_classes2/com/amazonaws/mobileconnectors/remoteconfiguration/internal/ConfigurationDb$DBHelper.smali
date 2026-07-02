.class Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb$DBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "ConfigurationDb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DBHelper"
.end annotation


# instance fields
.field private final mDbFile:Ljava/io/File;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 411
    invoke-static {p2}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb$DBHelper;->getDbFileNameFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 412
    invoke-static {p2}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb$DBHelper;->getDbFileNameFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb$DBHelper;->mDbFile:Ljava/io/File;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb$1;)V
    .locals 0

    .line 403
    invoke-direct {p0, p1, p2}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb$DBHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 403
    invoke-static {p0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb$DBHelper;->getDbFileNameFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getDbFileNameFor(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "ConfigurationCache.db"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private setupDb(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    const/4 v0, 0x0

    .line 480
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "CREATE TABLE configuration (_id INTEGER PRIMARY KEY, json TEXT, origin INTEGER NOT NULL CHECK (origin IN (1,2,3)), timestamp INTEGER, entity_tag TEXT);"

    .line 481
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 483
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 485
    :try_start_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 486
    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 487
    invoke-static {}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;->access$200()Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Executed sql, \n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    .line 489
    :cond_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 491
    :try_start_2
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const/4 v0, 0x1

    .line 495
    invoke-static {}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Created tables for version 2"

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v1

    .line 491
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 492
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    if-nez v0, :cond_2

    .line 498
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb$DBHelper;->mDbFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    .line 499
    invoke-static {}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed creating tables in SyncDB. Attempt to delete SyncDB "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    const-string v0, "succeeded"

    goto :goto_1

    :cond_1
    const-string v0, "failed"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    :cond_2
    throw p1
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 431
    invoke-static {}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Creating Configuration DB version 2"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    invoke-direct {p0, p1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb$DBHelper;->setupDb(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 468
    new-instance p1, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/DowngradeException;

    invoke-direct {p1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/DowngradeException;-><init>()V

    throw p1
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 473
    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    const-string v0, "PRAGMA foreign_keys=ON;"

    .line 474
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 4

    const-string v0, " to "

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    const/4 v1, 0x2

    if-ne p3, v1, :cond_0

    .line 441
    invoke-static {}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Upgrading database schema from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "DROP INDEX e_tag_idx_configuration;"

    .line 443
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "DROP INDEX configuration_type_idx_configuration;"

    .line 444
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "ALTER TABLE configuration RENAME TO configuration_old;"

    .line 446
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "CREATE TABLE configuration (_id INTEGER PRIMARY KEY, json TEXT, origin INTEGER NOT NULL CHECK (origin IN (1,2,3)), timestamp INTEGER, entity_tag TEXT);"

    .line 448
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "INSERT INTO configuration(_id, json, origin, entity_tag, timestamp) SELECT _id, value, CASE WHEN e_tag IS NULL THEN 1 ELSE 2 END AS origin, e_tag, last_load_time FROM configuration_old WHERE configuration_type = 1;"

    .line 450
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "DROP TABLE configuration_old;"

    .line 462
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 463
    invoke-static {}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;->access$200()Ljava/lang/String;

    return-void

    .line 438
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal upgrade: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
