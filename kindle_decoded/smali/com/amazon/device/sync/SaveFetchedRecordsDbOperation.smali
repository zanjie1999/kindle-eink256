.class final Lcom/amazon/device/sync/SaveFetchedRecordsDbOperation;
.super Ljava/lang/Object;
.source "SaveFetchedRecordsDbOperation.java"


# instance fields
.field private final mAccountId:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mDatasetRPC:Lcom/amazon/device/sync/rpc/DatasetRPC;

.field private final mDeletedRecords:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/amazon/whispersync/Record;",
            ">;"
        }
    .end annotation
.end field

.field private mKnownRecords:Lcom/amazon/device/sync/LoadRecordsDbOperation$CachedRecords;

.field private final mLinks:Lcom/amazon/whispersync/GetRecordsLinks;

.field private final mNewOrModifiedRecords:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/amazon/whispersync/Record;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/amazon/device/sync/rpc/DatasetRPC;Ljava/util/Set;Ljava/util/Set;Lcom/amazon/whispersync/GetRecordsLinks;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/amazon/device/sync/rpc/DatasetRPC;",
            "Ljava/util/Set<",
            "Lcom/amazon/whispersync/Record;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/amazon/whispersync/Record;",
            ">;",
            "Lcom/amazon/whispersync/GetRecordsLinks;",
            ")V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/amazon/device/sync/SaveFetchedRecordsDbOperation;->mContext:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/amazon/device/sync/SaveFetchedRecordsDbOperation;->mAccountId:Ljava/lang/String;

    .line 40
    iput-object p3, p0, Lcom/amazon/device/sync/SaveFetchedRecordsDbOperation;->mDatasetRPC:Lcom/amazon/device/sync/rpc/DatasetRPC;

    .line 41
    iput-object p4, p0, Lcom/amazon/device/sync/SaveFetchedRecordsDbOperation;->mDeletedRecords:Ljava/util/Set;

    .line 42
    iput-object p5, p0, Lcom/amazon/device/sync/SaveFetchedRecordsDbOperation;->mNewOrModifiedRecords:Ljava/util/Set;

    .line 43
    iput-object p6, p0, Lcom/amazon/device/sync/SaveFetchedRecordsDbOperation;->mLinks:Lcom/amazon/whispersync/GetRecordsLinks;

    return-void
.end method

.method private constructEntryFromRecord(Lcom/amazon/whispersync/Record;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/Record;",
            ")",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 185
    new-instance v0, Lcom/amazon/device/sync/SaveFetchedRecordsDbOperation$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/device/sync/SaveFetchedRecordsDbOperation$1;-><init>(Lcom/amazon/device/sync/SaveFetchedRecordsDbOperation;Lcom/amazon/whispersync/Record;)V

    return-object v0
.end method

.method private deleteConflictedValuesWhichMatchServerValues(Lcom/amazon/device/sync/ConflictRecordsTable;)V
    .locals 6

    .line 243
    invoke-virtual {p1}, Lcom/amazon/device/sync/RecordsTable;->getRecords()Ljava/util/Map;

    move-result-object v0

    .line 244
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 246
    iget-object v2, p0, Lcom/amazon/device/sync/SaveFetchedRecordsDbOperation;->mNewOrModifiedRecords:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/whispersync/Record;

    .line 248
    invoke-virtual {v3}, Lcom/amazon/whispersync/Record;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/whispersync/Record;

    if-eqz v4, :cond_0

    .line 249
    invoke-virtual {v3}, Lcom/amazon/whispersync/Record;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/amazon/whispersync/Record;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 252
    invoke-virtual {v3}, Lcom/amazon/whispersync/Record;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 256
    :cond_1
    invoke-virtual {p1, v1}, Lcom/amazon/device/sync/RecordsTable;->bulkDelete(Ljava/util/Collection;)I

    return-void
.end method

.method private executeWithDB(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;)V
    .locals 7

    .line 63
    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->beginTransaction()V

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/amazon/device/sync/SaveFetchedRecordsDbOperation;->mDatasetRPC:Lcom/amazon/device/sync/rpc/DatasetRPC;

    invoke-virtual {v0}, Lcom/amazon/device/sync/rpc/DatasetRPC;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/device/sync/NamespacesTable;->getIdOrCreate(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;)J

    move-result-wide v4

    .line 67
    iget-object v0, p0, Lcom/amazon/device/sync/SaveFetchedRecordsDbOperation;->mDatasetRPC:Lcom/amazon/device/sync/rpc/DatasetRPC;

    invoke-virtual {v0}, Lcom/amazon/device/sync/rpc/DatasetRPC;->getNamespace()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/device/sync/SaveFetchedRecordsDbOperation;->mDatasetRPC:Lcom/amazon/device/sync/rpc/DatasetRPC;

    invoke-virtual {v1}, Lcom/amazon/device/sync/rpc/DatasetRPC;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v4, v5, v1}, Lcom/amazon/device/sync/SnapshotDatasetsTable;->getId(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;JLjava/lang/String;)J

    move-result-wide v0

    .line 70
    new-instance v2, Lcom/amazon/device/sync/SnapshotRecordsTable;

    invoke-direct {v2, p1, v0, v1}, Lcom/amazon/device/sync/SnapshotRecordsTable;-><init>(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;J)V

    .line 71
    invoke-direct {p0, v2}, Lcom/amazon/device/sync/SaveFetchedRecordsDbOperation;->saveDeleteRecords(Lcom/amazon/device/sync/SnapshotRecordsTable;)Ljava/util/Map;

    .line 72
    invoke-direct {p0, v2}, Lcom/amazon/device/sync/SaveFetchedRecordsDbOperation;->saveNewAndModifiedRecords(Lcom/amazon/device/sync/SnapshotRecordsTable;)Ljava/util/Map;

    .line 74
    new-instance v2, Lcom/amazon/device/sync/ConflictRecordsTable;

    invoke-direct {v2, p1, v0, v1}, Lcom/amazon/device/sync/ConflictRecordsTable;-><init>(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;J)V

    .line 75
    invoke-direct {p0, v2}, Lcom/amazon/device/sync/SaveFetchedRecordsDbOperation;->deleteConflictedValuesWhichMatchServerValues(Lcom/amazon/device/sync/ConflictRecordsTable;)V

    .line 77
    iget-object v3, p0, Lcom/amazon/device/sync/SaveFetchedRecordsDbOperation;->mDatasetRPC:Lcom/amazon/device/sync/rpc/DatasetRPC;

    iget-object v6, p0, Lcom/amazon/device/sync/SaveFetchedRecordsDbOperation;->mLinks:Lcom/amazon/whispersync/GetRecordsLinks;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/amazon/device/sync/SaveFetchedRecordsDbOperation;->saveToDB(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Lcom/amazon/device/sync/rpc/DatasetRPC;JLcom/amazon/whispersync/GetRecordsLinks;)V

    .line 79
    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->endTransaction()V

    .line 86
    invoke-direct {p0}, Lcom/amazon/device/sync/SaveFetchedRecordsDbOperation;->notifyAboutChanges()V

    return-void

    :catchall_0
    move-exception v0

    .line 83
    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->endTransaction()V

    throw v0
.end method

.method private notifyAboutChanges()V
    .locals 6

    .line 127
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 128
    iget-object v1, p0, Lcom/amazon/device/sync/SaveFetchedRecordsDbOperation;->mDeletedRecords:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/whispersync/Record;

    .line 130
    iget-object v3, p0, Lcom/amazon/device/sync/SaveFetchedRecordsDbOperation;->mKnownRecords:Lcom/amazon/device/sync/LoadRecordsDbOperation$CachedRecords;

    invoke-virtual {v3}, Lcom/amazon/device/sync/LoadRecordsDbOperation$CachedRecords;->getBaseRecords()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2}, Lcom/amazon/whispersync/Record;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/whispersync/Record;

    .line 133
    iget-object v4, p0, Lcom/amazon/device/sync/SaveFetchedRecordsDbOperation;->mKnownRecords:Lcom/amazon/device/sync/LoadRecordsDbOperation$CachedRecords;

    invoke-virtual {v4}, Lcom/amazon/device/sync/LoadRecordsDbOperation$CachedRecords;->getPendingRecordKeys()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v2}, Lcom/amazon/whispersync/Record;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/amazon/whispersync/Record;->isIsDeleted()Z

    move-result v3

    if-nez v3, :cond_0

    .line 136
    invoke-direct {p0, v2}, Lcom/amazon/device/sync/SaveFetchedRecordsDbOperation;->constructEntryFromRecord(Lcom/amazon/whispersync/Record;)Ljava/util/Map$Entry;

    move-result-object v3

    .line 137
    iget-object v4, p0, Lcom/amazon/device/sync/SaveFetchedRecordsDbOperation;->mKnownRecords:Lcom/amazon/device/sync/LoadRecordsDbOperation$CachedRecords;

    invoke-virtual {v4}, Lcom/amazon/device/sync/LoadRecordsDbOperation$CachedRecords;->getBaseRecords()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v2}, Lcom/amazon/whispersync/Record;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/whispersync/Record;

    invoke-direct {p0, v2}, Lcom/amazon/device/sync/SaveFetchedRecordsDbOperation;->constructEntryFromRecord(Lcom/amazon/whispersync/Record;)Ljava/util/Map$Entry;

    move-result-object v2

    .line 139
    new-instance v4, Lcom/amazon/device/sync/Change;

    sget-object v5, Lcom/amazon/device/sync/Change$Type;->DELETED:Lcom/amazon/device/sync/Change$Type;

    invoke-direct {v4, v2, v3, v5}, Lcom/amazon/device/sync/Change;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/amazon/device/sync/Change$Type;)V

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 143
    :cond_1
    iget-object v1, p0, Lcom/amazon/device/sync/SaveFetchedRecordsDbOperation;->mNewOrModifiedRecords:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/whispersync/Record;

    .line 146
    iget-object v3, p0, Lcom/amazon/device/sync/SaveFetchedRecordsDbOperation;->mKnownRecords:Lcom/amazon/device/sync/LoadRecordsDbOperation$CachedRecords;

    invoke-virtual {v3}, Lcom/amazon/device/sync/LoadRecordsDbOperation$CachedRecords;->getPendingRecordKeys()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2}, Lcom/amazon/whispersync/Record;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 148
    invoke-direct {p0, v2}, Lcom/amazon/device/sync/SaveFetchedRecordsDbOperation;->constructEntryFromRecord(Lcom/amazon/whispersync/Record;)Ljava/util/Map$Entry;

    move-result-object v3

    .line 149
    iget-object v4, p0, Lcom/amazon/device/sync/SaveFetchedRecordsDbOperation;->mKnownRecords:Lcom/amazon/device/sync/LoadRecordsDbOperation$CachedRecords;

    invoke-virtual {v4}, Lcom/amazon/device/sync/LoadRecordsDbOperation$CachedRecords;->getBaseRecords()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v2}, Lcom/amazon/whispersync/Record;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/whispersync/Record;

    if-nez v4, :cond_3

    .line 153
    new-instance v2, Lcom/amazon/whispersync/Record;

    invoke-direct {v2}, Lcom/amazon/whispersync/Record;-><init>()V

    .line 155
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/amazon/whispersync/Record;->setKey(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 156
    invoke-virtual {v2, v4}, Lcom/amazon/whispersync/Record;->setValue(Ljava/lang/String;)V

    const/4 v4, 0x1

    .line 157
    invoke-virtual {v2, v4}, Lcom/amazon/whispersync/Record;->setIsDeleted(Z)V

    .line 159
    new-instance v4, Lcom/amazon/device/sync/Change;

    invoke-direct {p0, v2}, Lcom/amazon/device/sync/SaveFetchedRecordsDbOperation;->constructEntryFromRecord(Lcom/amazon/whispersync/Record;)Ljava/util/Map$Entry;

    move-result-object v2

    sget-object v5, Lcom/amazon/device/sync/Change$Type;->ADDED:Lcom/amazon/device/sync/Change$Type;

    invoke-direct {v4, v2, v3, v5}, Lcom/amazon/device/sync/Change;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/amazon/device/sync/Change$Type;)V

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 162
    :cond_3
    invoke-virtual {v4}, Lcom/amazon/whispersync/Record;->isIsDeleted()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 164
    invoke-direct {p0, v4}, Lcom/amazon/device/sync/SaveFetchedRecordsDbOperation;->constructEntryFromRecord(Lcom/amazon/whispersync/Record;)Ljava/util/Map$Entry;

    move-result-object v2

    .line 165
    new-instance v4, Lcom/amazon/device/sync/Change;

    sget-object v5, Lcom/amazon/device/sync/Change$Type;->ADDED:Lcom/amazon/device/sync/Change$Type;

    invoke-direct {v4, v2, v3, v5}, Lcom/amazon/device/sync/Change;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/amazon/device/sync/Change$Type;)V

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 168
    :cond_4
    invoke-virtual {v4}, Lcom/amazon/whispersync/Record;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/amazon/whispersync/Record;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 170
    invoke-direct {p0, v4}, Lcom/amazon/device/sync/SaveFetchedRecordsDbOperation;->constructEntryFromRecord(Lcom/amazon/whispersync/Record;)Ljava/util/Map$Entry;

    move-result-object v2

    .line 171
    new-instance v4, Lcom/amazon/device/sync/Change;

    sget-object v5, Lcom/amazon/device/sync/Change$Type;->UPDATED:Lcom/amazon/device/sync/Change$Type;

    invoke-direct {v4, v2, v3, v5}, Lcom/amazon/device/sync/Change;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/amazon/device/sync/Change$Type;)V

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 177
    :cond_5
    iget-object v1, p0, Lcom/amazon/device/sync/SaveFetchedRecordsDbOperation;->mAccountId:Ljava/lang/String;

    new-instance v2, Lcom/amazon/device/sync/SyncableDatasetInfo;

    iget-object v3, p0, Lcom/amazon/device/sync/SaveFetchedRecordsDbOperation;->mDatasetRPC:Lcom/amazon/device/sync/rpc/DatasetRPC;

    invoke-virtual {v3}, Lcom/amazon/device/sync/rpc/DatasetRPC;->getNamespace()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/amazon/device/sync/DatasetType;->StringMap:Lcom/amazon/device/sync/DatasetType;

    iget-object v5, p0, Lcom/amazon/device/sync/SaveFetchedRecordsDbOperation;->mDatasetRPC:Lcom/amazon/device/sync/rpc/DatasetRPC;

    invoke-virtual {v5}, Lcom/amazon/device/sync/rpc/DatasetRPC;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/amazon/device/sync/SyncableDatasetInfo;-><init>(Ljava/lang/String;Lcom/amazon/device/sync/DatasetType;Ljava/lang/String;)V

    invoke-static {v1, v2, v0}, Lcom/amazon/device/sync/Notifications;->notifyChanges(Ljava/lang/String;Lcom/amazon/device/sync/SyncableDatasetInfo;Ljava/util/Set;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private populateKnownRecords(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;)V
    .locals 5

    .line 119
    new-instance v0, Lcom/amazon/device/sync/LoadRecordsDbOperation;

    iget-object v1, p0, Lcom/amazon/device/sync/SaveFetchedRecordsDbOperation;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/amazon/device/sync/SaveFetchedRecordsDbOperation;->mAccountId:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/device/sync/SaveFetchedRecordsDbOperation;->mDatasetRPC:Lcom/amazon/device/sync/rpc/DatasetRPC;

    invoke-virtual {v3}, Lcom/amazon/device/sync/rpc/DatasetRPC;->getNamespace()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/device/sync/SaveFetchedRecordsDbOperation;->mDatasetRPC:Lcom/amazon/device/sync/rpc/DatasetRPC;

    invoke-virtual {v4}, Lcom/amazon/device/sync/rpc/DatasetRPC;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/device/sync/LoadRecordsDbOperation;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-virtual {v0, p1}, Lcom/amazon/device/sync/LoadRecordsDbOperation;->executeWithDB(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;)Lcom/amazon/device/sync/LoadRecordsDbOperation$CachedRecords;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/device/sync/SaveFetchedRecordsDbOperation;->mKnownRecords:Lcom/amazon/device/sync/LoadRecordsDbOperation$CachedRecords;

    return-void
.end method

.method private saveDeleteRecords(Lcom/amazon/device/sync/SnapshotRecordsTable;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/device/sync/SnapshotRecordsTable;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/amazon/device/sync/SaveFetchedRecordsDbOperation;->mDeletedRecords:Ljava/util/Set;

    invoke-virtual {p1, v0}, Lcom/amazon/device/sync/SnapshotRecordsTable;->bulkUpsert(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method private saveNewAndModifiedRecords(Lcom/amazon/device/sync/SnapshotRecordsTable;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/device/sync/SnapshotRecordsTable;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/amazon/device/sync/SaveFetchedRecordsDbOperation;->mNewOrModifiedRecords:Ljava/util/Set;

    invoke-virtual {p1, v0}, Lcom/amazon/device/sync/SnapshotRecordsTable;->bulkUpsert(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method private saveToDB(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Lcom/amazon/device/sync/rpc/DatasetRPC;JLcom/amazon/whispersync/GetRecordsLinks;)V
    .locals 2

    .line 92
    new-instance v0, Lcom/amazon/device/sync/SnapshotDatasetsTable;

    invoke-virtual {p2}, Lcom/amazon/device/sync/rpc/DatasetRPC;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1, p3, p4}, Lcom/amazon/device/sync/SnapshotDatasetsTable;-><init>(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;J)V

    .line 95
    invoke-virtual {p2}, Lcom/amazon/device/sync/rpc/DatasetRPC;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5}, Lcom/amazon/whispersync/PaginationLinks;->getNext()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_0

    invoke-virtual {p5}, Lcom/amazon/whispersync/GetRecordsLinks;->getFuture()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    invoke-virtual {p5}, Lcom/amazon/whispersync/PaginationLinks;->getNext()Ljava/lang/String;

    move-result-object p3

    :goto_0
    invoke-virtual {v0, p1, p3}, Lcom/amazon/device/sync/SnapshotDatasetsTable;->updateRecordsLink(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-virtual {p2}, Lcom/amazon/device/sync/rpc/DatasetRPC;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5}, Lcom/amazon/whispersync/GetRecordsLinks;->getDataset()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p1, p3}, Lcom/amazon/device/sync/SnapshotDatasetsTable;->updateSelfLink(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-virtual {p5}, Lcom/amazon/whispersync/PaginationLinks;->getNext()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    .line 103
    invoke-virtual {p2}, Lcom/amazon/device/sync/rpc/DatasetRPC;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/device/sync/SnapshotDatasetsTable;->markAsDownloaded(Ljava/lang/String;)I

    :cond_1
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/amazon/device/sync/SaveFetchedRecordsDbOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/amazon/device/sync/SaveFetchedRecordsDbOperation;->mAccountId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/device/sync/SyncDb;->open(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;

    move-result-object v0

    .line 52
    :try_start_0
    invoke-direct {p0, v0}, Lcom/amazon/device/sync/SaveFetchedRecordsDbOperation;->populateKnownRecords(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;)V

    .line 53
    invoke-direct {p0, v0}, Lcom/amazon/device/sync/SaveFetchedRecordsDbOperation;->executeWithDB(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->close()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->close()V

    throw v1
.end method
