.class public Lcom/amazon/kcp/cover/CollectionThumbnailCache;
.super Ljava/lang/Object;
.source "CollectionThumbnailCache.java"

# interfaces
.implements Lcom/amazon/kindle/collections/ICollectionsListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/cover/CollectionThumbnailCache$CollectionThumbnailCacheUpdateEvent;
    }
.end annotation


# static fields
.field private static final NUM_THUMBNAILS:I = 0x4

.field private static volatile instance:Lcom/amazon/kcp/cover/CollectionThumbnailCache;

.field private static final messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;


# instance fields
.field private final cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kcp/cover/ThumbnailData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 51
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    const-class v1, Lcom/amazon/kcp/cover/CollectionThumbnailCache;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/cover/CollectionThumbnailCache;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/cover/CollectionThumbnailCache;->cache:Ljava/util/Map;

    .line 54
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/cover/CollectionThumbnailCache;Ljava/lang/String;)Lcom/amazon/kcp/cover/ThumbnailData;
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/amazon/kcp/cover/CollectionThumbnailCache;->retrieveCollectionData(Ljava/lang/String;)Lcom/amazon/kcp/cover/ThumbnailData;

    move-result-object p0

    return-object p0
.end method

.method private clearCacheByBookId(Ljava/lang/String;)Z
    .locals 4

    .line 226
    invoke-static {p1}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 230
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/collections/CollectionsManagerHolder;->getInstance()Lcom/amazon/kindle/collections/ICollectionsManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kindle/collections/ICollectionsManager;->getCollectionsByBookId(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_1

    return v1

    .line 237
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/collections/dto/ICollection;

    .line 238
    iget-object v3, p0, Lcom/amazon/kcp/cover/CollectionThumbnailCache;->cache:Ljava/util/Map;

    invoke-interface {v2}, Lcom/amazon/kindle/collections/dto/ICollection;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/cover/ThumbnailData;

    if-nez v0, :cond_3

    if-eqz v2, :cond_2

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method private getCollectionItemsData(Ljava/lang/String;)Lcom/amazon/kcp/cover/ThumbnailData;
    .locals 6

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 142
    invoke-static {}, Lcom/amazon/kindle/collections/CollectionsManagerHolder;->getInstance()Lcom/amazon/kindle/collections/ICollectionsManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/amazon/kindle/collections/ICollectionsManager;->getSortedCollectionItems(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 143
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 145
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/collections/dto/ICollectionItem;

    .line 146
    invoke-interface {v2}, Lcom/amazon/kindle/collections/dto/ICollectionItem;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amazon/kindle/util/BookIdUtils;->parse(Ljava/lang/String;)Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v3

    if-nez v3, :cond_1

    .line 147
    invoke-interface {v2}, Lcom/amazon/kindle/collections/dto/ICollectionItem;->getType()Lcom/amazon/kindle/collections/dto/ICollectionItem$CollectionItemType;

    move-result-object v4

    sget-object v5, Lcom/amazon/kindle/collections/dto/ICollectionItem$CollectionItemType;->AUDIO_BOOK:Lcom/amazon/kindle/collections/dto/ICollectionItem$CollectionItemType;

    if-ne v4, v5, :cond_1

    .line 148
    new-instance v3, Lcom/amazon/kcp/library/models/internal/AmznBookID;

    invoke-interface {v2}, Lcom/amazon/kindle/collections/dto/ICollectionItem;->getId()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/amazon/kcp/library/models/BookType;->BT_AUDIBLE_AUDIOBOOK:Lcom/amazon/kcp/library/models/BookType;

    invoke-direct {v3, v4, v5}, Lcom/amazon/kcp/library/models/internal/AmznBookID;-><init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;)V

    :cond_1
    if-nez v3, :cond_2

    .line 150
    invoke-interface {v2}, Lcom/amazon/kindle/collections/dto/ICollectionItem;->getType()Lcom/amazon/kindle/collections/dto/ICollectionItem$CollectionItemType;

    move-result-object v4

    sget-object v5, Lcom/amazon/kindle/collections/dto/ICollectionItem$CollectionItemType;->DOC:Lcom/amazon/kindle/collections/dto/ICollectionItem$CollectionItemType;

    if-ne v4, v5, :cond_2

    .line 151
    new-instance v3, Lcom/amazon/kcp/library/models/internal/AmznBookID;

    invoke-interface {v2}, Lcom/amazon/kindle/collections/dto/ICollectionItem;->getId()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/amazon/kcp/library/models/BookType;->BT_OFFICE_DOC:Lcom/amazon/kcp/library/models/BookType;

    invoke-direct {v3, v2, v4}, Lcom/amazon/kcp/library/models/internal/AmznBookID;-><init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;)V

    :cond_2
    if-eqz v3, :cond_3

    .line 154
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x4

    if-ge v2, v4, :cond_0

    .line 155
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 162
    :cond_4
    new-instance p1, Lcom/amazon/kcp/cover/ThumbnailData;

    invoke-direct {p1, v0, v1}, Lcom/amazon/kcp/cover/ThumbnailData;-><init>(Ljava/util/List;I)V

    return-object p1
.end method

.method private getEncompassingCollectionIds(Ljava/util/List;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/collections/dto/ICollectionItem;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 166
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 167
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/collections/dto/ICollectionItem;

    .line 168
    invoke-interface {v1}, Lcom/amazon/kindle/collections/dto/ICollectionItem;->getCollectionId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getInstance()Lcom/amazon/kcp/cover/CollectionThumbnailCache;
    .locals 2

    .line 58
    sget-object v0, Lcom/amazon/kcp/cover/CollectionThumbnailCache;->instance:Lcom/amazon/kcp/cover/CollectionThumbnailCache;

    if-nez v0, :cond_1

    .line 59
    const-class v0, Lcom/amazon/kcp/library/CollectionItemsCountCache;

    monitor-enter v0

    .line 60
    :try_start_0
    sget-object v1, Lcom/amazon/kcp/cover/CollectionThumbnailCache;->instance:Lcom/amazon/kcp/cover/CollectionThumbnailCache;

    if-nez v1, :cond_0

    .line 61
    new-instance v1, Lcom/amazon/kcp/cover/CollectionThumbnailCache;

    invoke-direct {v1}, Lcom/amazon/kcp/cover/CollectionThumbnailCache;-><init>()V

    sput-object v1, Lcom/amazon/kcp/cover/CollectionThumbnailCache;->instance:Lcom/amazon/kcp/cover/CollectionThumbnailCache;

    .line 63
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 66
    :cond_1
    :goto_0
    sget-object v0, Lcom/amazon/kcp/cover/CollectionThumbnailCache;->instance:Lcom/amazon/kcp/cover/CollectionThumbnailCache;

    return-object v0
.end method

.method private invalidateCollections(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 121
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 122
    iget-object v1, p0, Lcom/amazon/kcp/cover/CollectionThumbnailCache;->cache:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 125
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kcp/cover/CollectionThumbnailCache;->invalidateUncollected()V

    return-void
.end method

.method private invalidateUncollected()V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/amazon/kcp/cover/CollectionThumbnailCache;->cache:Ljava/util/Map;

    const-string v1, "Uncollected"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private retrieveCollectionData(Ljava/lang/String;)Lcom/amazon/kcp/cover/ThumbnailData;
    .locals 3

    .line 133
    iget-object v0, p0, Lcom/amazon/kcp/cover/CollectionThumbnailCache;->cache:Ljava/util/Map;

    monitor-enter v0

    .line 134
    :try_start_0
    invoke-direct {p0, p1}, Lcom/amazon/kcp/cover/CollectionThumbnailCache;->getCollectionItemsData(Ljava/lang/String;)Lcom/amazon/kcp/cover/ThumbnailData;

    move-result-object v1

    .line 135
    iget-object v2, p0, Lcom/amazon/kcp/cover/CollectionThumbnailCache;->cache:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    .line 137
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public clearCache()V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/amazon/kcp/cover/CollectionThumbnailCache;->cache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public getThumbnailData(Ljava/lang/String;Lcom/amazon/kcp/cover/ICollectionThumbnail;I)V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/amazon/kcp/cover/CollectionThumbnailCache;->cache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/cover/ThumbnailData;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lcom/amazon/kcp/cover/CollectionThumbnailCache$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/amazon/kcp/cover/CollectionThumbnailCache$1;-><init>(Lcom/amazon/kcp/cover/CollectionThumbnailCache;Ljava/lang/String;Lcom/amazon/kcp/cover/ICollectionThumbnail;I)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    .line 79
    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 81
    :cond_0
    invoke-interface {p2, v0, p3}, Lcom/amazon/kcp/cover/ICollectionThumbnail;->setThumbnailData(Lcom/amazon/kcp/cover/ThumbnailData;I)V

    :goto_0
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

    .line 110
    invoke-direct {p0, p1}, Lcom/amazon/kcp/cover/CollectionThumbnailCache;->getEncompassingCollectionIds(Ljava/util/List;)Ljava/util/Set;

    move-result-object p1

    .line 112
    invoke-direct {p0, p1}, Lcom/amazon/kcp/cover/CollectionThumbnailCache;->invalidateCollections(Ljava/util/Set;)V

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

    .line 103
    invoke-direct {p0, p1}, Lcom/amazon/kcp/cover/CollectionThumbnailCache;->getEncompassingCollectionIds(Ljava/util/List;)Ljava/util/Set;

    move-result-object p1

    .line 105
    invoke-direct {p0, p1}, Lcom/amazon/kcp/cover/CollectionThumbnailCache;->invalidateCollections(Ljava/util/Set;)V

    return-void
.end method

.method public onCollectionSyncComplete()V
    .locals 0

    .line 117
    invoke-virtual {p0}, Lcom/amazon/kcp/cover/CollectionThumbnailCache;->clearCache()V

    return-void
.end method

.method public onCollectionsDeleted(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 94
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 95
    iget-object v1, p0, Lcom/amazon/kcp/cover/CollectionThumbnailCache;->cache:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 98
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kcp/cover/CollectionThumbnailCache;->invalidateUncollected()V

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

    .line 88
    invoke-direct {p0}, Lcom/amazon/kcp/cover/CollectionThumbnailCache;->invalidateUncollected()V

    return-void
.end method

.method public onLibraryContentAdded(Lcom/amazon/kindle/content/LibraryContentAddPayload;)V
    .locals 3
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = true
        topic = "CONTENT_ADD"
    .end annotation

    .line 187
    invoke-virtual {p1}, Lcom/amazon/kindle/content/LibraryContentAddPayload;->getMetadata()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/content/ContentMetadata;

    if-eqz v2, :cond_1

    .line 189
    invoke-virtual {v2}, Lcom/amazon/kindle/content/ContentMetadata;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/amazon/kcp/cover/CollectionThumbnailCache;->clearCacheByBookId(Ljava/lang/String;)Z

    move-result v2

    if-nez v1, :cond_2

    if-eqz v2, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    .line 195
    sget-object p1, Lcom/amazon/kcp/cover/CollectionThumbnailCache;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v0, Lcom/amazon/kcp/cover/CollectionThumbnailCache$CollectionThumbnailCacheUpdateEvent;

    sget-object v1, Lcom/amazon/kindle/content/ILibraryService;->CONTENT_ADD:Lcom/amazon/kindle/event/EventType;

    invoke-direct {v0, v1}, Lcom/amazon/kcp/cover/CollectionThumbnailCache$CollectionThumbnailCacheUpdateEvent;-><init>(Lcom/amazon/kindle/event/EventType;)V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    :cond_4
    return-void
.end method

.method public onLibraryContentDeleted(Lcom/amazon/kindle/content/ContentDelete;)V
    .locals 3
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = true
        topic = "CONTENT_DELETE"
    .end annotation

    .line 208
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentDelete;->getBookIds()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 209
    invoke-direct {p0, v2}, Lcom/amazon/kcp/cover/CollectionThumbnailCache;->clearCacheByBookId(Ljava/lang/String;)Z

    move-result v2

    if-nez v1, :cond_1

    if-eqz v2, :cond_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 214
    sget-object p1, Lcom/amazon/kcp/cover/CollectionThumbnailCache;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v0, Lcom/amazon/kcp/cover/CollectionThumbnailCache$CollectionThumbnailCacheUpdateEvent;

    sget-object v1, Lcom/amazon/kindle/content/ILibraryService;->CONTENT_DELETE:Lcom/amazon/kindle/event/EventType;

    invoke-direct {v0, v1}, Lcom/amazon/kcp/cover/CollectionThumbnailCache$CollectionThumbnailCacheUpdateEvent;-><init>(Lcom/amazon/kindle/event/EventType;)V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    :cond_3
    return-void
.end method
