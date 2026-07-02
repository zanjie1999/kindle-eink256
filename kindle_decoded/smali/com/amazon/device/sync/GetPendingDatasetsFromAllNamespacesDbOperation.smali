.class final Lcom/amazon/device/sync/GetPendingDatasetsFromAllNamespacesDbOperation;
.super Ljava/lang/Object;
.source "GetPendingDatasetsFromAllNamespacesDbOperation.java"


# static fields
.field private static final MAX_DATASETS_IN_UPDATE:Lcom/amazon/whispersync/dcp/settings/SettingInteger;


# instance fields
.field private final mAccountId:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mOperationId:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 25
    new-instance v0, Lcom/amazon/whispersync/dcp/settings/SettingInteger;

    sget-object v1, Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;->DeviceGlobal:Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;

    const-string v2, "com.amazon.device.sync.MAX_DATASETS_IN_UPDATE"

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/whispersync/dcp/settings/SettingInteger;-><init>(Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/sync/GetPendingDatasetsFromAllNamespacesDbOperation;->MAX_DATASETS_IN_UPDATE:Lcom/amazon/whispersync/dcp/settings/SettingInteger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/amazon/device/sync/GetPendingDatasetsFromAllNamespacesDbOperation;->mContext:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/amazon/device/sync/GetPendingDatasetsFromAllNamespacesDbOperation;->mAccountId:Ljava/lang/String;

    .line 37
    iput p3, p0, Lcom/amazon/device/sync/GetPendingDatasetsFromAllNamespacesDbOperation;->mOperationId:I

    return-void
.end method

.method private createQuery()Ljava/lang/String;
    .locals 17

    move-object/from16 v0, p0

    const-string/jumbo v1, "namespace"

    .line 123
    invoke-static {v1}, Lcom/amazon/device/sync/SyncDb;->getNamespaceColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "_id"

    .line 124
    invoke-static {v2}, Lcom/amazon/device/sync/SyncDb;->getNamespaceColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "namespace_id"

    .line 126
    invoke-static {v4}, Lcom/amazon/device/sync/SyncDb;->getPendingDatasetColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 127
    invoke-static {v2}, Lcom/amazon/device/sync/SyncDb;->getPendingDatasetColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "dataset_name"

    .line 128
    invoke-static {v6}, Lcom/amazon/device/sync/SyncDb;->getPendingDatasetColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "pending_action"

    .line 129
    invoke-static {v8}, Lcom/amazon/device/sync/SyncDb;->getPendingDatasetColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "operation_id"

    .line 130
    invoke-static {v9}, Lcom/amazon/device/sync/SyncDb;->getPendingDatasetColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 132
    invoke-static {v4}, Lcom/amazon/device/sync/SyncDb;->getSnapshotDatasetColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 133
    invoke-static {v6}, Lcom/amazon/device/sync/SyncDb;->getSnapshotDatasetColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v10, "self_uri"

    .line 134
    invoke-static {v10}, Lcom/amazon/device/sync/SyncDb;->getSnapshotDatasetColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "records_uri"

    .line 135
    invoke-static {v11}, Lcom/amazon/device/sync/SyncDb;->getSnapshotDatasetColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "subscription_uri"

    .line 137
    invoke-static {v12}, Lcom/amazon/device/sync/SyncDb;->getSnapshotDatasetColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x7

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v1, v13, v14

    const/4 v1, 0x1

    aput-object v7, v13, v1

    const/4 v15, 0x2

    aput-object v8, v13, v15

    const/16 v16, 0x3

    aput-object v10, v13, v16

    const/4 v10, 0x4

    aput-object v11, v13, v10

    const/4 v11, 0x5

    aput-object v12, v13, v11

    const/4 v12, 0x6

    aput-object v2, v13, v12

    const-string v2, "%s, %s, %s, %s, %s, %s, %s"

    .line 139
    invoke-static {v2, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v13, v15, [Ljava/lang/Object;

    aput-object v3, v13, v14

    aput-object v5, v13, v1

    const-string v3, "%s = %s"

    .line 149
    invoke-static {v3, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    new-array v11, v15, [Ljava/lang/Object;

    aput-object v5, v11, v14

    aput-object v4, v11, v1

    .line 150
    invoke-static {v3, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v15, [Ljava/lang/Object;

    aput-object v7, v5, v14

    aput-object v6, v5, v1

    .line 151
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "namespaces"

    .line 153
    invoke-direct {v0, v5, v13}, Lcom/amazon/device/sync/GetPendingDatasetsFromAllNamespacesDbOperation;->join(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 154
    sget-object v6, Lcom/amazon/device/sync/SyncContract$Datasets;->SNAPSHOT_TABLE_NAME:Ljava/lang/String;

    new-array v7, v15, [Ljava/lang/Object;

    aput-object v4, v7, v14

    aput-object v3, v7, v1

    const-string v3, "(%s AND %s)"

    invoke-static {v3, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v6, v3}, Lcom/amazon/device/sync/GetPendingDatasetsFromAllNamespacesDbOperation;->join(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v12, [Ljava/lang/Object;

    aput-object v8, v4, v14

    .line 158
    sget-object v6, Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;->CREATION:Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;

    invoke-virtual {v6}, Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;->value()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v1

    aput-object v8, v4, v15

    sget-object v6, Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;->DELETION:Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;

    invoke-virtual {v6}, Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;->value()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v16

    aput-object v9, v4, v10

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x5

    aput-object v6, v4, v7

    const-string v6, "(%s = \'%s\' OR %s = \'%s\') AND %s = %d"

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v6, v12, [Ljava/lang/Object;

    aput-object v2, v6, v14

    .line 163
    sget-object v2, Lcom/amazon/device/sync/SyncContract$Datasets;->PENDING_TABLE_NAME:Ljava/lang/String;

    aput-object v2, v6, v1

    aput-object v5, v6, v15

    aput-object v3, v6, v16

    aput-object v4, v6, v10

    sget-object v1, Lcom/amazon/device/sync/GetPendingDatasetsFromAllNamespacesDbOperation;->MAX_DATASETS_IN_UPDATE:Lcom/amazon/whispersync/dcp/settings/SettingInteger;

    invoke-virtual {v1}, Lcom/amazon/whispersync/dcp/settings/SettingInteger;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v6, v2

    const-string v1, "SELECT %s FROM %s INNER JOIN %s LEFT OUTER JOIN %s WHERE %s LIMIT %d"

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private executeWithDB(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/amazon/whispersync/Dataset;",
            ">;>;"
        }
    .end annotation

    .line 56
    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->beginTransaction()V

    .line 60
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/device/sync/GetPendingDatasetsFromAllNamespacesDbOperation;->createQuery()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 62
    invoke-virtual {p1, v0, v1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 63
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 64
    new-instance v2, Lcom/amazon/device/sync/GetPendingDatasetsFromAllNamespacesDbOperation$1;

    invoke-direct {v2, p0, v1}, Lcom/amazon/device/sync/GetPendingDatasetsFromAllNamespacesDbOperation$1;-><init>(Lcom/amazon/device/sync/GetPendingDatasetsFromAllNamespacesDbOperation;Ljava/util/Set;)V

    invoke-static {v0, v2}, Lcom/amazon/whispersync/dcp/framework/DBHelpers;->runWithCursorOrThrow(Landroid/database/Cursor;Lcom/amazon/whispersync/dcp/framework/Task;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 96
    iget v2, p0, Lcom/amazon/device/sync/GetPendingDatasetsFromAllNamespacesDbOperation;->mOperationId:I

    invoke-static {p1, v2, v1}, Lcom/amazon/device/sync/PendingDatasetsTable;->markDatsetsInProgress(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;ILjava/util/Set;)V

    .line 98
    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->endTransaction()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->endTransaction()V

    throw v0
.end method

.method private join(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "%s ON %s"

    .line 170
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public execute()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/amazon/whispersync/Dataset;",
            ">;>;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/amazon/device/sync/GetPendingDatasetsFromAllNamespacesDbOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/amazon/device/sync/GetPendingDatasetsFromAllNamespacesDbOperation;->mAccountId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/device/sync/SyncDb;->open(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;

    move-result-object v0

    .line 46
    :try_start_0
    invoke-direct {p0, v0}, Lcom/amazon/device/sync/GetPendingDatasetsFromAllNamespacesDbOperation;->executeWithDB(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;)Ljava/util/Map;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->close()V

    throw v1
.end method
