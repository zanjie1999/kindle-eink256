.class public abstract Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;
.super Ljava/lang/Object;
.source "LibraryFragmentHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$IAdapterFragmentListener;,
        Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final FIRST_BATCH_SIZE:I = 0x19

.field private static final MAX_LIST_VIEW_SCROLL_SPEED:I = 0x1f40

.field private static final MESSAGE_QUEUE:Lcom/amazon/kindle/krx/events/IMessageQueue;

.field private static final PAUSE_UPDATES_KEY:Ljava/lang/String; = "PauseUpdates"

.field private static final SELECTED_POSITION_KEY:Ljava/lang/String; = "SelectedPosition"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private actionMode:Landroid/view/ActionMode;

.field private adapterFragmentListener:Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$IAdapterFragmentListener;

.field private auxDisplayItemsProvider:Lcom/amazon/kindle/krx/providers/IProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kindle/krx/providers/IProvider<",
            "Ljava/util/Collection<",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            ">;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private catalogListener:Lcom/amazon/kcp/library/LibraryContentListener;

.field protected collectionsListener:Lcom/amazon/kcp/library/CollectionsContentListener;

.field contentHandler:Lcom/amazon/kcp/library/ILibraryContentInteractionHandler;

.field protected filter:Lcom/amazon/kcp/library/LibraryContentFilter;

.field protected fragment:Landroidx/fragment/app/Fragment;

.field protected groupType:Lcom/amazon/kindle/krx/library/LibraryGroupType;

.field protected handler:Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;

.field latestData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field final libraryAdapterFragment:Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment<",
            "TT;>;"
        }
    .end annotation
.end field

.field private libraryCoversRefresher:Lcom/amazon/kindle/krx/ui/ILibraryCoversRefresher;

.field private libraryFragmentClient:Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;

.field private final loaderCallbacks:Landroidx/loader/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final loaderId:I

.field private loaderInitPending:Z

.field private loadingInBackground:Z

.field maxItems:I

.field private final monitorCatalogUpdates:Z

.field private final monitorCollectionUpdates:Z

.field private moveToPosition:I

.field private multiChoiceListener:Landroid/widget/AbsListView$MultiChoiceModeListener;

.field protected originId:Ljava/lang/String;

.field private pendingLatestDataCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/foundation/internal/IObjectCallback<",
            "Ljava/util/List<",
            "TT;>;>;>;"
        }
    .end annotation
.end field

.field protected query:Lcom/amazon/kcp/library/ILibraryItemQuery;

.field private final queryModel:Lcom/amazon/kcp/library/query/ILibraryQueryModel;

.field protected sortType:Lcom/amazon/kcp/library/LibrarySortType;

.field private swappedLibrary:Z

.field protected viewType:Lcom/amazon/kindle/krx/library/LibraryView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 84
    const-class v0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->TAG:Ljava/lang/String;

    .line 125
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->MESSAGE_QUEUE:Lcom/amazon/kindle/krx/events/IMessageQueue;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/Fragment;Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;IZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment<",
            "TT;>;IZZ)V"
        }
    .end annotation

    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 100
    iput v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->maxItems:I

    .line 101
    iput v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->moveToPosition:I

    const/4 v0, 0x0

    .line 108
    iput-boolean v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->loadingInBackground:Z

    .line 109
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->pendingLatestDataCallbacks:Ljava/util/List;

    .line 133
    new-instance v1, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$1;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$1;-><init>(Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;)V

    iput-object v1, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->multiChoiceListener:Landroid/widget/AbsListView$MultiChoiceModeListener;

    .line 177
    new-instance v1, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$2;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$2;-><init>(Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;)V

    iput-object v1, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->libraryCoversRefresher:Lcom/amazon/kindle/krx/ui/ILibraryCoversRefresher;

    .line 191
    new-instance v1, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$3;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$3;-><init>(Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;)V

    iput-object v1, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->loaderCallbacks:Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    .line 625
    iput-boolean v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->swappedLibrary:Z

    .line 343
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->fragment:Landroidx/fragment/app/Fragment;

    .line 344
    iput p3, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->loaderId:I

    .line 345
    iput-boolean p4, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->monitorCatalogUpdates:Z

    .line 346
    iput-boolean p5, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->monitorCollectionUpdates:Z

    .line 347
    iput-object p2, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->libraryAdapterFragment:Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;

    .line 349
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 351
    new-instance p1, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$6;

    invoke-direct {p1, p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$6;-><init>(Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;)V

    .line 371
    invoke-static {}, Lcom/amazon/kcp/library/query/LibraryQueryModelBuilder;->newInstance()Lcom/amazon/kcp/library/query/LibraryQueryModelBuilder;

    move-result-object p2

    sget-object p3, Lcom/amazon/kcp/library/LibraryContentFilter;->ALL_ITEMS_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

    invoke-virtual {p2, p3}, Lcom/amazon/kcp/library/query/LibraryQueryModelBuilder;->withFilter(Lcom/amazon/kcp/library/LibraryContentFilter;)Lcom/amazon/kcp/library/query/LibraryQueryModelBuilder;

    invoke-virtual {p2}, Lcom/amazon/kcp/library/query/LibraryQueryModelBuilder;->buildModel()Lcom/amazon/kcp/library/query/ILibraryQueryModel;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->queryModel:Lcom/amazon/kcp/library/query/ILibraryQueryModel;

    .line 373
    iget-boolean p2, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->monitorCatalogUpdates:Z

    if-eqz p2, :cond_0

    .line 374
    new-instance p2, Lcom/amazon/kcp/library/LibraryContentListener;

    iget-object p3, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->queryModel:Lcom/amazon/kcp/library/query/ILibraryQueryModel;

    invoke-direct {p2, p1, v0, p3}, Lcom/amazon/kcp/library/LibraryContentListener;-><init>(Lcom/amazon/kcp/library/PausableListener$Callback;ZLcom/amazon/kcp/library/query/ILibraryQueryModel;)V

    iput-object p2, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->catalogListener:Lcom/amazon/kcp/library/LibraryContentListener;

    .line 375
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p2

    iget-object p3, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->catalogListener:Lcom/amazon/kcp/library/LibraryContentListener;

    invoke-interface {p2, p3}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 376
    iget-object p2, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->catalogListener:Lcom/amazon/kcp/library/LibraryContentListener;

    invoke-virtual {p2}, Lcom/amazon/kcp/library/PausableListener;->pauseUpdates()V

    .line 379
    :cond_0
    iget-boolean p2, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->monitorCollectionUpdates:Z

    if-eqz p2, :cond_1

    .line 380
    invoke-virtual {p0, p1, v0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->newCollectionsContentListener(Lcom/amazon/kcp/library/PausableListener$Callback;Z)Lcom/amazon/kcp/library/CollectionsContentListener;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->collectionsListener:Lcom/amazon/kcp/library/CollectionsContentListener;

    .line 381
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->setupCollectionListener()V

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;)Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->libraryFragmentClient:Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;

    return-object p0
.end method

.method static synthetic access$100(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentActivity;
    .locals 0

    .line 83
    invoke-static {p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->getActivity(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$202(Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->actionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$302(Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;Z)Z
    .locals 0

    .line 83
    iput-boolean p1, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->loadingInBackground:Z

    return p1
.end method

.method static synthetic access$400(Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->onLoaderReset()V

    return-void
.end method

.method static synthetic access$500(Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;)Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$IAdapterFragmentListener;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->adapterFragmentListener:Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$IAdapterFragmentListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;Lcom/amazon/kindle/event/EventType;)V
    .locals 0

    .line 83
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->restartLoader(Lcom/amazon/kindle/event/EventType;)V

    return-void
.end method

.method static synthetic access$700()Lcom/amazon/kindle/krx/events/IMessageQueue;
    .locals 1

    .line 83
    sget-object v0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->MESSAGE_QUEUE:Lcom/amazon/kindle/krx/events/IMessageQueue;

    return-object v0
.end method

.method static synthetic access$802(Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;I)I
    .locals 0

    .line 83
    iput p1, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->moveToPosition:I

    return p1
.end method

.method private addAuxiliaryLibraryDisplayItems()V
    .locals 2

    .line 640
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->auxDisplayItemsProvider:Lcom/amazon/kindle/krx/providers/IProvider;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->latestData:Ljava/util/List;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 641
    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/providers/IProvider;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 642
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 644
    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->latestData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method private static getActivity(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentActivity;
    .locals 0

    .line 967
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    return-object p0
.end method

.method private getImageDimension()Lcom/amazon/kindle/util/drawing/Dimension;
    .locals 1

    .line 499
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->libraryAdapterFragment:Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;

    invoke-interface {v0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;->getImageDimension()Lcom/amazon/kindle/util/drawing/Dimension;

    move-result-object v0

    return-object v0
.end method

.method private handleLoadFinished(Lcom/amazon/kindle/event/EventType;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/event/EventType;",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 650
    invoke-virtual {p0, p2, p1}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->shouldSwapData(Ljava/util/List;Lcom/amazon/kindle/event/EventType;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 651
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->libraryAdapterFragment:Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;

    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->latestData:Ljava/util/List;

    invoke-interface {p1, v0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;->swapList(Ljava/util/List;)Ljava/util/List;

    .line 653
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->actionMode:Landroid/view/ActionMode;

    if-eqz p1, :cond_1

    .line 659
    iget-boolean p1, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->swappedLibrary:Z

    if-eqz p1, :cond_1

    .line 661
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->actionMode:Landroid/view/ActionMode;

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    const/4 p1, 0x0

    .line 662
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->actionMode:Landroid/view/ActionMode;

    .line 663
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->libraryAdapterFragment:Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;

    invoke-interface {p1}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;->clearCheckedItems()V

    .line 664
    iput-boolean p2, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->swappedLibrary:Z

    goto :goto_1

    .line 669
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->pendingLatestDataCallbacks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/foundation/internal/IObjectCallback;

    .line 670
    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->latestData:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/IObjectCallback;->execute(Ljava/lang/Object;)V

    goto :goto_0

    .line 673
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->pendingLatestDataCallbacks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 674
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->refreshActionMode()V

    .line 675
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->libraryAdapterFragment:Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;

    invoke-interface {p1}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;->onRefresh()V

    .line 677
    sget-object p1, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->LIBRARY_DATA_LOAD:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {p1}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Z)V

    .line 679
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->handler:Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;->getTab()Lcom/amazon/kindle/krx/library/LibraryView;

    move-result-object p1

    sget-object p2, Lcom/amazon/kindle/krx/library/LibraryView;->NEWSSTAND:Lcom/amazon/kindle/krx/library/LibraryView;

    if-ne p1, p2, :cond_2

    invoke-static {}, Lcom/amazon/kcp/debug/LargeLibraryDebugUtils;->isLargeLibraryEnabled()Z

    move-result p1

    if-nez p1, :cond_2

    .line 680
    sget-object p1, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The num of periodical issues: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/amazon/kcp/library/LibraryContentFilter;->NEWSSTAND_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

    .line 681
    invoke-static {v0}, Lcom/amazon/kcp/library/LibraryCursorFactory;->queryNumberOfLibraryItems(Lcom/amazon/kcp/library/LibraryContentFilter;)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 680
    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    :cond_2
    sget-object p1, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->SHOW_LIBRARY:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-static {p1}, Lcom/amazon/kindle/performance/PerformanceEventBuilder;->createEndEvent(Lcom/amazon/kindle/performance/KindlePerformanceConstants;)Lcom/amazon/kindle/performance/PerformanceEventBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/performance/PerformanceEventBuilder;->buildAndSend()V

    return-void
.end method

.method private haveIdenticalItems(Ljava/util/List;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/List<",
            "TT;>;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 851
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 855
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 856
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->getItemId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 857
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->getItemId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 858
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method private initLoader()V
    .locals 1

    .line 441
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->fragment:Landroidx/fragment/app/Fragment;

    invoke-static {v0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->getActivity(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->initLoader(Landroid/app/Activity;)V

    return-void
.end method

.method private initLoader(Landroid/app/Activity;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 448
    :cond_0
    sget-object p1, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->LIBRARY_DATA_LOAD:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {p1}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Z)V

    .line 449
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->fragment:Landroidx/fragment/app/Fragment;

    invoke-static {p1}, Landroidx/loader/app/LoaderManager;->getInstance(Landroidx/lifecycle/LifecycleOwner;)Landroidx/loader/app/LoaderManager;

    move-result-object p1

    iget v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->loaderId:I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->loaderCallbacks:Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {p1, v0, v1, v2}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    const/4 p1, 0x0

    .line 450
    iput-boolean p1, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->loaderInitPending:Z

    return-void
.end method

.method private onLoaderReset()V
    .locals 2

    .line 722
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->libraryAdapterFragment:Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;

    invoke-interface {v0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;->hasAdapter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 723
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->libraryAdapterFragment:Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;->swapList(Ljava/util/List;)Ljava/util/List;

    .line 725
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->refreshActionMode()V

    .line 726
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->libraryAdapterFragment:Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;

    invoke-interface {v0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;->onRefresh()V

    return-void
.end method

.method private pauseListeners()V
    .locals 1

    .line 933
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->catalogListener:Lcom/amazon/kcp/library/LibraryContentListener;

    if-eqz v0, :cond_0

    .line 934
    invoke-virtual {v0}, Lcom/amazon/kcp/library/PausableListener;->pauseUpdates()V

    .line 937
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->isUsingCollections()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 938
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->collectionsListener:Lcom/amazon/kcp/library/CollectionsContentListener;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/PausableListener;->pauseUpdates()V

    .line 940
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->contentHandler:Lcom/amazon/kcp/library/ILibraryContentInteractionHandler;

    invoke-interface {v0}, Lcom/amazon/kcp/library/ILibraryContentInteractionHandler;->onStop()V

    return-void
.end method

.method private refreshActionMode()V
    .locals 1

    .line 841
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->actionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 842
    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    :cond_0
    return-void
.end method

.method private restartLoader(Landroidx/loader/app/LoaderManager;Lcom/amazon/kindle/event/EventType;)V
    .locals 3

    .line 466
    sget-object v0, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->LIBRARY_DATA_LOAD:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {v0}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Z)V

    .line 467
    iget v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->loaderId:I

    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->loaderCallbacks:Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroidx/loader/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/library/AbstractLibraryCursorLoader;

    .line 473
    invoke-virtual {p1, p2}, Lcom/amazon/kcp/library/AbstractLibraryCursorLoader;->setRefreshType(Lcom/amazon/kindle/event/EventType;)V

    const/4 p1, 0x0

    .line 474
    iput-boolean p1, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->loaderInitPending:Z

    return-void
.end method

.method private restartLoader(Lcom/amazon/kindle/event/EventType;)V
    .locals 2

    .line 457
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->fragment:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroidx/loader/app/LoaderManager;->getInstance(Landroidx/lifecycle/LifecycleOwner;)Landroidx/loader/app/LoaderManager;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 458
    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 462
    :cond_1
    invoke-direct {p0, v0, p1}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->restartLoader(Landroidx/loader/app/LoaderManager;Lcom/amazon/kindle/event/EventType;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private resumeListeners()V
    .locals 2

    .line 912
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->catalogListener:Lcom/amazon/kcp/library/LibraryContentListener;

    if-eqz v0, :cond_0

    .line 913
    invoke-virtual {v0}, Lcom/amazon/kcp/library/PausableListener;->resumeUpdates()V

    .line 916
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->isUsingCollections()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 917
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->collectionsListener:Lcom/amazon/kcp/library/CollectionsContentListener;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/PausableListener;->resumeUpdates()V

    .line 920
    :cond_1
    iget-boolean v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->loaderInitPending:Z

    if-eqz v0, :cond_2

    .line 921
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->initLoader()V

    .line 924
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->libraryAdapterFragment:Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;

    invoke-interface {v0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;->notifyDataSetChanged()V

    .line 926
    invoke-static {}, Lcom/amazon/kindle/krx/KindleReaderSDK;->getInstance()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryUIManager()Lcom/amazon/kindle/krx/ui/ILibraryUIManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->libraryCoversRefresher:Lcom/amazon/kindle/krx/ui/ILibraryCoversRefresher;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/ui/ILibraryUIManager;->registerLibraryCoversRefresher(Lcom/amazon/kindle/krx/ui/ILibraryCoversRefresher;)V

    return-void
.end method

.method static setCachePivot(IILcom/amazon/kindle/util/drawing/Dimension;)V
    .locals 0

    add-int/2addr p0, p1

    .line 867
    div-int/lit8 p0, p0, 0x2

    if-gez p0, :cond_0

    const/4 p0, 0x0

    .line 871
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getCoverCache()Lcom/amazon/kcp/cover/ICoverCacheManager;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Lcom/amazon/kcp/cover/ICoverCacheManager;->setCachePivot(ILcom/amazon/kindle/util/drawing/Dimension;)V

    return-void
.end method

.method private setupCollectionListener()V
    .locals 2

    .line 737
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->collectionsListener:Lcom/amazon/kcp/library/CollectionsContentListener;

    if-eqz v0, :cond_3

    .line 738
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->isUsingCollections()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/amazon/kindle/collections/CollectionsManagerHolder;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 739
    invoke-static {}, Lcom/amazon/kindle/collections/CollectionsManagerHolder;->getInstance()Lcom/amazon/kindle/collections/ICollectionsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->collectionsListener:Lcom/amazon/kcp/library/CollectionsContentListener;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/collections/ICollectionsManager;->isRegistered(Lcom/amazon/kindle/collections/ICollectionsListener;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 740
    invoke-static {}, Lcom/amazon/kindle/collections/CollectionsManagerHolder;->getInstance()Lcom/amazon/kindle/collections/ICollectionsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->collectionsListener:Lcom/amazon/kcp/library/CollectionsContentListener;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/collections/ICollectionsManager;->registerListener(Lcom/amazon/kindle/collections/ICollectionsListener;)V

    .line 743
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->fragment:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_1

    .line 744
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->collectionsListener:Lcom/amazon/kcp/library/CollectionsContentListener;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/PausableListener;->resumeUpdates()V

    goto :goto_0

    .line 746
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->collectionsListener:Lcom/amazon/kcp/library/CollectionsContentListener;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/PausableListener;->pauseUpdates()V

    goto :goto_0

    .line 749
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->collectionsListener:Lcom/amazon/kcp/library/CollectionsContentListener;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/PausableListener;->pauseUpdates()V

    :cond_3
    :goto_0
    return-void
.end method

.method private updateCachePivot()V
    .locals 3

    .line 730
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->getImageDimension()Lcom/amazon/kindle/util/drawing/Dimension;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 732
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getCoverCache()Lcom/amazon/kcp/cover/ICoverCacheManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lcom/amazon/kcp/cover/ICoverCacheManager;->setCachePivot(ILcom/amazon/kindle/util/drawing/Dimension;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract actionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
.end method

.method protected abstract createActionMenu(Landroid/view/ActionMode;Landroid/view/Menu;)V
.end method

.method protected abstract destroyActionMenu(Landroid/view/ActionMode;)V
.end method

.method public executeWithLatestData(Lcom/amazon/foundation/internal/IObjectCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/foundation/internal/IObjectCallback<",
            "Ljava/util/List<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 817
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->latestData:Ljava/util/List;

    invoke-interface {p1, v0}, Lcom/amazon/foundation/internal/IObjectCallback;->execute(Ljava/lang/Object;)V

    .line 821
    iget-boolean v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->loadingInBackground:Z

    if-eqz v0, :cond_0

    .line 822
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->pendingLatestDataCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method getActionMode()Landroid/view/ActionMode;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->actionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method public getFilter()Lcom/amazon/kcp/library/LibraryContentFilter;
    .locals 1

    .line 596
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->filter:Lcom/amazon/kcp/library/LibraryContentFilter;

    return-object v0
.end method

.method protected abstract getItemId(Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public getLibraryFilter()Lcom/amazon/kcp/library/ILibraryFilter;
    .locals 1

    .line 972
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->handler:Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;->getLibraryContext()Lcom/amazon/kcp/library/LibraryContext;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 973
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->handler:Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;

    invoke-interface {v0}, Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;->getLibraryContext()Lcom/amazon/kcp/library/LibraryContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/library/LibraryContext;->getLibraryFilter()Lcom/amazon/kcp/library/ILibraryFilter;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method getMultiChoiceListener()Landroid/widget/AbsListView$MultiChoiceModeListener;
    .locals 1

    .line 523
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->multiChoiceListener:Landroid/widget/AbsListView$MultiChoiceModeListener;

    return-object v0
.end method

.method protected isUsingCollections()Z
    .locals 2

    .line 837
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->viewType:Lcom/amazon/kindle/krx/library/LibraryView;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/amazon/kindle/krx/library/LibraryView;->COLLECTION_ITEMS:Lcom/amazon/kindle/krx/library/LibraryView;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected abstract itemCheckedStateChanged(IZLjava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZTT;)Z"
        }
    .end annotation
.end method

.method protected newCollectionsContentListener(Lcom/amazon/kcp/library/PausableListener$Callback;Z)Lcom/amazon/kcp/library/CollectionsContentListener;
    .locals 1

    .line 404
    new-instance v0, Lcom/amazon/kcp/library/CollectionsContentListener;

    invoke-direct {v0, p1, p2}, Lcom/amazon/kcp/library/CollectionsContentListener;-><init>(Lcom/amazon/kcp/library/PausableListener$Callback;Z)V

    return-object v0
.end method

.method protected newContentInteractionHandler(Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;)Lcom/amazon/kcp/library/LibraryContentInteractionHandler;
    .locals 3

    .line 479
    new-instance v0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;

    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->fragment:Landroidx/fragment/app/Fragment;

    invoke-static {v1}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->getActivity(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;-><init>(Landroidx/fragment/app/FragmentActivity;Landroidx/fragment/app/FragmentManager;Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;)V

    return-object v0
.end method

.method public onActivityCreated()V
    .locals 1

    .line 483
    iget-boolean v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->loaderInitPending:Z

    if-eqz v0, :cond_0

    .line 484
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->initLoader()V

    :cond_0
    return-void
.end method

.method public onAdapterCreated(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 1

    .line 243
    new-instance v0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$5;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$5;-><init>(Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    return-void
.end method

.method public onAuthenticationEvent(Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 945
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;->getType()Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;->LOGOUT:Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    if-ne p1, v0, :cond_0

    .line 947
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->libraryAdapterFragment:Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;->hasAdapter()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 948
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object p1

    new-instance v0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$10;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$10;-><init>(Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;)V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "SelectedPosition"

    .line 410
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->moveToPosition:I

    .line 411
    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isDetached()Z

    const-string v1, "PauseUpdates"

    .line 412
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 414
    :cond_0
    iput-object p2, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->libraryFragmentClient:Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;

    .line 415
    invoke-virtual {p0, p2}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->newContentInteractionHandler(Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;)Lcom/amazon/kcp/library/LibraryContentInteractionHandler;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->contentHandler:Lcom/amazon/kcp/library/ILibraryContentInteractionHandler;

    .line 417
    iget-boolean p2, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->monitorCatalogUpdates:Z

    if-eqz p2, :cond_1

    .line 418
    iget-object p2, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->catalogListener:Lcom/amazon/kcp/library/LibraryContentListener;

    invoke-virtual {p2, p1}, Lcom/amazon/kcp/library/PausableListener;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 421
    :cond_1
    iget-boolean p1, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->monitorCollectionUpdates:Z

    if-eqz p1, :cond_2

    .line 422
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->setupCollectionListener()V

    :cond_2
    if-eqz v0, :cond_3

    const/4 p1, 0x1

    .line 426
    iput-boolean p1, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->loaderInitPending:Z

    goto :goto_0

    .line 428
    :cond_3
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->fragment:Landroidx/fragment/app/Fragment;

    invoke-static {p1}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->getActivity(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 429
    invoke-virtual {p1}, Landroid/app/Activity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object p1

    iget p2, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->loaderId:I

    invoke-virtual {p1, p2}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object p1

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    .line 430
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->restartLoader(Lcom/amazon/kindle/event/EventType;)V

    goto :goto_0

    .line 432
    :cond_4
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->initLoader()V

    :goto_0
    return-void
.end method

.method protected abstract onCreateLoader()Landroidx/loader/content/Loader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation
.end method

.method public onDestroy()V
    .locals 2

    .line 507
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    .line 508
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->collectionsListener:Lcom/amazon/kcp/library/CollectionsContentListener;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amazon/kindle/collections/CollectionsManagerHolder;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 509
    invoke-static {}, Lcom/amazon/kindle/collections/CollectionsManagerHolder;->getInstance()Lcom/amazon/kindle/collections/ICollectionsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->collectionsListener:Lcom/amazon/kcp/library/CollectionsContentListener;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/collections/ICollectionsManager;->unregisterListener(Lcom/amazon/kindle/collections/ICollectionsListener;)V

    .line 511
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->catalogListener:Lcom/amazon/kcp/library/LibraryContentListener;

    if-eqz v0, :cond_1

    .line 512
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->catalogListener:Lcom/amazon/kcp/library/LibraryContentListener;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    :cond_1
    const/4 v0, 0x0

    .line 514
    iput-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->actionMode:Landroid/view/ActionMode;

    return-void
.end method

.method protected onHiddenChange(Z)V
    .locals 0

    if-nez p1, :cond_0

    .line 902
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->resumeListeners()V

    goto :goto_0

    .line 904
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->pauseListeners()V

    :goto_0
    return-void
.end method

.method onItemClickWithReadingStream(Landroid/view/View;IJLjava/lang/String;)V
    .locals 0

    if-ltz p2, :cond_0

    .line 782
    iget-object p3, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->latestData:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_0

    .line 783
    invoke-static {p2}, Lcom/amazon/kcp/util/fastmetrics/BookOpenLocationMetrics;->reportBookOpenedFromLibrary(I)V

    .line 784
    invoke-static {}, Lcom/amazon/kindle/contentupdate/metrics/BookOpenIndexMetricsManager;->getInstance()Lcom/amazon/kindle/contentupdate/metrics/BookOpenIndexMetrics;

    move-result-object p3

    invoke-interface {p3, p2}, Lcom/amazon/kindle/contentupdate/metrics/BookOpenIndexMetrics;->reportBookIndexOpenedFromLibrary(I)V

    .line 785
    iget-object p3, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->latestData:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p5}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->onItemClickWithReadingStream(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected abstract onItemClickWithReadingStream(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method protected onLoadFinished(Landroidx/loader/content/Loader;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "TT;>;>;",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 628
    iput-object p2, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->latestData:Ljava/util/List;

    .line 630
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->addAuxiliaryLibraryDisplayItems()V

    const/4 v0, 0x0

    .line 632
    iput-boolean v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->loadingInBackground:Z

    .line 634
    check-cast p1, Lcom/amazon/kcp/library/AbstractLibraryCursorLoader;

    invoke-virtual {p1}, Lcom/amazon/kcp/library/AbstractLibraryCursorLoader;->getRefreshType()Lcom/amazon/kindle/event/EventType;

    move-result-object p1

    .line 636
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->handleLoadFinished(Lcom/amazon/kindle/event/EventType;Ljava/util/List;)V

    return-void
.end method

.method public onReaderControllerEvent(Lcom/amazon/kcp/reader/ReaderControllerEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 601
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderControllerEvent;->getType()Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;

    move-result-object p1

    sget-object v0, Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;->BOOK_LIFECYCLE_ACCESSED:Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;

    if-ne p1, v0, :cond_0

    .line 602
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$8;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$8;-><init>(Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method protected onRefresh(Lcom/amazon/kcp/library/PausableListener;)V
    .locals 0

    .line 772
    invoke-virtual {p1}, Lcom/amazon/kcp/library/PausableListener;->refresh()V

    .line 773
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->updateCachePivot()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 495
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->contentHandler:Lcom/amazon/kcp/library/ILibraryContentInteractionHandler;

    invoke-interface {v0}, Lcom/amazon/kcp/library/ILibraryContentInteractionHandler;->onResume()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 527
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->catalogListener:Lcom/amazon/kcp/library/LibraryContentListener;

    if-eqz v0, :cond_0

    .line 528
    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/PausableListener;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 531
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 532
    iget v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->moveToPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->libraryAdapterFragment:Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;

    invoke-interface {v0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;->firstVisiblePosition()I

    move-result v0

    :goto_0
    const-string v1, "SelectedPosition"

    .line 533
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v0, 0x1

    const-string v1, "PauseUpdates"

    .line 534
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_2
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 489
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    .line 490
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->resumeListeners()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 503
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->pauseListeners()V

    return-void
.end method

.method protected abstract prepareActionMenu(Landroid/view/Menu;)V
.end method

.method public refresh()V
    .locals 3

    .line 755
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->setupCollectionListener()V

    .line 756
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->catalogListener:Lcom/amazon/kcp/library/LibraryContentListener;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->collectionsListener:Lcom/amazon/kcp/library/CollectionsContentListener;

    :cond_0
    if-eqz v0, :cond_1

    .line 758
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$9;

    invoke-direct {v2, p0, v0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$9;-><init>(Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;Lcom/amazon/kcp/library/PausableListener;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method resetLibraryCursorCache()V
    .locals 2

    .line 390
    new-instance v0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$7;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$7;-><init>(Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;)V

    .line 396
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->isRunningOnMainThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 397
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    .line 399
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method public setAdapterFragmentListener(Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$IAdapterFragmentListener;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->adapterFragmentListener:Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$IAdapterFragmentListener;

    return-void
.end method

.method public setFilterAndSort(Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;)V
    .locals 8

    .line 539
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->handler:Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;

    .line 540
    invoke-interface {p1}, Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;->getGroupType()Lcom/amazon/kindle/krx/library/LibraryGroupType;

    move-result-object v1

    invoke-interface {p1}, Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;->getFilter()Lcom/amazon/kcp/library/LibraryContentFilter;

    move-result-object v2

    invoke-interface {p1}, Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;->getSortType()Lcom/amazon/kcp/library/LibrarySortType;

    move-result-object v3

    invoke-interface {p1}, Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;->getTab()Lcom/amazon/kindle/krx/library/LibraryView;

    move-result-object v4

    .line 541
    invoke-interface {p1}, Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;->getQuery()Lcom/amazon/kcp/library/ILibraryItemQuery;

    move-result-object v6

    invoke-interface {p1}, Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;->getAuxiliaryLibraryDisplayItemsProvider()Lcom/amazon/kindle/krx/providers/IProvider;

    move-result-object v7

    const-string v5, "All"

    move-object v0, p0

    .line 540
    invoke-virtual/range {v0 .. v7}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->setFilterAndSort(Lcom/amazon/kindle/krx/library/LibraryGroupType;Lcom/amazon/kcp/library/LibraryContentFilter;Lcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kindle/krx/library/LibraryView;Ljava/lang/String;Lcom/amazon/kcp/library/ILibraryItemQuery;Lcom/amazon/kindle/krx/providers/IProvider;)V

    return-void
.end method

.method public setFilterAndSort(Lcom/amazon/kindle/krx/library/LibraryGroupType;Lcom/amazon/kcp/library/LibraryContentFilter;Lcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kindle/krx/library/LibraryView;Ljava/lang/String;Lcom/amazon/kcp/library/ILibraryItemQuery;)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 546
    invoke-virtual/range {v0 .. v7}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->setFilterAndSort(Lcom/amazon/kindle/krx/library/LibraryGroupType;Lcom/amazon/kcp/library/LibraryContentFilter;Lcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kindle/krx/library/LibraryView;Ljava/lang/String;Lcom/amazon/kcp/library/ILibraryItemQuery;Lcom/amazon/kindle/krx/providers/IProvider;)V

    return-void
.end method

.method public setFilterAndSort(Lcom/amazon/kindle/krx/library/LibraryGroupType;Lcom/amazon/kcp/library/LibraryContentFilter;Lcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kindle/krx/library/LibraryView;Ljava/lang/String;Lcom/amazon/kcp/library/ILibraryItemQuery;Lcom/amazon/kindle/krx/providers/IProvider;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/library/LibraryGroupType;",
            "Lcom/amazon/kcp/library/LibraryContentFilter;",
            "Lcom/amazon/kcp/library/LibrarySortType;",
            "Lcom/amazon/kindle/krx/library/LibraryView;",
            "Ljava/lang/String;",
            "Lcom/amazon/kcp/library/ILibraryItemQuery;",
            "Lcom/amazon/kindle/krx/providers/IProvider<",
            "Ljava/util/Collection<",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            ">;",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 552
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->filter:Lcom/amazon/kcp/library/LibraryContentFilter;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/amazon/kcp/library/LibraryContentFilter;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_4

    .line 553
    iget-object v3, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->groupType:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    if-eqz v3, :cond_1

    .line 554
    invoke-virtual {v3, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_1
    iget-object v3, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->sortType:Lcom/amazon/kcp/library/LibrarySortType;

    if-eqz v3, :cond_2

    .line 555
    invoke-virtual {v3, p3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_2
    iget-object v3, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->viewType:Lcom/amazon/kindle/krx/library/LibraryView;

    if-eqz v3, :cond_3

    .line 556
    invoke-virtual {v3, p4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v3, 0x1

    .line 557
    :goto_2
    iget-object v4, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->catalogListener:Lcom/amazon/kcp/library/LibraryContentListener;

    if-eqz v4, :cond_5

    if-eqz v3, :cond_5

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    .line 559
    :goto_3
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->groupType:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    .line 560
    iput-object p2, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->filter:Lcom/amazon/kcp/library/LibraryContentFilter;

    .line 561
    iput-object p3, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->sortType:Lcom/amazon/kcp/library/LibrarySortType;

    .line 562
    iput-object p4, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->viewType:Lcom/amazon/kindle/krx/library/LibraryView;

    .line 563
    iput-object p5, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->originId:Ljava/lang/String;

    .line 564
    iput-object p6, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->query:Lcom/amazon/kcp/library/ILibraryItemQuery;

    .line 565
    iput-object p7, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->auxDisplayItemsProvider:Lcom/amazon/kindle/krx/providers/IProvider;

    if-eqz v0, :cond_6

    .line 567
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->libraryAdapterFragment:Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;

    const/4 p4, 0x0

    invoke-interface {p1, p4}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;->swapList(Ljava/util/List;)Ljava/util/List;

    :cond_6
    if-eqz v1, :cond_7

    .line 571
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->refresh()V

    .line 575
    :cond_7
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->setupCollectionListener()V

    .line 577
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->queryModel:Lcom/amazon/kcp/library/query/ILibraryQueryModel;

    iget-object p4, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->filter:Lcom/amazon/kcp/library/LibraryContentFilter;

    iget-object p5, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->groupType:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    iget p6, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->maxItems:I

    iget-object p7, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->sortType:Lcom/amazon/kcp/library/LibrarySortType;

    invoke-interface {p1, p4, p5, p6, p7}, Lcom/amazon/kcp/library/query/ILibraryQueryModel;->updateModel(Lcom/amazon/kcp/library/LibraryContentFilter;Lcom/amazon/kindle/krx/library/LibraryGroupType;ILcom/amazon/kcp/library/LibrarySortType;)V

    .line 579
    const-class p1, Lcom/amazon/kcp/LargeLibraryPerformanceTracker;

    invoke-static {p1}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/LargeLibraryPerformanceTracker;

    if-eqz p1, :cond_9

    .line 581
    invoke-virtual {p2}, Lcom/amazon/kcp/library/LibraryContentFilter;->getPredicate()Lcom/amazon/kcp/library/ILibraryDisplayItemPredicate;

    move-result-object p4

    .line 582
    invoke-virtual {p3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lcom/amazon/kcp/library/LibraryContentFilter;->getFilter()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2}, Lcom/amazon/kcp/library/LibraryContentFilter;->getFilterArgs()Ljava/util/List;

    move-result-object p2

    if-nez p4, :cond_8

    const-string/jumbo p4, "null"

    goto :goto_4

    :cond_8
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    :goto_4
    invoke-interface {p1, p3, p5, p2, p4}, Lcom/amazon/kcp/LargeLibraryPerformanceTracker;->onSortAndFilterChanged(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method shouldInvalidateActionMode(IZ)Z
    .locals 2

    .line 215
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->libraryAdapterFragment:Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;

    invoke-interface {v0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    .line 218
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 219
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->itemCheckedStateChanged(IZLjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected shouldSwapData(Ljava/util/List;Lcom/amazon/kindle/event/EventType;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/amazon/kindle/event/EventType;",
            ")Z"
        }
    .end annotation

    .line 696
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->libraryAdapterFragment:Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;

    invoke-interface {v0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;->hasAdapter()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 700
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->libraryAdapterFragment:Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;

    invoke-interface {v0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;->getList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->haveIdenticalItems(Ljava/util/List;Ljava/util/List;)Z

    move-result p1

    .line 703
    sget-object v0, Lcom/amazon/kcp/library/LibraryContentFilter;->CAROUSEL_ITEMS_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->filter:Lcom/amazon/kcp/library/LibraryContentFilter;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/LibraryContentFilter;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    return v1

    :cond_1
    if-eqz p2, :cond_3

    .line 709
    sget-object v0, Lcom/amazon/kindle/content/ILibraryService;->CONTENT_ADD:Lcom/amazon/kindle/event/EventType;

    invoke-virtual {v0, p2}, Lcom/amazon/kindle/event/EventType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/amazon/kindle/content/ILibraryService;->CONTENT_DELETE:Lcom/amazon/kindle/event/EventType;

    .line 710
    invoke-virtual {v0, p2}, Lcom/amazon/kindle/event/EventType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/amazon/kindle/collections/CollectionsManager;->COLLECTION_UPDATE:Lcom/amazon/kindle/event/EventType;

    .line 711
    invoke-virtual {v0, p2}, Lcom/amazon/kindle/event/EventType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/amazon/kindle/collections/CollectionsManager;->COLLECTION_DELETE:Lcom/amazon/kindle/event/EventType;

    .line 712
    invoke-virtual {v0, p2}, Lcom/amazon/kindle/event/EventType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/amazon/kindle/collections/CollectionsManager;->COLLECTION_ITEM_UPDATE:Lcom/amazon/kindle/event/EventType;

    .line 713
    invoke-virtual {v0, p2}, Lcom/amazon/kindle/event/EventType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/amazon/kindle/collections/CollectionsManager;->COLLECTION_ITEM_DELETE:Lcom/amazon/kindle/event/EventType;

    .line 714
    invoke-virtual {v0, p2}, Lcom/amazon/kindle/event/EventType;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    xor-int/2addr p1, v1

    return p1

    :cond_3
    :goto_0
    return v1
.end method
