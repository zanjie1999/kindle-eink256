.class public interface abstract Lcom/amazon/kindle/collections/dao/ICollectionsDAO;
.super Ljava/lang/Object;
.source "ICollectionsDAO.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/collections/dao/ICollectionsDAO$SortOrder;
    }
.end annotation


# virtual methods
.method public abstract addCollectionItem(Lcom/amazon/kindle/collections/dto/ICollectionItem;)Z
.end method

.method public abstract addCollectionItems(Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/collections/dto/ICollectionItem;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract bulkAddCollectionItems(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/collections/dto/ICollectionItem;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/collections/dto/ICollectionItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract createCollection(Lcom/amazon/kindle/collections/dto/ICollection;)Z
.end method

.method public abstract createCollectionAndAssignCollectionItems(Lcom/amazon/kindle/collections/dto/ICollection;Ljava/util/List;)Z
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

.method public abstract deleteAllCollections()V
.end method

.method public abstract deleteCollection(Ljava/lang/String;)Z
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

.method public abstract getAllCollectionItemsByUserId(Ljava/lang/String;)Ljava/util/List;
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

.method public abstract getCollectionByCollectionId(Ljava/lang/String;)Lcom/amazon/kindle/collections/dto/ICollection;
.end method

.method public abstract getCollectionCount(Ljava/lang/String;Lcom/amazon/kindle/krx/collections/CollectionFilter;)I
.end method

.method public abstract getCollectionItemByCollectionIdAndSyncId(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/collections/dto/ICollectionItem;
.end method

.method public abstract getCollectionItemCountsByUserId(Ljava/lang/String;)Ljava/util/Map;
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

.method public abstract getCollectionItemsByCollectionItemId(Ljava/lang/String;)Ljava/util/List;
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

.method public abstract getCollectionsByCollectionItemId(Ljava/lang/String;)Ljava/util/List;
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

.method public abstract getSortedCollectionItemsByCollectionId(Ljava/lang/String;)Ljava/util/List;
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

.method public abstract removeCollectionItem(Lcom/amazon/kindle/collections/dto/ICollectionItem;)Z
.end method

.method public abstract removeCollectionItems(Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/collections/dto/ICollectionItem;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract removeCollectionItemsTransactionless(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/collections/dto/ICollectionItem;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/collections/dto/ICollectionItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract updateCollection(Lcom/amazon/kindle/collections/dto/ICollection;)Z
.end method

.method public abstract updateCollectionItem(Lcom/amazon/kindle/collections/dto/ICollectionItem;)Z
.end method

.method public abstract updateCollectionItems(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/collections/dto/ICollectionItem;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/collections/dto/ICollectionItem;",
            ">;"
        }
    .end annotation
.end method
