.class abstract Lcom/amazon/device/sync/AbstractDatasetSyncOperation;
.super Lcom/amazon/device/sync/SyncOperation;
.source "AbstractDatasetSyncOperation.java"


# instance fields
.field private final mAccountId:Ljava/lang/String;

.field private final mDatasetName:Ljava/lang/String;

.field private final mNamespace:Ljava/lang/String;


# direct methods
.method protected constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/device/sync/failures/WhispersyncClientException$SyncDirection;Lcom/amazon/device/sync/Synchronizer$SyncActionScope;Lcom/amazon/whispersync/dcp/framework/DCPLog;)V
    .locals 6

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p6

    move-object v4, p7

    move-object v5, p8

    .line 37
    invoke-direct/range {v0 .. v5}, Lcom/amazon/device/sync/SyncOperation;-><init>(ILjava/lang/String;Lcom/amazon/device/sync/failures/WhispersyncClientException$SyncDirection;Lcom/amazon/device/sync/Synchronizer$SyncActionScope;Lcom/amazon/whispersync/dcp/framework/DCPLog;)V

    .line 38
    const-class p1, Ljava/lang/IllegalArgumentException;

    const/4 p2, 0x0

    new-array p6, p2, [Ljava/lang/Object;

    const-string p7, "AccountId cannot be null"

    invoke-static {p3, p1, p7, p6}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    const-class p1, Ljava/lang/IllegalArgumentException;

    new-array p6, p2, [Ljava/lang/Object;

    const-string p7, "Namespace cannot be null"

    invoke-static {p4, p1, p7, p6}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    const-class p1, Ljava/lang/IllegalArgumentException;

    new-array p2, p2, [Ljava/lang/Object;

    const-string p6, "Datasetname cannot be null"

    invoke-static {p5, p1, p6, p2}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    iput-object p3, p0, Lcom/amazon/device/sync/AbstractDatasetSyncOperation;->mAccountId:Ljava/lang/String;

    .line 42
    iput-object p4, p0, Lcom/amazon/device/sync/AbstractDatasetSyncOperation;->mNamespace:Ljava/lang/String;

    .line 43
    iput-object p5, p0, Lcom/amazon/device/sync/AbstractDatasetSyncOperation;->mDatasetName:Ljava/lang/String;

    return-void
.end method

.method private deleteDatasetFromSnapshotAndPendingTables(Landroid/content/Context;)I
    .locals 6

    .line 76
    iget-object v0, p0, Lcom/amazon/device/sync/AbstractDatasetSyncOperation;->mAccountId:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/amazon/device/sync/SyncDb;->open(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;

    move-result-object p1

    .line 80
    :try_start_0
    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->beginTransaction()V

    .line 82
    new-instance v0, Lcom/amazon/device/sync/NamespacesTable;

    invoke-direct {v0, p1}, Lcom/amazon/device/sync/NamespacesTable;-><init>(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;)V

    iget-object v1, p0, Lcom/amazon/device/sync/AbstractDatasetSyncOperation;->mNamespace:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/device/sync/NamespacesTable;->getIdOrCreate(Ljava/lang/String;)J

    move-result-wide v0

    .line 83
    new-instance v2, Lcom/amazon/device/sync/SnapshotDatasetsTable;

    iget-object v3, p0, Lcom/amazon/device/sync/AbstractDatasetSyncOperation;->mNamespace:Ljava/lang/String;

    invoke-direct {v2, p1, v3, v0, v1}, Lcom/amazon/device/sync/SnapshotDatasetsTable;-><init>(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;J)V

    iget-object v3, p0, Lcom/amazon/device/sync/AbstractDatasetSyncOperation;->mDatasetName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/amazon/device/sync/DatasetsTable;->delete(Ljava/lang/String;)I

    move-result v2

    .line 84
    new-instance v3, Lcom/amazon/device/sync/PendingDatasetsTable;

    iget-object v4, p0, Lcom/amazon/device/sync/AbstractDatasetSyncOperation;->mNamespace:Ljava/lang/String;

    invoke-direct {v3, p1, v4, v0, v1}, Lcom/amazon/device/sync/PendingDatasetsTable;-><init>(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/amazon/device/sync/AbstractDatasetSyncOperation;->mDatasetName:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;

    const/4 v4, 0x0

    sget-object v5, Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;->DELETION:Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;

    aput-object v5, v1, v4

    const/4 v4, 0x1

    sget-object v5, Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;->NONE:Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;

    aput-object v5, v1, v4

    invoke-virtual {v3, v0, v1}, Lcom/amazon/device/sync/PendingDatasetsTable;->deleteByNameAndPendingAction(Ljava/util/Collection;[Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;)I

    move-result v0

    add-int/2addr v2, v0

    .line 87
    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->endTransaction()V

    .line 94
    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->close()V

    return v2

    :catchall_0
    move-exception v0

    .line 93
    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->endTransaction()V

    .line 94
    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->close()V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 105
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 109
    :cond_1
    invoke-super {p0, p1}, Lcom/amazon/device/sync/SyncOperation;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 114
    :cond_2
    check-cast p1, Lcom/amazon/device/sync/AbstractDatasetSyncOperation;

    .line 116
    iget-object v0, p0, Lcom/amazon/device/sync/AbstractDatasetSyncOperation;->mDatasetName:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazon/device/sync/AbstractDatasetSyncOperation;->mDatasetName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method protected generateLocalStoreException()Lcom/amazon/device/sync/failures/LocalStoreException;
    .locals 4

    .line 49
    new-instance v0, Lcom/amazon/device/sync/failures/LocalStoreException;

    iget-object v1, p0, Lcom/amazon/device/sync/SyncOperation;->mDescription:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/device/sync/AbstractDatasetSyncOperation;->mDatasetName:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/device/sync/SyncOperation;->mSyncDirection:Lcom/amazon/device/sync/failures/WhispersyncClientException$SyncDirection;

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/device/sync/failures/LocalStoreException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/device/sync/failures/WhispersyncClientException$SyncDirection;)V

    return-object v0
.end method

.method protected handleResourceNotAvailableException(Landroid/content/Context;Lcom/amazon/whispersync/ResourceNotAvailableException;)V
    .locals 3

    .line 56
    invoke-direct {p0, p1}, Lcom/amazon/device/sync/AbstractDatasetSyncOperation;->deleteDatasetFromSnapshotAndPendingTables(Landroid/content/Context;)I

    move-result p1

    if-lez p1, :cond_0

    .line 60
    new-instance p1, Lcom/amazon/device/sync/Change;

    new-instance p2, Lcom/amazon/device/sync/SyncableDatasetInfo;

    iget-object v0, p0, Lcom/amazon/device/sync/AbstractDatasetSyncOperation;->mNamespace:Ljava/lang/String;

    sget-object v1, Lcom/amazon/device/sync/DatasetType;->StringMap:Lcom/amazon/device/sync/DatasetType;

    iget-object v2, p0, Lcom/amazon/device/sync/AbstractDatasetSyncOperation;->mDatasetName:Ljava/lang/String;

    invoke-direct {p2, v0, v1, v2}, Lcom/amazon/device/sync/SyncableDatasetInfo;-><init>(Ljava/lang/String;Lcom/amazon/device/sync/DatasetType;Ljava/lang/String;)V

    const/4 v0, 0x0

    sget-object v1, Lcom/amazon/device/sync/Change$Type;->DELETED:Lcom/amazon/device/sync/Change$Type;

    invoke-direct {p1, p2, v0, v1}, Lcom/amazon/device/sync/Change;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/amazon/device/sync/Change$Type;)V

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    .line 68
    iget-object p2, p0, Lcom/amazon/device/sync/AbstractDatasetSyncOperation;->mAccountId:Ljava/lang/String;

    iget-object v0, p0, Lcom/amazon/device/sync/AbstractDatasetSyncOperation;->mNamespace:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/device/sync/SyncableDatasetInfo;->getSyncableDataDirectoryInfo(Ljava/lang/String;)Lcom/amazon/device/sync/SyncableDatasetInfo;

    move-result-object v0

    invoke-static {p2, v0, p1}, Lcom/amazon/device/sync/Notifications;->notifyChanges(Ljava/lang/String;Lcom/amazon/device/sync/SyncableDatasetInfo;Ljava/util/Set;)Ljava/util/concurrent/Future;

    :cond_0
    return-void
.end method

.method public hashCode()I
    .locals 2

    .line 123
    invoke-super {p0}, Lcom/amazon/device/sync/SyncOperation;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 124
    iget-object v1, p0, Lcom/amazon/device/sync/AbstractDatasetSyncOperation;->mDatasetName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
