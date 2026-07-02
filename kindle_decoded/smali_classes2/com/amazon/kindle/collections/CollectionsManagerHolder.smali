.class public Lcom/amazon/kindle/collections/CollectionsManagerHolder;
.super Ljava/lang/Object;
.source "CollectionsManagerHolder.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static volatile instance:Lcom/amazon/kindle/collections/ICollectionsManager;

.field private static final startSignal:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 8
    const-class v0, Lcom/amazon/kindle/collections/CollectionsManagerHolder;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/collections/CollectionsManagerHolder;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 10
    sput-object v0, Lcom/amazon/kindle/collections/CollectionsManagerHolder;->instance:Lcom/amazon/kindle/collections/ICollectionsManager;

    .line 11
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v0, Lcom/amazon/kindle/collections/CollectionsManagerHolder;->startSignal:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/amazon/kindle/collections/ICollectionsManager;
    .locals 3

    .line 28
    sget-object v0, Lcom/amazon/kindle/collections/CollectionsManagerHolder;->instance:Lcom/amazon/kindle/collections/ICollectionsManager;

    if-nez v0, :cond_0

    .line 31
    :try_start_0
    sget-object v0, Lcom/amazon/kindle/collections/CollectionsManagerHolder;->startSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 33
    sget-object v1, Lcom/amazon/kindle/collections/CollectionsManagerHolder;->TAG:Ljava/lang/String;

    const-string v2, "CollectionsManager not initialized and we couldn\'t wait for that."

    invoke-static {v1, v2, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_0
    :goto_0
    sget-object v0, Lcom/amazon/kindle/collections/CollectionsManagerHolder;->instance:Lcom/amazon/kindle/collections/ICollectionsManager;

    return-object v0
.end method

.method public static initializeCollectionsManager(Lcom/amazon/kindle/collections/ICollectionsManager;)V
    .locals 1

    .line 14
    sget-object v0, Lcom/amazon/kindle/collections/CollectionsManagerHolder;->instance:Lcom/amazon/kindle/collections/ICollectionsManager;

    if-eqz v0, :cond_0

    return-void

    .line 17
    :cond_0
    sput-object p0, Lcom/amazon/kindle/collections/CollectionsManagerHolder;->instance:Lcom/amazon/kindle/collections/ICollectionsManager;

    .line 20
    sget-object p0, Lcom/amazon/kindle/collections/CollectionsManagerHolder;->startSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public static isInitialized()Z
    .locals 1

    .line 24
    sget-object v0, Lcom/amazon/kindle/collections/CollectionsManagerHolder;->instance:Lcom/amazon/kindle/collections/ICollectionsManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static syncCollections(Lcom/amazon/kindle/collections/ICollectionsSyncManager$CollectionsSyncType;)V
    .locals 1

    .line 41
    sget-object v0, Lcom/amazon/kindle/collections/CollectionsManagerHolder;->instance:Lcom/amazon/kindle/collections/ICollectionsManager;

    if-eqz v0, :cond_3

    .line 42
    sget-object v0, Lcom/amazon/kindle/collections/CollectionsManagerHolder$1;->$SwitchMap$com$amazon$kindle$collections$ICollectionsSyncManager$CollectionsSyncType:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    goto :goto_0

    .line 50
    :cond_0
    sget-object p0, Lcom/amazon/kindle/collections/CollectionsManagerHolder;->instance:Lcom/amazon/kindle/collections/ICollectionsManager;

    invoke-interface {p0}, Lcom/amazon/kindle/collections/ICollectionsManager;->handleStartupSync()V

    goto :goto_0

    .line 47
    :cond_1
    sget-object p0, Lcom/amazon/kindle/collections/CollectionsManagerHolder;->instance:Lcom/amazon/kindle/collections/ICollectionsManager;

    invoke-interface {p0}, Lcom/amazon/kindle/collections/ICollectionsManager;->handleIncrementalCollectionsSync()V

    goto :goto_0

    .line 44
    :cond_2
    sget-object p0, Lcom/amazon/kindle/collections/CollectionsManagerHolder;->instance:Lcom/amazon/kindle/collections/ICollectionsManager;

    invoke-interface {p0}, Lcom/amazon/kindle/collections/ICollectionsManager;->handleFullCollectionsSync()V

    :cond_3
    :goto_0
    return-void
.end method
