.class Lcom/amazon/device/sync/DeleteDatasetsDbOperation;
.super Ljava/lang/Object;
.source "DeleteDatasetsDbOperation.java"


# instance fields
.field private final mAccountId:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mDatasets:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mNamespace:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/amazon/device/sync/DeleteDatasetsDbOperation;->mContext:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lcom/amazon/device/sync/DeleteDatasetsDbOperation;->mAccountId:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcom/amazon/device/sync/DeleteDatasetsDbOperation;->mDatasets:Ljava/util/Set;

    .line 32
    iput-object p4, p0, Lcom/amazon/device/sync/DeleteDatasetsDbOperation;->mNamespace:Ljava/lang/String;

    return-void
.end method

.method private executeWithDB(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;)V
    .locals 3

    .line 51
    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->beginTransaction()V

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/amazon/device/sync/DeleteDatasetsDbOperation;->mNamespace:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/amazon/device/sync/NamespacesTable;->getIdOrCreate(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;)J

    move-result-wide v0

    .line 56
    invoke-direct {p0, p1, v0, v1}, Lcom/amazon/device/sync/DeleteDatasetsDbOperation;->getSnapshotDatasetIDs(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;J)Ljava/util/Map;

    move-result-object v2

    .line 57
    invoke-direct {p0, p1, v0, v1}, Lcom/amazon/device/sync/DeleteDatasetsDbOperation;->insertOrUpdatePendingDatasets(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;J)Ljava/util/Map;

    move-result-object v0

    .line 58
    invoke-direct {p0, p1, v2, v0}, Lcom/amazon/device/sync/DeleteDatasetsDbOperation;->insertOrUpdatePendingRecords(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/util/Map;Ljava/util/Map;)V

    .line 59
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/device/sync/ConflictRecordsTable;->dropWithSnapshotRecordIDs(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/util/Collection;)V

    .line 61
    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->endTransaction()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->endTransaction()V

    throw v0
.end method

.method private getSnapshotDatasetIDs(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;J)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;",
            "J)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 130
    new-instance v0, Lcom/amazon/device/sync/SnapshotDatasetsTable;

    iget-object v1, p0, Lcom/amazon/device/sync/DeleteDatasetsDbOperation;->mNamespace:Ljava/lang/String;

    invoke-direct {v0, p1, v1, p2, p3}, Lcom/amazon/device/sync/SnapshotDatasetsTable;-><init>(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;J)V

    .line 131
    iget-object p1, p0, Lcom/amazon/device/sync/DeleteDatasetsDbOperation;->mDatasets:Ljava/util/Set;

    invoke-virtual {v0, p1}, Lcom/amazon/device/sync/DatasetsTable;->getDatasetsIDs(Ljava/util/Set;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method private insertOrUpdatePendingDatasets(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;J)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;",
            "J)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 72
    new-instance v1, Lcom/amazon/device/sync/SnapshotDatasetsTable;

    iget-object v2, p0, Lcom/amazon/device/sync/DeleteDatasetsDbOperation;->mNamespace:Ljava/lang/String;

    invoke-direct {v1, p1, v2, p2, p3}, Lcom/amazon/device/sync/SnapshotDatasetsTable;-><init>(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;J)V

    .line 73
    new-instance v2, Lcom/amazon/device/sync/PendingDatasetsTable;

    iget-object v3, p0, Lcom/amazon/device/sync/DeleteDatasetsDbOperation;->mNamespace:Ljava/lang/String;

    invoke-direct {v2, p1, v3, p2, p3}, Lcom/amazon/device/sync/PendingDatasetsTable;-><init>(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;J)V

    .line 74
    invoke-virtual {v2}, Lcom/amazon/device/sync/PendingDatasetsTable;->getDatasetNamesInProgress()Ljava/util/Set;

    move-result-object p1

    .line 75
    iget-object p2, p0, Lcom/amazon/device/sync/DeleteDatasetsDbOperation;->mDatasets:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 77
    invoke-virtual {v1, p3}, Lcom/amazon/device/sync/DatasetsTable;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {p1, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 87
    :cond_0
    invoke-virtual {v2, p3}, Lcom/amazon/device/sync/DatasetsTable;->delete(Ljava/lang/String;)I

    goto :goto_0

    .line 79
    :cond_1
    :goto_1
    sget-object v3, Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;->DELETION:Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;

    invoke-virtual {v2, p3, v3}, Lcom/amazon/device/sync/PendingDatasetsTable;->upsert(Ljava/lang/String;Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, p3, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private insertOrUpdatePendingRecords(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/util/Map;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 98
    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 100
    new-instance v3, Lcom/amazon/device/sync/PendingRecordsTable;

    invoke-direct {v3, p1, v1, v2}, Lcom/amazon/device/sync/PendingRecordsTable;-><init>(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;J)V

    .line 101
    invoke-virtual {v3}, Lcom/amazon/device/sync/RecordsTable;->deleteAll()I

    goto :goto_0

    .line 106
    :cond_0
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 109
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 110
    new-instance v2, Lcom/amazon/device/sync/SnapshotRecordsTable;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {v2, p1, v3, v4}, Lcom/amazon/device/sync/SnapshotRecordsTable;-><init>(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;J)V

    .line 111
    invoke-virtual {v2}, Lcom/amazon/device/sync/RecordsTable;->getRecords()Ljava/util/Map;

    move-result-object v0

    .line 112
    invoke-direct {p0, p1, v1, v0}, Lcom/amazon/device/sync/DeleteDatasetsDbOperation;->markRecordsAsDeleted(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/Long;Ljava/util/Map;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private markRecordsAsDeleted(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/Long;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/whispersync/Record;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    .line 119
    invoke-static {v0}, Lcom/amazon/whispersync/dcp/framework/TimeUtils;->getCurrentUTCTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 120
    new-instance v1, Lcom/amazon/device/sync/PendingRecordsTable;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v1, p1, v2, v3}, Lcom/amazon/device/sync/PendingRecordsTable;-><init>(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;J)V

    .line 121
    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/whispersync/Record;

    .line 123
    invoke-virtual {p2, v0}, Lcom/amazon/whispersync/Record;->setLastUpdatedTime(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v1, p2}, Lcom/amazon/device/sync/PendingRecordsTable;->upsertAsDeleted(Lcom/amazon/whispersync/Record;)J

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/amazon/device/sync/DeleteDatasetsDbOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/amazon/device/sync/DeleteDatasetsDbOperation;->mAccountId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/device/sync/SyncDb;->open(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;

    move-result-object v0

    .line 41
    :try_start_0
    invoke-direct {p0, v0}, Lcom/amazon/device/sync/DeleteDatasetsDbOperation;->executeWithDB(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->close()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->close()V

    throw v1
.end method
