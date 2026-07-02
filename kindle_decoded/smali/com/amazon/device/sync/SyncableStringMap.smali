.class public final Lcom/amazon/device/sync/SyncableStringMap;
.super Lcom/amazon/device/sync/AbstractSyncableDataset;
.source "SyncableStringMap.java"

# interfaces
.implements Ljava/util/concurrent/ConcurrentMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;,
        Lcom/amazon/device/sync/SyncableStringMap$EntrySet;,
        Lcom/amazon/device/sync/SyncableStringMap$ValuesCollection;,
        Lcom/amazon/device/sync/SyncableStringMap$KeySet;,
        Lcom/amazon/device/sync/SyncableStringMap$WriteThroughEntry;,
        Lcom/amazon/device/sync/SyncableStringMap$Entries;,
        Lcom/amazon/device/sync/SyncableStringMap$Values;,
        Lcom/amazon/device/sync/SyncableStringMap$Keys;,
        Lcom/amazon/device/sync/SyncableStringMap$Modified;,
        Lcom/amazon/device/sync/SyncableStringMap$Conflicts;,
        Lcom/amazon/device/sync/SyncableStringMap$View;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/device/sync/AbstractSyncableDataset<",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;",
        "Ljava/util/concurrent/ConcurrentMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final MAX_KEY_LENGTH:I = 0x400

.field public static final MAX_VALUE_LENGTH:I = 0xf800


# instance fields
.field private volatile mEntries:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mEntrySet:Lcom/amazon/device/sync/SyncableStringMap$EntrySet;

.field private mKeySet:Lcom/amazon/device/sync/SyncableStringMap$KeySet;

.field private final mName:Ljava/lang/String;

.field private mValues:Lcom/amazon/device/sync/SyncableStringMap$ValuesCollection;


# direct methods
.method private constructor <init>(Lcom/amazon/device/sync/SyncableDataStore;Ljava/lang/String;)V
    .locals 0

    .line 388
    invoke-direct {p0, p1}, Lcom/amazon/device/sync/AbstractSyncableDataset;-><init>(Lcom/amazon/device/sync/SyncableDataStore;)V

    .line 379
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/device/sync/SyncableStringMap;->mEntries:Ljava/util/concurrent/ConcurrentMap;

    .line 389
    iput-object p2, p0, Lcom/amazon/device/sync/SyncableStringMap;->mName:Ljava/lang/String;

    .line 390
    new-instance p1, Lcom/amazon/whispersync/dcp/framework/RoboContextWrapper;

    iget-object p2, p0, Lcom/amazon/device/sync/AbstractSyncableDataset;->mDataStore:Lcom/amazon/device/sync/SyncableDataStore;

    invoke-virtual {p2}, Lcom/amazon/device/sync/SyncableDataStore;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/amazon/whispersync/dcp/framework/RoboContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-static {p1, p0}, Lcom/amazon/device/sync/SyncGuiceHelper;->injectMembers(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/device/sync/SyncableStringMap;)Ljava/util/concurrent/ConcurrentMap;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/amazon/device/sync/SyncableStringMap;->mEntries:Ljava/util/concurrent/ConcurrentMap;

    return-object p0
.end method

.method static open(Lcom/amazon/device/sync/SyncableDataStore;Ljava/lang/String;)Lcom/amazon/device/sync/SyncableStringMap;
    .locals 3

    .line 398
    new-instance v0, Lcom/amazon/device/sync/SyncableStringMap;

    invoke-direct {v0, p0, p1}, Lcom/amazon/device/sync/SyncableStringMap;-><init>(Lcom/amazon/device/sync/SyncableDataStore;Ljava/lang/String;)V

    .line 399
    new-instance p1, Lcom/amazon/device/sync/CreateDatasetDbOperation;

    invoke-virtual {p0}, Lcom/amazon/device/sync/SyncableDataStore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/device/sync/SyncableDataStore;->getAccountId()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Lcom/amazon/device/sync/SyncableDatasetInfo;

    invoke-direct {v2, v0}, Lcom/amazon/device/sync/SyncableDatasetInfo;-><init>(Lcom/amazon/device/sync/SyncableDataset;)V

    invoke-direct {p1, v1, p0, v2}, Lcom/amazon/device/sync/CreateDatasetDbOperation;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/amazon/device/sync/SyncableDatasetInfo;)V

    invoke-virtual {p1}, Lcom/amazon/device/sync/CreateDatasetDbOperation;->execute()V

    .line 403
    :try_start_0
    invoke-virtual {v0}, Lcom/amazon/device/sync/SyncableStringMap;->fetch()V
    :try_end_0
    .catch Lcom/amazon/device/sync/SyncableDeletedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 408
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Dataset was deleted despite being created"

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 519
    invoke-virtual {p0}, Lcom/amazon/device/sync/AbstractSyncableDataset;->checkNotClosed()V

    .line 520
    iget-object v0, p0, Lcom/amazon/device/sync/SyncableStringMap;->mEntries:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 522
    invoke-virtual {p0, v1}, Lcom/amazon/device/sync/SyncableStringMap;->remove(Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic close()V
    .locals 0

    .line 35
    invoke-super {p0}, Lcom/amazon/device/sync/AbstractSyncableDataset;->close()V

    return-void
.end method

.method public containsEntry(Ljava/util/Map$Entry;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "**>;)Z"
        }
    .end annotation

    .line 563
    invoke-virtual {p0}, Lcom/amazon/device/sync/AbstractSyncableDataset;->checkNotClosed()V

    .line 564
    const-class v0, Ljava/lang/NullPointerException;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, ""

    invoke-static {p1, v0, v3, v2}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 565
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    const-class v2, Ljava/lang/NullPointerException;

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3, v4}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 566
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-class v2, Ljava/lang/NullPointerException;

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3, v4}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 567
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 572
    :cond_0
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 573
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/device/sync/SyncableStringMap;->get(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    return v1
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 4

    .line 529
    invoke-virtual {p0}, Lcom/amazon/device/sync/AbstractSyncableDataset;->checkNotClosed()V

    .line 530
    const-class v0, Ljava/lang/NullPointerException;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, ""

    invoke-static {p1, v0, v3, v2}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 532
    iget-object v0, p0, Lcom/amazon/device/sync/SyncableStringMap;->mEntries:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;

    if-nez p1, :cond_0

    return v1

    .line 537
    :cond_0
    monitor-enter p1

    .line 539
    :try_start_0
    invoke-virtual {p1}, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;->isDeleted()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    monitor-exit p1

    return v1

    :catchall_0
    move-exception v0

    .line 540
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 4

    .line 546
    invoke-virtual {p0}, Lcom/amazon/device/sync/AbstractSyncableDataset;->checkNotClosed()V

    .line 547
    const-class v0, Ljava/lang/NullPointerException;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, ""

    invoke-static {p1, v0, v3, v2}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 548
    iget-object v0, p0, Lcom/amazon/device/sync/SyncableStringMap;->mEntries:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;

    .line 550
    monitor-enter v2

    .line 552
    :try_start_0
    invoke-virtual {v2}, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;->isDeleted()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    .line 554
    monitor-exit v2

    return p1

    .line 556
    :cond_0
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    return v1
.end method

.method protected doClose()V
    .locals 1

    .line 712
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/sync/SyncableStringMap;->mEntries:Ljava/util/concurrent/ConcurrentMap;

    const/4 v0, 0x0

    .line 713
    iput-object v0, p0, Lcom/amazon/device/sync/SyncableStringMap;->mKeySet:Lcom/amazon/device/sync/SyncableStringMap$KeySet;

    .line 714
    iput-object v0, p0, Lcom/amazon/device/sync/SyncableStringMap;->mValues:Lcom/amazon/device/sync/SyncableStringMap$ValuesCollection;

    .line 715
    iput-object v0, p0, Lcom/amazon/device/sync/SyncableStringMap;->mEntrySet:Lcom/amazon/device/sync/SyncableStringMap$EntrySet;

    return-void
.end method

.method protected doDownload()Ljava/util/concurrent/Future;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 826
    invoke-static {}, Lcom/amazon/device/sync/Synchronizer;->getInstance()Lcom/amazon/device/sync/Synchronizer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/device/sync/SyncableStringMap;->getAccountId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/device/sync/SyncableStringMap;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/device/sync/SyncableStringMap;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/device/sync/Synchronizer;->downloadDataset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method protected doFetch()V
    .locals 7

    .line 752
    new-instance v0, Lcom/amazon/device/sync/LoadRecordsDbOperation;

    iget-object v1, p0, Lcom/amazon/device/sync/AbstractSyncableDataset;->mDataStore:Lcom/amazon/device/sync/SyncableDataStore;

    invoke-virtual {v1}, Lcom/amazon/device/sync/SyncableDataStore;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/device/sync/AbstractSyncableDataset;->mDataStore:Lcom/amazon/device/sync/SyncableDataStore;

    invoke-virtual {v2}, Lcom/amazon/device/sync/SyncableDataStore;->getAccountId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/device/sync/SyncableStringMap;->getNamespace()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/amazon/device/sync/SyncableStringMap;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/device/sync/LoadRecordsDbOperation;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/device/sync/LoadRecordsDbOperation;->execute()Lcom/amazon/device/sync/LoadRecordsDbOperation$CachedRecords;

    move-result-object v0

    .line 754
    invoke-virtual {v0}, Lcom/amazon/device/sync/LoadRecordsDbOperation$CachedRecords;->getBaseRecords()Ljava/util/Map;

    move-result-object v1

    .line 755
    invoke-virtual {v0}, Lcom/amazon/device/sync/LoadRecordsDbOperation$CachedRecords;->getConflictedRecords()Ljava/util/Map;

    move-result-object v0

    .line 758
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/whispersync/Record;

    .line 760
    invoke-virtual {v2}, Lcom/amazon/whispersync/Record;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 761
    iget-object v4, p0, Lcom/amazon/device/sync/SyncableStringMap;->mEntries:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;

    if-nez v4, :cond_1

    .line 764
    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    new-instance v4, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amazon/device/sync/Conflict;

    invoke-virtual {v6}, Lcom/amazon/device/sync/Conflict;->getLocal()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v4, v2, v5, v6}, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;-><init>(Lcom/amazon/whispersync/Record;ZLjava/lang/String;)V

    goto :goto_1

    :cond_0
    new-instance v4, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;

    invoke-direct {v4, v2, v5}, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;-><init>(Lcom/amazon/whispersync/Record;Z)V

    .line 767
    :goto_1
    iget-object v5, p0, Lcom/amazon/device/sync/SyncableStringMap;->mEntries:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, v3, v4}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;

    if-nez v4, :cond_1

    goto :goto_0

    .line 773
    :cond_1
    monitor-enter v4

    .line 775
    :try_start_0
    invoke-virtual {v4}, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;->isDirty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 777
    invoke-virtual {v4, v2}, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;->update(Lcom/amazon/whispersync/Record;)V

    .line 779
    :cond_2
    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 781
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/device/sync/Conflict;

    invoke-virtual {v2}, Lcom/amazon/device/sync/Conflict;->getLocal()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;->setConflictValue(Ljava/lang/String;)V

    .line 783
    :cond_3
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    return-void
.end method

.method protected doFlush()V
    .locals 5

    .line 721
    new-instance v0, Lcom/amazon/device/sync/SyncableStringMap$Modified;

    invoke-direct {v0, p0}, Lcom/amazon/device/sync/SyncableStringMap$Modified;-><init>(Lcom/amazon/device/sync/SyncableStringMap;)V

    .line 722
    invoke-virtual {v0}, Lcom/amazon/device/sync/SyncableStringMap$View;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    .line 725
    invoke-static {v1}, Lcom/amazon/whispersync/dcp/framework/TimeUtils;->getCurrentUTCTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 726
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 727
    :goto_0
    invoke-virtual {v0}, Lcom/amazon/device/sync/SyncableStringMap$View;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 729
    invoke-virtual {v0}, Lcom/amazon/device/sync/SyncableStringMap$View;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/whispersync/Record;

    .line 730
    invoke-virtual {v3, v1}, Lcom/amazon/whispersync/Record;->setLastUpdatedTime(Ljava/lang/String;)V

    .line 731
    invoke-virtual {v3}, Lcom/amazon/whispersync/Record;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 733
    :cond_1
    new-instance v0, Lcom/amazon/device/sync/SaveRecordsDbOperation$Diff;

    invoke-virtual {p0}, Lcom/amazon/device/sync/SyncableStringMap;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/device/sync/SyncableStringMap;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v0, v1, v3, v4}, Lcom/amazon/device/sync/SaveRecordsDbOperation$Diff;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    .line 734
    new-instance v1, Lcom/amazon/device/sync/SaveRecordsDbOperation;

    iget-object v3, p0, Lcom/amazon/device/sync/AbstractSyncableDataset;->mDataStore:Lcom/amazon/device/sync/SyncableDataStore;

    invoke-virtual {v3}, Lcom/amazon/device/sync/SyncableDataStore;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/device/sync/AbstractSyncableDataset;->mDataStore:Lcom/amazon/device/sync/SyncableDataStore;

    invoke-virtual {v4}, Lcom/amazon/device/sync/SyncableDataStore;->getAccountId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4, v0}, Lcom/amazon/device/sync/SaveRecordsDbOperation;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/amazon/device/sync/SaveRecordsDbOperation$Diff;)V

    invoke-virtual {v1}, Lcom/amazon/device/sync/SaveRecordsDbOperation;->execute()V

    .line 737
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/Record;

    .line 739
    iget-object v2, p0, Lcom/amazon/device/sync/SyncableStringMap;->mEntries:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v1}, Lcom/amazon/whispersync/Record;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;

    .line 740
    monitor-enter v2

    .line 742
    :try_start_0
    invoke-virtual {v2}, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;->isDeleted()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Lcom/amazon/whispersync/Record;->isIsDeleted()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/amazon/whispersync/Record;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    const/4 v1, 0x1

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v1, 0x0

    .line 744
    :goto_3
    invoke-virtual {v2, v1}, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;->setIsDirty(Z)V

    .line 745
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_5
    return-void
.end method

.method protected doGetConflicts()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/amazon/device/sync/Conflict<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    .line 833
    new-instance v0, Lcom/amazon/device/sync/SyncableStringMap$Conflicts;

    invoke-direct {v0, p0}, Lcom/amazon/device/sync/SyncableStringMap$Conflicts;-><init>(Lcom/amazon/device/sync/SyncableStringMap;)V

    .line 834
    invoke-virtual {v0}, Lcom/amazon/device/sync/SyncableStringMap$View;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 836
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 839
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 840
    :goto_0
    invoke-virtual {v0}, Lcom/amazon/device/sync/SyncableStringMap$View;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 842
    invoke-virtual {v0}, Lcom/amazon/device/sync/SyncableStringMap$View;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method protected doHasConflicts()Z
    .locals 1

    .line 850
    new-instance v0, Lcom/amazon/device/sync/SyncableStringMap$Conflicts;

    invoke-direct {v0, p0}, Lcom/amazon/device/sync/SyncableStringMap$Conflicts;-><init>(Lcom/amazon/device/sync/SyncableStringMap;)V

    invoke-virtual {v0}, Lcom/amazon/device/sync/SyncableStringMap$View;->hasNext()Z

    move-result v0

    return v0
.end method

.method protected doReset()V
    .locals 8

    .line 790
    new-instance v0, Lcom/amazon/device/sync/LoadRecordsDbOperation;

    iget-object v1, p0, Lcom/amazon/device/sync/AbstractSyncableDataset;->mDataStore:Lcom/amazon/device/sync/SyncableDataStore;

    invoke-virtual {v1}, Lcom/amazon/device/sync/SyncableDataStore;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/device/sync/AbstractSyncableDataset;->mDataStore:Lcom/amazon/device/sync/SyncableDataStore;

    invoke-virtual {v2}, Lcom/amazon/device/sync/SyncableDataStore;->getAccountId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/device/sync/SyncableStringMap;->getNamespace()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/amazon/device/sync/SyncableStringMap;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/device/sync/LoadRecordsDbOperation;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/device/sync/LoadRecordsDbOperation;->execute()Lcom/amazon/device/sync/LoadRecordsDbOperation$CachedRecords;

    move-result-object v0

    .line 792
    invoke-virtual {v0}, Lcom/amazon/device/sync/LoadRecordsDbOperation$CachedRecords;->getBaseRecords()Ljava/util/Map;

    move-result-object v1

    .line 793
    invoke-virtual {v0}, Lcom/amazon/device/sync/LoadRecordsDbOperation$CachedRecords;->getConflictedRecords()Ljava/util/Map;

    move-result-object v0

    .line 797
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 799
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/whispersync/Record;

    .line 801
    invoke-virtual {v3}, Lcom/amazon/whispersync/Record;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 802
    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    new-instance v5, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/amazon/device/sync/Conflict;

    invoke-virtual {v7}, Lcom/amazon/device/sync/Conflict;->getLocal()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v5, v3, v6, v7}, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;-><init>(Lcom/amazon/whispersync/Record;ZLjava/lang/String;)V

    goto :goto_1

    :cond_0
    new-instance v5, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;

    invoke-direct {v5, v3, v6}, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;-><init>(Lcom/amazon/whispersync/Record;Z)V

    .line 805
    :goto_1
    invoke-interface {v2, v4, v5}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 807
    :cond_1
    iput-object v2, p0, Lcom/amazon/device/sync/SyncableStringMap;->mEntries:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method protected doSynchronize()Ljava/util/concurrent/Future;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 813
    invoke-static {}, Lcom/amazon/device/sync/Synchronizer;->getInstance()Lcom/amazon/device/sync/Synchronizer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/device/sync/SyncableStringMap;->getAccountId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/device/sync/SyncableStringMap;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/device/sync/SyncableStringMap;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/device/sync/Synchronizer;->synchronizeDataset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method protected doUpload()Ljava/util/concurrent/Future;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 820
    invoke-static {}, Lcom/amazon/device/sync/Synchronizer;->getInstance()Lcom/amazon/device/sync/Synchronizer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/device/sync/SyncableStringMap;->getAccountId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/device/sync/SyncableStringMap;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/device/sync/SyncableStringMap;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/device/sync/Synchronizer;->uploadDataset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic download()Ljava/util/concurrent/Future;
    .locals 1

    .line 35
    invoke-super {p0}, Lcom/amazon/device/sync/AbstractSyncableDataset;->download()Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 579
    invoke-virtual {p0}, Lcom/amazon/device/sync/AbstractSyncableDataset;->checkNotClosed()V

    .line 580
    iget-object v0, p0, Lcom/amazon/device/sync/SyncableStringMap;->mEntrySet:Lcom/amazon/device/sync/SyncableStringMap$EntrySet;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amazon/device/sync/SyncableStringMap$EntrySet;

    invoke-direct {v0, p0}, Lcom/amazon/device/sync/SyncableStringMap$EntrySet;-><init>(Lcom/amazon/device/sync/SyncableStringMap;)V

    :cond_0
    iput-object v0, p0, Lcom/amazon/device/sync/SyncableStringMap;->mEntrySet:Lcom/amazon/device/sync/SyncableStringMap$EntrySet;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 884
    :cond_0
    instance-of v1, p1, Ljava/util/Map;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 886
    check-cast p1, Ljava/util/Map;

    .line 887
    invoke-virtual {p0}, Lcom/amazon/device/sync/SyncableStringMap;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    if-eq v1, v3, :cond_1

    return v2

    .line 891
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/device/sync/SyncableStringMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 894
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_3
    return v0

    :cond_4
    return v2
.end method

.method public bridge synthetic fetch()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/device/sync/SyncableDeletedException;
        }
    .end annotation

    .line 35
    invoke-super {p0}, Lcom/amazon/device/sync/AbstractSyncableDataset;->fetch()V

    return-void
.end method

.method public bridge synthetic flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/device/sync/SyncableDeletedException;
        }
    .end annotation

    .line 35
    invoke-super {p0}, Lcom/amazon/device/sync/AbstractSyncableDataset;->flush()V

    return-void
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lcom/amazon/device/sync/SyncableStringMap;->get(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    .line 587
    invoke-virtual {p0}, Lcom/amazon/device/sync/AbstractSyncableDataset;->checkNotClosed()V

    .line 588
    const-class v0, Ljava/lang/NullPointerException;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, ""

    invoke-static {p1, v0, v2, v1}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 589
    iget-object v0, p0, Lcom/amazon/device/sync/SyncableStringMap;->mEntries:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 594
    :cond_0
    monitor-enter p1

    .line 596
    :try_start_0
    invoke-virtual {p1}, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;->isDeleted()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;->getValue()Ljava/lang/String;

    move-result-object v0

    :goto_0
    monitor-exit p1

    return-object v0

    :catchall_0
    move-exception v0

    .line 597
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic getAccountId()Ljava/lang/String;
    .locals 1

    .line 35
    invoke-super {p0}, Lcom/amazon/device/sync/AbstractSyncableDataset;->getAccountId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getConflicts()Ljava/util/Set;
    .locals 1

    .line 35
    invoke-super {p0}, Lcom/amazon/device/sync/AbstractSyncableDataset;->getConflicts()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 862
    iget-object v0, p0, Lcom/amazon/device/sync/SyncableStringMap;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getNamespace()Ljava/lang/String;
    .locals 1

    .line 35
    invoke-super {p0}, Lcom/amazon/device/sync/AbstractSyncableDataset;->getNamespace()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/amazon/device/sync/DatasetType;
    .locals 1

    .line 856
    sget-object v0, Lcom/amazon/device/sync/DatasetType;->StringMap:Lcom/amazon/device/sync/DatasetType;

    return-object v0
.end method

.method public bridge synthetic hasConflicts()Z
    .locals 1

    .line 35
    invoke-super {p0}, Lcom/amazon/device/sync/AbstractSyncableDataset;->hasConflicts()Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 868
    invoke-virtual {p0}, Lcom/amazon/device/sync/SyncableStringMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    .line 870
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 872
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public bridge synthetic isClosed()Z
    .locals 1

    .line 35
    invoke-super {p0}, Lcom/amazon/device/sync/AbstractSyncableDataset;->isClosed()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 3

    .line 603
    invoke-virtual {p0}, Lcom/amazon/device/sync/AbstractSyncableDataset;->checkNotClosed()V

    .line 604
    iget-object v0, p0, Lcom/amazon/device/sync/SyncableStringMap;->mEntries:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;

    .line 606
    monitor-enter v1

    .line 608
    :try_start_0
    invoke-virtual {v1}, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;->isDeleted()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    .line 610
    monitor-exit v1

    return v0

    .line 612
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 620
    invoke-virtual {p0}, Lcom/amazon/device/sync/AbstractSyncableDataset;->checkNotClosed()V

    .line 621
    iget-object v0, p0, Lcom/amazon/device/sync/SyncableStringMap;->mKeySet:Lcom/amazon/device/sync/SyncableStringMap$KeySet;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amazon/device/sync/SyncableStringMap$KeySet;

    invoke-direct {v0, p0}, Lcom/amazon/device/sync/SyncableStringMap$KeySet;-><init>(Lcom/amazon/device/sync/SyncableStringMap;)V

    :cond_0
    iput-object v0, p0, Lcom/amazon/device/sync/SyncableStringMap;->mKeySet:Lcom/amazon/device/sync/SyncableStringMap$KeySet;

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 35
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/device/sync/SyncableStringMap;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 628
    invoke-virtual {p0}, Lcom/amazon/device/sync/AbstractSyncableDataset;->checkNotClosed()V

    .line 629
    const-class v0, Ljava/lang/NullPointerException;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, ""

    invoke-static {p1, v0, v3, v2}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 630
    const-class v0, Ljava/lang/NullPointerException;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, ""

    invoke-static {p2, v0, v3, v2}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 631
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    const/16 v3, 0x400

    if-le v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-class v3, Ljava/lang/IllegalArgumentException;

    new-array v4, v1, [Ljava/lang/Object;

    const-string v5, "key too long"

    invoke-static {v0, v3, v5, v4}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkFalse(ZLjava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 632
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const v3, 0xf800

    if-le v0, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-class v3, Ljava/lang/IllegalArgumentException;

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v4, "value too long"

    invoke-static {v0, v3, v4, v1}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkFalse(ZLjava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 634
    iget-object v0, p0, Lcom/amazon/device/sync/SyncableStringMap;->mEntries:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 637
    iget-object v0, p0, Lcom/amazon/device/sync/SyncableStringMap;->mEntries:Ljava/util/concurrent/ConcurrentMap;

    new-instance v3, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;

    invoke-direct {v3, p1, p2, v2}, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v0, p1, v3}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;

    if-nez v0, :cond_2

    return-object v1

    .line 643
    :cond_2
    monitor-enter v0

    .line 645
    :try_start_0
    invoke-virtual {v0}, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;->isDeleted()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 646
    :goto_2
    invoke-virtual {v0, p2}, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;->setValue(Ljava/lang/String;)V

    .line 647
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    .line 648
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 654
    invoke-virtual {p0}, Lcom/amazon/device/sync/AbstractSyncableDataset;->checkNotClosed()V

    .line 655
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 657
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/amazon/device/sync/SyncableStringMap;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 35
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/device/sync/SyncableStringMap;->putIfAbsent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public putIfAbsent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 416
    invoke-virtual {p0}, Lcom/amazon/device/sync/AbstractSyncableDataset;->checkNotClosed()V

    .line 417
    const-class v0, Ljava/lang/NullPointerException;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, ""

    invoke-static {p1, v0, v3, v2}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 418
    const-class v0, Ljava/lang/NullPointerException;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, ""

    invoke-static {p2, v0, v2, v1}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 419
    iget-object v0, p0, Lcom/amazon/device/sync/SyncableStringMap;->mEntries:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/amazon/device/sync/SyncableStringMap;->mEntries:Ljava/util/concurrent/ConcurrentMap;

    new-instance v2, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;

    const/4 v3, 0x1

    invoke-direct {v2, p1, p2, v3}, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v0, p1, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;

    if-nez v0, :cond_0

    return-object v1

    .line 428
    :cond_0
    monitor-enter v0

    .line 430
    :try_start_0
    invoke-virtual {v0}, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;->isDeleted()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 431
    :goto_0
    invoke-virtual {v0}, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;->isDeleted()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 433
    invoke-virtual {v0, p2}, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;->setValue(Ljava/lang/String;)V

    .line 435
    :cond_2
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    .line 436
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lcom/amazon/device/sync/SyncableStringMap;->remove(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    .line 664
    invoke-virtual {p0}, Lcom/amazon/device/sync/AbstractSyncableDataset;->checkNotClosed()V

    .line 665
    const-class v0, Ljava/lang/NullPointerException;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, ""

    invoke-static {p1, v0, v2, v1}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 667
    iget-object v0, p0, Lcom/amazon/device/sync/SyncableStringMap;->mEntries:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 672
    :cond_0
    monitor-enter p1

    .line 674
    :try_start_0
    invoke-virtual {p1}, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;->delete()Ljava/lang/String;

    move-result-object v0

    monitor-exit p1

    return-object v0

    :catchall_0
    move-exception v0

    .line 675
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4

    .line 442
    invoke-virtual {p0}, Lcom/amazon/device/sync/AbstractSyncableDataset;->checkNotClosed()V

    .line 443
    const-class v0, Ljava/lang/NullPointerException;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, ""

    invoke-static {p1, v0, v3, v2}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p2, :cond_0

    return v1

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/sync/SyncableStringMap;->mEntries:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;

    if-nez p1, :cond_1

    return v1

    .line 454
    :cond_1
    monitor-enter p1

    .line 456
    :try_start_0
    invoke-virtual {p1}, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;->isDeleted()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    .line 462
    :cond_2
    invoke-virtual {p1}, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;->delete()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    const/4 v1, 0x1

    :cond_3
    monitor-exit p1

    return v1

    .line 458
    :cond_4
    :goto_0
    monitor-exit p1

    return v1

    :catchall_0
    move-exception p2

    .line 464
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public bridge synthetic replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 35
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/device/sync/SyncableStringMap;->replace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public replace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 496
    invoke-virtual {p0}, Lcom/amazon/device/sync/AbstractSyncableDataset;->checkNotClosed()V

    .line 497
    const-class v0, Ljava/lang/NullPointerException;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, ""

    invoke-static {p1, v0, v3, v2}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 498
    const-class v0, Ljava/lang/NullPointerException;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, ""

    invoke-static {p2, v0, v2, v1}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 499
    iget-object v0, p0, Lcom/amazon/device/sync/SyncableStringMap;->mEntries:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 504
    :cond_0
    monitor-enter p1

    .line 507
    :try_start_0
    invoke-virtual {p1}, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;->isDeleted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 509
    invoke-virtual {p1}, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 510
    invoke-virtual {p1, p2}, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;->setValue(Ljava/lang/String;)V

    .line 512
    :cond_1
    monitor-exit p1

    return-object v0

    :catchall_0
    move-exception p2

    .line 513
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public bridge synthetic replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 35
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/device/sync/SyncableStringMap;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 470
    invoke-virtual {p0}, Lcom/amazon/device/sync/AbstractSyncableDataset;->checkNotClosed()V

    .line 471
    const-class v0, Ljava/lang/NullPointerException;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, ""

    invoke-static {p1, v0, v3, v2}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 472
    const-class v0, Ljava/lang/NullPointerException;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, ""

    invoke-static {p2, v0, v3, v2}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 473
    const-class v0, Ljava/lang/NullPointerException;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, ""

    invoke-static {p3, v0, v3, v2}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 474
    iget-object v0, p0, Lcom/amazon/device/sync/SyncableStringMap;->mEntries:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;

    if-nez p1, :cond_0

    return v1

    .line 479
    :cond_0
    monitor-enter p1

    .line 481
    :try_start_0
    invoke-virtual {p1}, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;->isDeleted()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 483
    invoke-virtual {p1, p3}, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;->setValue(Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 484
    monitor-exit p1

    return p2

    .line 488
    :cond_1
    monitor-exit p1

    return v1

    :catchall_0
    move-exception p2

    .line 490
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public bridge synthetic reset()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/device/sync/SyncableDeletedException;
        }
    .end annotation

    .line 35
    invoke-super {p0}, Lcom/amazon/device/sync/AbstractSyncableDataset;->reset()V

    return-void
.end method

.method public resetUncommitedChanges()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/device/sync/SyncableDeletedException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 923
    invoke-virtual {p0}, Lcom/amazon/device/sync/SyncableStringMap;->reset()V

    return-void
.end method

.method public size()I
    .locals 5

    .line 689
    invoke-virtual {p0}, Lcom/amazon/device/sync/AbstractSyncableDataset;->checkNotClosed()V

    .line 691
    iget-object v0, p0, Lcom/amazon/device/sync/SyncableStringMap;->mEntries:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;

    .line 693
    monitor-enter v3

    .line 695
    :try_start_0
    invoke-virtual {v3}, Lcom/amazon/device/sync/SyncableStringMap$SyncableEntry;->isDeleted()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    :cond_0
    const/4 v4, 0x1

    :goto_1
    add-int/2addr v2, v4

    .line 696
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    return v2
.end method

.method public bridge synthetic synchronize()Ljava/util/concurrent/Future;
    .locals 1

    .line 35
    invoke-super {p0}, Lcom/amazon/device/sync/AbstractSyncableDataset;->synchronize()Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 907
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 909
    invoke-virtual {p0}, Lcom/amazon/device/sync/SyncableStringMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    if-eqz v4, :cond_0

    const-string v4, ""

    goto :goto_1

    :cond_0
    const-string v4, ","

    :goto_1
    aput-object v4, v6, v2

    .line 911
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v6, v3

    const/4 v4, 0x2

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v6, v4

    const-string v4, "%s %s=%s"

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    const/16 v1, 0x7d

    .line 914
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic upload()Ljava/util/concurrent/Future;
    .locals 1

    .line 35
    invoke-super {p0}, Lcom/amazon/device/sync/AbstractSyncableDataset;->upload()Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 704
    invoke-virtual {p0}, Lcom/amazon/device/sync/AbstractSyncableDataset;->checkNotClosed()V

    .line 705
    iget-object v0, p0, Lcom/amazon/device/sync/SyncableStringMap;->mValues:Lcom/amazon/device/sync/SyncableStringMap$ValuesCollection;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amazon/device/sync/SyncableStringMap$ValuesCollection;

    invoke-direct {v0, p0}, Lcom/amazon/device/sync/SyncableStringMap$ValuesCollection;-><init>(Lcom/amazon/device/sync/SyncableStringMap;)V

    :cond_0
    iput-object v0, p0, Lcom/amazon/device/sync/SyncableStringMap;->mValues:Lcom/amazon/device/sync/SyncableStringMap$ValuesCollection;

    return-object v0
.end method
