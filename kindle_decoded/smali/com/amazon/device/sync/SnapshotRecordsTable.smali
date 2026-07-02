.class final Lcom/amazon/device/sync/SnapshotRecordsTable;
.super Lcom/amazon/device/sync/RecordsTable;
.source "SnapshotRecordsTable.java"


# static fields
.field private static final DATASET_ID_NAME:Ljava/lang/String; = "snapshot_dataset_id"

.field private static final TABLE_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    sget-object v0, Lcom/amazon/device/sync/SyncContract$Records;->SNAPSHOT_TABLE_NAME:Ljava/lang/String;

    sput-object v0, Lcom/amazon/device/sync/SnapshotRecordsTable;->TABLE_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;J)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/device/sync/RecordsTable;-><init>(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;J)V

    return-void
.end method


# virtual methods
.method public bulkUpsert(Ljava/util/Collection;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/whispersync/Record;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 37
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/Record;

    .line 39
    invoke-virtual {p0, v1}, Lcom/amazon/device/sync/SnapshotRecordsTable;->upsert(Lcom/amazon/whispersync/Record;)J

    move-result-wide v2

    .line 40
    invoke-virtual {v1}, Lcom/amazon/whispersync/Record;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected createRecord(Landroid/database/Cursor;)Lcom/amazon/whispersync/Record;
    .locals 5

    .line 81
    new-instance v0, Lcom/amazon/whispersync/Record;

    invoke-direct {v0}, Lcom/amazon/whispersync/Record;-><init>()V

    const-string/jumbo v1, "record_key"

    .line 83
    invoke-static {p1, v1}, Lcom/amazon/whispersync/dcp/framework/DBHelpers;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 84
    invoke-virtual {p0}, Lcom/amazon/device/sync/SnapshotRecordsTable;->getValueColumnName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/amazon/whispersync/dcp/framework/DBHelpers;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "server_sync_count"

    .line 85
    invoke-static {p1, v3}, Lcom/amazon/whispersync/dcp/framework/DBHelpers;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "is_deleted"

    .line 86
    invoke-static {p1, v4}, Lcom/amazon/whispersync/dcp/framework/DBHelpers;->getBool(Landroid/database/Cursor;Ljava/lang/String;)Z

    move-result p1

    .line 88
    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/Record;->setKey(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v0, v2}, Lcom/amazon/whispersync/Record;->setValue(Ljava/lang/String;)V

    int-to-long v1, v3

    .line 90
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/Record;->setServerSyncCount(Ljava/lang/Long;)V

    .line 91
    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/Record;->setIsDeleted(Z)V

    return-object v0
.end method

.method protected createRecordRow(Lcom/amazon/whispersync/Record;)Landroid/content/ContentValues;
    .locals 4

    .line 49
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 51
    invoke-virtual {p0}, Lcom/amazon/device/sync/SnapshotRecordsTable;->getDatasetIdColumnName()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/amazon/device/sync/RecordsTable;->mDatasetId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 52
    invoke-virtual {p1}, Lcom/amazon/whispersync/Record;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "record_key"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/amazon/device/sync/SnapshotRecordsTable;->getValueColumnName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/whispersync/Record;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p1}, Lcom/amazon/whispersync/Record;->getServerSyncCount()Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "server_sync_count"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 55
    invoke-virtual {p1}, Lcom/amazon/whispersync/Record;->isIsDeleted()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "is_deleted"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method protected getDatasetIdColumnName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "snapshot_dataset_id"

    return-object v0
.end method

.method protected getTableName()Ljava/lang/String;
    .locals 1

    .line 63
    sget-object v0, Lcom/amazon/device/sync/SnapshotRecordsTable;->TABLE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method protected getValueColumnName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "record_value"

    return-object v0
.end method

.method public upsert(Lcom/amazon/whispersync/Record;)J
    .locals 2

    .line 29
    invoke-virtual {p0, p1}, Lcom/amazon/device/sync/SnapshotRecordsTable;->createRecordRow(Lcom/amazon/whispersync/Record;)Landroid/content/ContentValues;

    move-result-object v0

    .line 30
    invoke-virtual {p1}, Lcom/amazon/whispersync/Record;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/amazon/device/sync/RecordsTable;->upsertRecordRow(Landroid/content/ContentValues;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method
