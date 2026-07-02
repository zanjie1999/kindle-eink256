.class public Lcom/audible/mobile/stats/persistence/StatsDatabase$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "StatsDatabase.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "audible-stats.db"

    const/4 v1, 0x0

    const/16 v2, 0xb

    .line 40
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS StatsTable (_id INTEGER PRIMARY KEY, uuid TEXT, asin TEXT, asin_owned TEXT, event_type TEXT NOT NULL, event_timestamp DATETIME NOT NULL, event_end_timestamp DATETIME, local_timezone TEXT NOT NULL, playing_immersion_reading TEXT, narration_speed TEXT, length_of_book TEXT, delivery_type TEXT, listening_mode TEXT, content_discovery TEXT, subscription_id TEXT, store TEXT, event_start_position TEXT, event_end_position TEXT, customerId TEXT, marketplace_id TEXT, complete INTEGER, synced INTEGER, synced_timestamp DATETIME DEFAULT NULL);"

    .line 48
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS BadgeMetadataTable (_id INTEGER PRIMARY KEY ,badge_metadata_id TEXT, description TEXT, image_url TEXT, name TEXT, imagecache_file_name TEXT);"

    .line 75
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS LevelMetadataTable (_id INTEGER PRIMARY KEY ,badge_metadata_id TEXT, level_metadata_id TEXT, description TEXT, image_url TEXT, name TEXT, imagecache_file_name TEXT, brag_message TEXT NOT NULL DEFAULT \'\', brag_subject TEXT NOT NULL DEFAULT \'\');"

    .line 85
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS AggregatedTable (_id INTEGER PRIMARY KEY ,interval_identifier TEXT, aggregated_sum INTEGER, unit TEXT, aggregated_type TEXT);"

    .line 98
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS BadgeTable (_id INTEGER PRIMARY KEY ,badge_metadata_id TEXT, next_badge_level_metadata_id TEXT, percent_progress_to_next_level INTEGER, level_acquired_time DATETIME, level_metadata_id TEXT);"

    .line 107
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    const/4 p3, 0x7

    if-ge p2, p3, :cond_0

    const-string p3, "ALTER TABLE StatsTable ADD COLUMN complete INTEGER DEFAULT 1"

    .line 122
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    const/16 p3, 0x8

    if-ge p2, p3, :cond_1

    const-string p3, "ALTER TABLE StatsTable ADD COLUMN content_discovery TEXT"

    .line 126
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_1
    const/16 p3, 0x9

    if-ge p2, p3, :cond_2

    const-string p3, "ALTER TABLE StatsTable ADD COLUMN subscription_id TEXT"

    .line 130
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p3, "ALTER TABLE StatsTable ADD COLUMN store TEXT"

    .line 131
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_2
    const/16 p3, 0xa

    if-ge p2, p3, :cond_3

    const-string p3, "ALTER TABLE StatsTable ADD COLUMN event_start_position TEXT"

    .line 135
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p3, "ALTER TABLE StatsTable ADD COLUMN event_end_position TEXT"

    .line 136
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_3
    const/16 p3, 0xb

    if-ge p2, p3, :cond_4

    .line 140
    invoke-static {}, Lcom/audible/application/stats/storage/StatsCachedUploadPersistentRepository;->getCustomerId()Ljava/lang/String;

    move-result-object p2

    .line 141
    invoke-static {}, Lcom/audible/application/stats/storage/StatsCachedUploadPersistentRepository;->getMarketplaceId()Ljava/lang/String;

    move-result-object p3

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ALTER TABLE StatsTable ADD COLUMN customerId TEXT DEFAULT \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ALTER TABLE StatsTable ADD COLUMN marketplace_id TEXT DEFAULT \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 151
    :cond_4
    invoke-virtual {p0, p1}, Lcom/audible/mobile/stats/persistence/StatsDatabase$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
