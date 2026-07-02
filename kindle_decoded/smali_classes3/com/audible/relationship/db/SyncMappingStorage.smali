.class public final Lcom/audible/relationship/db/SyncMappingStorage;
.super Ljava/lang/Object;
.source "SyncMappingStorage.java"

# interfaces
.implements Lcom/audible/relationship/db/ISyncMappingStorage;


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

.field private static final WHERE_EBOOK_ASIN:Ljava/lang/String; = "e_asin = ?"

.field private static final WHERE_EBOOK_GUID_AND_ABOOK_ACR:Ljava/lang/String; = "e_guid = ? AND a_acr = ?"


# instance fields
.field private final sqLiteOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 48
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/relationship/db/SyncMappingStorage;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/relationship/db/SyncMappingStorage;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteOpenHelper;)V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "sqLiteOpenHelper can\'t be null."

    .line 63
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Landroid/database/sqlite/SQLiteOpenHelper;

    iput-object p1, p0, Lcom/audible/relationship/db/SyncMappingStorage;->sqLiteOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    return-void
.end method

.method private extractSyncMapping(Landroid/database/Cursor;)Lcom/audible/relationship/domain/SyncMapping;
    .locals 5

    .line 177
    new-instance v0, Lcom/audible/mobile/domain/ImmutableGUIDImpl;

    const-string v1, "e_guid"

    invoke-static {p1, v1}, Lcom/audible/relationship/db/DbUtils;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/audible/mobile/util/StringUtils;->defaultIfBlank(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/audible/mobile/domain/ImmutableGUIDImpl;-><init>(Ljava/lang/String;)V

    const-string v1, "a_acr"

    .line 178
    invoke-static {p1, v1}, Lcom/audible/relationship/db/DbUtils;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/audible/mobile/domain/ImmutableACRImpl;->nullSafeFactory(Ljava/lang/String;)Lcom/audible/mobile/domain/ACR;

    move-result-object v1

    const-string v2, "e_asin"

    .line 179
    invoke-static {p1, v2}, Lcom/audible/relationship/db/DbUtils;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/audible/mobile/domain/ImmutableAsinImpl;->nullSafeFactory(Ljava/lang/String;)Lcom/audible/mobile/domain/Asin;

    move-result-object v2

    const-string v3, "a_asin"

    .line 180
    invoke-static {p1, v3}, Lcom/audible/relationship/db/DbUtils;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/audible/mobile/domain/ImmutableAsinImpl;->nullSafeFactory(Ljava/lang/String;)Lcom/audible/mobile/domain/Asin;

    move-result-object v3

    const-string v4, "sync_file_acr"

    .line 181
    invoke-static {p1, v4}, Lcom/audible/relationship/db/DbUtils;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/audible/mobile/domain/ImmutableACRImpl;->nullSafeFactory(Ljava/lang/String;)Lcom/audible/mobile/domain/ACR;

    move-result-object p1

    .line 183
    invoke-static {}, Lcom/audible/relationship/domain/SyncMapping;->newBuilder()Lcom/audible/relationship/domain/SyncMapping$EBookStep;

    move-result-object v4

    invoke-interface {v4, v2, v0}, Lcom/audible/relationship/domain/SyncMapping$EBookStep;->eBook(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/GUID;)Lcom/audible/relationship/domain/SyncMapping$AudiobookStep;

    move-result-object v0

    invoke-interface {v0, v3, v1}, Lcom/audible/relationship/domain/SyncMapping$AudiobookStep;->audiobook(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/ACR;)Lcom/audible/relationship/domain/SyncMapping$SyncFileStep;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/audible/relationship/domain/SyncMapping$SyncFileStep;->syncFile(Lcom/audible/mobile/domain/ACR;)Lcom/audible/relationship/domain/SyncMapping;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public deleteAllSyncMappings()I
    .locals 4

    .line 162
    sget-object v0, Lcom/audible/relationship/db/SyncMappingStorage;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Deleting all Sync mappings from the database"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 164
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v0

    sget-object v1, Lcom/audible/relationship/metric/IMetricKeyValue$SyncMappingStorageTimerMetricKey;->SyncMappingStorage_DeleteAll_Timer:Lcom/audible/relationship/metric/IMetricKeyValue$SyncMappingStorageTimerMetricKey;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/metric/MetricManager;->startTimerMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;)V

    .line 166
    iget-object v0, p0, Lcom/audible/relationship/db/SyncMappingStorage;->sqLiteOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "sync_mapping"

    const-string v2, "1"

    const/4 v3, 0x0

    .line 167
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 169
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v1

    sget-object v2, Lcom/audible/relationship/metric/IMetricKeyValue$SyncMappingStorageTimerMetricKey;->SyncMappingStorage_DeleteAll_Timer:Lcom/audible/relationship/metric/IMetricKeyValue$SyncMappingStorageTimerMetricKey;

    invoke-virtual {v1, v2}, Lcom/audible/hushpuppy/common/metric/MetricManager;->stopTimerMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;)V

    return v0
.end method

.method public querySyncMapping(Lcom/audible/mobile/domain/GUID;Lcom/audible/mobile/domain/ACR;)Lcom/audible/relationship/domain/SyncMapping;
    .locals 10

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto/16 :goto_2

    .line 115
    :cond_0
    iget-object v1, p0, Lcom/audible/relationship/db/SyncMappingStorage;->sqLiteOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    :try_start_0
    const-string v3, "sync_mapping"

    const/4 v4, 0x0

    const-string v5, "e_guid = ? AND a_acr = ?"

    const/4 v1, 0x2

    new-array v6, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 120
    invoke-interface {p1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v6, v1

    const/4 p1, 0x1

    invoke-interface {p2}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v6, p1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_1

    .line 122
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 123
    invoke-direct {p0, p1}, Lcom/audible/relationship/db/SyncMappingStorage;->extractSyncMapping(Landroid/database/Cursor;)Lcom/audible/relationship/domain/SyncMapping;

    move-result-object v0

    .line 124
    sget-object p2, Lcom/audible/relationship/db/SyncMappingStorage;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Returned Sync Mapping, eBookAsin:audiobookAsin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/audible/relationship/domain/SyncMapping;->getEbookAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v2

    invoke-interface {v2}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {v0}, Lcom/audible/relationship/domain/SyncMapping;->getAudiobookAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v2

    invoke-interface {v2}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 124
    invoke-interface {p2, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 127
    :cond_1
    sget-object p2, Lcom/audible/relationship/db/SyncMappingStorage;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Failed to query Sync Mapping from database! Query was empty."

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    :goto_0
    invoke-static {p1}, Lcom/audible/relationship/db/DbUtils;->closeCursor(Landroid/database/Cursor;)V

    return-object v0

    :catchall_0
    move-exception p2

    move-object v0, p1

    goto :goto_1

    :catchall_1
    move-exception p2

    :goto_1
    invoke-static {v0}, Lcom/audible/relationship/db/DbUtils;->closeCursor(Landroid/database/Cursor;)V

    .line 131
    throw p2

    .line 111
    :cond_2
    :goto_2
    sget-object p1, Lcom/audible/relationship/db/SyncMappingStorage;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "Tried to query Sync Mapping but eBook GUID and/or audiobook ACR are null!"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    return-object v0
.end method

.method public saveSyncMapping(Lcom/audible/relationship/domain/SyncMapping;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 70
    sget-object p1, Lcom/audible/relationship/db/SyncMappingStorage;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Tried to save Sync Mapping but mapping is null!"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    .line 71
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object p1

    sget-object v1, Lcom/audible/relationship/metric/IMetricKeyValue$SyncMappingStorageMetricKey;->SyncMappingStorage_SaveMapping_NullMapping:Lcom/audible/relationship/metric/IMetricKeyValue$SyncMappingStorageMetricKey;

    sget-object v2, Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;->ERROR:Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;

    invoke-virtual {p1, v1, v2}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    return v0

    .line 75
    :cond_0
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v1

    sget-object v2, Lcom/audible/relationship/metric/IMetricKeyValue$SyncMappingStorageTimerMetricKey;->SyncMappingStorage_SaveMapping_Timer:Lcom/audible/relationship/metric/IMetricKeyValue$SyncMappingStorageTimerMetricKey;

    invoke-virtual {v1, v2}, Lcom/audible/hushpuppy/common/metric/MetricManager;->startTimerMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;)V

    .line 77
    iget-object v1, p0, Lcom/audible/relationship/db/SyncMappingStorage;->sqLiteOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 79
    :try_start_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 80
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "e_guid"

    .line 81
    invoke-virtual {p1}, Lcom/audible/relationship/domain/SyncMapping;->getEbookGuid()Lcom/audible/mobile/domain/GUID;

    move-result-object v4

    invoke-interface {v4}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "e_asin"

    .line 82
    invoke-virtual {p1}, Lcom/audible/relationship/domain/SyncMapping;->getEbookAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v4

    invoke-interface {v4}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "a_acr"

    .line 83
    invoke-virtual {p1}, Lcom/audible/relationship/domain/SyncMapping;->getAudiobookAcr()Lcom/audible/mobile/domain/ACR;

    move-result-object v4

    invoke-interface {v4}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "a_asin"

    .line 84
    invoke-virtual {p1}, Lcom/audible/relationship/domain/SyncMapping;->getAudiobookAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v4

    invoke-interface {v4}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "sync_file_acr"

    .line 85
    invoke-virtual {p1}, Lcom/audible/relationship/domain/SyncMapping;->getSyncFileAcr()Lcom/audible/mobile/domain/ACR;

    move-result-object v4

    invoke-interface {v4}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "sync_mapping"

    const/4 v4, 0x0

    const/4 v5, 0x5

    .line 87
    invoke-virtual {v1, v3, v4, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    .line 89
    sget-object p1, Lcom/audible/relationship/db/SyncMappingStorage;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "Failed to insert/update Sync Mapping in database"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    .line 90
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object p1

    sget-object v2, Lcom/audible/relationship/metric/IMetricKeyValue$SyncMappingStorageMetricKey;->SyncMappingStorage_SaveMapping_Status:Lcom/audible/relationship/metric/IMetricKeyValue$SyncMappingStorageMetricKey;

    sget-object v3, Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;->ERROR:Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;

    invoke-virtual {p1, v2, v3}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return v0

    .line 94
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 96
    sget-object v2, Lcom/audible/relationship/db/SyncMappingStorage;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Successfully to inserted/updated Sync Mapping in database : eBookAsin:audiobookAsin = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/audible/relationship/domain/SyncMapping;->getEbookAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v6

    invoke-interface {v6}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {p1}, Lcom/audible/relationship/domain/SyncMapping;->getAudiobookAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object p1

    invoke-interface {p1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v0

    .line 96
    invoke-interface {v2, v4}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    .line 98
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object p1

    sget-object v0, Lcom/audible/relationship/metric/IMetricKeyValue$SyncMappingStorageMetricKey;->SyncMappingStorage_SaveMapping_Status:Lcom/audible/relationship/metric/IMetricKeyValue$SyncMappingStorageMetricKey;

    sget-object v2, Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;->SUCCESS:Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;

    invoke-virtual {p1, v0, v2}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    .line 99
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object p1

    sget-object v0, Lcom/audible/relationship/metric/IMetricKeyValue$SyncMappingStorageTimerMetricKey;->SyncMappingStorage_SaveMapping_Timer:Lcom/audible/relationship/metric/IMetricKeyValue$SyncMappingStorageTimerMetricKey;

    invoke-virtual {p1, v0}, Lcom/audible/hushpuppy/common/metric/MetricManager;->stopTimerMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return v3

    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 103
    throw p1
.end method
