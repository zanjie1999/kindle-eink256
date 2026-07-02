.class final Lcom/amazon/device/sync/GetDatasetsThatNeedDownloadDbOperation;
.super Ljava/lang/Object;
.source "GetDatasetsThatNeedDownloadDbOperation.java"


# instance fields
.field private final mAccountId:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mNamespace:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/amazon/device/sync/GetDatasetsThatNeedDownloadDbOperation;->mContext:Landroid/content/Context;

    .line 22
    iput-object p2, p0, Lcom/amazon/device/sync/GetDatasetsThatNeedDownloadDbOperation;->mAccountId:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/amazon/device/sync/GetDatasetsThatNeedDownloadDbOperation;->mNamespace:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public execute()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/whispersync/Dataset;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/amazon/device/sync/GetDatasetsThatNeedDownloadDbOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/amazon/device/sync/GetDatasetsThatNeedDownloadDbOperation;->mAccountId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/device/sync/SyncDb;->open(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;

    move-result-object v0

    .line 32
    :try_start_0
    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->beginTransaction()V

    .line 34
    iget-object v1, p0, Lcom/amazon/device/sync/GetDatasetsThatNeedDownloadDbOperation;->mNamespace:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/device/sync/NamespacesTable;->getIdOrCreate(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;)J

    move-result-wide v1

    .line 35
    new-instance v3, Lcom/amazon/device/sync/SnapshotDatasetsTable;

    iget-object v4, p0, Lcom/amazon/device/sync/GetDatasetsThatNeedDownloadDbOperation;->mNamespace:Ljava/lang/String;

    invoke-direct {v3, v0, v4, v1, v2}, Lcom/amazon/device/sync/SnapshotDatasetsTable;-><init>(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;J)V

    invoke-virtual {v3}, Lcom/amazon/device/sync/SnapshotDatasetsTable;->getDatasetsThatNeedDownload()Ljava/util/Map;

    move-result-object v1

    .line 38
    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->setTransactionSuccessful()V

    .line 39
    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->endTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->close()V

    throw v1
.end method
