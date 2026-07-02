.class public Lcom/amazon/kindle/content/ContentMetadataCache;
.super Landroid/util/LruCache;
.source "ContentMetadataCache.java"

# interfaces
.implements Lcom/amazon/kindle/content/IContentMetadataCache;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache<",
        "Lcom/amazon/kindle/model/content/IBookID;",
        "Lcom/amazon/kindle/content/ContentMetadata;",
        ">;",
        "Lcom/amazon/kindle/content/IContentMetadataCache;"
    }
.end annotation


# static fields
.field private static final MAX_CACHE_SIZE:I = 0x64

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private nonSampeAsinIdsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/model/content/IBookID;",
            ">;"
        }
    .end annotation
.end field

.field private sampleAsinIdsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/model/content/IBookID;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const-class v0, Lcom/amazon/kindle/content/ContentMetadataCache;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/content/ContentMetadataCache;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/16 v0, 0x64

    .line 34
    invoke-direct {p0, v0}, Lcom/amazon/kindle/content/ContentMetadataCache;-><init>(I)V

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Landroid/util/LruCache;-><init>(I)V

    .line 29
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/content/ContentMetadataCache;->nonSampeAsinIdsMap:Ljava/util/Map;

    .line 31
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/content/ContentMetadataCache;->sampleAsinIdsMap:Ljava/util/Map;

    .line 43
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method private getBookId(Ljava/lang/String;)Lcom/amazon/kindle/model/content/IBookID;
    .locals 1

    .line 136
    invoke-static {p1}, Lcom/amazon/kcp/library/models/internal/AmznBookID;->parse(Ljava/lang/String;)Lcom/amazon/kcp/library/models/internal/AmznBookID;

    move-result-object v0

    if-nez v0, :cond_0

    .line 138
    invoke-static {p1}, Lcom/amazon/kindle/model/content/SideloadBookID;->parse(Ljava/lang/String;)Lcom/amazon/kindle/model/content/SideloadBookID;

    move-result-object v0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public entryRemoved(ZLcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/content/ContentMetadata;)V
    .locals 0

    .line 79
    invoke-interface {p2}, Lcom/amazon/kindle/model/content/IBookID;->getAsin()Ljava/lang/String;

    move-result-object p1

    .line 80
    invoke-interface {p2}, Lcom/amazon/kindle/model/content/IBookID;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object p2

    if-eqz p1, :cond_1

    .line 82
    sget-object p3, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_SAMPLE:Lcom/amazon/kcp/library/models/BookType;

    if-ne p3, p2, :cond_0

    .line 83
    iget-object p2, p0, Lcom/amazon/kindle/content/ContentMetadataCache;->sampleAsinIdsMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 85
    :cond_0
    iget-object p2, p0, Lcom/amazon/kindle/content/ContentMetadataCache;->nonSampeAsinIdsMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p2, Lcom/amazon/kindle/model/content/IBookID;

    check-cast p3, Lcom/amazon/kindle/content/ContentMetadata;

    check-cast p4, Lcom/amazon/kindle/content/ContentMetadata;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/amazon/kindle/content/ContentMetadataCache;->entryRemoved(ZLcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/content/ContentMetadata;)V

    return-void
.end method

.method public getMetadata(Lcom/amazon/kindle/model/content/IBookID;)Lcom/amazon/kindle/content/ContentMetadata;
    .locals 0

    if-eqz p1, :cond_0

    .line 47
    invoke-virtual {p0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/content/ContentMetadata;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getMetadata(Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/ContentMetadataCache;->getBookId(Ljava/lang/String;)Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/content/ContentMetadataCache;->getMetadata(Lcom/amazon/kindle/model/content/IBookID;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object p1

    return-object p1
.end method

.method public getMetadata(Ljava/lang/String;Z)Lcom/amazon/kindle/content/ContentMetadata;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/amazon/kindle/content/ContentMetadataCache;->nonSampeAsinIdsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/model/content/IBookID;

    if-eqz p2, :cond_0

    .line 53
    iget-object p2, p0, Lcom/amazon/kindle/content/ContentMetadataCache;->sampleAsinIdsMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/amazon/kindle/model/content/IBookID;

    :cond_0
    if-eqz v0, :cond_1

    .line 56
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/content/ContentMetadataCache;->getMetadata(Lcom/amazon/kindle/model/content/IBookID;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public declared-synchronized onContentDelete(Lcom/amazon/kindle/content/ContentDelete;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = true
        topic = "CONTENT_DELETE"
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_3

    .line 111
    :try_start_0
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentDelete;->getBookIds()Ljava/util/Collection;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 115
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentDelete;->getBookIds()Ljava/util/Collection;

    move-result-object p1

    .line 116
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 117
    invoke-static {v0}, Lcom/amazon/kcp/library/models/internal/AmznBookID;->parse(Ljava/lang/String;)Lcom/amazon/kcp/library/models/internal/AmznBookID;

    move-result-object v1

    if-nez v1, :cond_1

    .line 119
    invoke-static {v0}, Lcom/amazon/kindle/model/content/SideloadBookID;->parse(Ljava/lang/String;)Lcom/amazon/kindle/model/content/SideloadBookID;

    move-result-object v1

    .line 121
    :cond_1
    invoke-virtual {p0, v1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 123
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 112
    :cond_3
    :goto_1
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized onContentUpdate(Ljava/util/Collection;)V
    .locals 3
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

    monitor-enter p0

    if-eqz p1, :cond_4

    .line 92
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 96
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/content/ContentUpdate;

    .line 97
    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentUpdate;->getMetadata()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 102
    :cond_2
    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    .line 103
    invoke-virtual {p0, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 104
    invoke-virtual {p0, v1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 107
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 93
    :cond_4
    :goto_1
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized onRegistrationEvent(Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;)V
    .locals 0
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = true
    .end annotation

    monitor-enter p0

    .line 127
    :try_start_0
    invoke-virtual {p0}, Landroid/util/LruCache;->evictAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onTrimMemory(I)V
    .locals 0
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        topic = "onTrimMemory"
    .end annotation

    monitor-enter p0

    .line 132
    :try_start_0
    invoke-virtual {p0}, Landroid/util/LruCache;->evictAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public putMetadata(Lcom/amazon/kindle/content/ContentMetadata;)V
    .locals 2

    .line 66
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    .line 67
    invoke-virtual {p0, v0, p1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IBookID;->getAsin()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 69
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IBookID;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object p1

    sget-object v1, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_SAMPLE:Lcom/amazon/kcp/library/models/BookType;

    if-eq p1, v1, :cond_0

    .line 70
    iget-object p1, p0, Lcom/amazon/kindle/content/ContentMetadataCache;->nonSampeAsinIdsMap:Ljava/util/Map;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IBookID;->getAsin()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 72
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/content/ContentMetadataCache;->sampleAsinIdsMap:Ljava/util/Map;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IBookID;->getAsin()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method
