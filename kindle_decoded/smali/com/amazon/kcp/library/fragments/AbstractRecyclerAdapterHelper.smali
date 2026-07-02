.class public abstract Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;
.super Ljava/lang/Object;
.source "AbstractRecyclerAdapterHelper.kt"

# interfaces
.implements Lcom/amazon/kcp/library/fragments/LibraryModelOptionsOwner;
.implements Lcom/amazon/kindle/observablemodel/LibraryContainerCountListener;
.implements Lcom/amazon/kcp/library/fragments/ILibraryItemCountProvider;
.implements Lcom/amazon/kindle/observablemodel/LibraryPresentationChangeListener;


# instance fields
.field private accountId:Ljava/lang/String;

.field private final countListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/amazon/kcp/library/fragments/ILibraryItemCountProvider$ILibraryItemChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final filterStateListener:Lcom/amazon/kcp/library/LibraryFilterStateManager$ILibraryFilterStateChangedListener;

.field private final libraryFilter:Lcom/amazon/kcp/library/ILibraryFilter;

.field private final libraryFragmentHandler:Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;

.field private final mainHandler:Landroid/os/Handler;

.field private modelContent:Lcom/amazon/kindle/observablemodel/ModelContent;

.field private modelFilter:Lcom/amazon/kindle/observablemodel/ModelFilter;

.field private modelSorting:Lcom/amazon/kindle/observablemodel/ModelSorting;

.field private final repository:Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;

.field private final sortChangeListener:Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper$sortChangeListener$1;

.field private totalItemCount:I


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;Ljava/lang/String;Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;Lcom/amazon/kcp/library/ILibraryFilter;Lcom/amazon/kindle/observablemodel/ModelContent;Lcom/amazon/kindle/observablemodel/ModelFilter;Lcom/amazon/kindle/observablemodel/ModelSorting;)V
    .locals 1

    const-string/jumbo v0, "repository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "libraryFilter"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "modelContent"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "modelFilter"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "modelSorting"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->repository:Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;

    iput-object p2, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->accountId:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->libraryFragmentHandler:Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;

    iput-object p4, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->libraryFilter:Lcom/amazon/kcp/library/ILibraryFilter;

    iput-object p5, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->modelContent:Lcom/amazon/kindle/observablemodel/ModelContent;

    iput-object p6, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->modelFilter:Lcom/amazon/kindle/observablemodel/ModelFilter;

    iput-object p7, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->modelSorting:Lcom/amazon/kindle/observablemodel/ModelSorting;

    const/4 p1, -0x1

    .line 34
    iput p1, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->totalItemCount:I

    .line 36
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->countListeners:Ljava/util/Set;

    .line 38
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->mainHandler:Landroid/os/Handler;

    .line 42
    new-instance p1, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper$filterStateListener$1;

    invoke-direct {p1, p0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper$filterStateListener$1;-><init>(Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;)V

    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->filterStateListener:Lcom/amazon/kcp/library/LibraryFilterStateManager$ILibraryFilterStateChangedListener;

    .line 47
    new-instance p1, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper$sortChangeListener$1;

    invoke-direct {p1, p0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper$sortChangeListener$1;-><init>(Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;)V

    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->sortChangeListener:Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper$sortChangeListener$1;

    return-void
.end method

.method public static final synthetic access$getCountListeners$p(Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;)Ljava/util/Set;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->countListeners:Ljava/util/Set;

    return-object p0
.end method

.method public static final synthetic access$getLibraryFilter$p(Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;)Lcom/amazon/kcp/library/ILibraryFilter;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->libraryFilter:Lcom/amazon/kcp/library/ILibraryFilter;

    return-object p0
.end method

.method public static final synthetic access$getLibraryFragmentHandler$p(Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;)Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->libraryFragmentHandler:Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;

    return-object p0
.end method

.method public static final synthetic access$getModelContent$p(Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;)Lcom/amazon/kindle/observablemodel/ModelContent;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->modelContent:Lcom/amazon/kindle/observablemodel/ModelContent;

    return-object p0
.end method

.method public static final synthetic access$getModelFilter$p(Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;)Lcom/amazon/kindle/observablemodel/ModelFilter;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->modelFilter:Lcom/amazon/kindle/observablemodel/ModelFilter;

    return-object p0
.end method

.method public static final synthetic access$getRepository$p(Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;)Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->repository:Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;

    return-object p0
.end method

.method private final onCountUpdate(I)V
    .locals 1

    .line 90
    iput p1, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->totalItemCount:I

    .line 91
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->repository:Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;

    invoke-virtual {p1}, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->isFirstBatchFlushed()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 94
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->mainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper$onCountUpdate$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper$onCountUpdate$1;-><init>(Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private final updatePresentationAndCountListenersThreadSafe()V
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper$updatePresentationAndCountListenersThreadSafe$1;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper$updatePresentationAndCountListenersThreadSafe$1;-><init>(Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method protected final getAccountId()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->accountId:Ljava/lang/String;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 73
    iget v0, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->totalItemCount:I

    return v0
.end method

.method protected final getMainHandler()Landroid/os/Handler;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->mainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getModelContent()Lcom/amazon/kindle/observablemodel/ModelContent;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->modelContent:Lcom/amazon/kindle/observablemodel/ModelContent;

    return-object v0
.end method

.method public getModelFilter()Lcom/amazon/kindle/observablemodel/ModelFilter;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->modelFilter:Lcom/amazon/kindle/observablemodel/ModelFilter;

    return-object v0
.end method

.method public getModelSorting()Lcom/amazon/kindle/observablemodel/ModelSorting;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->modelSorting:Lcom/amazon/kindle/observablemodel/ModelSorting;

    return-object v0
.end method

.method protected final getTotalItemCount()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->totalItemCount:I

    return v0
.end method

.method public onCountUpdate(Lcom/amazon/kindle/observablemodel/ModelCountUpdate;)V
    .locals 2

    const-string/jumbo v0, "update"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-virtual {p1}, Lcom/amazon/kindle/observablemodel/ModelCountUpdate;->getCount()J

    move-result-wide v0

    long-to-int p1, v0

    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->onCountUpdate(I)V

    return-void
.end method

.method public final onCreate(Lcom/amazon/kcp/library/fragments/SortChangeOwner;Lcom/amazon/kcp/library/LibraryFilterStateManager;)V
    .locals 1

    const-string/jumbo v0, "sortChangeOwner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 105
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->filterStateListener:Lcom/amazon/kcp/library/LibraryFilterStateManager$ILibraryFilterStateChangedListener;

    invoke-virtual {p2, v0}, Lcom/amazon/kcp/library/LibraryFilterStateManager;->registerListener(Lcom/amazon/kcp/library/LibraryFilterStateManager$ILibraryFilterStateChangedListener;)V

    .line 106
    :cond_0
    iget-object p2, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->sortChangeListener:Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper$sortChangeListener$1;

    invoke-interface {p1, p2}, Lcom/amazon/kcp/library/fragments/SortChangeOwner;->setSortChangeListener(Lcom/amazon/kcp/library/fragments/SortChangeListener;)V

    .line 107
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroy(Lcom/amazon/kcp/library/fragments/SortChangeOwner;Lcom/amazon/kcp/library/LibraryFilterStateManager;)V
    .locals 1

    const-string/jumbo v0, "sortChangeOwner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 111
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->filterStateListener:Lcom/amazon/kcp/library/LibraryFilterStateManager$ILibraryFilterStateChangedListener;

    invoke-virtual {p2, v0}, Lcom/amazon/kcp/library/LibraryFilterStateManager;->deregisterListener(Lcom/amazon/kcp/library/LibraryFilterStateManager$ILibraryFilterStateChangedListener;)V

    :cond_0
    const/4 p2, 0x0

    .line 112
    invoke-interface {p1, p2}, Lcom/amazon/kcp/library/fragments/SortChangeOwner;->setSortChangeListener(Lcom/amazon/kcp/library/fragments/SortChangeListener;)V

    .line 113
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    return-void
.end method

.method public final onFirstIntegratorBatchFlushEvent(Lcom/amazon/kcp/integrator/FirstBatchFlushedEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iget p1, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->totalItemCount:I

    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->onCountUpdate(I)V

    return-void
.end method

.method public final onLibraryGroupTypeChangedEvent(Lcom/amazon/kindle/event/LibraryGroupTypeChangedEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper$onLibraryGroupTypeChangedEvent$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper$onLibraryGroupTypeChangedEvent$1;-><init>(Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;Lcom/amazon/kindle/event/LibraryGroupTypeChangedEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public registerItemCountChangedListener(Lcom/amazon/kcp/library/fragments/ILibraryItemCountProvider$ILibraryItemChangedListener;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 77
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->countListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper$registerItemCountChangedListener$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper$registerItemCountChangedListener$1;-><init>(Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;Lcom/amazon/kcp/library/fragments/ILibraryItemCountProvider$ILibraryItemChangedListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method protected final setAccountId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->accountId:Ljava/lang/String;

    return-void
.end method

.method public setModelFilterAndContent(Lcom/amazon/kindle/observablemodel/ModelFilter;Lcom/amazon/kindle/observablemodel/ModelContent;)V
    .locals 1

    const-string/jumbo v0, "modelFilter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "modelContent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->modelFilter:Lcom/amazon/kindle/observablemodel/ModelFilter;

    .line 126
    iput-object p2, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->modelContent:Lcom/amazon/kindle/observablemodel/ModelContent;

    .line 127
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->accountId:Ljava/lang/String;

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 128
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->updatePresentationAndCountListenersThreadSafe()V

    return-void
.end method

.method public setModelSorting(Lcom/amazon/kindle/observablemodel/ModelSorting;)V
    .locals 1

    const-string/jumbo v0, "modelSorting"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->modelSorting:Lcom/amazon/kindle/observablemodel/ModelSorting;

    .line 133
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->accountId:Ljava/lang/String;

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 134
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->updatePresentationAndCountListenersThreadSafe()V

    return-void
.end method

.method protected final setTotalItemCount(I)V
    .locals 0

    .line 34
    iput p1, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->totalItemCount:I

    return-void
.end method

.method protected updatePresentationAndCountListeners()V
    .locals 7

    .line 146
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->repository:Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;

    iget-object v3, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->accountId:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->modelContent:Lcom/amazon/kindle/observablemodel/ModelContent;

    iget-object v5, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->modelFilter:Lcom/amazon/kindle/observablemodel/ModelFilter;

    iget-object v6, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->modelSorting:Lcom/amazon/kindle/observablemodel/ModelSorting;

    move-object v1, p0

    move-object v2, p0

    invoke-virtual/range {v0 .. v6}, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->modifyPresentationAndCountListeners(Lcom/amazon/kindle/observablemodel/LibraryPresentationChangeListener;Lcom/amazon/kindle/observablemodel/LibraryContainerCountListener;Ljava/lang/String;Lcom/amazon/kindle/observablemodel/ModelContent;Lcom/amazon/kindle/observablemodel/ModelFilter;Lcom/amazon/kindle/observablemodel/ModelSorting;)V

    return-void
.end method
