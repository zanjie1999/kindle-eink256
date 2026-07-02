.class public interface abstract Lcom/amazon/kindle/collections/ICollectionsManager;
.super Ljava/lang/Object;
.source "ICollectionsManager.kt"


# virtual methods
.method public abstract addItemsToCollection(Ljava/util/List;Ljava/lang/String;)Z
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
.end method

.method public abstract addOrMoveCollectionItemToIndex(Lcom/amazon/kindle/collections/dto/ICollectionItem;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation
.end method

.method public abstract addOrUpdateCollectionItem(Lcom/amazon/kindle/collections/dto/ICollectionItem;Z)Z
.end method

.method public abstract bulkAddOrUpdateCollectionItems(Ljava/util/List;Lcom/amazon/kindle/collections/dto/ICollection;)V
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
.end method

.method public abstract bulkRemoveCollectionItems(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/collections/dto/ICollectionItem;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract canModifyCollections()Z
.end method

.method public abstract createCollection(Lcom/amazon/kindle/collections/dto/ICollection;)Z
.end method

.method public abstract createCollectionAndAssignItems(Lcom/amazon/kindle/collections/dto/ICollection;Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/collections/dto/ICollection;",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/collections/dto/ICollectionItem;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract deleteCollection(Ljava/lang/String;)Z
.end method

.method public abstract deleteCollection(Ljava/lang/String;Z)Z
.end method

.method public abstract getAllCollectionItems(Ljava/lang/String;)Ljava/util/List;
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
.end method

.method public abstract getAllCollectionItems(Ljava/lang/String;Landroid/database/Cursor;)Ljava/util/List;
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
.end method

.method public abstract getCollectionById(Ljava/lang/String;)Lcom/amazon/kindle/collections/dto/ICollection;
.end method

.method public abstract getCollectionItemCounts(Ljava/lang/String;)Ljava/util/Map;
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
.end method

.method public abstract getCollectionItemsByBookId(Ljava/lang/String;)Ljava/util/List;
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
.end method

.method public abstract getCollectionNamesByUserId(Ljava/lang/String;)Ljava/util/Set;
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
.end method

.method public abstract getCollections(Ljava/lang/String;Lcom/amazon/kindle/collections/dao/ICollectionsDAO$SortOrder;Lcom/amazon/kindle/krx/collections/CollectionFilter;)Ljava/util/List;
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
.end method

.method public abstract getCollectionsByBookId(Ljava/lang/String;)Ljava/util/List;
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
.end method

.method public abstract getCollectionsByUserId(Ljava/lang/String;)Ljava/util/List;
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
.end method

.method public abstract getCollectionsCount(Ljava/lang/String;Lcom/amazon/kindle/krx/collections/CollectionFilter;)I
.end method

.method public abstract getSortedCollectionItems(Lcom/amazon/kindle/collections/dto/ICollection;)Ljava/util/List;
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
.end method

.method public abstract getSortedCollectionItems(Ljava/lang/String;)Ljava/util/List;
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
.end method

.method public abstract handleFullCollectionsSync()V
.end method

.method public abstract handleIncrementalCollectionsSync()V
.end method

.method public abstract handleStartupSync()V
.end method

.method public abstract isNewCollection(Lcom/amazon/kindle/collections/dto/ICollection;)Z
.end method

.method public abstract isRegistered(Lcom/amazon/kindle/collections/ICollectionsListener;)Z
.end method

.method public abstract notifyWithCollection(Ljava/lang/String;Z)V
.end method

.method public abstract notifyWithCollectionItems(Ljava/util/List;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/collections/dto/ICollectionItem;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public abstract notifyWithCollections(Ljava/util/List;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public abstract onSyncComplete()V
.end method

.method public abstract registerListener(Lcom/amazon/kindle/collections/ICollectionsListener;)V
.end method

.method public abstract removeCollectionItem(Lcom/amazon/kindle/collections/dto/ICollectionItem;Z)Z
.end method

.method public abstract removeCollectionItems(Ljava/util/Collection;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/collections/dto/ICollectionItem;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract unregisterListener(Lcom/amazon/kindle/collections/ICollectionsListener;)V
.end method

.method public abstract updateCollection(Lcom/amazon/kindle/collections/dto/ICollection;)Z
.end method

.method public abstract updateCollection(Lcom/amazon/kindle/collections/dto/ICollection;Z)Z
.end method
