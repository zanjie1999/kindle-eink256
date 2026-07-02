.class public Lcom/amazon/kindle/collections/CollectionsManager;
.super Ljava/lang/Object;
.source "CollectionsManager.java"

# interfaces
.implements Lcom/amazon/kindle/collections/ICollectionsManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/collections/CollectionsManager$LargeLibraryHelper;
    }
.end annotation


# static fields
.field public static final COLLECTION_DELETE:Lcom/amazon/kindle/event/EventType;

.field public static final COLLECTION_ITEM_DELETE:Lcom/amazon/kindle/event/EventType;

.field public static final COLLECTION_ITEM_UPDATE:Lcom/amazon/kindle/event/EventType;

.field public static final COLLECTION_UPDATE:Lcom/amazon/kindle/event/EventType;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private collectionsDAO:Lcom/amazon/kindle/collections/dao/ICollectionsDAO;

.field private final largeLibraryHelper:Lcom/amazon/kindle/collections/CollectionsManager$LargeLibraryHelper;

.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/collections/ICollectionsListener;",
            ">;"
        }
    .end annotation
.end field

.field private syncManager:Lcom/amazon/kindle/collections/ICollectionsSyncManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 48
    const-class v0, Lcom/amazon/kindle/collections/CollectionsManager;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/collections/CollectionsManager;->TAG:Ljava/lang/String;

    .line 60
    new-instance v0, Lcom/amazon/kindle/event/EventType;

    const-string v1, "UPDATE"

    const-string v2, "COLLECTION"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/event/EventType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/collections/CollectionsManager;->COLLECTION_UPDATE:Lcom/amazon/kindle/event/EventType;

    .line 61
    new-instance v0, Lcom/amazon/kindle/event/EventType;

    const-string v3, "DELETE"

    invoke-direct {v0, v2, v3}, Lcom/amazon/kindle/event/EventType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/collections/CollectionsManager;->COLLECTION_DELETE:Lcom/amazon/kindle/event/EventType;

    .line 62
    new-instance v0, Lcom/amazon/kindle/event/EventType;

    const-string v2, "COLLECTION_ITEM"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/event/EventType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/collections/CollectionsManager;->COLLECTION_ITEM_UPDATE:Lcom/amazon/kindle/event/EventType;

    .line 63
    new-instance v0, Lcom/amazon/kindle/event/EventType;

    invoke-direct {v0, v2, v3}, Lcom/amazon/kindle/event/EventType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/collections/CollectionsManager;->COLLECTION_ITEM_DELETE:Lcom/amazon/kindle/event/EventType;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/collections/dao/ICollectionsDAO;Lcom/amazon/kindle/collections/ICollectionsSyncManager;)V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/collections/CollectionsManager;->listeners:Ljava/util/List;

    .line 73
    iput-object p2, p0, Lcom/amazon/kindle/collections/CollectionsManager;->syncManager:Lcom/amazon/kindle/collections/ICollectionsSyncManager;

    .line 74
    iput-object p1, p0, Lcom/amazon/kindle/collections/CollectionsManager;->collectionsDAO:Lcom/amazon/kindle/collections/dao/ICollectionsDAO;

    .line 75
    new-instance p1, Lcom/amazon/kindle/collections/CollectionsManager$LargeLibraryHelper;

    invoke-direct {p1}, Lcom/amazon/kindle/collections/CollectionsManager$LargeLibraryHelper;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/collections/CollectionsManager;->largeLibraryHelper:Lcom/amazon/kindle/collections/CollectionsManager$LargeLibraryHelper;

    .line 76
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method public static generateCollectionItem(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;)Lcom/amazon/kindle/collections/dto/ICollectionItem;
    .locals 4

    .line 293
    new-instance v0, Lcom/amazon/kcp/library/sync/SyncIdentifier;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/sync/SyncIdentifier;-><init>(Lcom/amazon/kindle/model/content/IBookID;)V

    .line 294
    new-instance v1, Lcom/amazon/kindle/collections/dto/CollectionItemDTO;

    invoke-interface {p0}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object p0

    .line 295
    invoke-virtual {v0}, Lcom/amazon/kcp/library/sync/SyncIdentifier;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0x0

    .line 297
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v1, p0, v0, p1, v2}, Lcom/amazon/kindle/collections/dto/CollectionItemDTO;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;)V

    return-object v1
.end method

.method private getOrderFromIndex(Ljava/util/List;I)D
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/collections/dto/ICollectionItem;",
            ">;I)D"
        }
    .end annotation

    .line 907
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    return-wide p1

    .line 913
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/collections/dto/ICollectionItem;

    invoke-interface {v0}, Lcom/amazon/kindle/collections/dto/ICollectionItem;->getSortOrder()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    add-double/2addr v0, v2

    if-lez p2, :cond_1

    add-int/lit8 v4, p2, -0x1

    .line 916
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kindle/collections/dto/ICollectionItem;

    invoke-interface {v4}, Lcom/amazon/kindle/collections/dto/ICollectionItem;->getSortOrder()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    goto :goto_0

    :cond_1
    const-wide/16 v4, 0x0

    .line 918
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge p2, v6, :cond_2

    .line 919
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/collections/dto/ICollectionItem;

    invoke-interface {p1}, Lcom/amazon/kindle/collections/dto/ICollectionItem;->getSortOrder()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    :cond_2
    add-double/2addr v4, v0

    div-double/2addr v4, v2

    return-wide v4
.end method

.method private resolveSortOrder(Lcom/amazon/kindle/collections/dto/ICollectionItem;)Z
    .locals 2

    .line 931
    iget-object v0, p0, Lcom/amazon/kindle/collections/CollectionsManager;->collectionsDAO:Lcom/amazon/kindle/collections/dao/ICollectionsDAO;

    invoke-interface {p1}, Lcom/amazon/kindle/collections/dto/ICollectionItem;->getCollectionId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kindle/collections/dao/ICollectionsDAO;->getSortedCollectionItemsByCollectionId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 932
    invoke-direct {p0, p1, v0, v1}, Lcom/amazon/kindle/collections/CollectionsManager;->resolveSortOrder(Lcom/amazon/kindle/collections/dto/ICollectionItem;Ljava/util/List;Z)Z

    move-result p1

    return p1
.end method

.method private resolveSortOrder(Lcom/amazon/kindle/collections/dto/ICollectionItem;Ljava/util/List;Z)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/collections/dto/ICollectionItem;",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/collections/dto/ICollectionItem;",
            ">;Z)Z"
        }
    .end annotation

    .line 946
    invoke-interface {p2}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 947
    invoke-static {p1}, Lcom/amazon/kindle/collections/dto/CollectionItemDTO;->valueOf(Lcom/amazon/kindle/collections/dto/ICollectionItem;)Lcom/amazon/kindle/collections/dto/CollectionItemDTO;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 952
    :cond_0
    invoke-interface {p2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    return v2

    .line 957
    :cond_1
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    if-eqz v3, :cond_5

    .line 958
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/collections/dto/ICollectionItem;

    .line 960
    invoke-interface {p1}, Lcom/amazon/kindle/collections/dto/ICollectionItem;->getSortOrder()Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    cmpl-double v9, v7, v5

    if-nez v9, :cond_2

    .line 961
    invoke-interface {v3}, Lcom/amazon/kindle/collections/dto/ICollectionItem;->getSyncId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1}, Lcom/amazon/kindle/collections/dto/ICollectionItem;->getSyncId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 962
    invoke-interface {v3}, Lcom/amazon/kindle/collections/dto/ICollectionItem;->getSortOrder()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/amazon/kindle/collections/dto/CollectionItemDTO;->setSortOrder(Ljava/lang/Double;)V

    return v2

    .line 967
    :cond_2
    invoke-interface {v3}, Lcom/amazon/kindle/collections/dto/ICollectionItem;->getSortOrder()Ljava/lang/Double;

    move-result-object v7

    invoke-interface {p1}, Lcom/amazon/kindle/collections/dto/ICollectionItem;->getSortOrder()Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 970
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 971
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/collections/dto/ICollectionItem;

    invoke-interface {v2}, Lcom/amazon/kindle/collections/dto/ICollectionItem;->getSortOrder()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    .line 975
    :cond_3
    invoke-interface {v3}, Lcom/amazon/kindle/collections/dto/ICollectionItem;->getSortOrder()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    add-double/2addr v5, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v5, v2

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/collections/dto/CollectionItemDTO;->setSortOrder(Ljava/lang/Double;)V

    if-eqz p3, :cond_4

    .line 977
    invoke-interface {v0, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 980
    :cond_4
    iget-object p3, p0, Lcom/amazon/kindle/collections/CollectionsManager;->largeLibraryHelper:Lcom/amazon/kindle/collections/CollectionsManager$LargeLibraryHelper;

    invoke-static {p3, p2, p1}, Lcom/amazon/kindle/collections/CollectionsManager$LargeLibraryHelper;->access$900(Lcom/amazon/kindle/collections/CollectionsManager$LargeLibraryHelper;Ljava/util/List;Lcom/amazon/kindle/collections/dto/ICollectionItem;)V

    return v4

    .line 989
    :cond_5
    invoke-interface {p1}, Lcom/amazon/kindle/collections/dto/ICollectionItem;->getSortOrder()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    cmpl-double v0, v7, v5

    if-nez v0, :cond_8

    .line 992
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    if-nez v0, :cond_6

    .line 993
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/collections/dto/ICollectionItem;

    invoke-interface {v0}, Lcom/amazon/kindle/collections/dto/ICollectionItem;->getSortOrder()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    int-to-double v7, v0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v5

    add-double/2addr v2, v5

    .line 996
    :cond_6
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amazon/kindle/collections/dto/CollectionItemDTO;->setSortOrder(Ljava/lang/Double;)V

    if-eqz p3, :cond_7

    .line 999
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1002
    :cond_7
    iget-object p1, p0, Lcom/amazon/kindle/collections/CollectionsManager;->largeLibraryHelper:Lcom/amazon/kindle/collections/CollectionsManager$LargeLibraryHelper;

    invoke-static {p1, p2}, Lcom/amazon/kindle/collections/CollectionsManager$LargeLibraryHelper;->access$1000(Lcom/amazon/kindle/collections/CollectionsManager$LargeLibraryHelper;Ljava/util/List;)V

    return v4

    :cond_8
    return v2
.end method


# virtual methods
.method public addItemsToCollection(Ljava/util/List;Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/collections/dto/ICollectionItem;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const-string v0, " for collectionId - "

    .line 312
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/amazon/kindle/collections/CollectionsManager;->collectionsDAO:Lcom/amazon/kindle/collections/dao/ICollectionsDAO;

    invoke-interface {v2, p2}, Lcom/amazon/kindle/collections/dao/ICollectionsDAO;->getSortedCollectionItemsByCollectionId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 314
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/collections/dto/ICollectionItem;

    .line 315
    invoke-interface {v3}, Lcom/amazon/kindle/collections/dto/ICollectionItem;->getCollectionId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    .line 318
    invoke-direct {p0, v3, v1, v4}, Lcom/amazon/kindle/collections/CollectionsManager;->resolveSortOrder(Lcom/amazon/kindle/collections/dto/ICollectionItem;Ljava/util/List;Z)Z

    goto :goto_0

    .line 316
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "collection item\'s collection does not match input parameter"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 v1, 0x0

    .line 323
    :try_start_0
    iget-object v2, p0, Lcom/amazon/kindle/collections/CollectionsManager;->syncManager:Lcom/amazon/kindle/collections/ICollectionsSyncManager;

    invoke-interface {v2, p1}, Lcom/amazon/kindle/collections/ICollectionsSyncManager;->syncCollectionItemUpdate(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 326
    sget-object v2, Lcom/amazon/kindle/collections/CollectionsManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failure to add collection items - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/amazon/kindle/collections/sync/SyncException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 337
    :cond_2
    iget-object v0, p0, Lcom/amazon/kindle/collections/CollectionsManager;->collectionsDAO:Lcom/amazon/kindle/collections/dao/ICollectionsDAO;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/collections/dao/ICollectionsDAO;->addCollectionItems(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 339
    iget-object v2, p0, Lcom/amazon/kindle/collections/CollectionsManager;->largeLibraryHelper:Lcom/amazon/kindle/collections/CollectionsManager$LargeLibraryHelper;

    invoke-static {v2, p1, p2}, Lcom/amazon/kindle/collections/CollectionsManager$LargeLibraryHelper;->access$400(Lcom/amazon/kindle/collections/CollectionsManager$LargeLibraryHelper;Ljava/util/Collection;Ljava/lang/String;)V

    .line 340
    invoke-virtual {p0, p1, v1}, Lcom/amazon/kindle/collections/CollectionsManager;->notifyWithCollectionItems(Ljava/util/List;Z)V

    :cond_3
    return v0

    .line 331
    :catch_0
    sget-object v2, Lcom/amazon/kindle/collections/CollectionsManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failure to sync collection items - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".  Aborting addBooksToCollection and returning..."

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public addOrMoveCollectionItemToIndex(Lcom/amazon/kindle/collections/dto/ICollectionItem;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 496
    iget-object v0, p0, Lcom/amazon/kindle/collections/CollectionsManager;->collectionsDAO:Lcom/amazon/kindle/collections/dao/ICollectionsDAO;

    invoke-interface {p1}, Lcom/amazon/kindle/collections/dto/ICollectionItem;->getCollectionId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kindle/collections/dao/ICollectionsDAO;->getSortedCollectionItemsByCollectionId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 497
    invoke-static {p1}, Lcom/amazon/kindle/collections/dto/CollectionItemDTO;->valueOf(Lcom/amazon/kindle/collections/dto/ICollectionItem;)Lcom/amazon/kindle/collections/dto/CollectionItemDTO;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 503
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-ne v2, p2, :cond_1

    const/4 p1, 0x1

    return p1

    .line 507
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-gt p2, v2, :cond_4

    if-ltz p2, :cond_4

    .line 512
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/collections/dto/ICollectionItem;

    .line 513
    invoke-interface {v3}, Lcom/amazon/kindle/collections/dto/ICollectionItem;->getSyncId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lcom/amazon/kindle/collections/dto/ICollectionItem;->getSyncId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 514
    invoke-interface {v0, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 518
    :cond_3
    invoke-direct {p0, v0, p2}, Lcom/amazon/kindle/collections/CollectionsManager;->getOrderFromIndex(Ljava/util/List;I)D

    move-result-wide v2

    .line 520
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/amazon/kindle/collections/dto/CollectionItemDTO;->setSortOrder(Ljava/lang/Double;)V

    .line 522
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/collections/CollectionsManager;->addOrUpdateCollectionItem(Lcom/amazon/kindle/collections/dto/ICollectionItem;)Z

    move-result p1

    return p1

    .line 508
    :cond_4
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public addOrUpdateCollectionItem(Lcom/amazon/kindle/collections/dto/ICollectionItem;)Z
    .locals 2

    const/4 v0, 0x0

    .line 391
    invoke-virtual {p0, p1, v0}, Lcom/amazon/kindle/collections/CollectionsManager;->addOrUpdateCollectionItem(Lcom/amazon/kindle/collections/dto/ICollectionItem;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 393
    invoke-virtual {p0, p1, v0}, Lcom/amazon/kindle/collections/CollectionsManager;->notifyWithCollectionItem(Lcom/amazon/kindle/collections/dto/ICollectionItem;Z)V

    :cond_0
    return v1
.end method

.method public addOrUpdateCollectionItem(Lcom/amazon/kindle/collections/dto/ICollectionItem;Z)Z
    .locals 4

    const/4 v0, 0x0

    .line 411
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/collections/CollectionsManager;->isNewCollectionItem(Lcom/amazon/kindle/collections/dto/ICollectionItem;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 412
    :goto_0
    invoke-direct {p0, p1}, Lcom/amazon/kindle/collections/CollectionsManager;->resolveSortOrder(Lcom/amazon/kindle/collections/dto/ICollectionItem;)Z

    move-result v3

    if-nez v3, :cond_1

    if-nez p2, :cond_2

    .line 416
    :cond_1
    iget-object p2, p0, Lcom/amazon/kindle/collections/CollectionsManager;->syncManager:Lcom/amazon/kindle/collections/ICollectionsSyncManager;

    new-array v2, v2, [Lcom/amazon/kindle/collections/dto/ICollectionItem;

    aput-object p1, v2, v0

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {p2, v2}, Lcom/amazon/kindle/collections/ICollectionsSyncManager;->syncCollectionItemUpdate(Ljava/util/List;)Z

    move-result p2

    if-nez p2, :cond_2

    return v0

    :cond_2
    if-eqz v1, :cond_3

    .line 422
    iget-object p2, p0, Lcom/amazon/kindle/collections/CollectionsManager;->collectionsDAO:Lcom/amazon/kindle/collections/dao/ICollectionsDAO;

    invoke-interface {p2, p1}, Lcom/amazon/kindle/collections/dao/ICollectionsDAO;->updateCollectionItem(Lcom/amazon/kindle/collections/dto/ICollectionItem;)Z

    move-result p1

    goto :goto_1

    .line 424
    :cond_3
    iget-object p2, p0, Lcom/amazon/kindle/collections/CollectionsManager;->collectionsDAO:Lcom/amazon/kindle/collections/dao/ICollectionsDAO;

    invoke-interface {p2, p1}, Lcom/amazon/kindle/collections/dao/ICollectionsDAO;->addCollectionItem(Lcom/amazon/kindle/collections/dto/ICollectionItem;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 426
    iget-object p2, p0, Lcom/amazon/kindle/collections/CollectionsManager;->largeLibraryHelper:Lcom/amazon/kindle/collections/CollectionsManager$LargeLibraryHelper;

    invoke-static {p2, p1}, Lcom/amazon/kindle/collections/CollectionsManager$LargeLibraryHelper;->access$600(Lcom/amazon/kindle/collections/CollectionsManager$LargeLibraryHelper;Lcom/amazon/kindle/collections/dto/ICollectionItem;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    move p1, v0

    :goto_1
    return p1
.end method

.method public bulkAddOrUpdateCollectionItems(Ljava/util/List;Lcom/amazon/kindle/collections/dto/ICollection;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/collections/dto/ICollectionItem;",
            ">;",
            "Lcom/amazon/kindle/collections/dto/ICollection;",
            ")V"
        }
    .end annotation

    .line 444
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 445
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 446
    iget-object v2, p0, Lcom/amazon/kindle/collections/CollectionsManager;->collectionsDAO:Lcom/amazon/kindle/collections/dao/ICollectionsDAO;

    .line 447
    invoke-interface {p2}, Lcom/amazon/kindle/collections/dto/ICollection;->getId()Ljava/lang/String;

    move-result-object p2

    .line 446
    invoke-interface {v2, p2}, Lcom/amazon/kindle/collections/dao/ICollectionsDAO;->getSortedCollectionItemsByCollectionId(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    .line 449
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/collections/dto/ICollectionItem;

    .line 450
    invoke-virtual {p0, v2}, Lcom/amazon/kindle/collections/CollectionsManager;->isNewCollectionItem(Lcom/amazon/kindle/collections/dto/ICollectionItem;)Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    .line 451
    invoke-direct {p0, v2, p2, v5}, Lcom/amazon/kindle/collections/CollectionsManager;->resolveSortOrder(Lcom/amazon/kindle/collections/dto/ICollectionItem;Ljava/util/List;Z)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 455
    :try_start_0
    iget-object v6, p0, Lcom/amazon/kindle/collections/CollectionsManager;->syncManager:Lcom/amazon/kindle/collections/ICollectionsSyncManager;

    new-array v5, v5, [Lcom/amazon/kindle/collections/dto/ICollectionItem;

    aput-object v2, v5, v3

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v6, v3}, Lcom/amazon/kindle/collections/ICollectionsSyncManager;->syncCollectionItemUpdate(Ljava/util/List;)Z

    move-result v3
    :try_end_0
    .catch Lcom/amazon/kindle/collections/sync/SyncException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_0

    goto :goto_0

    .line 461
    :catch_0
    sget-object v3, Lcom/amazon/kindle/collections/CollectionsManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SyncException trying to syncCollectionItemUpdate, collectionItem - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    invoke-static {v2}, Lcom/amazon/kindle/collections/dto/CollectionItemDTO;->valueOf(Lcom/amazon/kindle/collections/dto/ICollectionItem;)Lcom/amazon/kindle/collections/dto/CollectionItemDTO;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 461
    invoke-static {v3, v2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz v4, :cond_1

    .line 468
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 470
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 474
    :cond_2
    iget-object p1, p0, Lcom/amazon/kindle/collections/CollectionsManager;->collectionsDAO:Lcom/amazon/kindle/collections/dao/ICollectionsDAO;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/collections/dao/ICollectionsDAO;->bulkAddCollectionItems(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 476
    iget-object p2, p0, Lcom/amazon/kindle/collections/CollectionsManager;->largeLibraryHelper:Lcom/amazon/kindle/collections/CollectionsManager$LargeLibraryHelper;

    invoke-static {p2, p1}, Lcom/amazon/kindle/collections/CollectionsManager$LargeLibraryHelper;->access$500(Lcom/amazon/kindle/collections/CollectionsManager$LargeLibraryHelper;Ljava/util/List;)V

    .line 477
    iget-object p2, p0, Lcom/amazon/kindle/collections/CollectionsManager;->collectionsDAO:Lcom/amazon/kindle/collections/dao/ICollectionsDAO;

    invoke-interface {p2, v1}, Lcom/amazon/kindle/collections/dao/ICollectionsDAO;->updateCollectionItems(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 482
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 483
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 484
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 485
    invoke-virtual {p0, v0, v3}, Lcom/amazon/kindle/collections/CollectionsManager;->notifyWithCollectionItems(Ljava/util/List;Z)V

    return-void
.end method

.method public bulkRemoveCollectionItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/collections/dto/ICollectionItem;",
            ">;)V"
        }
    .end annotation

    .line 632
    iget-object v0, p0, Lcom/amazon/kindle/collections/CollectionsManager;->collectionsDAO:Lcom/amazon/kindle/collections/dao/ICollectionsDAO;

    .line 633
    invoke-interface {v0, p1}, Lcom/amazon/kindle/collections/dao/ICollectionsDAO;->removeCollectionItemsTransactionless(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 634
    iget-object v0, p0, Lcom/amazon/kindle/collections/CollectionsManager;->largeLibraryHelper:Lcom/amazon/kindle/collections/CollectionsManager$LargeLibraryHelper;

    invoke-static {v0, p1}, Lcom/amazon/kindle/collections/CollectionsManager$LargeLibraryHelper;->access$800(Lcom/amazon/kindle/collections/CollectionsManager$LargeLibraryHelper;Ljava/util/List;)V

    const/4 v0, 0x1

    .line 635
    invoke-virtual {p0, p1, v0}, Lcom/amazon/kindle/collections/CollectionsManager;->notifyWithCollectionItems(Ljava/util/List;Z)V

    return-void
.end method

.method public canModifyCollections()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public createCollection(Lcom/amazon/kindle/collections/dto/ICollection;)Z
    .locals 2

    const/4 v0, 0x0

    .line 116
    invoke-virtual {p0, p1, v0}, Lcom/amazon/kindle/collections/CollectionsManager;->createCollection(Lcom/amazon/kindle/collections/dto/ICollection;Z)Z

    move-result p1

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Collection creation success/failure - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return p1
.end method

.method public createCollection(Lcom/amazon/kindle/collections/dto/ICollection;Z)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_1

    .line 133
    :try_start_0
    iget-object p2, p0, Lcom/amazon/kindle/collections/CollectionsManager;->syncManager:Lcom/amazon/kindle/collections/ICollectionsSyncManager;

    invoke-interface {p2, p1}, Lcom/amazon/kindle/collections/ICollectionsSyncManager;->syncCollectionUpdate(Lcom/amazon/kindle/collections/dto/ICollection;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    .line 134
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/amazon/kindle/collections/CollectionsManager;->collectionsDAO:Lcom/amazon/kindle/collections/dao/ICollectionsDAO;

    invoke-interface {p2, p1}, Lcom/amazon/kindle/collections/dao/ICollectionsDAO;->createCollection(Lcom/amazon/kindle/collections/dto/ICollection;)Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_2

    .line 136
    :try_start_1
    iget-object v1, p0, Lcom/amazon/kindle/collections/CollectionsManager;->largeLibraryHelper:Lcom/amazon/kindle/collections/CollectionsManager$LargeLibraryHelper;

    invoke-static {v1, p1}, Lcom/amazon/kindle/collections/CollectionsManager$LargeLibraryHelper;->access$000(Lcom/amazon/kindle/collections/CollectionsManager$LargeLibraryHelper;Lcom/amazon/kindle/collections/dto/ICollection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    nop

    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    .line 144
    invoke-interface {p1}, Lcom/amazon/kindle/collections/dto/ICollection;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/amazon/kindle/collections/CollectionsManager;->notifyWithCollection(Ljava/lang/String;Z)V

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Created collection - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_3
    return p2
.end method

.method public createCollectionAndAssignItems(Lcom/amazon/kindle/collections/dto/ICollection;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/collections/dto/ICollection;",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/collections/dto/ICollectionItem;",
            ">;)Z"
        }
    .end annotation

    .line 888
    iget-object v0, p0, Lcom/amazon/kindle/collections/CollectionsManager;->collectionsDAO:Lcom/amazon/kindle/collections/dao/ICollectionsDAO;

    invoke-interface {v0, p1, p2}, Lcom/amazon/kindle/collections/dao/ICollectionsDAO;->createCollectionAndAssignCollectionItems(Lcom/amazon/kindle/collections/dto/ICollection;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 890
    iget-object v1, p0, Lcom/amazon/kindle/collections/CollectionsManager;->largeLibraryHelper:Lcom/amazon/kindle/collections/CollectionsManager$LargeLibraryHelper;

    invoke-static {v1, p1}, Lcom/amazon/kindle/collections/CollectionsManager$LargeLibraryHelper;->access$000(Lcom/amazon/kindle/collections/CollectionsManager$LargeLibraryHelper;Lcom/amazon/kindle/collections/dto/ICollection;)V

    .line 891
    iget-object v1, p0, Lcom/amazon/kindle/collections/CollectionsManager;->largeLibraryHelper:Lcom/amazon/kindle/collections/CollectionsManager$LargeLibraryHelper;

    invoke-interface {p1}, Lcom/amazon/kindle/collections/dto/ICollection;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p2, p1}, Lcom/amazon/kindle/collections/CollectionsManager$LargeLibraryHelper;->access$400(Lcom/amazon/kindle/collections/CollectionsManager$LargeLibraryHelper;Ljava/util/Collection;Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method public deleteCollection(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 188
    invoke-virtual {p0, p1, v0}, Lcom/amazon/kindle/collections/CollectionsManager;->deleteCollection(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 190
    invoke-virtual {p0, p1, v1}, Lcom/amazon/kindle/collections/CollectionsManager;->notifyWithCollection(Ljava/lang/String;Z)V

    :cond_0
    return v0
.end method

.method public deleteCollection(Ljava/lang/String;Z)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 163
    :try_start_0
    iget-object p2, p0, Lcom/amazon/kindle/collections/CollectionsManager;->syncManager:Lcom/amazon/kindle/collections/ICollectionsSyncManager;

    invoke-interface {p2, p1}, Lcom/amazon/kindle/collections/ICollectionsSyncManager;->syncCollectionDelete(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 164
    :cond_0
    iget-object p2, p0, Lcom/amazon/kindle/collections/CollectionsManager;->collectionsDAO:Lcom/amazon/kindle/collections/dao/ICollectionsDAO;

    invoke-interface {p2, p1}, Lcom/amazon/kindle/collections/dao/ICollectionsDAO;->deleteCollection(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    iget-object p2, p0, Lcom/amazon/kindle/collections/CollectionsManager;->largeLibraryHelper:Lcom/amazon/kindle/collections/CollectionsManager$LargeLibraryHelper;

    invoke-static {p2, p1}, Lcom/amazon/kindle/collections/CollectionsManager$LargeLibraryHelper;->access$100(Lcom/amazon/kindle/collections/CollectionsManager$LargeLibraryHelper;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :catch_0
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Collection with collectionId - "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " deletion success/failure - "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return v0
.end method

.method public getAllCollectionItems(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/collections/dto/ICollectionItem;",
            ">;"
        }
    .end annotation

    .line 773
    iget-object v0, p0, Lcom/amazon/kindle/collections/CollectionsManager;->collectionsDAO:Lcom/amazon/kindle/collections/dao/ICollectionsDAO;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/collections/dao/ICollectionsDAO;->getAllCollectionItemsByUserId(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getAllCollectionItems(Ljava/lang/String;Landroid/database/Cursor;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/collections/dto/ICollectionItem;",
            ">;"
        }
    .end annotation

    .line 760
    iget-object v0, p0, Lcom/amazon/kindle/collections/CollectionsManager;->collectionsDAO:Lcom/amazon/kindle/collections/dao/ICollectionsDAO;

    invoke-interface {v0, p1, p2}, Lcom/amazon/kindle/collections/dao/ICollectionsDAO;->getAllCollectionItems(Ljava/lang/String;Landroid/database/Cursor;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getCollectionById(Ljava/lang/String;)Lcom/amazon/kindle/collections/dto/ICollection;
    .locals 1

    .line 832
    iget-object v0, p0, Lcom/amazon/kindle/collections/CollectionsManager;->collectionsDAO:Lcom/amazon/kindle/collections/dao/ICollectionsDAO;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/collections/dao/ICollectionsDAO;->getCollectionByCollectionId(Ljava/lang/String;)Lcom/amazon/kindle/collections/dto/ICollection;

    move-result-object p1

    return-object p1
.end method

.method public getCollectionItemCounts(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 785
    iget-object v0, p0, Lcom/amazon/kindle/collections/CollectionsManager;->collectionsDAO:Lcom/amazon/kindle/collections/dao/ICollectionsDAO;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/collections/dao/ICollectionsDAO;->getCollectionItemCountsByUserId(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public getCollectionItemsByBookId(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/collections/dto/ICollectionItem;",
            ">;"
        }
    .end annotation

    .line 795
    iget-object v0, p0, Lcom/amazon/kindle/collections/CollectionsManager;->collectionsDAO:Lcom/amazon/kindle/collections/dao/ICollectionsDAO;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/collections/dao/ICollectionsDAO;->getCollectionItemsByCollectionItemId(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getCollectionNamesByUserId(Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/collections/util/PronounceableName;",
            ">;"
        }
    .end annotation

    .line 822
    iget-object v0, p0, Lcom/amazon/kindle/collections/CollectionsManager;->collectionsDAO:Lcom/amazon/kindle/collections/dao/ICollectionsDAO;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/collections/dao/ICollectionsDAO;->getCollectionNamesByUserId(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public getCollections(Ljava/lang/String;Lcom/amazon/kindle/collections/dao/ICollectionsDAO$SortOrder;Lcom/amazon/kindle/krx/collections/CollectionFilter;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/collections/dao/ICollectionsDAO$SortOrder;",
            "Lcom/amazon/kindle/krx/collections/CollectionFilter;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/collections/dto/ICollection;",
            ">;"
        }
    .end annotation

    .line 576
    iget-object v0, p0, Lcom/amazon/kindle/collections/CollectionsManager;->collectionsDAO:Lcom/amazon/kindle/collections/dao/ICollectionsDAO;

    invoke-interface {v0, p1, p2, p3}, Lcom/amazon/kindle/collections/dao/ICollectionsDAO;->getCollections(Ljava/lang/String;Lcom/amazon/kindle/collections/dao/ICollectionsDAO$SortOrder;Lcom/amazon/kindle/krx/collections/CollectionFilter;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getCollectionsByBookId(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/collections/dto/ICollection;",
            ">;"
        }
    .end annotation

    .line 805
    iget-object v0, p0, Lcom/amazon/kindle/collections/CollectionsManager;->collectionsDAO:Lcom/amazon/kindle/collections/dao/ICollectionsDAO;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/collections/dao/ICollectionsDAO;->getCollectionsByCollectionItemId(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getCollectionsByUserId(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/collections/dto/ICollection;",
            ">;"
        }
    .end annotation

    .line 816
    iget-object v0, p0, Lcom/amazon/kindle/collections/CollectionsManager;->collectionsDAO:Lcom/amazon/kindle/collections/dao/ICollectionsDAO;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/collections/dao/ICollectionsDAO;->getCollectionsByUserId(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getCollectionsCount(Ljava/lang/String;Lcom/amazon/kindle/krx/collections/CollectionFilter;)I
    .locals 1

    .line 586
    iget-object v0, p0, Lcom/amazon/kindle/collections/CollectionsManager;->collectionsDAO:Lcom/amazon/kindle/collections/dao/ICollectionsDAO;

    invoke-interface {v0, p1, p2}, Lcom/amazon/kindle/collections/dao/ICollectionsDAO;->getCollectionCount(Ljava/lang/String;Lcom/amazon/kindle/krx/collections/CollectionFilter;)I

    move-result p1

    return p1
.end method

.method public getSortedCollectionItems(Lcom/amazon/kindle/collections/dto/ICollection;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/collections/dto/ICollection;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/collections/dto/ICollectionItem;",
            ">;"
        }
    .end annotation

    .line 843
    iget-object v0, p0, Lcom/amazon/kindle/collections/CollectionsManager;->collectionsDAO:Lcom/amazon/kindle/collections/dao/ICollectionsDAO;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/collections/dao/ICollectionsDAO;->getSortedCollectionItems(Lcom/amazon/kindle/collections/dto/ICollection;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getSortedCollectionItems(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/collections/dto/ICollectionItem;",
            ">;"
        }
    .end annotation

    .line 854
    iget-object v0, p0, Lcom/amazon/kindle/collections/CollectionsManager;->collectionsDAO:Lcom/amazon/kindle/collections/dao/ICollectionsDAO;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/collections/dao/ICollectionsDAO;->getSortedCollectionItemsByCollectionId(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public handleFullCollectionsSync()V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/amazon/kindle/collections/CollectionsManager;->syncManager:Lcom/amazon/kindle/collections/ICollectionsSyncManager;

    invoke-interface {v0}, Lcom/amazon/kindle/collections/ICollectionsSyncManager;->handleFullCollectionsSync()V

    return-void
.end method

.method public handleIncrementalCollectionsSync()V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/amazon/kindle/collections/CollectionsManager;->syncManager:Lcom/amazon/kindle/collections/ICollectionsSyncManager;

    invoke-interface {v0}, Lcom/amazon/kindle/collections/ICollectionsSyncManager;->handleIncrementalCollectionsSync()V

    return-void
.end method

.method public handleStartupSync()V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/amazon/kindle/collections/CollectionsManager;->syncManager:Lcom/amazon/kindle/collections/ICollectionsSyncManager;

    invoke-interface {v0}, Lcom/amazon/kindle/collections/ICollectionsSyncManager;->handleStartupSync()V

    return-void
.end method

.method public isNewCollection(Lcom/amazon/kindle/collections/dto/ICollection;)Z
    .locals 1

    .line 870
    iget-object v0, p0, Lcom/amazon/kindle/collections/CollectionsManager;->collectionsDAO:Lcom/amazon/kindle/collections/dao/ICollectionsDAO;

    invoke-interface {p1}, Lcom/amazon/kindle/collections/dto/ICollection;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amazon/kindle/collections/dao/ICollectionsDAO;->getCollectionByCollectionId(Ljava/lang/String;)Lcom/amazon/kindle/collections/dto/ICollection;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isNewCollectionItem(Lcom/amazon/kindle/collections/dto/ICollectionItem;)Z
    .locals 2

    .line 875
    iget-object v0, p0, Lcom/amazon/kindle/collections/CollectionsManager;->collectionsDAO:Lcom/amazon/kindle/collections/dao/ICollectionsDAO;

    invoke-interface {p1}, Lcom/amazon/kindle/collections/dto/ICollectionItem;->getCollectionId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/amazon/kindle/collections/dto/ICollectionItem;->getSyncId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/amazon/kindle/collections/dao/ICollectionsDAO;->getCollectionItemByCollectionIdAndSyncId(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/collections/dto/ICollectionItem;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isRegistered(Lcom/amazon/kindle/collections/ICollectionsListener;)Z
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/amazon/kindle/collections/CollectionsManager;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public notifyWithCollection(Ljava/lang/String;Z)V
    .locals 1

    .line 1012
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1013
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1014
    invoke-virtual {p0, v0, p2}, Lcom/amazon/kindle/collections/CollectionsManager;->notifyWithCollections(Ljava/util/List;Z)V

    return-void
.end method

.method public notifyWithCollectionItem(Lcom/amazon/kindle/collections/dto/ICollectionItem;Z)V
    .locals 1

    .line 1034
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1035
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1036
    invoke-virtual {p0, v0, p2}, Lcom/amazon/kindle/collections/CollectionsManager;->notifyWithCollectionItems(Ljava/util/List;Z)V

    return-void
.end method

.method public notifyWithCollectionItems(Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/collections/dto/ICollectionItem;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1041
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1045
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/collections/CollectionsManager;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/collections/ICollectionsListener;

    if-eqz p2, :cond_1

    .line 1047
    invoke-interface {v1, p1}, Lcom/amazon/kindle/collections/ICollectionsListener;->onCollectionItemsDeleted(Ljava/util/List;)V

    goto :goto_0

    .line 1049
    :cond_1
    invoke-interface {v1, p1}, Lcom/amazon/kindle/collections/ICollectionsListener;->onCollectionItemsUpdated(Ljava/util/List;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public notifyWithCollections(Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1019
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1023
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/collections/CollectionsManager;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/collections/ICollectionsListener;

    if-eqz p2, :cond_1

    .line 1025
    invoke-interface {v1, p1}, Lcom/amazon/kindle/collections/ICollectionsListener;->onCollectionsDeleted(Ljava/util/List;)V

    goto :goto_0

    .line 1027
    :cond_1
    invoke-interface {v1, p1}, Lcom/amazon/kindle/collections/ICollectionsListener;->onCollectionsUpdated(Ljava/util/List;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public onAuthenticationEvent(Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 1056
    sget-object v0, Lcom/amazon/kindle/collections/CollectionsManager$1;->$SwitchMap$com$amazon$kindle$krx$events$KRXAuthenticationEvent$EventType:[I

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;->getType()Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1062
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/collections/CollectionsManager;->syncManager:Lcom/amazon/kindle/collections/ICollectionsSyncManager;

    invoke-interface {p1}, Lcom/amazon/kindle/collections/ICollectionsSyncManager;->handleUserAccountDeregistration()V

    goto :goto_0

    .line 1058
    :cond_1
    iget-object p1, p0, Lcom/amazon/kindle/collections/CollectionsManager;->syncManager:Lcom/amazon/kindle/collections/ICollectionsSyncManager;

    invoke-interface {p1}, Lcom/amazon/kindle/collections/ICollectionsSyncManager;->handleUserAccountRegistration()V

    :goto_0
    return-void
.end method

.method public onSyncComplete()V
    .locals 2

    .line 1072
    iget-object v0, p0, Lcom/amazon/kindle/collections/CollectionsManager;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/collections/ICollectionsListener;

    .line 1073
    invoke-interface {v1}, Lcom/amazon/kindle/collections/ICollectionsListener;->onCollectionSyncComplete()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public registerListener(Lcom/amazon/kindle/collections/ICollectionsListener;)V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/amazon/kindle/collections/CollectionsManager;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeCollectionItem(Lcom/amazon/kindle/collections/dto/ICollectionItem;Z)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 536
    :try_start_0
    iget-object p2, p0, Lcom/amazon/kindle/collections/CollectionsManager;->syncManager:Lcom/amazon/kindle/collections/ICollectionsSyncManager;

    invoke-interface {p2, p1}, Lcom/amazon/kindle/collections/ICollectionsSyncManager;->syncCollectionItemDelete(Lcom/amazon/kindle/collections/dto/ICollectionItem;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 537
    :cond_0
    iget-object p2, p0, Lcom/amazon/kindle/collections/CollectionsManager;->collectionsDAO:Lcom/amazon/kindle/collections/dao/ICollectionsDAO;

    invoke-interface {p2, p1}, Lcom/amazon/kindle/collections/dao/ICollectionsDAO;->removeCollectionItem(Lcom/amazon/kindle/collections/dto/ICollectionItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 539
    iget-object p2, p0, Lcom/amazon/kindle/collections/CollectionsManager;->largeLibraryHelper:Lcom/amazon/kindle/collections/CollectionsManager$LargeLibraryHelper;

    invoke-static {p2, p1}, Lcom/amazon/kindle/collections/CollectionsManager$LargeLibraryHelper;->access$700(Lcom/amazon/kindle/collections/CollectionsManager$LargeLibraryHelper;Lcom/amazon/kindle/collections/dto/ICollectionItem;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 546
    :catch_0
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Collection item "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/amazon/kindle/collections/dto/CollectionItemDTO;->valueOf(Lcom/amazon/kindle/collections/dto/ICollectionItem;)Lcom/amazon/kindle/collections/dto/CollectionItemDTO;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " removal success/failure - "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return v0
.end method

.method public removeCollectionItems(Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/collections/dto/ICollectionItem;",
            ">;)Z"
        }
    .end annotation

    .line 599
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 600
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/collections/dto/ICollectionItem;

    .line 602
    :try_start_0
    iget-object v2, p0, Lcom/amazon/kindle/collections/CollectionsManager;->syncManager:Lcom/amazon/kindle/collections/ICollectionsSyncManager;

    invoke-interface {v2, v1}, Lcom/amazon/kindle/collections/ICollectionsSyncManager;->syncCollectionItemDelete(Lcom/amazon/kindle/collections/dto/ICollectionItem;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 605
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/amazon/kindle/collections/sync/SyncException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 608
    :catch_0
    sget-object v2, Lcom/amazon/kindle/collections/CollectionsManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to sync delete collectionItem - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/amazon/kindle/collections/dto/CollectionItemDTO;->valueOf(Lcom/amazon/kindle/collections/dto/ICollectionItem;)Lcom/amazon/kindle/collections/dto/CollectionItemDTO;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 615
    :cond_1
    iget-object p1, p0, Lcom/amazon/kindle/collections/CollectionsManager;->collectionsDAO:Lcom/amazon/kindle/collections/dao/ICollectionsDAO;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/collections/dao/ICollectionsDAO;->removeCollectionItems(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 618
    iget-object v1, p0, Lcom/amazon/kindle/collections/CollectionsManager;->largeLibraryHelper:Lcom/amazon/kindle/collections/CollectionsManager$LargeLibraryHelper;

    invoke-static {v1, v0}, Lcom/amazon/kindle/collections/CollectionsManager$LargeLibraryHelper;->access$800(Lcom/amazon/kindle/collections/CollectionsManager$LargeLibraryHelper;Ljava/util/List;)V

    const/4 v1, 0x1

    .line 619
    invoke-virtual {p0, v0, v1}, Lcom/amazon/kindle/collections/CollectionsManager;->notifyWithCollectionItems(Ljava/util/List;Z)V

    :cond_2
    return p1
.end method

.method public unregisterListener(Lcom/amazon/kindle/collections/ICollectionsListener;)V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/amazon/kindle/collections/CollectionsManager;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public updateCollection(Lcom/amazon/kindle/collections/dto/ICollection;)Z
    .locals 2

    const/4 v0, 0x0

    .line 229
    invoke-virtual {p0, p1, v0}, Lcom/amazon/kindle/collections/CollectionsManager;->updateCollection(Lcom/amazon/kindle/collections/dto/ICollection;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 231
    invoke-interface {p1}, Lcom/amazon/kindle/collections/dto/ICollection;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/amazon/kindle/collections/CollectionsManager;->notifyWithCollection(Ljava/lang/String;Z)V

    :cond_0
    return v1
.end method

.method public updateCollection(Lcom/amazon/kindle/collections/dto/ICollection;Z)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 207
    :try_start_0
    iget-object p2, p0, Lcom/amazon/kindle/collections/CollectionsManager;->syncManager:Lcom/amazon/kindle/collections/ICollectionsSyncManager;

    invoke-interface {p2, p1}, Lcom/amazon/kindle/collections/ICollectionsSyncManager;->syncCollectionUpdate(Lcom/amazon/kindle/collections/dto/ICollection;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 208
    :cond_0
    iget-object p2, p0, Lcom/amazon/kindle/collections/CollectionsManager;->collectionsDAO:Lcom/amazon/kindle/collections/dao/ICollectionsDAO;

    invoke-interface {p2, p1}, Lcom/amazon/kindle/collections/dao/ICollectionsDAO;->updateCollection(Lcom/amazon/kindle/collections/dto/ICollection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    iget-object p2, p0, Lcom/amazon/kindle/collections/CollectionsManager;->largeLibraryHelper:Lcom/amazon/kindle/collections/CollectionsManager$LargeLibraryHelper;

    invoke-static {p2, p1}, Lcom/amazon/kindle/collections/CollectionsManager$LargeLibraryHelper;->access$200(Lcom/amazon/kindle/collections/CollectionsManager$LargeLibraryHelper;Lcom/amazon/kindle/collections/dto/ICollection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return v0
.end method
