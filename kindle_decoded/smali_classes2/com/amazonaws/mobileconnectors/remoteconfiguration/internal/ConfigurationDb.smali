.class public Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;
.super Ljava/lang/Object;
.source "ConfigurationDb.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb$DBHelper;
    }
.end annotation


# static fields
.field private static final COL_ENTITY_TAG:I = 0x2

.field private static final COL_ORIGIN:I = 0x3

.field private static final COL_TIMESTAMP:I = 0x1

.field private static final COL_VALUE:I = 0x0

.field private static final DATABASE_VERSION:I = 0x2

.field private static final DB_NAME:Ljava/lang/String; = "ConfigurationCache.db"

.field private static final PROJECTION_CONFIGURATION:[Ljava/lang/String;

.field private static final PROJECTION_REMOTE_CONFIGURATION:[Ljava/lang/String;

.field private static final SQL_CREATE_CONFIGURATION_TABLE:Ljava/lang/String; = "CREATE TABLE configuration (_id INTEGER PRIMARY KEY, json TEXT, origin INTEGER NOT NULL CHECK (origin IN (1,2,3)), timestamp INTEGER, entity_tag TEXT);"

.field private static final TAG:Ljava/lang/String; = "ConfigurationDb"

.field private static final instanceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private dbHelper:Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb$DBHelper;

.field private mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private openCounter:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "timestamp"

    const-string v1, "json"

    .line 63
    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;->PROJECTION_CONFIGURATION:[Ljava/lang/String;

    const-string v2, "entity_tag"

    const-string v3, "origin"

    .line 96
    filled-new-array {v1, v0, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;->PROJECTION_REMOTE_CONFIGURATION:[Ljava/lang/String;

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;->instanceMap:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb$DBHelper;)V
    .locals 0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;->openCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 134
    iput-object p3, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;->dbHelper:Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb$DBHelper;

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 37
    sget-object v0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized closeDatabase()V
    .locals 1

    monitor-enter p0

    .line 138
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;->openCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private configurationFromCursor(Landroid/database/Cursor;)Lcom/amazonaws/mobileconnectors/remoteconfiguration/Configuration;
    .locals 5

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 357
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 361
    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/util/Date;

    .line 362
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    move-object v1, v2

    .line 363
    :goto_0
    new-instance v2, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationImpl;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, v1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationImpl;-><init>(Ljava/lang/String;Ljava/util/Date;)V

    return-object v2

    .line 358
    :cond_1
    new-instance p1, Lcom/amazonaws/mobileconnectors/remoteconfiguration/exceptions/ConfigurationNotFoundException;

    const-string v0, "Configuration not found"

    invoke-direct {p1, v0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/exceptions/ConfigurationNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getContentValues(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 2

    .line 370
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "json"

    if-eqz p1, :cond_0

    .line 372
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 374
    :cond_0
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    :goto_0
    const-string p1, "origin"

    if-eqz p2, :cond_1

    .line 377
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 379
    :cond_1
    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    :goto_1
    const-string p1, "timestamp"

    if-eqz p3, :cond_2

    .line 382
    invoke-virtual {v0, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_2

    .line 384
    :cond_2
    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    :goto_2
    const-string p1, "entity_tag"

    if-eqz p4, :cond_3

    .line 387
    invoke-virtual {v0, p1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 389
    :cond_3
    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    :goto_3
    return-object v0
.end method

.method public static getOrCreateInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;
    .locals 3

    const-string v0, "/"

    const-string v1, ""

    .line 113
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 114
    sget-object v0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;->instanceMap:Ljava/util/Map;

    monitor-enter v0

    .line 115
    :try_start_0
    sget-object v1, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;->instanceMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;

    if-nez v1, :cond_0

    .line 117
    new-instance v1, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb$DBHelper;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb$DBHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb$1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catch Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/DowngradeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 122
    :catch_0
    :try_start_2
    invoke-static {p1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb$DBHelper;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 123
    new-instance v1, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb$DBHelper;

    invoke-direct {v1, p0, p1, v2}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb$DBHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb$1;)V

    .line 125
    :goto_0
    new-instance v2, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;

    invoke-direct {v2, p0, p1, v1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb$DBHelper;)V

    .line 126
    sget-object p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;->instanceMap:Ljava/util/Map;

    invoke-interface {p0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v2

    .line 128
    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 129
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private hasConfiguration(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 10

    const-string v0, "_id"

    .line 225
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const-string v2, "configuration"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "1"

    move-object v1, p1

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 237
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    .line 238
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private declared-synchronized openDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    monitor-enter p0

    .line 508
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;->openCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 509
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;->dbHelper:Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb$DBHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 511
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private remoteConfigurationFromCursor(Landroid/database/Cursor;Ljava/lang/String;)Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/model/RemoteConfiguration;
    .locals 7

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 338
    :cond_0
    new-instance v6, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/model/RemoteConfigurationImpl;

    .line 339
    invoke-direct {p0, p1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;->configurationFromCursor(Landroid/database/Cursor;)Lcom/amazonaws/mobileconnectors/remoteconfiguration/Configuration;

    move-result-object v1

    const/4 v0, 0x3

    .line 341
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v0, 0x2

    .line 342
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, v6

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/model/RemoteConfigurationImpl;-><init>(Lcom/amazonaws/mobileconnectors/remoteconfiguration/Configuration;Ljava/lang/String;ILjava/lang/String;Z)V

    return-object v6
.end method

.method private declared-synchronized saveConfiguration(Ljava/lang/String;ILjava/lang/Long;Ljava/lang/String;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    const-string v0, "configuration cannot be null"

    .line 179
    invoke-static {p1, v0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/gear/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timestamp cannot be null for non-default configuration"

    .line 180
    invoke-static {p3, v0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/gear/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    .line 183
    :try_start_1
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 184
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    move-object v1, p0

    move-object v2, v0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 185
    invoke-direct/range {v1 .. v6}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;->saveConfigurationPrivate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;ILjava/lang/Long;Ljava/lang/String;)V

    .line 186
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    .line 189
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 191
    :cond_0
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;->closeDatabase()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 193
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_1

    .line 189
    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 191
    :cond_1
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;->closeDatabase()V

    .line 192
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private saveConfigurationPrivate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;ILjava/lang/Long;Ljava/lang/String;)V
    .locals 0

    .line 202
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;->getContentValues(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object p2

    .line 204
    invoke-direct {p0, p1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;->hasConfiguration(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result p3

    const/4 p4, 0x0

    const-string p5, "configuration"

    if-eqz p3, :cond_1

    .line 205
    invoke-virtual {p1, p5, p2, p4, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    .line 214
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Updated 1 row in configuration table,\n"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {p2}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    .line 210
    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Updated "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " rows while was intending to update one and only one row in "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 218
    :cond_1
    invoke-virtual {p1, p5, p4, p2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 219
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Inserted 1 row into configuration table,\n"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {p2}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :goto_0
    return-void
.end method


# virtual methods
.method public declared-synchronized readConfiguration()Lcom/amazonaws/mobileconnectors/remoteconfiguration/Configuration;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/mobileconnectors/remoteconfiguration/exceptions/ConfigurationNotFoundException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 253
    :try_start_0
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 254
    :try_start_1
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v2, "configuration"

    .line 255
    sget-object v3, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;->PROJECTION_CONFIGURATION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v9

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 263
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    if-eqz v0, :cond_2

    .line 264
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 265
    invoke-direct {p0, v0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;->configurationFromCursor(Landroid/database/Cursor;)Lcom/amazonaws/mobileconnectors/remoteconfiguration/Configuration;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    .line 271
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    if-eqz v9, :cond_1

    .line 274
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 276
    :cond_1
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;->closeDatabase()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 265
    monitor-exit p0

    return-object v1

    .line 267
    :cond_2
    :try_start_3
    new-instance v1, Lcom/amazonaws/mobileconnectors/remoteconfiguration/exceptions/ConfigurationNotFoundException;

    const-string v2, "Configuration not found"

    invoke-direct {v1, v2}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/exceptions/ConfigurationNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception v1

    move-object v9, v0

    :goto_0
    if-eqz v0, :cond_3

    .line 271
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_2
    move-exception v0

    goto :goto_2

    :cond_3
    :goto_1
    if-eqz v9, :cond_4

    .line 274
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 276
    :cond_4
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;->closeDatabase()V

    .line 277
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :goto_2
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized readRemoteConfiguration(Ljava/lang/String;)Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/model/RemoteConfiguration;
    .locals 10

    monitor-enter p0

    const/4 v0, 0x0

    .line 295
    :try_start_0
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 296
    :try_start_1
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v2, "configuration"

    .line 297
    sget-object v3, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;->PROJECTION_REMOTE_CONFIGURATION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v9

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 305
    :try_start_2
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    if-eqz v1, :cond_2

    .line 306
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 307
    invoke-direct {p0, v1, p1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;->remoteConfigurationFromCursor(Landroid/database/Cursor;Ljava/lang/String;)Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/model/RemoteConfiguration;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_0

    .line 311
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    if-eqz v9, :cond_1

    .line 314
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 316
    :cond_1
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;->closeDatabase()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 307
    monitor-exit p0

    return-object p1

    :cond_2
    if-eqz v1, :cond_3

    .line 311
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    if-eqz v9, :cond_4

    .line 314
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 316
    :cond_4
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;->closeDatabase()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 318
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_0

    :catchall_2
    move-exception p1

    move-object v9, v0

    :goto_0
    if-eqz v0, :cond_5

    .line 311
    :try_start_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_3
    move-exception p1

    goto :goto_2

    :cond_5
    :goto_1
    if-eqz v9, :cond_6

    .line 314
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 316
    :cond_6
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;->closeDatabase()V

    .line 317
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public saveConfiguration(Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/model/RemoteConfiguration;)V
    .locals 4

    if-eqz p1, :cond_2

    .line 154
    invoke-interface {p1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/model/RemoteConfiguration;->getConfiguration()Lcom/amazonaws/mobileconnectors/remoteconfiguration/Configuration;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 157
    invoke-interface {p1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/model/RemoteConfiguration;->getConfiguration()Lcom/amazonaws/mobileconnectors/remoteconfiguration/Configuration;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/Configuration;->getTimestamp()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 160
    invoke-interface {p1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/model/RemoteConfiguration;->getConfiguration()Lcom/amazonaws/mobileconnectors/remoteconfiguration/Configuration;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/Configuration;->getAsJsonString()Ljava/lang/String;

    move-result-object v0

    .line 161
    invoke-interface {p1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/model/RemoteConfiguration;->getOrigin()I

    move-result v1

    .line 162
    invoke-interface {p1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/model/RemoteConfiguration;->getConfiguration()Lcom/amazonaws/mobileconnectors/remoteconfiguration/Configuration;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/Configuration;->getTimestamp()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 163
    invoke-interface {p1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/model/RemoteConfiguration;->getEntityTag()Ljava/lang/String;

    move-result-object p1

    .line 160
    invoke-direct {p0, v0, v1, v2, p1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;->saveConfiguration(Ljava/lang/String;ILjava/lang/Long;Ljava/lang/String;)V

    return-void

    .line 158
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "The Configuration\'s timestamp may not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 155
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "The contained Configuration may not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 152
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "The RemoteConfiguration may not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
