.class final Lcom/amazon/device/sync/CreateDatasetDbOperation;
.super Ljava/lang/Object;
.source "CreateDatasetDbOperation.java"


# instance fields
.field private final mAccountId:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mDatasetInfo:Lcom/amazon/device/sync/SyncableDatasetInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/amazon/device/sync/SyncableDatasetInfo;)V
    .locals 4

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-class v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Context is required"

    invoke-static {p1, v0, v3, v2}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    const-class v0, Ljava/lang/IllegalArgumentException;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "AccountId is required"

    invoke-static {p2, v0, v3, v2}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    const-class v0, Ljava/lang/IllegalArgumentException;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "DatasetInfo is required"

    invoke-static {p3, v0, v2, v1}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    iput-object p1, p0, Lcom/amazon/device/sync/CreateDatasetDbOperation;->mContext:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/amazon/device/sync/CreateDatasetDbOperation;->mAccountId:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcom/amazon/device/sync/CreateDatasetDbOperation;->mDatasetInfo:Lcom/amazon/device/sync/SyncableDatasetInfo;

    return-void
.end method

.method private executeWithDB(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;)V
    .locals 5

    .line 48
    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->beginTransaction()V

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/amazon/device/sync/CreateDatasetDbOperation;->mDatasetInfo:Lcom/amazon/device/sync/SyncableDatasetInfo;

    invoke-virtual {v0}, Lcom/amazon/device/sync/SyncableDatasetInfo;->getNamespace()Ljava/lang/String;

    move-result-object v0

    .line 52
    iget-object v1, p0, Lcom/amazon/device/sync/CreateDatasetDbOperation;->mDatasetInfo:Lcom/amazon/device/sync/SyncableDatasetInfo;

    invoke-virtual {v1}, Lcom/amazon/device/sync/SyncableDatasetInfo;->getName()Ljava/lang/String;

    move-result-object v1

    .line 54
    new-instance v2, Lcom/amazon/device/sync/NamespacesTable;

    invoke-direct {v2, p1}, Lcom/amazon/device/sync/NamespacesTable;-><init>(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;)V

    .line 55
    invoke-virtual {v2, v0}, Lcom/amazon/device/sync/NamespacesTable;->getIdOrCreate(Ljava/lang/String;)J

    move-result-wide v2

    .line 57
    new-instance v4, Lcom/amazon/device/sync/PendingDatasetsTable;

    invoke-direct {v4, p1, v0, v2, v3}, Lcom/amazon/device/sync/PendingDatasetsTable;-><init>(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;J)V

    .line 58
    invoke-virtual {v4, v1}, Lcom/amazon/device/sync/DatasetsTable;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;->DELETION:Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;

    sget-object v2, Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;->NONE:Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;

    invoke-virtual {v4, v0, v1, v2}, Lcom/amazon/device/sync/PendingDatasetsTable;->updatePendingAction(Ljava/util/Collection;Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;)I

    goto :goto_0

    .line 66
    :cond_0
    sget-object v0, Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;->CREATION:Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;

    invoke-virtual {v4, v1, v0}, Lcom/amazon/device/sync/PendingDatasetsTable;->upsert(Ljava/lang/String;Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;)J

    .line 69
    :goto_0
    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->endTransaction()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->endTransaction()V

    throw v0
.end method


# virtual methods
.method public execute()V
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/amazon/device/sync/CreateDatasetDbOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/amazon/device/sync/CreateDatasetDbOperation;->mAccountId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/device/sync/SyncDb;->open(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;

    move-result-object v0

    .line 38
    :try_start_0
    invoke-direct {p0, v0}, Lcom/amazon/device/sync/CreateDatasetDbOperation;->executeWithDB(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->close()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->close()V

    throw v1
.end method
