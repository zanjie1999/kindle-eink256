.class final Lcom/amazon/device/sync/LoadRecordsDbOperation;
.super Ljava/lang/Object;
.source "LoadRecordsDbOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/sync/LoadRecordsDbOperation$CachedRecords;
    }
.end annotation


# instance fields
.field private final mAccountId:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mDataset:Ljava/lang/String;

.field private final mNamespace:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/amazon/device/sync/LoadRecordsDbOperation;->mContext:Landroid/content/Context;

    .line 61
    iput-object p2, p0, Lcom/amazon/device/sync/LoadRecordsDbOperation;->mAccountId:Ljava/lang/String;

    .line 62
    iput-object p3, p0, Lcom/amazon/device/sync/LoadRecordsDbOperation;->mNamespace:Ljava/lang/String;

    .line 63
    iput-object p4, p0, Lcom/amazon/device/sync/LoadRecordsDbOperation;->mDataset:Ljava/lang/String;

    return-void
.end method

.method private constructConflictEntryFromRecord(Lcom/amazon/whispersync/Record;)Ljava/util/Map$Entry;
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

    .line 169
    new-instance v0, Lcom/amazon/device/sync/LoadRecordsDbOperation$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/device/sync/LoadRecordsDbOperation$1;-><init>(Lcom/amazon/device/sync/LoadRecordsDbOperation;Lcom/amazon/whispersync/Record;)V

    return-object v0
.end method

.method private constructConflicts(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/whispersync/Record;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/whispersync/Record;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/device/sync/Conflict<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    .line 150
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 153
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/Record;

    .line 155
    invoke-virtual {v1}, Lcom/amazon/whispersync/Record;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/whispersync/Record;

    .line 157
    invoke-virtual {v1}, Lcom/amazon/whispersync/Record;->getKey()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/amazon/device/sync/Conflict;

    invoke-direct {p0, v1}, Lcom/amazon/device/sync/LoadRecordsDbOperation;->constructConflictEntryFromRecord(Lcom/amazon/whispersync/Record;)Ljava/util/Map$Entry;

    move-result-object v5

    invoke-virtual {v1}, Lcom/amazon/whispersync/Record;->isIsDeleted()Z

    move-result v1

    invoke-direct {p0, v2}, Lcom/amazon/device/sync/LoadRecordsDbOperation;->constructConflictEntryFromRecord(Lcom/amazon/whispersync/Record;)Ljava/util/Map$Entry;

    move-result-object v6

    invoke-virtual {v2}, Lcom/amazon/whispersync/Record;->isIsDeleted()Z

    move-result v2

    invoke-direct {v4, v5, v1, v6, v2}, Lcom/amazon/device/sync/Conflict;-><init>(Ljava/lang/Object;ZLjava/lang/Object;Z)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private mergeSnapshotAndPendingRecords(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/whispersync/Record;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/whispersync/Record;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/whispersync/Record;",
            ">;"
        }
    .end annotation

    .line 131
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 132
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/whispersync/Record;

    .line 134
    invoke-virtual {p2}, Lcom/amazon/whispersync/Record;->isIsDeleted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    invoke-virtual {p2}, Lcom/amazon/whispersync/Record;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 140
    :cond_0
    invoke-virtual {p2}, Lcom/amazon/whispersync/Record;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public execute()Lcom/amazon/device/sync/LoadRecordsDbOperation$CachedRecords;
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/amazon/device/sync/LoadRecordsDbOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/amazon/device/sync/LoadRecordsDbOperation;->mAccountId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/device/sync/SyncDb;->open(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;

    move-result-object v0

    .line 72
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/amazon/device/sync/LoadRecordsDbOperation;->executeWithDB(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;)Lcom/amazon/device/sync/LoadRecordsDbOperation$CachedRecords;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->close()V

    throw v1
.end method

.method public executeWithDB(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;)Lcom/amazon/device/sync/LoadRecordsDbOperation$CachedRecords;
    .locals 9

    .line 84
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 85
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    .line 86
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    .line 88
    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->beginTransaction()V

    .line 91
    :try_start_0
    iget-object v3, p0, Lcom/amazon/device/sync/LoadRecordsDbOperation;->mNamespace:Ljava/lang/String;

    invoke-static {p1, v3}, Lcom/amazon/device/sync/NamespacesTable;->getIdOrCreate(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;)J

    move-result-wide v3

    .line 92
    iget-object v5, p0, Lcom/amazon/device/sync/LoadRecordsDbOperation;->mNamespace:Ljava/lang/String;

    iget-object v6, p0, Lcom/amazon/device/sync/LoadRecordsDbOperation;->mDataset:Ljava/lang/String;

    invoke-static {p1, v5, v3, v4, v6}, Lcom/amazon/device/sync/SnapshotDatasetsTable;->getId(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;JLjava/lang/String;)J

    move-result-wide v5

    .line 93
    iget-object v7, p0, Lcom/amazon/device/sync/LoadRecordsDbOperation;->mNamespace:Ljava/lang/String;

    iget-object v8, p0, Lcom/amazon/device/sync/LoadRecordsDbOperation;->mDataset:Ljava/lang/String;

    invoke-static {p1, v7, v3, v4, v8}, Lcom/amazon/device/sync/PendingDatasetsTable;->getId(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;JLjava/lang/String;)J

    move-result-wide v3

    .line 97
    invoke-static {v5, v6}, Lcom/amazon/device/sync/SyncDb;->isDatasetExist(J)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-static {v3, v4}, Lcom/amazon/device/sync/SyncDb;->isDatasetExist(J)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_0

    .line 99
    :cond_0
    new-instance v0, Lcom/amazon/whispersync/ResourceNotAvailableException;

    invoke-direct {v0}, Lcom/amazon/whispersync/ResourceNotAvailableException;-><init>()V

    throw v0

    .line 102
    :cond_1
    :goto_0
    invoke-static {v5, v6}, Lcom/amazon/device/sync/SyncDb;->isDatasetExist(J)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 104
    new-instance v0, Lcom/amazon/device/sync/SnapshotRecordsTable;

    invoke-direct {v0, p1, v5, v6}, Lcom/amazon/device/sync/SnapshotRecordsTable;-><init>(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;J)V

    .line 105
    invoke-virtual {v0}, Lcom/amazon/device/sync/RecordsTable;->getRecords()Ljava/util/Map;

    move-result-object v0

    .line 107
    new-instance v1, Lcom/amazon/device/sync/ConflictRecordsTable;

    invoke-direct {v1, p1, v5, v6}, Lcom/amazon/device/sync/ConflictRecordsTable;-><init>(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;J)V

    .line 108
    invoke-virtual {v1}, Lcom/amazon/device/sync/RecordsTable;->getRecords()Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/amazon/device/sync/LoadRecordsDbOperation;->constructConflicts(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 111
    :cond_2
    invoke-static {v3, v4}, Lcom/amazon/device/sync/SyncDb;->isDatasetExist(J)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 113
    new-instance v2, Lcom/amazon/device/sync/PendingRecordsTable;

    invoke-direct {v2, p1, v3, v4}, Lcom/amazon/device/sync/PendingRecordsTable;-><init>(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;J)V

    .line 114
    invoke-virtual {v2}, Lcom/amazon/device/sync/RecordsTable;->getRecords()Ljava/util/Map;

    move-result-object v2

    .line 117
    :cond_3
    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->endTransaction()V

    .line 124
    invoke-direct {p0, v0, v2}, Lcom/amazon/device/sync/LoadRecordsDbOperation;->mergeSnapshotAndPendingRecords(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    .line 125
    new-instance v0, Lcom/amazon/device/sync/LoadRecordsDbOperation$CachedRecords;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, p1, v2, v1, v3}, Lcom/amazon/device/sync/LoadRecordsDbOperation$CachedRecords;-><init>(Ljava/util/Map;Ljava/util/Set;Ljava/util/Map;Lcom/amazon/device/sync/LoadRecordsDbOperation$1;)V

    return-object v0

    :catchall_0
    move-exception v0

    .line 121
    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->endTransaction()V

    throw v0
.end method
