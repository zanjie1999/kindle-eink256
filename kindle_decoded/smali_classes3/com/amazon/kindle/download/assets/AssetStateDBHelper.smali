.class public Lcom/amazon/kindle/download/assets/AssetStateDBHelper;
.super Lcom/amazon/kindle/persistence/KindleDBHelper;
.source "AssetStateDBHelper.java"


# static fields
.field private static final DB_FILENAME:Ljava/lang/String; = "asset_state.db"

.field private static final ERROR_ASSETS_TABLE_NAME:Ljava/lang/String; = "ErrorAssets"

.field private static final TAG:Ljava/lang/String;

.field private static instance:Lcom/amazon/kindle/download/assets/AssetStateDBHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const-class v0, Lcom/amazon/kindle/download/assets/AssetStateDBHelper;

    invoke-static {v0}, Lcom/amazon/kindle/services/download/DownloadUtils;->getDownloadModuleTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/download/assets/AssetStateDBHelper;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 35
    sput-object v0, Lcom/amazon/kindle/download/assets/AssetStateDBHelper;->instance:Lcom/amazon/kindle/download/assets/AssetStateDBHelper;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "asset_state.db"

    const/16 v1, 0xd

    .line 47
    invoke-direct {p0, p1, v0, v1}, Lcom/amazon/kindle/persistence/KindleDBHelper;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method private static createAssetGroupsTableCommand()Ljava/lang/String;
    .locals 4

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE IF NOT EXISTS "

    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "AssetGroups"

    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "book_id"

    .line 142
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " TEXT PRIMARY KEY, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "content_type"

    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " TEXT NOT NULL, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "downloadPath"

    .line 144
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " TEXT, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mainContentFileName"

    .line 145
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "source"

    .line 146
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "revision"

    .line 147
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/download/assets/AssetField;->COL_ASSET_GROUPS_GROUP_CONTEXT:Lcom/amazon/kindle/download/assets/AssetField;

    .line 148
    invoke-virtual {v2}, Lcom/amazon/kindle/download/assets/AssetField;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "correlationId"

    .line 149
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "downloadStartTime"

    .line 150
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " INTEGER NOT NULL DEFAULT 0, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "requiredDownloadFinishTime"

    .line 151
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "optionalDownloadFinishTime"

    .line 152
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "deferredDownloadFinishTime"

    .line 153
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "requiredDownloadTotalBytes"

    .line 154
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "deferredDownloadTotalBytes"

    .line 155
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "optionalDownloadTotalBytes"

    .line 156
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "requiredDownloadWanBytes"

    .line 157
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "deferredDownloadWanBytes"

    .line 158
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "optionalDownloadWanBytes"

    .line 159
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "totalDownloadedBytes"

    .line 160
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "wanDownloadedBytes"

    .line 161
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "preferredDownloadFinishTime"

    .line 162
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "preferredDownloadTotalBytes"

    .line 163
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "preferredDownloadWanBytes"

    .line 164
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "excludedTransportMethods"

    .line 165
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "downloadCompleteEventWasSent"

    .line 166
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " INTEGER NOT NULL DEFAULT 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ");"

    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static createAssetsTableCommand()Ljava/lang/String;
    .locals 3

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE IF NOT EXISTS Assets(book_id TEXT NOT NULL, asset_id TEXT NOT NULL, url TEXT NOT NULL, authentication TEXT, authentication_type TEXT, total_size INTEGER NOT NULL, priority_id INTEGER, download_state INTEGER NOT NULL, asset_type TEXT, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/download/assets/AssetField;->COL_ASSETS_TYPE_CONTEXT:Lcom/amazon/kindle/download/assets/AssetField;

    .line 192
    invoke-virtual {v1}, Lcom/amazon/kindle/download/assets/AssetField;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " TEXT, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/download/assets/AssetField;->COL_ASSETS_FILENAME:Lcom/amazon/kindle/download/assets/AssetField;

    .line 194
    invoke-virtual {v2}, Lcom/amazon/kindle/download/assets/AssetField;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/download/assets/AssetField;->COL_ASSETS_SIDECARS:Lcom/amazon/kindle/download/assets/AssetField;

    .line 196
    invoke-virtual {v2}, Lcom/amazon/kindle/download/assets/AssetField;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " INTEGER NOT NULL DEFAULT 0, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/download/assets/AssetField;->COL_ASSETS_APNX_URL:Lcom/amazon/kindle/download/assets/AssetField;

    .line 198
    invoke-virtual {v2}, Lcom/amazon/kindle/download/assets/AssetField;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/download/assets/AssetField;->COL_ASSETS_MIME_TYPE:Lcom/amazon/kindle/download/assets/AssetField;

    .line 199
    invoke-virtual {v2}, Lcom/amazon/kindle/download/assets/AssetField;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/download/assets/AssetField;->COL_ASSETS_DELIVERY_TYPE:Lcom/amazon/kindle/download/assets/AssetField;

    .line 201
    invoke-virtual {v1}, Lcom/amazon/kindle/download/assets/AssetField;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " INTEGER NOT NULL DEFAULT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/services/download/AssetDeliveryType;->DYNAMIC:Lcom/amazon/kindle/services/download/AssetDeliveryType;

    .line 203
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", PRIMARY KEY ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "book_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "asset_id"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") FOREIGN KEY ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") REFERENCES "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "AssetGroups"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") ON DELETE CASCADE);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static createErrorAssetsTableCommand()Ljava/lang/String;
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS ErrorAssets(book_id TEXT NOT NULL, asset_id TEXT NOT NULL, error_id INTEGER NOT NULL, PRIMARY KEY (book_id, asset_id) FOREIGN KEY (book_id, asset_id) REFERENCES Assets(book_id, asset_id) ON DELETE CASCADE);"

    return-object v0
.end method

.method private static createIndexQueryForAssetStateTable()Ljava/lang/String;
    .locals 3

    .line 492
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE INDEX I_ASSET_STATE ON Assets ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/download/assets/AssetField;->DOWNLOAD_STATE:Lcom/amazon/kindle/download/assets/AssetField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 493
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createIndexForAssetStateTable() called, returning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/amazon/kindle/download/assets/AssetStateDBHelper;
    .locals 2

    const-class v0, Lcom/amazon/kindle/download/assets/AssetStateDBHelper;

    monitor-enter v0

    .line 39
    :try_start_0
    sget-object v1, Lcom/amazon/kindle/download/assets/AssetStateDBHelper;->instance:Lcom/amazon/kindle/download/assets/AssetStateDBHelper;

    if-nez v1, :cond_0

    .line 40
    new-instance v1, Lcom/amazon/kindle/download/assets/AssetStateDBHelper;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/download/assets/AssetStateDBHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/amazon/kindle/download/assets/AssetStateDBHelper;->instance:Lcom/amazon/kindle/download/assets/AssetStateDBHelper;

    .line 43
    :cond_0
    sget-object p0, Lcom/amazon/kindle/download/assets/AssetStateDBHelper;->instance:Lcom/amazon/kindle/download/assets/AssetStateDBHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private upgradeToVersion10(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 404
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/persistence/KindleDBHelper;->startTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 407
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ALTER TABLE Assets add column delivery_type INTEGER NOT NULL DEFAULT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/services/download/AssetDeliveryType;->DYNAMIC:Lcom/amazon/kindle/services/download/AssetDeliveryType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 409
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 410
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 412
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 413
    throw v0
.end method

.method private upgradeToVersion11(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 9

    .line 425
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/persistence/KindleDBHelper;->startTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    :try_start_0
    const-string v0, "SELECT * FROM AssetGroups LIMIT 1"

    const/4 v1, 0x0

    .line 427
    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 428
    invoke-interface {v0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    .line 434
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v7, v1, v3

    const-string v8, "preferredDownloadFinishTime"

    .line 435
    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    or-int/2addr v4, v8

    const-string v8, "preferredDownloadTotalBytes"

    .line 436
    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    or-int/2addr v5, v8

    const-string v8, "preferredDownloadWanBytes"

    .line 437
    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    or-int/2addr v6, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 440
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    if-nez v4, :cond_1

    const-string v0, "ALTER TABLE AssetGroups add column preferredDownloadFinishTime INTEGER NOT NULL DEFAULT 0"

    .line 445
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_1
    if-nez v5, :cond_2

    const-string v0, "ALTER TABLE AssetGroups add column preferredDownloadTotalBytes INTEGER NOT NULL DEFAULT 0"

    .line 451
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_2
    if-nez v6, :cond_3

    const-string v0, "ALTER TABLE AssetGroups add column preferredDownloadWanBytes INTEGER NOT NULL DEFAULT 0"

    .line 457
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 460
    :cond_3
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 462
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 463
    throw v0
.end method

.method private upgradeToVersion12(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 467
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/persistence/KindleDBHelper;->startTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    :try_start_0
    const-string v0, "ALTER TABLE AssetGroups add column excludedTransportMethods TEXT"

    .line 472
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 473
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 475
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 476
    throw v0
.end method

.method private upgradeToVersion13(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 480
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/persistence/KindleDBHelper;->startTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    :try_start_0
    const-string v0, "ALTER TABLE AssetGroups ADD COLUMN downloadCompleteEventWasSent INTEGER NOT NULL DEFAULT 0"

    .line 484
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 485
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 487
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 488
    throw v0
.end method

.method private upgradeToVersion2(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    const-string v0, " TEXT"

    .line 244
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/persistence/KindleDBHelper;->startTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 246
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ALTER TABLE AssetGroups add column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/download/assets/AssetField;->COL_ASSET_GROUPS_GROUP_CONTEXT:Lcom/amazon/kindle/download/assets/AssetField;

    invoke-virtual {v2}, Lcom/amazon/kindle/download/assets/AssetField;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 247
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ALTER TABLE Assets add column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/download/assets/AssetField;->COL_ASSETS_TYPE_CONTEXT:Lcom/amazon/kindle/download/assets/AssetField;

    invoke-virtual {v2}, Lcom/amazon/kindle/download/assets/AssetField;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 250
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 255
    throw v0
.end method

.method private upgradeToVersion3(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 259
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/persistence/KindleDBHelper;->startTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 261
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ALTER TABLE Assets add column "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/download/assets/AssetField;->COL_ASSETS_FILENAME:Lcom/amazon/kindle/download/assets/AssetField;

    invoke-virtual {v1}, Lcom/amazon/kindle/download/assets/AssetField;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " TEXT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 262
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 266
    throw v0
.end method

.method private upgradeToVersion4(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    const-string v0, " TEXT"

    const-string v1, "ALTER TABLE Assets add column "

    .line 270
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/persistence/KindleDBHelper;->startTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 272
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/amazon/kindle/download/assets/AssetField;->COL_ASSETS_SIDECARS:Lcom/amazon/kindle/download/assets/AssetField;

    .line 273
    invoke-virtual {v3}, Lcom/amazon/kindle/download/assets/AssetField;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " INTEGER NOT NULL DEFAULT 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 274
    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 276
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/amazon/kindle/download/assets/AssetField;->COL_ASSETS_APNX_URL:Lcom/amazon/kindle/download/assets/AssetField;

    .line 277
    invoke-virtual {v3}, Lcom/amazon/kindle/download/assets/AssetField;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 278
    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 280
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/download/assets/AssetField;->COL_ASSETS_MIME_TYPE:Lcom/amazon/kindle/download/assets/AssetField;

    .line 281
    invoke-virtual {v1}, Lcom/amazon/kindle/download/assets/AssetField;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 282
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 287
    throw v0
.end method

.method private upgradeToVersion5(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 291
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/persistence/KindleDBHelper;->startTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    :try_start_0
    const-string v0, "ALTER TABLE AssetGroups add column source TEXT"

    .line 295
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE AssetGroups add column downloadPath TEXT"

    .line 298
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE AssetGroups add column mainContentFileName TEXT"

    .line 301
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 302
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 305
    throw v0
.end method

.method private upgradeToVersion6(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 310
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/persistence/KindleDBHelper;->startTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    :try_start_0
    const-string v0, "ALTER TABLE AssetGroups add column correlationId TEXT"

    .line 314
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 315
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 318
    throw v0
.end method

.method private upgradeToVersion7(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 323
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/persistence/KindleDBHelper;->startTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    :try_start_0
    const-string v0, "ALTER TABLE AssetGroups add column downloadStartTime INTEGER NOT NULL DEFAULT 0"

    .line 327
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE AssetGroups add column requiredDownloadFinishTime INTEGER NOT NULL DEFAULT 0"

    .line 331
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE AssetGroups add column optionalDownloadFinishTime INTEGER NOT NULL DEFAULT 0"

    .line 334
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE AssetGroups add column deferredDownloadFinishTime INTEGER NOT NULL DEFAULT 0"

    .line 337
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE AssetGroups add column requiredDownloadTotalBytes INTEGER NOT NULL DEFAULT 0"

    .line 341
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE AssetGroups add column deferredDownloadTotalBytes INTEGER NOT NULL DEFAULT 0"

    .line 344
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE AssetGroups add column optionalDownloadTotalBytes INTEGER NOT NULL DEFAULT 0"

    .line 347
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE AssetGroups add column requiredDownloadWanBytes INTEGER NOT NULL DEFAULT 0"

    .line 351
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE AssetGroups add column deferredDownloadWanBytes INTEGER NOT NULL DEFAULT 0"

    .line 354
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE AssetGroups add column optionalDownloadWanBytes INTEGER NOT NULL DEFAULT 0"

    .line 357
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE AssetGroups add column totalDownloadedBytes INTEGER NOT NULL DEFAULT 0"

    .line 361
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE AssetGroups add column wanDownloadedBytes INTEGER NOT NULL DEFAULT 0"

    .line 364
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 365
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 367
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 368
    throw v0
.end method

.method private upgradeToVersion8(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 373
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/persistence/KindleDBHelper;->startTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 375
    :try_start_0
    invoke-static {}, Lcom/amazon/kindle/download/assets/AssetStateDBHelper;->createIndexQueryForAssetStateTable()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 376
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 378
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 379
    throw v0
.end method

.method private upgradeToVersion9(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 384
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/persistence/KindleDBHelper;->startTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    :try_start_0
    const-string v0, "ALTER TABLE AssetGroups add column preferredDownloadFinishTime INTEGER NOT NULL DEFAULT 0"

    .line 388
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE AssetGroups add column preferredDownloadTotalBytes INTEGER NOT NULL DEFAULT 0"

    .line 391
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE AssetGroups add column preferredDownloadWanBytes INTEGER NOT NULL DEFAULT 0"

    .line 394
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 396
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 398
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 399
    throw v0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 63
    invoke-static {}, Lcom/amazon/kindle/download/assets/AssetStateDBHelper;->createAssetGroupsTableCommand()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 64
    invoke-static {}, Lcom/amazon/kindle/download/assets/AssetStateDBHelper;->createAssetsTableCommand()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 65
    invoke-static {}, Lcom/amazon/kindle/download/assets/AssetStateDBHelper;->createErrorAssetsTableCommand()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 66
    invoke-static {}, Lcom/amazon/kindle/download/assets/AssetStateDBHelper;->createIndexQueryForAssetStateTable()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 52
    invoke-super {p0, p1}, Lcom/amazon/kindle/persistence/KindleDBHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    const-string v0, "PRAGMA foreign_keys = ON;"

    .line 55
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 82
    :pswitch_0
    sget-object p2, Lcom/amazon/kindle/download/assets/AssetStateDBHelper;->TAG:Ljava/lang/String;

    const-string p3, "Updating DB to version 2"

    invoke-static {p2, p3}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-direct {p0, p1}, Lcom/amazon/kindle/download/assets/AssetStateDBHelper;->upgradeToVersion2(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 85
    :pswitch_1
    sget-object p2, Lcom/amazon/kindle/download/assets/AssetStateDBHelper;->TAG:Ljava/lang/String;

    const-string p3, "Updating DB to version 3"

    invoke-static {p2, p3}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-direct {p0, p1}, Lcom/amazon/kindle/download/assets/AssetStateDBHelper;->upgradeToVersion3(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 88
    :pswitch_2
    sget-object p2, Lcom/amazon/kindle/download/assets/AssetStateDBHelper;->TAG:Ljava/lang/String;

    const-string p3, "Updating DB to version 4"

    invoke-static {p2, p3}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-direct {p0, p1}, Lcom/amazon/kindle/download/assets/AssetStateDBHelper;->upgradeToVersion4(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 91
    :pswitch_3
    sget-object p2, Lcom/amazon/kindle/download/assets/AssetStateDBHelper;->TAG:Ljava/lang/String;

    const-string p3, "Updating DB to version 5"

    invoke-static {p2, p3}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-direct {p0, p1}, Lcom/amazon/kindle/download/assets/AssetStateDBHelper;->upgradeToVersion5(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 94
    :pswitch_4
    sget-object p2, Lcom/amazon/kindle/download/assets/AssetStateDBHelper;->TAG:Ljava/lang/String;

    const-string p3, "Updating DB to version 6"

    invoke-static {p2, p3}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-direct {p0, p1}, Lcom/amazon/kindle/download/assets/AssetStateDBHelper;->upgradeToVersion6(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 97
    :pswitch_5
    sget-object p2, Lcom/amazon/kindle/download/assets/AssetStateDBHelper;->TAG:Ljava/lang/String;

    const-string p3, "Updating DB to version 7"

    invoke-static {p2, p3}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-direct {p0, p1}, Lcom/amazon/kindle/download/assets/AssetStateDBHelper;->upgradeToVersion7(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 100
    :pswitch_6
    sget-object p2, Lcom/amazon/kindle/download/assets/AssetStateDBHelper;->TAG:Ljava/lang/String;

    const-string p3, "Updating DB to version 8"

    invoke-static {p2, p3}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-direct {p0, p1}, Lcom/amazon/kindle/download/assets/AssetStateDBHelper;->upgradeToVersion8(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 103
    :pswitch_7
    sget-object p2, Lcom/amazon/kindle/download/assets/AssetStateDBHelper;->TAG:Ljava/lang/String;

    const-string p3, "Updating DB to version 9"

    invoke-static {p2, p3}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-direct {p0, p1}, Lcom/amazon/kindle/download/assets/AssetStateDBHelper;->upgradeToVersion9(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 106
    :pswitch_8
    sget-object p2, Lcom/amazon/kindle/download/assets/AssetStateDBHelper;->TAG:Ljava/lang/String;

    const-string p3, "Updating DB to version 10"

    invoke-static {p2, p3}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-direct {p0, p1}, Lcom/amazon/kindle/download/assets/AssetStateDBHelper;->upgradeToVersion10(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 109
    :pswitch_9
    sget-object p2, Lcom/amazon/kindle/download/assets/AssetStateDBHelper;->TAG:Ljava/lang/String;

    const-string p3, "Updating DB to version 11"

    invoke-static {p2, p3}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-direct {p0, p1}, Lcom/amazon/kindle/download/assets/AssetStateDBHelper;->upgradeToVersion11(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 112
    :pswitch_a
    sget-object p2, Lcom/amazon/kindle/download/assets/AssetStateDBHelper;->TAG:Ljava/lang/String;

    const-string p3, "Updating DB to version 12"

    invoke-static {p2, p3}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-direct {p0, p1}, Lcom/amazon/kindle/download/assets/AssetStateDBHelper;->upgradeToVersion12(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 115
    :pswitch_b
    sget-object p2, Lcom/amazon/kindle/download/assets/AssetStateDBHelper;->TAG:Ljava/lang/String;

    const-string p3, "Updating DB to version 13"

    invoke-static {p2, p3}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-direct {p0, p1}, Lcom/amazon/kindle/download/assets/AssetStateDBHelper;->upgradeToVersion13(Landroid/database/sqlite/SQLiteDatabase;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method
