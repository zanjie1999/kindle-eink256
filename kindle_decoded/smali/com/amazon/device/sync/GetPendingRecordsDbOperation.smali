.class final Lcom/amazon/device/sync/GetPendingRecordsDbOperation;
.super Ljava/lang/Object;
.source "GetPendingRecordsDbOperation.java"


# instance fields
.field private final mAccountId:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mDatasetName:Ljava/lang/String;

.field private final mNamespace:Ljava/lang/String;

.field private final mOperationId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/amazon/device/sync/GetPendingRecordsDbOperation;->mContext:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lcom/amazon/device/sync/GetPendingRecordsDbOperation;->mAccountId:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcom/amazon/device/sync/GetPendingRecordsDbOperation;->mNamespace:Ljava/lang/String;

    .line 32
    iput-object p4, p0, Lcom/amazon/device/sync/GetPendingRecordsDbOperation;->mDatasetName:Ljava/lang/String;

    .line 33
    iput p5, p0, Lcom/amazon/device/sync/GetPendingRecordsDbOperation;->mOperationId:I

    return-void
.end method

.method private executeWithDB(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/whispersync/Record;",
            ">;"
        }
    .end annotation

    .line 52
    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->beginTransaction()V

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/amazon/device/sync/GetPendingRecordsDbOperation;->mNamespace:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/amazon/device/sync/NamespacesTable;->getIdOrCreate(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;)J

    move-result-wide v0

    .line 57
    iget-object v2, p0, Lcom/amazon/device/sync/GetPendingRecordsDbOperation;->mNamespace:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/device/sync/GetPendingRecordsDbOperation;->mDatasetName:Ljava/lang/String;

    invoke-static {p1, v2, v0, v1, v3}, Lcom/amazon/device/sync/SnapshotDatasetsTable;->getId(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;JLjava/lang/String;)J

    move-result-wide v6

    .line 58
    iget-object v2, p0, Lcom/amazon/device/sync/GetPendingRecordsDbOperation;->mNamespace:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/device/sync/GetPendingRecordsDbOperation;->mDatasetName:Ljava/lang/String;

    invoke-static {p1, v2, v0, v1, v3}, Lcom/amazon/device/sync/PendingDatasetsTable;->getId(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;JLjava/lang/String;)J

    move-result-wide v8

    move-object v4, p0

    move-object v5, p1

    .line 60
    invoke-direct/range {v4 .. v9}, Lcom/amazon/device/sync/GetPendingRecordsDbOperation;->getPendingRecords(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;JJ)Ljava/util/Map;

    move-result-object v0

    .line 62
    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->endTransaction()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->endTransaction()V

    throw v0
.end method

.method private getPendingRecords(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;JJ)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;",
            "JJ)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/whispersync/Record;",
            ">;"
        }
    .end annotation

    .line 74
    invoke-static {p4, p5}, Lcom/amazon/device/sync/SyncDb;->isDatasetExist(J)Z

    move-result p2

    if-nez p2, :cond_0

    .line 76
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 79
    :cond_0
    new-instance p2, Lcom/amazon/device/sync/PendingRecordsTable;

    invoke-direct {p2, p1, p4, p5}, Lcom/amazon/device/sync/PendingRecordsTable;-><init>(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;J)V

    .line 80
    invoke-virtual {p2}, Lcom/amazon/device/sync/PendingRecordsTable;->getRecordsNotMarkedAsInProgress()Ljava/util/Map;

    move-result-object p1

    .line 81
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_1

    .line 83
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p3

    iget p4, p0, Lcom/amazon/device/sync/GetPendingRecordsDbOperation;->mOperationId:I

    invoke-virtual {p2, p3, p4}, Lcom/amazon/device/sync/PendingRecordsTable;->markRecordsAsInProgress(Ljava/util/Collection;I)V

    :cond_1
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
            "Lcom/amazon/whispersync/Record;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/amazon/device/sync/GetPendingRecordsDbOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/amazon/device/sync/GetPendingRecordsDbOperation;->mAccountId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/device/sync/SyncDb;->open(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;

    move-result-object v0

    .line 42
    :try_start_0
    invoke-direct {p0, v0}, Lcom/amazon/device/sync/GetPendingRecordsDbOperation;->executeWithDB(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;)Ljava/util/Map;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->close()V

    throw v1
.end method
