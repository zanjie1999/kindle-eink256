.class public final Lcom/amazon/device/sync/Notifications;
.super Ljava/lang/Object;
.source "Notifications.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/sync/Notifications$CallbackExecutorHelper;,
        Lcom/amazon/device/sync/Notifications$SyncableDatasetSubscription;
    }
.end annotation


# static fields
.field private static final NULL_FUTURE:Lcom/amazon/whispersync/dcp/framework/ManualFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/dcp/framework/ManualFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static sListenersMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lcom/amazon/device/sync/SyncableDatasetInfo;",
            "Ljava/util/Set<",
            "Lcom/amazon/device/sync/SyncableDatasetListener<",
            "*>;>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/ManualFuture;

    invoke-direct {v0}, Lcom/amazon/whispersync/dcp/framework/ManualFuture;-><init>()V

    sput-object v0, Lcom/amazon/device/sync/Notifications;->NULL_FUTURE:Lcom/amazon/whispersync/dcp/framework/ManualFuture;

    .line 26
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/amazon/device/sync/Notifications;->sListenersMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200()Ljava/util/Map;
    .locals 1

    .line 22
    sget-object v0, Lcom/amazon/device/sync/Notifications;->sListenersMap:Ljava/util/Map;

    return-object v0
.end method

.method private static declared-synchronized addDatasetListener(Ljava/lang/String;Lcom/amazon/device/sync/SyncableDatasetInfo;Lcom/amazon/device/sync/SyncableDatasetListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/amazon/device/sync/SyncableDatasetInfo;",
            "Lcom/amazon/device/sync/SyncableDatasetListener<",
            "TT;>;)V"
        }
    .end annotation

    const-class v0, Lcom/amazon/device/sync/Notifications;

    monitor-enter v0

    .line 222
    :try_start_0
    sget-object v1, Lcom/amazon/device/sync/Notifications;->sListenersMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_0

    .line 226
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 227
    sget-object v2, Lcom/amazon/device/sync/Notifications;->sListenersMap:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    :cond_0
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    if-eqz p0, :cond_1

    .line 234
    invoke-interface {p0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 238
    :cond_1
    new-instance p0, Ljava/util/HashSet;

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 240
    invoke-interface {p0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 242
    invoke-interface {v1, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static clear()V
    .locals 1

    .line 136
    sget-object v0, Lcom/amazon/device/sync/Notifications;->sListenersMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method private static getAccount()Ljava/lang/String;
    .locals 1

    .line 123
    const-class v0, Lcom/amazon/whispersync/dcp/framework/auth/DcpAccountManager;

    invoke-static {v0}, Lcom/amazon/device/sync/Notifications;->getInstanceFromGuice(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispersync/dcp/framework/auth/DcpAccountManager;

    invoke-interface {v0}, Lcom/amazon/whispersync/dcp/framework/auth/DcpAccountManager;->getAccount()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getInstanceFromGuice(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 128
    invoke-static {}, Lcom/amazon/device/sync/Synchronizer;->getInstance()Lcom/amazon/device/sync/Synchronizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/sync/Synchronizer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/amazon/device/sync/SyncGuiceHelper;->getInstance(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static getListeners(Ljava/lang/String;Lcom/amazon/device/sync/SyncableDatasetInfo;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/amazon/device/sync/SyncableDatasetInfo;",
            ")",
            "Ljava/util/Set<",
            "Lcom/amazon/device/sync/SyncableDatasetListener<",
            "TT;>;>;"
        }
    .end annotation

    .line 199
    sget-object v0, Lcom/amazon/device/sync/Notifications;->sListenersMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 206
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    if-eqz p0, :cond_1

    .line 210
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0

    :cond_1
    return-object v0
.end method

.method static notifyChanges(Ljava/lang/String;Lcom/amazon/device/sync/SyncableDatasetInfo;Ljava/util/Set;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/amazon/device/sync/SyncableDatasetInfo;",
            "Ljava/util/Set<",
            "Lcom/amazon/device/sync/Change<",
            "TT;>;>;)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 145
    invoke-static {p0, p1}, Lcom/amazon/device/sync/Notifications;->getListeners(Ljava/lang/String;Lcom/amazon/device/sync/SyncableDatasetInfo;)Ljava/util/Set;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 147
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    new-instance v0, Lcom/amazon/device/sync/Notifications$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/device/sync/Notifications$2;-><init>(Ljava/util/Set;Lcom/amazon/device/sync/SyncableDatasetInfo;Ljava/util/Set;)V

    invoke-static {v0}, Lcom/amazon/device/sync/Notifications$CallbackExecutorHelper;->access$100(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0

    .line 163
    :cond_0
    sget-object p0, Lcom/amazon/device/sync/Notifications;->NULL_FUTURE:Lcom/amazon/whispersync/dcp/framework/ManualFuture;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/dcp/framework/ManualFuture;->onCompleted(Ljava/lang/Object;)V

    .line 164
    sget-object p0, Lcom/amazon/device/sync/Notifications;->NULL_FUTURE:Lcom/amazon/whispersync/dcp/framework/ManualFuture;

    return-object p0
.end method

.method static notifyConflicts(Ljava/lang/String;Lcom/amazon/device/sync/SyncableDatasetInfo;Ljava/util/Set;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/amazon/device/sync/SyncableDatasetInfo;",
            "Ljava/util/Set<",
            "Lcom/amazon/device/sync/Conflict<",
            "TT;>;>;)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 173
    invoke-static {p0, p1}, Lcom/amazon/device/sync/Notifications;->getListeners(Ljava/lang/String;Lcom/amazon/device/sync/SyncableDatasetInfo;)Ljava/util/Set;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 175
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    new-instance v0, Lcom/amazon/device/sync/Notifications$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/device/sync/Notifications$3;-><init>(Ljava/util/Set;Lcom/amazon/device/sync/SyncableDatasetInfo;Ljava/util/Set;)V

    invoke-static {v0}, Lcom/amazon/device/sync/Notifications$CallbackExecutorHelper;->access$100(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0

    .line 191
    :cond_0
    sget-object p0, Lcom/amazon/device/sync/Notifications;->NULL_FUTURE:Lcom/amazon/whispersync/dcp/framework/ManualFuture;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/dcp/framework/ManualFuture;->onCompleted(Ljava/lang/Object;)V

    .line 192
    sget-object p0, Lcom/amazon/device/sync/Notifications;->NULL_FUTURE:Lcom/amazon/whispersync/dcp/framework/ManualFuture;

    return-object p0
.end method

.method static subscribe(Ljava/lang/String;Lcom/amazon/device/sync/SyncableDatasetInfo;Lcom/amazon/device/sync/SyncableDatasetListener;)Lcom/amazon/device/sync/Subscription;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/amazon/device/sync/SyncableDatasetInfo;",
            "Lcom/amazon/device/sync/SyncableDatasetListener<",
            "TT;>;)",
            "Lcom/amazon/device/sync/Subscription;"
        }
    .end annotation

    .line 89
    invoke-static {p0, p1, p2}, Lcom/amazon/device/sync/Notifications;->addDatasetListener(Ljava/lang/String;Lcom/amazon/device/sync/SyncableDatasetInfo;Lcom/amazon/device/sync/SyncableDatasetListener;)V

    .line 90
    invoke-static {}, Lcom/amazon/device/sync/Notifications;->supportsPushNotifications()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/amazon/device/sync/SyncableDatasetInfo;->getType()Lcom/amazon/device/sync/DatasetType;

    move-result-object v0

    sget-object v1, Lcom/amazon/device/sync/DatasetType;->Directory:Lcom/amazon/device/sync/DatasetType;

    if-eq v0, v1, :cond_0

    .line 93
    invoke-static {}, Lcom/amazon/device/sync/Synchronizer;->getInstance()Lcom/amazon/device/sync/Synchronizer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/device/sync/SyncableDatasetInfo;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/device/sync/SyncableDatasetInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lcom/amazon/device/sync/Synchronizer;->createDatasetSubscription(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    goto :goto_0

    .line 99
    :cond_0
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/amazon/device/sync/Notifications$1;

    invoke-direct {v1}, Lcom/amazon/device/sync/Notifications$1;-><init>()V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 107
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->run()V

    :goto_0
    move-object v6, v0

    .line 112
    new-instance v0, Lcom/amazon/device/sync/Notifications$SyncableDatasetSubscription;

    const/4 v7, 0x0

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v2 .. v7}, Lcom/amazon/device/sync/Notifications$SyncableDatasetSubscription;-><init>(Ljava/lang/String;Lcom/amazon/device/sync/SyncableDatasetInfo;Lcom/amazon/device/sync/SyncableDatasetListener;Ljava/util/concurrent/Future;Lcom/amazon/device/sync/Notifications$1;)V

    return-object v0
.end method

.method public static subscribeToNamespace(Ljava/lang/String;Lcom/amazon/device/sync/SyncableDatasetListener;)Lcom/amazon/device/sync/Subscription;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/device/sync/SyncableDatasetListener<",
            "Lcom/amazon/device/sync/SyncableDatasetInfo;",
            ">;)",
            "Lcom/amazon/device/sync/Subscription;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 50
    const-class v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "namespace cannot be null"

    invoke-static {p0, v0, v3, v2}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    const-class v0, Ljava/lang/IllegalArgumentException;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "listener cannot be null"

    invoke-static {p1, v0, v2, v1}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    invoke-static {}, Lcom/amazon/device/sync/Notifications;->getAccount()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/amazon/device/sync/SyncableDatasetInfo;->getSyncableDataDirectoryInfo(Ljava/lang/String;)Lcom/amazon/device/sync/SyncableDatasetInfo;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lcom/amazon/device/sync/Notifications;->subscribe(Ljava/lang/String;Lcom/amazon/device/sync/SyncableDatasetInfo;Lcom/amazon/device/sync/SyncableDatasetListener;)Lcom/amazon/device/sync/Subscription;

    move-result-object p0

    return-object p0
.end method

.method public static subscribeToSyncableStringMap(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/device/sync/SyncableDatasetListener;)Lcom/amazon/device/sync/Subscription;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/amazon/device/sync/SyncableDatasetListener<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/amazon/device/sync/Subscription;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 74
    const-class v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "namespace cannot be null"

    invoke-static {p0, v0, v3, v2}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    const-class v0, Ljava/lang/IllegalArgumentException;

    new-array v2, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "name of the stringMap cannot be null"

    invoke-static {p1, v0, v3, v2}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    const-class v0, Ljava/lang/IllegalArgumentException;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "listener cannot be null"

    invoke-static {p2, v0, v2, v1}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    invoke-static {}, Lcom/amazon/device/sync/Notifications;->getAccount()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/amazon/device/sync/SyncableDatasetInfo;

    sget-object v2, Lcom/amazon/device/sync/DatasetType;->StringMap:Lcom/amazon/device/sync/DatasetType;

    invoke-direct {v1, p0, v2, p1}, Lcom/amazon/device/sync/SyncableDatasetInfo;-><init>(Ljava/lang/String;Lcom/amazon/device/sync/DatasetType;Ljava/lang/String;)V

    invoke-static {v0, v1, p2}, Lcom/amazon/device/sync/Notifications;->subscribe(Ljava/lang/String;Lcom/amazon/device/sync/SyncableDatasetInfo;Lcom/amazon/device/sync/SyncableDatasetListener;)Lcom/amazon/device/sync/Subscription;

    move-result-object p0

    return-object p0
.end method

.method private static supportsPushNotifications()Z
    .locals 1

    .line 117
    const-class v0, Lcom/amazon/device/sync/platform/WhispersyncConfig;

    invoke-static {v0}, Lcom/amazon/device/sync/Notifications;->getInstanceFromGuice(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/sync/platform/WhispersyncConfig;

    if-eqz v0, :cond_0

    .line 118
    invoke-interface {v0}, Lcom/amazon/device/sync/platform/WhispersyncConfig;->supportsPushNotifications()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
