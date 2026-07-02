.class public Lcom/amazon/nwstd/persistence/resources/DBDynamicResources;
.super Lcom/amazon/nwstd/persistence/DBLocalStorage;
.source "DBDynamicResources.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/nwstd/persistence/resources/DBDynamicResources$Resource;
    }
.end annotation


# static fields
.field private static final LOAD_DATABASE_REQUEST:Ljava/lang/String; = "SELECT dynamic_resources_manager.parent_ASIN , dynamic_resources_manager.language , dynamic_resources.timestamp , dynamic_resources.target_type , dynamic_resources.origin_type , dynamic_resources_objects.reference FROM dynamic_resources INNER JOIN dynamic_resources_manager ON dynamic_resources.resource_id  = dynamic_resources_manager.resource_id INNER JOIN dynamic_resources_objects ON dynamic_resources.object_id = dynamic_resources_objects.object_id"

.field private static final SEARCH_EXISTING_REQUEST_BY_LANGUAGE_AND_TYPE:Ljava/lang/String; = "SELECT dynamic_resources_manager.resource_id , dynamic_resources.object_id FROM dynamic_resources INNER JOIN dynamic_resources_manager ON dynamic_resources.resource_id  = dynamic_resources_manager.resource_id INNER JOIN dynamic_resources_objects ON dynamic_resources.object_id = dynamic_resources_objects.object_id WHERE dynamic_resources_manager.language = ? AND dynamic_resources.target_type = ? AND dynamic_resources.origin_type = ? AND dynamic_resources_objects.reference = ?"

.field private static final SEARCH_EXISTING_REQUEST_BY_PARENTASIN_AND_TYPE:Ljava/lang/String; = "SELECT dynamic_resources_manager.resource_id , dynamic_resources.object_id FROM dynamic_resources INNER JOIN dynamic_resources_manager ON dynamic_resources.resource_id  = dynamic_resources_manager.resource_id INNER JOIN dynamic_resources_objects ON dynamic_resources.object_id = dynamic_resources_objects.object_id WHERE dynamic_resources_manager.parent_ASIN = ? AND dynamic_resources.target_type = ? AND dynamic_resources.origin_type = ? AND dynamic_resources_objects.reference = ?"

.field private static final SEARCH_EXISTING_REQUEST_BY_TYPE_AND_ORIGIN:Ljava/lang/String; = "SELECT dynamic_resources_manager.resource_id , dynamic_resources.object_id FROM dynamic_resources INNER JOIN dynamic_resources_manager ON dynamic_resources.resource_id  = dynamic_resources_manager.resource_id INNER JOIN dynamic_resources_objects ON dynamic_resources.object_id = dynamic_resources_objects.object_id WHERE dynamic_resources.target_type = ? AND dynamic_resources.origin_type = ? AND dynamic_resources_objects.reference = ?"

.field private static final SEARCH_EXISTING_REQUEST_HEADER:Ljava/lang/String; = "SELECT dynamic_resources_manager.resource_id , dynamic_resources.object_id FROM dynamic_resources INNER JOIN dynamic_resources_manager ON dynamic_resources.resource_id  = dynamic_resources_manager.resource_id INNER JOIN dynamic_resources_objects ON dynamic_resources.object_id = dynamic_resources_objects.object_id WHERE "

.field private static final SQL_CREATE_STATEMENTS:[Ljava/lang/String;

.field private static final SQL_DROP_STATEMENTS:[Ljava/lang/String;

.field private static final SQL_DYNAMIC_RESOURCES_CREATE_V1:Ljava/lang/StringBuffer;

.field private static final SQL_DYNAMIC_RESOURCES_DROP:Ljava/lang/StringBuffer;

.field private static final SQL_DYNAMIC_RESOURCES_MANAGER_CREATE_V1:Ljava/lang/StringBuffer;

.field private static final SQL_DYNAMIC_RESOURCES_MANAGER_DROP:Ljava/lang/StringBuffer;

.field private static final SQL_DYNAMIC_RESOURCES_OBJECTS_CREATE_V1:Ljava/lang/StringBuffer;

.field private static final SQL_DYNAMIC_RESOURCES_OBJECTS_DROP:Ljava/lang/StringBuffer;

.field private static final SQL_MIGRATION_STATEMENTS:[[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 35
    const-class v0, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources;->TAG:Ljava/lang/String;

    .line 116
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "CREATE TABLE IF NOT EXISTS "

    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "dynamic_resources_objects"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, " ( "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "object_id"

    .line 118
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, " INTEGER PRIMARY KEY AUTOINCREMENT, "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v6, "reference"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, " TEXT )"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sput-object v0, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources;->SQL_DYNAMIC_RESOURCES_OBJECTS_CREATE_V1:Ljava/lang/StringBuffer;

    .line 123
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, "dynamic_resources"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v7, "resource_id"

    .line 125
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v5, "timestamp"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, " TEXT, "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v8, "target_type"

    .line 126
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v8, "origin_type"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v8, " INTEGER REFERENCES "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, " ) ) "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sput-object v0, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources;->SQL_DYNAMIC_RESOURCES_CREATE_V1:Ljava/lang/StringBuffer;

    .line 132
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "dynamic_resources_manager"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v4, "parent_ASIN"

    .line 134
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "language"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 135
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 136
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, " ) )"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sput-object v0, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources;->SQL_DYNAMIC_RESOURCES_MANAGER_CREATE_V1:Ljava/lang/StringBuffer;

    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/String;

    .line 141
    sget-object v4, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources;->SQL_DYNAMIC_RESOURCES_OBJECTS_CREATE_V1:Ljava/lang/StringBuffer;

    .line 142
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources;->SQL_DYNAMIC_RESOURCES_CREATE_V1:Ljava/lang/StringBuffer;

    .line 143
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x1

    aput-object v4, v3, v7

    sget-object v4, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources;->SQL_DYNAMIC_RESOURCES_MANAGER_CREATE_V1:Ljava/lang/StringBuffer;

    .line 144
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x2

    aput-object v4, v3, v8

    sput-object v3, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources;->SQL_CREATE_STATEMENTS:[Ljava/lang/String;

    .line 150
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "DROP TABLE IF EXISTS "

    .line 151
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sput-object v3, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources;->SQL_DYNAMIC_RESOURCES_OBJECTS_DROP:Ljava/lang/StringBuffer;

    .line 156
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 157
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sput-object v2, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources;->SQL_DYNAMIC_RESOURCES_DROP:Ljava/lang/StringBuffer;

    .line 162
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 163
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sput-object v2, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources;->SQL_DYNAMIC_RESOURCES_MANAGER_DROP:Ljava/lang/StringBuffer;

    new-array v1, v5, [[Ljava/lang/String;

    .line 168
    sput-object v1, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources;->SQL_MIGRATION_STATEMENTS:[[Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/String;

    .line 175
    sget-object v1, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources;->SQL_DYNAMIC_RESOURCES_OBJECTS_DROP:Ljava/lang/StringBuffer;

    .line 176
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    sget-object v1, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources;->SQL_DYNAMIC_RESOURCES_DROP:Ljava/lang/StringBuffer;

    .line 177
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    sget-object v1, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources;->SQL_DYNAMIC_RESOURCES_MANAGER_DROP:Ljava/lang/StringBuffer;

    .line 178
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    sput-object v0, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources;->SQL_DROP_STATEMENTS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 246
    invoke-direct {p0, p1}, Lcom/amazon/nwstd/persistence/DBLocalStorage;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private insertResourceInternal(Lcom/amazon/nwstd/persistence/resources/DBDynamicResources$Resource;)Z
    .locals 10

    const-string v0, "Exception ending resource insertion transaction"

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 382
    :goto_0
    invoke-static {v3}, Lcom/amazon/nwstd/utils/Assertion;->Assert(Z)V

    const/16 v3, 0x10

    .line 384
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/nwstd/persistence/DBLocalStorage;->openDB()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 390
    invoke-virtual {p0}, Lcom/amazon/nwstd/persistence/DBLocalStorage;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    if-nez v4, :cond_1

    .line 392
    sget-object p1, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Database "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources;->getDatabaseName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " open has failed."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v3, v0}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    return v2

    .line 399
    :cond_1
    :try_start_1
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 401
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v6, "reference"

    .line 402
    iget-object v7, p1, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources$Resource;->reference:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "dynamic_resources_objects"

    const/4 v7, 0x0

    .line 403
    invoke-virtual {v4, v6, v7, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    .line 405
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    const-string v9, "object_id"

    .line 406
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v8, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v5, "target_type"

    .line 407
    iget-object v6, p1, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources$Resource;->targetType:Ljava/lang/String;

    invoke-virtual {v8, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "origin_type"

    .line 408
    iget-object v6, p1, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources$Resource;->targetOrigin:Ljava/lang/String;

    invoke-virtual {v8, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "timestamp"

    .line 409
    iget-object v6, p1, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources$Resource;->timestamp:Ljava/lang/String;

    invoke-virtual {v8, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "dynamic_resources"

    .line 410
    invoke-virtual {v4, v5, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    .line 412
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v9, "resource_id"

    .line 413
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v8, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v5, "parent_ASIN"

    .line 414
    iget-object v6, p1, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources$Resource;->parentASIN:Ljava/lang/String;

    invoke-virtual {v8, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "language"

    .line 415
    iget-object v6, p1, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources$Resource;->language:Ljava/lang/String;

    invoke-virtual {v8, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "dynamic_resources_manager"

    .line 416
    invoke-virtual {v4, v5, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 418
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 425
    :try_start_2
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 427
    sget-object v1, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources;->TAG:Ljava/lang/String;

    invoke-static {v1, v3, v0, p1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    :goto_1
    return v1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception v1

    .line 421
    :try_start_3
    sget-object v5, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IO error occurred while trying to access db to save a resource "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, v3, p1, v1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 425
    :try_start_4
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 427
    sget-object v1, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources;->TAG:Ljava/lang/String;

    invoke-static {v1, v3, v0, p1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return v2

    .line 425
    :goto_3
    :try_start_5
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    :catch_3
    move-exception v1

    .line 427
    sget-object v2, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources;->TAG:Ljava/lang/String;

    invoke-static {v2, v3, v0, v1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 430
    :goto_4
    throw p1

    :catch_4
    move-exception p1

    .line 386
    sget-object v0, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot open database "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources;->getDatabaseName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v3, p1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    return v2
.end method


# virtual methods
.method protected getCreateTablesStatements()[Ljava/lang/String;
    .locals 1

    .line 261
    sget-object v0, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources;->SQL_CREATE_STATEMENTS:[Ljava/lang/String;

    return-object v0
.end method

.method protected getDatabaseName()Ljava/lang/String;
    .locals 1

    const-string v0, "nwstd.resources.db"

    return-object v0
.end method

.method protected getDatabaseVersion()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getDropTablesStatements()[Ljava/lang/String;
    .locals 1

    .line 271
    sget-object v0, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources;->SQL_DROP_STATEMENTS:[Ljava/lang/String;

    return-object v0
.end method

.method protected getMigrateTablesStatements()[[Ljava/lang/String;
    .locals 1

    .line 266
    sget-object v0, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources;->SQL_MIGRATION_STATEMENTS:[[Ljava/lang/String;

    return-object v0
.end method

.method public insertResource(Lcom/amazon/nwstd/persistence/resources/DBDynamicResources$Resource;)Z
    .locals 1

    .line 368
    invoke-direct {p0, p1}, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources;->insertResourceInternal(Lcom/amazon/nwstd/persistence/resources/DBDynamicResources$Resource;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string v0, "DynamicRepositoryDBSaveFailure"

    .line 370
    invoke-virtual {p0, v0}, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources;->reportOperationalMetric(Ljava/lang/String;)V

    :cond_0
    return p1
.end method

.method public loadAllResources()Ljava/util/List;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/nwstd/persistence/resources/DBDynamicResources$Resource;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v2, "Exception ending resources load transaction"

    .line 290
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 293
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/16 v7, 0x10

    .line 295
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/nwstd/persistence/DBLocalStorage;->openDB()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v8, v0

    .line 297
    sget-object v0, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot open database "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources;->getDatabaseName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v7, v8}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x1

    .line 301
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/nwstd/persistence/DBLocalStorage;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    if-nez v8, :cond_0

    .line 303
    sget-object v0, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Database "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources;->getDatabaseName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " open has failed."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v7, v2}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 305
    sget-object v5, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_1
    const/4 v6, 0x1

    goto/16 :goto_3

    :cond_0
    const/4 v9, 0x0

    .line 310
    :try_start_1
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v10, "SELECT dynamic_resources_manager.parent_ASIN , dynamic_resources_manager.language , dynamic_resources.timestamp , dynamic_resources.target_type , dynamic_resources.origin_type , dynamic_resources_objects.reference FROM dynamic_resources INNER JOIN dynamic_resources_manager ON dynamic_resources.resource_id  = dynamic_resources_manager.resource_id INNER JOIN dynamic_resources_objects ON dynamic_resources.object_id = dynamic_resources_objects.object_id"

    .line 311
    invoke-virtual {v8, v10, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    const-string/jumbo v10, "parent_ASIN"

    .line 312
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    const-string v11, "language"

    .line 313
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    const-string/jumbo v12, "timestamp"

    .line 314
    invoke-interface {v9, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string/jumbo v13, "target_type"

    .line 315
    invoke-interface {v9, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    const-string/jumbo v14, "origin_type"

    .line 316
    invoke-interface {v9, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    const-string/jumbo v15, "reference"

    .line 317
    invoke-interface {v9, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 319
    :goto_2
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v16

    if-eqz v16, :cond_1

    .line 320
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 321
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 322
    invoke-interface {v9, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 323
    invoke-interface {v9, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 324
    invoke-interface {v9, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 325
    invoke-interface {v9, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 327
    new-instance v6, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources$Resource;

    move-object/from16 v17, v6

    invoke-direct/range {v17 .. v23}, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources$Resource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 329
    :cond_1
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v9, :cond_2

    .line 335
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 338
    :cond_2
    :try_start_2
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2

    move v6, v0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v3, v0

    goto :goto_5

    :catch_1
    move-exception v0

    .line 331
    :try_start_3
    sget-object v6, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot load all resources, SQL exception : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v7, v0}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v9, :cond_3

    .line 335
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 338
    :cond_3
    :try_start_4
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_1

    :catch_2
    move-exception v0

    move-object v5, v0

    .line 340
    sget-object v0, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources;->TAG:Ljava/lang/String;

    invoke-static {v0, v7, v2, v5}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 342
    sget-object v5, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto/16 :goto_1

    .line 347
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    if-eqz v6, :cond_4

    const-string v0, "DynamicRepositoryDBLoadFailure"

    .line 350
    invoke-virtual {v1, v0}, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources;->reportOperationalMetric(Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    const-string v0, "DynamicRepositoryDBLoadSuccess"

    .line 353
    invoke-virtual {v1, v0}, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources;->reportOperationalMetric(Ljava/lang/String;)V

    :goto_4
    sub-long/2addr v7, v3

    const-string v0, "DynamicRepositoryDBLoadDuration"

    .line 357
    invoke-virtual {v1, v0, v7, v8}, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources;->reportOperationalTimerMetric(Ljava/lang/String;J)V

    return-object v5

    :goto_5
    if-eqz v9, :cond_5

    .line 335
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 338
    :cond_5
    :try_start_5
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_6

    :catch_3
    move-exception v0

    move-object v4, v0

    .line 340
    sget-object v0, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources;->TAG:Ljava/lang/String;

    invoke-static {v0, v7, v2, v4}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 342
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 344
    :goto_6
    throw v3
.end method

.method public loadLocalBookState(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;)Lcom/amazon/kindle/model/content/LocalBookState;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public removeResource(Lcom/amazon/nwstd/persistence/resources/DBDynamicResources$Resource;)Z
    .locals 17

    move-object/from16 v1, p1

    const-string/jumbo v0, "resource_id = ?"

    const-string v2, "Exception ending resource removal transaction"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 440
    :goto_0
    invoke-static {v5}, Lcom/amazon/nwstd/utils/Assertion;->Assert(Z)V

    const/16 v5, 0x10

    .line 442
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/nwstd/persistence/DBLocalStorage;->openDB()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7

    .line 448
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/nwstd/persistence/DBLocalStorage;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    if-nez v6, :cond_1

    .line 450
    sget-object v0, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Database "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources;->getDatabaseName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " open has failed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v5, v1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    return v4

    :cond_1
    const/4 v7, 0x0

    .line 458
    :try_start_1
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 463
    iget-object v8, v1, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources$Resource;->targetType:Ljava/lang/String;

    const/4 v9, 0x4

    const/4 v10, 0x2

    const/4 v11, 0x3

    if-eqz v8, :cond_2

    iget-object v8, v1, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources$Resource;->targetOrigin:Ljava/lang/String;

    if-eqz v8, :cond_2

    iget-object v8, v1, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources$Resource;->parentASIN:Ljava/lang/String;

    if-eqz v8, :cond_2

    iget-object v8, v1, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources$Resource;->reference:Ljava/lang/String;

    if-eqz v8, :cond_2

    const-string v8, "SELECT dynamic_resources_manager.resource_id , dynamic_resources.object_id FROM dynamic_resources INNER JOIN dynamic_resources_manager ON dynamic_resources.resource_id  = dynamic_resources_manager.resource_id INNER JOIN dynamic_resources_objects ON dynamic_resources.object_id = dynamic_resources_objects.object_id WHERE dynamic_resources_manager.parent_ASIN = ? AND dynamic_resources.target_type = ? AND dynamic_resources.origin_type = ? AND dynamic_resources_objects.reference = ?"

    new-array v9, v9, [Ljava/lang/String;

    .line 465
    iget-object v12, v1, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources$Resource;->parentASIN:Ljava/lang/String;

    aput-object v12, v9, v4

    iget-object v12, v1, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources$Resource;->targetType:Ljava/lang/String;

    aput-object v12, v9, v3

    iget-object v12, v1, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources$Resource;->targetOrigin:Ljava/lang/String;

    aput-object v12, v9, v10

    iget-object v10, v1, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources$Resource;->reference:Ljava/lang/String;

    aput-object v10, v9, v11

    goto :goto_1

    .line 466
    :cond_2
    iget-object v8, v1, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources$Resource;->targetType:Ljava/lang/String;

    if-eqz v8, :cond_3

    iget-object v8, v1, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources$Resource;->targetOrigin:Ljava/lang/String;

    if-eqz v8, :cond_3

    iget-object v8, v1, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources$Resource;->language:Ljava/lang/String;

    if-eqz v8, :cond_3

    iget-object v8, v1, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources$Resource;->reference:Ljava/lang/String;

    if-eqz v8, :cond_3

    const-string v8, "SELECT dynamic_resources_manager.resource_id , dynamic_resources.object_id FROM dynamic_resources INNER JOIN dynamic_resources_manager ON dynamic_resources.resource_id  = dynamic_resources_manager.resource_id INNER JOIN dynamic_resources_objects ON dynamic_resources.object_id = dynamic_resources_objects.object_id WHERE dynamic_resources_manager.language = ? AND dynamic_resources.target_type = ? AND dynamic_resources.origin_type = ? AND dynamic_resources_objects.reference = ?"

    new-array v9, v9, [Ljava/lang/String;

    .line 468
    iget-object v12, v1, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources$Resource;->language:Ljava/lang/String;

    aput-object v12, v9, v4

    iget-object v12, v1, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources$Resource;->targetType:Ljava/lang/String;

    aput-object v12, v9, v3

    iget-object v12, v1, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources$Resource;->targetOrigin:Ljava/lang/String;

    aput-object v12, v9, v10

    iget-object v10, v1, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources$Resource;->reference:Ljava/lang/String;

    aput-object v10, v9, v11

    goto :goto_1

    .line 469
    :cond_3
    iget-object v8, v1, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources$Resource;->targetType:Ljava/lang/String;

    if-eqz v8, :cond_4

    iget-object v8, v1, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources$Resource;->targetOrigin:Ljava/lang/String;

    if-eqz v8, :cond_4

    iget-object v8, v1, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources$Resource;->reference:Ljava/lang/String;

    if-eqz v8, :cond_4

    const-string v8, "SELECT dynamic_resources_manager.resource_id , dynamic_resources.object_id FROM dynamic_resources INNER JOIN dynamic_resources_manager ON dynamic_resources.resource_id  = dynamic_resources_manager.resource_id INNER JOIN dynamic_resources_objects ON dynamic_resources.object_id = dynamic_resources_objects.object_id WHERE dynamic_resources.target_type = ? AND dynamic_resources.origin_type = ? AND dynamic_resources_objects.reference = ?"

    new-array v9, v11, [Ljava/lang/String;

    .line 471
    iget-object v11, v1, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources$Resource;->targetType:Ljava/lang/String;

    aput-object v11, v9, v4

    iget-object v11, v1, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources$Resource;->targetOrigin:Ljava/lang/String;

    aput-object v11, v9, v3

    iget-object v11, v1, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources$Resource;->reference:Ljava/lang/String;

    aput-object v11, v9, v10

    goto :goto_1

    :cond_4
    move-object v8, v7

    move-object v9, v8

    :goto_1
    if-eqz v8, :cond_8

    if-eqz v9, :cond_8

    .line 477
    invoke-virtual {v6, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    const-string/jumbo v8, "resource_id"

    .line 478
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string v9, "object_id"

    .line 479
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 482
    :goto_2
    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 483
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 484
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    const-string v5, "dynamic_resources_objects"

    const-string v4, "object_id = ?"
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v16, v7

    :try_start_4
    new-array v7, v3, [Ljava/lang/String;

    .line 487
    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v7, v13

    invoke-virtual {v6, v5, v4, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    add-int/2addr v4, v13

    const-string v5, "dynamic_resources"

    new-array v7, v3, [Ljava/lang/String;

    .line 488
    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v7, v13

    invoke-virtual {v6, v5, v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    const-string v5, "dynamic_resources_manager"

    new-array v7, v3, [Ljava/lang/String;

    .line 489
    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v7, v13

    invoke-virtual {v6, v5, v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    if-lez v4, :cond_5

    const/4 v11, 0x1

    :cond_5
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v7, v16

    const/4 v4, 0x0

    const/16 v5, 0x10

    goto :goto_2

    :cond_6
    move-object/from16 v16, v7

    if-le v10, v3, :cond_7

    .line 496
    sget-object v0, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources;->TAG:Ljava/lang/String;

    const/16 v3, 0x8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Multiple rows ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") correspond to resource "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object/from16 v7, v16

    goto/16 :goto_a

    :catch_0
    move-exception v0

    move-object/from16 v7, v16

    goto :goto_7

    :cond_7
    :goto_3
    move-object/from16 v7, v16

    goto :goto_4

    :catch_1
    move-exception v0

    move-object/from16 v16, v7

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object/from16 v16, v7

    goto :goto_5

    :catch_2
    move-exception v0

    move-object/from16 v16, v7

    goto :goto_6

    .line 499
    :cond_8
    :try_start_5
    sget-object v0, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot remove invalid dynamic resource : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v0, v4, v3}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    const/4 v11, 0x0

    .line 501
    :goto_4
    :try_start_6
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v7, :cond_9

    .line 506
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 509
    :cond_9
    :try_start_7
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_8

    :catch_3
    move-exception v0

    goto :goto_7

    :catchall_2
    move-exception v0

    :goto_5
    move-object v1, v0

    goto :goto_a

    :catch_4
    move-exception v0

    :goto_6
    const/4 v11, 0x0

    .line 503
    :goto_7
    :try_start_8
    sget-object v3, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error while removing resource ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "], exception : "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v3, v1, v0}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v7, :cond_a

    .line 506
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 509
    :cond_a
    :try_start_9
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_5

    :goto_8
    move v4, v11

    goto :goto_9

    :catch_5
    move-exception v0

    move-object v1, v0

    .line 511
    sget-object v0, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources;->TAG:Ljava/lang/String;

    const/16 v3, 0x10

    invoke-static {v0, v3, v2, v1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    const/4 v4, 0x0

    :goto_9
    return v4

    :goto_a
    if-eqz v7, :cond_b

    .line 506
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 509
    :cond_b
    :try_start_a
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_b

    :catch_6
    move-exception v0

    move-object v3, v0

    .line 511
    sget-object v0, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources;->TAG:Ljava/lang/String;

    const/16 v4, 0x10

    invoke-static {v0, v4, v2, v3}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 514
    :goto_b
    throw v1

    :catch_7
    move-exception v0

    move-object v1, v0

    .line 444
    sget-object v0, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot open database "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/amazon/nwstd/persistence/resources/DBDynamicResources;->getDatabaseName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v0, v2, v1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v1, 0x0

    return v1
.end method

.method protected reportOperationalMetric(Ljava/lang/String;)V
    .locals 2

    .line 622
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "NewsstandContentExplorer"

    invoke-virtual {v0, v1, p1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected reportOperationalTimerMetric(Ljava/lang/String;J)V
    .locals 6

    .line 631
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    sget-object v3, Lcom/amazon/kindle/services/metrics/MetricType;->INFO:Lcom/amazon/kindle/services/metrics/MetricType;

    const-string v1, "NewsstandContentExplorerTimer"

    move-object v2, p1

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportTimerMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/services/metrics/MetricType;J)V

    return-void
.end method

.method public save(Lcom/amazon/kindle/model/content/LocalBookState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method
