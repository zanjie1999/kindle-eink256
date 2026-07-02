.class public Lcom/amazon/kcp/library/fragments/FilterFragmentHandler;
.super Lcom/amazon/kcp/library/fragments/GroupedLibraryFragmentHandler;
.source "FilterFragmentHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private currentFilter:Lcom/amazon/kcp/library/LibraryContentFilter;

.field private emptyLibraryFilterItem:Lcom/amazon/kcp/library/LibraryFilterItem;

.field private libraryFilterStateChangedListener:Lcom/amazon/kcp/library/LibraryFilterStateManager$ILibraryFilterStateChangedListener;

.field private tab:Lcom/amazon/kindle/krx/library/LibraryView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    const-class v0, Lcom/amazon/kcp/library/fragments/FilterFragmentHandler;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/fragments/FilterFragmentHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroidx/fragment/app/FragmentActivity;Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel;Lcom/amazon/kcp/library/fragments/ILibraryViewModeListener;Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/kcp/library/fragments/GroupedLibraryFragmentHandler;-><init>(Landroidx/fragment/app/FragmentActivity;Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel;Lcom/amazon/kcp/library/fragments/ILibraryViewModeListener;Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;)V

    .line 63
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/library/fragments/FilterFragmentHandler;Ljava/util/List;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/fragments/FilterFragmentHandler;->setLibraryFilterItems(Ljava/util/List;)V

    return-void
.end method

.method private saveEmptyLibraryFilter(Ljava/util/List;Lcom/amazon/kcp/library/LibraryFilterItem;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/LibraryFilterItem;",
            ">;>;",
            "Lcom/amazon/kcp/library/LibraryFilterItem;",
            ")V"
        }
    .end annotation

    .line 177
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 178
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 179
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/library/LibraryFilterItem;

    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/FilterFragmentHandler;->emptyLibraryFilterItem:Lcom/amazon/kcp/library/LibraryFilterItem;

    goto :goto_0

    .line 180
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    .line 181
    iput-object p2, p0, Lcom/amazon/kcp/library/fragments/FilterFragmentHandler;->emptyLibraryFilterItem:Lcom/amazon/kcp/library/LibraryFilterItem;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 183
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/FilterFragmentHandler;->emptyLibraryFilterItem:Lcom/amazon/kcp/library/LibraryFilterItem;

    :goto_0
    return-void
.end method

.method private setLibraryFilterItems(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/LibraryFilterItem;",
            ">;>;)V"
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->libraryContext:Lcom/amazon/kcp/library/LibraryContext;

    if-eqz v0, :cond_1

    .line 156
    invoke-virtual {v0}, Lcom/amazon/kcp/library/LibraryContext;->getLibraryFilter()Lcom/amazon/kcp/library/ILibraryFilter;

    move-result-object v0

    .line 157
    invoke-interface {v0}, Lcom/amazon/kcp/library/ILibraryFilter;->getDefaultFilterItem()Lcom/amazon/kcp/library/LibraryFilterItem;

    move-result-object v1

    .line 158
    invoke-direct {p0, p1, v1}, Lcom/amazon/kcp/library/fragments/FilterFragmentHandler;->saveEmptyLibraryFilter(Ljava/util/List;Lcom/amazon/kcp/library/LibraryFilterItem;)V

    .line 160
    invoke-static {p1}, Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner;->combineFilterConstraintsByAnd(Ljava/util/List;)Lcom/amazon/kcp/library/LibraryContentFilter;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amazon/kcp/library/ILibraryFilter;->applyDefaultFilter(Lcom/amazon/kcp/library/LibraryContentFilter;)Lcom/amazon/kcp/library/LibraryContentFilter;

    move-result-object p1

    if-nez p1, :cond_0

    .line 163
    sget-object p1, Lcom/amazon/kcp/library/LibraryContentFilter;->ALL_ITEMS_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/FilterFragmentHandler;->currentFilter:Lcom/amazon/kcp/library/LibraryContentFilter;

    goto :goto_0

    .line 165
    :cond_0
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/FilterFragmentHandler;->currentFilter:Lcom/amazon/kcp/library/LibraryContentFilter;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method createLibraryFilterStateChangedListener()V
    .locals 1

    .line 222
    new-instance v0, Lcom/amazon/kcp/library/fragments/FilterFragmentHandler$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/fragments/FilterFragmentHandler$1;-><init>(Lcom/amazon/kcp/library/fragments/FilterFragmentHandler;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/fragments/FilterFragmentHandler;->libraryFilterStateChangedListener:Lcom/amazon/kcp/library/LibraryFilterStateManager$ILibraryFilterStateChangedListener;

    return-void
.end method

.method protected getEmptyLibraryStringId()I
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/FilterFragmentHandler;->emptyLibraryFilterItem:Lcom/amazon/kcp/library/LibraryFilterItem;

    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/GroupedLibraryFragmentHandler;->getGroupType()Lcom/amazon/kindle/krx/library/LibraryGroupType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/LibraryFilterItem;->getEmptyLibraryStringId(Lcom/amazon/kindle/krx/library/LibraryGroupType;)I

    move-result v0

    return v0

    .line 201
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/GroupedLibraryFragmentHandler;->getGroupType()Lcom/amazon/kindle/krx/library/LibraryGroupType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/library/LibraryGroupType;->NOT_APPLICABLE:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    if-ne v0, v1, :cond_1

    sget v0, Lcom/amazon/kindle/librarymodule/R$string;->empty_library_title:I

    goto :goto_0

    :cond_1
    sget v0, Lcom/amazon/kindle/librarymodule/R$string;->empty_device_title:I

    :goto_0
    return v0
.end method

.method public getFilter()Lcom/amazon/kcp/library/LibraryContentFilter;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/FilterFragmentHandler;->currentFilter:Lcom/amazon/kcp/library/LibraryContentFilter;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/amazon/kcp/library/LibraryContentFilter;->ALL_ITEMS_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

    :goto_0
    return-object v0
.end method

.method public getQuery()Lcom/amazon/kcp/library/ILibraryItemQuery;
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->libraryContext:Lcom/amazon/kcp/library/LibraryContext;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kcp/library/LibraryContext;->getExternalItemsQuery()Lcom/amazon/kcp/library/ILibraryItemQuery;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSecondaryMenuType()Lcom/amazon/kindle/library/navigation/SecondaryMenuType;
    .locals 1

    .line 145
    sget-object v0, Lcom/amazon/kindle/library/navigation/SecondaryMenuType;->Library:Lcom/amazon/kindle/library/navigation/SecondaryMenuType;

    return-object v0
.end method

.method public getSortType()Lcom/amazon/kcp/library/LibrarySortType;
    .locals 6

    .line 125
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/FilterFragmentHandler;->getFilter()Lcom/amazon/kcp/library/LibraryContentFilter;

    move-result-object v0

    .line 126
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/FilterFragmentHandler;->getSortTypePersistKey()Ljava/lang/String;

    move-result-object v1

    .line 128
    :try_start_0
    iget-object v2, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->viewOptionsModel:Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel;

    iget-object v3, v0, Lcom/amazon/kcp/library/LibraryContentFilter;->defaultSortType:Lcom/amazon/kcp/library/LibrarySortType;

    invoke-interface {v2, v1, v3}, Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel;->getSortType(Ljava/lang/String;Lcom/amazon/kcp/library/LibrarySortType;)Lcom/amazon/kcp/library/LibrarySortType;

    move-result-object v2

    .line 129
    invoke-virtual {v0}, Lcom/amazon/kcp/library/LibraryContentFilter;->getSupportedSortTypes()[Lcom/amazon/kcp/library/LibrarySortType;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 130
    iget-object v2, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->viewOptionsModel:Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel;

    iget-object v3, v0, Lcom/amazon/kcp/library/LibraryContentFilter;->defaultSortType:Lcom/amazon/kcp/library/LibrarySortType;

    invoke-interface {v2, v1, v3}, Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel;->setSortType(Ljava/lang/String;Lcom/amazon/kcp/library/LibrarySortType;)V

    .line 131
    iget-object v0, v0, Lcom/amazon/kcp/library/LibraryContentFilter;->defaultSortType:Lcom/amazon/kcp/library/LibrarySortType;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_0
    return-object v2

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    .line 136
    :goto_0
    sget-object v3, Lcom/amazon/kcp/library/fragments/FilterFragmentHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error fetching sortType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v2, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->viewOptionsModel:Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel;

    iget-object v3, v0, Lcom/amazon/kcp/library/LibraryContentFilter;->defaultSortType:Lcom/amazon/kcp/library/LibrarySortType;

    invoke-interface {v2, v1, v3}, Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel;->setSortType(Ljava/lang/String;Lcom/amazon/kcp/library/LibrarySortType;)V

    .line 139
    iget-object v0, v0, Lcom/amazon/kcp/library/LibraryContentFilter;->defaultSortType:Lcom/amazon/kcp/library/LibrarySortType;

    return-object v0
.end method

.method public getSortTypePersistKey()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->libraryContext:Lcom/amazon/kcp/library/LibraryContext;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kcp/library/LibraryContext;->getSortTypePersistKey()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "LibraryFilterSortKey"

    :goto_0
    return-object v0
.end method

.method public getSupportedRefineMenuViewTypes()[Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;
    .locals 6

    .line 97
    sget-object v0, Lcom/amazon/kcp/debug/DetailsViewDebugUtils;->INSTANCE:Lcom/amazon/kcp/debug/DetailsViewDebugUtils;

    invoke-virtual {v0}, Lcom/amazon/kcp/debug/DetailsViewDebugUtils;->isDetailsViewEnabled()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;

    .line 98
    sget-object v5, Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;->GRID:Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;

    aput-object v5, v0, v3

    sget-object v3, Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;->DETAILS:Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;

    aput-object v3, v0, v2

    sget-object v2, Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;->LIST:Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;

    aput-object v2, v0, v1

    sget-object v1, Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;->COLLECTIONS:Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;

    aput-object v1, v0, v4

    return-object v0

    :cond_0
    new-array v0, v4, [Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;

    .line 105
    sget-object v4, Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;->GRID:Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;

    aput-object v4, v0, v3

    sget-object v3, Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;->LIST:Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;

    aput-object v3, v0, v2

    sget-object v2, Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;->COLLECTIONS:Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getTab()Lcom/amazon/kindle/krx/library/LibraryView;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->libraryContext:Lcom/amazon/kcp/library/LibraryContext;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kcp/library/LibraryContext;->getTab()Lcom/amazon/kindle/krx/library/LibraryView;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/FilterFragmentHandler;->tab:Lcom/amazon/kindle/krx/library/LibraryView;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/amazon/kindle/krx/library/LibraryView;->FILTER:Lcom/amazon/kindle/krx/library/LibraryView;

    :goto_0
    return-object v0
.end method

.method public getTitleString()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->libraryContext:Lcom/amazon/kcp/library/LibraryContext;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kcp/library/LibraryContext;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public hide(ILandroidx/fragment/app/FragmentTransaction;)V
    .locals 0

    .line 237
    invoke-super {p0, p1, p2}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->hide(ILandroidx/fragment/app/FragmentTransaction;)V

    .line 238
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->libraryContext:Lcom/amazon/kcp/library/LibraryContext;

    if-eqz p1, :cond_0

    .line 239
    invoke-virtual {p1}, Lcom/amazon/kcp/library/LibraryContext;->getFilterStateManager()Lcom/amazon/kcp/library/LibraryFilterStateManager;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/kcp/library/fragments/FilterFragmentHandler;->libraryFilterStateChangedListener:Lcom/amazon/kcp/library/LibraryFilterStateManager$ILibraryFilterStateChangedListener;

    invoke-virtual {p1, p2}, Lcom/amazon/kcp/library/LibraryFilterStateManager;->deregisterListener(Lcom/amazon/kcp/library/LibraryFilterStateManager$ILibraryFilterStateChangedListener;)V

    const/4 p1, 0x0

    .line 240
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->libraryContext:Lcom/amazon/kcp/library/LibraryContext;

    :cond_0
    return-void
.end method

.method public onAudioMetadataProviderRegistered(Lcom/amazon/kindle/krx/ui/AudioBookMetadataProviderRegisterEvent;)V
    .locals 0
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 172
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/FilterFragmentHandler;->refresh()V

    return-void
.end method

.method public onDestroy(Landroidx/fragment/app/FragmentManager;)V
    .locals 2

    .line 189
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->libraryContext:Lcom/amazon/kcp/library/LibraryContext;

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {v0}, Lcom/amazon/kcp/library/LibraryContext;->getFilterStateManager()Lcom/amazon/kcp/library/LibraryFilterStateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/FilterFragmentHandler;->libraryFilterStateChangedListener:Lcom/amazon/kcp/library/LibraryFilterStateManager$ILibraryFilterStateChangedListener;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/LibraryFilterStateManager;->deregisterListener(Lcom/amazon/kcp/library/LibraryFilterStateManager$ILibraryFilterStateChangedListener;)V

    .line 192
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    .line 193
    invoke-super {p0, p1}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->onDestroy(Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method

.method public refresh()V
    .locals 1

    .line 84
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->getGridFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->getGridFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler$ILibraryFragment;

    invoke-interface {v0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler$ILibraryFragment;->refresh()V

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->getListFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 88
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->getListFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler$ILibraryFragment;

    invoke-interface {v0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler$ILibraryFragment;->refresh()V

    .line 90
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->getDetailsFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 91
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->getDetailsFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler$ILibraryFragment;

    invoke-interface {v0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler$ILibraryFragment;->refresh()V

    :cond_2
    return-void
.end method

.method protected setProperties(Lcom/amazon/kcp/library/LibraryContext;)V
    .locals 1

    .line 214
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->libraryContext:Lcom/amazon/kcp/library/LibraryContext;

    .line 215
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/FilterFragmentHandler;->createLibraryFilterStateChangedListener()V

    .line 216
    invoke-virtual {p1}, Lcom/amazon/kcp/library/LibraryContext;->getFilterStateManager()Lcom/amazon/kcp/library/LibraryFilterStateManager;

    move-result-object p1

    .line 217
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/FilterFragmentHandler;->libraryFilterStateChangedListener:Lcom/amazon/kcp/library/LibraryFilterStateManager$ILibraryFilterStateChangedListener;

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/library/LibraryFilterStateManager;->registerListener(Lcom/amazon/kcp/library/LibraryFilterStateManager$ILibraryFilterStateChangedListener;)V

    .line 218
    invoke-virtual {p1}, Lcom/amazon/kcp/library/LibraryFilterStateManager;->getSelectedItemWithGroup()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/fragments/FilterFragmentHandler;->setLibraryFilterItems(Ljava/util/List;)V

    return-void
.end method

.method public setSortType(Lcom/amazon/kcp/library/LibrarySortType;)V
    .locals 1

    .line 120
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/FilterFragmentHandler;->getSortTypePersistKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->setSortTypeWithKey(Lcom/amazon/kcp/library/LibrarySortType;Ljava/lang/String;)V

    return-void
.end method

.method public show(ILandroidx/fragment/app/FragmentTransaction;Lcom/amazon/kcp/library/LibraryContext;)V
    .locals 0

    if-eqz p3, :cond_0

    .line 208
    invoke-virtual {p0, p3}, Lcom/amazon/kcp/library/fragments/FilterFragmentHandler;->setProperties(Lcom/amazon/kcp/library/LibraryContext;)V

    .line 209
    invoke-super {p0, p1, p2, p3}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->show(ILandroidx/fragment/app/FragmentTransaction;Lcom/amazon/kcp/library/LibraryContext;)V

    :cond_0
    return-void
.end method
