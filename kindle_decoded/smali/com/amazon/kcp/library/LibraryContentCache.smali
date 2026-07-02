.class public Lcom/amazon/kcp/library/LibraryContentCache;
.super Ljava/lang/Object;
.source "LibraryContentCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/LibraryContentCache$SortableBookID;,
        Lcom/amazon/kcp/library/LibraryContentCache$LoaderKey;
    }
.end annotation


# static fields
.field static final COLUMNS:[Ljava/lang/String;

.field private static TAG:Ljava/lang/String;

.field private static final authorComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/amazon/kcp/library/LibraryContentCache$SortableBookID;",
            ">;"
        }
    .end annotation
.end field

.field private static final authorReversedComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/amazon/kcp/library/LibraryContentCache$SortableBookID;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile instance:Lcom/amazon/kcp/library/LibraryContentCache;

.field private static final titleComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/amazon/kcp/library/LibraryContentCache$SortableBookID;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private contents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            ">;"
        }
    .end annotation
.end field

.field private initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private libraryContentCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/kcp/library/LibraryContentCache$LoaderKey;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private libraryService:Lcom/amazon/kindle/content/ILibraryService;

.field private metadataLoader:Lcom/amazon/kcp/library/cache/IContentMetadataLoader;

.field private final recencyComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/amazon/kcp/library/LibraryContentCache$SortableBookID;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 74
    const-class v0, Lcom/amazon/kcp/library/LibraryContentCache;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/LibraryContentCache;->TAG:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 76
    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->ID:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 77
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->TYPE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 78
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->STATE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 79
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->LAST_ACCESSED:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 80
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kcp/library/LibraryContentCache;->COLUMNS:[Ljava/lang/String;

    .line 84
    new-instance v0, Lcom/amazon/kcp/library/LibraryContentCache$1;

    invoke-direct {v0}, Lcom/amazon/kcp/library/LibraryContentCache$1;-><init>()V

    sput-object v0, Lcom/amazon/kcp/library/LibraryContentCache;->authorComparator:Ljava/util/Comparator;

    .line 98
    new-instance v0, Lcom/amazon/kcp/library/LibraryContentCache$2;

    invoke-direct {v0}, Lcom/amazon/kcp/library/LibraryContentCache$2;-><init>()V

    sput-object v0, Lcom/amazon/kcp/library/LibraryContentCache;->authorReversedComparator:Ljava/util/Comparator;

    .line 112
    new-instance v0, Lcom/amazon/kcp/library/LibraryContentCache$3;

    invoke-direct {v0}, Lcom/amazon/kcp/library/LibraryContentCache$3;-><init>()V

    sput-object v0, Lcom/amazon/kcp/library/LibraryContentCache;->titleComparator:Ljava/util/Comparator;

    const/4 v0, 0x0

    .line 147
    sput-object v0, Lcom/amazon/kcp/library/LibraryContentCache;->instance:Lcom/amazon/kcp/library/LibraryContentCache;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    new-instance v0, Lcom/amazon/kcp/library/LibraryContentCache$4;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/LibraryContentCache$4;-><init>(Lcom/amazon/kcp/library/LibraryContentCache;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/LibraryContentCache;->recencyComparator:Ljava/util/Comparator;

    .line 137
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/LibraryContentCache;->libraryContentCache:Ljava/util/Map;

    .line 142
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/LibraryContentCache;->contents:Ljava/util/Map;

    const/4 v0, 0x0

    .line 153
    iput-object v0, p0, Lcom/amazon/kcp/library/LibraryContentCache;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 157
    new-instance v0, Lcom/amazon/kcp/library/LibraryContentCache$5;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/LibraryContentCache$5;-><init>(Lcom/amazon/kcp/library/LibraryContentCache;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/LibraryContentCache;->metadataLoader:Lcom/amazon/kcp/library/cache/IContentMetadataLoader;

    .line 181
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/LibraryContentCache;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    .line 182
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/library/LibraryContentCache;)Lcom/amazon/kindle/content/ILibraryService;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/amazon/kcp/library/LibraryContentCache;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 73
    sget-object v0, Lcom/amazon/kcp/library/LibraryContentCache;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/amazon/kcp/library/LibraryContentCache;)Lcom/amazon/kcp/library/cache/IContentMetadataLoader;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/amazon/kcp/library/LibraryContentCache;->metadataLoader:Lcom/amazon/kcp/library/cache/IContentMetadataLoader;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/kcp/library/LibraryContentCache;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/amazon/kcp/library/LibraryContentCache;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$400(Lcom/amazon/kcp/library/LibraryContentCache;)Ljava/util/Map;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/amazon/kcp/library/LibraryContentCache;->libraryContentCache:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$502(Lcom/amazon/kcp/library/LibraryContentCache;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/amazon/kcp/library/LibraryContentCache;->contents:Ljava/util/Map;

    return-object p1
.end method

.method private declared-synchronized addContentMetadata(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_1

    .line 454
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 455
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/content/ContentMetadata;

    .line 456
    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getDictionaryType()Lcom/amazon/kindle/model/content/DictionaryType;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/model/content/DictionaryType;->FREE_DICT:Lcom/amazon/kindle/model/content/DictionaryType;

    if-eq v1, v2, :cond_0

    .line 457
    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryContentCache;->contents:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/amazon/kcp/library/cache/LazyLoadingContentMetadataDisplayItem;

    iget-object v4, p0, Lcom/amazon/kcp/library/LibraryContentCache;->metadataLoader:Lcom/amazon/kcp/library/cache/IContentMetadataLoader;

    invoke-direct {v3, v0, v4}, Lcom/amazon/kcp/library/cache/LazyLoadingContentMetadataDisplayItem;-><init>(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kcp/library/cache/IContentMetadataLoader;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 461
    :cond_1
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized initializeInternal()V
    .locals 2

    monitor-enter p0

    .line 197
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryContentCache;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 198
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/library/LibraryContentCache$6;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/library/LibraryContentCache$6;-><init>(Lcom/amazon/kcp/library/LibraryContentCache;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public onAuthenticationEvent(Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 430
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;->getType()Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;->LOGOUT:Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    if-ne p1, v0, :cond_0

    .line 431
    iget-object p1, p0, Lcom/amazon/kcp/library/LibraryContentCache;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz p1, :cond_0

    .line 433
    invoke-direct {p0}, Lcom/amazon/kcp/library/LibraryContentCache;->initializeInternal()V

    :cond_0
    return-void
.end method

.method public onContentAdd(Lcom/amazon/kindle/content/LibraryContentAddPayload;)V
    .locals 0
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = true
        topic = "CONTENT_ADD"
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 447
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/content/LibraryContentAddPayload;->getMetadata()Ljava/util/Collection;

    move-result-object p1

    .line 448
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/LibraryContentCache;->addContentMetadata(Ljava/util/Collection;)V

    .line 450
    iget-object p1, p0, Lcom/amazon/kcp/library/LibraryContentCache;->libraryContentCache:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public declared-synchronized onContentDelete(Lcom/amazon/kindle/content/ContentDelete;)V
    .locals 3
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = true
        topic = "CONTENT_DELETE"
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_2

    .line 487
    :try_start_0
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentDelete;->getBookIds()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 488
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentDelete;->getBookIds()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    .line 490
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentDelete;->getBookIds()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 491
    iget-object v2, p0, Lcom/amazon/kcp/library/LibraryContentCache;->contents:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/library/ILibraryDisplayItem;

    if-eqz v2, :cond_0

    .line 492
    invoke-interface {v2}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->isArchivable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 493
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryContentCache;->contents:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 498
    iget-object p1, p0, Lcom/amazon/kcp/library/LibraryContentCache;->libraryContentCache:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 501
    :cond_2
    :goto_1
    monitor-exit p0

    return-void
.end method

.method public onContentUpdate(Ljava/util/Collection;)V
    .locals 2
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

    if-eqz p1, :cond_1

    .line 469
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 470
    new-instance v0, Ljava/util/ArrayList;

    .line 471
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 472
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/content/ContentUpdate;

    .line 473
    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentUpdate;->getMetadata()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 475
    :cond_0
    invoke-direct {p0, v0}, Lcom/amazon/kcp/library/LibraryContentCache;->addContentMetadata(Ljava/util/Collection;)V

    .line 478
    :cond_1
    iget-object p1, p0, Lcom/amazon/kcp/library/LibraryContentCache;->libraryContentCache:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public onLocaleChanged(Lcom/amazon/kindle/event/LocaleChangedEvent;)V
    .locals 4
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 412
    iget-object p1, p0, Lcom/amazon/kcp/library/LibraryContentCache;->libraryContentCache:Ljava/util/Map;

    monitor-enter p1

    .line 413
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryContentCache;->libraryContentCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/library/LibraryContentCache$LoaderKey;

    .line 414
    iget-object v2, v1, Lcom/amazon/kcp/library/LibraryContentCache$LoaderKey;->sortType:Lcom/amazon/kcp/library/LibrarySortType;

    sget-object v3, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_AUTHOR:Lcom/amazon/kcp/library/LibrarySortType;

    if-eq v2, v3, :cond_1

    iget-object v2, v1, Lcom/amazon/kcp/library/LibraryContentCache$LoaderKey;->sortType:Lcom/amazon/kcp/library/LibrarySortType;

    sget-object v3, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_AUTHOR_REVERSE:Lcom/amazon/kcp/library/LibrarySortType;

    if-eq v2, v3, :cond_1

    iget-object v2, v1, Lcom/amazon/kcp/library/LibraryContentCache$LoaderKey;->sortType:Lcom/amazon/kcp/library/LibrarySortType;

    sget-object v3, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_TITLE:Lcom/amazon/kcp/library/LibrarySortType;

    if-ne v2, v3, :cond_0

    .line 417
    :cond_1
    iget-object v2, p0, Lcom/amazon/kcp/library/LibraryContentCache;->libraryContentCache:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 420
    :cond_2
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
