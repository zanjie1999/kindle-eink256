.class abstract Lcom/amazon/device/sync/AbstractSyncableDataset;
.super Ljava/lang/Object;
.source "AbstractSyncableDataset.java"

# interfaces
.implements Lcom/amazon/device/sync/SyncableDataset;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/amazon/device/sync/SyncableDataset<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final CLOSE_TRACES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/amazon/device/sync/Tracer$Traces;",
            ">;"
        }
    .end annotation
.end field

.field private static final FALSE_FUTURE:Lcom/amazon/whispersync/dcp/framework/ManualFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/dcp/framework/ManualFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final FETCH_TRACES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/amazon/device/sync/Tracer$Traces;",
            ">;"
        }
    .end annotation
.end field

.field private static final FLUSH_TRACES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/amazon/device/sync/Tracer$Traces;",
            ">;"
        }
    .end annotation
.end field

.field private static final RESET_TRACES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/amazon/device/sync/Tracer$Traces;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile mClosed:Z

.field protected final mDataStore:Lcom/amazon/device/sync/SyncableDataStore;

.field private volatile mDeleted:Z

.field private final mDiskLock:Ljava/lang/Object;

.field private mTracer:Lcom/amazon/device/sync/Tracer;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Lcom/amazon/device/sync/AbstractSyncableDataset$1;

    invoke-direct {v0}, Lcom/amazon/device/sync/AbstractSyncableDataset$1;-><init>()V

    sput-object v0, Lcom/amazon/device/sync/AbstractSyncableDataset;->CLOSE_TRACES:Ljava/util/Map;

    .line 26
    new-instance v0, Lcom/amazon/device/sync/AbstractSyncableDataset$2;

    invoke-direct {v0}, Lcom/amazon/device/sync/AbstractSyncableDataset$2;-><init>()V

    sput-object v0, Lcom/amazon/device/sync/AbstractSyncableDataset;->FETCH_TRACES:Ljava/util/Map;

    .line 29
    new-instance v0, Lcom/amazon/device/sync/AbstractSyncableDataset$3;

    invoke-direct {v0}, Lcom/amazon/device/sync/AbstractSyncableDataset$3;-><init>()V

    sput-object v0, Lcom/amazon/device/sync/AbstractSyncableDataset;->FLUSH_TRACES:Ljava/util/Map;

    .line 32
    new-instance v0, Lcom/amazon/device/sync/AbstractSyncableDataset$4;

    invoke-direct {v0}, Lcom/amazon/device/sync/AbstractSyncableDataset$4;-><init>()V

    sput-object v0, Lcom/amazon/device/sync/AbstractSyncableDataset;->RESET_TRACES:Ljava/util/Map;

    .line 35
    new-instance v0, Lcom/amazon/device/sync/AbstractSyncableDataset$5;

    invoke-direct {v0}, Lcom/amazon/device/sync/AbstractSyncableDataset$5;-><init>()V

    sput-object v0, Lcom/amazon/device/sync/AbstractSyncableDataset;->FALSE_FUTURE:Lcom/amazon/whispersync/dcp/framework/ManualFuture;

    return-void
.end method

.method protected constructor <init>(Lcom/amazon/device/sync/SyncableDataStore;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/sync/AbstractSyncableDataset;->mDiskLock:Ljava/lang/Object;

    .line 47
    iput-object p1, p0, Lcom/amazon/device/sync/AbstractSyncableDataset;->mDataStore:Lcom/amazon/device/sync/SyncableDataStore;

    const/4 p1, 0x0

    .line 48
    iput-boolean p1, p0, Lcom/amazon/device/sync/AbstractSyncableDataset;->mDeleted:Z

    .line 49
    iput-boolean p1, p0, Lcom/amazon/device/sync/AbstractSyncableDataset;->mClosed:Z

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/device/sync/AbstractSyncableDataset;)Ljava/lang/Object;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/amazon/device/sync/AbstractSyncableDataset;->mDiskLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/device/sync/AbstractSyncableDataset;)Z
    .locals 0

    .line 21
    iget-boolean p0, p0, Lcom/amazon/device/sync/AbstractSyncableDataset;->mClosed:Z

    return p0
.end method

.method static synthetic access$102(Lcom/amazon/device/sync/AbstractSyncableDataset;Z)Z
    .locals 0

    .line 21
    iput-boolean p1, p0, Lcom/amazon/device/sync/AbstractSyncableDataset;->mClosed:Z

    return p1
.end method

.method static synthetic access$200(Lcom/amazon/device/sync/AbstractSyncableDataset;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/device/sync/SyncableDeletedException;
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Lcom/amazon/device/sync/AbstractSyncableDataset;->checkNotDeleted()V

    return-void
.end method

.method private checkNotDeleted()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/device/sync/SyncableDeletedException;
        }
    .end annotation

    .line 280
    iget-boolean v0, p0, Lcom/amazon/device/sync/AbstractSyncableDataset;->mDeleted:Z

    const-class v1, Lcom/amazon/device/sync/SyncableDeletedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Lcom/amazon/device/sync/SyncableDataset;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " was deleted on cloud"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v4}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkFalse(ZLjava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 281
    iget-object v0, p0, Lcom/amazon/device/sync/AbstractSyncableDataset;->mDataStore:Lcom/amazon/device/sync/SyncableDataStore;

    invoke-virtual {v0}, Lcom/amazon/device/sync/SyncableDataStore;->isDeleted()Z

    move-result v0

    const-class v1, Ljava/lang/IllegalStateException;

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "Datastore has been cleared"

    invoke-static {v0, v1, v3, v2}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkFalse(ZLjava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private isSyncableDeleted()Z
    .locals 1

    .line 260
    iget-boolean v0, p0, Lcom/amazon/device/sync/AbstractSyncableDataset;->mDeleted:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amazon/device/sync/AbstractSyncableDataset;->mDataStore:Lcom/amazon/device/sync/SyncableDataStore;

    invoke-virtual {v0}, Lcom/amazon/device/sync/SyncableDataStore;->isDeleted()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method protected checkNotClosed()V
    .locals 4

    .line 98
    iget-boolean v0, p0, Lcom/amazon/device/sync/AbstractSyncableDataset;->mClosed:Z

    const-class v1, Ljava/lang/IllegalStateException;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Map is closed."

    invoke-static {v0, v1, v3, v2}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkFalse(ZLjava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public close()V
    .locals 3

    .line 69
    iget-object v0, p0, Lcom/amazon/device/sync/AbstractSyncableDataset;->mTracer:Lcom/amazon/device/sync/Tracer;

    sget-object v1, Lcom/amazon/device/sync/AbstractSyncableDataset;->CLOSE_TRACES:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Enum;

    new-instance v2, Lcom/amazon/device/sync/AbstractSyncableDataset$6;

    invoke-direct {v2, p0}, Lcom/amazon/device/sync/AbstractSyncableDataset$6;-><init>(Lcom/amazon/device/sync/AbstractSyncableDataset;)V

    invoke-virtual {v0, v1, v2}, Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer;->traceOnCurrentThread(Ljava/lang/Enum;Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer$NotThrowingCallable;)Ljava/lang/Object;

    return-void
.end method

.method protected abstract doClose()V
.end method

.method protected abstract doDownload()Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract doFetch()V
.end method

.method protected abstract doFlush()V
.end method

.method protected abstract doGetConflicts()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/amazon/device/sync/Conflict<",
            "TE;>;>;"
        }
    .end annotation
.end method

.method protected abstract doHasConflicts()Z
.end method

.method protected abstract doReset()V
.end method

.method protected abstract doSynchronize()Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract doUpload()Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method public download()Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 224
    invoke-virtual {p0}, Lcom/amazon/device/sync/AbstractSyncableDataset;->checkNotClosed()V

    .line 225
    invoke-direct {p0}, Lcom/amazon/device/sync/AbstractSyncableDataset;->isSyncableDeleted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    sget-object v0, Lcom/amazon/device/sync/AbstractSyncableDataset;->FALSE_FUTURE:Lcom/amazon/whispersync/dcp/framework/ManualFuture;

    return-object v0

    .line 229
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/device/sync/AbstractSyncableDataset;->doDownload()Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public fetch()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/device/sync/SyncableDeletedException;
        }
    .end annotation

    .line 166
    invoke-static {}, Lcom/amazon/device/sync/gear/StaticUtils;->ensureNotRunningOnMainThread()V

    .line 169
    :try_start_0
    iget-object v0, p0, Lcom/amazon/device/sync/AbstractSyncableDataset;->mTracer:Lcom/amazon/device/sync/Tracer;

    sget-object v1, Lcom/amazon/device/sync/AbstractSyncableDataset;->FETCH_TRACES:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Enum;

    new-instance v2, Lcom/amazon/device/sync/AbstractSyncableDataset$9;

    invoke-direct {v2, p0}, Lcom/amazon/device/sync/AbstractSyncableDataset$9;-><init>(Lcom/amazon/device/sync/AbstractSyncableDataset;)V

    invoke-virtual {v0, v1, v2}, Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer;->traceOnCurrentThread(Ljava/lang/Enum;Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer$ThrowingCallable;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/amazon/whispersync/ResourceNotAvailableException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/4 v0, 0x1

    .line 187
    iput-boolean v0, p0, Lcom/amazon/device/sync/AbstractSyncableDataset;->mDeleted:Z

    .line 188
    new-instance v0, Lcom/amazon/device/sync/SyncableDeletedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Lcom/amazon/device/sync/SyncableDataset;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " was deleted on the cloud."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/device/sync/SyncableDeletedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public flush()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/device/sync/SyncableDeletedException;
        }
    .end annotation

    .line 104
    invoke-static {}, Lcom/amazon/device/sync/gear/StaticUtils;->ensureNotRunningOnMainThread()V

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/amazon/device/sync/AbstractSyncableDataset;->mTracer:Lcom/amazon/device/sync/Tracer;

    sget-object v1, Lcom/amazon/device/sync/AbstractSyncableDataset;->FLUSH_TRACES:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Enum;

    new-instance v2, Lcom/amazon/device/sync/AbstractSyncableDataset$7;

    invoke-direct {v2, p0}, Lcom/amazon/device/sync/AbstractSyncableDataset$7;-><init>(Lcom/amazon/device/sync/AbstractSyncableDataset;)V

    invoke-virtual {v0, v1, v2}, Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer;->traceOnCurrentThread(Ljava/lang/Enum;Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer$ThrowingCallable;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/amazon/whispersync/ResourceNotAvailableException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/4 v0, 0x1

    .line 125
    iput-boolean v0, p0, Lcom/amazon/device/sync/AbstractSyncableDataset;->mDeleted:Z

    .line 126
    new-instance v0, Lcom/amazon/device/sync/SyncableDeletedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Lcom/amazon/device/sync/SyncableDataset;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " was deleted on the cloud."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/device/sync/SyncableDeletedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAccountId()Ljava/lang/String;
    .locals 1

    .line 55
    invoke-virtual {p0}, Lcom/amazon/device/sync/AbstractSyncableDataset;->checkNotClosed()V

    .line 56
    iget-object v0, p0, Lcom/amazon/device/sync/AbstractSyncableDataset;->mDataStore:Lcom/amazon/device/sync/SyncableDataStore;

    invoke-virtual {v0}, Lcom/amazon/device/sync/SyncableDataStore;->getAccountId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConflicts()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/amazon/device/sync/Conflict<",
            "TE;>;>;"
        }
    .end annotation

    .line 237
    invoke-virtual {p0}, Lcom/amazon/device/sync/AbstractSyncableDataset;->checkNotClosed()V

    .line 238
    invoke-direct {p0}, Lcom/amazon/device/sync/AbstractSyncableDataset;->isSyncableDeleted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 242
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/device/sync/AbstractSyncableDataset;->doGetConflicts()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .line 62
    invoke-virtual {p0}, Lcom/amazon/device/sync/AbstractSyncableDataset;->checkNotClosed()V

    .line 63
    iget-object v0, p0, Lcom/amazon/device/sync/AbstractSyncableDataset;->mDataStore:Lcom/amazon/device/sync/SyncableDataStore;

    invoke-virtual {v0}, Lcom/amazon/device/sync/SyncableDataStore;->getNamespace()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasConflicts()Z
    .locals 1

    .line 250
    invoke-virtual {p0}, Lcom/amazon/device/sync/AbstractSyncableDataset;->checkNotClosed()V

    .line 251
    invoke-direct {p0}, Lcom/amazon/device/sync/AbstractSyncableDataset;->isSyncableDeleted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 255
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/device/sync/AbstractSyncableDataset;->doHasConflicts()Z

    move-result v0

    return v0
.end method

.method public isClosed()Z
    .locals 1

    .line 91
    iget-boolean v0, p0, Lcom/amazon/device/sync/AbstractSyncableDataset;->mClosed:Z

    return v0
.end method

.method isDeleted()Z
    .locals 1

    .line 267
    iget-boolean v0, p0, Lcom/amazon/device/sync/AbstractSyncableDataset;->mDeleted:Z

    return v0
.end method

.method public reset()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/device/sync/SyncableDeletedException;
        }
    .end annotation

    .line 135
    invoke-static {}, Lcom/amazon/device/sync/gear/StaticUtils;->ensureNotRunningOnMainThread()V

    .line 138
    :try_start_0
    iget-object v0, p0, Lcom/amazon/device/sync/AbstractSyncableDataset;->mTracer:Lcom/amazon/device/sync/Tracer;

    sget-object v1, Lcom/amazon/device/sync/AbstractSyncableDataset;->RESET_TRACES:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Enum;

    new-instance v2, Lcom/amazon/device/sync/AbstractSyncableDataset$8;

    invoke-direct {v2, p0}, Lcom/amazon/device/sync/AbstractSyncableDataset$8;-><init>(Lcom/amazon/device/sync/AbstractSyncableDataset;)V

    invoke-virtual {v0, v1, v2}, Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer;->traceOnCurrentThread(Ljava/lang/Enum;Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer$ThrowingCallable;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/amazon/whispersync/ResourceNotAvailableException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/4 v0, 0x1

    .line 156
    iput-boolean v0, p0, Lcom/amazon/device/sync/AbstractSyncableDataset;->mDeleted:Z

    .line 157
    new-instance v0, Lcom/amazon/device/sync/SyncableDeletedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Lcom/amazon/device/sync/SyncableDataset;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " was deleted on the cloud."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/device/sync/SyncableDeletedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setDeleted()V
    .locals 2

    .line 272
    iget-object v0, p0, Lcom/amazon/device/sync/AbstractSyncableDataset;->mDiskLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 274
    :try_start_0
    iput-boolean v1, p0, Lcom/amazon/device/sync/AbstractSyncableDataset;->mDeleted:Z

    .line 275
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synchronize()Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 197
    invoke-virtual {p0}, Lcom/amazon/device/sync/AbstractSyncableDataset;->checkNotClosed()V

    .line 198
    invoke-direct {p0}, Lcom/amazon/device/sync/AbstractSyncableDataset;->isSyncableDeleted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    sget-object v0, Lcom/amazon/device/sync/AbstractSyncableDataset;->FALSE_FUTURE:Lcom/amazon/whispersync/dcp/framework/ManualFuture;

    return-object v0

    .line 202
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/device/sync/AbstractSyncableDataset;->doSynchronize()Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public upload()Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 211
    invoke-virtual {p0}, Lcom/amazon/device/sync/AbstractSyncableDataset;->checkNotClosed()V

    .line 212
    invoke-direct {p0}, Lcom/amazon/device/sync/AbstractSyncableDataset;->isSyncableDeleted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    sget-object v0, Lcom/amazon/device/sync/AbstractSyncableDataset;->FALSE_FUTURE:Lcom/amazon/whispersync/dcp/framework/ManualFuture;

    return-object v0

    .line 216
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/device/sync/AbstractSyncableDataset;->doUpload()Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method
