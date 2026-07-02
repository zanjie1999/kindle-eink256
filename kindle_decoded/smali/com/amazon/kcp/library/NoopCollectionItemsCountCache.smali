.class final Lcom/amazon/kcp/library/NoopCollectionItemsCountCache;
.super Ljava/lang/Object;
.source "NoopCollectionItemsCountCache.java"

# interfaces
.implements Lcom/amazon/kcp/library/ICollectionItemsCountCache;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public load()V
    .locals 0

    return-void
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

    return-void
.end method
