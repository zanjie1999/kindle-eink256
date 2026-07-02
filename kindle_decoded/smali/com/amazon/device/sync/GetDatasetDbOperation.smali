.class final Lcom/amazon/device/sync/GetDatasetDbOperation;
.super Ljava/lang/Object;
.source "GetDatasetDbOperation.java"


# instance fields
.field private final mAccountId:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mDatasetName:Ljava/lang/String;

.field private final mNamespace:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/amazon/device/sync/GetDatasetDbOperation;->mContext:Landroid/content/Context;

    .line 23
    iput-object p2, p0, Lcom/amazon/device/sync/GetDatasetDbOperation;->mAccountId:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcom/amazon/device/sync/GetDatasetDbOperation;->mNamespace:Ljava/lang/String;

    .line 25
    iput-object p4, p0, Lcom/amazon/device/sync/GetDatasetDbOperation;->mDatasetName:Ljava/lang/String;

    return-void
.end method

.method private executeWithDB(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;)Lcom/amazon/whispersync/Dataset;
    .locals 4

    .line 44
    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->beginTransaction()V

    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/amazon/device/sync/GetDatasetDbOperation;->mNamespace:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/amazon/device/sync/NamespacesTable;->getIdOrCreate(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;)J

    move-result-wide v0

    .line 48
    new-instance v2, Lcom/amazon/device/sync/SnapshotDatasetsTable;

    iget-object v3, p0, Lcom/amazon/device/sync/GetDatasetDbOperation;->mNamespace:Ljava/lang/String;

    invoke-direct {v2, p1, v3, v0, v1}, Lcom/amazon/device/sync/SnapshotDatasetsTable;-><init>(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;J)V

    .line 49
    iget-object v0, p0, Lcom/amazon/device/sync/GetDatasetDbOperation;->mDatasetName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/amazon/device/sync/SnapshotDatasetsTable;->getDataset(Ljava/lang/String;)Lcom/amazon/whispersync/Dataset;

    move-result-object v0

    .line 50
    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->endTransaction()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->endTransaction()V

    throw v0
.end method


# virtual methods
.method public execute()Lcom/amazon/whispersync/Dataset;
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/amazon/device/sync/GetDatasetDbOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/amazon/device/sync/GetDatasetDbOperation;->mAccountId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/device/sync/SyncDb;->open(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;

    move-result-object v0

    .line 34
    :try_start_0
    invoke-direct {p0, v0}, Lcom/amazon/device/sync/GetDatasetDbOperation;->executeWithDB(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;)Lcom/amazon/whispersync/Dataset;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->close()V

    throw v1
.end method
