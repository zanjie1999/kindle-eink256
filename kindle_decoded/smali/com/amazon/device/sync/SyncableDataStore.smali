.class public Lcom/amazon/device/sync/SyncableDataStore;
.super Ljava/lang/Object;
.source "SyncableDataStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/sync/SyncableDataStore$StringMapReference;,
        Lcom/amazon/device/sync/SyncableDataStore$DatastoreReference;
    }
.end annotation


# static fields
.field private static final DATASTORES:Ljava/util/Map;
    .annotation build Lcom/amazon/whispersync/net/jcip/annotations/GuardedBy;
        value = "DATASTORES"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/device/sync/SyncableDataStore$DatastoreReference;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAX_NAMESPACE_LENGTH:I = 0x400

.field private static final UNUSED_DATASTORES:Ljava/lang/ref/ReferenceQueue;
    .annotation build Lcom/amazon/whispersync/net/jcip/annotations/GuardedBy;
        value = "DATASTORES"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Lcom/amazon/device/sync/SyncableDataStore;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAccountId:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private volatile mDeleted:Z

.field private final mNamespace:Ljava/lang/String;

.field private final mOpenLock:Ljava/lang/Object;

.field private mOpenedDirectory:Ljava/lang/ref/SoftReference;
    .annotation build Lcom/amazon/whispersync/net/jcip/annotations/GuardedBy;
        value = "mOpenLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Lcom/amazon/device/sync/SyncableDataDirectory;",
            ">;"
        }
    .end annotation
.end field

.field private final mOpenedMaps:Ljava/util/Map;
    .annotation build Lcom/amazon/whispersync/net/jcip/annotations/GuardedBy;
        value = "mOpenLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/device/sync/SyncableDataStore$StringMapReference;",
            ">;"
        }
    .end annotation
.end field

.field private mTracer:Lcom/amazon/device/sync/Tracer;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation
.end field

.field private mUnusedMaps:Ljava/lang/ref/ReferenceQueue;
    .annotation build Lcom/amazon/whispersync/net/jcip/annotations/GuardedBy;
        value = "mOpenLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Lcom/amazon/device/sync/SyncableStringMap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazon/device/sync/SyncableDataStore;->DATASTORES:Ljava/util/Map;

    .line 53
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Lcom/amazon/device/sync/SyncableDataStore;->UNUSED_DATASTORES:Ljava/lang/ref/ReferenceQueue;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/sync/SyncableDataStore;->mOpenedMaps:Ljava/util/Map;

    .line 67
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/sync/SyncableDataStore;->mUnusedMaps:Ljava/lang/ref/ReferenceQueue;

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lcom/amazon/device/sync/SyncableDataStore;->mOpenedDirectory:Ljava/lang/ref/SoftReference;

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/sync/SyncableDataStore;->mOpenLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 76
    iput-boolean v0, p0, Lcom/amazon/device/sync/SyncableDataStore;->mDeleted:Z

    .line 81
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/RoboContextWrapper;

    invoke-direct {v0, p1}, Lcom/amazon/whispersync/dcp/framework/RoboContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-static {v0, p0}, Lcom/amazon/device/sync/SyncGuiceHelper;->injectMembers(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iput-object p1, p0, Lcom/amazon/device/sync/SyncableDataStore;->mContext:Landroid/content/Context;

    .line 83
    iput-object p3, p0, Lcom/amazon/device/sync/SyncableDataStore;->mNamespace:Ljava/lang/String;

    .line 84
    iput-object p2, p0, Lcom/amazon/device/sync/SyncableDataStore;->mAccountId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/ref/ReferenceQueue;
    .locals 1

    .line 33
    sget-object v0, Lcom/amazon/device/sync/SyncableDataStore;->UNUSED_DATASTORES:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 33
    invoke-static {p0, p1}, Lcom/amazon/device/sync/SyncableDataStore;->getDataStoreKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/device/sync/SyncableDataStore;)Ljava/lang/ref/ReferenceQueue;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/amazon/device/sync/SyncableDataStore;->mUnusedMaps:Ljava/lang/ref/ReferenceQueue;

    return-object p0
.end method

.method private clear()V
    .locals 3

    .line 708
    iget-object v0, p0, Lcom/amazon/device/sync/SyncableDataStore;->mOpenLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 711
    :try_start_0
    iput-boolean v1, p0, Lcom/amazon/device/sync/SyncableDataStore;->mDeleted:Z

    .line 712
    new-instance v1, Ljava/lang/ref/SoftReference;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/amazon/device/sync/SyncableDataStore;->mOpenedDirectory:Ljava/lang/ref/SoftReference;

    .line 713
    iget-object v1, p0, Lcom/amazon/device/sync/SyncableDataStore;->mOpenedMaps:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 714
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static clearLocalStorage(Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 593
    const-class v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "context cannot be null"

    invoke-static {p0, v0, v2, v1}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 595
    invoke-static {}, Lcom/amazon/device/sync/gear/StaticUtils;->ensureNotRunningOnMainThread()V

    .line 596
    sget-object v0, Lcom/amazon/device/sync/SyncableDataStore;->DATASTORES:Ljava/util/Map;

    monitor-enter v0

    .line 600
    :try_start_0
    invoke-static {}, Lcom/amazon/device/sync/Synchronizer;->getInstance()Lcom/amazon/device/sync/Synchronizer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/device/sync/Synchronizer;->reset()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 607
    :try_start_1
    sget-object v1, Lcom/amazon/device/sync/SyncableDataStore;->DATASTORES:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/device/sync/SyncableDataStore$DatastoreReference;

    .line 609
    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/device/sync/SyncableDataStore;

    if-eqz v2, :cond_0

    .line 612
    invoke-direct {v2}, Lcom/amazon/device/sync/SyncableDataStore;->clear()V

    goto :goto_0

    .line 615
    :cond_1
    sget-object v1, Lcom/amazon/device/sync/SyncableDataStore;->DATASTORES:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 617
    invoke-static {p0}, Lcom/amazon/device/sync/SyncDb;->deleteAll(Landroid/content/Context;)V

    .line 618
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 604
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 618
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static clearLocalStorage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 643
    const-class v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "context cannot be null"

    invoke-static {p0, v0, v3, v2}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 644
    const-class v0, Ljava/lang/IllegalArgumentException;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "accountId cannot be null"

    invoke-static {p1, v0, v2, v1}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 646
    invoke-static {}, Lcom/amazon/device/sync/gear/StaticUtils;->ensureNotRunningOnMainThread()V

    .line 647
    sget-object v0, Lcom/amazon/device/sync/SyncableDataStore;->DATASTORES:Ljava/util/Map;

    monitor-enter v0

    .line 653
    :try_start_0
    invoke-static {}, Lcom/amazon/device/sync/Synchronizer;->getInstance()Lcom/amazon/device/sync/Synchronizer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/device/sync/Synchronizer;->reset()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 660
    :try_start_1
    sget-object v1, Lcom/amazon/device/sync/SyncableDataStore;->DATASTORES:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 661
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 663
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 664
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, ""

    invoke-static {p1, v4}, Lcom/amazon/device/sync/SyncableDataStore;->getDataStoreKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 666
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/device/sync/SyncableDataStore$DatastoreReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/device/sync/SyncableDataStore;

    if-eqz v2, :cond_1

    .line 669
    invoke-direct {v2}, Lcom/amazon/device/sync/SyncableDataStore;->clear()V

    .line 671
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 675
    :cond_2
    invoke-static {p0, p1}, Lcom/amazon/device/sync/SyncDb;->delete(Landroid/content/Context;Ljava/lang/String;)V

    .line 676
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 657
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 676
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static clearUnusedDatastores()V
    .locals 3

    .line 732
    sget-object v0, Lcom/amazon/device/sync/SyncableDataStore;->DATASTORES:Ljava/util/Map;

    monitor-enter v0

    .line 734
    :goto_0
    :try_start_0
    sget-object v1, Lcom/amazon/device/sync/SyncableDataStore;->UNUSED_DATASTORES:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v1

    check-cast v1, Lcom/amazon/device/sync/SyncableDataStore$DatastoreReference;

    if-eqz v1, :cond_0

    .line 736
    sget-object v2, Lcom/amazon/device/sync/SyncableDataStore;->DATASTORES:Ljava/util/Map;

    iget-object v1, v1, Lcom/amazon/device/sync/SyncableDataStore$DatastoreReference;->mKey:Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 738
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private clearUnusedMaps()V
    .locals 3

    .line 719
    iget-object v0, p0, Lcom/amazon/device/sync/SyncableDataStore;->mOpenLock:Ljava/lang/Object;

    monitor-enter v0

    .line 722
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/amazon/device/sync/SyncableDataStore;->mUnusedMaps:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v1

    check-cast v1, Lcom/amazon/device/sync/SyncableDataStore$StringMapReference;

    if-eqz v1, :cond_0

    .line 724
    iget-object v2, p0, Lcom/amazon/device/sync/SyncableDataStore;->mOpenedMaps:Ljava/util/Map;

    iget-object v1, v1, Lcom/amazon/device/sync/SyncableDataStore$StringMapReference;->mName:Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 726
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static getDataStoreKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 681
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5e

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/device/sync/SyncableDataStore;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 103
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/RoboContextWrapper;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/dcp/framework/RoboContextWrapper;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/amazon/whispersync/dcp/framework/auth/DcpAccountManager;

    invoke-static {v0, v1}, Lcom/amazon/device/sync/SyncGuiceHelper;->getInstance(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispersync/dcp/framework/auth/DcpAccountManager;

    .line 105
    invoke-interface {v0}, Lcom/amazon/whispersync/dcp/framework/auth/DcpAccountManager;->getAccount()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/amazon/device/sync/SyncableDataStore;->getInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/device/sync/SyncableDataStore;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/device/sync/SyncableDataStore;
    .locals 5

    .line 122
    const-class v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "context may not be null"

    invoke-static {p0, v0, v3, v2}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    const-class v0, Ljava/lang/IllegalArgumentException;

    new-array v2, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "namespace may not be null"

    invoke-static {p2, v0, v3, v2}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x400

    if-le v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-class v2, Ljava/lang/IllegalArgumentException;

    new-array v3, v1, [Ljava/lang/Object;

    const-string/jumbo v4, "namespace is too long"

    invoke-static {v0, v2, v4, v3}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkFalse(ZLjava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-class v2, Ljava/lang/IllegalArgumentException;

    new-array v3, v1, [Ljava/lang/Object;

    const-string/jumbo v4, "namespace cannot be empty"

    invoke-static {v0, v2, v4, v3}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkFalse(ZLjava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    const-class v0, Ljava/lang/IllegalArgumentException;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "accountId cannot be empty"

    invoke-static {p1, v0, v2, v1}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    invoke-static {p1, p2}, Lcom/amazon/device/sync/SyncableDataStore;->getDataStoreKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    sget-object v1, Lcom/amazon/device/sync/SyncableDataStore;->DATASTORES:Ljava/util/Map;

    monitor-enter v1

    .line 133
    :try_start_0
    sget-object v2, Lcom/amazon/device/sync/SyncableDataStore;->DATASTORES:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/amazon/device/sync/SyncableDataStore;->DATASTORES:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/device/sync/SyncableDataStore$DatastoreReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/device/sync/SyncableDataStore;

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_2

    .line 134
    iget-boolean v3, v2, Lcom/amazon/device/sync/SyncableDataStore;->mDeleted:Z

    if-eqz v3, :cond_3

    .line 136
    :cond_2
    new-instance v2, Lcom/amazon/device/sync/SyncableDataStore;

    invoke-direct {v2, p0, p1, p2}, Lcom/amazon/device/sync/SyncableDataStore;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    sget-object p0, Lcom/amazon/device/sync/SyncableDataStore;->DATASTORES:Ljava/util/Map;

    new-instance p2, Lcom/amazon/device/sync/SyncableDataStore$DatastoreReference;

    invoke-direct {p2, v2}, Lcom/amazon/device/sync/SyncableDataStore$DatastoreReference;-><init>(Lcom/amazon/device/sync/SyncableDataStore;)V

    invoke-interface {p0, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    invoke-static {p1}, Lcom/amazon/device/sync/SyncDb;->registerAccount(Ljava/lang/String;)V

    .line 140
    :cond_3
    invoke-static {}, Lcom/amazon/device/sync/SyncableDataStore;->clearUnusedDatastores()V

    .line 141
    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception p0

    .line 142
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method closeDataset(Lcom/amazon/device/sync/SyncableDataset;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/device/sync/SyncableDataset<",
            "*>;)V"
        }
    .end annotation

    .line 691
    iget-object v0, p0, Lcom/amazon/device/sync/SyncableDataStore;->mOpenLock:Ljava/lang/Object;

    monitor-enter v0

    .line 693
    :try_start_0
    sget-object v1, Lcom/amazon/device/sync/SyncableDataStore$5;->$SwitchMap$com$amazon$device$sync$DatasetType:[I

    invoke-interface {p1}, Lcom/amazon/device/sync/SyncableDataset;->getType()Lcom/amazon/device/sync/DatasetType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 p1, 0x2

    if-eq v1, p1, :cond_0

    goto :goto_0

    .line 699
    :cond_0
    new-instance p1, Ljava/lang/ref/SoftReference;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/amazon/device/sync/SyncableDataStore;->mOpenedDirectory:Ljava/lang/ref/SoftReference;

    goto :goto_0

    .line 696
    :cond_1
    iget-object v1, p0, Lcom/amazon/device/sync/SyncableDataStore;->mOpenedMaps:Ljava/util/Map;

    invoke-interface {p1}, Lcom/amazon/device/sync/SyncableDataset;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 703
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method createDirectorySubscription()V
    .locals 3

    .line 243
    new-instance v0, Lcom/amazon/device/sync/CreateDirectorySubscriptionOperation;

    iget-object v1, p0, Lcom/amazon/device/sync/SyncableDataStore;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/amazon/device/sync/SyncableDataStore;->mAccountId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/amazon/device/sync/CreateDirectorySubscriptionOperation;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 245
    invoke-virtual {v0}, Lcom/amazon/device/sync/CreateDirectorySubscriptionOperation;->execute()V

    return-void
.end method

.method public deleteMap(Ljava/lang/String;)V
    .locals 3

    .line 321
    iget-object v0, p0, Lcom/amazon/device/sync/SyncableDataStore;->mTracer:Lcom/amazon/device/sync/Tracer;

    sget-object v1, Lcom/amazon/device/sync/Tracer$Traces;->DELETE_MAP:Lcom/amazon/device/sync/Tracer$Traces;

    new-instance v2, Lcom/amazon/device/sync/SyncableDataStore$3;

    invoke-direct {v2, p0, p1}, Lcom/amazon/device/sync/SyncableDataStore$3;-><init>(Lcom/amazon/device/sync/SyncableDataStore;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer;->traceOnCurrentThread(Ljava/lang/Enum;Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer$NotThrowingCallable;)Ljava/lang/Object;

    return-void
.end method

.method public deleteMaps(Ljava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 346
    iget-boolean v0, p0, Lcom/amazon/device/sync/SyncableDataStore;->mDeleted:Z

    const-class v1, Ljava/lang/IllegalStateException;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string/jumbo v4, "storage has been cleared."

    invoke-static {v0, v1, v4, v3}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkFalse(ZLjava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 347
    const-class v0, Ljava/lang/IllegalArgumentException;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v3, "Names cannot be empty"

    invoke-static {p1, v0, v3, v1}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotEmpty(Ljava/util/Collection;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 348
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 350
    const-class v3, Ljava/lang/IllegalArgumentException;

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "Empty name"

    invoke-static {v1, v3, v5, v4}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 352
    :cond_0
    invoke-static {}, Lcom/amazon/device/sync/gear/StaticUtils;->ensureNotRunningOnMainThread()V

    .line 354
    iget-object v0, p0, Lcom/amazon/device/sync/SyncableDataStore;->mTracer:Lcom/amazon/device/sync/Tracer;

    sget-object v1, Lcom/amazon/device/sync/Tracer$Traces;->DELETE_MAPS:Lcom/amazon/device/sync/Tracer$Traces;

    new-instance v2, Lcom/amazon/device/sync/SyncableDataStore$4;

    invoke-direct {v2, p0, p1}, Lcom/amazon/device/sync/SyncableDataStore$4;-><init>(Lcom/amazon/device/sync/SyncableDataStore;Ljava/util/Set;)V

    invoke-virtual {v0, v1, v2}, Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer;->traceOnCurrentThread(Ljava/lang/Enum;Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer$NotThrowingCallable;)Ljava/lang/Object;

    return-void
.end method

.method doDeleteMaps(Ljava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 367
    iget-object v0, p0, Lcom/amazon/device/sync/SyncableDataStore;->mOpenLock:Ljava/lang/Object;

    monitor-enter v0

    .line 369
    :try_start_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 371
    iget-object v4, p0, Lcom/amazon/device/sync/SyncableDataStore;->mOpenedMaps:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v3, p0, Lcom/amazon/device/sync/SyncableDataStore;->mOpenedMaps:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/device/sync/SyncableDataStore$StringMapReference;

    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/device/sync/SyncableStringMap;

    :cond_1
    if-eqz v3, :cond_0

    .line 374
    invoke-virtual {v3}, Lcom/amazon/device/sync/AbstractSyncableDataset;->setDeleted()V

    .line 375
    iget-object v3, p0, Lcom/amazon/device/sync/SyncableDataStore;->mOpenedMaps:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 378
    :cond_2
    new-instance v1, Lcom/amazon/device/sync/DeleteDatasetsDbOperation;

    iget-object v2, p0, Lcom/amazon/device/sync/SyncableDataStore;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/amazon/device/sync/SyncableDataStore;->mAccountId:Ljava/lang/String;

    iget-object v5, p0, Lcom/amazon/device/sync/SyncableDataStore;->mNamespace:Ljava/lang/String;

    invoke-direct {v1, v2, v4, p1, v5}, Lcom/amazon/device/sync/DeleteDatasetsDbOperation;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;)V

    .line 380
    invoke-virtual {v1}, Lcom/amazon/device/sync/DeleteDatasetsDbOperation;->execute()V

    .line 383
    iget-object v1, p0, Lcom/amazon/device/sync/SyncableDataStore;->mOpenedDirectory:Ljava/lang/ref/SoftReference;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/amazon/device/sync/SyncableDataStore;->mOpenedDirectory:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/amazon/device/sync/SyncableDataDirectory;

    :cond_3
    if-eqz v3, :cond_4

    .line 386
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 388
    new-instance v2, Lcom/amazon/device/sync/SyncableDatasetInfo;

    iget-object v4, p0, Lcom/amazon/device/sync/SyncableDataStore;->mNamespace:Ljava/lang/String;

    sget-object v5, Lcom/amazon/device/sync/DatasetType;->StringMap:Lcom/amazon/device/sync/DatasetType;

    invoke-direct {v2, v4, v5, v1}, Lcom/amazon/device/sync/SyncableDatasetInfo;-><init>(Ljava/lang/String;Lcom/amazon/device/sync/DatasetType;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lcom/amazon/device/sync/SyncableDataDirectory;->onDatasetDeleted(Lcom/amazon/device/sync/SyncableDatasetInfo;)V

    goto :goto_1

    .line 391
    :cond_4
    invoke-direct {p0}, Lcom/amazon/device/sync/SyncableDataStore;->clearUnusedMaps()V

    .line 392
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method doOpenDirectory()Lcom/amazon/device/sync/SyncableDataDirectory;
    .locals 3

    .line 227
    iget-object v0, p0, Lcom/amazon/device/sync/SyncableDataStore;->mOpenLock:Ljava/lang/Object;

    monitor-enter v0

    .line 229
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/device/sync/SyncableDataStore;->createDirectorySubscription()V

    .line 230
    iget-object v1, p0, Lcom/amazon/device/sync/SyncableDataStore;->mOpenedDirectory:Ljava/lang/ref/SoftReference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amazon/device/sync/SyncableDataStore;->mOpenedDirectory:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/device/sync/SyncableDataDirectory;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    .line 233
    invoke-static {p0}, Lcom/amazon/device/sync/SyncableDataDirectory;->open(Lcom/amazon/device/sync/SyncableDataStore;)Lcom/amazon/device/sync/SyncableDataDirectory;

    move-result-object v1

    .line 234
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/amazon/device/sync/SyncableDataStore;->mOpenedDirectory:Ljava/lang/ref/SoftReference;

    .line 236
    :cond_1
    invoke-direct {p0}, Lcom/amazon/device/sync/SyncableDataStore;->clearUnusedMaps()V

    .line 237
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 238
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method doOpenOrCreateStringMap(Ljava/lang/String;)Lcom/amazon/device/sync/SyncableStringMap;
    .locals 5

    .line 290
    iget-object v0, p0, Lcom/amazon/device/sync/SyncableDataStore;->mOpenLock:Ljava/lang/Object;

    monitor-enter v0

    .line 292
    :try_start_0
    iget-object v1, p0, Lcom/amazon/device/sync/SyncableDataStore;->mOpenedMaps:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amazon/device/sync/SyncableDataStore;->mOpenedMaps:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/device/sync/SyncableDataStore$StringMapReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/device/sync/SyncableStringMap;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_1

    .line 293
    invoke-virtual {v1}, Lcom/amazon/device/sync/AbstractSyncableDataset;->isDeleted()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 295
    :cond_1
    invoke-static {p0, p1}, Lcom/amazon/device/sync/SyncableStringMap;->open(Lcom/amazon/device/sync/SyncableDataStore;Ljava/lang/String;)Lcom/amazon/device/sync/SyncableStringMap;

    move-result-object v1

    .line 296
    iget-object v3, p0, Lcom/amazon/device/sync/SyncableDataStore;->mOpenedMaps:Ljava/util/Map;

    new-instance v4, Lcom/amazon/device/sync/SyncableDataStore$StringMapReference;

    invoke-direct {v4, p0, v1}, Lcom/amazon/device/sync/SyncableDataStore$StringMapReference;-><init>(Lcom/amazon/device/sync/SyncableDataStore;Lcom/amazon/device/sync/SyncableStringMap;)V

    invoke-interface {v3, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    iget-object p1, p0, Lcom/amazon/device/sync/SyncableDataStore;->mOpenedDirectory:Ljava/lang/ref/SoftReference;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/amazon/device/sync/SyncableDataStore;->mOpenedDirectory:Ljava/lang/ref/SoftReference;

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/amazon/device/sync/SyncableDataDirectory;

    :cond_2
    if-eqz v2, :cond_3

    .line 301
    new-instance p1, Lcom/amazon/device/sync/SyncableDatasetInfo;

    invoke-direct {p1, v1}, Lcom/amazon/device/sync/SyncableDatasetInfo;-><init>(Lcom/amazon/device/sync/SyncableDataset;)V

    invoke-virtual {v2, p1}, Lcom/amazon/device/sync/SyncableDataDirectory;->onDatasetCreated(Lcom/amazon/device/sync/SyncableDatasetInfo;)V

    .line 304
    :cond_3
    invoke-direct {p0}, Lcom/amazon/device/sync/SyncableDataStore;->clearUnusedMaps()V

    .line 305
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    .line 306
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public download()Ljava/util/concurrent/Future;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 499
    iget-boolean v0, p0, Lcom/amazon/device/sync/SyncableDataStore;->mDeleted:Z

    const-class v1, Ljava/lang/IllegalStateException;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "storage has been cleared."

    invoke-static {v0, v1, v3, v2}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkFalse(ZLjava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 500
    invoke-direct {p0}, Lcom/amazon/device/sync/SyncableDataStore;->clearUnusedMaps()V

    .line 501
    invoke-static {}, Lcom/amazon/device/sync/Synchronizer;->getInstance()Lcom/amazon/device/sync/Synchronizer;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/device/sync/SyncableDataStore;->mAccountId:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/device/sync/SyncableDataStore;->mNamespace:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/sync/Synchronizer;->downloadAll(Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public download(Lcom/amazon/device/sync/DatasetType;Ljava/lang/String;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/device/sync/DatasetType;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 551
    sget-object v0, Lcom/amazon/device/sync/gear/Constants;->CLIENT_INITIATED:Lcom/amazon/whispersync/Reason;

    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/device/sync/SyncableDataStore;->download(Lcom/amazon/device/sync/DatasetType;Ljava/lang/String;Lcom/amazon/whispersync/Reason;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method download(Lcom/amazon/device/sync/DatasetType;Ljava/lang/String;Lcom/amazon/whispersync/Reason;)Ljava/util/concurrent/Future;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/device/sync/DatasetType;",
            "Ljava/lang/String;",
            "Lcom/amazon/whispersync/Reason;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 556
    iget-boolean v0, p0, Lcom/amazon/device/sync/SyncableDataStore;->mDeleted:Z

    const-class v1, Ljava/lang/IllegalStateException;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string/jumbo v4, "storage has been cleared."

    invoke-static {v0, v1, v4, v3}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkFalse(ZLjava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 557
    const-class v0, Ljava/lang/IllegalArgumentException;

    new-array v1, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "type cannot be null"

    invoke-static {p1, v0, v3, v1}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 558
    const-class v0, Ljava/lang/IllegalArgumentException;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "dataset name cannot be null"

    invoke-static {p2, v0, v2, v1}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 560
    invoke-direct {p0}, Lcom/amazon/device/sync/SyncableDataStore;->clearUnusedMaps()V

    .line 561
    sget-object v0, Lcom/amazon/device/sync/SyncableDataStore$5;->$SwitchMap$com$amazon$device$sync$DatasetType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 p2, 0x2

    if-ne v0, p2, :cond_0

    .line 566
    invoke-static {}, Lcom/amazon/device/sync/Synchronizer;->getInstance()Lcom/amazon/device/sync/Synchronizer;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/device/sync/SyncableDataStore;->mAccountId:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Lcom/amazon/device/sync/Synchronizer;->downloadDirectory(Ljava/lang/String;Lcom/amazon/whispersync/Reason;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1

    .line 568
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is unknown"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 564
    :cond_1
    invoke-static {}, Lcom/amazon/device/sync/Synchronizer;->getInstance()Lcom/amazon/device/sync/Synchronizer;

    move-result-object p1

    iget-object p3, p0, Lcom/amazon/device/sync/SyncableDataStore;->mAccountId:Ljava/lang/String;

    iget-object v0, p0, Lcom/amazon/device/sync/SyncableDataStore;->mNamespace:Ljava/lang/String;

    invoke-virtual {p1, p3, v0, p2}, Lcom/amazon/device/sync/Synchronizer;->downloadDataset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public getAccountId()Ljava/lang/String;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/amazon/device/sync/SyncableDataStore;->mAccountId:Ljava/lang/String;

    return-object v0
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/amazon/device/sync/SyncableDataStore;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/amazon/device/sync/SyncableDataStore;->mNamespace:Ljava/lang/String;

    return-object v0
.end method

.method isDeleted()Z
    .locals 1

    .line 686
    iget-boolean v0, p0, Lcom/amazon/device/sync/SyncableDataStore;->mDeleted:Z

    return v0
.end method

.method public final openDirectory()Lcom/amazon/device/sync/SyncableDataDirectory;
    .locals 4

    .line 212
    iget-boolean v0, p0, Lcom/amazon/device/sync/SyncableDataStore;->mDeleted:Z

    const-class v1, Ljava/lang/IllegalStateException;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "storage has been cleared."

    invoke-static {v0, v1, v3, v2}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkFalse(ZLjava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 213
    invoke-static {}, Lcom/amazon/device/sync/gear/StaticUtils;->ensureNotRunningOnMainThread()V

    .line 214
    iget-object v0, p0, Lcom/amazon/device/sync/SyncableDataStore;->mTracer:Lcom/amazon/device/sync/Tracer;

    sget-object v1, Lcom/amazon/device/sync/Tracer$Traces;->OPEN_DIRECTORY:Lcom/amazon/device/sync/Tracer$Traces;

    new-instance v2, Lcom/amazon/device/sync/SyncableDataStore$1;

    invoke-direct {v2, p0}, Lcom/amazon/device/sync/SyncableDataStore$1;-><init>(Lcom/amazon/device/sync/SyncableDataStore;)V

    invoke-virtual {v0, v1, v2}, Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer;->traceOnCurrentThread(Ljava/lang/Enum;Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer$NotThrowingCallable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/sync/SyncableDataDirectory;

    return-object v0
.end method

.method public final openOrCreateStringMap(Ljava/lang/String;)Lcom/amazon/device/sync/SyncableStringMap;
    .locals 5

    .line 270
    iget-boolean v0, p0, Lcom/amazon/device/sync/SyncableDataStore;->mDeleted:Z

    const-class v1, Ljava/lang/IllegalStateException;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string/jumbo v4, "storage has been cleared."

    invoke-static {v0, v1, v4, v3}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkFalse(ZLjava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 271
    const-class v0, Ljava/lang/IllegalArgumentException;

    new-array v1, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "name cannot be null"

    invoke-static {p1, v0, v3, v1}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 272
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x400

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-class v1, Ljava/lang/IllegalArgumentException;

    new-array v3, v2, [Ljava/lang/Object;

    const-string/jumbo v4, "name is too long"

    invoke-static {v0, v1, v4, v3}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkFalse(ZLjava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 274
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-class v1, Ljava/lang/IllegalArgumentException;

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "name cannot be empty"

    invoke-static {v0, v1, v3, v2}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkFalse(ZLjava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 275
    invoke-static {}, Lcom/amazon/device/sync/gear/StaticUtils;->ensureNotRunningOnMainThread()V

    .line 277
    iget-object v0, p0, Lcom/amazon/device/sync/SyncableDataStore;->mTracer:Lcom/amazon/device/sync/Tracer;

    sget-object v1, Lcom/amazon/device/sync/Tracer$Traces;->OPEN_OR_CREATE_STRING_MAP:Lcom/amazon/device/sync/Tracer$Traces;

    new-instance v2, Lcom/amazon/device/sync/SyncableDataStore$2;

    invoke-direct {v2, p0, p1}, Lcom/amazon/device/sync/SyncableDataStore$2;-><init>(Lcom/amazon/device/sync/SyncableDataStore;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer;->traceOnCurrentThread(Ljava/lang/Enum;Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer$NotThrowingCallable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/device/sync/SyncableStringMap;

    return-object p1
.end method

.method public subscribeToDirectory(Lcom/amazon/device/sync/SyncableDatasetListener;)Lcom/amazon/device/sync/Subscription;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/device/sync/SyncableDatasetListener<",
            "Lcom/amazon/device/sync/SyncableDatasetInfo;",
            ">;)",
            "Lcom/amazon/device/sync/Subscription;"
        }
    .end annotation

    .line 171
    const-class v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "listener cannot be null"

    invoke-static {p1, v0, v2, v1}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    iget-object v0, p0, Lcom/amazon/device/sync/SyncableDataStore;->mAccountId:Ljava/lang/String;

    iget-object v1, p0, Lcom/amazon/device/sync/SyncableDataStore;->mNamespace:Ljava/lang/String;

    invoke-static {v1}, Lcom/amazon/device/sync/SyncableDatasetInfo;->getSyncableDataDirectoryInfo(Ljava/lang/String;)Lcom/amazon/device/sync/SyncableDatasetInfo;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/amazon/device/sync/Notifications;->subscribe(Ljava/lang/String;Lcom/amazon/device/sync/SyncableDatasetInfo;Lcom/amazon/device/sync/SyncableDatasetListener;)Lcom/amazon/device/sync/Subscription;

    move-result-object p1

    return-object p1
.end method

.method public subscribeToSyncableStringMap(Ljava/lang/String;Lcom/amazon/device/sync/SyncableDatasetListener;)Lcom/amazon/device/sync/Subscription;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/device/sync/SyncableDatasetListener<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/amazon/device/sync/Subscription;"
        }
    .end annotation

    .line 191
    const-class v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "name of the stringMap cannot be null"

    invoke-static {p1, v0, v3, v2}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    const-class v0, Ljava/lang/IllegalArgumentException;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "listener cannot be null"

    invoke-static {p2, v0, v2, v1}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    iget-object v0, p0, Lcom/amazon/device/sync/SyncableDataStore;->mAccountId:Ljava/lang/String;

    new-instance v1, Lcom/amazon/device/sync/SyncableDatasetInfo;

    iget-object v2, p0, Lcom/amazon/device/sync/SyncableDataStore;->mNamespace:Ljava/lang/String;

    sget-object v3, Lcom/amazon/device/sync/DatasetType;->StringMap:Lcom/amazon/device/sync/DatasetType;

    invoke-direct {v1, v2, v3, p1}, Lcom/amazon/device/sync/SyncableDatasetInfo;-><init>(Ljava/lang/String;Lcom/amazon/device/sync/DatasetType;Ljava/lang/String;)V

    invoke-static {v0, v1, p2}, Lcom/amazon/device/sync/Notifications;->subscribe(Ljava/lang/String;Lcom/amazon/device/sync/SyncableDatasetInfo;Lcom/amazon/device/sync/SyncableDatasetListener;)Lcom/amazon/device/sync/Subscription;

    move-result-object p1

    return-object p1
.end method

.method public synchronize()Ljava/util/concurrent/Future;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 427
    iget-boolean v0, p0, Lcom/amazon/device/sync/SyncableDataStore;->mDeleted:Z

    const-class v1, Ljava/lang/IllegalStateException;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "storage has been cleared."

    invoke-static {v0, v1, v3, v2}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkFalse(ZLjava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 428
    invoke-direct {p0}, Lcom/amazon/device/sync/SyncableDataStore;->clearUnusedMaps()V

    .line 429
    invoke-static {}, Lcom/amazon/device/sync/Synchronizer;->getInstance()Lcom/amazon/device/sync/Synchronizer;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/device/sync/SyncableDataStore;->mAccountId:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/device/sync/SyncableDataStore;->mNamespace:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/sync/Synchronizer;->synchronizeAll(Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public synchronize(Lcom/amazon/device/sync/DatasetType;Ljava/lang/String;)Ljava/util/concurrent/Future;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/device/sync/DatasetType;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 509
    iget-boolean v0, p0, Lcom/amazon/device/sync/SyncableDataStore;->mDeleted:Z

    const-class v1, Ljava/lang/IllegalStateException;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string/jumbo v4, "storage has been cleared."

    invoke-static {v0, v1, v4, v3}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkFalse(ZLjava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 510
    const-class v0, Ljava/lang/IllegalArgumentException;

    new-array v1, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "type cannot be null"

    invoke-static {p1, v0, v3, v1}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 511
    const-class v0, Ljava/lang/IllegalArgumentException;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "dataset name cannot be null"

    invoke-static {p2, v0, v2, v1}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 513
    invoke-direct {p0}, Lcom/amazon/device/sync/SyncableDataStore;->clearUnusedMaps()V

    .line 514
    sget-object v0, Lcom/amazon/device/sync/SyncableDataStore$5;->$SwitchMap$com$amazon$device$sync$DatasetType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 p2, 0x2

    if-ne v0, p2, :cond_0

    .line 519
    invoke-static {}, Lcom/amazon/device/sync/Synchronizer;->getInstance()Lcom/amazon/device/sync/Synchronizer;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/device/sync/SyncableDataStore;->mAccountId:Ljava/lang/String;

    iget-object v0, p0, Lcom/amazon/device/sync/SyncableDataStore;->mNamespace:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/amazon/device/sync/Synchronizer;->synchronizeDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1

    .line 521
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is unknown"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 517
    :cond_1
    invoke-static {}, Lcom/amazon/device/sync/Synchronizer;->getInstance()Lcom/amazon/device/sync/Synchronizer;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/device/sync/SyncableDataStore;->mAccountId:Ljava/lang/String;

    iget-object v1, p0, Lcom/amazon/device/sync/SyncableDataStore;->mNamespace:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, p2}, Lcom/amazon/device/sync/Synchronizer;->synchronizeDataset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public upload()Ljava/util/concurrent/Future;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 463
    iget-boolean v0, p0, Lcom/amazon/device/sync/SyncableDataStore;->mDeleted:Z

    const-class v1, Ljava/lang/IllegalStateException;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "storage has been cleared."

    invoke-static {v0, v1, v3, v2}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkFalse(ZLjava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 464
    invoke-direct {p0}, Lcom/amazon/device/sync/SyncableDataStore;->clearUnusedMaps()V

    .line 465
    invoke-static {}, Lcom/amazon/device/sync/Synchronizer;->getInstance()Lcom/amazon/device/sync/Synchronizer;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/device/sync/SyncableDataStore;->mAccountId:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/device/sync/SyncableDataStore;->mNamespace:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/sync/Synchronizer;->uploadAll(Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public upload(Lcom/amazon/device/sync/DatasetType;Ljava/lang/String;)Ljava/util/concurrent/Future;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/device/sync/DatasetType;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 530
    iget-boolean v0, p0, Lcom/amazon/device/sync/SyncableDataStore;->mDeleted:Z

    const-class v1, Ljava/lang/IllegalStateException;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string/jumbo v4, "storage has been cleared."

    invoke-static {v0, v1, v4, v3}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkFalse(ZLjava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 531
    const-class v0, Ljava/lang/IllegalArgumentException;

    new-array v1, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "type cannot be null"

    invoke-static {p1, v0, v3, v1}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 532
    const-class v0, Ljava/lang/IllegalArgumentException;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "dataset name cannot be null"

    invoke-static {p2, v0, v2, v1}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 534
    invoke-direct {p0}, Lcom/amazon/device/sync/SyncableDataStore;->clearUnusedMaps()V

    .line 535
    sget-object v0, Lcom/amazon/device/sync/SyncableDataStore$5;->$SwitchMap$com$amazon$device$sync$DatasetType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 p2, 0x2

    if-ne v0, p2, :cond_0

    .line 540
    invoke-static {}, Lcom/amazon/device/sync/Synchronizer;->getInstance()Lcom/amazon/device/sync/Synchronizer;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/device/sync/SyncableDataStore;->mAccountId:Ljava/lang/String;

    iget-object v0, p0, Lcom/amazon/device/sync/SyncableDataStore;->mNamespace:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/amazon/device/sync/Synchronizer;->uploadDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1

    .line 542
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is unknown"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 538
    :cond_1
    invoke-static {}, Lcom/amazon/device/sync/Synchronizer;->getInstance()Lcom/amazon/device/sync/Synchronizer;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/device/sync/SyncableDataStore;->mAccountId:Ljava/lang/String;

    iget-object v1, p0, Lcom/amazon/device/sync/SyncableDataStore;->mNamespace:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, p2}, Lcom/amazon/device/sync/Synchronizer;->uploadDataset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method
