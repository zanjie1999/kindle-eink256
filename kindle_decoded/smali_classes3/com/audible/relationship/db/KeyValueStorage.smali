.class public final Lcom/audible/relationship/db/KeyValueStorage;
.super Ljava/lang/Object;
.source "KeyValueStorage.java"

# interfaces
.implements Lcom/audible/relationship/db/IKeyValueStorage;


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

.field private static final WHERE_KEY_IS:Ljava/lang/String; = "key = ?"


# instance fields
.field private final sqLiteOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/relationship/db/KeyValueStorage;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/relationship/db/KeyValueStorage;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteOpenHelper;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "sqLiteOpenHelper can\'t be null."

    .line 54
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 56
    iput-object p1, p0, Lcom/audible/relationship/db/KeyValueStorage;->sqLiteOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    return-void
.end method

.method private closeCursor(Landroid/database/Cursor;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 145
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void
.end method

.method private getValueForKey(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/String;
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    const-string v2, "key_value"

    const/4 v3, 0x0

    const-string v4, "key = ?"

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p2

    .line 159
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_1

    .line 160
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 161
    sget-object p2, Lcom/audible/relationship/db/KeyValueStorage;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Successfully got Value for Key."

    invoke-interface {p2, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 162
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object p2

    sget-object v0, Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageMetricKey;->KeyValueStorage_GetValue_Status:Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageMetricKey;

    sget-object v1, Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;->SUCCESS:Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;

    invoke-virtual {p2, v0, v1}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    const-string p2, "value"

    .line 163
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 166
    invoke-direct {p0, p1}, Lcom/audible/relationship/db/KeyValueStorage;->closeCursor(Landroid/database/Cursor;)V

    return-object p2

    :catchall_0
    move-exception p2

    move-object v0, p1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/audible/relationship/db/KeyValueStorage;->closeCursor(Landroid/database/Cursor;)V

    .line 169
    sget-object p1, Lcom/audible/relationship/db/KeyValueStorage;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "Failed to get Value for Key! Query likely came back empty."

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    .line 170
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object p1

    sget-object p2, Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageMetricKey;->KeyValueStorage_GetValue_Status:Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageMetricKey;

    sget-object v1, Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;->ERROR:Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;

    invoke-virtual {p1, p2, v1}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    return-object v0

    :catchall_1
    move-exception p2

    .line 166
    :goto_0
    invoke-direct {p0, v0}, Lcom/audible/relationship/db/KeyValueStorage;->closeCursor(Landroid/database/Cursor;)V

    .line 167
    throw p2

    .line 152
    :cond_2
    :goto_1
    sget-object p1, Lcom/audible/relationship/db/KeyValueStorage;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "Tried to get Value for Key but key and/or db are null!"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    .line 153
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object p1

    sget-object p2, Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageMetricKey;->KeyValueStorage_GetValue_NullKeyOrDb:Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageMetricKey;

    sget-object v1, Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;->ERROR:Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;

    invoke-virtual {p1, p2, v1}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    return-object v0
.end method

.method private setValueForKey(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    .line 183
    :cond_0
    :try_start_0
    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 184
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "key"

    .line 185
    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "value"

    .line 186
    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "key_value"

    const/4 v3, 0x0

    const/4 v4, 0x5

    .line 188
    invoke-virtual {p3, v2, v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    .line 190
    sget-object p1, Lcom/audible/relationship/db/KeyValueStorage;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "Failed to set Value for Key in database!"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    .line 191
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object p1

    sget-object p2, Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageMetricKey;->KeyValueStorage_SetValue_Status:Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageMetricKey;

    sget-object v1, Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;->ERROR:Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;

    invoke-virtual {p1, p2, v1}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return v0

    .line 195
    :cond_1
    :try_start_1
    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 196
    sget-object v0, Lcom/audible/relationship/db/KeyValueStorage;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Successfully set Value for Key: key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", value = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 197
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object p1

    sget-object p2, Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageMetricKey;->KeyValueStorage_SetValue_Status:Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageMetricKey;

    sget-object v0, Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;->SUCCESS:Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;

    invoke-virtual {p1, p2, v0}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    .line 200
    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 201
    throw p1

    .line 177
    :cond_2
    :goto_0
    sget-object p1, Lcom/audible/relationship/db/KeyValueStorage;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "Tried to set Value for Key but key, value, and/or db are null!"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    .line 178
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object p1

    sget-object p2, Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageMetricKey;->KeyValueStorage_SetValue_NullKeyValueOrDb:Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageMetricKey;

    sget-object p3, Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;->ERROR:Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;

    invoke-virtual {p1, p2, p3}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    return v0
.end method


# virtual methods
.method public delete(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 120
    sget-object p1, Lcom/audible/relationship/db/KeyValueStorage;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Tried to delete Key but key is null!"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    .line 121
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object p1

    sget-object v1, Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageMetricKey;->KeyValueStorage_DeleteKey_NullKey:Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageMetricKey;

    sget-object v2, Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;->ERROR:Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;

    invoke-virtual {p1, v1, v2}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    return v0

    .line 125
    :cond_0
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v1

    sget-object v2, Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageTimerMetricKey;->KeyValueStorage_DeleteKey_Timer:Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageTimerMetricKey;

    invoke-virtual {v1, v2}, Lcom/audible/hushpuppy/common/metric/MetricManager;->startTimerMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;)V

    .line 127
    iget-object v1, p0, Lcom/audible/relationship/db/KeyValueStorage;->sqLiteOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    aput-object p1, v3, v0

    const-string p1, "key_value"

    const-string v4, "key = ?"

    .line 128
    invoke-virtual {v1, p1, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-ne p1, v2, :cond_1

    .line 131
    sget-object p1, Lcom/audible/relationship/db/KeyValueStorage;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Successfully deleted Key from database."

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 132
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object p1

    sget-object v0, Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageMetricKey;->KeyValueStorage_DeleteKey_Status:Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageMetricKey;

    sget-object v1, Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;->SUCCESS:Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;

    invoke-virtual {p1, v0, v1}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    .line 133
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object p1

    sget-object v0, Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageTimerMetricKey;->KeyValueStorage_DeleteKey_Timer:Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageTimerMetricKey;

    invoke-virtual {p1, v0}, Lcom/audible/hushpuppy/common/metric/MetricManager;->stopTimerMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;)V

    return v2

    .line 136
    :cond_1
    sget-object p1, Lcom/audible/relationship/db/KeyValueStorage;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Failed to delete Key from database."

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    .line 137
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object p1

    sget-object v1, Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageMetricKey;->KeyValueStorage_DeleteKey_Status:Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageMetricKey;

    sget-object v2, Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;->ERROR:Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;

    invoke-virtual {p1, v1, v2}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    return v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/audible/relationship/db/KeyValueStorage;->sqLiteOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/audible/relationship/db/KeyValueStorage;->getValueForKey(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public incrementAndGetValueAsInt(Ljava/lang/String;)I
    .locals 7

    const/4 v0, -0x1

    if-nez p1, :cond_0

    .line 75
    sget-object p1, Lcom/audible/relationship/db/KeyValueStorage;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Tried to increment Key Value but key is null!"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    .line 76
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object p1

    sget-object v1, Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageMetricKey;->KeyValueStorage_IncrementKey_NullKey:Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageMetricKey;

    sget-object v2, Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;->ERROR:Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;

    invoke-virtual {p1, v1, v2}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    return v0

    .line 80
    :cond_0
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v1

    sget-object v2, Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageTimerMetricKey;->KeyValueStorage_IncrementKey_Timer:Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageTimerMetricKey;

    invoke-virtual {v1, v2}, Lcom/audible/hushpuppy/common/metric/MetricManager;->startTimerMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;)V

    .line 82
    iget-object v1, p0, Lcom/audible/relationship/db/KeyValueStorage;->sqLiteOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 84
    :try_start_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 85
    invoke-direct {p0, p1, v1}, Lcom/audible/relationship/db/KeyValueStorage;->getValueForKey(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 89
    sget-object v4, Lcom/audible/relationship/db/KeyValueStorage;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Incrementing Key Value, valueToIncrementStr = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :try_start_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const v4, 0x7fffffff

    if-ge v2, v4, :cond_1

    add-int/lit8 v3, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    .line 97
    :try_start_2
    sget-object v4, Lcom/audible/relationship/db/KeyValueStorage;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v5, "Error in incrementing Key Value, encountered NumberFormatException"

    invoke-interface {v4, v5, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 98
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v2

    sget-object v4, Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageMetricKey;->KeyValueStorage_IncrementKey_NumberFormatException:Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageMetricKey;

    sget-object v5, Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;->ERROR:Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;

    invoke-virtual {v2, v4, v5}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    .line 101
    :cond_1
    :goto_0
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2, v1}, Lcom/audible/relationship/db/KeyValueStorage;->setValueForKey(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 102
    sget-object p1, Lcom/audible/relationship/db/KeyValueStorage;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Successfully incremented Key Value."

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 103
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object p1

    sget-object v0, Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageMetricKey;->KeyValueStorage_IncrementKey_Status:Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageMetricKey;

    sget-object v2, Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;->SUCCESS:Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;

    invoke-virtual {p1, v0, v2}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    .line 104
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object p1

    sget-object v0, Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageTimerMetricKey;->KeyValueStorage_IncrementKey_Timer:Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageTimerMetricKey;

    invoke-virtual {p1, v0}, Lcom/audible/hushpuppy/common/metric/MetricManager;->stopTimerMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;)V

    .line 105
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 109
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return v3

    :cond_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 111
    sget-object p1, Lcom/audible/relationship/db/KeyValueStorage;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Failed to increment Value for Key!"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    .line 112
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object p1

    sget-object v1, Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageMetricKey;->KeyValueStorage_IncrementKey_Status:Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageMetricKey;

    sget-object v2, Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;->ERROR:Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;

    invoke-virtual {p1, v1, v2}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    return v0

    :catchall_0
    move-exception p1

    .line 109
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 110
    throw p1
.end method
