.class public Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;
.super Lcom/amazon/kindle/observablemodel/LibraryDataIntegratorObserver;
.source "LibraryRepositoryWrapper.java"


# instance fields
.field private final highPriorityQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final lowPriorityQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final modelExecutor:Ljava/util/concurrent/ExecutorService;

.field private final wrappedObserver:Lcom/amazon/kindle/observablemodel/LibraryRepository;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;Lcom/amazon/kindle/observablemodel/LibraryRepository;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Lcom/amazon/kindle/observablemodel/LibraryDataIntegratorObserver;-><init>()V

    .line 37
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;->lowPriorityQueue:Ljava/util/Queue;

    .line 38
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;->highPriorityQueue:Ljava/util/Queue;

    .line 41
    iput-object p1, p0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;->modelExecutor:Ljava/util/concurrent/ExecutorService;

    .line 42
    iput-object p2, p0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;->wrappedObserver:Lcom/amazon/kindle/observablemodel/LibraryRepository;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;->executeHighPriorityQueue()V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;)Ljava/util/Queue;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;->lowPriorityQueue:Ljava/util/Queue;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;)Lcom/amazon/kindle/observablemodel/LibraryRepository;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;->wrappedObserver:Lcom/amazon/kindle/observablemodel/LibraryRepository;

    return-object p0
.end method

.method private executeHighPriorityQueue()V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;->highPriorityQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    :goto_0
    if-eqz v0, :cond_0

    .line 57
    :try_start_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 60
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 65
    :goto_1
    iget-object v0, p0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;->highPriorityQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private executePendingWork(Ljava/lang/Runnable;Ljava/util/Queue;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;->modelExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$1;-><init>(Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;Ljava/util/Queue;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private executeWithHighPriority(Ljava/lang/Runnable;)V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;->highPriorityQueue:Ljava/util/Queue;

    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;->executePendingWork(Ljava/lang/Runnable;Ljava/util/Queue;)V

    return-void
.end method

.method private executeWithLowPriority(Ljava/lang/Runnable;)V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;->lowPriorityQueue:Ljava/util/Queue;

    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;->executePendingWork(Ljava/lang/Runnable;Ljava/util/Queue;)V

    return-void
.end method


# virtual methods
.method public addToAccountType(ILjava/util/Set;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 226
    new-instance v0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$15;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$15;-><init>(Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;ILjava/util/Set;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;->executeWithLowPriority(Ljava/lang/Runnable;)V

    return-void
.end method

.method public addToAudibleCompanion(Ljava/util/Set;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 386
    new-instance v0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$31;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$31;-><init>(Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;Ljava/util/Set;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;->executeWithLowPriority(Ljava/lang/Runnable;)V

    return-void
.end method

.method public addToCarousel(Ljava/util/Set;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 426
    new-instance v0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$35;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$35;-><init>(Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;Ljava/util/Set;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;->executeWithLowPriority(Ljava/lang/Runnable;)V

    return-void
.end method

.method public addToCollectionMembership(Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 436
    new-instance v0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$36;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$36;-><init>(Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;Ljava/util/Map;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;->executeWithLowPriority(Ljava/lang/Runnable;)V

    return-void
.end method

.method public addToFalkorMembership(Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 126
    new-instance v0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$5;-><init>(Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;Ljava/util/Map;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;->executeWithLowPriority(Ljava/lang/Runnable;)V

    return-void
.end method

.method public addToItemCategory(ILjava/util/Set;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 406
    new-instance v0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$33;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$33;-><init>(Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;ILjava/util/Set;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;->executeWithLowPriority(Ljava/lang/Runnable;)V

    return-void
.end method

.method public addToItemToItemDictionary(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 486
    new-instance v0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$41;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$41;-><init>(Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;->executeWithLowPriority(Ljava/lang/Runnable;)V

    return-void
.end method

.method public addToOwnership(ILjava/util/Set;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 216
    new-instance v0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$14;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$14;-><init>(Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;ILjava/util/Set;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;->executeWithLowPriority(Ljava/lang/Runnable;)V

    return-void
.end method

.method public addToRawStringData(Lcom/amazon/kindle/observablemodel/RawDictionaryType;Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/observablemodel/RawDictionaryType;",
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 286
    new-instance v0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$21;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$21;-><init>(Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;Lcom/amazon/kindle/observablemodel/RawDictionaryType;Ljava/util/Map;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;->executeWithLowPriority(Ljava/lang/Runnable;)V

    return-void
.end method

.method public addToReadingProgress(ILjava/util/Set;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 156
    new-instance v0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$8;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$8;-><init>(Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;ILjava/util/Set;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;->executeWithLowPriority(Ljava/lang/Runnable;)V

    return-void
.end method

.method public addToSampleMembership(Ljava/util/Set;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 416
    new-instance v0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$34;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$34;-><init>(Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;Ljava/util/Set;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;->executeWithLowPriority(Ljava/lang/Runnable;)V

    return-void
.end method

.method public addToSortTypeDate(ILjava/util/Map;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            "Ljava/util/Date;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 316
    new-instance v0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$24;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$24;-><init>(Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;ILjava/util/Map;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;->executeWithLowPriority(Ljava/lang/Runnable;)V

    return-void
.end method

.method public addToSortTypeNumber(ILjava/util/Map;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 366
    new-instance v0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$29;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$29;-><init>(Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;ILjava/util/Map;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;->executeWithLowPriority(Ljava/lang/Runnable;)V

    return-void
.end method

.method public addToSortTypeString(ILjava/util/Map;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 236
    new-instance v0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$16;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$16;-><init>(Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;ILjava/util/Map;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;->executeWithLowPriority(Ljava/lang/Runnable;)V

    return-void
.end method

.method public clearAccountState(Ljava/lang/String;)V
    .locals 1

    .line 647
    new-instance v0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$56;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$56;-><init>(Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;->executeWithHighPriority(Ljava/lang/Runnable;)V

    return-void
.end method

.method public flushChanges()V
    .locals 1

    .line 506
    new-instance v0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$43;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$43;-><init>(Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;)V

    invoke-direct {p0, v0}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;->executeWithLowPriority(Ljava/lang/Runnable;)V

    return-void
.end method

.method public flushChanges(Lcom/amazon/kindle/observablemodel/OnChangesProcessedListener;)V
    .locals 1

    .line 516
    new-instance v0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$44;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$44;-><init>(Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;Lcom/amazon/kindle/observablemodel/OnChangesProcessedListener;)V

    invoke-direct {p0, v0}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;->executeWithLowPriority(Ljava/lang/Runnable;)V

    return-void
.end method

.method public modifyPresentationAndCountListeners(Lcom/amazon/kindle/observablemodel/LibraryPresentationChangeListener;Lcom/amazon/kindle/observablemodel/LibraryContainerCountListener;Ljava/lang/String;Lcom/amazon/kindle/observablemodel/ModelContent;Lcom/amazon/kindle/observablemodel/ModelFilter;Lcom/amazon/kindle/observablemodel/ModelSorting;)V
    .locals 9

    .line 553
    new-instance v8, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$47;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$47;-><init>(Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;Lcom/amazon/kindle/observablemodel/LibraryPresentationChangeListener;Lcom/amazon/kindle/observablemodel/LibraryContainerCountListener;Ljava/lang/String;Lcom/amazon/kindle/observablemodel/ModelContent;Lcom/amazon/kindle/observablemodel/ModelFilter;Lcom/amazon/kindle/observablemodel/ModelSorting;)V

    invoke-direct {p0, v8}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;->executeWithHighPriority(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onItemDetail(Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 196
    new-instance v0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$12;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$12;-><init>(Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;Ljava/util/Map;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;->executeWithLowPriority(Ljava/lang/Runnable;)V

    return-void
.end method

.method public preloadKnownLeaves(Ljava/lang/String;)V
    .locals 1

    .line 638
    new-instance v0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$55;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$55;-><init>(Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;->executeWithHighPriority(Ljava/lang/Runnable;)V

    return-void
.end method

.method public registerContainerCountListener(Lcom/amazon/kindle/observablemodel/LibraryContainerCountListener;Ljava/lang/String;Lcom/amazon/kindle/observablemodel/ModelContent;Lcom/amazon/kindle/observablemodel/ModelFilter;Lcom/amazon/kindle/observablemodel/ModelSorting;)V
    .locals 8

    .line 575
    new-instance v7, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$49;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$49;-><init>(Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;Lcom/amazon/kindle/observablemodel/LibraryContainerCountListener;Ljava/lang/String;Lcom/amazon/kindle/observablemodel/ModelContent;Lcom/amazon/kindle/observablemodel/ModelFilter;Lcom/amazon/kindle/observablemodel/ModelSorting;)V

    invoke-direct {p0, v7}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;->executeWithHighPriority(Ljava/lang/Runnable;)V

    return-void
.end method

.method public registerGroupListener(Lcom/amazon/kindle/observablemodel/LibraryGroupListener;Ljava/lang/String;Lcom/amazon/kindle/observablemodel/ItemID;Lcom/amazon/kindle/observablemodel/ModelContent;Lcom/amazon/kindle/observablemodel/ModelFilter;Lcom/amazon/kindle/observablemodel/ModelSorting;)V
    .locals 9

    .line 589
    new-instance v8, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$50;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$50;-><init>(Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;Lcom/amazon/kindle/observablemodel/LibraryGroupListener;Ljava/lang/String;Lcom/amazon/kindle/observablemodel/ItemID;Lcom/amazon/kindle/observablemodel/ModelContent;Lcom/amazon/kindle/observablemodel/ModelFilter;Lcom/amazon/kindle/observablemodel/ModelSorting;)V

    invoke-direct {p0, v8}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;->executeWithHighPriority(Ljava/lang/Runnable;)V

    return-void
.end method

.method public registerItemDetailListener(Lcom/amazon/kindle/observablemodel/LibraryItemDetailListener;Ljava/lang/String;Lcom/amazon/kindle/observablemodel/ItemID;)V
    .locals 1

    .line 611
    new-instance v0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$52;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$52;-><init>(Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;Lcom/amazon/kindle/observablemodel/LibraryItemDetailListener;Ljava/lang/String;Lcom/amazon/kindle/observablemodel/ItemID;)V

    invoke-direct {p0, v0}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;->executeWithHighPriority(Ljava/lang/Runnable;)V

    return-void
.end method

.method public registerPresentationAndCountListeners(Lcom/amazon/kindle/observablemodel/LibraryPresentationChangeListener;Lcom/amazon/kindle/observablemodel/LibraryContainerCountListener;Ljava/lang/String;Lcom/amazon/kindle/observablemodel/ModelContent;Lcom/amazon/kindle/observablemodel/ModelFilter;Lcom/amazon/kindle/observablemodel/ModelSorting;)V
    .locals 9

    .line 539
    new-instance v8, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$46;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$46;-><init>(Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;Lcom/amazon/kindle/observablemodel/LibraryPresentationChangeListener;Lcom/amazon/kindle/observablemodel/LibraryContainerCountListener;Ljava/lang/String;Lcom/amazon/kindle/observablemodel/ModelContent;Lcom/amazon/kindle/observablemodel/ModelFilter;Lcom/amazon/kindle/observablemodel/ModelSorting;)V

    invoke-direct {p0, v8}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;->executeWithHighPriority(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeContainerCountListener(Lcom/amazon/kindle/observablemodel/LibraryContainerCountListener;Ljava/lang/String;)V
    .locals 1

    .line 629
    new-instance v0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$54;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$54;-><init>(Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;Lcom/amazon/kindle/observablemodel/LibraryContainerCountListener;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;->executeWithHighPriority(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeFromAccountType(ILjava/util/Set;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 116
    new-instance v0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$4;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$4;-><init>(Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;ILjava/util/Set;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;->executeWithLowPriority(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeFromAudibleCompanion(Ljava/util/Set;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 96
    new-instance v0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$2;-><init>(Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;Ljava/util/Set;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;->executeWithLowPriority(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeFromCarousel(Ljava/util/Set;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 256
    new-instance v0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$18;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$18;-><init>(Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;Ljava/util/Set;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;->executeWithLowPriority(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeFromCollectionMembership(Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 206
    new-instance v0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$13;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$13;-><init>(Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;Ljava/util/Map;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;->executeWithLowPriority(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeFromFalkorMembership(Ljava/util/Set;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 346
    new-instance v0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$27;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$27;-><init>(Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;Ljava/util/Set;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;->executeWithLowPriority(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeFromItemCategory(ILjava/util/Set;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 326
    new-instance v0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$25;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$25;-><init>(Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;ILjava/util/Set;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;->executeWithLowPriority(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeFromItemToItemDictionary(Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 496
    new-instance v0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$42;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$42;-><init>(Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;->executeWithLowPriority(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeFromOwnership(ILjava/util/Set;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 106
    new-instance v0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$3;-><init>(Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;ILjava/util/Set;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;->executeWithLowPriority(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeFromRawData(Lcom/amazon/kindle/observablemodel/RawDictionaryType;Ljava/util/Set;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/observablemodel/RawDictionaryType;",
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 296
    new-instance v0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$22;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$22;-><init>(Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;Lcom/amazon/kindle/observablemodel/RawDictionaryType;Ljava/util/Set;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;->executeWithLowPriority(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeFromReadingProgress(ILjava/util/Set;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 376
    new-instance v0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$30;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$30;-><init>(Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;ILjava/util/Set;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;->executeWithLowPriority(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeFromSampleMembership(Ljava/util/Set;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 246
    new-instance v0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$17;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$17;-><init>(Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;Ljava/util/Set;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;->executeWithLowPriority(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeFromSortType(ILjava/util/Set;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 466
    new-instance v0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$39;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$39;-><init>(Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;ILjava/util/Set;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;->executeWithLowPriority(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeGroupListener(Lcom/amazon/kindle/observablemodel/LibraryGroupListener;Ljava/lang/String;)V
    .locals 1

    .line 657
    new-instance v0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$57;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$57;-><init>(Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;Lcom/amazon/kindle/observablemodel/LibraryGroupListener;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;->executeWithHighPriority(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removePresentationListener(Lcom/amazon/kindle/observablemodel/LibraryPresentationChangeListener;Ljava/lang/String;)V
    .locals 1

    .line 562
    new-instance v0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$48;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$48;-><init>(Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;Lcom/amazon/kindle/observablemodel/LibraryPresentationChangeListener;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;->executeWithHighPriority(Ljava/lang/Runnable;)V

    return-void
.end method

.method public resetAccountType(ILjava/util/Set;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 186
    new-instance v0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$11;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$11;-><init>(Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;ILjava/util/Set;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;->executeWithLowPriority(Ljava/lang/Runnable;)V

    return-void
.end method

.method public resetAudibleCompanion(Ljava/util/Set;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 446
    new-instance v0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$37;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$37;-><init>(Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;Ljava/util/Set;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;->executeWithLowPriority(Ljava/lang/Runnable;)V

    return-void
.end method

.method public resetCarousel(Ljava/util/Set;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 146
    new-instance v0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$7;-><init>(Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;Ljava/util/Set;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;->executeWithLowPriority(Ljava/lang/Runnable;)V

    return-void
.end method

.method public resetCollectionMembership(Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 356
    new-instance v0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$28;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$28;-><init>(Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;Ljava/util/Map;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;->executeWithLowPriority(Ljava/lang/Runnable;)V

    return-void
.end method

.method public resetFalkorMembership(Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 266
    new-instance v0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$19;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$19;-><init>(Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;Ljava/util/Map;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;->executeWithLowPriority(Ljava/lang/Runnable;)V

    return-void
.end method

.method public resetItemCategory(ILjava/util/Set;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 306
    new-instance v0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$23;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$23;-><init>(Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;ILjava/util/Set;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;->executeWithLowPriority(Ljava/lang/Runnable;)V

    return-void
.end method

.method public resetItemToItemDictionary(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 476
    new-instance v0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$40;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$40;-><init>(Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;->executeWithLowPriority(Ljava/lang/Runnable;)V

    return-void
.end method

.method public resetOwnership(ILjava/util/Set;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 176
    new-instance v0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$10;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$10;-><init>(Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;ILjava/util/Set;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;->executeWithLowPriority(Ljava/lang/Runnable;)V

    return-void
.end method

.method public resetRawStringData(Lcom/amazon/kindle/observablemodel/RawDictionaryType;Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/observablemodel/RawDictionaryType;",
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 276
    new-instance v0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$20;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$20;-><init>(Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;Lcom/amazon/kindle/observablemodel/RawDictionaryType;Ljava/util/Map;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;->executeWithLowPriority(Ljava/lang/Runnable;)V

    return-void
.end method

.method public resetReadingProgress(ILjava/util/Set;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 336
    new-instance v0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$26;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$26;-><init>(Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;ILjava/util/Set;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;->executeWithLowPriority(Ljava/lang/Runnable;)V

    return-void
.end method

.method public resetSampleMembership(Ljava/util/Set;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 136
    new-instance v0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$6;-><init>(Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;Ljava/util/Set;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;->executeWithLowPriority(Ljava/lang/Runnable;)V

    return-void
.end method

.method public resetSortTypeDate(ILjava/util/Map;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            "Ljava/util/Date;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 456
    new-instance v0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$38;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$38;-><init>(Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;ILjava/util/Map;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;->executeWithLowPriority(Ljava/lang/Runnable;)V

    return-void
.end method

.method public resetSortTypeNumber(ILjava/util/Map;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 396
    new-instance v0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$32;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$32;-><init>(Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;ILjava/util/Map;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;->executeWithLowPriority(Ljava/lang/Runnable;)V

    return-void
.end method

.method public resetSortTypeString(ILjava/util/Map;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 166
    new-instance v0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$9;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$9;-><init>(Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;ILjava/util/Map;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;->executeWithLowPriority(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setIntegrator(Lcom/amazon/kindle/observablemodel/LibraryDataIntegrator;)V
    .locals 1

    .line 525
    new-instance v0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$45;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$45;-><init>(Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;Lcom/amazon/kindle/observablemodel/LibraryDataIntegrator;)V

    invoke-direct {p0, v0}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;->executeWithHighPriority(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setStringFilter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 598
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;->setStringFilter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/observablemodel/OnChangesProcessedListener;)V

    return-void
.end method

.method public setStringFilter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/observablemodel/OnChangesProcessedListener;)V
    .locals 7

    .line 602
    new-instance v6, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$51;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$51;-><init>(Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/observablemodel/OnChangesProcessedListener;)V

    invoke-direct {p0, v6}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;->executeWithHighPriority(Ljava/lang/Runnable;)V

    return-void
.end method

.method public unregisterItemDetailListener(Lcom/amazon/kindle/observablemodel/LibraryItemDetailListener;Lcom/amazon/kindle/observablemodel/ItemID;)V
    .locals 1

    .line 620
    new-instance v0, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$53;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper$53;-><init>(Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;Lcom/amazon/kindle/observablemodel/LibraryItemDetailListener;Lcom/amazon/kindle/observablemodel/ItemID;)V

    invoke-direct {p0, v0}, Lcom/amazon/kindle/observablemodel/LibraryRepositoryWrapper;->executeWithHighPriority(Ljava/lang/Runnable;)V

    return-void
.end method
