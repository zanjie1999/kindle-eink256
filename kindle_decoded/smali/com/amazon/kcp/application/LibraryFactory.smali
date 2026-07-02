.class public Lcom/amazon/kcp/application/LibraryFactory;
.super Ljava/lang/Object;
.source "LibraryFactory.java"

# interfaces
.implements Lcom/amazon/kcp/application/ILibraryFactory;


# instance fields
.field private final collectionsInitializationLock:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/application/LibraryFactory;->collectionsInitializationLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public initializeCollections()Z
    .locals 4

    .line 24
    iget-object v0, p0, Lcom/amazon/kcp/application/LibraryFactory;->collectionsInitializationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 25
    :try_start_0
    invoke-static {}, Lcom/amazon/kindle/collections/CollectionsManagerHolder;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 26
    monitor-exit v0

    return v1

    .line 29
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    .line 30
    new-instance v2, Lcom/amazon/kindle/collections/CollectionsManager;

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getCollectionsDAO()Lcom/amazon/kindle/collections/dao/ICollectionsDAO;

    move-result-object v3

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getCollectionsSyncManager()Lcom/amazon/kindle/collections/ICollectionsSyncManager;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/amazon/kindle/collections/CollectionsManager;-><init>(Lcom/amazon/kindle/collections/dao/ICollectionsDAO;Lcom/amazon/kindle/collections/ICollectionsSyncManager;)V

    invoke-static {v2}, Lcom/amazon/kindle/collections/CollectionsManagerHolder;->initializeCollectionsManager(Lcom/amazon/kindle/collections/ICollectionsManager;)V

    .line 31
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/librarymodule/R$bool;->support_collections_thumbnail:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 32
    invoke-static {}, Lcom/amazon/kindle/collections/CollectionsManagerHolder;->getInstance()Lcom/amazon/kindle/collections/ICollectionsManager;

    move-result-object v1

    invoke-static {}, Lcom/amazon/kcp/cover/CollectionThumbnailCache;->getInstance()Lcom/amazon/kcp/cover/CollectionThumbnailCache;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/amazon/kindle/collections/ICollectionsManager;->registerListener(Lcom/amazon/kindle/collections/ICollectionsListener;)V

    .line 34
    :cond_1
    invoke-static {}, Lcom/amazon/kindle/collections/CollectionsManagerHolder;->getInstance()Lcom/amazon/kindle/collections/ICollectionsManager;

    move-result-object v1

    invoke-static {}, Lcom/amazon/kcp/library/CollectionItemsCountCache;->getInstance()Lcom/amazon/kcp/library/ICollectionItemsCountCache;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/amazon/kindle/collections/ICollectionsManager;->registerListener(Lcom/amazon/kindle/collections/ICollectionsListener;)V

    .line 35
    invoke-static {}, Lcom/amazon/kindle/collections/CollectionsManagerHolder;->getInstance()Lcom/amazon/kindle/collections/ICollectionsManager;

    move-result-object v1

    invoke-static {}, Lcom/amazon/kcp/library/CollectionsCountCache;->getInstance()Lcom/amazon/kcp/library/CollectionsCountCache;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/amazon/kindle/collections/ICollectionsManager;->registerListener(Lcom/amazon/kindle/collections/ICollectionsListener;)V

    .line 36
    sget-object v1, Lcom/amazon/kindle/collections/ICollectionsSyncManager$CollectionsSyncType;->STARTUP:Lcom/amazon/kindle/collections/ICollectionsSyncManager$CollectionsSyncType;

    invoke-static {v1}, Lcom/amazon/kindle/collections/CollectionsManagerHolder;->syncCollections(Lcom/amazon/kindle/collections/ICollectionsSyncManager$CollectionsSyncType;)V

    const/4 v1, 0x1

    .line 38
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 39
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
