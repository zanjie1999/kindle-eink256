.class Lcom/amazon/kcp/library/CachedDisplayItems;
.super Ljava/lang/Object;
.source "CachedDisplayItems.java"


# instance fields
.field private final cachedItems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/model/content/IBookID;",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            ">;"
        }
    .end annotation
.end field

.field private final cachedKey:Lcom/amazon/kcp/library/LibraryLoaderKey;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/library/LibraryLoaderKey;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/library/LibraryLoaderKey;",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/amazon/kcp/library/CachedDisplayItems;->cachedKey:Lcom/amazon/kcp/library/LibraryLoaderKey;

    .line 24
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 25
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/ILibraryDisplayItem;

    .line 26
    invoke-interface {v0}, Lcom/amazon/kcp/library/ICoverCacheable;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 28
    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/library/CachedDisplayItems;->cachedItems:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getKey()Lcom/amazon/kcp/library/LibraryLoaderKey;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/amazon/kcp/library/CachedDisplayItems;->cachedKey:Lcom/amazon/kcp/library/LibraryLoaderKey;

    return-object v0
.end method

.method public getListOfItems()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            ">;"
        }
    .end annotation

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/amazon/kcp/library/CachedDisplayItems;->cachedItems:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public replaceIfExisting(Lcom/amazon/kindle/content/ContentMetadata;)Z
    .locals 5

    .line 37
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/amazon/kcp/library/CachedDisplayItems;->cachedItems:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/library/ILibraryDisplayItem;

    if-eqz v1, :cond_1

    .line 42
    invoke-interface {v1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->isComic()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 43
    invoke-virtual {p1, v3}, Lcom/amazon/kindle/content/ContentMetadata;->setIsComic(Z)V

    .line 45
    :cond_0
    iget-object v2, p0, Lcom/amazon/kcp/library/CachedDisplayItems;->cachedItems:Ljava/util/Map;

    new-instance v4, Lcom/amazon/kcp/library/ContentMetadataDisplayItem;

    invoke-interface {v1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getCollectionItem()Lcom/amazon/kindle/collections/dto/ICollectionItem;

    move-result-object v1

    invoke-direct {v4, p1, v1}, Lcom/amazon/kcp/library/ContentMetadataDisplayItem;-><init>(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/collections/dto/ICollectionItem;)V

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v3

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
