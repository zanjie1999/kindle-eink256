.class final Lcom/amazon/device/sync/GetPendingRecordsFromAllDatasetsDbOperation;
.super Ljava/lang/Object;
.source "GetPendingRecordsFromAllDatasetsDbOperation.java"


# instance fields
.field private final mAccountId:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/amazon/device/sync/GetPendingRecordsFromAllDatasetsDbOperation;->mContext:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lcom/amazon/device/sync/GetPendingRecordsFromAllDatasetsDbOperation;->mAccountId:Ljava/lang/String;

    return-void
.end method

.method private createQuery()Ljava/lang/String;
    .locals 19

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    const-string/jumbo v2, "namespaces"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 117
    sget-object v2, Lcom/amazon/device/sync/SyncContract$Datasets;->PENDING_TABLE_NAME:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Lcom/amazon/device/sync/SyncContract$Records;->PENDING_TABLE_NAME:Ljava/lang/String;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "%s, %s, %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "namespace"

    .line 120
    invoke-static {v2}, Lcom/amazon/device/sync/SyncDb;->getNamespaceColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "_id"

    .line 121
    invoke-static {v6}, Lcom/amazon/device/sync/SyncDb;->getNamespaceColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "namespace_id"

    .line 123
    invoke-static {v8}, Lcom/amazon/device/sync/SyncDb;->getPendingDatasetColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "dataset_name"

    .line 124
    invoke-static {v9}, Lcom/amazon/device/sync/SyncDb;->getPendingDatasetColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 125
    invoke-static {v6}, Lcom/amazon/device/sync/SyncDb;->getPendingDatasetColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "pending_action"

    .line 126
    invoke-static {v11}, Lcom/amazon/device/sync/SyncDb;->getPendingDatasetColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 128
    invoke-static {v6}, Lcom/amazon/device/sync/SyncDb;->getPendingRecordColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v12, "pending_dataset_id"

    .line 129
    invoke-static {v12}, Lcom/amazon/device/sync/SyncDb;->getPendingRecordColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "record_key"

    .line 130
    invoke-static {v13}, Lcom/amazon/device/sync/SyncDb;->getPendingRecordColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "record_value"

    .line 131
    invoke-static {v14}, Lcom/amazon/device/sync/SyncDb;->getPendingRecordColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "server_sync_count"

    .line 132
    invoke-static {v15}, Lcom/amazon/device/sync/SyncDb;->getPendingRecordColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "last_updated_utc_time"

    .line 133
    invoke-static/range {v16 .. v16}, Lcom/amazon/device/sync/SyncDb;->getPendingRecordColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v17, "is_deleted"

    .line 134
    invoke-static/range {v17 .. v17}, Lcom/amazon/device/sync/SyncDb;->getPendingRecordColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v18, "operation_id"

    .line 135
    invoke-static/range {v18 .. v18}, Lcom/amazon/device/sync/SyncDb;->getPendingRecordColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v3

    aput-object v9, v0, v4

    aput-object v13, v0, v5

    const/4 v2, 0x3

    aput-object v14, v0, v2

    const/4 v2, 0x4

    aput-object v15, v0, v2

    const/4 v9, 0x5

    aput-object v16, v0, v9

    const/4 v9, 0x6

    aput-object v17, v0, v9

    const/4 v9, 0x7

    aput-object v6, v0, v9

    const-string v6, "%s, %s, %s, %s, %s, %s, %s, %s"

    .line 138
    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v7, v6, v3

    aput-object v8, v6, v4

    const-string v7, "%s = %s"

    .line 149
    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-array v8, v5, [Ljava/lang/Object;

    aput-object v10, v8, v3

    aput-object v12, v8, v4

    .line 150
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    new-array v9, v5, [Ljava/lang/Object;

    aput-object v18, v9, v3

    const/4 v10, -0x1

    .line 151
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v4

    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-array v9, v5, [Ljava/lang/Object;

    aput-object v11, v9, v3

    .line 152
    sget-object v10, Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;->NONE:Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;

    invoke-virtual {v10}, Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;->value()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v4

    const-string v10, "%s = \'%s\'"

    invoke-static {v10, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v6, v2, v3

    aput-object v8, v2, v4

    aput-object v7, v2, v5

    const/4 v6, 0x3

    aput-object v9, v2, v6

    const-string v7, "%s AND %s AND %s AND %s"

    .line 154
    invoke-static {v7, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v3

    aput-object v1, v6, v4

    aput-object v2, v6, v5

    const-string v0, "SELECT %s FROM %s WHERE %s"

    .line 160
    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private executionImpl(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/amazon/whispersync/Record;",
            ">;>;>;"
        }
    .end annotation

    .line 49
    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->beginTransaction()V

    .line 53
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/device/sync/GetPendingRecordsFromAllDatasetsDbOperation;->createQuery()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 54
    invoke-virtual {p1, v0, v1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 55
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 56
    new-instance v2, Lcom/amazon/device/sync/GetPendingRecordsFromAllDatasetsDbOperation$1;

    invoke-direct {v2, p0, v1}, Lcom/amazon/device/sync/GetPendingRecordsFromAllDatasetsDbOperation$1;-><init>(Lcom/amazon/device/sync/GetPendingRecordsFromAllDatasetsDbOperation;Ljava/util/Set;)V

    invoke-static {v0, v2}, Lcom/amazon/whispersync/dcp/framework/DBHelpers;->runWithCursorOrThrow(Landroid/database/Cursor;Lcom/amazon/whispersync/dcp/framework/Task;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 94
    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->endTransaction()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->endTransaction()V

    throw v0
.end method


# virtual methods
.method public execute()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/amazon/whispersync/Record;",
            ">;>;>;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/amazon/device/sync/GetPendingRecordsFromAllDatasetsDbOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/amazon/device/sync/GetPendingRecordsFromAllDatasetsDbOperation;->mAccountId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/device/sync/SyncDb;->open(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;

    move-result-object v0

    .line 39
    :try_start_0
    invoke-direct {p0, v0}, Lcom/amazon/device/sync/GetPendingRecordsFromAllDatasetsDbOperation;->executionImpl(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;)Ljava/util/Map;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->close()V

    throw v1
.end method
