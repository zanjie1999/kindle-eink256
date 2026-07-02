.class final Lcom/amazon/device/sync/SaveFetchedDatasetsDbOperation;
.super Ljava/lang/Object;
.source "SaveFetchedDatasetsDbOperation.java"


# instance fields
.field private final mAccountId:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mDatasetsByNamespace:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/Dataset;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mDirectorySubscriptionUri:Ljava/lang/String;

.field private final mDirectoryUri:Ljava/lang/String;

.field private mKnownDatasets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Lcom/amazon/device/sync/rpc/DatasetRPC;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/amazon/device/sync/SaveFetchedDatasetsDbOperation;->mContext:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/amazon/device/sync/SaveFetchedDatasetsDbOperation;->mAccountId:Ljava/lang/String;

    .line 39
    invoke-direct {p0, p3}, Lcom/amazon/device/sync/SaveFetchedDatasetsDbOperation;->getDatasetsByNamespace(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/device/sync/SaveFetchedDatasetsDbOperation;->mDatasetsByNamespace:Ljava/util/Map;

    .line 40
    iput-object p4, p0, Lcom/amazon/device/sync/SaveFetchedDatasetsDbOperation;->mDirectoryUri:Ljava/lang/String;

    .line 41
    iput-object p5, p0, Lcom/amazon/device/sync/SaveFetchedDatasetsDbOperation;->mDirectorySubscriptionUri:Ljava/lang/String;

    return-void
.end method

.method private addNewOrModifiedDatasetsToStorage(Lcom/amazon/device/sync/SnapshotDatasetsTable;Lcom/amazon/device/sync/PendingDatasetsTable;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/device/sync/SnapshotDatasetsTable;",
            "Lcom/amazon/device/sync/PendingDatasetsTable;",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/Dataset;",
            ">;)V"
        }
    .end annotation

    .line 159
    invoke-virtual {p1, p3}, Lcom/amazon/device/sync/SnapshotDatasetsTable;->bulkUpsert(Ljava/util/Collection;)Ljava/util/Set;

    .line 161
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 162
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispersync/Dataset;

    .line 164
    invoke-virtual {v0}, Lcom/amazon/whispersync/Dataset;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 166
    :cond_0
    sget-object p3, Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;->CREATION:Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;

    sget-object v0, Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;->NONE:Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;

    invoke-virtual {p2, p1, p3, v0}, Lcom/amazon/device/sync/PendingDatasetsTable;->updatePendingAction(Ljava/util/Collection;Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;)I

    return-void
.end method

.method private executeWithDB(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;)V
    .locals 4

    .line 63
    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->beginTransaction()V

    .line 66
    :try_start_0
    new-instance v0, Lcom/amazon/device/sync/NamespacesTable;

    invoke-direct {v0, p1}, Lcom/amazon/device/sync/NamespacesTable;-><init>(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;)V

    .line 68
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/amazon/device/sync/SaveFetchedDatasetsDbOperation;->mKnownDatasets:Ljava/util/Map;

    .line 69
    iget-object v1, p0, Lcom/amazon/device/sync/SaveFetchedDatasetsDbOperation;->mDatasetsByNamespace:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 71
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-direct {p0, p1, v0, v3, v2}, Lcom/amazon/device/sync/SaveFetchedDatasetsDbOperation;->processFetchedDatasets(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Lcom/amazon/device/sync/NamespacesTable;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/sync/SaveFetchedDatasetsDbOperation;->mDirectoryUri:Ljava/lang/String;

    iget-object v1, p0, Lcom/amazon/device/sync/SaveFetchedDatasetsDbOperation;->mDirectorySubscriptionUri:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/amazon/device/sync/SaveFetchedDatasetsDbOperation;->storeDirectoryUri(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->endTransaction()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->endTransaction()V

    throw v0
.end method

.method private getDatasetsByNamespace(Ljava/util/Collection;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/device/sync/rpc/DatasetRPC;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/Dataset;",
            ">;>;"
        }
    .end annotation

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 93
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/device/sync/rpc/DatasetRPC;

    .line 95
    invoke-virtual {v1}, Lcom/amazon/device/sync/rpc/DatasetRPC;->getNamespace()Ljava/lang/String;

    move-result-object v2

    .line 96
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_0

    .line 99
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 100
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    :cond_0
    invoke-virtual {v1}, Lcom/amazon/device/sync/rpc/DatasetRPC;->getDataset()Lcom/amazon/whispersync/Dataset;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private notifyAboutChanges()V
    .locals 10

    .line 179
    iget-object v0, p0, Lcom/amazon/device/sync/SaveFetchedDatasetsDbOperation;->mDatasetsByNamespace:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 181
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 182
    iget-object v3, p0, Lcom/amazon/device/sync/SaveFetchedDatasetsDbOperation;->mKnownDatasets:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 184
    new-instance v4, Ljava/util/HashSet;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(I)V

    .line 186
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amazon/whispersync/Dataset;

    .line 188
    new-instance v7, Lcom/amazon/device/sync/SyncableDatasetInfo;

    sget-object v8, Lcom/amazon/device/sync/DatasetType;->StringMap:Lcom/amazon/device/sync/DatasetType;

    invoke-virtual {v6}, Lcom/amazon/whispersync/Dataset;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v2, v8, v9}, Lcom/amazon/device/sync/SyncableDatasetInfo;-><init>(Ljava/lang/String;Lcom/amazon/device/sync/DatasetType;Ljava/lang/String;)V

    if-eqz v3, :cond_1

    .line 190
    invoke-virtual {v6}, Lcom/amazon/whispersync/Dataset;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    goto :goto_2

    :cond_1
    const/4 v8, 0x0

    :goto_2
    const/4 v9, 0x0

    if-eqz v8, :cond_3

    .line 194
    invoke-virtual {v6}, Lcom/amazon/whispersync/Dataset;->isIsDeleted()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 196
    new-instance v6, Lcom/amazon/device/sync/Change;

    sget-object v8, Lcom/amazon/device/sync/Change$Type;->DELETED:Lcom/amazon/device/sync/Change$Type;

    invoke-direct {v6, v7, v9, v8}, Lcom/amazon/device/sync/Change;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/amazon/device/sync/Change$Type;)V

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 200
    :cond_2
    new-instance v6, Lcom/amazon/device/sync/Change;

    sget-object v8, Lcom/amazon/device/sync/Change$Type;->UPDATED:Lcom/amazon/device/sync/Change$Type;

    invoke-direct {v6, v7, v7, v8}, Lcom/amazon/device/sync/Change;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/amazon/device/sync/Change$Type;)V

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 203
    :cond_3
    invoke-virtual {v6}, Lcom/amazon/whispersync/Dataset;->isIsDeleted()Z

    move-result v6

    if-nez v6, :cond_0

    .line 205
    new-instance v6, Lcom/amazon/device/sync/Change;

    sget-object v8, Lcom/amazon/device/sync/Change$Type;->ADDED:Lcom/amazon/device/sync/Change$Type;

    invoke-direct {v6, v9, v7, v8}, Lcom/amazon/device/sync/Change;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/amazon/device/sync/Change$Type;)V

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 209
    :cond_4
    iget-object v2, p0, Lcom/amazon/device/sync/SaveFetchedDatasetsDbOperation;->mAccountId:Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/amazon/device/sync/SyncableDatasetInfo;->getSyncableDataDirectoryInfo(Ljava/lang/String;)Lcom/amazon/device/sync/SyncableDatasetInfo;

    move-result-object v1

    invoke-static {v2, v1, v4}, Lcom/amazon/device/sync/Notifications;->notifyChanges(Ljava/lang/String;Lcom/amazon/device/sync/SyncableDatasetInfo;Ljava/util/Set;)Ljava/util/concurrent/Future;

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method private populateKnownDatasets(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;)V
    .locals 3

    .line 148
    new-instance v0, Lcom/amazon/device/sync/OpenDirectoryOperation;

    iget-object v1, p0, Lcom/amazon/device/sync/SaveFetchedDatasetsDbOperation;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/amazon/device/sync/SaveFetchedDatasetsDbOperation;->mAccountId:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p2}, Lcom/amazon/device/sync/OpenDirectoryOperation;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-virtual {v0, p1}, Lcom/amazon/device/sync/OpenDirectoryOperation;->executeWithDB(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;)Ljava/util/Map;

    move-result-object p1

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 152
    iget-object p1, p0, Lcom/amazon/device/sync/SaveFetchedDatasetsDbOperation;->mKnownDatasets:Ljava/util/Map;

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private processFetchedDatasets(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Lcom/amazon/device/sync/NamespacesTable;Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;",
            "Lcom/amazon/device/sync/NamespacesTable;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/Dataset;",
            ">;)V"
        }
    .end annotation

    .line 112
    invoke-direct {p0, p1, p3}, Lcom/amazon/device/sync/SaveFetchedDatasetsDbOperation;->populateKnownDatasets(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2, p3}, Lcom/amazon/device/sync/NamespacesTable;->getIdOrCreate(Ljava/lang/String;)J

    move-result-wide v0

    .line 116
    new-instance p2, Lcom/amazon/device/sync/SnapshotDatasetsTable;

    invoke-direct {p2, p1, p3, v0, v1}, Lcom/amazon/device/sync/SnapshotDatasetsTable;-><init>(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;J)V

    .line 117
    new-instance v2, Lcom/amazon/device/sync/PendingDatasetsTable;

    invoke-direct {v2, p1, p3, v0, v1}, Lcom/amazon/device/sync/PendingDatasetsTable;-><init>(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;J)V

    .line 118
    invoke-virtual {p2}, Lcom/amazon/device/sync/SnapshotDatasetsTable;->getDatasets()Ljava/util/Map;

    move-result-object p1

    .line 119
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 120
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 122
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/Dataset;

    .line 124
    invoke-virtual {v1}, Lcom/amazon/whispersync/Dataset;->isIsDeleted()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 126
    invoke-virtual {v1}, Lcom/amazon/whispersync/Dataset;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 131
    :cond_0
    invoke-virtual {v1}, Lcom/amazon/whispersync/Dataset;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 133
    invoke-virtual {v1}, Lcom/amazon/whispersync/Dataset;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 137
    :cond_1
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 142
    :cond_2
    invoke-direct {p0, p2, v2, p3}, Lcom/amazon/device/sync/SaveFetchedDatasetsDbOperation;->addNewOrModifiedDatasetsToStorage(Lcom/amazon/device/sync/SnapshotDatasetsTable;Lcom/amazon/device/sync/PendingDatasetsTable;Ljava/util/List;)V

    .line 143
    invoke-direct {p0, p2, v2, v0}, Lcom/amazon/device/sync/SaveFetchedDatasetsDbOperation;->removeDatasetsInStorage(Lcom/amazon/device/sync/SnapshotDatasetsTable;Lcom/amazon/device/sync/PendingDatasetsTable;Ljava/util/Set;)V

    return-void
.end method

.method private removeDatasetsInStorage(Lcom/amazon/device/sync/SnapshotDatasetsTable;Lcom/amazon/device/sync/PendingDatasetsTable;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/device/sync/SnapshotDatasetsTable;",
            "Lcom/amazon/device/sync/PendingDatasetsTable;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 173
    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p3, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/amazon/device/sync/DatasetsTable;->bulkDelete([Ljava/lang/String;)I

    const/4 p1, 0x2

    new-array p1, p1, [Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;

    .line 174
    sget-object v0, Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;->DELETION:Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    sget-object v0, Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;->NONE:Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;

    const/4 v1, 0x1

    aput-object v0, p1, v1

    invoke-virtual {p2, p3, p1}, Lcom/amazon/device/sync/PendingDatasetsTable;->deleteByNameAndPendingAction(Ljava/util/Collection;[Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;)I

    return-void
.end method

.method private storeDirectoryUri(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 87
    new-instance v0, Lcom/amazon/device/sync/DirectoryTable;

    invoke-direct {v0, p1}, Lcom/amazon/device/sync/DirectoryTable;-><init>(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;)V

    invoke-virtual {v0, p2, p3}, Lcom/amazon/device/sync/DirectoryTable;->updateDirectoryUri(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/amazon/device/sync/SaveFetchedDatasetsDbOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/amazon/device/sync/SaveFetchedDatasetsDbOperation;->mAccountId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/device/sync/SyncDb;->open(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;

    move-result-object v0

    .line 51
    :try_start_0
    invoke-direct {p0, v0}, Lcom/amazon/device/sync/SaveFetchedDatasetsDbOperation;->executeWithDB(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->close()V

    .line 58
    invoke-direct {p0}, Lcom/amazon/device/sync/SaveFetchedDatasetsDbOperation;->notifyAboutChanges()V

    return-void

    :catchall_0
    move-exception v1

    .line 55
    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->close()V

    throw v1
.end method
