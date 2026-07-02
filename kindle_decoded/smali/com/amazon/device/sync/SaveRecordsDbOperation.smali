.class final Lcom/amazon/device/sync/SaveRecordsDbOperation;
.super Ljava/lang/Object;
.source "SaveRecordsDbOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/sync/SaveRecordsDbOperation$Diff;
    }
.end annotation


# instance fields
.field private final mAccountId:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mDiff:Lcom/amazon/device/sync/SaveRecordsDbOperation$Diff;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/amazon/device/sync/SaveRecordsDbOperation$Diff;)V
    .locals 4

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-class v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Context is required"

    invoke-static {p1, v0, v3, v2}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    const-class v0, Ljava/lang/IllegalArgumentException;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "AccountId is required"

    invoke-static {p2, v0, v3, v2}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    const-class v0, Ljava/lang/IllegalArgumentException;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Diff is required"

    invoke-static {p3, v0, v2, v1}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    iput-object p1, p0, Lcom/amazon/device/sync/SaveRecordsDbOperation;->mContext:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/amazon/device/sync/SaveRecordsDbOperation;->mAccountId:Ljava/lang/String;

    .line 48
    iput-object p3, p0, Lcom/amazon/device/sync/SaveRecordsDbOperation;->mDiff:Lcom/amazon/device/sync/SaveRecordsDbOperation$Diff;

    return-void
.end method

.method private static createPendingRecordsTable(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Lcom/amazon/device/sync/SaveRecordsDbOperation$Diff;J)Lcom/amazon/device/sync/PendingRecordsTable;
    .locals 2

    .line 101
    new-instance v0, Lcom/amazon/device/sync/PendingDatasetsTable;

    invoke-static {p1}, Lcom/amazon/device/sync/SaveRecordsDbOperation$Diff;->access$000(Lcom/amazon/device/sync/SaveRecordsDbOperation$Diff;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2, p3}, Lcom/amazon/device/sync/PendingDatasetsTable;-><init>(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;J)V

    .line 102
    invoke-static {p1}, Lcom/amazon/device/sync/SaveRecordsDbOperation$Diff;->access$100(Lcom/amazon/device/sync/SaveRecordsDbOperation$Diff;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/amazon/device/sync/DatasetsTable;->getId(Ljava/lang/String;)J

    move-result-wide p2

    .line 103
    invoke-static {p2, p3}, Lcom/amazon/device/sync/SyncDb;->isDatasetExist(J)Z

    move-result v1

    if-nez v1, :cond_0

    .line 105
    invoke-static {p1}, Lcom/amazon/device/sync/SaveRecordsDbOperation$Diff;->access$100(Lcom/amazon/device/sync/SaveRecordsDbOperation$Diff;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/device/sync/PendingDatasetsTable;->upsert(Ljava/lang/String;)J

    move-result-wide p2

    .line 107
    :cond_0
    new-instance p1, Lcom/amazon/device/sync/PendingRecordsTable;

    invoke-direct {p1, p0, p2, p3}, Lcom/amazon/device/sync/PendingRecordsTable;-><init>(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;J)V

    return-object p1
.end method

.method private executeWithDB(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;)V
    .locals 4

    .line 67
    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->beginTransaction()V

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/amazon/device/sync/SaveRecordsDbOperation;->mDiff:Lcom/amazon/device/sync/SaveRecordsDbOperation$Diff;

    invoke-static {v0}, Lcom/amazon/device/sync/SaveRecordsDbOperation$Diff;->access$000(Lcom/amazon/device/sync/SaveRecordsDbOperation$Diff;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/device/sync/NamespacesTable;->getIdOrCreate(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;)J

    move-result-wide v0

    .line 73
    iget-object v2, p0, Lcom/amazon/device/sync/SaveRecordsDbOperation;->mDiff:Lcom/amazon/device/sync/SaveRecordsDbOperation$Diff;

    invoke-static {v2}, Lcom/amazon/device/sync/SaveRecordsDbOperation$Diff;->access$000(Lcom/amazon/device/sync/SaveRecordsDbOperation$Diff;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/device/sync/SaveRecordsDbOperation;->mDiff:Lcom/amazon/device/sync/SaveRecordsDbOperation$Diff;

    invoke-static {v3}, Lcom/amazon/device/sync/SaveRecordsDbOperation$Diff;->access$100(Lcom/amazon/device/sync/SaveRecordsDbOperation$Diff;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v2, v0, v1, v3}, Lcom/amazon/device/sync/PendingDatasetsTable;->getId(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;JLjava/lang/String;)J

    move-result-wide v2

    .line 75
    invoke-static {v2, v3}, Lcom/amazon/device/sync/SyncDb;->isDatasetExist(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 80
    iget-object v2, p0, Lcom/amazon/device/sync/SaveRecordsDbOperation;->mDiff:Lcom/amazon/device/sync/SaveRecordsDbOperation$Diff;

    invoke-static {p1, v2, v0, v1}, Lcom/amazon/device/sync/SaveRecordsDbOperation;->createPendingRecordsTable(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Lcom/amazon/device/sync/SaveRecordsDbOperation$Diff;J)Lcom/amazon/device/sync/PendingRecordsTable;

    move-result-object v2

    .line 81
    iget-object v3, p0, Lcom/amazon/device/sync/SaveRecordsDbOperation;->mDiff:Lcom/amazon/device/sync/SaveRecordsDbOperation$Diff;

    invoke-static {v3}, Lcom/amazon/device/sync/SaveRecordsDbOperation$Diff;->access$200(Lcom/amazon/device/sync/SaveRecordsDbOperation$Diff;)Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazon/device/sync/PendingRecordsTable;->bulkUpsert(Ljava/util/Collection;)Ljava/util/List;

    .line 83
    iget-object v2, p0, Lcom/amazon/device/sync/SaveRecordsDbOperation;->mDiff:Lcom/amazon/device/sync/SaveRecordsDbOperation$Diff;

    invoke-static {v2}, Lcom/amazon/device/sync/SaveRecordsDbOperation$Diff;->access$000(Lcom/amazon/device/sync/SaveRecordsDbOperation$Diff;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/device/sync/SaveRecordsDbOperation;->mDiff:Lcom/amazon/device/sync/SaveRecordsDbOperation$Diff;

    invoke-static {v3}, Lcom/amazon/device/sync/SaveRecordsDbOperation$Diff;->access$100(Lcom/amazon/device/sync/SaveRecordsDbOperation$Diff;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v2, v0, v1, v3}, Lcom/amazon/device/sync/SnapshotDatasetsTable;->getId(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;JLjava/lang/String;)J

    move-result-wide v0

    .line 84
    invoke-static {v0, v1}, Lcom/amazon/device/sync/SyncDb;->isDatasetExist(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 86
    iget-object v2, p0, Lcom/amazon/device/sync/SaveRecordsDbOperation;->mDiff:Lcom/amazon/device/sync/SaveRecordsDbOperation$Diff;

    invoke-static {v2}, Lcom/amazon/device/sync/SaveRecordsDbOperation$Diff;->access$200(Lcom/amazon/device/sync/SaveRecordsDbOperation$Diff;)Ljava/util/Collection;

    move-result-object v2

    invoke-static {p1, v2, v0, v1}, Lcom/amazon/device/sync/SaveRecordsDbOperation;->removeCommittedConflicts(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/util/Collection;J)V

    .line 89
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->endTransaction()V

    return-void

    .line 77
    :cond_1
    :try_start_1
    new-instance v0, Lcom/amazon/whispersync/ResourceNotAvailableException;

    invoke-direct {v0}, Lcom/amazon/whispersync/ResourceNotAvailableException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    .line 93
    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->endTransaction()V

    throw v0
.end method

.method private static removeCommittedConflicts(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/util/Collection;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;",
            "Ljava/util/Collection<",
            "Lcom/amazon/whispersync/Record;",
            ">;J)V"
        }
    .end annotation

    .line 114
    new-instance v0, Lcom/amazon/device/sync/ConflictRecordsTable;

    invoke-direct {v0, p0, p2, p3}, Lcom/amazon/device/sync/ConflictRecordsTable;-><init>(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;J)V

    .line 116
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 117
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/whispersync/Record;

    .line 119
    invoke-virtual {p2}, Lcom/amazon/whispersync/Record;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 122
    :cond_0
    invoke-virtual {v0, p0}, Lcom/amazon/device/sync/RecordsTable;->bulkDelete(Ljava/util/Collection;)I

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/amazon/device/sync/SaveRecordsDbOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/amazon/device/sync/SaveRecordsDbOperation;->mAccountId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/device/sync/SyncDb;->open(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;

    move-result-object v0

    .line 57
    :try_start_0
    invoke-direct {p0, v0}, Lcom/amazon/device/sync/SaveRecordsDbOperation;->executeWithDB(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->close()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->close()V

    throw v1
.end method
