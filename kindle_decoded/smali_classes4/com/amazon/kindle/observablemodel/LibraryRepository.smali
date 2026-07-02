.class public Lcom/amazon/kindle/observablemodel/LibraryRepository;
.super Lcom/amazon/kindle/observablemodel/LibraryDataIntegratorObserver;
.source "LibraryRepository.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/observablemodel/LibraryRepository$GroupUpdateSetValueGenerator;,
        Lcom/amazon/kindle/observablemodel/LibraryRepository$GroupCurrentSetValueGenerator;,
        Lcom/amazon/kindle/observablemodel/LibraryRepository$CountUpdateSetValueGenerator;,
        Lcom/amazon/kindle/observablemodel/LibraryRepository$CountCurrentSetValueGenerator;,
        Lcom/amazon/kindle/observablemodel/LibraryRepository$QueueingListenerSetDispatcher;,
        Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountChangeQueue;,
        Lcom/amazon/kindle/observablemodel/LibraryRepository$QueuedChange;,
        Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LibraryRepository"


# instance fields
.field mAccountToState:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;",
            ">;"
        }
    .end annotation
.end field

.field mContentFilterSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mDebugEnabled:Z

.field mIntegrator:Lcom/amazon/kindle/observablemodel/LibraryDataIntegrator;

.field mListenerHandler:Lcom/amazon/kindle/observablemodel/IHandler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    .line 78
    new-instance v0, Lcom/amazon/kindle/observablemodel/AndroidHandlerWrapper;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/observablemodel/AndroidHandlerWrapper;-><init>(Landroid/os/Handler;)V

    invoke-direct {p0, v0}, Lcom/amazon/kindle/observablemodel/LibraryRepository;-><init>(Lcom/amazon/kindle/observablemodel/IHandler;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/amazon/kindle/observablemodel/ContentFilter;)V
    .locals 1

    .line 82
    new-instance v0, Lcom/amazon/kindle/observablemodel/AndroidHandlerWrapper;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/observablemodel/AndroidHandlerWrapper;-><init>(Landroid/os/Handler;)V

    invoke-direct {p0, v0, p2}, Lcom/amazon/kindle/observablemodel/LibraryRepository;-><init>(Lcom/amazon/kindle/observablemodel/IHandler;Lcom/amazon/kindle/observablemodel/ContentFilter;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/observablemodel/IHandler;)V
    .locals 1

    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/observablemodel/LibraryRepository;-><init>(Lcom/amazon/kindle/observablemodel/IHandler;Lcom/amazon/kindle/observablemodel/ContentFilter;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/observablemodel/IHandler;Lcom/amazon/kindle/observablemodel/ContentFilter;)V
    .locals 1

    .line 62
    invoke-direct {p0}, Lcom/amazon/kindle/observablemodel/LibraryDataIntegratorObserver;-><init>()V

    const-string v0, "CMXKindleLibraryAndroid"

    .line 64
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 65
    invoke-static {}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->configureDebugging()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazon/kindle/observablemodel/LibraryRepository;->mDebugEnabled:Z

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/observablemodel/LibraryRepository;->mAccountToState:Ljava/util/Map;

    .line 69
    iput-object p1, p0, Lcom/amazon/kindle/observablemodel/LibraryRepository;->mListenerHandler:Lcom/amazon/kindle/observablemodel/IHandler;

    if-eqz p2, :cond_0

    .line 70
    invoke-virtual {p2}, Lcom/amazon/kindle/observablemodel/ContentFilter;->set()Ljava/util/Set;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    :goto_0
    iput-object p1, p0, Lcom/amazon/kindle/observablemodel/LibraryRepository;->mContentFilterSet:Ljava/util/Set;

    return-void
.end method

.method static synthetic access$200(Lcom/amazon/kindle/observablemodel/LibraryRepository;Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->debugLog(Ljava/lang/String;)V

    return-void
.end method

.method private addToCollectionMembership(Ljava/util/Map;Ljava/lang/String;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ">;>;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 1089
    invoke-direct {p0, p2}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->getModel(Ljava/lang/String;)Lcom/amazon/kindle/observablemodel/LibraryModel;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 1094
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1096
    invoke-direct {p0, v0, p2, p3}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->addToCollections(Ljava/util/Set;Lcom/amazon/kindle/observablemodel/LibraryModel;Z)V

    const/4 v1, 0x3

    .line 1098
    invoke-static {v1}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->getLeafNameForGroup(I)Ljava/lang/String;

    move-result-object v1

    .line 1100
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Collection membership leaf:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "erase:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->debugLog(Ljava/lang/String;Ljava/util/Map;)V

    if-eqz p3, :cond_1

    .line 1103
    invoke-virtual {p2, v1}, Lcom/amazon/kindle/observablemodel/LibraryModel;->eraseLeafDictionary(Ljava/lang/String;)V

    .line 1106
    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/observablemodel/ItemID;

    .line 1107
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 1109
    invoke-virtual {p2, v1, v0, v2}, Lcom/amazon/kindle/observablemodel/LibraryModel;->addCollectionItemsInLeafDictionary(Ljava/lang/String;Lcom/amazon/kindle/observablemodel/ItemID;Ljava/util/Set;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private addToCollections(Ljava/util/Set;Lcom/amazon/kindle/observablemodel/LibraryModel;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ">;",
            "Lcom/amazon/kindle/observablemodel/LibraryModel;",
            "Z)V"
        }
    .end annotation

    .line 1071
    invoke-static {}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->getLeafNameForCollectionSet()Ljava/lang/String;

    move-result-object v0

    .line 1073
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Collection leaf:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "erase:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->debugLog(Ljava/lang/String;Ljava/util/Set;)V

    if-eqz p3, :cond_0

    .line 1076
    invoke-virtual {p2, v0}, Lcom/amazon/kindle/observablemodel/LibraryModel;->eraseLeafSet(Ljava/lang/String;)V

    .line 1079
    :cond_0
    invoke-virtual {p2, v0, p1}, Lcom/amazon/kindle/observablemodel/LibraryModel;->addItemsToLeafSet(Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method

.method private debugLog(Ljava/lang/String;)V
    .locals 3

    .line 698
    iget-boolean v0, p0, Lcom/amazon/kindle/observablemodel/LibraryRepository;->mDebugEnabled:Z

    if-eqz v0, :cond_0

    .line 699
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " );"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private debugLog(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3

    .line 713
    iget-boolean v0, p0, Lcom/amazon/kindle/observablemodel/LibraryRepository;->mDebugEnabled:Z

    if-eqz v0, :cond_0

    .line 714
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " );"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 716
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private debugLog(Ljava/lang/String;Ljava/util/Set;)V
    .locals 3

    .line 705
    iget-boolean v0, p0, Lcom/amazon/kindle/observablemodel/LibraryRepository;->mDebugEnabled:Z

    if-eqz v0, :cond_0

    .line 706
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " );"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 708
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private getAccountState(Ljava/lang/String;)Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/amazon/kindle/observablemodel/LibraryRepository;->mAccountToState:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;

    iget-object v1, p0, Lcom/amazon/kindle/observablemodel/LibraryRepository;->mContentFilterSet:Ljava/util/Set;

    invoke-direct {v0, p0, p1, v1}, Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;-><init>(Lcom/amazon/kindle/observablemodel/LibraryRepository;Ljava/lang/String;Ljava/util/Set;)V

    .line 90
    iget-object v1, p0, Lcom/amazon/kindle/observablemodel/LibraryRepository;->mAccountToState:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private getModel(Ljava/lang/String;)Lcom/amazon/kindle/observablemodel/LibraryModel;
    .locals 0

    .line 721
    invoke-direct {p0, p1}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->getAccountState(Ljava/lang/String;)Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 726
    :cond_0
    iget-object p1, p1, Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;->mLibraryModel:Lcom/amazon/kindle/observablemodel/LibraryModel;

    return-object p1
.end method

.method private handleLeafContainers()V
    .locals 7

    .line 528
    iget-object v0, p0, Lcom/amazon/kindle/observablemodel/LibraryRepository;->mAccountToState:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;

    .line 529
    iget-object v2, v1, Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;->mLibraryModel:Lcom/amazon/kindle/observablemodel/LibraryModel;

    .line 530
    iget-object v1, v1, Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;->mAccountId:Ljava/lang/String;

    .line 532
    invoke-virtual {v2}, Lcom/amazon/kindle/observablemodel/LibraryModel;->emptyLeaves()Ljava/util/Set;

    move-result-object v3

    .line 534
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Empty leaves = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v3}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->debugLog(Ljava/lang/String;Ljava/util/Set;)V

    .line 536
    iget-object v4, p0, Lcom/amazon/kindle/observablemodel/LibraryRepository;->mIntegrator:Lcom/amazon/kindle/observablemodel/LibraryDataIntegrator;

    invoke-interface {v4, v1}, Lcom/amazon/kindle/observablemodel/LibraryDataIntegrator;->beginBatchRequestForAccount(Ljava/lang/String;)V

    .line 538
    invoke-virtual {v2, v3}, Lcom/amazon/kindle/observablemodel/LibraryModel;->neededItemCategories(Ljava/util/Set;)Ljava/util/List;

    move-result-object v4

    .line 540
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 541
    iget-object v6, p0, Lcom/amazon/kindle/observablemodel/LibraryRepository;->mIntegrator:Lcom/amazon/kindle/observablemodel/LibraryDataIntegrator;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v6, v5, v1}, Lcom/amazon/kindle/observablemodel/LibraryDataIntegrator;->requestItemSetForItemCategory(ILjava/lang/String;)V

    goto :goto_1

    .line 544
    :cond_0
    invoke-virtual {v2, v3}, Lcom/amazon/kindle/observablemodel/LibraryModel;->neededReadingProgress(Ljava/util/Set;)Ljava/util/List;

    move-result-object v4

    .line 546
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 547
    iget-object v6, p0, Lcom/amazon/kindle/observablemodel/LibraryRepository;->mIntegrator:Lcom/amazon/kindle/observablemodel/LibraryDataIntegrator;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v6, v5, v1}, Lcom/amazon/kindle/observablemodel/LibraryDataIntegrator;->requestItemSetForReadingProgress(ILjava/lang/String;)V

    goto :goto_2

    .line 550
    :cond_1
    invoke-virtual {v2, v3}, Lcom/amazon/kindle/observablemodel/LibraryModel;->neededOwnership(Ljava/util/Set;)Ljava/util/List;

    move-result-object v4

    .line 552
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 553
    iget-object v6, p0, Lcom/amazon/kindle/observablemodel/LibraryRepository;->mIntegrator:Lcom/amazon/kindle/observablemodel/LibraryDataIntegrator;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v6, v5, v1}, Lcom/amazon/kindle/observablemodel/LibraryDataIntegrator;->requestItemSetForOwnership(ILjava/lang/String;)V

    goto :goto_3

    .line 556
    :cond_2
    invoke-virtual {v2, v3}, Lcom/amazon/kindle/observablemodel/LibraryModel;->neededAccountTypes(Ljava/util/Set;)Ljava/util/List;

    move-result-object v4

    .line 557
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 558
    iget-object v6, p0, Lcom/amazon/kindle/observablemodel/LibraryRepository;->mIntegrator:Lcom/amazon/kindle/observablemodel/LibraryDataIntegrator;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v6, v5, v1}, Lcom/amazon/kindle/observablemodel/LibraryDataIntegrator;->requestItemSetForAccountType(ILjava/lang/String;)V

    goto :goto_4

    .line 561
    :cond_3
    invoke-virtual {v2, v3}, Lcom/amazon/kindle/observablemodel/LibraryModel;->neededSortType(Ljava/util/Set;)Ljava/util/List;

    move-result-object v4

    .line 562
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "neededSortType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->debugLog(Ljava/lang/String;)V

    .line 564
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 565
    iget-object v6, p0, Lcom/amazon/kindle/observablemodel/LibraryRepository;->mIntegrator:Lcom/amazon/kindle/observablemodel/LibraryDataIntegrator;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v6, v5, v1}, Lcom/amazon/kindle/observablemodel/LibraryDataIntegrator;->requestItemDictionaryForSortType(ILjava/lang/String;)V

    goto :goto_5

    .line 568
    :cond_4
    invoke-virtual {v2, v3}, Lcom/amazon/kindle/observablemodel/LibraryModel;->neededGroupingLeaves(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    .line 569
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 570
    iget-object v5, p0, Lcom/amazon/kindle/observablemodel/LibraryRepository;->mIntegrator:Lcom/amazon/kindle/observablemodel/LibraryDataIntegrator;

    invoke-interface {v5, v4, v1}, Lcom/amazon/kindle/observablemodel/LibraryDataIntegrator;->requestItemToItemDictionary(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 573
    :cond_5
    invoke-static {}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->getLeafNameForCollectionSet()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 574
    iget-object v2, p0, Lcom/amazon/kindle/observablemodel/LibraryRepository;->mIntegrator:Lcom/amazon/kindle/observablemodel/LibraryDataIntegrator;

    invoke-interface {v2, v1}, Lcom/amazon/kindle/observablemodel/LibraryDataIntegrator;->requestCollectionSet(Ljava/lang/String;)V

    .line 577
    :cond_6
    invoke-static {}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->getLeafNameForSampleSet()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 578
    iget-object v2, p0, Lcom/amazon/kindle/observablemodel/LibraryRepository;->mIntegrator:Lcom/amazon/kindle/observablemodel/LibraryDataIntegrator;

    invoke-interface {v2, v1}, Lcom/amazon/kindle/observablemodel/LibraryDataIntegrator;->requestItemSetForSampleMembership(Ljava/lang/String;)V

    .line 581
    :cond_7
    invoke-static {}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->getLeafNameForCarouselSet()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 582
    iget-object v2, p0, Lcom/amazon/kindle/observablemodel/LibraryRepository;->mIntegrator:Lcom/amazon/kindle/observablemodel/LibraryDataIntegrator;

    invoke-interface {v2, v1}, Lcom/amazon/kindle/observablemodel/LibraryDataIntegrator;->requestItemSetForCarousel(Ljava/lang/String;)V

    .line 584
    :cond_8
    iget-object v2, p0, Lcom/amazon/kindle/observablemodel/LibraryRepository;->mIntegrator:Lcom/amazon/kindle/observablemodel/LibraryDataIntegrator;

    invoke-interface {v2, v1}, Lcom/amazon/kindle/observablemodel/LibraryDataIntegrator;->endBatchRequestForAccount(Ljava/lang/String;)V

    .line 590
    iget-object v2, p0, Lcom/amazon/kindle/observablemodel/LibraryRepository;->mIntegrator:Lcom/amazon/kindle/observablemodel/LibraryDataIntegrator;

    invoke-interface {v2, v1}, Lcom/amazon/kindle/observablemodel/LibraryDataIntegrator;->beginBatchRequestForAccount(Ljava/lang/String;)V

    .line 592
    invoke-static {}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->getLeafNameForAudibleCompanionDictionary()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 593
    iget-object v2, p0, Lcom/amazon/kindle/observablemodel/LibraryRepository;->mIntegrator:Lcom/amazon/kindle/observablemodel/LibraryDataIntegrator;

    invoke-interface {v2, v1}, Lcom/amazon/kindle/observablemodel/LibraryDataIntegrator;->requestItemDictionaryForAudibleCompanion(Ljava/lang/String;)V

    .line 596
    :cond_9
    iget-object v2, p0, Lcom/amazon/kindle/observablemodel/LibraryRepository;->mIntegrator:Lcom/amazon/kindle/observablemodel/LibraryDataIntegrator;

    invoke-interface {v2, v1}, Lcom/amazon/kindle/observablemodel/LibraryDataIntegrator;->endBatchRequestForAccount(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method private preprocessFilterValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 212
    invoke-direct {p0, p1}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->trimWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private processChanges(Ljava/util/Vector;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountChangeQueue;",
            ">;)V"
        }
    .end annotation

    .line 476
    iget-object v0, p0, Lcom/amazon/kindle/observablemodel/LibraryRepository;->mAccountToState:Ljava/util/Map;

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

    check-cast v1, Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;

    .line 477
    new-instance v2, Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountChangeQueue;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountChangeQueue;-><init>(Lcom/amazon/kindle/observablemodel/LibraryRepository;Lcom/amazon/kindle/observablemodel/LibraryRepository$1;)V

    .line 479
    iget-object v3, v1, Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;->mChangeListeners:Lcom/amazon/kindle/observablemodel/ListenerSet;

    invoke-virtual {v3}, Lcom/amazon/kindle/observablemodel/ListenerSet;->keySetWaitingForChangeValue()Ljava/util/Set;

    move-result-object v3

    .line 481
    iget-object v4, v1, Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;->mChangeListeners:Lcom/amazon/kindle/observablemodel/ListenerSet;

    new-instance v5, Lcom/amazon/kindle/observablemodel/LibraryRepository$3;

    invoke-direct {v5, p0, v1}, Lcom/amazon/kindle/observablemodel/LibraryRepository$3;-><init>(Lcom/amazon/kindle/observablemodel/LibraryRepository;Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;)V

    new-instance v6, Lcom/amazon/kindle/observablemodel/LibraryRepository$QueueingListenerSetDispatcher;

    .line 486
    invoke-static {v2}, Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountChangeQueue;->access$600(Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountChangeQueue;)Ljava/util/Map;

    move-result-object v7

    invoke-static {v2}, Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountChangeQueue;->access$700(Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountChangeQueue;)Ljava/util/Map;

    move-result-object v8

    invoke-direct {v6, p0, v1, v7, v8}, Lcom/amazon/kindle/observablemodel/LibraryRepository$QueueingListenerSetDispatcher;-><init>(Lcom/amazon/kindle/observablemodel/LibraryRepository;Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;Ljava/util/Map;Ljava/util/Map;)V

    .line 481
    invoke-virtual {v4, v3, v5, v6}, Lcom/amazon/kindle/observablemodel/ListenerSet;->processChangeValues(Ljava/util/Collection;Lcom/amazon/kindle/observablemodel/ListenerSetValueGenerator;Lcom/amazon/kindle/observablemodel/ListenerSetDispatcher;)V

    .line 488
    iget-object v3, v1, Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;->mCountListeners:Lcom/amazon/kindle/observablemodel/ListenerSet;

    invoke-virtual {v3}, Lcom/amazon/kindle/observablemodel/ListenerSet;->keySetWaitingForChangeValue()Ljava/util/Set;

    move-result-object v3

    .line 489
    iget-object v4, v1, Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;->mCountListeners:Lcom/amazon/kindle/observablemodel/ListenerSet;

    new-instance v5, Lcom/amazon/kindle/observablemodel/LibraryRepository$CountUpdateSetValueGenerator;

    invoke-direct {v5, p0, v1}, Lcom/amazon/kindle/observablemodel/LibraryRepository$CountUpdateSetValueGenerator;-><init>(Lcom/amazon/kindle/observablemodel/LibraryRepository;Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;)V

    invoke-virtual {p0, v1, v2}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->newCountDispatcher(Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountChangeQueue;)Lcom/amazon/kindle/observablemodel/LibraryRepository$QueueingListenerSetDispatcher;

    move-result-object v6

    invoke-virtual {v4, v3, v5, v6}, Lcom/amazon/kindle/observablemodel/ListenerSet;->processChangeValues(Ljava/util/Collection;Lcom/amazon/kindle/observablemodel/ListenerSetValueGenerator;Lcom/amazon/kindle/observablemodel/ListenerSetDispatcher;)V

    .line 491
    iget-object v3, v1, Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;->mGroupListeners:Lcom/amazon/kindle/observablemodel/ListenerSet;

    invoke-virtual {v3}, Lcom/amazon/kindle/observablemodel/ListenerSet;->keySetWaitingForChangeValue()Ljava/util/Set;

    move-result-object v3

    .line 492
    iget-object v4, v1, Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;->mGroupListeners:Lcom/amazon/kindle/observablemodel/ListenerSet;

    new-instance v5, Lcom/amazon/kindle/observablemodel/LibraryRepository$GroupUpdateSetValueGenerator;

    invoke-direct {v5, p0, v1}, Lcom/amazon/kindle/observablemodel/LibraryRepository$GroupUpdateSetValueGenerator;-><init>(Lcom/amazon/kindle/observablemodel/LibraryRepository;Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;)V

    invoke-virtual {p0, v1, v2}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->newGroupDispatcher(Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountChangeQueue;)Lcom/amazon/kindle/observablemodel/LibraryRepository$QueueingListenerSetDispatcher;

    move-result-object v1

    invoke-virtual {v4, v3, v5, v1}, Lcom/amazon/kindle/observablemodel/ListenerSet;->processChangeValues(Ljava/util/Collection;Lcom/amazon/kindle/observablemodel/ListenerSetValueGenerator;Lcom/amazon/kindle/observablemodel/ListenerSetDispatcher;)V

    .line 494
    invoke-virtual {p1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private processCurrentValues(Ljava/util/Vector;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountChangeQueue;",
            ">;)V"
        }
    .end annotation

    .line 454
    iget-object v0, p0, Lcom/amazon/kindle/observablemodel/LibraryRepository;->mAccountToState:Ljava/util/Map;

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

    check-cast v1, Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;

    .line 455
    new-instance v2, Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountChangeQueue;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountChangeQueue;-><init>(Lcom/amazon/kindle/observablemodel/LibraryRepository;Lcom/amazon/kindle/observablemodel/LibraryRepository$1;)V

    .line 457
    new-instance v3, Lcom/amazon/kindle/observablemodel/LibraryRepository$QueueingListenerSetDispatcher;

    invoke-static {v2}, Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountChangeQueue;->access$600(Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountChangeQueue;)Ljava/util/Map;

    move-result-object v4

    invoke-static {v2}, Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountChangeQueue;->access$700(Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountChangeQueue;)Ljava/util/Map;

    move-result-object v5

    invoke-direct {v3, p0, v1, v4, v5}, Lcom/amazon/kindle/observablemodel/LibraryRepository$QueueingListenerSetDispatcher;-><init>(Lcom/amazon/kindle/observablemodel/LibraryRepository;Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;Ljava/util/Map;Ljava/util/Map;)V

    .line 458
    iget-object v4, v1, Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;->mChangeListeners:Lcom/amazon/kindle/observablemodel/ListenerSet;

    new-instance v5, Lcom/amazon/kindle/observablemodel/LibraryRepository$2;

    invoke-direct {v5, p0, v1}, Lcom/amazon/kindle/observablemodel/LibraryRepository$2;-><init>(Lcom/amazon/kindle/observablemodel/LibraryRepository;Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;)V

    invoke-virtual {v4, v5, v3}, Lcom/amazon/kindle/observablemodel/ListenerSet;->processCurrentValueListeners(Lcom/amazon/kindle/observablemodel/ListenerSetValueGenerator;Lcom/amazon/kindle/observablemodel/ListenerSetDispatcher;)V

    .line 465
    iget-object v3, v1, Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;->mCountListeners:Lcom/amazon/kindle/observablemodel/ListenerSet;

    new-instance v4, Lcom/amazon/kindle/observablemodel/LibraryRepository$CountCurrentSetValueGenerator;

    invoke-direct {v4, p0, v1}, Lcom/amazon/kindle/observablemodel/LibraryRepository$CountCurrentSetValueGenerator;-><init>(Lcom/amazon/kindle/observablemodel/LibraryRepository;Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;)V

    invoke-virtual {p0, v1, v2}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->newCountDispatcher(Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountChangeQueue;)Lcom/amazon/kindle/observablemodel/LibraryRepository$QueueingListenerSetDispatcher;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/amazon/kindle/observablemodel/ListenerSet;->processCurrentValueListeners(Lcom/amazon/kindle/observablemodel/ListenerSetValueGenerator;Lcom/amazon/kindle/observablemodel/ListenerSetDispatcher;)V

    .line 467
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "process Current value on groups "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;->mGroupListeners:Lcom/amazon/kindle/observablemodel/ListenerSet;

    invoke-virtual {v4}, Lcom/amazon/kindle/observablemodel/ListenerSet;->keySetWaitingForInitialValue()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->debugLog(Ljava/lang/String;)V

    .line 469
    iget-object v3, v1, Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;->mGroupListeners:Lcom/amazon/kindle/observablemodel/ListenerSet;

    new-instance v4, Lcom/amazon/kindle/observablemodel/LibraryRepository$GroupCurrentSetValueGenerator;

    invoke-direct {v4, p0, v1}, Lcom/amazon/kindle/observablemodel/LibraryRepository$GroupCurrentSetValueGenerator;-><init>(Lcom/amazon/kindle/observablemodel/LibraryRepository;Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;)V

    invoke-virtual {p0, v1, v2}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->newGroupDispatcher(Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountChangeQueue;)Lcom/amazon/kindle/observablemodel/LibraryRepository$QueueingListenerSetDispatcher;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Lcom/amazon/kindle/observablemodel/ListenerSet;->processCurrentValueListeners(Lcom/amazon/kindle/observablemodel/ListenerSetValueGenerator;Lcom/amazon/kindle/observablemodel/ListenerSetDispatcher;)V

    .line 471
    invoke-virtual {p1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private processQueuedChangesOnListenerThread(Ljava/util/Vector;Lcom/amazon/kindle/observablemodel/OnChangesProcessedListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountChangeQueue;",
            ">;",
            "Lcom/amazon/kindle/observablemodel/OnChangesProcessedListener;",
            ")V"
        }
    .end annotation

    .line 371
    iget-object v0, p0, Lcom/amazon/kindle/observablemodel/LibraryRepository;->mListenerHandler:Lcom/amazon/kindle/observablemodel/IHandler;

    new-instance v1, Lcom/amazon/kindle/observablemodel/LibraryRepository$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/kindle/observablemodel/LibraryRepository$1;-><init>(Lcom/amazon/kindle/observablemodel/LibraryRepository;Ljava/util/Vector;Lcom/amazon/kindle/observablemodel/OnChangesProcessedListener;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/observablemodel/IHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private removeFromCollections(Ljava/util/Set;Lcom/amazon/kindle/observablemodel/LibraryModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ">;",
            "Lcom/amazon/kindle/observablemodel/LibraryModel;",
            ")V"
        }
    .end annotation

    .line 1083
    invoke-static {}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->getLeafNameForCollectionSet()Ljava/lang/String;

    move-result-object v0

    .line 1085
    invoke-virtual {p2, v0, p1}, Lcom/amazon/kindle/observablemodel/LibraryModel;->removeItemsFromLeafSet(Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method

.method private trimWhitespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 198
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 201
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v1, v0, :cond_1

    add-int/lit8 v2, v0, -0x1

    .line 204
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    if-gtz v1, :cond_2

    .line 208
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_3

    :cond_2
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_3
    return-object p1
.end method


# virtual methods
.method public addToAccountType(ILjava/util/Set;Ljava/lang/String;)V
    .locals 3
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

    .line 903
    invoke-direct {p0, p3}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->getModel(Ljava/lang/String;)Lcom/amazon/kindle/observablemodel/LibraryModel;

    move-result-object p3

    if-nez p3, :cond_0

    return-void

    .line 908
    :cond_0
    invoke-static {p1}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->getLeafNameForAccountType(I)Ljava/lang/String;

    move-result-object v0

    .line 910
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AccountType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",leaf:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->debugLog(Ljava/lang/String;Ljava/util/Set;)V

    .line 912
    invoke-virtual {p3, v0, p2}, Lcom/amazon/kindle/observablemodel/LibraryModel;->addItemsToLeafSet(Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method

.method public addToAudibleCompanion(Ljava/util/Set;Ljava/lang/String;)V
    .locals 3
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

    .line 1198
    invoke-direct {p0, p2}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->getModel(Ljava/lang/String;)Lcom/amazon/kindle/observablemodel/LibraryModel;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 1203
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->getLeafNameForAudibleCompanionDictionary()Ljava/lang/String;

    move-result-object v0

    .line 1205
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1206
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/observablemodel/ItemID;

    .line 1207
    invoke-virtual {v1, v2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1209
    :cond_1
    invoke-virtual {p2, v0, v1}, Lcom/amazon/kindle/observablemodel/LibraryModel;->addItemItemsInLeafDictionary(Ljava/lang/String;Ljava/util/Map;)V

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

    .line 1236
    invoke-direct {p0, p2}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->getModel(Ljava/lang/String;)Lcom/amazon/kindle/observablemodel/LibraryModel;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 1241
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->getLeafNameForCarouselSet()Ljava/lang/String;

    move-result-object v0

    .line 1243
    invoke-virtual {p2, v0, p1}, Lcom/amazon/kindle/observablemodel/LibraryModel;->addItemsToLeafSet(Ljava/lang/String;Ljava/util/Set;)V

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

    const/4 v0, 0x0

    .line 1119
    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->addToCollectionMembership(Ljava/util/Map;Ljava/lang/String;Z)V

    return-void
.end method

.method public addToFalkorMembership(Ljava/util/Map;Ljava/lang/String;)V
    .locals 3
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

    .line 1045
    invoke-direct {p0, p2}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->getModel(Ljava/lang/String;)Lcom/amazon/kindle/observablemodel/LibraryModel;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 1050
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->getLeafNameForFalkorDictionary()Ljava/lang/String;

    move-result-object v0

    .line 1052
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Falkor membership leaf:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->debugLog(Ljava/lang/String;Ljava/util/Map;)V

    .line 1054
    invoke-virtual {p2, v0, p1}, Lcom/amazon/kindle/observablemodel/LibraryModel;->addItemItemsInLeafDictionary(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public addToItemCategory(ILjava/util/Set;Ljava/lang/String;)V
    .locals 3
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

    .line 783
    invoke-direct {p0, p3}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->getModel(Ljava/lang/String;)Lcom/amazon/kindle/observablemodel/LibraryModel;

    move-result-object p3

    if-nez p3, :cond_0

    return-void

    .line 788
    :cond_0
    invoke-static {p1}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->getLeafNameForCategory(I)Ljava/lang/String;

    move-result-object v0

    .line 790
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Category:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",leaf:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->debugLog(Ljava/lang/String;Ljava/util/Set;)V

    .line 792
    invoke-virtual {p3, v0, p2}, Lcom/amazon/kindle/observablemodel/LibraryModel;->addItemsToLeafSet(Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method

.method public addToItemToItemDictionary(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 2
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

    .line 1267
    invoke-direct {p0, p3}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->getAccountState(Ljava/lang/String;)Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;

    move-result-object p3

    iget-object p3, p3, Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;->mLibraryModel:Lcom/amazon/kindle/observablemodel/LibraryModel;

    .line 1269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "item to item dictionary leaf:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->debugLog(Ljava/lang/String;Ljava/util/Map;)V

    .line 1271
    invoke-virtual {p3, p1, p2}, Lcom/amazon/kindle/observablemodel/LibraryModel;->addItemItemsInLeafDictionary(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public addToOwnership(ILjava/util/Set;Ljava/lang/String;)V
    .locals 3
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

    .line 863
    invoke-direct {p0, p3}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->getModel(Ljava/lang/String;)Lcom/amazon/kindle/observablemodel/LibraryModel;

    move-result-object p3

    if-nez p3, :cond_0

    return-void

    .line 868
    :cond_0
    invoke-static {p1}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->getLeafNameForOwnership(I)Ljava/lang/String;

    move-result-object v0

    .line 870
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ownership:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",leaf:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->debugLog(Ljava/lang/String;Ljava/util/Set;)V

    .line 872
    invoke-virtual {p3, v0, p2}, Lcom/amazon/kindle/observablemodel/LibraryModel;->addItemsToLeafSet(Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method

.method public addToRawStringData(Lcom/amazon/kindle/observablemodel/RawDictionaryType;Ljava/util/Map;Ljava/lang/String;)V
    .locals 3
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

    .line 744
    invoke-direct {p0, p3}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->getModel(Ljava/lang/String;)Lcom/amazon/kindle/observablemodel/LibraryModel;

    move-result-object p3

    if-nez p3, :cond_0

    return-void

    .line 749
    :cond_0
    invoke-static {p1}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->getLeafNameForRawDictionary(Lcom/amazon/kindle/observablemodel/RawDictionaryType;)Ljava/lang/String;

    move-result-object v0

    .line 751
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Raw Type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",leaf:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->debugLog(Ljava/lang/String;Ljava/util/Map;)V

    .line 752
    invoke-virtual {p3, v0, p2}, Lcom/amazon/kindle/observablemodel/LibraryModel;->addItemStringsInLeafDictionary(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public addToReadingProgress(ILjava/util/Set;Ljava/lang/String;)V
    .locals 3
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

    .line 823
    invoke-direct {p0, p3}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->getModel(Ljava/lang/String;)Lcom/amazon/kindle/observablemodel/LibraryModel;

    move-result-object p3

    if-nez p3, :cond_0

    return-void

    .line 828
    :cond_0
    invoke-static {p1}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->getLeafNameForReadingProgress(I)Ljava/lang/String;

    move-result-object v0

    .line 830
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reading Progress:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",leaf:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->debugLog(Ljava/lang/String;Ljava/util/Set;)V

    .line 832
    invoke-virtual {p3, v0, p2}, Lcom/amazon/kindle/observablemodel/LibraryModel;->addItemsToLeafSet(Ljava/lang/String;Ljava/util/Set;)V

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

    .line 1157
    invoke-direct {p0, p2}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->getModel(Ljava/lang/String;)Lcom/amazon/kindle/observablemodel/LibraryModel;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 1162
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->getLeafNameForSampleSet()Ljava/lang/String;

    move-result-object v0

    .line 1164
    invoke-virtual {p2, v0, p1}, Lcom/amazon/kindle/observablemodel/LibraryModel;->addItemsToLeafSet(Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method

.method public addToSortTypeDate(ILjava/util/Map;Ljava/lang/String;)V
    .locals 3
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

    .line 1005
    invoke-direct {p0, p3}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->getModel(Ljava/lang/String;)Lcom/amazon/kindle/observablemodel/LibraryModel;

    move-result-object p3

    if-nez p3, :cond_0

    return-void

    .line 1010
    :cond_0
    invoke-static {p1}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->getLeafNameForSortType(I)Ljava/lang/String;

    move-result-object v0

    .line 1012
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sort Type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",leaf:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->debugLog(Ljava/lang/String;Ljava/util/Map;)V

    .line 1014
    invoke-virtual {p3, v0, p2}, Lcom/amazon/kindle/observablemodel/LibraryModel;->addItemDatesInLeafDictionary(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public addToSortTypeNumber(ILjava/util/Map;Ljava/lang/String;)V
    .locals 3
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

    .line 943
    invoke-direct {p0, p3}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->getModel(Ljava/lang/String;)Lcom/amazon/kindle/observablemodel/LibraryModel;

    move-result-object p3

    if-nez p3, :cond_0

    return-void

    .line 948
    :cond_0
    invoke-static {p1}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->getLeafNameForSortType(I)Ljava/lang/String;

    move-result-object v0

    .line 950
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sort Type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",leaf:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->debugLog(Ljava/lang/String;Ljava/util/Map;)V

    .line 952
    invoke-virtual {p3, v0, p2}, Lcom/amazon/kindle/observablemodel/LibraryModel;->addItemIntegersInLeafDictionary(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public addToSortTypeString(ILjava/util/Map;Ljava/lang/String;)V
    .locals 3
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

    .line 974
    invoke-direct {p0, p3}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->getModel(Ljava/lang/String;)Lcom/amazon/kindle/observablemodel/LibraryModel;

    move-result-object p3

    if-nez p3, :cond_0

    return-void

    .line 979
    :cond_0
    invoke-static {p1}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->getLeafNameForSortType(I)Ljava/lang/String;

    move-result-object v0

    .line 981
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sort Type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",leaf:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->debugLog(Ljava/lang/String;Ljava/util/Map;)V

    .line 983
    invoke-virtual {p3, v0, p2}, Lcom/amazon/kindle/observablemodel/LibraryModel;->addItemStringsInLeafDictionary(Ljava/lang/String;Ljava/util/Map;)V

    .line 985
    invoke-static {p1}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->getLeafNameForSortCollation(I)Ljava/lang/String;

    move-result-object p1

    .line 987
    invoke-virtual {p3, p1, p2}, Lcom/amazon/kindle/observablemodel/LibraryModel;->addItemStringsInLeafDictionary(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public clearAccountState(Ljava/lang/String;)V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/amazon/kindle/observablemodel/LibraryRepository;->mAccountToState:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public flushChanges()V
    .locals 1

    const/4 v0, 0x0

    .line 503
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->flushChanges(Lcom/amazon/kindle/observablemodel/OnChangesProcessedListener;)V

    return-void
.end method

.method public flushChanges(Lcom/amazon/kindle/observablemodel/OnChangesProcessedListener;)V
    .locals 5

    .line 508
    iget-object v0, p0, Lcom/amazon/kindle/observablemodel/LibraryRepository;->mAccountToState:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 509
    iget-object v2, p0, Lcom/amazon/kindle/observablemodel/LibraryRepository;->mAccountToState:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;

    .line 511
    new-instance v3, Ljava/util/HashSet;

    iget-object v4, v2, Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;->mItemDetailRequestQueue:Ljava/util/Set;

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 513
    iget-object v2, v2, Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;->mItemDetailRequestQueue:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 515
    iget-object v2, p0, Lcom/amazon/kindle/observablemodel/LibraryRepository;->mIntegrator:Lcom/amazon/kindle/observablemodel/LibraryDataIntegrator;

    invoke-interface {v2, v3, v1}, Lcom/amazon/kindle/observablemodel/LibraryDataIntegrator;->requestItemDetail(Ljava/util/Set;Ljava/lang/String;)V

    goto :goto_0

    .line 519
    :cond_0
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 520
    invoke-direct {p0, v0}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->processChanges(Ljava/util/Vector;)V

    .line 521
    invoke-direct {p0, v0}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->processCurrentValues(Ljava/util/Vector;)V

    .line 524
    invoke-direct {p0, v0, p1}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->processQueuedChangesOnListenerThread(Ljava/util/Vector;Lcom/amazon/kindle/observablemodel/OnChangesProcessedListener;)V

    return-void
.end method

.method public flushDataIntegratorChanges()V
    .locals 0

    .line 499
    invoke-direct {p0}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->handleLeafContainers()V

    return-void
.end method

.method public modifyPresentationAndCountListeners(Lcom/amazon/kindle/observablemodel/LibraryPresentationChangeListener;Lcom/amazon/kindle/observablemodel/LibraryContainerCountListener;Ljava/lang/String;Lcom/amazon/kindle/observablemodel/ModelContent;Lcom/amazon/kindle/observablemodel/ModelFilter;Lcom/amazon/kindle/observablemodel/ModelSorting;)V
    .locals 2

    .line 135
    invoke-direct {p0, p3}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->getAccountState(Ljava/lang/String;)Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;

    move-result-object v0

    .line 137
    iget-object v1, v0, Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;->mContentFilterSet:Ljava/util/Set;

    invoke-virtual {p4, v1}, Lcom/amazon/kindle/observablemodel/ModelContent;->modelContentWithIntersectingSet(Ljava/util/Set;)Lcom/amazon/kindle/observablemodel/ModelContent;

    move-result-object p4

    .line 140
    iget-object v1, v0, Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;->mLibraryModel:Lcom/amazon/kindle/observablemodel/LibraryModel;

    invoke-virtual {v1, p4, p5, p6}, Lcom/amazon/kindle/observablemodel/LibraryModel;->containerIDForPresentationOptions(Lcom/amazon/kindle/observablemodel/ModelContent;Lcom/amazon/kindle/observablemodel/ModelFilter;Lcom/amazon/kindle/observablemodel/ModelSorting;)Lcom/amazon/kindle/observablemodel/ContainerID;

    move-result-object p6

    .line 141
    invoke-virtual {p0, p1, p3}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->removePresentationListener(Lcom/amazon/kindle/observablemodel/LibraryPresentationChangeListener;Ljava/lang/String;)V

    .line 143
    iget-object v1, v0, Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;->mChangeListeners:Lcom/amazon/kindle/observablemodel/ListenerSet;

    invoke-virtual {v1, p6, p1}, Lcom/amazon/kindle/observablemodel/ListenerSet;->addListener(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 146
    iget-object p1, v0, Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;->mLibraryModel:Lcom/amazon/kindle/observablemodel/LibraryModel;

    invoke-virtual {p1, p4, p5}, Lcom/amazon/kindle/observablemodel/LibraryModel;->containerIDForCountOptions(Lcom/amazon/kindle/observablemodel/ModelContent;Lcom/amazon/kindle/observablemodel/ModelFilter;)Lcom/amazon/kindle/observablemodel/ContainerID;

    move-result-object p1

    .line 147
    invoke-virtual {p0, p2, p3}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->removeContainerCountListener(Lcom/amazon/kindle/observablemodel/LibraryContainerCountListener;Ljava/lang/String;)V

    .line 149
    iget-object p3, v0, Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;->mCountListeners:Lcom/amazon/kindle/observablemodel/ListenerSet;

    invoke-virtual {p3, p1, p2}, Lcom/amazon/kindle/observablemodel/ListenerSet;->addListener(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 152
    invoke-virtual {p0}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->flushChanges()V

    .line 154
    invoke-direct {p0}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->handleLeafContainers()V

    return-void
.end method

.method newCountDispatcher(Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountChangeQueue;)Lcom/amazon/kindle/observablemodel/LibraryRepository$QueueingListenerSetDispatcher;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;",
            "Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountChangeQueue;",
            ")",
            "Lcom/amazon/kindle/observablemodel/LibraryRepository$QueueingListenerSetDispatcher<",
            "Lcom/amazon/kindle/observablemodel/ModelCountUpdate;",
            "Lcom/amazon/kindle/observablemodel/LibraryContainerCountListener;",
            ">;"
        }
    .end annotation

    .line 411
    new-instance v0, Lcom/amazon/kindle/observablemodel/LibraryRepository$QueueingListenerSetDispatcher;

    invoke-static {p2}, Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountChangeQueue;->access$000(Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountChangeQueue;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p2}, Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountChangeQueue;->access$100(Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountChangeQueue;)Ljava/util/Map;

    move-result-object p2

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/amazon/kindle/observablemodel/LibraryRepository$QueueingListenerSetDispatcher;-><init>(Lcom/amazon/kindle/observablemodel/LibraryRepository;Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;Ljava/util/Map;Ljava/util/Map;)V

    return-object v0
.end method

.method newGroupDispatcher(Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountChangeQueue;)Lcom/amazon/kindle/observablemodel/LibraryRepository$QueueingListenerSetDispatcher;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;",
            "Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountChangeQueue;",
            ")",
            "Lcom/amazon/kindle/observablemodel/LibraryRepository$QueueingListenerSetDispatcher<",
            "Lcom/amazon/kindle/observablemodel/ModelGroupUpdate;",
            "Lcom/amazon/kindle/observablemodel/LibraryGroupListener;",
            ">;"
        }
    .end annotation

    .line 450
    new-instance v0, Lcom/amazon/kindle/observablemodel/LibraryRepository$QueueingListenerSetDispatcher;

    invoke-static {p2}, Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountChangeQueue;->access$300(Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountChangeQueue;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p2}, Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountChangeQueue;->access$400(Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountChangeQueue;)Ljava/util/Map;

    move-result-object p2

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/amazon/kindle/observablemodel/LibraryRepository$QueueingListenerSetDispatcher;-><init>(Lcom/amazon/kindle/observablemodel/LibraryRepository;Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;Ljava/util/Map;Ljava/util/Map;)V

    return-object v0
.end method

.method public onItemDetail(Ljava/util/Map;Ljava/lang/String;)V
    .locals 2
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

    .line 668
    iget-object v0, p0, Lcom/amazon/kindle/observablemodel/LibraryRepository;->mAccountToState:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;

    .line 669
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 671
    iget-object p2, p2, Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;->mItemDetailListeners:Lcom/amazon/kindle/observablemodel/ListenerSet;

    new-instance v1, Lcom/amazon/kindle/observablemodel/LibraryRepository$4;

    invoke-direct {v1, p0, v0}, Lcom/amazon/kindle/observablemodel/LibraryRepository$4;-><init>(Lcom/amazon/kindle/observablemodel/LibraryRepository;Ljava/util/Vector;)V

    invoke-virtual {p2, p1, v1}, Lcom/amazon/kindle/observablemodel/ListenerSet;->processValueListeners(Ljava/util/Map;Lcom/amazon/kindle/observablemodel/ListenerSetDispatcher;)V

    .line 685
    iget-object p1, p0, Lcom/amazon/kindle/observablemodel/LibraryRepository;->mListenerHandler:Lcom/amazon/kindle/observablemodel/IHandler;

    new-instance p2, Lcom/amazon/kindle/observablemodel/LibraryRepository$5;

    invoke-direct {p2, p0, v0}, Lcom/amazon/kindle/observablemodel/LibraryRepository$5;-><init>(Lcom/amazon/kindle/observablemodel/LibraryRepository;Ljava/util/Vector;)V

    invoke-interface {p1, p2}, Lcom/amazon/kindle/observablemodel/IHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public preloadKnownLeaves(Ljava/lang/String;)V
    .locals 10

    .line 601
    invoke-direct {p0, p1}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->getAccountState(Ljava/lang/String;)Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;

    move-result-object p1

    .line 603
    iget-boolean v0, p1, Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;->mHasPreloaded:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 607
    iput-boolean v0, p1, Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;->mHasPreloaded:Z

    .line 609
    iget-object p1, p1, Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;->mLibraryModel:Lcom/amazon/kindle/observablemodel/LibraryModel;

    .line 611
    invoke-static {v0}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->getLeafNameForCategory(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazon/kindle/observablemodel/LibraryModel;->createLeafSet(Ljava/lang/String;)V

    const/4 v1, 0x2

    .line 612
    invoke-static {v1}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->getLeafNameForCategory(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/amazon/kindle/observablemodel/LibraryModel;->createLeafSet(Ljava/lang/String;)V

    const/4 v2, 0x3

    .line 613
    invoke-static {v2}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->getLeafNameForCategory(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/amazon/kindle/observablemodel/LibraryModel;->createLeafSet(Ljava/lang/String;)V

    const/4 v3, 0x4

    .line 614
    invoke-static {v3}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->getLeafNameForCategory(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/amazon/kindle/observablemodel/LibraryModel;->createLeafSet(Ljava/lang/String;)V

    const/4 v4, 0x6

    .line 615
    invoke-static {v4}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->getLeafNameForCategory(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/amazon/kindle/observablemodel/LibraryModel;->createLeafSet(Ljava/lang/String;)V

    const/4 v5, 0x7

    .line 616
    invoke-static {v5}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->getLeafNameForCategory(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/amazon/kindle/observablemodel/LibraryModel;->createLeafSet(Ljava/lang/String;)V

    const/16 v6, 0x8

    .line 617
    invoke-static {v6}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->getLeafNameForCategory(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/amazon/kindle/observablemodel/LibraryModel;->createLeafSet(Ljava/lang/String;)V

    const/16 v7, 0x9

    .line 618
    invoke-static {v7}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->getLeafNameForCategory(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Lcom/amazon/kindle/observablemodel/LibraryModel;->createLeafSet(Ljava/lang/String;)V

    const/16 v8, 0xa

    .line 619
    invoke-static {v8}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->getLeafNameForCategory(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Lcom/amazon/kindle/observablemodel/LibraryModel;->createLeafSet(Ljava/lang/String;)V

    const/16 v9, 0xd

    .line 620
    invoke-static {v9}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->getLeafNameForCategory(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Lcom/amazon/kindle/observablemodel/LibraryModel;->createLeafSet(Ljava/lang/String;)V

    const/16 v9, 0xe

    .line 621
    invoke-static {v9}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->getLeafNameForCategory(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Lcom/amazon/kindle/observablemodel/LibraryModel;->createLeafSet(Ljava/lang/String;)V

    .line 623
    invoke-static {v0}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->getLeafNameForReadingProgress(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Lcom/amazon/kindle/observablemodel/LibraryModel;->createLeafSet(Ljava/lang/String;)V

    .line 624
    invoke-static {v1}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->getLeafNameForReadingProgress(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Lcom/amazon/kindle/observablemodel/LibraryModel;->createLeafSet(Ljava/lang/String;)V

    .line 625
    invoke-static {v2}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->getLeafNameForReadingProgress(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Lcom/amazon/kindle/observablemodel/LibraryModel;->createLeafSet(Ljava/lang/String;)V

    .line 627
    invoke-static {v0}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->getLeafNameForOwnership(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Lcom/amazon/kindle/observablemodel/LibraryModel;->createLeafSet(Ljava/lang/String;)V

    .line 628
    invoke-static {v1}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->getLeafNameForOwnership(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Lcom/amazon/kindle/observablemodel/LibraryModel;->createLeafSet(Ljava/lang/String;)V

    .line 629
    invoke-static {v2}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->getLeafNameForOwnership(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Lcom/amazon/kindle/observablemodel/LibraryModel;->createLeafSet(Ljava/lang/String;)V

    .line 630
    invoke-static {v3}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->getLeafNameForOwnership(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Lcom/amazon/kindle/observablemodel/LibraryModel;->createLeafSet(Ljava/lang/String;)V

    const/4 v9, 0x5

    .line 631
    invoke-static {v9}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->getLeafNameForOwnership(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Lcom/amazon/kindle/observablemodel/LibraryModel;->createLeafSet(Ljava/lang/String;)V

    .line 632
    invoke-static {v4}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->getLeafNameForOwnership(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/amazon/kindle/observablemodel/LibraryModel;->createLeafSet(Ljava/lang/String;)V

    .line 633
    invoke-static {v5}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->getLeafNameForOwnership(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/amazon/kindle/observablemodel/LibraryModel;->createLeafSet(Ljava/lang/String;)V

    .line 634
    invoke-static {v6}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->getLeafNameForOwnership(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/amazon/kindle/observablemodel/LibraryModel;->createLeafSet(Ljava/lang/String;)V

    .line 635
    invoke-static {v7}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->getLeafNameForOwnership(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/amazon/kindle/observablemodel/LibraryModel;->createLeafSet(Ljava/lang/String;)V

    .line 636
    invoke-static {v8}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->getLeafNameForOwnership(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/amazon/kindle/observablemodel/LibraryModel;->createLeafSet(Ljava/lang/String;)V

    .line 638
    invoke-static {v0}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->getLeafNameForAccountType(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/amazon/kindle/observablemodel/LibraryModel;->createLeafSet(Ljava/lang/String;)V

    .line 639
    invoke-static {v1}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->getLeafNameForAccountType(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/amazon/kindle/observablemodel/LibraryModel;->createLeafSet(Ljava/lang/String;)V

    const/16 v4, 0x10

    .line 641
    invoke-static {v4}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->getLeafNameForSortCollation(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/amazon/kindle/observablemodel/LibraryModel;->createLeafDictionary(Ljava/lang/String;)V

    const/16 v5, 0x11

    .line 642
    invoke-static {v5}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->getLeafNameForSortCollation(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/amazon/kindle/observablemodel/LibraryModel;->createLeafDictionary(Ljava/lang/String;)V

    const/4 v6, 0x0

    .line 644
    invoke-static {v6}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->getLeafNameForSortType(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/amazon/kindle/observablemodel/LibraryModel;->createLeafDictionary(Ljava/lang/String;)V

    .line 645
    invoke-static {v0}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->getLeafNameForSortType(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/observablemodel/LibraryModel;->createLeafDictionary(Ljava/lang/String;)V

    .line 646
    invoke-static {v1}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->getLeafNameForSortType(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/observablemodel/LibraryModel;->createLeafDictionary(Ljava/lang/String;)V

    .line 647
    invoke-static {v4}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->getLeafNameForSortType(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/observablemodel/LibraryModel;->createLeafDictionary(Ljava/lang/String;)V

    .line 648
    invoke-static {v5}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->getLeafNameForSortType(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/observablemodel/LibraryModel;->createLeafDictionary(Ljava/lang/String;)V

    const/16 v0, 0x20

    .line 649
    invoke-static {v0}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->getLeafNameForSortType(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/observablemodel/LibraryModel;->createLeafDictionary(Ljava/lang/String;)V

    const/16 v0, 0x21

    .line 650
    invoke-static {v0}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->getLeafNameForSortType(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/observablemodel/LibraryModel;->createLeafDictionary(Ljava/lang/String;)V

    const/16 v0, 0x22

    .line 651
    invoke-static {v0}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->getLeafNameForSortType(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/observablemodel/LibraryModel;->createLeafDictionary(Ljava/lang/String;)V

    const/16 v0, 0x23

    .line 652
    invoke-static {v0}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->getLeafNameForSortType(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/observablemodel/LibraryModel;->createLeafDictionary(Ljava/lang/String;)V

    .line 654
    invoke-static {}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->getLeafNameForSeriesToNarrative()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/observablemodel/LibraryModel;->createLeafDictionary(Ljava/lang/String;)V

    .line 655
    invoke-static {v1}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->getLeafNameForGroup(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/observablemodel/LibraryModel;->createLeafDictionary(Ljava/lang/String;)V

    .line 657
    invoke-static {v3}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->getLeafNameForGroup(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/observablemodel/LibraryModel;->createLeafDictionary(Ljava/lang/String;)V

    .line 658
    invoke-static {v2}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->getLeafNameForGroup(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/observablemodel/LibraryModel;->createLeafDictionary(Ljava/lang/String;)V

    .line 660
    invoke-static {}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->getLeafNameForSampleSet()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/observablemodel/LibraryModel;->createLeafSet(Ljava/lang/String;)V

    .line 661
    invoke-static {}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->getLeafNameForCarouselSet()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/observablemodel/LibraryModel;->createLeafSet(Ljava/lang/String;)V

    .line 662
    invoke-static {}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->getLeafNameForAudibleCompanionDictionary()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/observablemodel/LibraryModel;->createLeafDictionary(Ljava/lang/String;)V

    .line 664
    invoke-direct {p0}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->handleLeafContainers()V

    return-void
.end method

.method public registerContainerCountListener(Lcom/amazon/kindle/observablemodel/LibraryContainerCountListener;Ljava/lang/String;Lcom/amazon/kindle/observablemodel/ModelContent;Lcom/amazon/kindle/observablemodel/ModelFilter;Lcom/amazon/kindle/observablemodel/ModelSorting;)V
    .locals 1

    .line 162
    invoke-direct {p0, p2}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->getAccountState(Ljava/lang/String;)Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;

    move-result-object p5

    .line 164
    iget-object v0, p5, Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;->mContentFilterSet:Ljava/util/Set;

    invoke-virtual {p3, v0}, Lcom/amazon/kindle/observablemodel/ModelContent;->modelContentWithIntersectingSet(Ljava/util/Set;)Lcom/amazon/kindle/observablemodel/ModelContent;

    move-result-object p3

    .line 166
    iget-object v0, p5, Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;->mLibraryModel:Lcom/amazon/kindle/observablemodel/LibraryModel;

    invoke-virtual {v0, p3, p4}, Lcom/amazon/kindle/observablemodel/LibraryModel;->containerIDForCountOptions(Lcom/amazon/kindle/observablemodel/ModelContent;Lcom/amazon/kindle/observablemodel/ModelFilter;)Lcom/amazon/kindle/observablemodel/ContainerID;

    move-result-object p3

    .line 167
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->removeContainerCountListener(Lcom/amazon/kindle/observablemodel/LibraryContainerCountListener;Ljava/lang/String;)V

    .line 168
    iget-object p2, p5, Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;->mCountListeners:Lcom/amazon/kindle/observablemodel/ListenerSet;

    invoke-virtual {p2, p3, p1}, Lcom/amazon/kindle/observablemodel/ListenerSet;->addListener(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 169
    invoke-virtual {p0}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->flushChanges()V

    return-void
.end method

.method public registerGroupListener(Lcom/amazon/kindle/observablemodel/LibraryGroupListener;Ljava/lang/String;Lcom/amazon/kindle/observablemodel/ItemID;Lcom/amazon/kindle/observablemodel/ModelContent;Lcom/amazon/kindle/observablemodel/ModelFilter;Lcom/amazon/kindle/observablemodel/ModelSorting;)V
    .locals 1

    .line 178
    invoke-direct {p0, p2}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->getAccountState(Ljava/lang/String;)Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;

    move-result-object p3

    .line 180
    iget-object v0, p3, Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;->mContentFilterSet:Ljava/util/Set;

    invoke-virtual {p4, v0}, Lcom/amazon/kindle/observablemodel/ModelContent;->modelContentWithIntersectingSet(Ljava/util/Set;)Lcom/amazon/kindle/observablemodel/ModelContent;

    move-result-object p4

    .line 182
    iget-object v0, p3, Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;->mLibraryModel:Lcom/amazon/kindle/observablemodel/LibraryModel;

    invoke-virtual {v0, p4, p5, p6}, Lcom/amazon/kindle/observablemodel/LibraryModel;->containerIDForGroupOptions(Lcom/amazon/kindle/observablemodel/ModelContent;Lcom/amazon/kindle/observablemodel/ModelFilter;Lcom/amazon/kindle/observablemodel/ModelSorting;)Lcom/amazon/kindle/observablemodel/ContainerID;

    move-result-object p4

    .line 183
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->removeGroupListener(Lcom/amazon/kindle/observablemodel/LibraryGroupListener;Ljava/lang/String;)V

    .line 184
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Registering group listener "

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->debugLog(Ljava/lang/String;)V

    .line 185
    iget-object p2, p3, Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;->mGroupListeners:Lcom/amazon/kindle/observablemodel/ListenerSet;

    invoke-virtual {p2, p4, p1}, Lcom/amazon/kindle/observablemodel/ListenerSet;->addListener(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 186
    invoke-virtual {p0}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->flushChanges()V

    return-void
.end method

.method public registerItemDetailListener(Lcom/amazon/kindle/observablemodel/LibraryItemDetailListener;Ljava/lang/String;Lcom/amazon/kindle/observablemodel/ItemID;)V
    .locals 1

    .line 229
    invoke-direct {p0, p2}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->getAccountState(Ljava/lang/String;)Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;

    move-result-object p2

    .line 231
    iget-object v0, p2, Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;->mItemDetailListeners:Lcom/amazon/kindle/observablemodel/ListenerSet;

    invoke-virtual {v0, p3, p1}, Lcom/amazon/kindle/observablemodel/ListenerSet;->addListener(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 232
    iget-object p1, p2, Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;->mItemDetailRequestQueue:Ljava/util/Set;

    invoke-interface {p1, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerPresentationAndCountListeners(Lcom/amazon/kindle/observablemodel/LibraryPresentationChangeListener;Lcom/amazon/kindle/observablemodel/LibraryContainerCountListener;Ljava/lang/String;Lcom/amazon/kindle/observablemodel/ModelContent;Lcom/amazon/kindle/observablemodel/ModelFilter;Lcom/amazon/kindle/observablemodel/ModelSorting;)V
    .locals 1

    .line 111
    invoke-direct {p0, p3}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->getAccountState(Ljava/lang/String;)Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;

    move-result-object p3

    .line 113
    iget-object v0, p3, Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;->mContentFilterSet:Ljava/util/Set;

    invoke-virtual {p4, v0}, Lcom/amazon/kindle/observablemodel/ModelContent;->modelContentWithIntersectingSet(Ljava/util/Set;)Lcom/amazon/kindle/observablemodel/ModelContent;

    move-result-object p4

    .line 116
    iget-object v0, p3, Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;->mLibraryModel:Lcom/amazon/kindle/observablemodel/LibraryModel;

    invoke-virtual {v0, p4, p5, p6}, Lcom/amazon/kindle/observablemodel/LibraryModel;->containerIDForPresentationOptions(Lcom/amazon/kindle/observablemodel/ModelContent;Lcom/amazon/kindle/observablemodel/ModelFilter;Lcom/amazon/kindle/observablemodel/ModelSorting;)Lcom/amazon/kindle/observablemodel/ContainerID;

    move-result-object p6

    .line 117
    iget-object v0, p3, Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;->mChangeListeners:Lcom/amazon/kindle/observablemodel/ListenerSet;

    invoke-virtual {v0, p6, p1}, Lcom/amazon/kindle/observablemodel/ListenerSet;->addListener(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 120
    iget-object p1, p3, Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;->mLibraryModel:Lcom/amazon/kindle/observablemodel/LibraryModel;

    invoke-virtual {p1, p4, p5}, Lcom/amazon/kindle/observablemodel/LibraryModel;->containerIDForCountOptions(Lcom/amazon/kindle/observablemodel/ModelContent;Lcom/amazon/kindle/observablemodel/ModelFilter;)Lcom/amazon/kindle/observablemodel/ContainerID;

    move-result-object p1

    .line 121
    iget-object p3, p3, Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;->mCountListeners:Lcom/amazon/kindle/observablemodel/ListenerSet;

    invoke-virtual {p3, p1, p2}, Lcom/amazon/kindle/observablemodel/ListenerSet;->addListener(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 124
    invoke-virtual {p0}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->flushChanges()V

    .line 126
    invoke-direct {p0}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->handleLeafContainers()V

    return-void
.end method

.method public removeContainerCountListener(Lcom/amazon/kindle/observablemodel/LibraryContainerCountListener;Ljava/lang/String;)V
    .locals 2

    .line 244
    invoke-direct {p0, p2}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->getAccountState(Ljava/lang/String;)Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;

    move-result-object p2

    .line 245
    iget-object v0, p2, Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;->mCountListeners:Lcom/amazon/kindle/observablemodel/ListenerSet;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/observablemodel/ListenerSet;->removeListener(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    .line 246
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/observablemodel/ContainerID;

    .line 247
    iget-object v1, p2, Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;->mLibraryModel:Lcom/amazon/kindle/observablemodel/LibraryModel;

    invoke-virtual {v1, v0}, Lcom/amazon/kindle/observablemodel/LibraryModel;->releaseContainer(Lcom/amazon/kindle/observablemodel/ContainerID;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeFromAccountType(ILjava/util/Set;Ljava/lang/String;)V
    .locals 3
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

    .line 916
    invoke-direct {p0, p3}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->getModel(Ljava/lang/String;)Lcom/amazon/kindle/observablemodel/LibraryModel;

    move-result-object p3

    if-nez p3, :cond_0

    return-void

    .line 921
    :cond_0
    invoke-static {p1}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->getLeafNameForAccountType(I)Ljava/lang/String;

    move-result-object v0

    .line 923
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AccountType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",leaf:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->debugLog(Ljava/lang/String;Ljava/util/Set;)V

    .line 925
    invoke-virtual {p3, v0, p2}, Lcom/amazon/kindle/observablemodel/LibraryModel;->removeItemsFromLeafSet(Ljava/lang/String;Ljava/util/Set;)V

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

    .line 1213
    invoke-direct {p0, p2}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->getModel(Ljava/lang/String;)Lcom/amazon/kindle/observablemodel/LibraryModel;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 1218
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->getLeafNameForAudibleCompanionDictionary()Ljava/lang/String;

    move-result-object v0

    .line 1220
    invoke-virtual {p2, v0, p1}, Lcom/amazon/kindle/observablemodel/LibraryModel;->removeItemsFromLeafDictionary(Ljava/lang/String;Ljava/util/Set;)V

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

    .line 1247
    invoke-direct {p0, p2}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->getModel(Ljava/lang/String;)Lcom/amazon/kindle/observablemodel/LibraryModel;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 1252
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->getLeafNameForCarouselSet()Ljava/lang/String;

    move-result-object v0

    .line 1254
    invoke-virtual {p2, v0, p1}, Lcom/amazon/kindle/observablemodel/LibraryModel;->removeItemsFromLeafSet(Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method

.method public removeFromCollectionMembership(Ljava/util/Map;Ljava/lang/String;)V
    .locals 4
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

    .line 1124
    invoke-direct {p0, p2}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->getModel(Ljava/lang/String;)Lcom/amazon/kindle/observablemodel/LibraryModel;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    .line 1129
    invoke-static {v0}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->getLeafNameForGroup(I)Ljava/lang/String;

    move-result-object v0

    .line 1130
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 1132
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Collection membership leaf:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->debugLog(Ljava/lang/String;Ljava/util/Map;)V

    .line 1134
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/observablemodel/ItemID;

    .line 1135
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    if-eqz v3, :cond_1

    .line 1137
    invoke-virtual {p2, v0, v2, v3}, Lcom/amazon/kindle/observablemodel/LibraryModel;->removeCollectionItemsInLeafDictionary(Ljava/lang/String;Lcom/amazon/kindle/observablemodel/ItemID;Ljava/util/Set;)V

    goto :goto_0

    .line 1139
    :cond_1
    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->removeFromCollections(Ljava/util/Set;Lcom/amazon/kindle/observablemodel/LibraryModel;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public removeFromFalkorMembership(Ljava/util/Set;Ljava/lang/String;)V
    .locals 3
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

    .line 1058
    invoke-direct {p0, p2}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->getModel(Ljava/lang/String;)Lcom/amazon/kindle/observablemodel/LibraryModel;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 1063
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->getLeafNameForFalkorDictionary()Ljava/lang/String;

    move-result-object v0

    .line 1065
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Falkor membership leaf:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->debugLog(Ljava/lang/String;Ljava/util/Set;)V

    .line 1067
    invoke-virtual {p2, v0, p1}, Lcom/amazon/kindle/observablemodel/LibraryModel;->removeItemsFromLeafDictionary(Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method

.method public removeFromItemCategory(ILjava/util/Set;Ljava/lang/String;)V
    .locals 3
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

    .line 796
    invoke-direct {p0, p3}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->getModel(Ljava/lang/String;)Lcom/amazon/kindle/observablemodel/LibraryModel;

    move-result-object p3

    if-nez p3, :cond_0

    return-void

    .line 801
    :cond_0
    invoke-static {p1}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->getLeafNameForCategory(I)Ljava/lang/String;

    move-result-object v0

    .line 803
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Category:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",leaf:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->debugLog(Ljava/lang/String;Ljava/util/Set;)V

    .line 805
    invoke-virtual {p3, v0, p2}, Lcom/amazon/kindle/observablemodel/LibraryModel;->removeItemsFromLeafSet(Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method

.method public removeFromItemToItemDictionary(Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;)V
    .locals 2
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

    .line 1276
    invoke-direct {p0, p3}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->getAccountState(Ljava/lang/String;)Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;

    move-result-object p3

    iget-object p3, p3, Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;->mLibraryModel:Lcom/amazon/kindle/observablemodel/LibraryModel;

    .line 1278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "item to item dictionary leaf:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->debugLog(Ljava/lang/String;Ljava/util/Set;)V

    .line 1280
    invoke-virtual {p3, p1, p2}, Lcom/amazon/kindle/observablemodel/LibraryModel;->removeItemsFromLeafDictionary(Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method

.method public removeFromOwnership(ILjava/util/Set;Ljava/lang/String;)V
    .locals 3
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

    .line 876
    invoke-direct {p0, p3}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->getModel(Ljava/lang/String;)Lcom/amazon/kindle/observablemodel/LibraryModel;

    move-result-object p3

    if-nez p3, :cond_0

    return-void

    .line 881
    :cond_0
    invoke-static {p1}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->getLeafNameForOwnership(I)Ljava/lang/String;

    move-result-object v0

    .line 883
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ownership:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",leaf:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->debugLog(Ljava/lang/String;Ljava/util/Set;)V

    .line 885
    invoke-virtual {p3, v0, p2}, Lcom/amazon/kindle/observablemodel/LibraryModel;->removeItemsFromLeafSet(Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method

.method public removeFromRawData(Lcom/amazon/kindle/observablemodel/RawDictionaryType;Ljava/util/Set;Ljava/lang/String;)V
    .locals 3
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

    .line 756
    invoke-direct {p0, p3}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->getModel(Ljava/lang/String;)Lcom/amazon/kindle/observablemodel/LibraryModel;

    move-result-object p3

    if-nez p3, :cond_0

    return-void

    .line 761
    :cond_0
    invoke-static {p1}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->getLeafNameForRawDictionary(Lcom/amazon/kindle/observablemodel/RawDictionaryType;)Ljava/lang/String;

    move-result-object v0

    .line 763
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Raw Type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",leaf:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->debugLog(Ljava/lang/String;Ljava/util/Set;)V

    .line 765
    invoke-virtual {p3, v0, p2}, Lcom/amazon/kindle/observablemodel/LibraryModel;->removeItemsFromLeafSet(Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method

.method public removeFromReadingProgress(ILjava/util/Set;Ljava/lang/String;)V
    .locals 3
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

    .line 836
    invoke-direct {p0, p3}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->getModel(Ljava/lang/String;)Lcom/amazon/kindle/observablemodel/LibraryModel;

    move-result-object p3

    if-nez p3, :cond_0

    return-void

    .line 841
    :cond_0
    invoke-static {p1}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->getLeafNameForReadingProgress(I)Ljava/lang/String;

    move-result-object v0

    .line 843
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reading Progress:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",leaf:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->debugLog(Ljava/lang/String;Ljava/util/Set;)V

    .line 845
    invoke-virtual {p3, v0, p2}, Lcom/amazon/kindle/observablemodel/LibraryModel;->removeItemsFromLeafSet(Ljava/lang/String;Ljava/util/Set;)V

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

    .line 1168
    invoke-direct {p0, p2}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->getModel(Ljava/lang/String;)Lcom/amazon/kindle/observablemodel/LibraryModel;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 1173
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->getLeafNameForSampleSet()Ljava/lang/String;

    move-result-object v0

    .line 1175
    invoke-virtual {p2, v0, p1}, Lcom/amazon/kindle/observablemodel/LibraryModel;->removeItemsFromLeafSet(Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method

.method public removeFromSortType(ILjava/util/Set;Ljava/lang/String;)V
    .locals 3
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

    .line 1018
    invoke-direct {p0, p3}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->getModel(Ljava/lang/String;)Lcom/amazon/kindle/observablemodel/LibraryModel;

    move-result-object p3

    if-nez p3, :cond_0

    return-void

    .line 1023
    :cond_0
    invoke-static {p1}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->getLeafNameForSortType(I)Ljava/lang/String;

    move-result-object v0

    .line 1025
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sort Type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",leaf:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->debugLog(Ljava/lang/String;Ljava/util/Set;)V

    .line 1027
    invoke-virtual {p3, v0, p2}, Lcom/amazon/kindle/observablemodel/LibraryModel;->removeItemsFromLeafDictionary(Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method

.method public removeGroupListener(Lcom/amazon/kindle/observablemodel/LibraryGroupListener;Ljava/lang/String;)V
    .locals 2

    .line 252
    invoke-direct {p0, p2}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->getAccountState(Ljava/lang/String;)Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;

    move-result-object p2

    .line 253
    iget-object v0, p2, Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;->mGroupListeners:Lcom/amazon/kindle/observablemodel/ListenerSet;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/observablemodel/ListenerSet;->removeListener(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    .line 254
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/observablemodel/ContainerID;

    .line 255
    iget-object v1, p2, Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;->mLibraryModel:Lcom/amazon/kindle/observablemodel/LibraryModel;

    invoke-virtual {v1, v0}, Lcom/amazon/kindle/observablemodel/LibraryModel;->releaseContainer(Lcom/amazon/kindle/observablemodel/ContainerID;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removePresentationListener(Lcom/amazon/kindle/observablemodel/LibraryPresentationChangeListener;Ljava/lang/String;)V
    .locals 2

    .line 190
    invoke-direct {p0, p2}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->getAccountState(Ljava/lang/String;)Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;

    move-result-object p2

    .line 191
    iget-object v0, p2, Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;->mChangeListeners:Lcom/amazon/kindle/observablemodel/ListenerSet;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/observablemodel/ListenerSet;->removeListener(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    .line 192
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/observablemodel/ContainerID;

    .line 193
    iget-object v1, p2, Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;->mLibraryModel:Lcom/amazon/kindle/observablemodel/LibraryModel;

    invoke-virtual {v1, v0}, Lcom/amazon/kindle/observablemodel/LibraryModel;->releaseContainer(Lcom/amazon/kindle/observablemodel/ContainerID;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public resetAccountType(ILjava/util/Set;Ljava/lang/String;)V
    .locals 3
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

    .line 889
    invoke-direct {p0, p3}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->getModel(Ljava/lang/String;)Lcom/amazon/kindle/observablemodel/LibraryModel;

    move-result-object p3

    if-nez p3, :cond_0

    return-void

    .line 894
    :cond_0
    invoke-static {p1}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->getLeafNameForAccountType(I)Ljava/lang/String;

    move-result-object v0

    .line 896
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AccountType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",leaf:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->debugLog(Ljava/lang/String;Ljava/util/Set;)V

    .line 898
    invoke-virtual {p3, v0}, Lcom/amazon/kindle/observablemodel/LibraryModel;->eraseLeafSet(Ljava/lang/String;)V

    .line 899
    invoke-virtual {p3, v0, p2}, Lcom/amazon/kindle/observablemodel/LibraryModel;->addItemsToLeafSet(Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method

.method public resetAudibleCompanion(Ljava/util/Set;Ljava/lang/String;)V
    .locals 3
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

    .line 1182
    invoke-direct {p0, p2}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->getModel(Ljava/lang/String;)Lcom/amazon/kindle/observablemodel/LibraryModel;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 1187
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->getLeafNameForAudibleCompanionDictionary()Ljava/lang/String;

    move-result-object v0

    .line 1189
    invoke-virtual {p2, v0}, Lcom/amazon/kindle/observablemodel/LibraryModel;->eraseLeafDictionary(Ljava/lang/String;)V

    .line 1190
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1191
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/observablemodel/ItemID;

    .line 1192
    invoke-virtual {v1, v2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1194
    :cond_1
    invoke-virtual {p2, v0, v1}, Lcom/amazon/kindle/observablemodel/LibraryModel;->addItemItemsInLeafDictionary(Ljava/lang/String;Ljava/util/Map;)V

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

    .line 1224
    invoke-direct {p0, p2}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->getModel(Ljava/lang/String;)Lcom/amazon/kindle/observablemodel/LibraryModel;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 1229
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->getLeafNameForCarouselSet()Ljava/lang/String;

    move-result-object v0

    .line 1231
    invoke-virtual {p2, v0}, Lcom/amazon/kindle/observablemodel/LibraryModel;->eraseLeafSet(Ljava/lang/String;)V

    .line 1232
    invoke-virtual {p2, v0, p1}, Lcom/amazon/kindle/observablemodel/LibraryModel;->addItemsToLeafSet(Ljava/lang/String;Ljava/util/Set;)V

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

    const/4 v0, 0x1

    .line 1114
    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->addToCollectionMembership(Ljava/util/Map;Ljava/lang/String;Z)V

    return-void
.end method

.method public resetFalkorMembership(Ljava/util/Map;Ljava/lang/String;)V
    .locals 3
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

    .line 1031
    invoke-direct {p0, p2}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->getModel(Ljava/lang/String;)Lcom/amazon/kindle/observablemodel/LibraryModel;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 1036
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->getLeafNameForFalkorDictionary()Ljava/lang/String;

    move-result-object v0

    .line 1038
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Falkor membership leaf:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->debugLog(Ljava/lang/String;Ljava/util/Map;)V

    .line 1040
    invoke-virtual {p2, v0}, Lcom/amazon/kindle/observablemodel/LibraryModel;->eraseLeafDictionary(Ljava/lang/String;)V

    .line 1041
    invoke-virtual {p2, v0, p1}, Lcom/amazon/kindle/observablemodel/LibraryModel;->addItemItemsInLeafDictionary(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public resetItemCategory(ILjava/util/Set;Ljava/lang/String;)V
    .locals 3
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

    .line 769
    invoke-direct {p0, p3}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->getModel(Ljava/lang/String;)Lcom/amazon/kindle/observablemodel/LibraryModel;

    move-result-object p3

    if-nez p3, :cond_0

    return-void

    .line 774
    :cond_0
    invoke-static {p1}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->getLeafNameForCategory(I)Ljava/lang/String;

    move-result-object v0

    .line 776
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Category:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",leaf:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->debugLog(Ljava/lang/String;Ljava/util/Set;)V

    .line 778
    invoke-virtual {p3, v0}, Lcom/amazon/kindle/observablemodel/LibraryModel;->eraseLeafSet(Ljava/lang/String;)V

    .line 779
    invoke-virtual {p3, v0, p2}, Lcom/amazon/kindle/observablemodel/LibraryModel;->addItemsToLeafSet(Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method

.method public resetItemToItemDictionary(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 2
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

    .line 1258
    invoke-direct {p0, p3}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->getAccountState(Ljava/lang/String;)Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;

    move-result-object p3

    iget-object p3, p3, Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;->mLibraryModel:Lcom/amazon/kindle/observablemodel/LibraryModel;

    .line 1260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "item to item dictionary leaf:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->debugLog(Ljava/lang/String;Ljava/util/Map;)V

    .line 1262
    invoke-virtual {p3, p1}, Lcom/amazon/kindle/observablemodel/LibraryModel;->eraseLeafDictionary(Ljava/lang/String;)V

    .line 1263
    invoke-virtual {p3, p1, p2}, Lcom/amazon/kindle/observablemodel/LibraryModel;->addItemItemsInLeafDictionary(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public resetOwnership(ILjava/util/Set;Ljava/lang/String;)V
    .locals 3
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

    .line 849
    invoke-direct {p0, p3}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->getModel(Ljava/lang/String;)Lcom/amazon/kindle/observablemodel/LibraryModel;

    move-result-object p3

    if-nez p3, :cond_0

    return-void

    .line 854
    :cond_0
    invoke-static {p1}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->getLeafNameForOwnership(I)Ljava/lang/String;

    move-result-object v0

    .line 856
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ownership:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",leaf:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->debugLog(Ljava/lang/String;Ljava/util/Set;)V

    .line 858
    invoke-virtual {p3, v0}, Lcom/amazon/kindle/observablemodel/LibraryModel;->eraseLeafSet(Ljava/lang/String;)V

    .line 859
    invoke-virtual {p3, v0, p2}, Lcom/amazon/kindle/observablemodel/LibraryModel;->addItemsToLeafSet(Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method

.method public resetRawStringData(Lcom/amazon/kindle/observablemodel/RawDictionaryType;Ljava/util/Map;Ljava/lang/String;)V
    .locals 3
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

    .line 730
    invoke-direct {p0, p3}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->getModel(Ljava/lang/String;)Lcom/amazon/kindle/observablemodel/LibraryModel;

    move-result-object p3

    if-nez p3, :cond_0

    return-void

    .line 735
    :cond_0
    invoke-static {p1}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->getLeafNameForRawDictionary(Lcom/amazon/kindle/observablemodel/RawDictionaryType;)Ljava/lang/String;

    move-result-object v0

    .line 737
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Raw Type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",leaf:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->debugLog(Ljava/lang/String;Ljava/util/Map;)V

    .line 739
    invoke-virtual {p3, v0}, Lcom/amazon/kindle/observablemodel/LibraryModel;->eraseLeafDictionary(Ljava/lang/String;)V

    .line 740
    invoke-virtual {p3, v0, p2}, Lcom/amazon/kindle/observablemodel/LibraryModel;->addItemStringsInLeafDictionary(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public resetReadingProgress(ILjava/util/Set;Ljava/lang/String;)V
    .locals 3
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

    .line 809
    invoke-direct {p0, p3}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->getModel(Ljava/lang/String;)Lcom/amazon/kindle/observablemodel/LibraryModel;

    move-result-object p3

    if-nez p3, :cond_0

    return-void

    .line 814
    :cond_0
    invoke-static {p1}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->getLeafNameForReadingProgress(I)Ljava/lang/String;

    move-result-object v0

    .line 816
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reading Progress:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",leaf:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->debugLog(Ljava/lang/String;Ljava/util/Set;)V

    .line 818
    invoke-virtual {p3, v0}, Lcom/amazon/kindle/observablemodel/LibraryModel;->eraseLeafSet(Ljava/lang/String;)V

    .line 819
    invoke-virtual {p3, v0, p2}, Lcom/amazon/kindle/observablemodel/LibraryModel;->addItemsToLeafSet(Ljava/lang/String;Ljava/util/Set;)V

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

    .line 1145
    invoke-direct {p0, p2}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->getModel(Ljava/lang/String;)Lcom/amazon/kindle/observablemodel/LibraryModel;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 1150
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->getLeafNameForSampleSet()Ljava/lang/String;

    move-result-object v0

    .line 1152
    invoke-virtual {p2, v0}, Lcom/amazon/kindle/observablemodel/LibraryModel;->eraseLeafSet(Ljava/lang/String;)V

    .line 1153
    invoke-virtual {p2, v0, p1}, Lcom/amazon/kindle/observablemodel/LibraryModel;->addItemsToLeafSet(Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method

.method public resetSortTypeDate(ILjava/util/Map;Ljava/lang/String;)V
    .locals 3
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

    .line 991
    invoke-direct {p0, p3}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->getModel(Ljava/lang/String;)Lcom/amazon/kindle/observablemodel/LibraryModel;

    move-result-object p3

    if-nez p3, :cond_0

    return-void

    .line 996
    :cond_0
    invoke-static {p1}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->getLeafNameForSortType(I)Ljava/lang/String;

    move-result-object v0

    .line 998
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sort Type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",leaf:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->debugLog(Ljava/lang/String;Ljava/util/Map;)V

    .line 1000
    invoke-virtual {p3, v0}, Lcom/amazon/kindle/observablemodel/LibraryModel;->eraseLeafDictionary(Ljava/lang/String;)V

    .line 1001
    invoke-virtual {p3, v0, p2}, Lcom/amazon/kindle/observablemodel/LibraryModel;->addItemDatesInLeafDictionary(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public resetSortTypeNumber(ILjava/util/Map;Ljava/lang/String;)V
    .locals 3
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

    .line 929
    invoke-direct {p0, p3}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->getModel(Ljava/lang/String;)Lcom/amazon/kindle/observablemodel/LibraryModel;

    move-result-object p3

    if-nez p3, :cond_0

    return-void

    .line 934
    :cond_0
    invoke-static {p1}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->getLeafNameForSortType(I)Ljava/lang/String;

    move-result-object v0

    .line 936
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sort Type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",leaf:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->debugLog(Ljava/lang/String;Ljava/util/Map;)V

    .line 938
    invoke-virtual {p3, v0}, Lcom/amazon/kindle/observablemodel/LibraryModel;->eraseLeafDictionary(Ljava/lang/String;)V

    .line 939
    invoke-virtual {p3, v0, p2}, Lcom/amazon/kindle/observablemodel/LibraryModel;->addItemIntegersInLeafDictionary(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public resetSortTypeString(ILjava/util/Map;Ljava/lang/String;)V
    .locals 3
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

    .line 956
    invoke-direct {p0, p3}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->getModel(Ljava/lang/String;)Lcom/amazon/kindle/observablemodel/LibraryModel;

    move-result-object p3

    if-nez p3, :cond_0

    return-void

    .line 961
    :cond_0
    invoke-static {p1}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->getLeafNameForSortType(I)Ljava/lang/String;

    move-result-object v0

    .line 963
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sort Type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",leaf:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->debugLog(Ljava/lang/String;Ljava/util/Map;)V

    .line 965
    invoke-virtual {p3, v0}, Lcom/amazon/kindle/observablemodel/LibraryModel;->eraseLeafDictionary(Ljava/lang/String;)V

    .line 966
    invoke-virtual {p3, v0, p2}, Lcom/amazon/kindle/observablemodel/LibraryModel;->addItemStringsInLeafDictionary(Ljava/lang/String;Ljava/util/Map;)V

    .line 968
    invoke-static {p1}, Lcom/amazon/kindle/observablemodel/LibraryModelBridge;->getLeafNameForSortCollation(I)Ljava/lang/String;

    move-result-object p1

    .line 969
    invoke-virtual {p3, p1}, Lcom/amazon/kindle/observablemodel/LibraryModel;->eraseLeafDictionary(Ljava/lang/String;)V

    .line 970
    invoke-virtual {p3, p1, p2}, Lcom/amazon/kindle/observablemodel/LibraryModel;->addItemStringsInLeafDictionary(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public setIntegrator(Lcom/amazon/kindle/observablemodel/LibraryDataIntegrator;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/amazon/kindle/observablemodel/LibraryRepository;->mIntegrator:Lcom/amazon/kindle/observablemodel/LibraryDataIntegrator;

    .line 102
    invoke-interface {p1, p0}, Lcom/amazon/kindle/observablemodel/LibraryDataIntegrator;->setObserver(Lcom/amazon/kindle/observablemodel/LibraryDataIntegratorObserver;)V

    return-void
.end method

.method public setStringFilter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 218
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->setStringFilter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/observablemodel/OnChangesProcessedListener;)V

    return-void
.end method

.method public setStringFilter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/observablemodel/OnChangesProcessedListener;)V
    .locals 0

    .line 222
    invoke-direct {p0, p1}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->getAccountState(Ljava/lang/String;)Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;

    move-result-object p1

    .line 223
    iget-object p1, p1, Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;->mLibraryModel:Lcom/amazon/kindle/observablemodel/LibraryModel;

    invoke-direct {p0, p3}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->preprocessFilterValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/amazon/kindle/observablemodel/LibraryModel;->setFilterText(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    invoke-virtual {p0, p4}, Lcom/amazon/kindle/observablemodel/LibraryRepository;->flushChanges(Lcom/amazon/kindle/observablemodel/OnChangesProcessedListener;)V

    return-void
.end method

.method public unregisterItemDetailListener(Lcom/amazon/kindle/observablemodel/LibraryItemDetailListener;Lcom/amazon/kindle/observablemodel/ItemID;)V
    .locals 3

    .line 236
    iget-object v0, p0, Lcom/amazon/kindle/observablemodel/LibraryRepository;->mAccountToState:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 237
    iget-object v2, p0, Lcom/amazon/kindle/observablemodel/LibraryRepository;->mAccountToState:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;

    .line 239
    iget-object v1, v1, Lcom/amazon/kindle/observablemodel/LibraryRepository$AccountState;->mItemDetailListeners:Lcom/amazon/kindle/observablemodel/ListenerSet;

    invoke-virtual {v1, p1, p2}, Lcom/amazon/kindle/observablemodel/ListenerSet;->removeListener(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method
