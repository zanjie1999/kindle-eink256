.class final Lcom/amazon/device/sync/OpenDirectoryOperation;
.super Ljava/lang/Object;
.source "OpenDirectoryOperation.java"


# instance fields
.field private final mAccountId:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mNamespace:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/amazon/device/sync/OpenDirectoryOperation;->mContext:Landroid/content/Context;

    .line 25
    iput-object p2, p0, Lcom/amazon/device/sync/OpenDirectoryOperation;->mAccountId:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/amazon/device/sync/OpenDirectoryOperation;->mNamespace:Ljava/lang/String;

    return-void
.end method

.method private convertDatasetsToDatasetInfo(Ljava/util/Map;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/whispersync/Dataset;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/device/sync/SyncableDatasetInfo;",
            ">;"
        }
    .end annotation

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 92
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/Dataset;

    .line 94
    invoke-virtual {v1}, Lcom/amazon/whispersync/Dataset;->getName()Ljava/lang/String;

    move-result-object v2

    .line 95
    new-instance v3, Lcom/amazon/device/sync/SyncableDatasetInfo;

    invoke-virtual {v1}, Lcom/amazon/whispersync/Dataset;->getNamespace()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/amazon/device/sync/DatasetType;->StringMap:Lcom/amazon/device/sync/DatasetType;

    invoke-direct {v3, v1, v4, v2}, Lcom/amazon/device/sync/SyncableDatasetInfo;-><init>(Ljava/lang/String;Lcom/amazon/device/sync/DatasetType;Ljava/lang/String;)V

    .line 98
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private mergeSnapshotAndPendingDatasets(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;J)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;",
            "J)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/whispersync/Dataset;",
            ">;"
        }
    .end annotation

    .line 72
    new-instance v0, Lcom/amazon/device/sync/SnapshotDatasetsTable;

    iget-object v1, p0, Lcom/amazon/device/sync/OpenDirectoryOperation;->mNamespace:Ljava/lang/String;

    invoke-direct {v0, p1, v1, p2, p3}, Lcom/amazon/device/sync/SnapshotDatasetsTable;-><init>(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;J)V

    .line 73
    new-instance v1, Lcom/amazon/device/sync/PendingDatasetsTable;

    iget-object v2, p0, Lcom/amazon/device/sync/OpenDirectoryOperation;->mNamespace:Ljava/lang/String;

    invoke-direct {v1, p1, v2, p2, p3}, Lcom/amazon/device/sync/PendingDatasetsTable;-><init>(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;J)V

    .line 75
    invoke-virtual {v0}, Lcom/amazon/device/sync/SnapshotDatasetsTable;->getDatasets()Ljava/util/Map;

    move-result-object p1

    .line 76
    invoke-virtual {v1}, Lcom/amazon/device/sync/PendingDatasetsTable;->getDatasetsCreatedOffline()Ljava/util/Map;

    move-result-object p2

    .line 77
    invoke-virtual {v1}, Lcom/amazon/device/sync/PendingDatasetsTable;->getDatasetsDeletedOffline()Ljava/util/Map;

    move-result-object p3

    .line 79
    invoke-interface {p1, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 80
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 82
    invoke-interface {p1, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
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
            "Lcom/amazon/device/sync/SyncableDatasetInfo;",
            ">;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/amazon/device/sync/OpenDirectoryOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/amazon/device/sync/OpenDirectoryOperation;->mAccountId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/device/sync/SyncDb;->open(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;

    move-result-object v0

    .line 35
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/amazon/device/sync/OpenDirectoryOperation;->executeWithDB(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;)Ljava/util/Map;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->close()V

    throw v1
.end method

.method public executeWithDB(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/device/sync/SyncableDatasetInfo;",
            ">;"
        }
    .end annotation

    .line 46
    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->beginTransaction()V

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/amazon/device/sync/OpenDirectoryOperation;->mNamespace:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/amazon/device/sync/NamespacesTable;->getIdOrCreate(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;)J

    move-result-wide v0

    .line 51
    invoke-static {v0, v1}, Lcom/amazon/device/sync/SyncDb;->isNamespaceExist(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 53
    invoke-direct {p0, p1, v0, v1}, Lcom/amazon/device/sync/OpenDirectoryOperation;->mergeSnapshotAndPendingDatasets(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;J)Ljava/util/Map;

    move-result-object v0

    .line 54
    invoke-direct {p0, v0}, Lcom/amazon/device/sync/OpenDirectoryOperation;->convertDatasetsToDatasetInfo(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    .line 58
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 60
    :goto_0
    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->endTransaction()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->endTransaction()V

    throw v0
.end method
