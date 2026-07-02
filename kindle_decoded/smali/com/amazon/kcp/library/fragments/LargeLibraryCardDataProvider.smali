.class public final Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;
.super Ljava/lang/Object;
.source "LargeLibraryCardDataProvider.kt"

# interfaces
.implements Lcom/amazon/kindle/observablemodel/LibraryPresentationChangeListener;
.implements Lcom/amazon/kindle/observablemodel/LibraryContainerCountListener;


# instance fields
.field private accountId:Ljava/lang/String;

.field private adapter:Lcom/amazon/kcp/library/FastRecyclerAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kcp/library/FastRecyclerAdapter<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ">;"
        }
    .end annotation
.end field

.field private final adapterUpdater:Lcom/amazon/kcp/library/fragments/ResumeRecyclerAdapterUpdater;

.field private final itemsCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final itemsCountChangedListener:Lcom/amazon/kcp/home/widget/resume/ItemsCountChangedListener;

.field private final mainHandler:Landroid/os/Handler;

.field private final messageQueue$delegate:Lkotlin/Lazy;

.field private modelContent:Lcom/amazon/kindle/observablemodel/ModelContent;

.field private modelFilter:Lcom/amazon/kindle/observablemodel/ModelFilter;

.field private modelSorting:Lcom/amazon/kindle/observablemodel/ModelSorting;

.field private final repository:Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;Ljava/lang/String;Lcom/amazon/kindle/observablemodel/ModelContent;Lcom/amazon/kindle/observablemodel/ModelFilter;Lcom/amazon/kindle/observablemodel/ModelSorting;Lcom/amazon/kcp/home/widget/resume/ItemsCountChangedListener;)V
    .locals 1

    const-string/jumbo v0, "repository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "modelContent"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "modelFilter"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "modelSorting"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;->repository:Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;

    iput-object p2, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;->accountId:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;->modelContent:Lcom/amazon/kindle/observablemodel/ModelContent;

    iput-object p4, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;->modelFilter:Lcom/amazon/kindle/observablemodel/ModelFilter;

    iput-object p5, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;->modelSorting:Lcom/amazon/kindle/observablemodel/ModelSorting;

    iput-object p6, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;->itemsCountChangedListener:Lcom/amazon/kcp/home/widget/resume/ItemsCountChangedListener;

    .line 52
    new-instance p1, Lcom/amazon/kcp/library/fragments/ResumeRecyclerAdapterUpdater;

    new-instance p2, Lcom/amazon/kcp/library/fragments/CurrentValueCache;

    invoke-direct {p2}, Lcom/amazon/kcp/library/fragments/CurrentValueCache;-><init>()V

    invoke-direct {p1, p2}, Lcom/amazon/kcp/library/fragments/ResumeRecyclerAdapterUpdater;-><init>(Lcom/amazon/kcp/library/fragments/CurrentValueCache;)V

    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;->adapterUpdater:Lcom/amazon/kcp/library/fragments/ResumeRecyclerAdapterUpdater;

    .line 53
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;->mainHandler:Landroid/os/Handler;

    .line 54
    sget-object p1, Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider$messageQueue$2;->INSTANCE:Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider$messageQueue$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;->messageQueue$delegate:Lkotlin/Lazy;

    .line 57
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, -0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;->itemsCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 60
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$getAccountId$p(Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;)Ljava/lang/String;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;->accountId:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getAdapter$p(Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;)Lcom/amazon/kcp/library/FastRecyclerAdapter;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;->adapter:Lcom/amazon/kcp/library/FastRecyclerAdapter;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "adapter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getAdapterUpdater$p(Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;)Lcom/amazon/kcp/library/fragments/ResumeRecyclerAdapterUpdater;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;->adapterUpdater:Lcom/amazon/kcp/library/fragments/ResumeRecyclerAdapterUpdater;

    return-object p0
.end method

.method public static final synthetic access$getItemsCount$p(Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;->itemsCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method public static final synthetic access$getRepository$p(Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;)Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;->repository:Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;

    return-object p0
.end method

.method public static final synthetic access$registerPresentationAndCountListeners(Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;->registerPresentationAndCountListeners()V

    return-void
.end method

.method public static final synthetic access$setAccountId$p(Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;->accountId:Ljava/lang/String;

    return-void
.end method

.method private final getMessageQueue()Lcom/amazon/kindle/krx/events/IMessageQueue;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;->messageQueue$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/events/IMessageQueue;

    return-object v0
.end method

.method private final onCountUpdate(I)V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;->itemsCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 80
    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;->itemsCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 83
    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;->repository:Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;

    invoke-virtual {v1}, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->isFirstBatchFlushed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;->itemsCountChangedListener:Lcom/amazon/kcp/home/widget/resume/ItemsCountChangedListener;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0, p1}, Lcom/amazon/kcp/home/widget/resume/ItemsCountChangedListener;->onItemsCountChanged(II)V

    :cond_0
    return-void
.end method

.method private final registerPresentationAndCountListeners()V
    .locals 8

    .line 207
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;->accountId:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 208
    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;->repository:Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;

    .line 209
    iget-object v4, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;->accountId:Ljava/lang/String;

    iget-object v5, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;->modelContent:Lcom/amazon/kindle/observablemodel/ModelContent;

    iget-object v6, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;->modelFilter:Lcom/amazon/kindle/observablemodel/ModelFilter;

    iget-object v7, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;->modelSorting:Lcom/amazon/kindle/observablemodel/ModelSorting;

    move-object v2, p0

    move-object v3, p0

    .line 208
    invoke-virtual/range {v1 .. v7}, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->registerPresentationAndCountListeners(Lcom/amazon/kindle/observablemodel/LibraryPresentationChangeListener;Lcom/amazon/kindle/observablemodel/LibraryContainerCountListener;Ljava/lang/String;Lcom/amazon/kindle/observablemodel/ModelContent;Lcom/amazon/kindle/observablemodel/ModelFilter;Lcom/amazon/kindle/observablemodel/ModelSorting;)V

    :cond_0
    return-void
.end method

.method private final shouldIgnoreEvent(Lcom/amazon/kindle/content/ContentMetadata;)Z
    .locals 2

    .line 214
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    const-string/jumbo v1, "metadata.bookID"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IBookID;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 219
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[shouldIgnoreEvent] FALSE bookId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final clearStableId(Lcom/amazon/kindle/observablemodel/ItemID;)V
    .locals 1

    const-string v0, "itemId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;->adapterUpdater:Lcom/amazon/kcp/library/fragments/ResumeRecyclerAdapterUpdater;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterUpdater;->getCache()Lcom/amazon/kcp/library/fragments/CurrentValueCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/fragments/CurrentValueCache;->clearStableId(Lcom/amazon/kindle/observablemodel/ItemID;)V

    return-void
.end method

.method public final getAndResetBooksChangedState()Z
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;->adapterUpdater:Lcom/amazon/kcp/library/fragments/ResumeRecyclerAdapterUpdater;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/ResumeRecyclerAdapterUpdater;->getAndResetBooksChangedState()Z

    move-result v0

    return v0
.end method

.method public final getItem(I)Lcom/amazon/kindle/observablemodel/ItemID;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;->adapterUpdater:Lcom/amazon/kcp/library/fragments/ResumeRecyclerAdapterUpdater;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterUpdater;->getCache()Lcom/amazon/kcp/library/fragments/CurrentValueCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/fragments/CurrentValueCache;->getItemIdAtPosition(I)Lcom/amazon/kindle/observablemodel/ItemID;

    move-result-object p1

    return-object p1
.end method

.method public final getItemsCount()I
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;->repository:Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;

    invoke-virtual {v0}, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->isFirstBatchFlushed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;->itemsCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public final init(Lcom/amazon/kcp/library/FastRecyclerAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/library/FastRecyclerAdapter<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ">;)V"
        }
    .end annotation

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;->adapter:Lcom/amazon/kcp/library/FastRecyclerAdapter;

    .line 65
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;->adapterUpdater:Lcom/amazon/kcp/library/fragments/ResumeRecyclerAdapterUpdater;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterUpdater;->setAdapter(Lcom/amazon/kcp/library/FastRecyclerAdapter;)V

    .line 66
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;->registerPresentationAndCountListeners()V

    .line 67
    invoke-virtual {p1}, Lcom/amazon/kcp/library/FastRecyclerAdapter;->init()Lcom/amazon/kcp/library/FastRecyclerAdapter;

    return-void
.end method

.method public final itemCount()I
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;->adapterUpdater:Lcom/amazon/kcp/library/fragments/ResumeRecyclerAdapterUpdater;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterUpdater;->getCache()Lcom/amazon/kcp/library/fragments/CurrentValueCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/CurrentValueCache;->getItemCount()I

    move-result v0

    return v0
.end method

.method public final itemId(Lcom/amazon/kindle/observablemodel/ItemID;)J
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;->adapterUpdater:Lcom/amazon/kcp/library/fragments/ResumeRecyclerAdapterUpdater;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterUpdater;->getCache()Lcom/amazon/kcp/library/fragments/CurrentValueCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/fragments/CurrentValueCache;->getStableIdForItemId(Lcom/amazon/kindle/observablemodel/ItemID;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final onAuthenticationEvent(Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider$onAuthenticationEvent$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider$onAuthenticationEvent$1;-><init>(Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onChangeUpdate(Lcom/amazon/kindle/observablemodel/ModelChangeUpdate;)V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;->adapterUpdater:Lcom/amazon/kcp/library/fragments/ResumeRecyclerAdapterUpdater;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/fragments/ResumeRecyclerAdapterUpdater;->onChangeUpdate(Lcom/amazon/kindle/observablemodel/ModelChangeUpdate;)[I

    return-void
.end method

.method public final declared-synchronized onContentAdd(Lcom/amazon/kindle/content/LibraryContentAddPayload;)V
    .locals 3
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        topic = "CONTENT_ADD"
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "adds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    invoke-virtual {p1}, Lcom/amazon/kindle/content/LibraryContentAddPayload;->getMetadata()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/content/ContentMetadata;

    if-eqz v0, :cond_0

    .line 133
    invoke-direct {p0, v0}, Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;->shouldIgnoreEvent(Lcom/amazon/kindle/content/ContentMetadata;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getDictionaryType()Lcom/amazon/kindle/model/content/DictionaryType;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/model/content/DictionaryType;->FREE_DICT:Lcom/amazon/kindle/model/content/DictionaryType;

    if-eq v1, v2, :cond_0

    .line 135
    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;->accountId:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getOwner()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amazon/kindle/util/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;->getMessageQueue()Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object p1

    new-instance v0, Lcom/amazon/kcp/home/widget/resume/ResumeWidgetUpdateEvent;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/amazon/kcp/home/widget/resume/ResumeWidgetUpdateEvent;-><init>(I)V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    monitor-exit p0

    return-void

    .line 140
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onContentDelete(Lcom/amazon/kindle/content/ContentDelete;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        topic = "CONTENT_DELETE"
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "deletes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[CONTENT_DELETE_TOPIC] size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentDelete;->getBookIds()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;->getMessageQueue()Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object p1

    new-instance v0, Lcom/amazon/kcp/home/widget/resume/ResumeWidgetUpdateEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/home/widget/resume/ResumeWidgetUpdateEvent;-><init>(I)V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onContentUpdate(Ljava/util/Collection;)V
    .locals 4
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        topic = "CONTENT_UPDATE"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/amazon/kindle/content/ContentUpdate;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "updates"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/content/ContentUpdate;

    .line 156
    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentUpdate;->getMetadata()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 158
    invoke-direct {p0, v1}, Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;->shouldIgnoreEvent(Lcom/amazon/kindle/content/ContentMetadata;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getDictionaryType()Lcom/amazon/kindle/model/content/DictionaryType;

    move-result-object v2

    sget-object v3, Lcom/amazon/kindle/model/content/DictionaryType;->FREE_DICT:Lcom/amazon/kindle/model/content/DictionaryType;

    if-ne v2, v3, :cond_1

    goto :goto_0

    .line 164
    :cond_1
    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->hasUserContent()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getIsInCarousel()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentUpdate;->getUpdatedFields()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->LAST_ACCESSED:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;->getMessageQueue()Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/home/widget/resume/ResumeWidgetUpdateEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/amazon/kcp/home/widget/resume/ResumeWidgetUpdateEvent;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 171
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onCountUpdate(Lcom/amazon/kindle/observablemodel/ModelCountUpdate;)V
    .locals 2

    const-string/jumbo v0, "update"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p1}, Lcom/amazon/kindle/observablemodel/ModelCountUpdate;->getCount()J

    move-result-wide v0

    long-to-int p1, v0

    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;->onCountUpdate(I)V

    return-void
.end method

.method public final onFirstIntegratorBatchFlushEvent(Lcom/amazon/kcp/integrator/FirstBatchFlushedEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;->itemsCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;->onCountUpdate(I)V

    return-void
.end method

.method public final registerItemDetailListener(Lcom/amazon/kindle/observablemodel/LibraryItemDetailListener;Lcom/amazon/kindle/observablemodel/ItemID;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/observablemodel/LibraryItemDetailListener<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ")V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;->accountId:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;->repository:Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;

    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;->accountId:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, p2}, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->registerItemDetailListener(Lcom/amazon/kindle/observablemodel/LibraryItemDetailListener;Ljava/lang/String;Lcom/amazon/kindle/observablemodel/ItemID;)V

    :cond_0
    return-void
.end method
