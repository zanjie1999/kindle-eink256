.class public final Lcom/amazon/kcp/home/database/HomeDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "HomeDatabase.kt"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "home_feed.db"

    const/4 v1, 0x0

    const/4 v2, 0x3

    .line 323
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method private final createTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6

    const-string v0, "event"

    const-string/jumbo v1, "timestamp"

    const-string/jumbo v2, "zone_name"

    const-string v3, "card_id"

    .line 339
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 341
    :try_start_0
    new-instance v4, Lcom/amazon/kcp/home/util/CreateTableBuilder;

    const-string v5, "config"

    invoke-direct {v4, v5}, Lcom/amazon/kcp/home/util/CreateTableBuilder;-><init>(Ljava/lang/String;)V

    .line 342
    invoke-virtual {v4, v1}, Lcom/amazon/kcp/home/util/CreateTableBuilder;->addIntegerColumn(Ljava/lang/String;)Lcom/amazon/kcp/home/util/CreateTableBuilder;

    const-string v5, "expiry_time"

    .line 343
    invoke-virtual {v4, v5}, Lcom/amazon/kcp/home/util/CreateTableBuilder;->addIntegerColumn(Ljava/lang/String;)Lcom/amazon/kcp/home/util/CreateTableBuilder;

    .line 344
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/amazon/kcp/home/util/CreateTableBuilder;->setPrimaryKeys([Ljava/lang/String;)Lcom/amazon/kcp/home/util/CreateTableBuilder;

    .line 345
    invoke-virtual {v4}, Lcom/amazon/kcp/home/util/CreateTableBuilder;->build()Ljava/lang/String;

    move-result-object v1

    .line 341
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 346
    new-instance v1, Lcom/amazon/kcp/home/util/CreateTableBuilder;

    const-string v4, "cards"

    invoke-direct {v1, v4}, Lcom/amazon/kcp/home/util/CreateTableBuilder;-><init>(Ljava/lang/String;)V

    .line 347
    invoke-virtual {v1, v3}, Lcom/amazon/kcp/home/util/CreateTableBuilder;->addTextColumn(Ljava/lang/String;)Lcom/amazon/kcp/home/util/CreateTableBuilder;

    const-string/jumbo v4, "template_id"

    .line 348
    invoke-virtual {v1, v4}, Lcom/amazon/kcp/home/util/CreateTableBuilder;->addTextColumn(Ljava/lang/String;)Lcom/amazon/kcp/home/util/CreateTableBuilder;

    const-string/jumbo v4, "reftag"

    .line 349
    invoke-virtual {v1, v4}, Lcom/amazon/kcp/home/util/CreateTableBuilder;->addTextColumn(Ljava/lang/String;)Lcom/amazon/kcp/home/util/CreateTableBuilder;

    const-string/jumbo v4, "weight"

    .line 350
    invoke-virtual {v1, v4}, Lcom/amazon/kcp/home/util/CreateTableBuilder;->addIntegerColumn(Ljava/lang/String;)Lcom/amazon/kcp/home/util/CreateTableBuilder;

    const-string/jumbo v4, "pinned"

    .line 351
    invoke-virtual {v1, v4}, Lcom/amazon/kcp/home/util/CreateTableBuilder;->addBooleanColumn(Ljava/lang/String;)Lcom/amazon/kcp/home/util/CreateTableBuilder;

    const-string/jumbo v4, "retail_session_id"

    .line 352
    invoke-virtual {v1, v4}, Lcom/amazon/kcp/home/util/CreateTableBuilder;->addTextColumn(Ljava/lang/String;)Lcom/amazon/kcp/home/util/CreateTableBuilder;

    const-string v4, "link_params"

    .line 353
    invoke-virtual {v1, v4}, Lcom/amazon/kcp/home/util/CreateTableBuilder;->addTextColumn(Ljava/lang/String;)Lcom/amazon/kcp/home/util/CreateTableBuilder;

    const-string/jumbo v4, "sidekick_metadata"

    .line 354
    invoke-virtual {v1, v4}, Lcom/amazon/kcp/home/util/CreateTableBuilder;->addTextColumn(Ljava/lang/String;)Lcom/amazon/kcp/home/util/CreateTableBuilder;

    .line 355
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amazon/kcp/home/util/CreateTableBuilder;->setPrimaryKeys([Ljava/lang/String;)Lcom/amazon/kcp/home/util/CreateTableBuilder;

    .line 356
    invoke-virtual {v1}, Lcom/amazon/kcp/home/util/CreateTableBuilder;->build()Ljava/lang/String;

    move-result-object v1

    .line 346
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 357
    new-instance v1, Lcom/amazon/kcp/home/util/CreateTableBuilder;

    const-string/jumbo v4, "zones"

    invoke-direct {v1, v4}, Lcom/amazon/kcp/home/util/CreateTableBuilder;-><init>(Ljava/lang/String;)V

    .line 358
    invoke-virtual {v1, v3}, Lcom/amazon/kcp/home/util/CreateTableBuilder;->addTextColumn(Ljava/lang/String;)Lcom/amazon/kcp/home/util/CreateTableBuilder;

    .line 359
    invoke-virtual {v1, v2}, Lcom/amazon/kcp/home/util/CreateTableBuilder;->addTextColumn(Ljava/lang/String;)Lcom/amazon/kcp/home/util/CreateTableBuilder;

    const-string v4, "asin"

    .line 360
    invoke-virtual {v1, v4}, Lcom/amazon/kcp/home/util/CreateTableBuilder;->addNullableTextColumn(Ljava/lang/String;)Lcom/amazon/kcp/home/util/CreateTableBuilder;

    const-string v4, "data"

    .line 361
    invoke-virtual {v1, v4}, Lcom/amazon/kcp/home/util/CreateTableBuilder;->addTextColumn(Ljava/lang/String;)Lcom/amazon/kcp/home/util/CreateTableBuilder;

    const-string/jumbo v4, "position"

    .line 362
    invoke-virtual {v1, v4}, Lcom/amazon/kcp/home/util/CreateTableBuilder;->addIntegerColumn(Ljava/lang/String;)Lcom/amazon/kcp/home/util/CreateTableBuilder;

    .line 363
    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amazon/kcp/home/util/CreateTableBuilder;->setPrimaryKeys([Ljava/lang/String;)Lcom/amazon/kcp/home/util/CreateTableBuilder;

    .line 364
    invoke-virtual {v1}, Lcom/amazon/kcp/home/util/CreateTableBuilder;->build()Ljava/lang/String;

    move-result-object v1

    .line 357
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 365
    new-instance v1, Lcom/amazon/kcp/home/util/CreateTableBuilder;

    const-string v4, "actions"

    invoke-direct {v1, v4}, Lcom/amazon/kcp/home/util/CreateTableBuilder;-><init>(Ljava/lang/String;)V

    .line 366
    invoke-virtual {v1, v3}, Lcom/amazon/kcp/home/util/CreateTableBuilder;->addTextColumn(Ljava/lang/String;)Lcom/amazon/kcp/home/util/CreateTableBuilder;

    .line 367
    invoke-virtual {v1, v2}, Lcom/amazon/kcp/home/util/CreateTableBuilder;->addTextColumn(Ljava/lang/String;)Lcom/amazon/kcp/home/util/CreateTableBuilder;

    .line 368
    invoke-virtual {v1, v0}, Lcom/amazon/kcp/home/util/CreateTableBuilder;->addTextColumn(Ljava/lang/String;)Lcom/amazon/kcp/home/util/CreateTableBuilder;

    const-string v4, "action"

    .line 369
    invoke-virtual {v1, v4}, Lcom/amazon/kcp/home/util/CreateTableBuilder;->addTextColumn(Ljava/lang/String;)Lcom/amazon/kcp/home/util/CreateTableBuilder;

    const-string v4, "args"

    .line 370
    invoke-virtual {v1, v4}, Lcom/amazon/kcp/home/util/CreateTableBuilder;->addNullableTextColumn(Ljava/lang/String;)Lcom/amazon/kcp/home/util/CreateTableBuilder;

    .line 371
    filled-new-array {v3, v2, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amazon/kcp/home/util/CreateTableBuilder;->setPrimaryKeys([Ljava/lang/String;)Lcom/amazon/kcp/home/util/CreateTableBuilder;

    .line 372
    invoke-virtual {v1}, Lcom/amazon/kcp/home/util/CreateTableBuilder;->build()Ljava/lang/String;

    move-result-object v0

    .line 365
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 373
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 375
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method private final deleteTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 399
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    const-string v0, "DROP TABLE IF EXISTS config"

    .line 401
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS cards"

    .line 402
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS zones"

    .line 403
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS actions"

    .line 404
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 405
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 407
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method


# virtual methods
.method public final clearTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    const-string v0, "db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 383
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    const-string v0, "config"

    const/4 v1, 0x0

    .line 385
    invoke-virtual {p1, v0, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v0, "cards"

    .line 386
    invoke-virtual {p1, v0, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string/jumbo v0, "zones"

    .line 387
    invoke-virtual {p1, v0, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v0, "actions"

    .line 388
    invoke-virtual {p1, v0, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 389
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 326
    invoke-direct {p0, p1}, Lcom/amazon/kcp/home/database/HomeDatabaseHelper;->createTables(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    const-string p2, "db"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 331
    invoke-direct {p0, p1}, Lcom/amazon/kcp/home/database/HomeDatabaseHelper;->deleteTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 332
    invoke-direct {p0, p1}, Lcom/amazon/kcp/home/database/HomeDatabaseHelper;->createTables(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
