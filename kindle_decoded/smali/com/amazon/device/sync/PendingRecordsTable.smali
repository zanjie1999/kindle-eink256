.class Lcom/amazon/device/sync/PendingRecordsTable;
.super Lcom/amazon/device/sync/RecordsTable;
.source "PendingRecordsTable.java"


# static fields
.field private static final DATASET_ID_NAME:Ljava/lang/String; = "pending_dataset_id"

.field private static final OP_ID_SELECTION:Ljava/lang/String;

.field private static final TABLE_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 23
    sget-object v0, Lcom/amazon/device/sync/SyncContract$Records;->PENDING_TABLE_NAME:Ljava/lang/String;

    sput-object v0, Lcom/amazon/device/sync/PendingRecordsTable;->TABLE_NAME:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "operation_id"

    aput-object v2, v0, v1

    const-string v1, "(%s = ?)"

    .line 25
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/sync/PendingRecordsTable;->OP_ID_SELECTION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;J)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/device/sync/RecordsTable;-><init>(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;J)V

    return-void
.end method

.method private createDatasetIdAndOperationIdSelection()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 141
    invoke-virtual {p0}, Lcom/amazon/device/sync/PendingRecordsTable;->getDatasetIdColumnName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string/jumbo v2, "operation_id"

    aput-object v2, v0, v1

    const-string v1, "(%s = ?) AND (%s = ?)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private createDatasetIdOpIdAndKeySelection(I)Ljava/lang/String;
    .locals 3

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lcom/amazon/device/sync/RecordsTable;->createDatasetIdAndKeySelection(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "operation_id"

    aput-object v2, p1, v1

    const-string v1, " AND (%s = ?)"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private createDeletedRecordRow(Lcom/amazon/whispersync/Record;)Landroid/content/ContentValues;
    .locals 2

    .line 94
    invoke-virtual {p0, p1}, Lcom/amazon/device/sync/PendingRecordsTable;->createRecordRow(Lcom/amazon/whispersync/Record;)Landroid/content/ContentValues;

    move-result-object p1

    const/4 v0, 0x1

    .line 95
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "is_deleted"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 96
    invoke-virtual {p0}, Lcom/amazon/device/sync/PendingRecordsTable;->getValueColumnName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method private static createOperationIdRow(I)Landroid/content/ContentValues;
    .locals 2

    .line 160
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 161
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string/jumbo v1, "operation_id"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public static createPendingRecord(Landroid/database/Cursor;)Lcom/amazon/whispersync/Record;
    .locals 0

    .line 206
    invoke-static {p0}, Lcom/amazon/device/sync/PendingRecordsTable;->createRecordImpl(Landroid/database/Cursor;)Lcom/amazon/whispersync/Record;

    move-result-object p0

    return-object p0
.end method

.method private static createRecordImpl(Landroid/database/Cursor;)Lcom/amazon/whispersync/Record;
    .locals 6

    .line 211
    new-instance v0, Lcom/amazon/whispersync/Record;

    invoke-direct {v0}, Lcom/amazon/whispersync/Record;-><init>()V

    const-string/jumbo v1, "record_key"

    .line 213
    invoke-static {p0, v1}, Lcom/amazon/whispersync/dcp/framework/DBHelpers;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "record_value"

    .line 214
    invoke-static {p0, v2}, Lcom/amazon/whispersync/dcp/framework/DBHelpers;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "server_sync_count"

    .line 215
    invoke-static {p0, v3}, Lcom/amazon/whispersync/dcp/framework/DBHelpers;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "last_updated_utc_time"

    .line 216
    invoke-static {p0, v4}, Lcom/amazon/whispersync/dcp/framework/DBHelpers;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "is_deleted"

    .line 217
    invoke-static {p0, v5}, Lcom/amazon/whispersync/dcp/framework/DBHelpers;->getBool(Landroid/database/Cursor;Ljava/lang/String;)Z

    move-result p0

    .line 218
    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/Record;->setKey(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v0, v2}, Lcom/amazon/whispersync/Record;->setValue(Ljava/lang/String;)V

    int-to-long v1, v3

    .line 220
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/Record;->setServerSyncCount(Ljava/lang/Long;)V

    .line 221
    invoke-virtual {v0, v4}, Lcom/amazon/whispersync/Record;->setLastUpdatedTime(Ljava/lang/String;)V

    .line 222
    invoke-virtual {v0, p0}, Lcom/amazon/whispersync/Record;->setIsDeleted(Z)V

    return-object v0
.end method

.method public static markAllRecordsAsNotInProgress(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;)V
    .locals 3

    const/4 v0, -0x1

    .line 65
    invoke-static {v0}, Lcom/amazon/device/sync/PendingRecordsTable;->createOperationIdRow(I)Landroid/content/ContentValues;

    move-result-object v0

    .line 66
    sget-object v1, Lcom/amazon/device/sync/PendingRecordsTable;->TABLE_NAME:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2, v2}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public static markRecordsAsInProgress(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;ILjava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;",
            "I",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 34
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 39
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 40
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 42
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 46
    :cond_1
    sget-object p2, Lcom/amazon/device/sync/RecordsTable;->MAX_KEYS_IN_RECORDS_SQL:Lcom/amazon/whispersync/dcp/settings/SettingInteger;

    invoke-virtual {p2}, Lcom/amazon/whispersync/dcp/settings/SettingInteger;->getValue()I

    move-result p2

    invoke-static {v0, p2}, Lcom/amazon/device/sync/gear/StaticUtils;->splitCollection(Ljava/util/Collection;I)Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 48
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-static {v3}, Lcom/amazon/device/sync/RecordsTable;->generateINStatementPlaceholders(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "%s IN (%s)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 51
    invoke-static {p1}, Lcom/amazon/device/sync/PendingRecordsTable;->createOperationIdRow(I)Landroid/content/ContentValues;

    move-result-object v2

    .line 52
    sget-object v3, Lcom/amazon/device/sync/PendingRecordsTable;->TABLE_NAME:Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v3, v2, v1, v0}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static markRecordsAsNotInProgressByOpId(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;I)I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 58
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, -0x1

    .line 59
    invoke-static {p1}, Lcom/amazon/device/sync/PendingRecordsTable;->createOperationIdRow(I)Landroid/content/ContentValues;

    move-result-object p1

    .line 60
    sget-object v1, Lcom/amazon/device/sync/PendingRecordsTable;->TABLE_NAME:Ljava/lang/String;

    sget-object v2, Lcom/amazon/device/sync/PendingRecordsTable;->OP_ID_SELECTION:Ljava/lang/String;

    invoke-virtual {p0, v1, p1, v2, v0}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public bulkDeleteByOpId(Ljava/util/Collection;I)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;I)I"
        }
    .end annotation

    .line 102
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 110
    :cond_0
    sget-object v0, Lcom/amazon/device/sync/RecordsTable;->MAX_KEYS_IN_RECORDS_SQL:Lcom/amazon/whispersync/dcp/settings/SettingInteger;

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/settings/SettingInteger;->getValue()I

    move-result v0

    invoke-static {p1, v0}, Lcom/amazon/device/sync/gear/StaticUtils;->splitCollection(Ljava/util/Collection;I)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 112
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/amazon/device/sync/PendingRecordsTable;->createDatasetIdOpIdAndKeySelection(I)Ljava/lang/String;

    move-result-object v3

    .line 113
    const-class v4, [Ljava/lang/String;

    const/4 v5, 0x3

    new-array v5, v5, [[Ljava/lang/String;

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/String;

    iget-wide v8, p0, Lcom/amazon/device/sync/RecordsTable;->mDatasetId:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v1

    aput-object v7, v5, v1

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-interface {v2, v7}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    aput-object v2, v5, v6

    const/4 v2, 0x2

    new-array v6, v6, [Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Lcom/amazon/whispersync/dcp/framework/ArrayHelpers;->concatenate(Ljava/lang/Class;[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 117
    iget-object v4, p0, Lcom/amazon/device/sync/RecordsTable;->mDb:Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;

    invoke-virtual {p0}, Lcom/amazon/device/sync/PendingRecordsTable;->getTableName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3, v2}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    return v0
.end method

.method public bulkUpsert(Ljava/util/Collection;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/whispersync/Record;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 72
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/Record;

    .line 74
    invoke-virtual {p0, v1}, Lcom/amazon/device/sync/PendingRecordsTable;->upsert(Lcom/amazon/whispersync/Record;)J

    move-result-wide v1

    .line 75
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected createRecord(Landroid/database/Cursor;)Lcom/amazon/whispersync/Record;
    .locals 0

    .line 201
    invoke-static {p1}, Lcom/amazon/device/sync/PendingRecordsTable;->createRecordImpl(Landroid/database/Cursor;)Lcom/amazon/whispersync/Record;

    move-result-object p1

    return-object p1
.end method

.method protected createRecordRow(Lcom/amazon/whispersync/Record;)Landroid/content/ContentValues;
    .locals 4

    .line 186
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 187
    invoke-virtual {p0}, Lcom/amazon/device/sync/PendingRecordsTable;->getDatasetIdColumnName()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/amazon/device/sync/RecordsTable;->mDatasetId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 188
    invoke-virtual {p1}, Lcom/amazon/whispersync/Record;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "record_key"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0}, Lcom/amazon/device/sync/PendingRecordsTable;->getValueColumnName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/whispersync/Record;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-virtual {p1}, Lcom/amazon/whispersync/Record;->getServerSyncCount()Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/amazon/whispersync/Record;->getServerSyncCount()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :goto_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "server_sync_count"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 191
    invoke-virtual {p1}, Lcom/amazon/whispersync/Record;->getLastUpdatedTime()Ljava/lang/String;

    move-result-object v1

    const-string v2, "last_updated_utc_time"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-virtual {p1}, Lcom/amazon/whispersync/Record;->isIsDeleted()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "is_deleted"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const/4 p1, -0x1

    .line 193
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo v1, "operation_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public deleteRecordsPendingDeletion()I
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "pending_dataset_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "is_deleted"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "%s = ? AND %s = 1"

    .line 229
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/String;

    .line 230
    iget-wide v3, p0, Lcom/amazon/device/sync/RecordsTable;->mDatasetId:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 231
    iget-object v2, p0, Lcom/amazon/device/sync/RecordsTable;->mDb:Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;

    sget-object v3, Lcom/amazon/device/sync/PendingRecordsTable;->TABLE_NAME:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, v1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected getDatasetIdColumnName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "pending_dataset_id"

    return-object v0
.end method

.method public getRecordsNotMarkedAsInProgress()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/whispersync/Record;",
            ">;"
        }
    .end annotation

    .line 124
    invoke-direct {p0}, Lcom/amazon/device/sync/PendingRecordsTable;->createDatasetIdAndOperationIdSelection()Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    .line 125
    iget-wide v0, p0, Lcom/amazon/device/sync/RecordsTable;->mDatasetId:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v4, v1

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v4, v1

    .line 126
    iget-object v0, p0, Lcom/amazon/device/sync/RecordsTable;->mDb:Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;

    invoke-virtual {p0}, Lcom/amazon/device/sync/PendingRecordsTable;->getTableName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 131
    iget-object v1, p0, Lcom/amazon/device/sync/RecordsTable;->mCreateRecordSetTask:Lcom/amazon/whispersync/dcp/framework/Task;

    invoke-static {v0, v1}, Lcom/amazon/whispersync/dcp/framework/DBHelpers;->runWithCursorOrThrow(Landroid/database/Cursor;Lcom/amazon/whispersync/dcp/framework/Task;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method protected getTableName()Ljava/lang/String;
    .locals 1

    .line 168
    sget-object v0, Lcom/amazon/device/sync/PendingRecordsTable;->TABLE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method protected getValueColumnName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "record_value"

    return-object v0
.end method

.method public markRecordsAsInProgress(Ljava/util/Collection;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 147
    sget-object v0, Lcom/amazon/device/sync/RecordsTable;->MAX_KEYS_IN_RECORDS_SQL:Lcom/amazon/whispersync/dcp/settings/SettingInteger;

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/settings/SettingInteger;->getValue()I

    move-result v0

    invoke-static {p1, v0}, Lcom/amazon/device/sync/gear/StaticUtils;->splitCollection(Ljava/util/Collection;I)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 149
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/amazon/device/sync/RecordsTable;->createDatasetIdAndKeySelection(I)Ljava/lang/String;

    move-result-object v1

    .line 150
    const-class v2, [Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [[Ljava/lang/String;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    iget-wide v6, p0, Lcom/amazon/device/sync/RecordsTable;->mDatasetId:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    aput-object v5, v3, v7

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/amazon/whispersync/dcp/framework/ArrayHelpers;->concatenate(Ljava/lang/Class;[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 153
    invoke-static {p2}, Lcom/amazon/device/sync/PendingRecordsTable;->createOperationIdRow(I)Landroid/content/ContentValues;

    move-result-object v2

    .line 154
    iget-object v3, p0, Lcom/amazon/device/sync/RecordsTable;->mDb:Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;

    sget-object v4, Lcom/amazon/device/sync/PendingRecordsTable;->TABLE_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4, v2, v1, v0}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public upsert(Lcom/amazon/whispersync/Record;)J
    .locals 2

    .line 82
    invoke-virtual {p0, p1}, Lcom/amazon/device/sync/PendingRecordsTable;->createRecordRow(Lcom/amazon/whispersync/Record;)Landroid/content/ContentValues;

    move-result-object v0

    .line 83
    invoke-virtual {p1}, Lcom/amazon/whispersync/Record;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/amazon/device/sync/RecordsTable;->upsertRecordRow(Landroid/content/ContentValues;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public upsertAsDeleted(Lcom/amazon/whispersync/Record;)J
    .locals 2

    .line 88
    invoke-direct {p0, p1}, Lcom/amazon/device/sync/PendingRecordsTable;->createDeletedRecordRow(Lcom/amazon/whispersync/Record;)Landroid/content/ContentValues;

    move-result-object v0

    .line 89
    invoke-virtual {p1}, Lcom/amazon/whispersync/Record;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/amazon/device/sync/RecordsTable;->upsertRecordRow(Landroid/content/ContentValues;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method
