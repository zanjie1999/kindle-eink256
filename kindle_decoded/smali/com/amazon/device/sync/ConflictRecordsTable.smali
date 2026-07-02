.class Lcom/amazon/device/sync/ConflictRecordsTable;
.super Lcom/amazon/device/sync/RecordsTable;
.source "ConflictRecordsTable.java"


# static fields
.field private static final TABLE_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    sget-object v0, Lcom/amazon/device/sync/SyncContract$Records;->CONFLICT_TABLE_NAME:Ljava/lang/String;

    sput-object v0, Lcom/amazon/device/sync/ConflictRecordsTable;->TABLE_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;J)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/device/sync/RecordsTable;-><init>(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;J)V

    return-void
.end method

.method private createConflictRow(Lcom/amazon/whispersync/Record;J)Landroid/content/ContentValues;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lcom/amazon/device/sync/ConflictRecordsTable;->createRecordRow(Lcom/amazon/whispersync/Record;)Landroid/content/ContentValues;

    move-result-object p1

    .line 36
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string/jumbo p3, "snapshot_record_id"

    invoke-virtual {p1, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-object p1
.end method

.method public static dropConflicts(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 95
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 100
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 101
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

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

    .line 103
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 107
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

    .line 109
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-static {v1}, Lcom/amazon/device/sync/RecordsTable;->generateINStatementPlaceholders(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const-string v1, "%s IN (%s)"

    .line 110
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 112
    sget-object v2, Lcom/amazon/device/sync/ConflictRecordsTable;->TABLE_NAME:Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v2, v1, v0}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static dropWithSnapshotRecordIDs(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;",
            "Ljava/util/Collection<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "snapshot_record_id"

    .line 88
    invoke-static {p0, v0, p1}, Lcom/amazon/device/sync/ConflictRecordsTable;->dropConflicts(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method protected createRecord(Landroid/database/Cursor;)Lcom/amazon/whispersync/Record;
    .locals 4

    .line 73
    new-instance v0, Lcom/amazon/whispersync/Record;

    invoke-direct {v0}, Lcom/amazon/whispersync/Record;-><init>()V

    const-string/jumbo v1, "record_key"

    .line 75
    invoke-static {p1, v1}, Lcom/amazon/whispersync/dcp/framework/DBHelpers;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 76
    invoke-virtual {p0}, Lcom/amazon/device/sync/ConflictRecordsTable;->getValueColumnName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/amazon/whispersync/dcp/framework/DBHelpers;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "is_deleted"

    .line 77
    invoke-static {p1, v3}, Lcom/amazon/whispersync/dcp/framework/DBHelpers;->getBool(Landroid/database/Cursor;Ljava/lang/String;)Z

    move-result p1

    .line 78
    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/Record;->setKey(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v0, v2}, Lcom/amazon/whispersync/Record;->setValue(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/Record;->setIsDeleted(Z)V

    return-object v0
.end method

.method protected createRecordRow(Lcom/amazon/whispersync/Record;)Landroid/content/ContentValues;
    .locals 4

    .line 61
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 62
    invoke-virtual {p0}, Lcom/amazon/device/sync/ConflictRecordsTable;->getDatasetIdColumnName()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/amazon/device/sync/RecordsTable;->mDatasetId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 63
    invoke-virtual {p1}, Lcom/amazon/whispersync/Record;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "record_key"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/amazon/device/sync/ConflictRecordsTable;->getValueColumnName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/whispersync/Record;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
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

    .line 43
    sget-object v0, Lcom/amazon/device/sync/ConflictRecordsTable;->TABLE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method protected getValueColumnName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "record_conflicted_client_value"

    return-object v0
.end method

.method public upsert(Lcom/amazon/whispersync/Record;J)J
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/device/sync/ConflictRecordsTable;->createConflictRow(Lcom/amazon/whispersync/Record;J)Landroid/content/ContentValues;

    move-result-object p2

    .line 30
    invoke-virtual {p1}, Lcom/amazon/whispersync/Record;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/amazon/device/sync/RecordsTable;->upsertRecordRow(Landroid/content/ContentValues;Ljava/lang/String;)J

    move-result-wide p1

    return-wide p1
.end method
