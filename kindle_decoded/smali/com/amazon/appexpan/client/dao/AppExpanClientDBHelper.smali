.class public Lcom/amazon/appexpan/client/dao/AppExpanClientDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "AppExpanClientDBHelper.java"


# static fields
.field private static final COMMA:Ljava/lang/String; = ","

.field private static final CREATE_INDEX_RESOURCE_DOWNLOAD_ID:Ljava/lang/String; = "CREATE INDEX IF NOT EXISTS I_RESOURCE_DOWNLOAD_ID ON resources (download_id)"

.field private static final CREATE_INDEX_RESOURCE_SET_STATE:Ljava/lang/String; = "CREATE INDEX IF NOT EXISTS I_RESOURCE_SET_STATE ON resource_sets (state)"

.field private static final CREATE_INDEX_RESOURCE_STATE:Ljava/lang/String; = "CREATE INDEX IF NOT EXISTS I_RESOURCE_STATE ON resources (state)"

.field private static final CREATE_RESOURCES_STATEMENT:Ljava/lang/String;

.field private static final CREATE_RESOURCE_SETS_STATEMENT:Ljava/lang/String;

.field private static final CREATE_RESOURCE_SET_TO_RESOURCE_STATEMENT:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS resource_set_to_resource_map (resource_set_name TEXT NOT NULL,resource_set_version INTEGER NOT NULL,resource_name TEXT NOT NULL,resource_version INTEGER NOT NULL,PRIMARY KEY(resource_set_name,resource_set_version,resource_name,resource_version),FOREIGN KEY(resource_name,resource_version ) REFERENCES resources(name,version))"

.field private static final DATABASE_NAME:Ljava/lang/String; = "appexpan.db"

.field private static final DEFAULT:Ljava/lang/String; = " DEFAULT "

.field private static final INTEGER:Ljava/lang/String; = " INTEGER"

.field private static final INVALID_ID:Ljava/lang/String; = " -1"

.field private static final NOT_NULL:Ljava/lang/String; = " NOT NULL"

.field private static final TAG:Ljava/lang/String;

.field private static final TEXT:Ljava/lang/String; = " TEXT"


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 19
    const-class v0, Lcom/amazon/appexpan/client/dao/AppExpanClientDBHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/appexpan/client/dao/AppExpanClientDBHelper;->TAG:Ljava/lang/String;

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE IF NOT EXISTS resource_sets (name TEXT NOT NULL,version INTEGER NOT NULL,state INTEGER NOT NULL DEFAULT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/appexpan/client/model/ResourceSetModel$State;->REMOTE:Lcom/amazon/appexpan/client/model/ResourceSetModel$State;

    .line 75
    invoke-virtual {v1}, Lcom/amazon/appexpan/client/model/ResourceSetModel$State;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "delivery_priority"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " INTEGER"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " DEFAULT "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/appexpan/client/model/ResourceSetModel$Priority;->DEFAULT:Lcom/amazon/appexpan/client/model/ResourceSetModel$Priority;

    .line 77
    invoke-virtual {v2}, Lcom/amazon/appexpan/client/model/ResourceSetModel$Priority;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "PRIMARY KEY("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "name"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "version"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "))"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/appexpan/client/dao/AppExpanClientDBHelper;->CREATE_RESOURCE_SETS_STATEMENT:Ljava/lang/String;

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CREATE TABLE IF NOT EXISTS resources (name TEXT NOT NULL,ref_name TEXT,version INTEGER NOT NULL,location TEXT NOT NULL,download_id INTEGER NOT NULL DEFAULT  -1,state INTEGER NOT NULL DEFAULT "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/amazon/appexpan/client/model/ResourceModel$State;->REMOTE:Lcom/amazon/appexpan/client/model/ResourceModel$State;

    .line 105
    invoke-virtual {v6}, Lcom/amazon/appexpan/client/model/ResourceModel$State;->getValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "download_retry"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " TEXT"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/appexpan/client/dao/AppExpanClientDBHelper;->CREATE_RESOURCES_STATEMENT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "appexpan.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 186
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method private createIndexForResourceSetTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    :try_start_0
    const-string v0, "CREATE INDEX IF NOT EXISTS I_RESOURCE_SET_STATE ON resource_sets (state)"

    .line 269
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 271
    sget-object p1, Lcom/amazon/appexpan/client/dao/AppExpanClientDBHelper;->TAG:Ljava/lang/String;

    const-string v0, "Created Index CREATE INDEX IF NOT EXISTS I_RESOURCE_SET_STATE ON resource_sets (state)"

    invoke-static {p1, v0}, Lcom/amazon/appexpan/client/AppExpanLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 275
    sget-object v0, Lcom/amazon/appexpan/client/dao/AppExpanClientDBHelper;->TAG:Ljava/lang/String;

    const-string v1, "Error in creating index for ResourceSet table"

    invoke-static {v0, v1, p1}, Lcom/amazon/appexpan/client/AppExpanLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private createIndexForResourceTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    :try_start_0
    const-string v0, "CREATE INDEX IF NOT EXISTS I_RESOURCE_DOWNLOAD_ID ON resources (download_id)"

    .line 249
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX IF NOT EXISTS I_RESOURCE_STATE ON resources (state)"

    .line 250
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 252
    sget-object p1, Lcom/amazon/appexpan/client/dao/AppExpanClientDBHelper;->TAG:Ljava/lang/String;

    const-string v0, "Created Index CREATE INDEX IF NOT EXISTS I_RESOURCE_DOWNLOAD_ID ON resources (download_id)"

    invoke-static {p1, v0}, Lcom/amazon/appexpan/client/AppExpanLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    sget-object p1, Lcom/amazon/appexpan/client/dao/AppExpanClientDBHelper;->TAG:Ljava/lang/String;

    const-string v0, "Created Index CREATE INDEX IF NOT EXISTS I_RESOURCE_STATE ON resources (state)"

    invoke-static {p1, v0}, Lcom/amazon/appexpan/client/AppExpanLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 257
    sget-object v0, Lcom/amazon/appexpan/client/dao/AppExpanClientDBHelper;->TAG:Ljava/lang/String;

    const-string v1, "Error in creating index for Resource table"

    invoke-static {v0, v1, p1}, Lcom/amazon/appexpan/client/AppExpanLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private createSchema(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .line 225
    sget-object v0, Lcom/amazon/appexpan/client/dao/AppExpanClientDBHelper;->TAG:Ljava/lang/String;

    const-string v1, "Creating database at version: 2"

    invoke-static {v0, v1}, Lcom/amazon/appexpan/client/AppExpanLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 229
    :try_start_0
    invoke-static {}, Lcom/amazon/appexpan/client/dao/AppExpanClientDBHelper;->getSqlCreateStatements()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 231
    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 233
    :cond_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 238
    throw v0
.end method

.method private static getSqlCreateStatements()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 313
    sget-object v1, Lcom/amazon/appexpan/client/dao/AppExpanClientDBHelper;->CREATE_RESOURCES_STATEMENT:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/appexpan/client/dao/AppExpanClientDBHelper;->CREATE_RESOURCE_SETS_STATEMENT:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-string v2, "CREATE TABLE IF NOT EXISTS resource_set_to_resource_map (resource_set_name TEXT NOT NULL,resource_set_version INTEGER NOT NULL,resource_name TEXT NOT NULL,resource_version INTEGER NOT NULL,PRIMARY KEY(resource_set_name,resource_set_version,resource_name,resource_version),FOREIGN KEY(resource_name,resource_version ) REFERENCES resources(name,version))"

    aput-object v2, v0, v1

    return-object v0
.end method

.method private upgradeToVersion2(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 287
    sget-object v0, Lcom/amazon/appexpan/client/dao/AppExpanClientDBHelper;->TAG:Ljava/lang/String;

    const-string v1, "Upgrading database to version 2..."

    invoke-static {v0, v1}, Lcom/amazon/appexpan/client/AppExpanLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 292
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ALTER TABLE resource_sets add column delivery_priority INTEGER DEFAULT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/appexpan/client/model/ResourceSetModel$Priority;->DEFAULT:Lcom/amazon/appexpan/client/model/ResourceSetModel$Priority;

    .line 294
    invoke-virtual {v1}, Lcom/amazon/appexpan/client/model/ResourceSetModel$Priority;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 295
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 297
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 298
    sget-object v0, Lcom/amazon/appexpan/client/dao/AppExpanClientDBHelper;->TAG:Ljava/lang/String;

    const-string v1, "Upgrade to version 2 successful"

    invoke-static {v0, v1}, Lcom/amazon/appexpan/client/AppExpanLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 303
    throw v0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 197
    sget-object v0, Lcom/amazon/appexpan/client/dao/AppExpanClientDBHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Lcom/amazon/appexpan/client/AppExpanLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-direct {p0, p1}, Lcom/amazon/appexpan/client/dao/AppExpanClientDBHelper;->createSchema(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 199
    invoke-direct {p0, p1}, Lcom/amazon/appexpan/client/dao/AppExpanClientDBHelper;->createIndexForResourceTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 200
    invoke-direct {p0, p1}, Lcom/amazon/appexpan/client/dao/AppExpanClientDBHelper;->createIndexForResourceSetTable(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    const/4 p3, 0x1

    if-eq p2, p3, :cond_0

    goto :goto_0

    .line 209
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/appexpan/client/dao/AppExpanClientDBHelper;->upgradeToVersion2(Landroid/database/sqlite/SQLiteDatabase;)V

    :goto_0
    return-void
.end method
