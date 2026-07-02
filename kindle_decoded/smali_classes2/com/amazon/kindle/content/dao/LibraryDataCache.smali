.class public Lcom/amazon/kindle/content/dao/LibraryDataCache;
.super Ljava/lang/Object;
.source "LibraryDataCache.java"


# static fields
.field private static final PERIODICAL_BACKISSUE_COUNT_COLUMNS:[Ljava/lang/String;

.field private static final PERIODICAL_BACKISSUE_COUNT_GROUPBY:Ljava/lang/String;

.field private static final PERIODICAL_BACKISSUE_COUNT_SELECTION:Ljava/lang/String;

.field private static final PERIODICAL_BACKISSUE_COUNT_SELECT_ARGS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static final instance:Lcom/amazon/kindle/content/dao/LibraryDataCache;


# instance fields
.field private volatile contentMetadataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            ">;"
        }
    .end annotation
.end field

.field delayInitialization:Z

.field volatile groupMetadataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/content/GroupMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private initializationState:Ljava/util/concurrent/atomic/AtomicBoolean;

.field volatile itemIdToGroupIdMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/model/content/IBookID;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile periodicalBackIssuesCounts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 53
    const-class v0, Lcom/amazon/kindle/content/dao/LibraryDataCache;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/content/dao/LibraryDataCache;->TAG:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    .line 56
    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->PARENT_ASIN:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 57
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "COUNT(1) AS COUNT"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sput-object v1, Lcom/amazon/kindle/content/dao/LibraryDataCache;->PERIODICAL_BACKISSUE_COUNT_COLUMNS:[Ljava/lang/String;

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->TYPE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 60
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " IN (?, ?)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/amazon/kindle/content/dao/LibraryDataCache;->PERIODICAL_BACKISSUE_COUNT_SELECTION:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/String;

    .line 62
    sget-object v1, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_NEWSPAPER:Lcom/amazon/kcp/library/models/BookType;

    .line 63
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_MAGAZINE:Lcom/amazon/kcp/library/models/BookType;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Lcom/amazon/kindle/content/dao/LibraryDataCache;->PERIODICAL_BACKISSUE_COUNT_SELECT_ARGS:[Ljava/lang/String;

    .line 65
    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->PARENT_ASIN:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 66
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/content/dao/LibraryDataCache;->PERIODICAL_BACKISSUE_COUNT_GROUPBY:Ljava/lang/String;

    .line 69
    new-instance v0, Lcom/amazon/kindle/content/dao/LibraryDataCache;

    invoke-direct {v0}, Lcom/amazon/kindle/content/dao/LibraryDataCache;-><init>()V

    sput-object v0, Lcom/amazon/kindle/content/dao/LibraryDataCache;->instance:Lcom/amazon/kindle/content/dao/LibraryDataCache;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 73
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/content/dao/LibraryDataCache;->contentMetadataMap:Ljava/util/Map;

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 78
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/content/dao/LibraryDataCache;->groupMetadataMap:Ljava/util/Map;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 82
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/content/dao/LibraryDataCache;->periodicalBackIssuesCounts:Ljava/util/Map;

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 88
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/content/dao/LibraryDataCache;->itemIdToGroupIdMapping:Ljava/util/Map;

    .line 95
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/kindle/content/dao/LibraryDataCache;->delayInitialization:Z

    const/4 v0, 0x0

    .line 104
    iput-object v0, p0, Lcom/amazon/kindle/content/dao/LibraryDataCache;->initializationState:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 110
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 51
    sget-object v0, Lcom/amazon/kindle/content/dao/LibraryDataCache;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .locals 1

    .line 51
    sget-object v0, Lcom/amazon/kindle/content/dao/LibraryDataCache;->PERIODICAL_BACKISSUE_COUNT_COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 51
    sget-object v0, Lcom/amazon/kindle/content/dao/LibraryDataCache;->PERIODICAL_BACKISSUE_COUNT_SELECTION:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()[Ljava/lang/String;
    .locals 1

    .line 51
    sget-object v0, Lcom/amazon/kindle/content/dao/LibraryDataCache;->PERIODICAL_BACKISSUE_COUNT_SELECT_ARGS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 51
    sget-object v0, Lcom/amazon/kindle/content/dao/LibraryDataCache;->PERIODICAL_BACKISSUE_COUNT_GROUPBY:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/amazon/kindle/content/dao/LibraryDataCache;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/amazon/kindle/content/dao/LibraryDataCache;->contentMetadataMap:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$602(Lcom/amazon/kindle/content/dao/LibraryDataCache;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/amazon/kindle/content/dao/LibraryDataCache;->periodicalBackIssuesCounts:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$700(Lcom/amazon/kindle/content/dao/LibraryDataCache;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/amazon/kindle/content/dao/LibraryDataCache;->initializationState:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private declared-synchronized addContentMetadata(Ljava/util/Collection;)V
    .locals 3
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

    .line 318
    :try_start_0
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

    .line 319
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/content/dao/LibraryDataCache;->updateItemForSeriesBinding(Lcom/amazon/kindle/content/ContentMetadata;)V

    .line 320
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/content/dao/LibraryDataCache;->updateItemForSagaSeries(Lcom/amazon/kindle/content/ContentMetadata;)V

    .line 321
    iget-object v1, p0, Lcom/amazon/kindle/content/dao/LibraryDataCache;->contentMetadataMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/model/content/IListableBook;

    .line 323
    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getParentAsin()Ljava/lang/String;

    move-result-object v2

    if-nez v1, :cond_0

    .line 324
    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->isPeriodical()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 326
    invoke-direct {p0, v2, v0}, Lcom/amazon/kindle/content/dao/LibraryDataCache;->updateBackIssueCounts(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 330
    :cond_1
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized clearCachedData()V
    .locals 1

    monitor-enter p0

    .line 299
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/content/dao/LibraryDataCache;->contentMetadataMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 300
    iget-object v0, p0, Lcom/amazon/kindle/content/dao/LibraryDataCache;->groupMetadataMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 301
    iget-object v0, p0, Lcom/amazon/kindle/content/dao/LibraryDataCache;->periodicalBackIssuesCounts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static getInstance()Lcom/amazon/kindle/content/dao/LibraryDataCache;
    .locals 1

    .line 131
    sget-object v0, Lcom/amazon/kindle/content/dao/LibraryDataCache;->instance:Lcom/amazon/kindle/content/dao/LibraryDataCache;

    return-object v0
.end method

.method private declared-synchronized initializeInternal()V
    .locals 4

    monitor-enter p0

    .line 187
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/content/dao/LibraryDataCache;->initializationState:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 188
    invoke-direct {p0}, Lcom/amazon/kindle/content/dao/LibraryDataCache;->clearCachedData()V

    .line 190
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v2, Lcom/amazon/kindle/content/dao/LibraryDataCache$1;

    invoke-direct {v2, p0}, Lcom/amazon/kindle/content/dao/LibraryDataCache$1;-><init>(Lcom/amazon/kindle/content/dao/LibraryDataCache;)V

    iget-boolean v3, p0, Lcom/amazon/kindle/content/dao/LibraryDataCache;->delayInitialization:Z

    if-nez v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-interface {v0, v2, v1}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->execute(Ljava/lang/Runnable;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized updateBackIssueCounts(Ljava/lang/String;I)V
    .locals 1

    monitor-enter p0

    .line 429
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/content/dao/LibraryDataCache;->periodicalBackIssuesCounts:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 431
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_0

    .line 434
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 436
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_1

    .line 437
    iget-object v0, p0, Lcom/amazon/kindle/content/dao/LibraryDataCache;->periodicalBackIssuesCounts:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 439
    :cond_1
    iget-object p2, p0, Lcom/amazon/kindle/content/dao/LibraryDataCache;->periodicalBackIssuesCounts:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 441
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private updateGroupItemMetadata(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            ">;)V"
        }
    .end annotation

    .line 492
    iget-object v0, p0, Lcom/amazon/kindle/content/dao/LibraryDataCache;->groupMetadataMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/content/GroupMetadata;

    .line 493
    invoke-virtual {v1, p1}, Lcom/amazon/kindle/content/GroupMetadata;->updateItemMetadata(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getBook(Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/amazon/kindle/content/dao/LibraryDataCache;->contentMetadataMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/content/ContentMetadata;

    if-eqz p1, :cond_0

    .line 144
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IBookID;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/BookType;->isPeriodical()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/amazon/kindle/content/dao/LibraryDataCache;->periodicalBackIssuesCounts:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getParentAsin()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/content/ContentMetadata;->setAsinCount(I)V

    :cond_0
    return-object p1
.end method

.method public declared-synchronized getBookList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 462
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/amazon/kindle/content/dao/LibraryDataCache;->contentMetadataMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 463
    iget-object v1, p0, Lcom/amazon/kindle/content/dao/LibraryDataCache;->contentMetadataMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/content/ContentMetadata;

    .line 464
    invoke-virtual {v2}, Lcom/amazon/kindle/content/ContentMetadata;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/content/ContentMetadata;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 466
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCompleteBookList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 478
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/amazon/kindle/content/dao/LibraryDataCache;->contentMetadataMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 479
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCompleteGroupList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/content/GroupMetadata;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 487
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/amazon/kindle/content/dao/LibraryDataCache;->groupMetadataMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 488
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getGroup(Ljava/lang/String;)Lcom/amazon/kindle/content/GroupMetadata;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/amazon/kindle/content/dao/LibraryDataCache;->groupMetadataMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/content/GroupMetadata;

    return-object p1
.end method

.method public declared-synchronized getGroupList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/content/GroupMetadata;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 470
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/amazon/kindle/content/dao/LibraryDataCache;->groupMetadataMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isCacheInitialized()Z
    .locals 1

    monitor-enter p0

    .line 183
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/content/dao/LibraryDataCache;->initializationState:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/content/dao/LibraryDataCache;->initializationState:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onAuthenticationEvent(Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    if-eqz p1, :cond_0

    .line 287
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;->getType()Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;->LOGOUT:Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    if-ne p1, v0, :cond_0

    .line 291
    invoke-direct {p0}, Lcom/amazon/kindle/content/dao/LibraryDataCache;->clearCachedData()V

    :cond_0
    return-void
.end method

.method public onContentAdd(Lcom/amazon/kindle/content/LibraryContentAddPayload;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 312
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/content/LibraryContentAddPayload;->getMetadata()Ljava/util/Collection;

    move-result-object p1

    .line 313
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/dao/LibraryDataCache;->addContentMetadata(Ljava/util/Collection;)V

    return-void
.end method

.method public declared-synchronized onContentDelete(Lcom/amazon/kindle/content/ContentDelete;)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_1

    .line 410
    :try_start_0
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentDelete;->getBookIds()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 411
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentDelete;->getBookIds()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 412
    iget-object v1, p0, Lcom/amazon/kindle/content/dao/LibraryDataCache;->contentMetadataMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/model/content/IListableBook;

    if-eqz v0, :cond_0

    .line 414
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IListableBook;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/IBookID;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/library/models/BookType;->isPeriodical()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 416
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IListableBook;->getParentAsin()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/amazon/kindle/content/dao/LibraryDataCache;->updateBackIssueCounts(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 420
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public onContentUpdate(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/content/ContentUpdate;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 389
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 390
    new-instance v0, Ljava/util/ArrayList;

    .line 391
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 392
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/content/ContentUpdate;

    if-eqz v1, :cond_0

    .line 393
    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentUpdate;->getMetadata()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 394
    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentUpdate;->getMetadata()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 396
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 400
    :cond_1
    invoke-direct {p0, v0}, Lcom/amazon/kindle/content/dao/LibraryDataCache;->addContentMetadata(Ljava/util/Collection;)V

    .line 401
    invoke-direct {p0, v0}, Lcom/amazon/kindle/content/dao/LibraryDataCache;->updateGroupItemMetadata(Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method public declared-synchronized onGroupAdded(Lcom/amazon/kindle/content/GroupAddPayload;)V
    .locals 3

    monitor-enter p0

    if-nez p1, :cond_0

    .line 372
    monitor-exit p0

    return-void

    .line 374
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/amazon/kindle/content/GroupAddPayload;->getMetadata()Ljava/util/Collection;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 376
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/content/GroupMetadata;

    .line 377
    iget-object v1, p0, Lcom/amazon/kindle/content/dao/LibraryDataCache;->groupMetadataMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/amazon/kindle/content/GroupMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    iget-object v1, p0, Lcom/amazon/kindle/content/dao/LibraryDataCache;->contentMetadataMap:Ljava/util/Map;

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kindle/content/dao/LibraryDataCache;->updateGroupForSeriesBinding(Lcom/amazon/kindle/content/GroupMetadata;Ljava/util/Map;)V

    .line 379
    iget-object v1, p0, Lcom/amazon/kindle/content/dao/LibraryDataCache;->contentMetadataMap:Ljava/util/Map;

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kindle/content/dao/LibraryDataCache;->updateGroupForSagaSeries(Lcom/amazon/kindle/content/GroupMetadata;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 382
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onGroupDelete(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 449
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 450
    iget-object v1, p0, Lcom/amazon/kindle/content/dao/LibraryDataCache;->groupMetadataMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 453
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized startInitialization()V
    .locals 2

    monitor-enter p0

    .line 170
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/content/dao/LibraryDataCache;->initializationState:Ljava/util/concurrent/atomic/AtomicBoolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 171
    monitor-exit p0

    return-void

    .line 173
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amazon/kindle/content/dao/LibraryDataCache;->initializationState:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 174
    invoke-direct {p0}, Lcom/amazon/kindle/content/dao/LibraryDataCache;->initializeInternal()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized updateGroupForSagaSeries(Lcom/amazon/kindle/content/GroupMetadata;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/content/GroupMetadata;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 270
    :try_start_0
    invoke-virtual {p1}, Lcom/amazon/kindle/content/GroupMetadata;->getGroupContents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/content/GroupItemMetadata;

    .line 271
    invoke-virtual {v1}, Lcom/amazon/kindle/content/GroupItemMetadata;->getItemId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/content/ContentMetadata;

    if-eqz v2, :cond_0

    .line 273
    invoke-virtual {v1}, Lcom/amazon/kindle/content/GroupItemMetadata;->getGroupPositionLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazon/kindle/content/ContentMetadata;->setGroupItemPosition(Ljava/lang/String;)V

    .line 274
    invoke-virtual {p1}, Lcom/amazon/kindle/content/GroupMetadata;->getSeriesOrderType()Lcom/amazon/kcp/library/models/SeriesOrderType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazon/kindle/content/ContentMetadata;->setSeriesOrderType(Lcom/amazon/kcp/library/models/SeriesOrderType;)V

    .line 276
    :cond_0
    iget-object v2, p0, Lcom/amazon/kindle/content/dao/LibraryDataCache;->itemIdToGroupIdMapping:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/amazon/kindle/content/GroupItemMetadata;->getItemId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/kindle/content/GroupMetadata;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 278
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized updateGroupForSeriesBinding(Lcom/amazon/kindle/content/GroupMetadata;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/content/GroupMetadata;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 258
    :try_start_0
    invoke-virtual {p1}, Lcom/amazon/kindle/content/GroupMetadata;->getGroupContents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/content/GroupItemMetadata;

    .line 259
    invoke-virtual {v1}, Lcom/amazon/kindle/content/GroupItemMetadata;->getItemId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/content/ContentMetadata;

    if-eqz v2, :cond_0

    .line 261
    invoke-virtual {v1}, Lcom/amazon/kindle/content/GroupItemMetadata;->getGroupItemType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amazon/kcp/library/models/SeriesGroupType;->fromString(Ljava/lang/String;)Lcom/amazon/kcp/library/models/SeriesGroupType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazon/kindle/content/ContentMetadata;->setGroupType(Lcom/amazon/kcp/library/models/SeriesGroupType;)V

    .line 262
    invoke-virtual {v1}, Lcom/amazon/kindle/content/GroupItemMetadata;->getGroupPositionLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazon/kindle/content/ContentMetadata;->setGroupItemPosition(Ljava/lang/String;)V

    .line 264
    :cond_0
    iget-object v2, p0, Lcom/amazon/kindle/content/dao/LibraryDataCache;->itemIdToGroupIdMapping:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/amazon/kindle/content/GroupItemMetadata;->getItemId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/kindle/content/GroupMetadata;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 266
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized updateItemForSagaSeries(Lcom/amazon/kindle/content/ContentMetadata;)V
    .locals 5

    monitor-enter p0

    .line 351
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/content/dao/LibraryDataCache;->itemIdToGroupIdMapping:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 352
    invoke-static {v0}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 353
    iget-object v1, p0, Lcom/amazon/kindle/content/dao/LibraryDataCache;->groupMetadataMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/content/GroupMetadata;

    if-eqz v0, :cond_1

    .line 355
    invoke-virtual {v0}, Lcom/amazon/kindle/content/GroupMetadata;->getGroupContents()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/content/GroupItemMetadata;

    .line 356
    invoke-virtual {v2}, Lcom/amazon/kindle/content/GroupItemMetadata;->getItemId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v3

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 357
    invoke-virtual {v2}, Lcom/amazon/kindle/content/GroupItemMetadata;->getGroupPositionLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazon/kindle/content/ContentMetadata;->setGroupItemPosition(Ljava/lang/String;)V

    .line 358
    invoke-virtual {v0}, Lcom/amazon/kindle/content/GroupMetadata;->getSeriesOrderType()Lcom/amazon/kcp/library/models/SeriesOrderType;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/content/ContentMetadata;->setSeriesOrderType(Lcom/amazon/kcp/library/models/SeriesOrderType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized updateItemForSeriesBinding(Lcom/amazon/kindle/content/ContentMetadata;)V
    .locals 4

    monitor-enter p0

    .line 334
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/content/dao/LibraryDataCache;->itemIdToGroupIdMapping:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 335
    invoke-static {v0}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 336
    iget-object v1, p0, Lcom/amazon/kindle/content/dao/LibraryDataCache;->groupMetadataMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/content/GroupMetadata;

    if-eqz v0, :cond_1

    .line 338
    invoke-virtual {v0}, Lcom/amazon/kindle/content/GroupMetadata;->getGroupContents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/content/GroupItemMetadata;

    .line 339
    invoke-virtual {v1}, Lcom/amazon/kindle/content/GroupItemMetadata;->getItemId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 340
    invoke-virtual {v1}, Lcom/amazon/kindle/content/GroupItemMetadata;->getGroupPositionLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/content/ContentMetadata;->setGroupItemPosition(Ljava/lang/String;)V

    .line 341
    invoke-virtual {v1}, Lcom/amazon/kindle/content/GroupItemMetadata;->getGroupItemType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/library/models/SeriesGroupType;->fromString(Ljava/lang/String;)Lcom/amazon/kcp/library/models/SeriesGroupType;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/content/ContentMetadata;->setGroupType(Lcom/amazon/kcp/library/models/SeriesGroupType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
