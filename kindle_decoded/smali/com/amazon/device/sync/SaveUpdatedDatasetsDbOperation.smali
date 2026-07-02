.class final Lcom/amazon/device/sync/SaveUpdatedDatasetsDbOperation;
.super Ljava/lang/Object;
.source "SaveUpdatedDatasetsDbOperation.java"


# instance fields
.field private final mAccountId:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mCreated:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/device/sync/rpc/DatasetRPC;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeleted:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/device/sync/rpc/DatasetRPC;",
            ">;"
        }
    .end annotation
.end field

.field private mDirectoryUri:Ljava/lang/String;

.field private final mNamespace:Ljava/lang/String;

.field private final mOperationId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ILjava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amazon/device/sync/rpc/DatasetRPC;",
            ">;",
            "Ljava/util/List<",
            "Lcom/amazon/device/sync/rpc/DatasetRPC;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-class v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "accountId cannot be null"

    invoke-static {p2, v0, v3, v2}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    const-class v0, Ljava/lang/IllegalArgumentException;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "created cannot be null"

    invoke-static {p4, v0, v3, v2}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    const-class v0, Ljava/lang/IllegalArgumentException;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "deleted cannot be null"

    invoke-static {p5, v0, v2, v1}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    iput-object p1, p0, Lcom/amazon/device/sync/SaveUpdatedDatasetsDbOperation;->mContext:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/amazon/device/sync/SaveUpdatedDatasetsDbOperation;->mAccountId:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lcom/amazon/device/sync/SaveUpdatedDatasetsDbOperation;->mNamespace:Ljava/lang/String;

    .line 42
    iput-object p4, p0, Lcom/amazon/device/sync/SaveUpdatedDatasetsDbOperation;->mCreated:Ljava/util/List;

    .line 43
    iput-object p5, p0, Lcom/amazon/device/sync/SaveUpdatedDatasetsDbOperation;->mDeleted:Ljava/util/List;

    .line 44
    iput p6, p0, Lcom/amazon/device/sync/SaveUpdatedDatasetsDbOperation;->mOperationId:I

    .line 45
    iput-object p7, p0, Lcom/amazon/device/sync/SaveUpdatedDatasetsDbOperation;->mDirectoryUri:Ljava/lang/String;

    return-void
.end method

.method private executeWithDB(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;)V
    .locals 2

    .line 64
    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->beginTransaction()V

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/amazon/device/sync/SaveUpdatedDatasetsDbOperation;->mNamespace:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/amazon/device/sync/NamespacesTable;->getIdOrCreate(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;)J

    move-result-wide v0

    .line 69
    invoke-direct {p0, p1, v0, v1}, Lcom/amazon/device/sync/SaveUpdatedDatasetsDbOperation;->processCreated(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;J)V

    .line 70
    invoke-direct {p0, p1, v0, v1}, Lcom/amazon/device/sync/SaveUpdatedDatasetsDbOperation;->processDeleted(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;J)V

    .line 71
    invoke-direct {p0, p1, v0, v1}, Lcom/amazon/device/sync/SaveUpdatedDatasetsDbOperation;->resetOperationId(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;J)V

    .line 72
    iget-object v0, p0, Lcom/amazon/device/sync/SaveUpdatedDatasetsDbOperation;->mDirectoryUri:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/amazon/device/sync/SaveUpdatedDatasetsDbOperation;->storeDirectoryUri(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;)V

    .line 74
    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->endTransaction()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->endTransaction()V

    throw v0
.end method

.method private getDatasetNames(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/device/sync/rpc/DatasetRPC;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 161
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/device/sync/rpc/DatasetRPC;

    .line 163
    invoke-virtual {v1}, Lcom/amazon/device/sync/rpc/DatasetRPC;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private processCreated(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;J)V
    .locals 3

    .line 98
    iget-object v0, p0, Lcom/amazon/device/sync/SaveUpdatedDatasetsDbOperation;->mCreated:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 103
    :cond_0
    new-instance v0, Lcom/amazon/device/sync/SnapshotDatasetsTable;

    iget-object v1, p0, Lcom/amazon/device/sync/SaveUpdatedDatasetsDbOperation;->mNamespace:Ljava/lang/String;

    invoke-direct {v0, p1, v1, p2, p3}, Lcom/amazon/device/sync/SnapshotDatasetsTable;-><init>(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;J)V

    .line 104
    new-instance v1, Lcom/amazon/device/sync/PendingDatasetsTable;

    iget-object v2, p0, Lcom/amazon/device/sync/SaveUpdatedDatasetsDbOperation;->mNamespace:Ljava/lang/String;

    invoke-direct {v1, p1, v2, p2, p3}, Lcom/amazon/device/sync/PendingDatasetsTable;-><init>(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;J)V

    .line 106
    iget-object p1, p0, Lcom/amazon/device/sync/SaveUpdatedDatasetsDbOperation;->mCreated:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/device/sync/rpc/DatasetRPC;

    .line 109
    invoke-virtual {p2}, Lcom/amazon/device/sync/rpc/DatasetRPC;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/amazon/device/sync/SnapshotDatasetsTable;->getDataset(Ljava/lang/String;)Lcom/amazon/whispersync/Dataset;

    move-result-object p3

    if-nez p3, :cond_1

    .line 111
    invoke-virtual {p2}, Lcom/amazon/device/sync/rpc/DatasetRPC;->getDataset()Lcom/amazon/whispersync/Dataset;

    move-result-object p3

    const-string v2, "SUBSCRIBED"

    invoke-virtual {v0, p3, v2}, Lcom/amazon/device/sync/SnapshotDatasetsTable;->upsert(Lcom/amazon/whispersync/Dataset;Ljava/lang/String;)J

    .line 116
    :cond_1
    invoke-virtual {p2}, Lcom/amazon/device/sync/rpc/DatasetRPC;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p2

    sget-object p3, Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;->CREATION:Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;

    sget-object v2, Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;->NONE:Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;

    invoke-virtual {v1, p2, p3, v2}, Lcom/amazon/device/sync/PendingDatasetsTable;->updatePendingAction(Ljava/util/Collection;Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;)I

    goto :goto_0

    :cond_2
    return-void
.end method

.method private processDeleted(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;J)V
    .locals 6

    .line 125
    iget-object v0, p0, Lcom/amazon/device/sync/SaveUpdatedDatasetsDbOperation;->mDeleted:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/sync/SaveUpdatedDatasetsDbOperation;->mDeleted:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/amazon/device/sync/SaveUpdatedDatasetsDbOperation;->getDatasetNames(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 133
    new-instance v1, Lcom/amazon/device/sync/SnapshotDatasetsTable;

    iget-object v2, p0, Lcom/amazon/device/sync/SaveUpdatedDatasetsDbOperation;->mNamespace:Ljava/lang/String;

    invoke-direct {v1, p1, v2, p2, p3}, Lcom/amazon/device/sync/SnapshotDatasetsTable;-><init>(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;J)V

    .line 134
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/amazon/device/sync/DatasetsTable;->bulkDelete([Ljava/lang/String;)I

    .line 139
    new-instance v1, Lcom/amazon/device/sync/PendingDatasetsTable;

    iget-object v2, p0, Lcom/amazon/device/sync/SaveUpdatedDatasetsDbOperation;->mNamespace:Ljava/lang/String;

    invoke-direct {v1, p1, v2, p2, p3}, Lcom/amazon/device/sync/PendingDatasetsTable;-><init>(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;J)V

    const/4 p2, 0x1

    new-array p2, p2, [Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;

    const/4 p3, 0x0

    .line 140
    sget-object v2, Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;->DELETION:Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;

    aput-object v2, p2, p3

    invoke-virtual {v1, v0, p2}, Lcom/amazon/device/sync/PendingDatasetsTable;->deleteByNameAndPendingAction(Ljava/util/Collection;[Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;)I

    .line 144
    sget-object p2, Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;->NONE:Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;

    sget-object p3, Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;->CREATION:Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;

    invoke-virtual {v1, v0, p2, p3}, Lcom/amazon/device/sync/PendingDatasetsTable;->updatePendingAction(Ljava/util/Collection;Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;)I

    .line 147
    iget-object p2, p0, Lcom/amazon/device/sync/SaveUpdatedDatasetsDbOperation;->mDeleted:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/amazon/device/sync/rpc/DatasetRPC;

    .line 149
    invoke-virtual {p3}, Lcom/amazon/device/sync/rpc/DatasetRPC;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Lcom/amazon/device/sync/DatasetsTable;->getId(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long p3, v2, v4

    if-eqz p3, :cond_1

    .line 152
    new-instance p3, Lcom/amazon/device/sync/PendingRecordsTable;

    invoke-direct {p3, p1, v2, v3}, Lcom/amazon/device/sync/PendingRecordsTable;-><init>(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;J)V

    .line 153
    invoke-virtual {p3}, Lcom/amazon/device/sync/PendingRecordsTable;->deleteRecordsPendingDeletion()I

    goto :goto_0

    :cond_2
    return-void
.end method

.method private resetOperationId(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;J)V
    .locals 2

    .line 91
    new-instance v0, Lcom/amazon/device/sync/PendingDatasetsTable;

    iget-object v1, p0, Lcom/amazon/device/sync/SaveUpdatedDatasetsDbOperation;->mNamespace:Ljava/lang/String;

    invoke-direct {v0, p1, v1, p2, p3}, Lcom/amazon/device/sync/PendingDatasetsTable;-><init>(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;J)V

    .line 92
    iget p1, p0, Lcom/amazon/device/sync/SaveUpdatedDatasetsDbOperation;->mOperationId:I

    invoke-virtual {v0, p1}, Lcom/amazon/device/sync/PendingDatasetsTable;->markDatasetsAsNotInProgressById(I)I

    return-void
.end method

.method private storeDirectoryUri(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;)V
    .locals 1

    .line 84
    new-instance v0, Lcom/amazon/device/sync/DirectoryTable;

    invoke-direct {v0, p1}, Lcom/amazon/device/sync/DirectoryTable;-><init>(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;)V

    invoke-virtual {v0, p2}, Lcom/amazon/device/sync/DirectoryTable;->updateDatasetsUpdateUri(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/amazon/device/sync/SaveUpdatedDatasetsDbOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/amazon/device/sync/SaveUpdatedDatasetsDbOperation;->mAccountId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/device/sync/SyncDb;->open(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;

    move-result-object v0

    .line 54
    :try_start_0
    invoke-direct {p0, v0}, Lcom/amazon/device/sync/SaveUpdatedDatasetsDbOperation;->executeWithDB(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->close()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->close()V

    throw v1
.end method
