.class final Lcom/amazon/device/sync/SaveUpdatedRecordsDbOperation;
.super Ljava/lang/Object;
.source "SaveUpdatedRecordsDbOperation.java"


# instance fields
.field private final mAccountId:Ljava/lang/String;

.field private final mConflictedRecords:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/whispersync/Conflict;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDatasetName:Ljava/lang/String;

.field private mKnownRecords:Lcom/amazon/device/sync/LoadRecordsDbOperation$CachedRecords;

.field private final mLinks:Lcom/amazon/whispersync/PostUpdatesLinks;

.field private final mNamespace:Ljava/lang/String;

.field private final mOperationId:I

.field private final mResolvedRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/Record;",
            ">;"
        }
    .end annotation
.end field

.field private final mSavedRecords:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/whispersync/Record;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/util/Map;ILcom/amazon/whispersync/PostUpdatesLinks;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/whispersync/Record;",
            ">;",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/Record;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/whispersync/Conflict;",
            ">;I",
            "Lcom/amazon/whispersync/PostUpdatesLinks;",
            ")V"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/amazon/device/sync/SaveUpdatedRecordsDbOperation;->mContext:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/amazon/device/sync/SaveUpdatedRecordsDbOperation;->mAccountId:Ljava/lang/String;

    .line 48
    iput-object p3, p0, Lcom/amazon/device/sync/SaveUpdatedRecordsDbOperation;->mNamespace:Ljava/lang/String;

    .line 49
    iput-object p4, p0, Lcom/amazon/device/sync/SaveUpdatedRecordsDbOperation;->mDatasetName:Ljava/lang/String;

    .line 50
    iput-object p5, p0, Lcom/amazon/device/sync/SaveUpdatedRecordsDbOperation;->mSavedRecords:Ljava/util/Map;

    .line 51
    iput-object p6, p0, Lcom/amazon/device/sync/SaveUpdatedRecordsDbOperation;->mResolvedRecords:Ljava/util/List;

    .line 52
    iput-object p7, p0, Lcom/amazon/device/sync/SaveUpdatedRecordsDbOperation;->mConflictedRecords:Ljava/util/Map;

    .line 53
    iput p8, p0, Lcom/amazon/device/sync/SaveUpdatedRecordsDbOperation;->mOperationId:I

    .line 54
    iput-object p9, p0, Lcom/amazon/device/sync/SaveUpdatedRecordsDbOperation;->mLinks:Lcom/amazon/whispersync/PostUpdatesLinks;

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

    .line 111
    new-instance v0, Lcom/amazon/device/sync/SaveUpdatedRecordsDbOperation$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/device/sync/SaveUpdatedRecordsDbOperation$1;-><init>(Lcom/amazon/device/sync/SaveUpdatedRecordsDbOperation;Lcom/amazon/whispersync/Record;)V

    return-object v0
.end method

.method private executeWithDB(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;)Ljava/util/Set;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 169
    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->beginTransaction()V

    .line 173
    :try_start_0
    iget-object v0, p0, Lcom/amazon/device/sync/SaveUpdatedRecordsDbOperation;->mNamespace:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/amazon/device/sync/NamespacesTable;->getIdOrCreate(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;)J

    move-result-wide v0

    .line 174
    iget-object v2, p0, Lcom/amazon/device/sync/SaveUpdatedRecordsDbOperation;->mNamespace:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/device/sync/SaveUpdatedRecordsDbOperation;->mDatasetName:Ljava/lang/String;

    invoke-static {p1, v2, v0, v1, v3}, Lcom/amazon/device/sync/SnapshotDatasetsTable;->getId(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;JLjava/lang/String;)J

    move-result-wide v6

    .line 176
    new-instance v2, Lcom/amazon/device/sync/PendingDatasetsTable;

    iget-object v3, p0, Lcom/amazon/device/sync/SaveUpdatedRecordsDbOperation;->mNamespace:Ljava/lang/String;

    invoke-direct {v2, p1, v3, v0, v1}, Lcom/amazon/device/sync/PendingDatasetsTable;-><init>(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;J)V

    .line 177
    iget-object v0, p0, Lcom/amazon/device/sync/SaveUpdatedRecordsDbOperation;->mDatasetName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/amazon/device/sync/DatasetsTable;->getId(Ljava/lang/String;)J

    move-result-wide v0

    .line 179
    new-instance v2, Lcom/amazon/device/sync/PendingRecordsTable;

    invoke-direct {v2, p1, v0, v1}, Lcom/amazon/device/sync/PendingRecordsTable;-><init>(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;J)V

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/amazon/device/sync/SaveUpdatedRecordsDbOperation;->mSavedRecords:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 182
    iget-object v1, p0, Lcom/amazon/device/sync/SaveUpdatedRecordsDbOperation;->mResolvedRecords:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 183
    iget-object v1, p0, Lcom/amazon/device/sync/SaveUpdatedRecordsDbOperation;->mConflictedRecords:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/whispersync/Conflict;

    .line 185
    invoke-virtual {v3}, Lcom/amazon/whispersync/Conflict;->getCloud()Lcom/amazon/whispersync/Record;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 188
    :cond_0
    invoke-direct {p0, p1, v6, v7, v0}, Lcom/amazon/device/sync/SaveUpdatedRecordsDbOperation;->storeUpdatedRecordsToSnapshotRecordsTable(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;JLjava/util/List;)Ljava/util/Map;

    move-result-object v9

    .line 192
    invoke-direct {p0, v0, v2}, Lcom/amazon/device/sync/SaveUpdatedRecordsDbOperation;->removeUpdatedRecordsFromPending(Ljava/util/List;Lcom/amazon/device/sync/PendingRecordsTable;)V

    .line 194
    invoke-virtual {v2}, Lcom/amazon/device/sync/RecordsTable;->getRecords()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    move-object v4, p0

    move-object v5, p1

    move-object v8, v0

    .line 196
    invoke-direct/range {v4 .. v9}, Lcom/amazon/device/sync/SaveUpdatedRecordsDbOperation;->storeConflictedRecordsToConflictRecordsTable(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;JLjava/util/Set;Ljava/util/Map;)V

    .line 197
    iget-object v1, p0, Lcom/amazon/device/sync/SaveUpdatedRecordsDbOperation;->mNamespace:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/device/sync/SaveUpdatedRecordsDbOperation;->mDatasetName:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/device/sync/SaveUpdatedRecordsDbOperation;->mLinks:Lcom/amazon/whispersync/PostUpdatesLinks;

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/amazon/device/sync/SaveUpdatedRecordsDbOperation;->saveToDB(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whispersync/PostUpdatesLinks;)V

    .line 199
    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->endTransaction()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->endTransaction()V

    throw v0
.end method

.method private populateKnownRecords(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;)V
    .locals 5

    .line 76
    new-instance v0, Lcom/amazon/device/sync/LoadRecordsDbOperation;

    iget-object v1, p0, Lcom/amazon/device/sync/SaveUpdatedRecordsDbOperation;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/amazon/device/sync/SaveUpdatedRecordsDbOperation;->mAccountId:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/device/sync/SaveUpdatedRecordsDbOperation;->mNamespace:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazon/device/sync/SaveUpdatedRecordsDbOperation;->mDatasetName:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/device/sync/LoadRecordsDbOperation;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-virtual {v0, p1}, Lcom/amazon/device/sync/LoadRecordsDbOperation;->executeWithDB(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;)Lcom/amazon/device/sync/LoadRecordsDbOperation$CachedRecords;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/device/sync/SaveUpdatedRecordsDbOperation;->mKnownRecords:Lcom/amazon/device/sync/LoadRecordsDbOperation$CachedRecords;

    return-void
.end method

.method private removeUpdatedRecordsFromPending(Ljava/util/List;Lcom/amazon/device/sync/PendingRecordsTable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/Record;",
            ">;",
            "Lcom/amazon/device/sync/PendingRecordsTable;",
            ")V"
        }
    .end annotation

    .line 279
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 280
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/Record;

    .line 282
    invoke-virtual {v1}, Lcom/amazon/whispersync/Record;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 285
    :cond_0
    iget p1, p0, Lcom/amazon/device/sync/SaveUpdatedRecordsDbOperation;->mOperationId:I

    invoke-virtual {p2, v0, p1}, Lcom/amazon/device/sync/PendingRecordsTable;->bulkDeleteByOpId(Ljava/util/Collection;I)I

    return-void
.end method

.method private reportConflicts(Ljava/util/Set;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 84
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 87
    iget-object v1, p0, Lcom/amazon/device/sync/SaveUpdatedRecordsDbOperation;->mConflictedRecords:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 90
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 92
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/whispersync/Conflict;

    invoke-virtual {v3}, Lcom/amazon/whispersync/Conflict;->getCloud()Lcom/amazon/whispersync/Record;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/whispersync/Record;->isIsDeleted()Z

    move-result v3

    .line 93
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/whispersync/Conflict;

    invoke-virtual {v4}, Lcom/amazon/whispersync/Conflict;->getLocal()Lcom/amazon/whispersync/Record;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/whispersync/Record;->isIsDeleted()Z

    move-result v4

    .line 94
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/whispersync/Conflict;

    invoke-virtual {v5}, Lcom/amazon/whispersync/Conflict;->getLocal()Lcom/amazon/whispersync/Record;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/amazon/device/sync/SaveUpdatedRecordsDbOperation;->constructEntryFromRecord(Lcom/amazon/whispersync/Record;)Ljava/util/Map$Entry;

    move-result-object v5

    .line 96
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/whispersync/Conflict;

    invoke-virtual {v2}, Lcom/amazon/whispersync/Conflict;->getCloud()Lcom/amazon/whispersync/Record;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/amazon/device/sync/SaveUpdatedRecordsDbOperation;->constructEntryFromRecord(Lcom/amazon/whispersync/Record;)Ljava/util/Map$Entry;

    move-result-object v2

    .line 99
    new-instance v6, Lcom/amazon/device/sync/Conflict;

    invoke-direct {v6, v5, v4, v2, v3}, Lcom/amazon/device/sync/Conflict;-><init>(Ljava/lang/Object;ZLjava/lang/Object;Z)V

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 104
    :cond_1
    iget-object p1, p0, Lcom/amazon/device/sync/SaveUpdatedRecordsDbOperation;->mAccountId:Ljava/lang/String;

    new-instance v1, Lcom/amazon/device/sync/SyncableDatasetInfo;

    iget-object v2, p0, Lcom/amazon/device/sync/SaveUpdatedRecordsDbOperation;->mNamespace:Ljava/lang/String;

    sget-object v3, Lcom/amazon/device/sync/DatasetType;->StringMap:Lcom/amazon/device/sync/DatasetType;

    iget-object v4, p0, Lcom/amazon/device/sync/SaveUpdatedRecordsDbOperation;->mDatasetName:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/amazon/device/sync/SyncableDatasetInfo;-><init>(Ljava/lang/String;Lcom/amazon/device/sync/DatasetType;Ljava/lang/String;)V

    invoke-static {p1, v1, v0}, Lcom/amazon/device/sync/Notifications;->notifyConflicts(Ljava/lang/String;Lcom/amazon/device/sync/SyncableDatasetInfo;Ljava/util/Set;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private reportResolved(Ljava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 211
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 213
    iget-object v1, p0, Lcom/amazon/device/sync/SaveUpdatedRecordsDbOperation;->mResolvedRecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/whispersync/Record;

    .line 216
    invoke-virtual {v2}, Lcom/amazon/whispersync/Record;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 218
    invoke-direct {p0, v2}, Lcom/amazon/device/sync/SaveUpdatedRecordsDbOperation;->constructEntryFromRecord(Lcom/amazon/whispersync/Record;)Ljava/util/Map$Entry;

    move-result-object v3

    .line 219
    iget-object v4, p0, Lcom/amazon/device/sync/SaveUpdatedRecordsDbOperation;->mKnownRecords:Lcom/amazon/device/sync/LoadRecordsDbOperation$CachedRecords;

    invoke-virtual {v4}, Lcom/amazon/device/sync/LoadRecordsDbOperation$CachedRecords;->getBaseRecords()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v2}, Lcom/amazon/whispersync/Record;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/whispersync/Record;

    .line 221
    invoke-virtual {v2}, Lcom/amazon/whispersync/Record;->isIsDeleted()Z

    move-result v5

    if-nez v5, :cond_3

    if-nez v4, :cond_1

    .line 225
    new-instance v2, Lcom/amazon/whispersync/Record;

    invoke-direct {v2}, Lcom/amazon/whispersync/Record;-><init>()V

    .line 227
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/amazon/whispersync/Record;->setKey(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 228
    invoke-virtual {v2, v4}, Lcom/amazon/whispersync/Record;->setValue(Ljava/lang/String;)V

    const/4 v4, 0x1

    .line 229
    invoke-virtual {v2, v4}, Lcom/amazon/whispersync/Record;->setIsDeleted(Z)V

    .line 231
    new-instance v4, Lcom/amazon/device/sync/Change;

    invoke-direct {p0, v2}, Lcom/amazon/device/sync/SaveUpdatedRecordsDbOperation;->constructEntryFromRecord(Lcom/amazon/whispersync/Record;)Ljava/util/Map$Entry;

    move-result-object v2

    sget-object v5, Lcom/amazon/device/sync/Change$Type;->ADDED:Lcom/amazon/device/sync/Change$Type;

    invoke-direct {v4, v2, v3, v5}, Lcom/amazon/device/sync/Change;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/amazon/device/sync/Change$Type;)V

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 234
    :cond_1
    invoke-virtual {v4}, Lcom/amazon/whispersync/Record;->isIsDeleted()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 236
    invoke-direct {p0, v4}, Lcom/amazon/device/sync/SaveUpdatedRecordsDbOperation;->constructEntryFromRecord(Lcom/amazon/whispersync/Record;)Ljava/util/Map$Entry;

    move-result-object v2

    .line 237
    new-instance v4, Lcom/amazon/device/sync/Change;

    sget-object v5, Lcom/amazon/device/sync/Change$Type;->ADDED:Lcom/amazon/device/sync/Change$Type;

    invoke-direct {v4, v2, v3, v5}, Lcom/amazon/device/sync/Change;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/amazon/device/sync/Change$Type;)V

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 240
    :cond_2
    invoke-virtual {v4}, Lcom/amazon/whispersync/Record;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/amazon/whispersync/Record;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 242
    invoke-direct {p0, v4}, Lcom/amazon/device/sync/SaveUpdatedRecordsDbOperation;->constructEntryFromRecord(Lcom/amazon/whispersync/Record;)Ljava/util/Map$Entry;

    move-result-object v2

    .line 243
    new-instance v4, Lcom/amazon/device/sync/Change;

    sget-object v5, Lcom/amazon/device/sync/Change$Type;->UPDATED:Lcom/amazon/device/sync/Change$Type;

    invoke-direct {v4, v2, v3, v5}, Lcom/amazon/device/sync/Change;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/amazon/device/sync/Change$Type;)V

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_3
    if-eqz v4, :cond_0

    .line 249
    invoke-virtual {v4}, Lcom/amazon/whispersync/Record;->isIsDeleted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 251
    invoke-direct {p0, v4}, Lcom/amazon/device/sync/SaveUpdatedRecordsDbOperation;->constructEntryFromRecord(Lcom/amazon/whispersync/Record;)Ljava/util/Map$Entry;

    move-result-object v2

    .line 252
    new-instance v4, Lcom/amazon/device/sync/Change;

    sget-object v5, Lcom/amazon/device/sync/Change$Type;->DELETED:Lcom/amazon/device/sync/Change$Type;

    invoke-direct {v4, v2, v3, v5}, Lcom/amazon/device/sync/Change;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/amazon/device/sync/Change$Type;)V

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 257
    :cond_4
    iget-object p1, p0, Lcom/amazon/device/sync/SaveUpdatedRecordsDbOperation;->mAccountId:Ljava/lang/String;

    new-instance v1, Lcom/amazon/device/sync/SyncableDatasetInfo;

    iget-object v2, p0, Lcom/amazon/device/sync/SaveUpdatedRecordsDbOperation;->mNamespace:Ljava/lang/String;

    sget-object v3, Lcom/amazon/device/sync/DatasetType;->StringMap:Lcom/amazon/device/sync/DatasetType;

    iget-object v4, p0, Lcom/amazon/device/sync/SaveUpdatedRecordsDbOperation;->mDatasetName:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/amazon/device/sync/SyncableDatasetInfo;-><init>(Ljava/lang/String;Lcom/amazon/device/sync/DatasetType;Ljava/lang/String;)V

    invoke-static {p1, v1, v0}, Lcom/amazon/device/sync/Notifications;->notifyChanges(Ljava/lang/String;Lcom/amazon/device/sync/SyncableDatasetInfo;Ljava/util/Set;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private saveToDB(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whispersync/PostUpdatesLinks;)V
    .locals 4

    .line 318
    invoke-static {p1, p2}, Lcom/amazon/device/sync/NamespacesTable;->getIdOrCreate(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;)J

    move-result-wide v0

    .line 320
    new-instance v2, Lcom/amazon/device/sync/DirectoryTable;

    invoke-direct {v2, p1}, Lcom/amazon/device/sync/DirectoryTable;-><init>(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;)V

    invoke-virtual {p4}, Lcom/amazon/whispersync/PostUpdatesLinks;->getDirectory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazon/device/sync/DirectoryTable;->updateDatasetsUpdateUri(Ljava/lang/String;)V

    .line 322
    new-instance v2, Lcom/amazon/device/sync/SnapshotDatasetsTable;

    invoke-direct {v2, p1, p2, v0, v1}, Lcom/amazon/device/sync/SnapshotDatasetsTable;-><init>(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;J)V

    .line 325
    invoke-virtual {p4}, Lcom/amazon/whispersync/PostUpdatesLinks;->getRecords()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p3, p1}, Lcom/amazon/device/sync/SnapshotDatasetsTable;->updateRecordsLink(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    invoke-virtual {p4}, Lcom/amazon/whispersync/PostUpdatesLinks;->getDataset()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p3, p1}, Lcom/amazon/device/sync/SnapshotDatasetsTable;->updateSelfLink(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private storeConflictedRecordsToConflictRecordsTable(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;JLjava/util/Set;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;",
            "J",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 293
    iget-object v0, p0, Lcom/amazon/device/sync/SaveUpdatedRecordsDbOperation;->mConflictedRecords:Ljava/util/Map;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 298
    :cond_0
    new-instance v0, Lcom/amazon/device/sync/ConflictRecordsTable;

    invoke-direct {v0, p1, p2, p3}, Lcom/amazon/device/sync/ConflictRecordsTable;-><init>(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;J)V

    .line 300
    iget-object p1, p0, Lcom/amazon/device/sync/SaveUpdatedRecordsDbOperation;->mConflictedRecords:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 302
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 303
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/whispersync/Conflict;

    .line 304
    invoke-virtual {p2}, Lcom/amazon/whispersync/Conflict;->getLocal()Lcom/amazon/whispersync/Record;

    move-result-object p2

    .line 307
    invoke-interface {p4, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 309
    invoke-interface {p5, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 310
    invoke-virtual {v0, p2, v1, v2}, Lcom/amazon/device/sync/ConflictRecordsTable;->upsert(Lcom/amazon/whispersync/Record;J)J

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private storeUpdatedRecordsToSnapshotRecordsTable(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;JLjava/util/List;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;",
            "J",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/Record;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    if-eqz p4, :cond_1

    .line 267
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 272
    :cond_0
    new-instance v0, Lcom/amazon/device/sync/SnapshotRecordsTable;

    invoke-direct {v0, p1, p2, p3}, Lcom/amazon/device/sync/SnapshotRecordsTable;-><init>(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;J)V

    .line 273
    invoke-virtual {v0, p4}, Lcom/amazon/device/sync/SnapshotRecordsTable;->bulkUpsert(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 269
    :cond_1
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public execute()V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/amazon/device/sync/SaveUpdatedRecordsDbOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/amazon/device/sync/SaveUpdatedRecordsDbOperation;->mAccountId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/device/sync/SyncDb;->open(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;

    move-result-object v0

    .line 63
    :try_start_0
    invoke-direct {p0, v0}, Lcom/amazon/device/sync/SaveUpdatedRecordsDbOperation;->populateKnownRecords(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;)V

    .line 64
    invoke-direct {p0, v0}, Lcom/amazon/device/sync/SaveUpdatedRecordsDbOperation;->executeWithDB(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;)Ljava/util/Set;

    move-result-object v1

    .line 65
    invoke-direct {p0, v1}, Lcom/amazon/device/sync/SaveUpdatedRecordsDbOperation;->reportConflicts(Ljava/util/Set;)V

    .line 66
    invoke-direct {p0, v1}, Lcom/amazon/device/sync/SaveUpdatedRecordsDbOperation;->reportResolved(Ljava/util/Set;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->close()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->close()V

    throw v1
.end method
