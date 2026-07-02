.class public Lcom/amazon/kcp/library/sync/CollectionsSyncManager;
.super Ljava/lang/Object;
.source "CollectionsSyncManager.java"

# interfaces
.implements Lcom/amazon/kindle/collections/ICollectionsSyncManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/sync/CollectionsSyncManager$CollectionUpdateHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected authManager:Lcom/amazon/kcp/application/IAuthenticationManager;

.field private bookTypeFactory:Lcom/amazon/kcp/library/IBookTypeFactory;

.field private executor:Ljava/util/concurrent/ExecutorService;

.field whispersyncClient:Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/IWhispersyncClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    const-class v0, Lcom/amazon/kcp/library/sync/CollectionsSyncManager;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/sync/CollectionsSyncManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Lcom/amazon/kcp/library/IBookTypeFactory;Lcom/amazon/kcp/application/IAuthenticationManager;Lcom/amazon/kindle/services/authentication/IAccountProvider;Lcom/amazon/kindle/krx/ext/IKRXExtensionManager;)V
    .locals 3

    .line 71
    const-class v0, Lcom/amazon/device/sync/SyncInit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/foundation/internal/IThreadPoolManager;->ExecutorBuilder()Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;

    move-result-object v1

    .line 57
    invoke-interface {v1}, Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;->buildExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kcp/library/sync/CollectionsSyncManager;->executor:Ljava/util/concurrent/ExecutorService;

    .line 72
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-eq v1, v2, :cond_1

    .line 77
    monitor-enter p5

    .line 78
    :try_start_0
    invoke-interface {p5, v0}, Lcom/amazon/kindle/krx/ext/IKRXExtensionManager;->lookupExtensionObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/device/sync/SyncInit;

    if-nez v1, :cond_0

    .line 80
    new-instance v1, Lcom/amazon/device/sync/SyncInit;

    invoke-direct {v1}, Lcom/amazon/device/sync/SyncInit;-><init>()V

    .line 81
    invoke-interface {p5, v0, v1}, Lcom/amazon/kindle/krx/ext/IKRXExtensionManager;->registerExtensionObject(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 83
    :cond_0
    monitor-exit p5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    new-instance p5, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;

    new-instance v0, Lcom/amazon/kcp/library/sync/CollectionsSyncManager$CollectionUpdateHandler;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/sync/CollectionsSyncManager$CollectionUpdateHandler;-><init>(Lcom/amazon/kcp/library/sync/CollectionsSyncManager;)V

    invoke-direct {p5, p1, v0, p4, v1}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;-><init>(Landroid/app/Application;Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/ISyncUpdateHandler;Lcom/amazon/kindle/services/authentication/IAccountProvider;Lcom/amazon/device/sync/SyncInit;)V

    iput-object p5, p0, Lcom/amazon/kcp/library/sync/CollectionsSyncManager;->whispersyncClient:Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/IWhispersyncClient;

    const-string p1, "CloudCollections"

    const-string p4, "CloudCollections.Items"

    .line 85
    filled-new-array {p1, p4}, [Ljava/lang/String;

    move-result-object p1

    invoke-interface {p5, p1}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/IWhispersyncClient;->connect([Ljava/lang/String;)Z

    .line 86
    iput-object p3, p0, Lcom/amazon/kcp/library/sync/CollectionsSyncManager;->authManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    .line 87
    iput-object p2, p0, Lcom/amazon/kcp/library/sync/CollectionsSyncManager;->bookTypeFactory:Lcom/amazon/kcp/library/IBookTypeFactory;

    return-void

    :catchall_0
    move-exception p1

    .line 83
    :try_start_1
    monitor-exit p5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 73
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "CollectionsSyncManager constructor has to be called from a background thread"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 49
    sget-object v0, Lcom/amazon/kcp/library/sync/CollectionsSyncManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/kcp/library/sync/CollectionsSyncManager;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/amazon/kcp/library/sync/CollectionsSyncManager;->doHandleStartupSync()V

    return-void
.end method

.method static synthetic access$200(Lcom/amazon/kcp/library/sync/CollectionsSyncManager;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/amazon/kcp/library/sync/CollectionsSyncManager;->syncCloudCollections()V

    return-void
.end method

.method static synthetic access$300(Lcom/amazon/kcp/library/sync/CollectionsSyncManager;Z)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/sync/CollectionsSyncManager;->synchronize(Z)V

    return-void
.end method

.method private doHandleStartupSync()V
    .locals 2

    .line 136
    sget-object v0, Lcom/amazon/kcp/library/sync/CollectionsSyncManager;->TAG:Ljava/lang/String;

    const-string v1, "About to begin Collections on start-up sync..."

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-direct {p0}, Lcom/amazon/kcp/library/sync/CollectionsSyncManager;->syncCloudCollections()V

    const/4 v0, 0x1

    .line 138
    invoke-direct {p0, v0}, Lcom/amazon/kcp/library/sync/CollectionsSyncManager;->synchronize(Z)V

    .line 139
    sget-object v0, Lcom/amazon/kcp/library/sync/CollectionsSyncManager;->TAG:Ljava/lang/String;

    const-string v1, "Collections on start-up sync completed!"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private syncCloudCollections()V
    .locals 3

    .line 329
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/library/sync/CollectionsSyncManager;->whispersyncClient:Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/IWhispersyncClient;

    invoke-interface {v0}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/IWhispersyncClient;->syncAll()V
    :try_end_0
    .catch Lcom/amazon/kindle/collections/sync/SyncException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 331
    sget-object v1, Lcom/amazon/kcp/library/sync/CollectionsSyncManager;->TAG:Ljava/lang/String;

    const-string v2, "SyncException when trying to sync the local Whispersync data-store from the cloud; aborting syncCloudCollections..."

    invoke-static {v1, v2, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private synchronize(Z)V
    .locals 7

    .line 350
    iget-object v0, p0, Lcom/amazon/kcp/library/sync/CollectionsSyncManager;->whispersyncClient:Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/IWhispersyncClient;

    const-string v1, "CollectionEntries"

    const-string v2, "CloudCollections"

    invoke-interface {v0, v2, v1}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/IWhispersyncClient;->subscribeToDatasetNotifications(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/library/sync/CollectionsSyncManager;->whispersyncClient:Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/IWhispersyncClient;

    invoke-interface {v0, v2, v1}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/IWhispersyncClient;->read(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0
    :try_end_0
    .catch Lcom/amazon/kindle/collections/sync/SyncException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_0

    .line 364
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;

    .line 366
    iget-object v3, p0, Lcom/amazon/kcp/library/sync/CollectionsSyncManager;->whispersyncClient:Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/IWhispersyncClient;

    .line 367
    invoke-virtual {v2}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "CloudCollections.Items"

    .line 366
    invoke-interface {v3, v5, v4}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/IWhispersyncClient;->subscribeToDatasetNotifications(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    invoke-direct {p0, v2, p1}, Lcom/amazon/kcp/library/sync/CollectionsSyncManager;->synchronizeCollection(Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;Z)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_3

    .line 384
    invoke-static {}, Lcom/amazon/kindle/collections/CollectionsManagerHolder;->getInstance()Lcom/amazon/kindle/collections/ICollectionsManager;

    move-result-object p1

    iget-object v1, p0, Lcom/amazon/kcp/library/sync/CollectionsSyncManager;->authManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    .line 385
    invoke-interface {v1}, Lcom/amazon/kcp/application/IAuthenticationManager;->getAccountInfo()Lcom/amazon/kindle/services/authentication/IAccountInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/services/authentication/IAccountInfo;->getId()Ljava/lang/String;

    move-result-object v1

    .line 384
    invoke-interface {p1, v1}, Lcom/amazon/kindle/collections/ICollectionsManager;->getCollectionsByUserId(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 388
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 389
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/collections/dto/ICollection;

    .line 391
    :try_start_1
    invoke-static {v2}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/CollectionsJSONUtil;->serializeCollection(Lcom/amazon/kindle/collections/dto/ICollection;)Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;

    move-result-object v3

    .line 392
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 396
    sget-object v4, Lcom/amazon/kcp/library/sync/CollectionsSyncManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "JSONException trying to serialize collection - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v3}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    .line 401
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;

    .line 402
    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 406
    :cond_2
    invoke-virtual {p0, v1}, Lcom/amazon/kcp/library/sync/CollectionsSyncManager;->handleCollectionDelete(Ljava/util/Collection;)V

    .line 409
    :cond_3
    invoke-static {}, Lcom/amazon/kindle/collections/CollectionsManagerHolder;->getInstance()Lcom/amazon/kindle/collections/ICollectionsManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/collections/ICollectionsManager;->onSyncComplete()V

    return-void

    :catch_1
    move-exception p1

    .line 359
    sget-object v0, Lcom/amazon/kcp/library/sync/CollectionsSyncManager;->TAG:Ljava/lang/String;

    const-string v1, "SyncException when trying to read local cloud collections; aborting synchronize..."

    invoke-static {v0, v1, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private synchronizeCollection(Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;Z)V
    .locals 2

    .line 423
    :try_start_0
    invoke-static {p1}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/CollectionsJSONUtil;->deserializeCollection(Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;)Lcom/amazon/kindle/collections/dto/CollectionDTO;

    move-result-object v0

    if-nez v0, :cond_0

    .line 425
    sget-object p2, Lcom/amazon/kcp/library/sync/CollectionsSyncManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skipping SyncRecord (collection not supported by Standalone) - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    invoke-static {p1}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecordsUtil;->toLogString(Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 425
    invoke-static {p2, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 436
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/collections/CollectionsManagerHolder;->getInstance()Lcom/amazon/kindle/collections/ICollectionsManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amazon/kindle/collections/ICollectionsManager;->isNewCollection(Lcom/amazon/kindle/collections/dto/ICollection;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p2, 0x0

    .line 437
    invoke-direct {p0, p1, v0, p2}, Lcom/amazon/kcp/library/sync/CollectionsSyncManager;->synchronizeNewCollection(Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;Lcom/amazon/kindle/collections/dto/ICollection;Z)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 439
    invoke-static {}, Lcom/amazon/kindle/collections/CollectionsManagerHolder;->getInstance()Lcom/amazon/kindle/collections/ICollectionsManager;

    move-result-object v1

    invoke-interface {v0}, Lcom/amazon/kindle/collections/dto/ICollection;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, p2}, Lcom/amazon/kindle/collections/ICollectionsManager;->notifyWithCollection(Ljava/lang/String;Z)V

    .line 440
    invoke-static {}, Lcom/amazon/kindle/collections/CollectionsManagerHolder;->getInstance()Lcom/amazon/kindle/collections/ICollectionsManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/amazon/kindle/collections/ICollectionsManager;->notifyWithCollectionItems(Ljava/util/List;Z)V

    goto :goto_0

    .line 443
    :cond_1
    invoke-direct {p0, p1, v0, p2}, Lcom/amazon/kcp/library/sync/CollectionsSyncManager;->synchronizeExistingCollection(Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;Lcom/amazon/kindle/collections/dto/ICollection;Z)V

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception p2

    .line 430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JSONException in synchronizeCollection for syncRecord - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    invoke-static {p1}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecordsUtil;->toLogString(Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 432
    sget-object v0, Lcom/amazon/kcp/library/sync/CollectionsSyncManager;->TAG:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private synchronizeExistingCollection(Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;Lcom/amazon/kindle/collections/dto/ICollection;Z)V
    .locals 6

    .line 530
    invoke-static {}, Lcom/amazon/kindle/collections/CollectionsManagerHolder;->getInstance()Lcom/amazon/kindle/collections/ICollectionsManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p2, v1}, Lcom/amazon/kindle/collections/ICollectionsManager;->updateCollection(Lcom/amazon/kindle/collections/dto/ICollection;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 532
    invoke-static {}, Lcom/amazon/kindle/collections/CollectionsManagerHolder;->getInstance()Lcom/amazon/kindle/collections/ICollectionsManager;

    move-result-object v0

    invoke-interface {p2}, Lcom/amazon/kindle/collections/dto/ICollection;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/collections/ICollectionsManager;->notifyWithCollection(Ljava/lang/String;Z)V

    .line 538
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/library/sync/CollectionsSyncManager;->whispersyncClient:Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/IWhispersyncClient;

    const-string v1, "CloudCollections.Items"

    invoke-virtual {p1}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/IWhispersyncClient;->read(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1
    :try_end_0
    .catch Lcom/amazon/kindle/collections/sync/SyncException; {:try_start_0 .. :try_end_0} :catch_5

    if-eqz p1, :cond_3

    .line 547
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 548
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;

    .line 550
    :try_start_1
    iget-object v3, p0, Lcom/amazon/kcp/library/sync/CollectionsSyncManager;->bookTypeFactory:Lcom/amazon/kcp/library/IBookTypeFactory;

    invoke-static {v2, v3}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/CollectionsJSONUtil;->deserializeCollectionItem(Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;Lcom/amazon/kcp/library/IBookTypeFactory;)Lcom/amazon/kindle/collections/dto/CollectionItemDTO;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 552
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/amazon/kindle/content/ContentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 560
    :catch_0
    sget-object v3, Lcom/amazon/kcp/library/sync/CollectionsSyncManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "JSONException trying to deserialize syncRecord - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 556
    :catch_1
    sget-object v3, Lcom/amazon/kcp/library/sync/CollectionsSyncManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ContentException trying to deserialize syncRecord - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 565
    :cond_2
    invoke-static {}, Lcom/amazon/kindle/collections/CollectionsManagerHolder;->getInstance()Lcom/amazon/kindle/collections/ICollectionsManager;

    move-result-object v1

    invoke-interface {v1, v0, p2}, Lcom/amazon/kindle/collections/ICollectionsManager;->bulkAddOrUpdateCollectionItems(Ljava/util/List;Lcom/amazon/kindle/collections/dto/ICollection;)V

    :cond_3
    if-eqz p3, :cond_7

    .line 581
    invoke-static {}, Lcom/amazon/kindle/collections/CollectionsManagerHolder;->getInstance()Lcom/amazon/kindle/collections/ICollectionsManager;

    move-result-object p3

    invoke-interface {p3, p2}, Lcom/amazon/kindle/collections/ICollectionsManager;->getSortedCollectionItems(Lcom/amazon/kindle/collections/dto/ICollection;)Ljava/util/List;

    move-result-object p2

    .line 584
    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    .line 585
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/collections/dto/ICollectionItem;

    .line 587
    :try_start_2
    invoke-static {v0}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/CollectionsJSONUtil;->serializeCollectionItem(Lcom/amazon/kindle/collections/dto/ICollectionItem;)Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;

    move-result-object v1

    .line 588
    invoke-interface {p3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v1

    .line 592
    sget-object v2, Lcom/amazon/kcp/library/sync/CollectionsSyncManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JSONException trying to serialize collectionItem - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    invoke-static {v0}, Lcom/amazon/kindle/collections/dto/CollectionItemDTO;->valueOf(Lcom/amazon/kindle/collections/dto/ICollectionItem;)Lcom/amazon/kindle/collections/dto/CollectionItemDTO;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 592
    invoke-static {v2, v0, v1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    if-eqz p1, :cond_5

    .line 598
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;

    .line 599
    invoke-interface {p3, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 603
    :cond_5
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 604
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;

    .line 606
    :try_start_3
    iget-object v0, p0, Lcom/amazon/kcp/library/sync/CollectionsSyncManager;->bookTypeFactory:Lcom/amazon/kcp/library/IBookTypeFactory;

    invoke-static {p3, v0}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/CollectionsJSONUtil;->deserializeCollectionItem(Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;Lcom/amazon/kcp/library/IBookTypeFactory;)Lcom/amazon/kindle/collections/dto/CollectionItemDTO;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lcom/amazon/kindle/content/ContentException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    .line 614
    :catch_3
    sget-object v0, Lcom/amazon/kcp/library/sync/CollectionsSyncManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSONException trying to deserialize collItemWhispFormat - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 609
    :catch_4
    sget-object v0, Lcom/amazon/kcp/library/sync/CollectionsSyncManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ContentException trying to deserialize collItemWhispFormat - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 619
    :cond_6
    invoke-static {}, Lcom/amazon/kindle/collections/CollectionsManagerHolder;->getInstance()Lcom/amazon/kindle/collections/ICollectionsManager;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/amazon/kindle/collections/ICollectionsManager;->bulkRemoveCollectionItems(Ljava/util/List;)V

    :cond_7
    return-void

    :catch_5
    move-exception p2

    .line 540
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SyncException trying to fetch collection items from the cloud; aborting synchronizeExistingCollection for syncRecord - "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    invoke-static {p1}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecordsUtil;->toLogString(Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 542
    sget-object p3, Lcom/amazon/kcp/library/sync/CollectionsSyncManager;->TAG:Ljava/lang/String;

    invoke-static {p3, p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private synchronizeNewCollection(Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;Lcom/amazon/kindle/collections/dto/ICollection;Z)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;",
            "Lcom/amazon/kindle/collections/dto/ICollection;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/collections/dto/ICollectionItem;",
            ">;"
        }
    .end annotation

    const-string v0, " when trying to fetch collection members for collection - "

    const-string v1, ". Aborting synchronizeNewCollection and returning..."

    const-string v2, "CloudCollections.Items"

    if-eqz p3, :cond_0

    .line 459
    iget-object p3, p0, Lcom/amazon/kcp/library/sync/CollectionsSyncManager;->whispersyncClient:Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/IWhispersyncClient;

    .line 460
    invoke-virtual {p1}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 459
    invoke-interface {p3, v2, v3}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/IWhispersyncClient;->subscribeToDatasetNotifications(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p3, 0x0

    .line 466
    :try_start_0
    iget-object v3, p0, Lcom/amazon/kcp/library/sync/CollectionsSyncManager;->whispersyncClient:Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/IWhispersyncClient;

    invoke-virtual {p1}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, v2, p1}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/IWhispersyncClient;->read(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1
    :try_end_0
    .catch Lcom/amazon/kindle/collections/sync/SyncException; {:try_start_0 .. :try_end_0} :catch_2

    .line 475
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    if-eqz p1, :cond_2

    .line 478
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;

    .line 480
    :try_start_1
    iget-object v4, p0, Lcom/amazon/kcp/library/sync/CollectionsSyncManager;->bookTypeFactory:Lcom/amazon/kcp/library/IBookTypeFactory;

    invoke-static {v3, v4}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/CollectionsJSONUtil;->deserializeCollectionItem(Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;Lcom/amazon/kcp/library/IBookTypeFactory;)Lcom/amazon/kindle/collections/dto/CollectionItemDTO;

    move-result-object v4

    if-nez v4, :cond_1

    .line 483
    sget-object v4, Lcom/amazon/kcp/library/sync/CollectionsSyncManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skipping SyncRecord (collection item not supported by Standalone) - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 487
    :cond_1
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/amazon/kindle/content/ContentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 497
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JSONException in synchronizeNewCollection. JSONException when deserializing SyncRecord - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 502
    sget-object v0, Lcom/amazon/kcp/library/sync/CollectionsSyncManager;->TAG:Ljava/lang/String;

    invoke-static {v0, p2, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p3

    :catch_1
    move-exception p1

    .line 489
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ContentException in synchronizeNewCollection. ContentException when deserializing SyncRecord - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 494
    sget-object v0, Lcom/amazon/kcp/library/sync/CollectionsSyncManager;->TAG:Ljava/lang/String;

    invoke-static {v0, p2, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p3

    .line 509
    :cond_2
    invoke-static {}, Lcom/amazon/kindle/collections/CollectionsManagerHolder;->getInstance()Lcom/amazon/kindle/collections/ICollectionsManager;

    move-result-object p1

    invoke-interface {p1, p2, v2}, Lcom/amazon/kindle/collections/ICollectionsManager;->createCollectionAndAssignItems(Lcom/amazon/kindle/collections/dto/ICollection;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_3

    return-object v2

    :cond_3
    return-object p3

    :catch_2
    move-exception p1

    .line 468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SyncException when trying to fetch collection members for collection - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 471
    sget-object v0, Lcom/amazon/kcp/library/sync/CollectionsSyncManager;->TAG:Ljava/lang/String;

    invoke-static {v0, p2, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p3
.end method


# virtual methods
.method handleCollectionDelete(Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;",
            ">;)V"
        }
    .end annotation

    .line 701
    sget-object v0, Lcom/amazon/kcp/library/sync/CollectionsSyncManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "About to perform collection delete; syncRecord size - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 704
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;

    .line 707
    iget-object v3, p0, Lcom/amazon/kcp/library/sync/CollectionsSyncManager;->whispersyncClient:Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/IWhispersyncClient;

    .line 708
    invoke-virtual {v1}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "CloudCollections.Items"

    .line 707
    invoke-interface {v3, v5, v4}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/IWhispersyncClient;->unsubscribeToDatasetNotifications(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    invoke-static {}, Lcom/amazon/kindle/collections/CollectionsManagerHolder;->getInstance()Lcom/amazon/kindle/collections/ICollectionsManager;

    move-result-object v3

    invoke-virtual {v1}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Lcom/amazon/kindle/collections/ICollectionsManager;->deleteCollection(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 715
    invoke-virtual {v1}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 717
    :cond_0
    sget-object v2, Lcom/amazon/kcp/library/sync/CollectionsSyncManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failure to delete collection; syncRecord - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecordsUtil;->toLogString(Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 721
    :cond_1
    invoke-static {}, Lcom/amazon/kindle/collections/CollectionsManagerHolder;->getInstance()Lcom/amazon/kindle/collections/ICollectionsManager;

    move-result-object p1

    invoke-interface {p1, v0, v2}, Lcom/amazon/kindle/collections/ICollectionsManager;->notifyWithCollections(Ljava/util/List;Z)V

    return-void
.end method

.method handleCollectionItemDelete(Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Error in handleCollectionItemDelete for syncRecord - "

    .line 726
    sget-object v1, Lcom/amazon/kcp/library/sync/CollectionsSyncManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "About to perform collectionItem delete; syncRecord size - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 729
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;

    .line 731
    :try_start_0
    iget-object v4, p0, Lcom/amazon/kcp/library/sync/CollectionsSyncManager;->bookTypeFactory:Lcom/amazon/kcp/library/IBookTypeFactory;

    invoke-static {v2, v4}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/CollectionsJSONUtil;->deserializeCollectionItem(Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;Lcom/amazon/kcp/library/IBookTypeFactory;)Lcom/amazon/kindle/collections/dto/CollectionItemDTO;

    move-result-object v4

    if-nez v4, :cond_1

    .line 733
    sget-object v3, Lcom/amazon/kcp/library/sync/CollectionsSyncManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skipping SyncRecord (collection item not supported by Standalone) - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 736
    :cond_1
    invoke-static {}, Lcom/amazon/kindle/collections/CollectionsManagerHolder;->getInstance()Lcom/amazon/kindle/collections/ICollectionsManager;

    move-result-object v5

    invoke-interface {v5, v4, v3}, Lcom/amazon/kindle/collections/ICollectionsManager;->removeCollectionItem(Lcom/amazon/kindle/collections/dto/ICollectionItem;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 737
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/amazon/kindle/content/ContentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 742
    sget-object v4, Lcom/amazon/kcp/library/sync/CollectionsSyncManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v3}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v3

    .line 740
    sget-object v4, Lcom/amazon/kcp/library/sync/CollectionsSyncManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v3}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 746
    :cond_2
    invoke-static {}, Lcom/amazon/kindle/collections/CollectionsManagerHolder;->getInstance()Lcom/amazon/kindle/collections/ICollectionsManager;

    move-result-object p1

    invoke-interface {p1, v1, v3}, Lcom/amazon/kindle/collections/ICollectionsManager;->notifyWithCollectionItems(Ljava/util/List;Z)V

    return-void
.end method

.method handleCollectionItemUpdate(Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Error in handleCollectionItemUpdate for syncRecord - "

    .line 672
    sget-object v1, Lcom/amazon/kcp/library/sync/CollectionsSyncManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "About to perform collection item update; syncRecord size - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;

    .line 677
    :try_start_0
    iget-object v3, p0, Lcom/amazon/kcp/library/sync/CollectionsSyncManager;->bookTypeFactory:Lcom/amazon/kcp/library/IBookTypeFactory;

    invoke-static {v2, v3}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/CollectionsJSONUtil;->deserializeCollectionItem(Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;Lcom/amazon/kcp/library/IBookTypeFactory;)Lcom/amazon/kindle/collections/dto/CollectionItemDTO;

    move-result-object v3

    if-nez v3, :cond_1

    .line 680
    sget-object v3, Lcom/amazon/kcp/library/sync/CollectionsSyncManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skipping SyncRecord (collection item not supported by Standalone) - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 683
    :cond_1
    invoke-static {}, Lcom/amazon/kindle/collections/CollectionsManagerHolder;->getInstance()Lcom/amazon/kindle/collections/ICollectionsManager;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v3, v5}, Lcom/amazon/kindle/collections/ICollectionsManager;->addOrUpdateCollectionItem(Lcom/amazon/kindle/collections/dto/ICollectionItem;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    if-nez v1, :cond_2

    .line 685
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v4

    .line 687
    :cond_2
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/amazon/kindle/content/ContentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 692
    sget-object v4, Lcom/amazon/kcp/library/sync/CollectionsSyncManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v3}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v3

    .line 690
    sget-object v4, Lcom/amazon/kcp/library/sync/CollectionsSyncManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v3}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 696
    :cond_3
    invoke-static {}, Lcom/amazon/kindle/collections/CollectionsManagerHolder;->getInstance()Lcom/amazon/kindle/collections/ICollectionsManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v1, v0}, Lcom/amazon/kindle/collections/ICollectionsManager;->notifyWithCollectionItems(Ljava/util/List;Z)V

    return-void
.end method

.method handleCollectionUpdate(Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;",
            ">;)V"
        }
    .end annotation

    .line 628
    sget-object v0, Lcom/amazon/kcp/library/sync/CollectionsSyncManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "About to perform collection update; syncRecord size - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 631
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 632
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;

    .line 635
    :try_start_0
    invoke-static {v2}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/CollectionsJSONUtil;->deserializeCollection(Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;)Lcom/amazon/kindle/collections/dto/CollectionDTO;

    move-result-object v3

    if-nez v3, :cond_1

    .line 638
    sget-object p1, Lcom/amazon/kcp/library/sync/CollectionsSyncManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skipping SyncRecord (collection not supported by Standalone) - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    invoke-static {v2}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecordsUtil;->toLogString(Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 638
    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 650
    :cond_1
    invoke-static {}, Lcom/amazon/kindle/collections/CollectionsManagerHolder;->getInstance()Lcom/amazon/kindle/collections/ICollectionsManager;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/amazon/kindle/collections/ICollectionsManager;->isNewCollection(Lcom/amazon/kindle/collections/dto/ICollection;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    .line 652
    invoke-direct {p0, v2, v3, v5}, Lcom/amazon/kcp/library/sync/CollectionsSyncManager;->synchronizeNewCollection(Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;Lcom/amazon/kindle/collections/dto/ICollection;Z)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 654
    invoke-interface {v3}, Lcom/amazon/kindle/collections/dto/ICollection;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 655
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 659
    :cond_2
    invoke-static {}, Lcom/amazon/kindle/collections/CollectionsManagerHolder;->getInstance()Lcom/amazon/kindle/collections/ICollectionsManager;

    move-result-object v2

    invoke-interface {v2, v3, v5}, Lcom/amazon/kindle/collections/ICollectionsManager;->updateCollection(Lcom/amazon/kindle/collections/dto/ICollection;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 660
    invoke-interface {v3}, Lcom/amazon/kindle/collections/dto/ICollection;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception p1

    .line 643
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JSONException in handleCollectionUpdate when deserializing collection; syncRecord - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    invoke-static {v2}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecordsUtil;->toLogString(Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". Aborting handleCollectionUpdate and returning..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 646
    sget-object v1, Lcom/amazon/kcp/library/sync/CollectionsSyncManager;->TAG:Ljava/lang/String;

    invoke-static {v1, v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 665
    :cond_3
    invoke-static {}, Lcom/amazon/kindle/collections/CollectionsManagerHolder;->getInstance()Lcom/amazon/kindle/collections/ICollectionsManager;

    move-result-object p1

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Lcom/amazon/kindle/collections/ICollectionsManager;->notifyWithCollections(Ljava/util/List;Z)V

    .line 666
    invoke-static {}, Lcom/amazon/kindle/collections/CollectionsManagerHolder;->getInstance()Lcom/amazon/kindle/collections/ICollectionsManager;

    move-result-object p1

    invoke-interface {p1, v0, v2}, Lcom/amazon/kindle/collections/ICollectionsManager;->notifyWithCollectionItems(Ljava/util/List;Z)V

    return-void
.end method

.method public handleFullCollectionsSync()V
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/amazon/kcp/library/sync/CollectionsSyncManager;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kcp/library/sync/CollectionsSyncManager$4;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/library/sync/CollectionsSyncManager$4;-><init>(Lcom/amazon/kcp/library/sync/CollectionsSyncManager;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public handleIncrementalCollectionsSync()V
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/amazon/kcp/library/sync/CollectionsSyncManager;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kcp/library/sync/CollectionsSyncManager$5;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/library/sync/CollectionsSyncManager$5;-><init>(Lcom/amazon/kcp/library/sync/CollectionsSyncManager;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public handleStartupSync()V
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/amazon/kcp/library/sync/CollectionsSyncManager;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kcp/library/sync/CollectionsSyncManager$2;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/library/sync/CollectionsSyncManager$2;-><init>(Lcom/amazon/kcp/library/sync/CollectionsSyncManager;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public handleUserAccountDeregistration()V
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/amazon/kcp/library/sync/CollectionsSyncManager;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kcp/library/sync/CollectionsSyncManager$3;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/library/sync/CollectionsSyncManager$3;-><init>(Lcom/amazon/kcp/library/sync/CollectionsSyncManager;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public handleUserAccountRegistration()V
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/amazon/kcp/library/sync/CollectionsSyncManager;->authManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->isAuthenticated()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/sync/CollectionsSyncManager;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kcp/library/sync/CollectionsSyncManager$1;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/library/sync/CollectionsSyncManager$1;-><init>(Lcom/amazon/kcp/library/sync/CollectionsSyncManager;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public syncCollectionDelete(Ljava/lang/String;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/collections/sync/SyncException;
        }
    .end annotation

    const-string v0, "CloudCollections.Items"

    .line 256
    :try_start_0
    invoke-static {p1}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/CollectionsJSONUtil;->serializeCollectionForDelete(Ljava/lang/String;)Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;

    move-result-object v1

    .line 257
    iget-object v2, p0, Lcom/amazon/kcp/library/sync/CollectionsSyncManager;->whispersyncClient:Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/IWhispersyncClient;

    const-string v3, "CloudCollections"

    const/4 v4, 0x1

    new-array v5, v4, [Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v2, v3, v5}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/IWhispersyncClient;->delete(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 258
    iget-object v2, p0, Lcom/amazon/kcp/library/sync/CollectionsSyncManager;->whispersyncClient:Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/IWhispersyncClient;

    invoke-virtual {v1}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/IWhispersyncClient;->deleteDataset(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-object v2, p0, Lcom/amazon/kcp/library/sync/CollectionsSyncManager;->whispersyncClient:Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/IWhispersyncClient;

    .line 266
    invoke-virtual {v1}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 265
    invoke-interface {v2, v0, v3}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/IWhispersyncClient;->unsubscribeToDatasetNotifications(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    sget-object v0, Lcom/amazon/kcp/library/sync/CollectionsSyncManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Collection - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecordsUtil;->toLogString(Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " successfully queued for delete."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :cond_0
    return v6

    :catch_0
    move-exception v0

    .line 274
    sget-object v1, Lcom/amazon/kcp/library/sync/CollectionsSyncManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown exception trying to sync collection delete; collectionId - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    new-instance p1, Lcom/amazon/kindle/collections/sync/SyncException;

    sget-object v1, Lcom/amazon/kindle/collections/sync/SyncException$Code;->ExecutionException:Lcom/amazon/kindle/collections/sync/SyncException$Code;

    invoke-direct {p1, v1, v0}, Lcom/amazon/kindle/collections/sync/SyncException;-><init>(Lcom/amazon/kindle/collections/sync/SyncException$Code;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public syncCollectionItemDelete(Lcom/amazon/kindle/collections/dto/ICollectionItem;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/collections/sync/SyncException;
        }
    .end annotation

    .line 309
    :try_start_0
    invoke-static {p1}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/CollectionsJSONUtil;->serializeCollectionItem(Lcom/amazon/kindle/collections/dto/ICollectionItem;)Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;

    move-result-object v0

    .line 310
    iget-object v1, p0, Lcom/amazon/kcp/library/sync/CollectionsSyncManager;->whispersyncClient:Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/IWhispersyncClient;

    const-string v2, "CloudCollections.Items"

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/IWhispersyncClient;->delete(Ljava/lang/String;Ljava/util/List;)Z

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception v0

    .line 316
    sget-object v1, Lcom/amazon/kcp/library/sync/CollectionsSyncManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown exception trying to sync collectionItem delete; collectionItem - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    invoke-static {p1}, Lcom/amazon/kindle/collections/dto/CollectionItemDTO;->valueOf(Lcom/amazon/kindle/collections/dto/ICollectionItem;)Lcom/amazon/kindle/collections/dto/CollectionItemDTO;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 316
    invoke-static {v1, p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 318
    new-instance p1, Lcom/amazon/kindle/collections/sync/SyncException;

    sget-object v1, Lcom/amazon/kindle/collections/sync/SyncException$Code;->ExecutionException:Lcom/amazon/kindle/collections/sync/SyncException$Code;

    invoke-direct {p1, v1, v0}, Lcom/amazon/kindle/collections/sync/SyncException;-><init>(Lcom/amazon/kindle/collections/sync/SyncException$Code;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception v0

    .line 312
    sget-object v1, Lcom/amazon/kcp/library/sync/CollectionsSyncManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSONException trying to serialize collectionItem - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    invoke-static {p1}, Lcom/amazon/kindle/collections/dto/CollectionItemDTO;->valueOf(Lcom/amazon/kindle/collections/dto/ICollectionItem;)Lcom/amazon/kindle/collections/dto/CollectionItemDTO;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 312
    invoke-static {v1, p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 314
    new-instance p1, Lcom/amazon/kindle/collections/sync/SyncException;

    sget-object v1, Lcom/amazon/kindle/collections/sync/SyncException$Code;->SerializationProblem:Lcom/amazon/kindle/collections/sync/SyncException$Code;

    invoke-direct {p1, v1, v0}, Lcom/amazon/kindle/collections/sync/SyncException;-><init>(Lcom/amazon/kindle/collections/sync/SyncException$Code;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public syncCollectionItemUpdate(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/collections/dto/ICollectionItem;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/collections/sync/SyncException;
        }
    .end annotation

    .line 286
    :try_start_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 287
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/collections/dto/ICollectionItem;

    .line 288
    invoke-static {v2}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/CollectionsJSONUtil;->serializeCollectionItem(Lcom/amazon/kindle/collections/dto/ICollectionItem;)Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 291
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/library/sync/CollectionsSyncManager;->whispersyncClient:Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/IWhispersyncClient;

    const-string v2, "CloudCollections.Items"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, v3}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/IWhispersyncClient;->update(Ljava/lang/String;Ljava/util/List;Z)Z

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception v0

    .line 297
    sget-object v1, Lcom/amazon/kcp/library/sync/CollectionsSyncManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown exception trying to sync collectionItems update; collectionItems - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 299
    new-instance p1, Lcom/amazon/kindle/collections/sync/SyncException;

    sget-object v1, Lcom/amazon/kindle/collections/sync/SyncException$Code;->ExecutionException:Lcom/amazon/kindle/collections/sync/SyncException$Code;

    invoke-direct {p1, v1, v0}, Lcom/amazon/kindle/collections/sync/SyncException;-><init>(Lcom/amazon/kindle/collections/sync/SyncException$Code;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception v0

    .line 293
    sget-object v1, Lcom/amazon/kcp/library/sync/CollectionsSyncManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSONException trying to serialize collectionItems - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 295
    new-instance p1, Lcom/amazon/kindle/collections/sync/SyncException;

    sget-object v1, Lcom/amazon/kindle/collections/sync/SyncException$Code;->SerializationProblem:Lcom/amazon/kindle/collections/sync/SyncException$Code;

    invoke-direct {p1, v1, v0}, Lcom/amazon/kindle/collections/sync/SyncException;-><init>(Lcom/amazon/kindle/collections/sync/SyncException$Code;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public syncCollectionUpdate(Lcom/amazon/kindle/collections/dto/ICollection;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/collections/sync/SyncException;
        }
    .end annotation

    .line 226
    :try_start_0
    invoke-static {p1}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/CollectionsJSONUtil;->serializeCollection(Lcom/amazon/kindle/collections/dto/ICollection;)Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;

    move-result-object v0

    .line 227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Serialized syncRecord - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecordsUtil;->toLogString(Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for collection - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 230
    iget-object v1, p0, Lcom/amazon/kcp/library/sync/CollectionsSyncManager;->whispersyncClient:Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/IWhispersyncClient;

    const-string v2, "CloudCollections"

    const/4 v3, 0x1

    new-array v4, v3, [Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v1, v2, v4, v3}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/IWhispersyncClient;->update(Ljava/lang/String;Ljava/util/List;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 233
    iget-object v1, p0, Lcom/amazon/kcp/library/sync/CollectionsSyncManager;->whispersyncClient:Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/IWhispersyncClient;

    const-string v2, "CloudCollections.Items"

    .line 234
    invoke-virtual {v0}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 233
    invoke-interface {v1, v2, v4}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/IWhispersyncClient;->subscribeToDatasetNotifications(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    sget-object v1, Lcom/amazon/kcp/library/sync/CollectionsSyncManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Collection - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecordsUtil;->toLogString(Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " successfully queued for upload."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :cond_0
    return v5

    :catch_0
    move-exception v0

    .line 244
    sget-object v1, Lcom/amazon/kcp/library/sync/CollectionsSyncManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown exception trying to sync collection update; collection - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 246
    new-instance p1, Lcom/amazon/kindle/collections/sync/SyncException;

    sget-object v1, Lcom/amazon/kindle/collections/sync/SyncException$Code;->ExecutionException:Lcom/amazon/kindle/collections/sync/SyncException$Code;

    invoke-direct {p1, v1, v0}, Lcom/amazon/kindle/collections/sync/SyncException;-><init>(Lcom/amazon/kindle/collections/sync/SyncException$Code;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception v0

    .line 241
    sget-object v1, Lcom/amazon/kcp/library/sync/CollectionsSyncManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSONException trying to serialize collection - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 242
    new-instance p1, Lcom/amazon/kindle/collections/sync/SyncException;

    sget-object v1, Lcom/amazon/kindle/collections/sync/SyncException$Code;->SerializationProblem:Lcom/amazon/kindle/collections/sync/SyncException$Code;

    invoke-direct {p1, v1, v0}, Lcom/amazon/kindle/collections/sync/SyncException;-><init>(Lcom/amazon/kindle/collections/sync/SyncException$Code;Ljava/lang/Throwable;)V

    throw p1
.end method
