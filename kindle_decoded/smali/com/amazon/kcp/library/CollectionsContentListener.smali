.class public Lcom/amazon/kcp/library/CollectionsContentListener;
.super Lcom/amazon/kcp/library/PausableListener;
.source "CollectionsContentListener.java"

# interfaces
.implements Lcom/amazon/kindle/collections/ICollectionsListener;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/library/PausableListener$Callback;Z)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/library/PausableListener;-><init>(Lcom/amazon/kcp/library/PausableListener$Callback;Z)V

    return-void
.end method


# virtual methods
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

    .line 42
    sget-object p1, Lcom/amazon/kindle/collections/CollectionsManager;->COLLECTION_ITEM_DELETE:Lcom/amazon/kindle/event/EventType;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/PausableListener;->refresh(Lcom/amazon/kindle/event/EventType;)V

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

    .line 37
    sget-object p1, Lcom/amazon/kindle/collections/CollectionsManager;->COLLECTION_ITEM_UPDATE:Lcom/amazon/kindle/event/EventType;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/PausableListener;->refresh(Lcom/amazon/kindle/event/EventType;)V

    return-void
.end method

.method public onCollectionSyncComplete()V
    .locals 0

    .line 47
    invoke-virtual {p0}, Lcom/amazon/kcp/library/PausableListener;->refresh()V

    return-void
.end method

.method public onCollectionsDeleted(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 32
    sget-object p1, Lcom/amazon/kindle/collections/CollectionsManager;->COLLECTION_DELETE:Lcom/amazon/kindle/event/EventType;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/PausableListener;->refresh(Lcom/amazon/kindle/event/EventType;)V

    return-void
.end method

.method public onCollectionsUpdated(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 27
    sget-object p1, Lcom/amazon/kindle/collections/CollectionsManager;->COLLECTION_UPDATE:Lcom/amazon/kindle/event/EventType;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/PausableListener;->refresh(Lcom/amazon/kindle/event/EventType;)V

    return-void
.end method
