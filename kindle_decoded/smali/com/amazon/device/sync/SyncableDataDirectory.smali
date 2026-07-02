.class public final Lcom/amazon/device/sync/SyncableDataDirectory;
.super Lcom/amazon/device/sync/AbstractSyncableDataset;
.source "SyncableDataDirectory.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/device/sync/AbstractSyncableDataset<",
        "Lcom/amazon/device/sync/SyncableDatasetInfo;",
        ">;",
        "Ljava/lang/Iterable<",
        "Lcom/amazon/device/sync/SyncableDatasetInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private volatile mDatasets:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/amazon/device/sync/SyncableDatasetInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTracer:Lcom/amazon/device/sync/Tracer;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/amazon/device/sync/SyncableDataStore;)V
    .locals 3

    .line 28
    invoke-direct {p0, p1}, Lcom/amazon/device/sync/AbstractSyncableDataset;-><init>(Lcom/amazon/device/sync/SyncableDataStore;)V

    .line 29
    new-instance p1, Lcom/amazon/whispersync/dcp/framework/RoboContextWrapper;

    iget-object v0, p0, Lcom/amazon/device/sync/AbstractSyncableDataset;->mDataStore:Lcom/amazon/device/sync/SyncableDataStore;

    invoke-virtual {v0}, Lcom/amazon/device/sync/SyncableDataStore;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/amazon/whispersync/dcp/framework/RoboContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-static {p1, p0}, Lcom/amazon/device/sync/SyncGuiceHelper;->injectMembers(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/device/sync/SyncableDataDirectory;->mDatasets:Ljava/util/Set;

    .line 32
    new-instance p1, Lcom/amazon/device/sync/OpenDirectoryOperation;

    iget-object v0, p0, Lcom/amazon/device/sync/AbstractSyncableDataset;->mDataStore:Lcom/amazon/device/sync/SyncableDataStore;

    invoke-virtual {v0}, Lcom/amazon/device/sync/SyncableDataStore;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/device/sync/AbstractSyncableDataset;->mDataStore:Lcom/amazon/device/sync/SyncableDataStore;

    invoke-virtual {v1}, Lcom/amazon/device/sync/SyncableDataStore;->getAccountId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/device/sync/SyncableDataDirectory;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v0, v1, v2}, Lcom/amazon/device/sync/OpenDirectoryOperation;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p1}, Lcom/amazon/device/sync/OpenDirectoryOperation;->execute()Ljava/util/Map;

    move-result-object p1

    .line 36
    iget-object v0, p0, Lcom/amazon/device/sync/SyncableDataDirectory;->mDatasets:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/device/sync/SyncableDataDirectory;)Ljava/util/Set;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/amazon/device/sync/SyncableDataDirectory;->mDatasets:Ljava/util/Set;

    return-object p0
.end method

.method static open(Lcom/amazon/device/sync/SyncableDataStore;)Lcom/amazon/device/sync/SyncableDataDirectory;
    .locals 1

    .line 43
    new-instance v0, Lcom/amazon/device/sync/SyncableDataDirectory;

    invoke-direct {v0, p0}, Lcom/amazon/device/sync/SyncableDataDirectory;-><init>(Lcom/amazon/device/sync/SyncableDataStore;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic close()V
    .locals 0

    .line 20
    invoke-super {p0}, Lcom/amazon/device/sync/AbstractSyncableDataset;->close()V

    return-void
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 3

    .line 102
    invoke-virtual {p0}, Lcom/amazon/device/sync/AbstractSyncableDataset;->checkNotClosed()V

    .line 103
    iget-object v0, p0, Lcom/amazon/device/sync/SyncableDataDirectory;->mTracer:Lcom/amazon/device/sync/Tracer;

    sget-object v1, Lcom/amazon/device/sync/Tracer$Traces;->MDC_CONTAINS:Lcom/amazon/device/sync/Tracer$Traces;

    new-instance v2, Lcom/amazon/device/sync/SyncableDataDirectory$1;

    invoke-direct {v2, p0, p1}, Lcom/amazon/device/sync/SyncableDataDirectory$1;-><init>(Lcom/amazon/device/sync/SyncableDataDirectory;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer;->traceOnCurrentThread(Ljava/lang/Enum;Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer$NotThrowingCallable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 121
    invoke-virtual {p0}, Lcom/amazon/device/sync/AbstractSyncableDataset;->checkNotClosed()V

    .line 122
    iget-object v0, p0, Lcom/amazon/device/sync/SyncableDataDirectory;->mTracer:Lcom/amazon/device/sync/Tracer;

    sget-object v1, Lcom/amazon/device/sync/Tracer$Traces;->MDC_CONTAINS_ALL:Lcom/amazon/device/sync/Tracer$Traces;

    new-instance v2, Lcom/amazon/device/sync/SyncableDataDirectory$2;

    invoke-direct {v2, p0, p1}, Lcom/amazon/device/sync/SyncableDataDirectory$2;-><init>(Lcom/amazon/device/sync/SyncableDataDirectory;Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer;->traceOnCurrentThread(Ljava/lang/Enum;Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer$NotThrowingCallable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method protected doClose()V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/amazon/device/sync/SyncableDataDirectory;->mDatasets:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method protected doDownload()Ljava/util/concurrent/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 187
    invoke-static {}, Lcom/amazon/device/sync/Synchronizer;->getInstance()Lcom/amazon/device/sync/Synchronizer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/device/sync/SyncableDataDirectory;->getAccountId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/amazon/device/sync/gear/Constants;->CLIENT_INITIATED:Lcom/amazon/whispersync/Reason;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/sync/Synchronizer;->downloadDirectory(Ljava/lang/String;Lcom/amazon/whispersync/Reason;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method protected doFetch()V
    .locals 4

    .line 49
    new-instance v0, Lcom/amazon/device/sync/OpenDirectoryOperation;

    iget-object v1, p0, Lcom/amazon/device/sync/AbstractSyncableDataset;->mDataStore:Lcom/amazon/device/sync/SyncableDataStore;

    invoke-virtual {v1}, Lcom/amazon/device/sync/SyncableDataStore;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/device/sync/AbstractSyncableDataset;->mDataStore:Lcom/amazon/device/sync/SyncableDataStore;

    invoke-virtual {v2}, Lcom/amazon/device/sync/SyncableDataStore;->getAccountId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/device/sync/SyncableDataDirectory;->getNamespace()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/device/sync/OpenDirectoryOperation;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v1

    .line 54
    invoke-virtual {v0}, Lcom/amazon/device/sync/OpenDirectoryOperation;->execute()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 55
    iput-object v1, p0, Lcom/amazon/device/sync/SyncableDataDirectory;->mDatasets:Ljava/util/Set;

    return-void
.end method

.method protected doFlush()V
    .locals 0

    return-void
.end method

.method protected doGetConflicts()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/amazon/device/sync/Conflict<",
            "Lcom/amazon/device/sync/SyncableDatasetInfo;",
            ">;>;"
        }
    .end annotation

    .line 193
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected doHasConflicts()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected doReset()V
    .locals 0

    return-void
.end method

.method protected doSynchronize()Ljava/util/concurrent/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 175
    invoke-static {}, Lcom/amazon/device/sync/Synchronizer;->getInstance()Lcom/amazon/device/sync/Synchronizer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/device/sync/SyncableDataDirectory;->getAccountId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/device/sync/SyncableDataDirectory;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/sync/Synchronizer;->synchronizeDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method protected doUpload()Ljava/util/concurrent/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 181
    invoke-static {}, Lcom/amazon/device/sync/Synchronizer;->getInstance()Lcom/amazon/device/sync/Synchronizer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/device/sync/SyncableDataDirectory;->getAccountId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/device/sync/SyncableDataDirectory;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/sync/Synchronizer;->uploadDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic download()Ljava/util/concurrent/Future;
    .locals 1

    .line 20
    invoke-super {p0}, Lcom/amazon/device/sync/AbstractSyncableDataset;->download()Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic fetch()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/device/sync/SyncableDeletedException;
        }
    .end annotation

    .line 20
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

    .line 20
    invoke-super {p0}, Lcom/amazon/device/sync/AbstractSyncableDataset;->flush()V

    return-void
.end method

.method public bridge synthetic getAccountId()Ljava/lang/String;
    .locals 1

    .line 20
    invoke-super {p0}, Lcom/amazon/device/sync/AbstractSyncableDataset;->getAccountId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getConflicts()Ljava/util/Set;
    .locals 1

    .line 20
    invoke-super {p0}, Lcom/amazon/device/sync/AbstractSyncableDataset;->getConflicts()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 73
    sget-object v0, Lcom/amazon/device/sync/DatasetType;->Directory:Lcom/amazon/device/sync/DatasetType;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getNamespace()Ljava/lang/String;
    .locals 1

    .line 20
    invoke-super {p0}, Lcom/amazon/device/sync/AbstractSyncableDataset;->getNamespace()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/amazon/device/sync/DatasetType;
    .locals 1

    .line 64
    sget-object v0, Lcom/amazon/device/sync/DatasetType;->Directory:Lcom/amazon/device/sync/DatasetType;

    return-object v0
.end method

.method public bridge synthetic hasConflicts()Z
    .locals 1

    .line 20
    invoke-super {p0}, Lcom/amazon/device/sync/AbstractSyncableDataset;->hasConflicts()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isClosed()Z
    .locals 1

    .line 20
    invoke-super {p0}, Lcom/amazon/device/sync/AbstractSyncableDataset;->isClosed()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 3

    .line 161
    invoke-virtual {p0}, Lcom/amazon/device/sync/AbstractSyncableDataset;->checkNotClosed()V

    .line 162
    iget-object v0, p0, Lcom/amazon/device/sync/SyncableDataDirectory;->mTracer:Lcom/amazon/device/sync/Tracer;

    sget-object v1, Lcom/amazon/device/sync/Tracer$Traces;->MDC_IS_EMPTY:Lcom/amazon/device/sync/Tracer$Traces;

    new-instance v2, Lcom/amazon/device/sync/SyncableDataDirectory$4;

    invoke-direct {v2, p0}, Lcom/amazon/device/sync/SyncableDataDirectory$4;-><init>(Lcom/amazon/device/sync/SyncableDataDirectory;)V

    invoke-virtual {v0, v1, v2}, Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer;->traceOnCurrentThread(Ljava/lang/Enum;Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer$NotThrowingCallable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/amazon/device/sync/SyncableDatasetInfo;",
            ">;"
        }
    .end annotation

    .line 142
    invoke-virtual {p0}, Lcom/amazon/device/sync/AbstractSyncableDataset;->checkNotClosed()V

    .line 143
    iget-object v0, p0, Lcom/amazon/device/sync/SyncableDataDirectory;->mTracer:Lcom/amazon/device/sync/Tracer;

    sget-object v1, Lcom/amazon/device/sync/Tracer$Traces;->MDC_ITERATOR:Lcom/amazon/device/sync/Tracer$Traces;

    new-instance v2, Lcom/amazon/device/sync/SyncableDataDirectory$3;

    invoke-direct {v2, p0}, Lcom/amazon/device/sync/SyncableDataDirectory$3;-><init>(Lcom/amazon/device/sync/SyncableDataDirectory;)V

    invoke-virtual {v0, v1, v2}, Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer;->traceOnCurrentThread(Ljava/lang/Enum;Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer$NotThrowingCallable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    return-object v0
.end method

.method onDatasetCreated(Lcom/amazon/device/sync/SyncableDatasetInfo;)V
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/amazon/device/sync/SyncableDataDirectory;->mDatasets:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method onDatasetDeleted(Lcom/amazon/device/sync/SyncableDatasetInfo;)V
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/amazon/device/sync/SyncableDataDirectory;->mDatasets:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic reset()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/device/sync/SyncableDeletedException;
        }
    .end annotation

    .line 20
    invoke-super {p0}, Lcom/amazon/device/sync/AbstractSyncableDataset;->reset()V

    return-void
.end method

.method public bridge synthetic synchronize()Ljava/util/concurrent/Future;
    .locals 1

    .line 20
    invoke-super {p0}, Lcom/amazon/device/sync/AbstractSyncableDataset;->synchronize()Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic upload()Ljava/util/concurrent/Future;
    .locals 1

    .line 20
    invoke-super {p0}, Lcom/amazon/device/sync/AbstractSyncableDataset;->upload()Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method
