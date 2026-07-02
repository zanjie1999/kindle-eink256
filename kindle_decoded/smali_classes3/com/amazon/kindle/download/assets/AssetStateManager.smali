.class public Lcom/amazon/kindle/download/assets/AssetStateManager;
.super Ljava/lang/Object;
.source "AssetStateManager.java"

# interfaces
.implements Lcom/amazon/kindle/download/assets/IAssetStateManager;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static instance:Lcom/amazon/kindle/download/assets/IAssetStateManager;


# instance fields
.field private final assetCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/model/content/IBookID;",
            "Ljava/lang/ref/SoftReference<",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/services/download/IBookAsset;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final dao:Lcom/amazon/kindle/download/assets/AssetStateManagerDAO;

.field private final handlersPendingRegistration:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Lcom/amazon/kindle/model/content/IBookID;",
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/event/IEventHandler<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field private final inProgressDownloadGroups:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Lcom/amazon/kindle/model/content/IBookID;",
            "Lcom/amazon/kindle/services/download/IDownloadRequestGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final krlForDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    const-class v0, Lcom/amazon/kindle/download/assets/AssetStateManager;

    invoke-static {v0}, Lcom/amazon/kindle/services/download/DownloadUtils;->getDownloadModuleTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/download/assets/AssetStateManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;Landroid/content/Context;)V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/amazon/kindle/download/assets/AssetStateManager;->krlForDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    .line 77
    new-instance v0, Lcom/amazon/kindle/download/assets/AssetStateManagerDAO;

    invoke-static {p2}, Lcom/amazon/kindle/download/assets/AssetStateDBHelper;->getInstance(Landroid/content/Context;)Lcom/amazon/kindle/download/assets/AssetStateDBHelper;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Lcom/amazon/kindle/download/assets/AssetStateManagerDAO;-><init>(Lcom/amazon/kindle/download/assets/AssetStateDBHelper;Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;)V

    iput-object v0, p0, Lcom/amazon/kindle/download/assets/AssetStateManager;->dao:Lcom/amazon/kindle/download/assets/AssetStateManagerDAO;

    .line 79
    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/download/assets/AssetStateManager;->inProgressDownloadGroups:Ljava/util/Hashtable;

    .line 80
    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/download/assets/AssetStateManager;->handlersPendingRegistration:Ljava/util/Hashtable;

    .line 81
    invoke-direct {p0}, Lcom/amazon/kindle/download/assets/AssetStateManager;->isCacheEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/amazon/kindle/download/assets/AssetStateManager;->assetCache:Ljava/util/Map;

    .line 84
    sput-object p0, Lcom/amazon/kindle/download/assets/AssetStateManager;->instance:Lcom/amazon/kindle/download/assets/IAssetStateManager;

    .line 85
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method private isCacheEnabled()Z
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/AssetStateManager;->krlForDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    invoke-interface {v0}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->supportPreloadBook()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public addAssets(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/services/download/IBookAsset;",
            ">;)Z"
        }
    .end annotation

    .line 257
    monitor-enter p0

    .line 258
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/AssetStateManager;->dao:Lcom/amazon/kindle/download/assets/AssetStateManagerDAO;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/download/assets/AssetStateManagerDAO;->addAssets(Ljava/util/Collection;)Z

    move-result p1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 259
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public declared-synchronized addDownloadGroup(Lcom/amazon/kindle/services/download/IDownloadRequestGroup;)Z
    .locals 2

    monitor-enter p0

    .line 90
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/download/assets/AssetStateManager;->addGroup(Lcom/amazon/kindle/services/download/IAssetGroup;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    sget-object p1, Lcom/amazon/kindle/download/assets/AssetStateManager;->TAG:Ljava/lang/String;

    const-string v0, "Failed to persist assets group download request to the db. This needs to be reported as a bug immediately"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 94
    monitor-exit p0

    return p1

    .line 97
    :cond_0
    :try_start_1
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IAssetGroup;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    .line 98
    iget-object v1, p0, Lcom/amazon/kindle/download/assets/AssetStateManager;->inProgressDownloadGroups:Ljava/util/Hashtable;

    invoke-virtual {v1, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    .line 100
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addGroup(Lcom/amazon/kindle/services/download/IAssetGroup;)Z
    .locals 1

    monitor-enter p0

    .line 324
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/AssetStateManager;->dao:Lcom/amazon/kindle/download/assets/AssetStateManagerDAO;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/download/assets/AssetStateManagerDAO;->addGroup(Lcom/amazon/kindle/services/download/IAssetGroup;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getAllAssets(Lcom/amazon/kindle/model/content/IBookID;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/model/content/IBookID;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/services/download/IBookAsset;",
            ">;"
        }
    .end annotation

    .line 210
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/AssetStateManager;->assetCache:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 211
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    .line 213
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/AssetStateManager;->dao:Lcom/amazon/kindle/download/assets/AssetStateManagerDAO;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/download/assets/AssetStateManagerDAO;->getAssets(Lcom/amazon/kindle/model/content/IBookID;)Ljava/util/List;

    move-result-object v0

    .line 219
    iget-object v1, p0, Lcom/amazon/kindle/download/assets/AssetStateManager;->assetCache:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 220
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public getAsset(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;)Lcom/amazon/kindle/services/download/IBookAsset;
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/AssetStateManager;->dao:Lcom/amazon/kindle/download/assets/AssetStateManagerDAO;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/kindle/download/assets/AssetStateManagerDAO;->getAsset(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;)Lcom/amazon/kindle/services/download/IBookAsset;

    move-result-object p1

    return-object p1
.end method

.method public getAssetState(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;)Lcom/amazon/kindle/services/download/AssetState;
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/AssetStateManager;->dao:Lcom/amazon/kindle/download/assets/AssetStateManagerDAO;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/kindle/download/assets/AssetStateManagerDAO;->getAssetState(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;)Lcom/amazon/kindle/services/download/AssetState;

    move-result-object p1

    return-object p1
.end method

.method public getAssets(Lcom/amazon/kindle/model/content/IBookID;Ljava/util/EnumSet;Ljava/util/EnumSet;Ljava/util/Set;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/model/content/IBookID;",
            "Ljava/util/EnumSet<",
            "Lcom/amazon/kindle/services/download/AssetState;",
            ">;",
            "Ljava/util/EnumSet<",
            "Lcom/amazon/kindle/services/download/AssetPriority;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/services/download/AssetType;",
            ">;)",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/services/download/IBookAsset;",
            ">;"
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/AssetStateManager;->dao:Lcom/amazon/kindle/download/assets/AssetStateManagerDAO;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/amazon/kindle/download/assets/AssetStateManagerDAO;->getAssets(Lcom/amazon/kindle/model/content/IBookID;Ljava/util/EnumSet;Ljava/util/EnumSet;Ljava/util/Set;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getAssetsForAssetIds(Lcom/amazon/kindle/model/content/IBookID;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/model/content/IBookID;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/services/download/IBookAsset;",
            ">;"
        }
    .end annotation

    .line 300
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/AssetStateManager;->dao:Lcom/amazon/kindle/download/assets/AssetStateManagerDAO;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/kindle/download/assets/AssetStateManagerDAO;->getAssetsForAssetIds(Lcom/amazon/kindle/model/content/IBookID;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getBookIdForMainContentFile(Ljava/lang/String;)Lcom/amazon/kindle/model/content/IBookID;
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/AssetStateManager;->dao:Lcom/amazon/kindle/download/assets/AssetStateManagerDAO;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/download/assets/AssetStateManagerDAO;->getBookIdForMainContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 229
    invoke-static {p1}, Lcom/amazon/kindle/util/BookIdUtils;->parse(Ljava/lang/String;)Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized getDownloadGroup(Lcom/amazon/kindle/model/content/IBookID;)Lcom/amazon/kindle/services/download/IDownloadRequestGroup;
    .locals 4

    monitor-enter p0

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/AssetStateManager;->inProgressDownloadGroups:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/services/download/IDownloadRequestGroup;

    if-nez v0, :cond_3

    .line 109
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/AssetStateManager;->dao:Lcom/amazon/kindle/download/assets/AssetStateManagerDAO;

    iget-object v1, p0, Lcom/amazon/kindle/download/assets/AssetStateManager;->krlForDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    invoke-virtual {v0, v1, p1}, Lcom/amazon/kindle/download/assets/AssetStateManagerDAO;->getAssetGroup(Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;Lcom/amazon/kindle/model/content/IBookID;)Lcom/amazon/kindle/services/download/IDownloadRequestGroup;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 111
    instance-of v1, v0, Lcom/amazon/kindle/event/BaseEventProvider;

    if-eqz v1, :cond_1

    .line 112
    iget-object v1, p0, Lcom/amazon/kindle/download/assets/AssetStateManager;->handlersPendingRegistration:Ljava/util/Hashtable;

    .line 113
    invoke-interface {v0}, Lcom/amazon/kindle/services/download/IAssetGroup;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    if-eqz v1, :cond_1

    .line 115
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/event/IEventHandler;

    .line 116
    move-object v3, v0

    check-cast v3, Lcom/amazon/kindle/event/BaseEventProvider;

    invoke-virtual {v3, v2}, Lcom/amazon/kindle/event/BaseEventProvider;->registerHandler(Lcom/amazon/kindle/event/IEventHandler;)V

    goto :goto_0

    .line 118
    :cond_0
    iget-object v1, p0, Lcom/amazon/kindle/download/assets/AssetStateManager;->handlersPendingRegistration:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    :cond_1
    iget-object v1, p0, Lcom/amazon/kindle/download/assets/AssetStateManager;->krlForDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    .line 123
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->getContentMetadata(Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 125
    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kindle/model/content/ContentState;->isDownloading(Lcom/amazon/kindle/model/content/ContentState;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 126
    iget-object v1, p0, Lcom/amazon/kindle/download/assets/AssetStateManager;->inProgressDownloadGroups:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 130
    :cond_2
    sget-object v1, Lcom/amazon/kindle/download/assets/AssetStateManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "download group for book_id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " not found in memory or in the db."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    :cond_3
    :goto_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getDownloadGroupProperties(Lcom/amazon/kindle/model/content/IBookID;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/model/content/IBookID;",
            ")",
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/download/assets/AssetField;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 284
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/AssetStateManager;->dao:Lcom/amazon/kindle/download/assets/AssetStateManagerDAO;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/download/assets/AssetStateManagerDAO;->getAssetGroupProperties(Lcom/amazon/kindle/model/content/IBookID;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public getLocalContentSize(Lcom/amazon/kindle/model/content/IBookID;)J
    .locals 2

    .line 289
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/AssetStateManager;->dao:Lcom/amazon/kindle/download/assets/AssetStateManagerDAO;

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/download/assets/AssetStateManagerDAO;->getLocalContentSize(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public onAssetDownloadEvent(Lcom/amazon/kindle/event/AssetDownloadEvent;)V
    .locals 4
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 367
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/AssetStateManager;->assetCache:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 369
    invoke-virtual {p1}, Lcom/amazon/kindle/event/AssetDownloadEvent;->getBookId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    .line 370
    iget-object v1, p0, Lcom/amazon/kindle/download/assets/AssetStateManager;->assetCache:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    if-eqz v1, :cond_0

    .line 372
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_1

    .line 375
    invoke-virtual {p1}, Lcom/amazon/kindle/event/AssetDownloadEvent;->getBookAsset()Lcom/amazon/kindle/services/download/IBookAsset;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 378
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 379
    iget-object v2, p0, Lcom/amazon/kindle/download/assets/AssetStateManager;->assetCache:Ljava/util/Map;

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    invoke-virtual {p1}, Lcom/amazon/kindle/event/AssetDownloadEvent;->getBookAsset()Lcom/amazon/kindle/services/download/IBookAsset;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onContentDelete(Lcom/amazon/kindle/content/ContentDelete;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        topic = "CONTENT_DELETE"
    .end annotation

    .line 346
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/AssetStateManager;->assetCache:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 347
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentDelete;->getBookIds()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 348
    invoke-static {v0}, Lcom/amazon/kindle/util/BookIdUtils;->parse(Ljava/lang/String;)Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    .line 349
    iget-object v1, p0, Lcom/amazon/kindle/download/assets/AssetStateManager;->assetCache:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 0
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        topic = "onTrimMemory"
    .end annotation

    .line 356
    invoke-static {p1}, Lcom/amazon/kindle/MemoryUtils;->isMemoryCritical(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/amazon/kindle/download/assets/AssetStateManager;->assetCache:Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 357
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    :cond_0
    return-void
.end method

.method public declared-synchronized purgeAssets(Lcom/amazon/kindle/model/content/IBookID;)V
    .locals 1

    monitor-enter p0

    .line 315
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/AssetStateManager;->inProgressDownloadGroups:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/AssetStateManager;->assetCache:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/AssetStateManager;->assetCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/AssetStateManager;->dao:Lcom/amazon/kindle/download/assets/AssetStateManagerDAO;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/download/assets/AssetStateManagerDAO;->deleteAssets(Lcom/amazon/kindle/model/content/IBookID;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 320
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public registerDownloadAssetCompleteHandler(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/event/IEventHandler;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/model/content/IBookID;",
            "Lcom/amazon/kindle/event/IEventHandler<",
            "*>;)V"
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/AssetStateManager;->inProgressDownloadGroups:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/services/download/IDownloadRequestGroup;

    .line 166
    iget-object v1, p0, Lcom/amazon/kindle/download/assets/AssetStateManager;->handlersPendingRegistration:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    if-nez v1, :cond_0

    .line 168
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 170
    :cond_0
    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_2

    .line 171
    instance-of p2, v0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;

    if-eqz p2, :cond_2

    .line 172
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/event/IEventHandler;

    .line 173
    move-object v2, v0

    check-cast v2, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;

    invoke-virtual {v2, v1}, Lcom/amazon/kindle/event/BaseEventProvider;->registerHandler(Lcom/amazon/kindle/event/IEventHandler;)V

    goto :goto_0

    .line 175
    :cond_1
    iget-object p2, p0, Lcom/amazon/kindle/download/assets/AssetStateManager;->handlersPendingRegistration:Ljava/util/Hashtable;

    invoke-virtual {p2, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-object p2, Lcom/amazon/kindle/download/assets/AssetStateManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "subscribed a handler to the download group for id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 178
    :cond_2
    iget-object p2, p0, Lcom/amazon/kindle/download/assets/AssetStateManager;->handlersPendingRegistration:Ljava/util/Hashtable;

    invoke-virtual {p2, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object p2, Lcom/amazon/kindle/download/assets/AssetStateManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adding handler to handlers-pending-registration list because no download group currently being downloaded for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public declared-synchronized unpersistAllAssets(Lcom/amazon/kindle/model/content/IBookID;)V
    .locals 0

    monitor-enter p0

    .line 269
    :try_start_0
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/download/assets/AssetStateManager;->unpersistAllAssets(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unpersistAllAssets(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/model/content/IBookID;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 274
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/model/content/IBookID;

    .line 275
    iget-object v2, p0, Lcom/amazon/kindle/download/assets/AssetStateManager;->assetCache:Ljava/util/Map;

    if-eqz v2, :cond_0

    .line 276
    iget-object v2, p0, Lcom/amazon/kindle/download/assets/AssetStateManager;->assetCache:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 279
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/AssetStateManager;->dao:Lcom/amazon/kindle/download/assets/AssetStateManagerDAO;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/download/assets/AssetStateManagerDAO;->deleteAssets(Ljava/util/List;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public unregisterDownloadAssetCompleteHandler(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/event/IEventHandler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/model/content/IBookID;",
            "Lcom/amazon/kindle/event/IEventHandler<",
            "*>;)V"
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/AssetStateManager;->inProgressDownloadGroups:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/services/download/IDownloadRequestGroup;

    if-eqz v0, :cond_0

    .line 189
    instance-of v1, v0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;

    if-eqz v1, :cond_0

    .line 190
    check-cast v0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;

    invoke-virtual {v0, p2}, Lcom/amazon/kindle/event/BaseEventProvider;->unregisterHandler(Lcom/amazon/kindle/event/IEventHandler;)V

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/AssetStateManager;->handlersPendingRegistration:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    if-eqz p1, :cond_1

    .line 193
    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    invoke-interface {p1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public updateAsset(Lcom/amazon/kindle/services/download/IBookAsset;Lcom/amazon/kindle/download/assets/AssetStateContentValues;)Z
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/AssetStateManager;->dao:Lcom/amazon/kindle/download/assets/AssetStateManagerDAO;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/kindle/download/assets/AssetStateManagerDAO;->updateAsset(Lcom/amazon/kindle/services/download/IBookAsset;Lcom/amazon/kindle/download/assets/AssetStateContentValues;)Z

    move-result p1

    return p1
.end method

.method public updateAssetGroup(Lcom/amazon/kindle/services/download/IDownloadRequestGroup;)Z
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/AssetStateManager;->dao:Lcom/amazon/kindle/download/assets/AssetStateManagerDAO;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/download/assets/AssetStateManagerDAO;->updateAssetGroup(Lcom/amazon/kindle/services/download/IDownloadRequestGroup;)Z

    move-result p1

    return p1
.end method

.method public updateAssetState(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;Lcom/amazon/kindle/services/download/AssetState;J)V
    .locals 6

    .line 150
    monitor-enter p0

    .line 151
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/AssetStateManager;->dao:Lcom/amazon/kindle/download/assets/AssetStateManagerDAO;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/amazon/kindle/download/assets/AssetStateManagerDAO;->updateAssetState(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;Lcom/amazon/kindle/services/download/AssetState;J)Z

    .line 152
    sget-object p2, Lcom/amazon/kindle/services/download/AssetState;->LOCAL:Lcom/amazon/kindle/services/download/AssetState;

    if-eq p3, p2, :cond_0

    sget-object p2, Lcom/amazon/kindle/services/download/AssetState;->ERROR:Lcom/amazon/kindle/services/download/AssetState;

    if-ne p3, p2, :cond_1

    :cond_0
    iget-object p2, p0, Lcom/amazon/kindle/download/assets/AssetStateManager;->inProgressDownloadGroups:Ljava/util/Hashtable;

    .line 153
    invoke-virtual {p2, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 154
    iget-object p2, p0, Lcom/amazon/kindle/download/assets/AssetStateManager;->inProgressDownloadGroups:Ljava/util/Hashtable;

    invoke-virtual {p2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/kindle/services/download/IDownloadRequestGroup;

    .line 155
    invoke-interface {p2}, Lcom/amazon/kindle/services/download/IDownloadRequestGroup;->isComplete()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 156
    iget-object p2, p0, Lcom/amazon/kindle/download/assets/AssetStateManager;->inProgressDownloadGroups:Ljava/util/Hashtable;

    invoke-virtual {p2, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iget-object p2, p0, Lcom/amazon/kindle/download/assets/AssetStateManager;->handlersPendingRegistration:Ljava/util/Hashtable;

    invoke-virtual {p2, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public declared-synchronized updateGroupId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 329
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/AssetStateManager;->dao:Lcom/amazon/kindle/download/assets/AssetStateManagerDAO;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/kindle/download/assets/AssetStateManagerDAO;->updateGroupId(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
