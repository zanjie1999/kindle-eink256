.class public final Lcom/amazon/kcp/library/CollectionItemsCountCache;
.super Ljava/lang/Object;
.source "CollectionItemsCountCache.java"

# interfaces
.implements Lcom/amazon/kcp/library/ICollectionItemsCountCache;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/CollectionItemsCountCache$CountBundle;
    }
.end annotation


# static fields
.field private static final CACHE_SIZE:I = 0x3e8

.field private static final INVALID_VALUE:J = -0x1L

.field private static final TAG:Ljava/lang/String;

.field private static volatile instance:Lcom/amazon/kcp/library/ICollectionItemsCountCache;


# instance fields
.field private final cache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lcom/amazon/kcp/library/CollectionItemsCountCache$CountBundle;",
            ">;"
        }
    .end annotation
.end field

.field private final isRefreshing:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const-class v0, Lcom/amazon/kcp/library/CollectionItemsCountCache;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/CollectionItemsCountCache;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amazon/kcp/library/CollectionItemsCountCache;->isRefreshing:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 75
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x3e8

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/amazon/kcp/library/CollectionItemsCountCache;->cache:Landroid/util/LruCache;

    .line 76
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kcp/library/CollectionItemsCountCache;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/amazon/kcp/library/CollectionItemsCountCache;->refreshCache()V

    return-void
.end method

.method private declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/library/CollectionItemsCountCache;->cache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static getInstance()Lcom/amazon/kcp/library/ICollectionItemsCountCache;
    .locals 2

    .line 85
    sget-object v0, Lcom/amazon/kcp/library/CollectionItemsCountCache;->instance:Lcom/amazon/kcp/library/ICollectionItemsCountCache;

    if-nez v0, :cond_1

    .line 86
    const-class v0, Lcom/amazon/kcp/library/CollectionItemsCountCache;

    monitor-enter v0

    .line 87
    :try_start_0
    sget-object v1, Lcom/amazon/kcp/library/CollectionItemsCountCache;->instance:Lcom/amazon/kcp/library/ICollectionItemsCountCache;

    if-nez v1, :cond_0

    .line 88
    new-instance v1, Lcom/amazon/kcp/library/NoopCollectionItemsCountCache;

    invoke-direct {v1}, Lcom/amazon/kcp/library/NoopCollectionItemsCountCache;-><init>()V

    sput-object v1, Lcom/amazon/kcp/library/CollectionItemsCountCache;->instance:Lcom/amazon/kcp/library/ICollectionItemsCountCache;

    .line 90
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 93
    :cond_1
    :goto_0
    sget-object v0, Lcom/amazon/kcp/library/CollectionItemsCountCache;->instance:Lcom/amazon/kcp/library/ICollectionItemsCountCache;

    return-object v0
.end method

.method private refresh()V
    .locals 2

    .line 201
    invoke-direct {p0}, Lcom/amazon/kcp/library/CollectionItemsCountCache;->clear()V

    .line 202
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->isRunningOnMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/library/CollectionItemsCountCache$1;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/library/CollectionItemsCountCache$1;-><init>(Lcom/amazon/kcp/library/CollectionItemsCountCache;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    .line 210
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kcp/library/CollectionItemsCountCache;->refreshCache()V

    :goto_0
    return-void
.end method

.method private refreshCache()V
    .locals 7

    .line 218
    iget-object v0, p0, Lcom/amazon/kcp/library/CollectionItemsCountCache;->isRefreshing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 219
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->getAccountInfo()Lcom/amazon/kindle/services/authentication/IAccountInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/services/authentication/IAccountInfo;->getId()Ljava/lang/String;

    move-result-object v0

    .line 220
    invoke-static {}, Lcom/amazon/kindle/collections/CollectionsManagerHolder;->getInstance()Lcom/amazon/kindle/collections/ICollectionsManager;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/amazon/kindle/collections/ICollectionsManager;->getCollectionItemCounts(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 222
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Find "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " collections in total"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 225
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v4, Lcom/amazon/kindle/krx/library/LibraryGroupType;->NOT_APPLICABLE:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/amazon/kcp/library/CollectionItemsCountCache;->put(Ljava/lang/String;Lcom/amazon/kindle/krx/library/LibraryGroupType;J)V

    goto :goto_0

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/CollectionItemsCountCache;->isRefreshing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_1
    return-void
.end method

.method private removeCacheByBookId(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 295
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getCollectionsDAO()Lcom/amazon/kindle/collections/dao/ICollectionsDAO;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kindle/collections/dao/ICollectionsDAO;->getCollectionsByCollectionItemId(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 301
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/collections/dto/ICollection;

    .line 302
    iget-object v1, p0, Lcom/amazon/kcp/library/CollectionItemsCountCache;->cache:Landroid/util/LruCache;

    invoke-interface {v0}, Lcom/amazon/kindle/collections/dto/ICollection;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public load()V
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/amazon/kcp/library/CollectionItemsCountCache;->cache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 193
    invoke-direct {p0}, Lcom/amazon/kcp/library/CollectionItemsCountCache;->refresh()V

    :cond_0
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

    .line 179
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/CollectionItemsCountCache;->onCollectionItemsUpdated(Ljava/util/List;)V

    return-void
.end method

.method public onCollectionItemsUpdated(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/collections/dto/ICollectionItem;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 172
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/collections/dto/ICollectionItem;

    .line 173
    iget-object v1, p0, Lcom/amazon/kcp/library/CollectionItemsCountCache;->cache:Landroid/util/LruCache;

    invoke-interface {v0}, Lcom/amazon/kindle/collections/dto/ICollectionItem;->getCollectionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onCollectionSyncComplete()V
    .locals 0

    .line 184
    invoke-direct {p0}, Lcom/amazon/kcp/library/CollectionItemsCountCache;->refresh()V

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

    .line 163
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/CollectionItemsCountCache;->onCollectionsUpdated(Ljava/util/List;)V

    return-void
.end method

.method public onCollectionsUpdated(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 156
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 157
    iget-object v1, p0, Lcom/amazon/kcp/library/CollectionItemsCountCache;->cache:Landroid/util/LruCache;

    invoke-virtual {v1, v0}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onContentUpdate(Ljava/util/Collection;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = true
        topic = "CONTENT_UPDATE"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/content/ContentUpdate;",
            ">;)V"
        }
    .end annotation

    .line 279
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/content/ContentUpdate;

    .line 280
    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentUpdate;->getMetadata()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    .line 281
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getId()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-direct {p0, v0}, Lcom/amazon/kcp/library/CollectionItemsCountCache;->removeCacheByBookId(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onKRXAuthenticationEvent(Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;)V
    .locals 0
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = true
    .end annotation

    .line 242
    invoke-direct {p0}, Lcom/amazon/kcp/library/CollectionItemsCountCache;->clear()V

    return-void
.end method

.method public onLibraryContentAdded(Lcom/amazon/kindle/content/LibraryContentAddPayload;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = true
        topic = "CONTENT_ADD"
    .end annotation

    .line 253
    invoke-virtual {p1}, Lcom/amazon/kindle/content/LibraryContentAddPayload;->getMetadata()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/content/ContentMetadata;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    .line 254
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getId()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-direct {p0, v0}, Lcom/amazon/kcp/library/CollectionItemsCountCache;->removeCacheByBookId(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onLibraryContentDeleted(Lcom/amazon/kindle/content/ContentDelete;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = true
        topic = "CONTENT_DELETE"
    .end annotation

    .line 266
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

    .line 267
    invoke-direct {p0, v0}, Lcom/amazon/kcp/library/CollectionItemsCountCache;->removeCacheByBookId(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public put(Ljava/lang/String;Lcom/amazon/kindle/krx/library/LibraryGroupType;J)V
    .locals 3

    if-eqz p1, :cond_2

    const-wide/16 v0, -0x1

    cmp-long v2, p3, v0

    if-gtz v2, :cond_0

    goto :goto_0

    .line 109
    :cond_0
    monitor-enter p0

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/library/CollectionItemsCountCache;->cache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/CollectionItemsCountCache$CountBundle;

    if-nez v0, :cond_1

    .line 112
    new-instance v0, Lcom/amazon/kcp/library/CollectionItemsCountCache$CountBundle;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/library/CollectionItemsCountCache$CountBundle;-><init>(Lcom/amazon/kcp/library/CollectionItemsCountCache$1;)V

    .line 115
    :cond_1
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object p2, p0, Lcom/amazon/kcp/library/CollectionItemsCountCache;->cache:Landroid/util/LruCache;

    invoke-virtual {p2, p1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_0
    return-void
.end method
