.class Lcom/amazon/device/sync/HandleCreationRequestFailureDbOperation;
.super Ljava/lang/Object;
.source "HandleCreationRequestFailureDbOperation.java"


# instance fields
.field private final mAccountId:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mDatasetName:Ljava/lang/String;

.field private final mNamespace:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/amazon/device/sync/HandleCreationRequestFailureDbOperation;->mContext:Landroid/content/Context;

    .line 25
    iput-object p2, p0, Lcom/amazon/device/sync/HandleCreationRequestFailureDbOperation;->mAccountId:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/amazon/device/sync/HandleCreationRequestFailureDbOperation;->mNamespace:Ljava/lang/String;

    .line 27
    iput-object p4, p0, Lcom/amazon/device/sync/HandleCreationRequestFailureDbOperation;->mDatasetName:Ljava/lang/String;

    return-void
.end method

.method private executeWithDB(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;)V
    .locals 5

    .line 46
    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->beginTransaction()V

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/amazon/device/sync/HandleCreationRequestFailureDbOperation;->mNamespace:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/amazon/device/sync/NamespacesTable;->getIdOrCreate(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;)J

    move-result-wide v0

    .line 50
    new-instance v2, Lcom/amazon/device/sync/SnapshotDatasetsTable;

    iget-object v3, p0, Lcom/amazon/device/sync/HandleCreationRequestFailureDbOperation;->mNamespace:Ljava/lang/String;

    invoke-direct {v2, p1, v3, v0, v1}, Lcom/amazon/device/sync/SnapshotDatasetsTable;-><init>(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;J)V

    .line 51
    iget-object v3, p0, Lcom/amazon/device/sync/HandleCreationRequestFailureDbOperation;->mDatasetName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/amazon/device/sync/DatasetsTable;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 56
    new-instance v2, Lcom/amazon/device/sync/PendingDatasetsTable;

    iget-object v3, p0, Lcom/amazon/device/sync/HandleCreationRequestFailureDbOperation;->mNamespace:Ljava/lang/String;

    invoke-direct {v2, p1, v3, v0, v1}, Lcom/amazon/device/sync/PendingDatasetsTable;-><init>(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;J)V

    .line 57
    iget-object v0, p0, Lcom/amazon/device/sync/HandleCreationRequestFailureDbOperation;->mDatasetName:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;

    const/4 v3, 0x0

    sget-object v4, Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;->DELETION:Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;

    aput-object v4, v1, v3

    invoke-virtual {v2, v0, v1}, Lcom/amazon/device/sync/PendingDatasetsTable;->deleteByNameAndPendingAction(Ljava/util/Collection;[Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;)I

    .line 61
    :cond_0
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


# virtual methods
.method public execute()V
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/amazon/device/sync/HandleCreationRequestFailureDbOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/amazon/device/sync/HandleCreationRequestFailureDbOperation;->mAccountId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/device/sync/SyncDb;->open(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;

    move-result-object v0

    .line 36
    :try_start_0
    invoke-direct {p0, v0}, Lcom/amazon/device/sync/HandleCreationRequestFailureDbOperation;->executeWithDB(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->close()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->close()V

    throw v1
.end method
