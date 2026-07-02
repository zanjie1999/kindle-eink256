.class public Lcom/amazon/kcp/library/CollectionsCounter;
.super Lcom/amazon/kcp/library/AbstractUserItemsCounter;
.source "CollectionsCounter.java"

# interfaces
.implements Lcom/amazon/kindle/collections/ICollectionsListener;


# static fields
.field private static final DEFAULT_SORT_ORDER:Lcom/amazon/kindle/collections/dao/ICollectionsDAO$SortOrder;


# instance fields
.field private collectionIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private collectionsManager:Lcom/amazon/kindle/collections/ICollectionsManager;

.field private filter:Lcom/amazon/kindle/krx/collections/CollectionFilter;

.field private libraryService:Lcom/amazon/kindle/content/ILibraryService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    sget-object v0, Lcom/amazon/kindle/collections/dao/ICollectionsDAO$SortOrder;->ASC:Lcom/amazon/kindle/collections/dao/ICollectionsDAO$SortOrder;

    sput-object v0, Lcom/amazon/kcp/library/CollectionsCounter;->DEFAULT_SORT_ORDER:Lcom/amazon/kindle/collections/dao/ICollectionsDAO$SortOrder;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/collections/ICollectionsManager;Lcom/amazon/kindle/callback/ICallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/collections/ICollectionsManager;",
            "Lcom/amazon/kindle/callback/ICallback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 48
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/kcp/library/CollectionsCounter;-><init>(Lcom/amazon/kindle/collections/ICollectionsManager;Lcom/amazon/kindle/callback/ICallback;Lcom/amazon/kindle/content/ILibraryService;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/collections/ICollectionsManager;Lcom/amazon/kindle/callback/ICallback;Lcom/amazon/kindle/content/ILibraryService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/collections/ICollectionsManager;",
            "Lcom/amazon/kindle/callback/ICallback<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/amazon/kindle/content/ILibraryService;",
            ")V"
        }
    .end annotation

    .line 56
    invoke-direct {p0, p2}, Lcom/amazon/kcp/library/AbstractUserItemsCounter;-><init>(Lcom/amazon/kindle/callback/ICallback;)V

    .line 27
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcom/amazon/kcp/library/CollectionsCounter;->collectionIds:Ljava/util/HashSet;

    .line 37
    sget-object p2, Lcom/amazon/kindle/krx/collections/CollectionFilter;->ALL:Lcom/amazon/kindle/krx/collections/CollectionFilter;

    iput-object p2, p0, Lcom/amazon/kcp/library/CollectionsCounter;->filter:Lcom/amazon/kindle/krx/collections/CollectionFilter;

    .line 57
    iput-object p1, p0, Lcom/amazon/kcp/library/CollectionsCounter;->collectionsManager:Lcom/amazon/kindle/collections/ICollectionsManager;

    .line 58
    iput-object p3, p0, Lcom/amazon/kcp/library/CollectionsCounter;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    return-void
.end method

.method private updateCounter()V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/amazon/kcp/library/AbstractUserItemsCounter;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v0, :cond_0

    .line 108
    iget-object v1, p0, Lcom/amazon/kcp/library/CollectionsCounter;->collectionIds:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 109
    invoke-virtual {p0}, Lcom/amazon/kcp/library/AbstractUserItemsCounter;->executeUpdateCallback()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected getUserItemsCountFromDB()I
    .locals 3

    .line 75
    iget-object v0, p0, Lcom/amazon/kcp/library/CollectionsCounter;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    invoke-interface {v0}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 76
    iget-object v1, p0, Lcom/amazon/kcp/library/CollectionsCounter;->collectionsManager:Lcom/amazon/kindle/collections/ICollectionsManager;

    iget-object v2, p0, Lcom/amazon/kcp/library/CollectionsCounter;->filter:Lcom/amazon/kindle/krx/collections/CollectionFilter;

    invoke-interface {v1, v0, v2}, Lcom/amazon/kindle/collections/ICollectionsManager;->getCollectionsCount(Ljava/lang/String;Lcom/amazon/kindle/krx/collections/CollectionFilter;)I

    move-result v0

    return v0
.end method

.method public onCollectionItemsDeleted(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/collections/dto/ICollectionItem;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onCollectionItemsUpdated(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/collections/dto/ICollectionItem;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onCollectionSyncComplete()V
    .locals 0

    .line 103
    invoke-virtual {p0}, Lcom/amazon/kcp/library/CollectionsCounter;->getUserItemsCountFromDB()I

    return-void
.end method

.method public onCollectionsDeleted(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/amazon/kcp/library/CollectionsCounter;->collectionIds:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 88
    invoke-direct {p0}, Lcom/amazon/kcp/library/CollectionsCounter;->updateCounter()V

    return-void
.end method

.method public onCollectionsUpdated(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/amazon/kcp/library/CollectionsCounter;->collectionIds:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 82
    invoke-direct {p0}, Lcom/amazon/kcp/library/CollectionsCounter;->updateCounter()V

    return-void
.end method

.method public registerHandler()V
    .locals 1

    .line 63
    invoke-super {p0}, Lcom/amazon/kcp/library/AbstractUserItemsCounter;->registerHandler()V

    .line 64
    iget-object v0, p0, Lcom/amazon/kcp/library/CollectionsCounter;->collectionsManager:Lcom/amazon/kindle/collections/ICollectionsManager;

    invoke-interface {v0, p0}, Lcom/amazon/kindle/collections/ICollectionsManager;->registerListener(Lcom/amazon/kindle/collections/ICollectionsListener;)V

    return-void
.end method

.method public unregisterHandler()V
    .locals 1

    .line 69
    invoke-super {p0}, Lcom/amazon/kcp/library/AbstractUserItemsCounter;->unregisterHandler()V

    .line 70
    iget-object v0, p0, Lcom/amazon/kcp/library/CollectionsCounter;->collectionsManager:Lcom/amazon/kindle/collections/ICollectionsManager;

    invoke-interface {v0, p0}, Lcom/amazon/kindle/collections/ICollectionsManager;->unregisterListener(Lcom/amazon/kindle/collections/ICollectionsListener;)V

    return-void
.end method
