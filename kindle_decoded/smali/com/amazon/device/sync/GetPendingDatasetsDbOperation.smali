.class final Lcom/amazon/device/sync/GetPendingDatasetsDbOperation;
.super Ljava/lang/Object;
.source "GetPendingDatasetsDbOperation.java"


# instance fields
.field private final mAccountId:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mNamespace:Ljava/lang/String;

.field private final mOperationId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/amazon/device/sync/GetPendingDatasetsDbOperation;->mContext:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lcom/amazon/device/sync/GetPendingDatasetsDbOperation;->mAccountId:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lcom/amazon/device/sync/GetPendingDatasetsDbOperation;->mNamespace:Ljava/lang/String;

    .line 29
    iput p4, p0, Lcom/amazon/device/sync/GetPendingDatasetsDbOperation;->mOperationId:I

    return-void
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
            "Lcom/amazon/whispersync/Dataset;",
            ">;"
        }
    .end annotation

    .line 48
    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->beginTransaction()V

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/amazon/device/sync/GetPendingDatasetsDbOperation;->mNamespace:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/amazon/device/sync/NamespacesTable;->getIdOrCreate(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;)J

    move-result-wide v0

    .line 53
    invoke-direct {p0, p1, v0, v1}, Lcom/amazon/device/sync/GetPendingDatasetsDbOperation;->getModifiedDatasets(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;J)Ljava/util/Map;

    move-result-object v2

    .line 54
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/amazon/device/sync/GetPendingDatasetsDbOperation;->populateDatasetsWithSnapshotInformation(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;JLjava/util/Map;)V

    .line 56
    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->endTransaction()V

    return-object v2

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->endTransaction()V

    throw v0
.end method

.method private getModifiedDatasets(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;J)Ljava/util/Map;
    .locals 2
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

    .line 67
    new-instance v0, Lcom/amazon/device/sync/PendingDatasetsTable;

    iget-object v1, p0, Lcom/amazon/device/sync/GetPendingDatasetsDbOperation;->mNamespace:Ljava/lang/String;

    invoke-direct {v0, p1, v1, p2, p3}, Lcom/amazon/device/sync/PendingDatasetsTable;-><init>(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;J)V

    const/4 p1, 0x2

    new-array p1, p1, [Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;

    .line 69
    sget-object p2, Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;->CREATION:Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;

    const/4 p3, 0x0

    aput-object p2, p1, p3

    sget-object p2, Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;->DELETION:Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;

    const/4 p3, 0x1

    aput-object p2, p1, p3

    invoke-virtual {v0, p1}, Lcom/amazon/device/sync/PendingDatasetsTable;->getDatasetsByPendingAction([Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;)Ljava/util/Map;

    move-result-object p1

    .line 72
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    iget p3, p0, Lcom/amazon/device/sync/GetPendingDatasetsDbOperation;->mOperationId:I

    invoke-virtual {v0, p2, p3}, Lcom/amazon/device/sync/PendingDatasetsTable;->markDatasetsAsInProgress(Ljava/util/Collection;I)I

    return-object p1
.end method

.method private populateDatasetsWithSnapshotInformation(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;JLjava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;",
            "J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/whispersync/Dataset;",
            ">;)V"
        }
    .end annotation

    .line 81
    new-instance v0, Lcom/amazon/device/sync/SnapshotDatasetsTable;

    iget-object v1, p0, Lcom/amazon/device/sync/GetPendingDatasetsDbOperation;->mNamespace:Ljava/lang/String;

    invoke-direct {v0, p1, v1, p2, p3}, Lcom/amazon/device/sync/SnapshotDatasetsTable;-><init>(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;J)V

    .line 82
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 84
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/amazon/whispersync/Dataset;

    invoke-virtual {p3}, Lcom/amazon/whispersync/Dataset;->isIsDeleted()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 86
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/whispersync/Dataset;

    .line 87
    invoke-direct {p0, p2, v0}, Lcom/amazon/device/sync/GetPendingDatasetsDbOperation;->populateWithSnapshotInfo(Lcom/amazon/whispersync/Dataset;Lcom/amazon/device/sync/SnapshotDatasetsTable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private populateWithSnapshotInfo(Lcom/amazon/whispersync/Dataset;Lcom/amazon/device/sync/SnapshotDatasetsTable;)V
    .locals 1

    .line 95
    invoke-virtual {p1}, Lcom/amazon/whispersync/Dataset;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/amazon/device/sync/SnapshotDatasetsTable;->getDataset(Ljava/lang/String;)Lcom/amazon/whispersync/Dataset;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 98
    invoke-virtual {p2}, Lcom/amazon/whispersync/Dataset;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/Dataset;->setIdentifier(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Lcom/amazon/whispersync/Dataset;->getLinks()Lcom/amazon/whispersync/DatasetLinks;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/Dataset;->setLinks(Lcom/amazon/whispersync/DatasetLinks;)V

    .line 100
    invoke-virtual {p2}, Lcom/amazon/whispersync/Dataset;->getOwner()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazon/whispersync/Dataset;->setOwner(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public execute()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/whispersync/Dataset;",
            ">;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/amazon/device/sync/GetPendingDatasetsDbOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/amazon/device/sync/GetPendingDatasetsDbOperation;->mAccountId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/device/sync/SyncDb;->open(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;

    move-result-object v0

    .line 38
    :try_start_0
    invoke-direct {p0, v0}, Lcom/amazon/device/sync/GetPendingDatasetsDbOperation;->executeWithDB(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;)Ljava/util/Map;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->close()V

    throw v1
.end method
