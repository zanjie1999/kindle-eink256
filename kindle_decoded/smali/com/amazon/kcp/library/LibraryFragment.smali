.class public Lcom/amazon/kcp/library/LibraryFragment;
.super Landroidx/fragment/app/Fragment;
.source "LibraryFragment.java"


# static fields
.field private static final BACKISSUE_TYPE:Ljava/lang/String; = "BackIssues"

.field private static final DOWNLOAD_TRIGGER:Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;

.field private static final SERIESGROUP_TYPE:Ljava/lang/String; = "SeriesGroup"

.field private static final TAG:Ljava/lang/String;

.field private static final TOGGLE_ALL:Ljava/lang/String; = "ALL"

.field private static final TOGGLE_DOWNLOADED:Ljava/lang/String; = "DOWNLOADED"


# instance fields
.field private filterStateManager:Lcom/amazon/kcp/library/LibraryFilterStateManager;

.field private isActivated:Z

.field private isStarted:Z

.field private libraryContext:Lcom/amazon/kcp/library/LibraryContext;

.field private libraryFragmentManager:Lcom/amazon/kcp/library/fragments/LibraryFragmentManager;

.field private final libraryFragmentManagerClient:Lcom/amazon/kcp/library/LibraryFragmentManagerClient;

.field private libraryMenuOptionsBar:Lcom/amazon/kcp/library/navigation/LibraryMenuOptionsBar;

.field private final libraryViewChangedListener:Lcom/amazon/kcp/library/LibraryViewChangedListener;

.field private final markAsReadHiddenItemToastHelper:Lcom/amazon/kcp/library/MarkAsReadHiddenItemToastHelper;

.field private final messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

.field private screenletContext:Lcom/amazon/kindle/krx/ui/ScreenletContext;

.field private swipeRefreshHelper:Lcom/amazon/kcp/library/SwipeRefreshHelper;

.field private viewOptionsModel:Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 59
    const-class v0, Lcom/amazon/kcp/library/LibraryFragment;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/LibraryFragment;->TAG:Ljava/lang/String;

    .line 62
    new-instance v0, Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource$LIBRARY;

    const-string v1, "Fragment"

    invoke-direct {v0, v1}, Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource$LIBRARY;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/library/LibraryFragment;->DOWNLOAD_TRIGGER:Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 167
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 81
    sget-object v0, Lcom/amazon/kcp/library/MarkAsReadHiddenItemToastHelper;->Companion:Lcom/amazon/kcp/library/MarkAsReadHiddenItemToastHelper$Companion;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/MarkAsReadHiddenItemToastHelper$Companion;->getInstance()Lcom/amazon/kcp/library/MarkAsReadHiddenItemToastHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/LibraryFragment;->markAsReadHiddenItemToastHelper:Lcom/amazon/kcp/library/MarkAsReadHiddenItemToastHelper;

    .line 94
    new-instance v0, Lcom/amazon/kcp/library/LibraryFragment$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/LibraryFragment$1;-><init>(Lcom/amazon/kcp/library/LibraryFragment;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/LibraryFragment;->libraryViewChangedListener:Lcom/amazon/kcp/library/LibraryViewChangedListener;

    .line 101
    new-instance v0, Lcom/amazon/kcp/library/LibraryFragment$2;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/LibraryFragment$2;-><init>(Lcom/amazon/kcp/library/LibraryFragment;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/LibraryFragment;->libraryFragmentManagerClient:Lcom/amazon/kcp/library/LibraryFragmentManagerClient;

    .line 168
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 169
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    const-class v1, Lcom/amazon/kcp/library/LibraryFragment;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/LibraryFragment;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/library/LibraryFragment;Lcom/amazon/kindle/krx/library/LibraryView;Z)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/library/LibraryFragment;->showLibraryView(Lcom/amazon/kindle/krx/library/LibraryView;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kcp/library/LibraryFragment;)Lcom/amazon/kindle/krx/ui/ScreenletContext;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/amazon/kcp/library/LibraryFragment;->screenletContext:Lcom/amazon/kindle/krx/ui/ScreenletContext;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/kcp/library/LibraryFragment;)Lcom/amazon/kcp/library/navigation/LibraryMenuOptionsBar;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/amazon/kcp/library/LibraryFragment;->libraryMenuOptionsBar:Lcom/amazon/kcp/library/navigation/LibraryMenuOptionsBar;

    return-object p0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 58
    sget-object v0, Lcom/amazon/kcp/library/LibraryFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/amazon/kcp/library/LibraryFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/library/LibraryFragment;->launchBackIssuesScreenlet(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/amazon/kcp/library/LibraryFragment;)Lcom/amazon/kcp/library/LibraryContext;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/amazon/kcp/library/LibraryFragment;->libraryContext:Lcom/amazon/kcp/library/LibraryContext;

    return-object p0
.end method

.method static synthetic access$600(Lcom/amazon/kcp/library/LibraryFragment;)Lcom/amazon/kcp/library/fragments/LibraryFragmentManager;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/amazon/kcp/library/LibraryFragment;->libraryFragmentManager:Lcom/amazon/kcp/library/fragments/LibraryFragmentManager;

    return-object p0
.end method

.method static synthetic access$700(Lcom/amazon/kcp/library/LibraryFragment;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/amazon/kcp/library/LibraryFragment;->resetToDefaultLibraryViewAndSort()V

    return-void
.end method

.method private createLibraryContext(Lcom/amazon/kcp/library/ILibraryFilter;Lcom/amazon/kindle/krx/library/LibraryView;)V
    .locals 10

    .line 219
    new-instance v9, Lcom/amazon/kcp/library/LibraryContext;

    iget-object v2, p0, Lcom/amazon/kcp/library/LibraryFragment;->filterStateManager:Lcom/amazon/kcp/library/LibraryFilterStateManager;

    .line 224
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    .line 227
    invoke-direct {p0}, Lcom/amazon/kcp/library/LibraryFragment;->getInlineFilterGroupName()Ljava/lang/String;

    move-result-object v8

    const-string v4, "Library"

    const-string v6, "LibraryFilterSortKey"

    const/4 v7, 0x0

    move-object v0, v9

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v8}, Lcom/amazon/kcp/library/LibraryContext;-><init>(Lcom/amazon/kcp/library/ILibraryFilter;Lcom/amazon/kcp/library/LibraryFilterStateManager;Lcom/amazon/kindle/krx/library/LibraryView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/library/ILibraryItemQuery;Ljava/lang/String;)V

    iput-object v9, p0, Lcom/amazon/kcp/library/LibraryFragment;->libraryContext:Lcom/amazon/kcp/library/LibraryContext;

    return-void
.end method

.method private createLibraryFragmentManager(Landroidx/fragment/app/FragmentActivity;)V
    .locals 4

    .line 197
    new-instance v0, Lcom/amazon/kcp/library/fragments/LibraryFragmentManager;

    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->library_view_root:I

    iget-object v2, p0, Lcom/amazon/kcp/library/LibraryFragment;->libraryFragmentManagerClient:Lcom/amazon/kcp/library/LibraryFragmentManagerClient;

    .line 200
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/amazon/kcp/library/fragments/LibraryFragmentManager;-><init>(Landroidx/fragment/app/FragmentActivity;ILcom/amazon/kcp/library/LibraryFragmentManagerClient;Landroidx/fragment/app/FragmentManager;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/LibraryFragment;->libraryFragmentManager:Lcom/amazon/kcp/library/fragments/LibraryFragmentManager;

    .line 201
    iget-object p1, p0, Lcom/amazon/kcp/library/LibraryFragment;->viewOptionsModel:Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/fragments/LibraryFragmentManager;->initialize(Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel;)V

    return-void
.end method

.method private getInlineFilterGroupName()Ljava/lang/String;
    .locals 2

    .line 86
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "ARG_RECYCLER_INLINE_FILTER_GROUP_NAME"

    .line 88
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, ""

    :goto_1
    return-object v0
.end method

.method private getLibraryViewToShow()Lcom/amazon/kindle/krx/library/LibraryView;
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryFragment;->libraryFragmentManager:Lcom/amazon/kcp/library/fragments/LibraryFragmentManager;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentManager;->getCurrentFragmentHandler()Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 331
    invoke-interface {v0}, Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;->getTab()Lcom/amazon/kindle/krx/library/LibraryView;

    move-result-object v0

    return-object v0

    .line 334
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/library/LibraryFragment;->restoreLibraryView()Lcom/amazon/kindle/krx/library/LibraryView;

    move-result-object v0

    return-object v0
.end method

.method private launchBackIssuesScreenlet(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 535
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryFragment;->screenletContext:Lcom/amazon/kindle/krx/ui/ScreenletContext;

    if-eqz v0, :cond_0

    .line 537
    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryFragment;->libraryContext:Lcom/amazon/kcp/library/LibraryContext;

    new-instance v2, Lcom/amazon/kcp/library/LibraryFragment$4;

    invoke-direct {v2, p0}, Lcom/amazon/kcp/library/LibraryFragment$4;-><init>(Lcom/amazon/kcp/library/LibraryFragment;)V

    invoke-static {p1, p2, v1, v2}, Lcom/amazon/kcp/library/BackIssuesScreenlet;->newIntent(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/library/LibraryContext;Lcom/amazon/kcp/library/LibraryContextChangedCallback;)Lcom/amazon/kindle/krx/ui/ScreenletIntent;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/ui/ScreenletContext;->launchScreenlet(Lcom/amazon/kindle/krx/ui/ScreenletIntent;)V

    goto :goto_0

    .line 544
    :cond_0
    sget-object p1, Lcom/amazon/kcp/library/LibraryFragment;->TAG:Ljava/lang/String;

    const-string p2, "Null screenletContext, cannot launch BackIssuesScreenlet from LibraryFragment"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private launchSeriesScreenlet(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 549
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryFragment;->screenletContext:Lcom/amazon/kindle/krx/ui/ScreenletContext;

    if-eqz v0, :cond_0

    .line 551
    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryFragment;->libraryContext:Lcom/amazon/kcp/library/LibraryContext;

    new-instance v2, Lcom/amazon/kcp/library/LibraryFragment$5;

    invoke-direct {v2, p0}, Lcom/amazon/kcp/library/LibraryFragment$5;-><init>(Lcom/amazon/kcp/library/LibraryFragment;)V

    sget-object v3, Lcom/amazon/kcp/library/LibraryFilterStateManagerFetcher$StateManagerType;->LIBRARY_SERIES:Lcom/amazon/kcp/library/LibraryFilterStateManagerFetcher$StateManagerType;

    invoke-static {p1, p2, v1, v2, v3}, Lcom/amazon/kcp/library/SeriesScreenlet;->newIntent(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/library/LibraryContext;Lcom/amazon/kcp/library/LibraryContextChangedCallback;Lcom/amazon/kcp/library/LibraryFilterStateManagerFetcher$StateManagerType;)Lcom/amazon/kindle/krx/ui/ScreenletIntent;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/ui/ScreenletContext;->launchScreenlet(Lcom/amazon/kindle/krx/ui/ScreenletIntent;)V

    goto :goto_0

    .line 558
    :cond_0
    sget-object p1, Lcom/amazon/kcp/library/LibraryFragment;->TAG:Ljava/lang/String;

    const-string p2, "Null screenletContext, cannot launch seriesScreenlet from LibraryFragment"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private resetToDefaultLibraryViewAndSort()V
    .locals 3

    .line 636
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryFragment;->libraryFragmentManager:Lcom/amazon/kcp/library/fragments/LibraryFragmentManager;

    sget-object v1, Lcom/amazon/kindle/krx/library/LibraryView;->FILTER:Lcom/amazon/kindle/krx/library/LibraryView;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/fragments/LibraryFragmentManager;->getFragmentHandler(Ljava/lang/String;)Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 638
    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryFragment;->viewOptionsModel:Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel;

    invoke-interface {v0}, Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;->getSortTypePersistKey()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_RECENT:Lcom/amazon/kcp/library/LibrarySortType;

    invoke-interface {v1, v0, v2}, Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel;->setSortType(Ljava/lang/String;Lcom/amazon/kcp/library/LibrarySortType;)V

    .line 639
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 640
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 641
    sget-object v0, Lcom/amazon/kindle/krx/library/LibraryView;->FILTER:Lcom/amazon/kindle/krx/library/LibraryView;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/amazon/kcp/library/LibraryFragment;->showLibraryView(Lcom/amazon/kindle/krx/library/LibraryView;Z)V

    :cond_0
    return-void
.end method

.method private setFilterFromIntent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 522
    invoke-static {p2}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryFragment;->filterStateManager:Lcom/amazon/kcp/library/LibraryFilterStateManager;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/LibraryFilterStateManager;->getSelectedFilterItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 523
    iget-object p1, p0, Lcom/amazon/kcp/library/LibraryFragment;->filterStateManager:Lcom/amazon/kcp/library/LibraryFilterStateManager;

    invoke-virtual {p1}, Lcom/amazon/kcp/library/LibraryFilterStateManager;->clearItemIds()V

    goto :goto_0

    .line 524
    :cond_1
    invoke-static {p2}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 525
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryFragment;->filterStateManager:Lcom/amazon/kcp/library/LibraryFilterStateManager;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/kcp/library/LibraryFilterStateManager;->clearAllAndToggleItem(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private setFilterInStateManager(Lcom/amazon/kcp/library/LibraryContentFilter;)V
    .locals 6

    .line 613
    invoke-virtual {p0}, Lcom/amazon/kcp/library/LibraryFragment;->getLibraryFilter()Lcom/amazon/kcp/library/ILibraryFilter;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/library/ILibraryFilter;->getGroupsMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 614
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/library/LibraryFilterGroup;

    .line 615
    invoke-virtual {v1}, Lcom/amazon/kcp/library/LibraryFilterGroup;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kcp/library/LibraryFilterItem;

    .line 616
    invoke-virtual {v3}, Lcom/amazon/kcp/library/LibraryFilterItem;->getConstraint()Lcom/amazon/kcp/library/LibraryContentFilter;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/amazon/kcp/library/LibraryContentFilter;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 617
    iget-object v4, p0, Lcom/amazon/kcp/library/LibraryFragment;->filterStateManager:Lcom/amazon/kcp/library/LibraryFilterStateManager;

    invoke-virtual {v3}, Lcom/amazon/kcp/library/LibraryFilterItem;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amazon/kcp/library/LibraryFilterStateManager;->isItemIdSelected(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 618
    iget-object v4, p0, Lcom/amazon/kcp/library/LibraryFragment;->filterStateManager:Lcom/amazon/kcp/library/LibraryFilterStateManager;

    invoke-virtual {v1}, Lcom/amazon/kcp/library/LibraryFilterGroup;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/amazon/kcp/library/LibraryFilterItem;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Lcom/amazon/kcp/library/LibraryFilterStateManager;->clearGroupAndToggleItem(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private setGroupAndSortType(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 490
    invoke-static {p1}, Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryGroup;->valueOf(Ljava/lang/String;)Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryGroup;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 491
    :goto_0
    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryFragment;->libraryMenuOptionsBar:Lcom/amazon/kcp/library/navigation/LibraryMenuOptionsBar;

    if-eqz v1, :cond_2

    .line 492
    invoke-virtual {v1}, Lcom/amazon/kcp/library/navigation/LibraryMenuOptionsBar;->getSecondaryMenu()Lcom/amazon/kindle/library/navigation/ISecondaryMenu;

    move-result-object v1

    if-eqz p1, :cond_1

    if-eqz v1, :cond_1

    .line 494
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/LibraryFragment;->convertGroupType(Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryGroup;)Lcom/amazon/kindle/krx/library/LibraryGroupType;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/amazon/kindle/library/navigation/ISecondaryMenu;->setLibraryGroupType(Lcom/amazon/kindle/krx/library/LibraryGroupType;)V

    goto :goto_1

    :cond_1
    if-nez v1, :cond_3

    .line 496
    sget-object p1, Lcom/amazon/kcp/library/LibraryFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "secondaryMenu is null when setGroupAndSortType"

    invoke-static {p1, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 499
    :cond_2
    sget-object p1, Lcom/amazon/kcp/library/LibraryFragment;->TAG:Ljava/lang/String;

    const-string v1, "libraryMenuOptionsBar is null when setGroupAndSortType"

    invoke-static {p1, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/amazon/kcp/library/LibraryFragment;->libraryFragmentManager:Lcom/amazon/kcp/library/fragments/LibraryFragmentManager;

    if-eqz p1, :cond_6

    .line 503
    invoke-virtual {p1}, Lcom/amazon/kcp/library/fragments/LibraryFragmentManager;->getCurrentFragmentHandler()Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;

    move-result-object p1

    if-eqz p2, :cond_4

    .line 504
    invoke-static {p2}, Lcom/amazon/kcp/library/LibrarySortType;->valueOf(Ljava/lang/String;)Lcom/amazon/kcp/library/LibrarySortType;

    move-result-object v0

    :cond_4
    if-eqz p1, :cond_5

    if-eqz v0, :cond_5

    .line 506
    invoke-interface {p1, v0}, Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;->setSortType(Lcom/amazon/kcp/library/LibrarySortType;)V

    goto :goto_2

    :cond_5
    if-nez p1, :cond_7

    .line 508
    sget-object p1, Lcom/amazon/kcp/library/LibraryFragment;->TAG:Ljava/lang/String;

    const-string p2, "currentFragmentHandler is null when setGroupAndSortType"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 511
    :cond_6
    sget-object p1, Lcom/amazon/kcp/library/LibraryFragment;->TAG:Ljava/lang/String;

    const-string p2, "libraryFragmentManager is null when setGroupAndSortType"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_2
    return-void
.end method

.method private setupLibraryMenuOptionsToolbar(Landroid/app/Activity;Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;Ljava/lang/String;)V
    .locals 2

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    .line 371
    iget-object p3, p0, Lcom/amazon/kcp/library/LibraryFragment;->libraryMenuOptionsBar:Lcom/amazon/kcp/library/navigation/LibraryMenuOptionsBar;

    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryFragment;->libraryViewChangedListener:Lcom/amazon/kcp/library/LibraryViewChangedListener;

    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryFragment;->libraryContext:Lcom/amazon/kcp/library/LibraryContext;

    invoke-virtual {p3, p1, p2, v0, v1}, Lcom/amazon/kcp/library/navigation/LibraryMenuOptionsBar;->setupLibraryMenuOptionsToolbar(Landroid/app/Activity;Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;Lcom/amazon/kcp/library/LibraryViewChangedListener;Lcom/amazon/kcp/library/LibraryContext;)V

    goto :goto_0

    .line 374
    :cond_0
    sget-object p1, Lcom/amazon/kcp/library/LibraryFragment;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "activity is null when "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 377
    :cond_1
    sget-object p1, Lcom/amazon/kcp/library/LibraryFragment;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "currentFragmentHandler is null when "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private setupSpecialModes()V
    .locals 2

    .line 273
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 274
    sget-boolean v1, Lcom/amazon/kcp/sounds/PageTurnSound;->BAXTER_MODE:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 275
    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->filter_icon:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 277
    sget v1, Lcom/amazon/kindle/librarymodule/R$drawable;->ic_badge_baxter:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method private showFilterForLibraryView(Lcom/amazon/kindle/krx/library/LibraryView;)V
    .locals 3

    if-eqz p1, :cond_4

    .line 591
    sget-object v0, Lcom/amazon/kcp/library/LibraryFragment$7;->$SwitchMap$com$amazon$kindle$krx$library$LibraryView:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 604
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryFragment;->filterStateManager:Lcom/amazon/kcp/library/LibraryFilterStateManager;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/LibraryFilterStateManager;->clearItemIds()V

    .line 605
    sget-object v0, Lcom/amazon/kcp/library/LibraryFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LibraryView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not supported."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 601
    :cond_0
    sget-object p1, Lcom/amazon/kcp/library/LibraryContentFilter;->NEWSSTAND_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/LibraryFragment;->setFilterInStateManager(Lcom/amazon/kcp/library/LibraryContentFilter;)V

    goto :goto_0

    .line 598
    :cond_1
    sget-object p1, Lcom/amazon/kcp/library/LibraryContentFilter;->BOOKS_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/LibraryFragment;->setFilterInStateManager(Lcom/amazon/kcp/library/LibraryContentFilter;)V

    goto :goto_0

    .line 595
    :cond_2
    iget-object p1, p0, Lcom/amazon/kcp/library/LibraryFragment;->filterStateManager:Lcom/amazon/kcp/library/LibraryFilterStateManager;

    invoke-virtual {p1}, Lcom/amazon/kcp/library/LibraryFilterStateManager;->clearItemIds()V

    .line 608
    :cond_3
    :goto_0
    sget-object p1, Lcom/amazon/kindle/krx/library/LibraryView;->FILTER:Lcom/amazon/kindle/krx/library/LibraryView;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/amazon/kcp/library/LibraryFragment;->showLibraryView(Lcom/amazon/kindle/krx/library/LibraryView;Z)V

    :cond_4
    return-void
.end method

.method private showLibraryView(Lcom/amazon/kindle/krx/library/LibraryView;Z)V
    .locals 4

    if-eqz p1, :cond_0

    .line 358
    invoke-virtual {p0}, Lcom/amazon/kcp/library/LibraryFragment;->getLibraryFilter()Lcom/amazon/kcp/library/ILibraryFilter;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/amazon/kcp/library/LibraryFragment;->createLibraryContext(Lcom/amazon/kcp/library/ILibraryFilter;Lcom/amazon/kindle/krx/library/LibraryView;)V

    .line 359
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryController()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kcp/library/ILibraryController;->setCurrentLibraryView(Lcom/amazon/kindle/krx/library/LibraryView;)V

    .line 360
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryFragment;->libraryFragmentManager:Lcom/amazon/kcp/library/fragments/LibraryFragmentManager;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/amazon/kcp/library/LibraryFragment;->isActivated:Z

    iget-object v3, p0, Lcom/amazon/kcp/library/LibraryFragment;->libraryContext:Lcom/amazon/kcp/library/LibraryContext;

    invoke-virtual {v0, v1, v2, p2, v3}, Lcom/amazon/kcp/library/fragments/LibraryFragmentManager;->switchToFragmentHandler(Ljava/lang/String;ZZLcom/amazon/kcp/library/LibraryContext;)V

    .line 361
    iget-object p2, p0, Lcom/amazon/kcp/library/LibraryFragment;->libraryFragmentManager:Lcom/amazon/kcp/library/fragments/LibraryFragmentManager;

    invoke-virtual {p2}, Lcom/amazon/kcp/library/fragments/LibraryFragmentManager;->getCurrentFragmentHandler()Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;

    move-result-object p2

    .line 362
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string/jumbo v1, "showLibraryView"

    .line 363
    invoke-direct {p0, v0, p2, v1}, Lcom/amazon/kcp/library/LibraryFragment;->setupLibraryMenuOptionsToolbar(Landroid/app/Activity;Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;Ljava/lang/String;)V

    .line 364
    iget-object p2, p0, Lcom/amazon/kcp/library/LibraryFragment;->viewOptionsModel:Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel;

    invoke-interface {p2, p1}, Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel;->setLibraryView(Lcom/amazon/kindle/krx/library/LibraryView;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public convertGroupType(Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryGroup;)Lcom/amazon/kindle/krx/library/LibraryGroupType;
    .locals 1

    .line 481
    sget-object v0, Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryGroup;->DEVICE:Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryGroup;

    if-ne p1, v0, :cond_0

    .line 482
    sget-object p1, Lcom/amazon/kindle/krx/library/LibraryGroupType;->DEVICE:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    return-object p1

    .line 484
    :cond_0
    sget-object p1, Lcom/amazon/kindle/krx/library/LibraryGroupType;->NOT_APPLICABLE:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    return-object p1
.end method

.method getLibraryFilter()Lcom/amazon/kcp/library/ILibraryFilter;
    .locals 4

    .line 232
    const-class v0, Lcom/amazon/kcp/library/ILibraryFilterProvider;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/ILibraryFilterProvider;

    if-eqz v0, :cond_0

    .line 234
    new-instance v1, Lcom/amazon/kcp/library/LibraryFilterContext;

    sget-object v2, Lcom/amazon/kindle/krx/library/LibraryView;->FILTER:Lcom/amazon/kindle/krx/library/LibraryView;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/amazon/kcp/library/LibraryFilterContext;-><init>(Lcom/amazon/kindle/krx/library/LibraryView;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/amazon/kcp/library/ILibraryFilterProvider;->provideLibraryFilter(Lcom/amazon/kcp/library/LibraryFilterContext;)Lcom/amazon/kcp/library/ILibraryFilter;

    move-result-object v0

    return-object v0

    .line 236
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "An ILibraryFilterProvider implementation must be provided via Discovery"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getStatusForMetrics()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 382
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryFragment;->libraryFragmentManager:Lcom/amazon/kcp/library/fragments/LibraryFragmentManager;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentManager;->getCurrentFragmentHandler()Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;

    move-result-object v0

    if-nez v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryFragment;->libraryFragmentManager:Lcom/amazon/kcp/library/fragments/LibraryFragmentManager;

    sget-object v1, Lcom/amazon/kindle/krx/library/LibraryView;->FILTER:Lcom/amazon/kindle/krx/library/LibraryView;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/fragments/LibraryFragmentManager;->getFragmentHandler(Ljava/lang/String;)Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 390
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 391
    iget-object v2, p0, Lcom/amazon/kcp/library/LibraryFragment;->filterStateManager:Lcom/amazon/kcp/library/LibraryFilterStateManager;

    invoke-virtual {v2}, Lcom/amazon/kcp/library/LibraryFilterStateManager;->getSelectedItemIdsWithGroup()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Filter"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    invoke-interface {v0}, Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;->getUserSelectedViewType()Lcom/amazon/kindle/krx/library/LibraryViewType;

    move-result-object v2

    .line 394
    invoke-interface {v0}, Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;->getTab()Lcom/amazon/kindle/krx/library/LibraryView;

    move-result-object v3

    sget-object v4, Lcom/amazon/kindle/krx/library/LibraryView;->COLLECTIONS:Lcom/amazon/kindle/krx/library/LibraryView;

    const-string v5, "View"

    if-ne v3, v4, :cond_1

    .line 395
    sget-object v2, Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;->COLLECTIONS:Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 397
    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    :cond_2
    :goto_0
    invoke-interface {v0}, Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;->getGroupType()Lcom/amazon/kindle/krx/library/LibraryGroupType;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 401
    sget-object v3, Lcom/amazon/kindle/krx/library/LibraryGroupType;->DEVICE:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    invoke-virtual {v3, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "Toggle"

    if-eqz v2, :cond_3

    const-string v2, "DOWNLOADED"

    .line 402
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    const-string v2, "ALL"

    .line 404
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    :cond_4
    :goto_1
    invoke-interface {v0}, Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;->getSortType()Lcom/amazon/kcp/library/LibrarySortType;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 409
    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Sort"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    :cond_5
    invoke-static {}, Lcom/amazon/kcp/util/MetricsUtils;->getScreenOrientationForMetrics()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Orientation"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public onActivate()V
    .locals 3

    const/4 v0, 0x1

    .line 305
    iput-boolean v0, p0, Lcom/amazon/kcp/library/LibraryFragment;->isActivated:Z

    .line 306
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 307
    iget-boolean v1, p0, Lcom/amazon/kcp/library/LibraryFragment;->isStarted:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 308
    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryFragment;->markAsReadHiddenItemToastHelper:Lcom/amazon/kcp/library/MarkAsReadHiddenItemToastHelper;

    iget-object v2, p0, Lcom/amazon/kcp/library/LibraryFragment;->filterStateManager:Lcom/amazon/kcp/library/LibraryFilterStateManager;

    invoke-virtual {v1, v2, v0}, Lcom/amazon/kcp/library/MarkAsReadHiddenItemToastHelper;->showToastIfNecessary(Lcom/amazon/kcp/library/LibraryFilterStateManager;Landroid/app/Activity;)V

    .line 310
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/library/LibraryFragment;->setupSecondaryMenu()V

    const/4 v1, 0x0

    .line 313
    iget-object v2, p0, Lcom/amazon/kcp/library/LibraryFragment;->libraryFragmentManager:Lcom/amazon/kcp/library/fragments/LibraryFragmentManager;

    if-eqz v2, :cond_1

    .line 314
    invoke-direct {p0}, Lcom/amazon/kcp/library/LibraryFragment;->getLibraryViewToShow()Lcom/amazon/kindle/krx/library/LibraryView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/amazon/kcp/library/LibraryFragment;->showLibraryView(Lcom/amazon/kindle/krx/library/LibraryView;Z)V

    .line 315
    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryFragment;->libraryFragmentManager:Lcom/amazon/kcp/library/fragments/LibraryFragmentManager;

    invoke-virtual {v1}, Lcom/amazon/kcp/library/fragments/LibraryFragmentManager;->getCurrentFragmentHandler()Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;

    move-result-object v1

    .line 318
    :cond_1
    iget-object v2, p0, Lcom/amazon/kcp/library/LibraryFragment;->libraryMenuOptionsBar:Lcom/amazon/kcp/library/navigation/LibraryMenuOptionsBar;

    if-eqz v2, :cond_2

    const-string/jumbo v2, "onActivate"

    .line 319
    invoke-direct {p0, v0, v1, v2}, Lcom/amazon/kcp/library/LibraryFragment;->setupLibraryMenuOptionsToolbar(Landroid/app/Activity;Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;Ljava/lang/String;)V

    goto :goto_0

    .line 321
    :cond_2
    sget-object v0, Lcom/amazon/kcp/library/LibraryFragment;->TAG:Ljava/lang/String;

    const-string v1, "libraryMenuOptionsBar is null when onActivate"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryFragment;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v1, Lcom/amazon/kindle/event/LibraryActivatedEvent;

    invoke-direct {v1}, Lcom/amazon/kindle/event/LibraryActivatedEvent;-><init>()V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .line 206
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 208
    invoke-static {}, Lcom/amazon/kcp/library/fragments/LibraryViewOptionsModelFetcher;->getLibraryViewOptionsModel()Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/LibraryFragment;->viewOptionsModel:Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel;

    .line 209
    invoke-virtual {p0}, Lcom/amazon/kcp/library/LibraryFragment;->getLibraryFilter()Lcom/amazon/kcp/library/ILibraryFilter;

    move-result-object v0

    .line 210
    invoke-static {v0}, Lcom/amazon/kcp/util/SharedLibraryFilterUtils;->registerSharedFilterItemsIfNecessary(Lcom/amazon/kcp/library/ILibraryFilter;)V

    .line 211
    sget-object v1, Lcom/amazon/kcp/library/LibraryFilterStateManagerFetcher$StateManagerType;->LIBRARY:Lcom/amazon/kcp/library/LibraryFilterStateManagerFetcher$StateManagerType;

    invoke-static {v0, v1}, Lcom/amazon/kcp/library/LibraryFilterStateManagerFetcher;->getLibraryFilterStateManager(Lcom/amazon/kcp/library/ILibraryFilter;Lcom/amazon/kcp/library/LibraryFilterStateManagerFetcher$StateManagerType;)Lcom/amazon/kcp/library/LibraryFilterStateManager;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/LibraryFragment;->filterStateManager:Lcom/amazon/kcp/library/LibraryFilterStateManager;

    .line 212
    move-object v0, p1

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    invoke-direct {p0, v0}, Lcom/amazon/kcp/library/LibraryFragment;->createLibraryFragmentManager(Landroidx/fragment/app/FragmentActivity;)V

    .line 213
    invoke-static {}, Lcom/amazon/kcp/sounds/PageTurnSound;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    invoke-static {p1}, Lcom/amazon/kcp/sounds/PageTurnSound;->initSounds(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onAuthenticationEvent(Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 627
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object p1

    new-instance v0, Lcom/amazon/kcp/library/LibraryFragment$6;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/LibraryFragment$6;-><init>(Lcom/amazon/kcp/library/LibraryFragment;)V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 656
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 657
    iget-object p1, p0, Lcom/amazon/kcp/library/LibraryFragment;->libraryMenuOptionsBar:Lcom/amazon/kcp/library/navigation/LibraryMenuOptionsBar;

    invoke-virtual {p1}, Lcom/amazon/kcp/library/navigation/LibraryMenuOptionsBar;->refreshLayout()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 176
    sget p3, Lcom/amazon/kindle/librarymodule/R$layout;->library_screenlet:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 177
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 179
    new-instance p3, Lcom/amazon/kcp/library/SwipeRefreshHelper;

    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->pull_to_refresh_container:I

    .line 180
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 181
    const-class v1, Lcom/amazon/kcp/library/LibraryFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/amazon/kcp/library/LibraryFragment$3;

    invoke-direct {v2, p0}, Lcom/amazon/kcp/library/LibraryFragment$3;-><init>(Lcom/amazon/kcp/library/LibraryFragment;)V

    invoke-direct {p3, p2, v0, v1, v2}, Lcom/amazon/kcp/library/SwipeRefreshHelper;-><init>(Landroid/content/Context;Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;Ljava/lang/String;Lcom/amazon/kcp/library/SwipeRefreshHelper$Listener;)V

    iput-object p3, p0, Lcom/amazon/kcp/library/LibraryFragment;->swipeRefreshHelper:Lcom/amazon/kcp/library/SwipeRefreshHelper;

    :cond_0
    return-object p1
.end method

.method public onDeactivate()V
    .locals 3

    .line 292
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryFragment;->libraryFragmentManager:Lcom/amazon/kcp/library/fragments/LibraryFragmentManager;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentManager;->getCurrentFragmentHandler()Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 294
    invoke-interface {v0}, Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;->dismissActionMode()V

    .line 295
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 296
    sget v2, Lcom/amazon/kindle/librarymodule/R$id;->library_view_root:I

    invoke-interface {v0, v2, v1}, Lcom/amazon/kcp/library/fragments/IFragmentHandler;->hide(ILandroidx/fragment/app/FragmentTransaction;)V

    .line 297
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 298
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryFragment;->swipeRefreshHelper:Lcom/amazon/kcp/library/SwipeRefreshHelper;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/SwipeRefreshHelper;->reset()V

    const/4 v0, 0x0

    .line 301
    iput-boolean v0, p0, Lcom/amazon/kcp/library/LibraryFragment;->isActivated:Z

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 284
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 285
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryFragment;->swipeRefreshHelper:Lcom/amazon/kcp/library/SwipeRefreshHelper;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/SwipeRefreshHelper;->destroy()V

    .line 286
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryFragment;->libraryFragmentManager:Lcom/amazon/kcp/library/fragments/LibraryFragmentManager;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentManager;->onActivityDestroyed()V

    .line 287
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryFragment;->libraryMenuOptionsBar:Lcom/amazon/kcp/library/navigation/LibraryMenuOptionsBar;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/navigation/LibraryMenuOptionsBar;->onDestroy()V

    .line 288
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    return-void
.end method

.method public onNewScreenletIntent(Lcom/amazon/kindle/krx/ui/ScreenletIntent;)V
    .locals 12

    .line 423
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/ui/ScreenletIntent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v0, "com.amazon.kindle.LAUNCH_LIBRARY_VIEW"

    .line 437
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GroupTypeExtraKey"

    .line 438
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SortTypeExtraKey"

    .line 439
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "BookOpenAsinExtraKey"

    .line 440
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "BackIssueTitleExtraKey"

    .line 441
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "ParentASINExtraKey"

    .line 442
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "title"

    .line 443
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "bookId"

    .line 444
    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "IntentOriginExtra"

    .line 445
    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "FilterItemIdExtra"

    .line 446
    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "FilterGroupIdExtra"

    .line 447
    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    move-object v11, v3

    move-object v3, p1

    move-object p1, v0

    move-object v0, v11

    goto :goto_0

    :cond_0
    move-object p1, v0

    move-object v1, p1

    move-object v2, v1

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    .line 450
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v10

    if-eqz v0, :cond_1

    if-eqz v10, :cond_1

    .line 452
    sget-object p1, Lcom/amazon/kcp/library/LibraryFragment;->DOWNLOAD_TRIGGER:Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;

    invoke-static {v10, v0, p1}, Lcom/amazon/kcp/library/BookOpenHelper;->openBookOrSample(Landroid/app/Activity;Ljava/lang/String;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)V

    return-void

    :cond_1
    if-eqz p1, :cond_4

    .line 457
    invoke-static {p1}, Lcom/amazon/kindle/krx/library/LibraryView;->valueOf(Ljava/lang/String;)Lcom/amazon/kindle/krx/library/LibraryView;

    move-result-object p1

    .line 458
    sget-object v0, Lcom/amazon/kindle/krx/library/LibraryView;->COLLECTIONS:Lcom/amazon/kindle/krx/library/LibraryView;

    if-ne p1, v0, :cond_2

    const/4 p1, 0x1

    .line 459
    invoke-direct {p0, v0, p1}, Lcom/amazon/kcp/library/LibraryFragment;->showLibraryView(Lcom/amazon/kindle/krx/library/LibraryView;Z)V

    goto :goto_1

    .line 461
    :cond_2
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/LibraryFragment;->showFilterForLibraryView(Lcom/amazon/kindle/krx/library/LibraryView;)V

    .line 463
    :goto_1
    invoke-direct {p0, v1, v2}, Lcom/amazon/kcp/library/LibraryFragment;->setGroupAndSortType(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_3

    if-eqz v5, :cond_3

    .line 466
    invoke-direct {p0, v4, v5}, Lcom/amazon/kcp/library/LibraryFragment;->launchBackIssuesScreenlet(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-eqz v6, :cond_5

    if-eqz v7, :cond_5

    .line 470
    invoke-direct {p0, v6, v7}, Lcom/amazon/kcp/library/LibraryFragment;->launchSeriesScreenlet(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const-string/jumbo p1, "originKindleCard"

    .line 473
    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 474
    invoke-direct {p0, v1, v2}, Lcom/amazon/kcp/library/LibraryFragment;->setGroupAndSortType(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    invoke-direct {p0, v3, v9}, Lcom/amazon/kcp/library/LibraryFragment;->setFilterFromIntent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public onReset()V
    .locals 1

    .line 416
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryFragment;->libraryFragmentManager:Lcom/amazon/kcp/library/fragments/LibraryFragmentManager;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentManager;->getCurrentFragmentHandler()Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 418
    invoke-interface {v0}, Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;->onReSelected()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 257
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 258
    invoke-virtual {p0}, Lcom/amazon/kcp/library/LibraryFragment;->onResumeWhenVisible()V

    return-void
.end method

.method onResumeWhenVisible()V
    .locals 2

    .line 263
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 264
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryFragment;->libraryFragmentManager:Lcom/amazon/kcp/library/fragments/LibraryFragmentManager;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentManager;->getCurrentFragmentHandler()Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 266
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryController()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v1

    invoke-interface {v0}, Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;->getTab()Lcom/amazon/kindle/krx/library/LibraryView;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/amazon/kcp/library/ILibraryController;->setCurrentLibraryView(Lcom/amazon/kindle/krx/library/LibraryView;)V

    .line 268
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kcp/library/LibraryFragment;->setupSpecialModes()V

    :cond_1
    return-void
.end method

.method public onScreenletDestroyed()V
    .locals 1

    .line 647
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    return-void
.end method

.method public onStart()V
    .locals 3

    .line 241
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    const/4 v0, 0x1

    .line 242
    iput-boolean v0, p0, Lcom/amazon/kcp/library/LibraryFragment;->isStarted:Z

    .line 243
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 244
    iget-boolean v1, p0, Lcom/amazon/kcp/library/LibraryFragment;->isActivated:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 245
    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryFragment;->markAsReadHiddenItemToastHelper:Lcom/amazon/kcp/library/MarkAsReadHiddenItemToastHelper;

    iget-object v2, p0, Lcom/amazon/kcp/library/LibraryFragment;->filterStateManager:Lcom/amazon/kcp/library/LibraryFilterStateManager;

    invoke-virtual {v1, v2, v0}, Lcom/amazon/kcp/library/MarkAsReadHiddenItemToastHelper;->showToastIfNecessary(Lcom/amazon/kcp/library/LibraryFilterStateManager;Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 251
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    const/4 v0, 0x0

    .line 252
    iput-boolean v0, p0, Lcom/amazon/kcp/library/LibraryFragment;->isStarted:Z

    return-void
.end method

.method restoreLibraryView()Lcom/amazon/kindle/krx/library/LibraryView;
    .locals 2

    .line 347
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryFragment;->viewOptionsModel:Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel;

    invoke-interface {v0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel;->getLibraryView()Lcom/amazon/kindle/krx/library/LibraryView;

    move-result-object v0

    .line 348
    sget-object v1, Lcom/amazon/kcp/library/LibraryFragment$7;->$SwitchMap$com$amazon$kindle$krx$library$LibraryView:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 352
    sget-object v0, Lcom/amazon/kindle/krx/library/LibraryView;->FILTER:Lcom/amazon/kindle/krx/library/LibraryView;

    return-object v0

    .line 350
    :cond_0
    sget-object v0, Lcom/amazon/kindle/krx/library/LibraryView;->COLLECTIONS:Lcom/amazon/kindle/krx/library/LibraryView;

    return-object v0
.end method

.method setScreenletContext(Lcom/amazon/kindle/krx/ui/ScreenletContext;)V
    .locals 0

    .line 651
    iput-object p1, p0, Lcom/amazon/kcp/library/LibraryFragment;->screenletContext:Lcom/amazon/kindle/krx/ui/ScreenletContext;

    return-void
.end method

.method setupSecondaryMenu()V
    .locals 5

    .line 563
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 565
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 567
    iget-object v2, p0, Lcom/amazon/kcp/library/LibraryFragment;->libraryMenuOptionsBar:Lcom/amazon/kcp/library/navigation/LibraryMenuOptionsBar;

    if-nez v2, :cond_0

    .line 568
    sget v2, Lcom/amazon/kindle/librarymodule/R$id;->secondary_menu_container:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 569
    sget v3, Lcom/amazon/kindle/librarymodule/R$id;->secondary_menu_divider:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 571
    new-instance v3, Lcom/amazon/kcp/library/navigation/LibraryMenuOptionsBar;

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/amazon/kcp/library/LibraryFragment;->viewOptionsModel:Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel;

    invoke-direct {v3, v1, v2, v4, v0}, Lcom/amazon/kcp/library/navigation/LibraryMenuOptionsBar;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel;Landroid/view/View;)V

    iput-object v3, p0, Lcom/amazon/kcp/library/LibraryFragment;->libraryMenuOptionsBar:Lcom/amazon/kcp/library/navigation/LibraryMenuOptionsBar;

    :cond_0
    return-void
.end method
