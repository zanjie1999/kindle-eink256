.class public Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;
.super Ljava/lang/Object;
.source "LibrarySecondaryMenu.java"

# interfaces
.implements Lcom/amazon/kindle/library/navigation/ISecondaryMenu;
.implements Lcom/amazon/kcp/library/AllDownloadToggleDelegate$CloudDeviceStateChangeListener;


# instance fields
.field protected activity:Landroid/app/Activity;

.field protected allDownloadToggle:Landroid/view/View;

.field protected allDownloadToggleDelegate:Lcom/amazon/kcp/library/AllDownloadToggleDelegate;

.field protected createCollectionView:Landroid/view/View;

.field private final fragmentStatusListener:Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel$LibraryFragmentViewOptionsChangedListener;

.field protected handler:Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;

.field private final isAllDownloadedToggleEnabled:Z

.field private isSecondaryMenuEnabled:Z

.field protected libraryContext:Lcom/amazon/kcp/library/LibraryContext;

.field private final libraryFilter:Lcom/amazon/kcp/library/ILibraryFilter;

.field private libraryFilterMenu:Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;

.field private final libraryFilterStateManager:Lcom/amazon/kcp/library/LibraryFilterStateManager;

.field private librarySelectedFiltersBar:Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar;

.field private final libraryType:Ljava/lang/String;

.field private final libraryViewChangedListener:Lcom/amazon/kcp/library/LibraryViewChangedListener;

.field private libraryViewSortMenu:Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;

.field protected rootView:Landroid/view/ViewGroup;

.field protected sortFilter:Landroid/view/View;

.field private sortTypeMenuListener:Lcom/amazon/kindle/library/navigation/SortTypeMenuBaseListener;

.field private toggleLeftSpace:Landroid/view/View;

.field private final viewOptionsModel:Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel;

.field private viewTypeMenuListener:Lcom/amazon/kindle/library/navigation/ViewTypeMenuBaseListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/amazon/kcp/library/LibraryViewChangedListener;Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel;Lcom/amazon/kcp/library/LibraryContext;Z)V
    .locals 1

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    invoke-static {}, Lcom/amazon/kcp/library/AllDownloadToggleDelegate;->getInstance()Lcom/amazon/kcp/library/AllDownloadToggleDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->allDownloadToggleDelegate:Lcom/amazon/kcp/library/AllDownloadToggleDelegate;

    const/4 v0, 0x1

    .line 103
    iput-boolean v0, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->isSecondaryMenuEnabled:Z

    .line 105
    new-instance v0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu$1;-><init>(Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;)V

    iput-object v0, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->fragmentStatusListener:Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel$LibraryFragmentViewOptionsChangedListener;

    .line 129
    iput-object p1, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->activity:Landroid/app/Activity;

    .line 130
    iput-object p2, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->libraryViewChangedListener:Lcom/amazon/kcp/library/LibraryViewChangedListener;

    .line 131
    iput-object p3, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->viewOptionsModel:Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel;

    .line 132
    invoke-interface {p3, v0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel;->registerListener(Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel$LibraryFragmentViewOptionsChangedListener;)V

    .line 134
    invoke-virtual {p4}, Lcom/amazon/kcp/library/LibraryContext;->getLibraryFilter()Lcom/amazon/kcp/library/ILibraryFilter;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->libraryFilter:Lcom/amazon/kcp/library/ILibraryFilter;

    .line 135
    invoke-virtual {p4}, Lcom/amazon/kcp/library/LibraryContext;->getLibraryType()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->libraryType:Ljava/lang/String;

    .line 136
    invoke-virtual {p4}, Lcom/amazon/kcp/library/LibraryContext;->getFilterStateManager()Lcom/amazon/kcp/library/LibraryFilterStateManager;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->libraryFilterStateManager:Lcom/amazon/kcp/library/LibraryFilterStateManager;

    .line 137
    iput-object p4, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->libraryContext:Lcom/amazon/kcp/library/LibraryContext;

    .line 138
    iput-boolean p5, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->isAllDownloadedToggleEnabled:Z

    .line 140
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;)Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->libraryViewSortMenu:Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;Landroid/view/View;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->hideKeyboard(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$200(Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;)Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->libraryFilterMenu:Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;

    return-object p0
.end method

.method static synthetic access$202(Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;)Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->libraryFilterMenu:Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;

    return-object p1
.end method

.method static synthetic access$300(Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;)Lcom/amazon/kcp/library/LibraryFilterStateManager;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->libraryFilterStateManager:Lcom/amazon/kcp/library/LibraryFilterStateManager;

    return-object p0
.end method

.method static synthetic access$400(Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;)Lcom/amazon/kcp/library/ILibraryFilter;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->libraryFilter:Lcom/amazon/kcp/library/ILibraryFilter;

    return-object p0
.end method

.method static synthetic access$500(Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;)Ljava/lang/String;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->libraryType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;)Lcom/amazon/kindle/krx/library/LibraryGroupType;
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->getLibraryGroupType()Lcom/amazon/kindle/krx/library/LibraryGroupType;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;II)V
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->styleTitleString(II)V

    return-void
.end method

.method static synthetic access$800(Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;Lcom/amazon/kindle/krx/library/LibraryView;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->showLibraryView(Lcom/amazon/kindle/krx/library/LibraryView;)V

    return-void
.end method

.method private adjustForDisplayMask()V
    .locals 4

    .line 592
    iget-object v0, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->toggleLeftSpace:Landroid/view/View;

    .line 593
    invoke-static {}, Lcom/amazon/kindle/displaymask/DisplayMaskManager;->getInstance()Lcom/amazon/kindle/displaymask/DisplayMaskUtils;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/displaymask/DisplayMaskUtils;->deviceSupportsDisplayMask()Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez v0, :cond_0

    goto :goto_2

    .line 598
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/displaymask/DisplayMaskManager;->getInstance()Lcom/amazon/kindle/displaymask/DisplayMaskUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->activity:Landroid/app/Activity;

    invoke-interface {v1, v2}, Lcom/amazon/kindle/displaymask/DisplayMaskUtils;->getNonFunctionalAreas(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 599
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-ge v2, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/16 v3, 0x8

    .line 600
    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_2
    return-void
.end method

.method private createFilterBarTextChangedListener()Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar$FiltersBarTextChangeCallback;
    .locals 1

    .line 170
    new-instance v0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu$2;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu$2;-><init>(Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;)V

    return-object v0
.end method

.method private createLibraryViewDisplayer()Lcom/amazon/kindle/library/navigation/ViewTypeMenuBaseListener$LibraryViewDisplayer;
    .locals 1

    .line 530
    new-instance v0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu$9;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu$9;-><init>(Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;)V

    return-object v0
.end method

.method private createViewTypeListener()Lcom/amazon/kindle/library/navigation/ViewTypeMenuBaseListener;
    .locals 3

    .line 526
    new-instance v0, Lcom/amazon/kindle/library/navigation/ViewTypeMenuBaseListener;

    invoke-direct {p0}, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->createLibraryViewDisplayer()Lcom/amazon/kindle/library/navigation/ViewTypeMenuBaseListener$LibraryViewDisplayer;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->viewOptionsModel:Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel;

    invoke-direct {v0, v1, v2}, Lcom/amazon/kindle/library/navigation/ViewTypeMenuBaseListener;-><init>(Lcom/amazon/kindle/library/navigation/ViewTypeMenuBaseListener$LibraryViewDisplayer;Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel;)V

    return-object v0
.end method

.method private defaultSecondaryMenu()V
    .locals 3

    const/4 v0, 0x1

    .line 373
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->setRefineButtonVisibility(Z)V

    .line 374
    iget-object v1, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->allDownloadToggle:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->setViewEnabled(Landroid/view/View;Z)V

    .line 375
    iget-object v0, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->allDownloadToggleDelegate:Lcom/amazon/kcp/library/AllDownloadToggleDelegate;

    iget-object v1, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->activity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/library/AllDownloadToggleDelegate;->setVisibility(Landroid/app/Activity;I)V

    const/16 v0, 0x8

    .line 376
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->setupCreateCollectionButton(I)V

    .line 377
    iget-object v0, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->librarySelectedFiltersBar:Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar;

    if-eqz v0, :cond_0

    .line 378
    invoke-virtual {v0}, Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar;->show()V

    :cond_0
    return-void
.end method

.method private getAlpha(Z)F
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    if-nez p1, :cond_0

    const/4 p1, 0x1

    new-array p1, p1, [I

    .line 634
    sget v1, Lcom/amazon/kindle/librarymodule/R$attr;->secondary_menu_disabled_alpha:I

    const/4 v2, 0x0

    aput v1, p1, v2

    .line 635
    iget-object v1, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 636
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    .line 637
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return v0
.end method

.method private getLibraryGroupType()Lcom/amazon/kindle/krx/library/LibraryGroupType;
    .locals 2

    .line 189
    iget-object v0, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->allDownloadToggleDelegate:Lcom/amazon/kcp/library/AllDownloadToggleDelegate;

    if-eqz v0, :cond_0

    .line 190
    iget-object v1, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/AllDownloadToggleDelegate;->getState(Landroid/app/Activity;)Lcom/amazon/kindle/krx/library/LibraryGroupType;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->handler:Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;

    instance-of v1, v0, Lcom/amazon/kcp/library/fragments/GroupedLibraryFragmentHandler;

    if-eqz v1, :cond_1

    .line 197
    check-cast v0, Lcom/amazon/kcp/library/fragments/GroupedLibraryFragmentHandler;

    .line 198
    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/GroupedLibraryFragmentHandler;->getGroupType()Lcom/amazon/kindle/krx/library/LibraryGroupType;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 204
    :cond_1
    sget-object v0, Lcom/amazon/kindle/krx/library/LibraryGroupType;->NOT_APPLICABLE:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    return-object v0
.end method

.method private hasVisibleFilters()Z
    .locals 3

    .line 361
    iget-object v0, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->libraryFilter:Lcom/amazon/kcp/library/ILibraryFilter;

    invoke-interface {v0}, Lcom/amazon/kcp/library/ILibraryFilter;->getGroupsMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/library/LibraryFilterGroup;

    .line 362
    invoke-virtual {v1}, Lcom/amazon/kcp/library/LibraryFilterGroup;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/library/LibraryFilterItem;

    .line 363
    invoke-virtual {v2}, Lcom/amazon/kcp/library/LibraryFilterItem;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private hideKeyboard(Landroid/view/View;)V
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 223
    :cond_0
    invoke-static {p1}, Lcom/amazon/android/util/UIUtils;->closeSoftKeyboard(Landroid/view/View;)V

    return-void
.end method

.method private isCollectionsView(Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;)Z
    .locals 2

    .line 319
    invoke-interface {p1}, Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;->getTab()Lcom/amazon/kindle/krx/library/LibraryView;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/library/LibraryView;->COLLECTIONS:Lcom/amazon/kindle/krx/library/LibraryView;

    if-eq v0, v1, :cond_1

    .line 320
    invoke-interface {p1}, Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;->getTab()Lcom/amazon/kindle/krx/library/LibraryView;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/library/LibraryView;->COLLECTIONS_BOOKS:Lcom/amazon/kindle/krx/library/LibraryView;

    if-eq v0, v1, :cond_1

    .line 321
    invoke-interface {p1}, Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;->getTab()Lcom/amazon/kindle/krx/library/LibraryView;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/library/LibraryView;->COLLECTIONS_NEWSSTAND:Lcom/amazon/kindle/krx/library/LibraryView;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private setSortMenuProperties(Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;)V
    .locals 2

    .line 496
    iget-object v0, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->viewTypeMenuListener:Lcom/amazon/kindle/library/navigation/ViewTypeMenuBaseListener;

    if-eqz v0, :cond_0

    .line 497
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/library/navigation/ViewTypeMenuBaseListener;->attachFragmentHandler(Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;)V

    .line 499
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->libraryViewSortMenu:Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;

    if-eqz v0, :cond_1

    .line 500
    invoke-interface {p1}, Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;->getSupportedSortTypes()[Lcom/amazon/kcp/library/LibrarySortType;

    move-result-object v0

    .line 501
    iget-object v1, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->libraryViewSortMenu:Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;

    invoke-virtual {v1, v0}, Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;->setEnabledSortType([Lcom/amazon/kcp/library/LibrarySortType;)V

    .line 502
    iget-object v0, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->libraryViewSortMenu:Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;

    invoke-interface {p1}, Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;->getSupportedRefineMenuViewTypes()[Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;->setEnabledRefineViewType([Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;)V

    .line 503
    iget-object v0, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->libraryViewSortMenu:Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;

    invoke-interface {p1}, Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;->getSortType()Lcom/amazon/kcp/library/LibrarySortType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;->setSortTypeItemAsChecked(Lcom/amazon/kcp/library/LibrarySortType;)V

    .line 505
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->sortTypeMenuListener:Lcom/amazon/kindle/library/navigation/SortTypeMenuBaseListener;

    if-eqz v0, :cond_2

    .line 506
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/library/navigation/SortTypeMenuBaseListener;->attachFragmentHandler(Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;)V

    :cond_2
    return-void
.end method

.method private setupAllDownloadedMenu()V
    .locals 3

    .line 539
    iget-object v0, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->allDownloadToggle:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 543
    :cond_0
    iget-object v1, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->handler:Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;

    instance-of v1, v1, Lcom/amazon/kcp/library/fragments/GroupedLibraryFragmentHandler;

    if-eqz v1, :cond_1

    .line 544
    iget-object v0, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->allDownloadToggleDelegate:Lcom/amazon/kcp/library/AllDownloadToggleDelegate;

    iget-object v1, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->activity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/library/AllDownloadToggleDelegate;->setVisibility(Landroid/app/Activity;I)V

    .line 546
    iget-object v0, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->handler:Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;

    check-cast v0, Lcom/amazon/kcp/library/fragments/GroupedLibraryFragmentHandler;

    .line 547
    iget-object v1, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->activity:Landroid/app/Activity;

    invoke-virtual {p0, v1, p0}, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->setupCloudDevice(Landroid/app/Activity;Lcom/amazon/kcp/library/AllDownloadToggleDelegate$CloudDeviceStateChangeListener;)V

    .line 548
    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/GroupedLibraryFragmentHandler;->getGroupType()Lcom/amazon/kindle/krx/library/LibraryGroupType;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 550
    iget-object v1, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->activity:Landroid/app/Activity;

    invoke-virtual {p0, v1, v0}, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->setCloudDeviceState(Landroid/app/Activity;Lcom/amazon/kindle/krx/library/LibraryGroupType;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    .line 553
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private setupViewAndSortTypePopup()V
    .locals 2

    .line 441
    iget-object v0, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->rootView:Landroid/view/ViewGroup;

    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->sort_filter:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 444
    new-instance v1, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu$7;

    invoke-direct {v1, p0, v0}, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu$7;-><init>(Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private showLibraryView(Lcom/amazon/kindle/krx/library/LibraryView;)V
    .locals 1

    .line 432
    sget-object v0, Lcom/amazon/kindle/krx/library/LibraryView;->COLLECTIONS:Lcom/amazon/kindle/krx/library/LibraryView;

    if-ne p1, v0, :cond_0

    .line 433
    invoke-static {}, Lcom/amazon/kcp/library/CollectionItemsCountCache;->getInstance()Lcom/amazon/kcp/library/ICollectionItemsCountCache;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/library/ICollectionItemsCountCache;->load()V

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->libraryViewChangedListener:Lcom/amazon/kcp/library/LibraryViewChangedListener;

    invoke-interface {v0, p1}, Lcom/amazon/kcp/library/LibraryViewChangedListener;->onLibraryViewSelected(Lcom/amazon/kindle/krx/library/LibraryView;)V

    return-void
.end method

.method private styleTitleString(II)V
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    if-eqz p2, :cond_1

    .line 182
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isComicsBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mobipocket/android/drawing/FontFamily;->ROBOTO_REGULAR:Lcom/mobipocket/android/drawing/FontFamily;

    .line 183
    invoke-virtual {v0}, Lcom/mobipocket/android/drawing/FontFamily;->getTypeFaceName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/mobipocket/android/drawing/FontFamily;->EMBER:Lcom/mobipocket/android/drawing/FontFamily;

    .line 184
    invoke-virtual {v0}, Lcom/mobipocket/android/drawing/FontFamily;->getTypeFaceName()Ljava/lang/String;

    move-result-object v0

    .line 182
    :goto_0
    invoke-static {v0, p1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_1
    return-void
.end method

.method private updateSecondaryMenuForCollections()V
    .locals 4

    const/4 v0, 0x0

    .line 343
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->setRefineButtonVisibility(Z)V

    .line 344
    iget-object v1, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->allDownloadToggleDelegate:Lcom/amazon/kcp/library/AllDownloadToggleDelegate;

    iget-object v2, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->activity:Landroid/app/Activity;

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Lcom/amazon/kcp/library/AllDownloadToggleDelegate;->setVisibility(Landroid/app/Activity;I)V

    .line 345
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->setupCreateCollectionButton(I)V

    .line 346
    iget-object v0, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->librarySelectedFiltersBar:Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar;

    if-eqz v0, :cond_0

    .line 347
    invoke-virtual {v0}, Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar;->hide()V

    :cond_0
    return-void
.end method


# virtual methods
.method public attachFragmentHandler(Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;)V
    .locals 2

    .line 268
    iput-object p1, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->handler:Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;

    .line 269
    invoke-virtual {p0}, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->updateMenuItemTextInUIThread()V

    .line 272
    invoke-direct {p0, p1}, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->setSortMenuProperties(Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;)V

    .line 273
    invoke-direct {p0}, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->setupAllDownloadedMenu()V

    .line 275
    invoke-virtual {p0}, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->setRefineButtonEnabled()V

    .line 277
    invoke-direct {p0, p1}, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->isCollectionsView(Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    invoke-direct {p0}, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->updateSecondaryMenuForCollections()V

    goto :goto_0

    .line 279
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->isGroupItemViewHandler(Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 280
    invoke-virtual {p0}, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->updateSecondaryMenuForGroupItemView()V

    goto :goto_0

    .line 282
    :cond_1
    invoke-direct {p0}, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->defaultSecondaryMenu()V

    .line 286
    :goto_0
    instance-of v0, p1, Lcom/amazon/kcp/library/fragments/ILibraryItemCountProvider;

    if-eqz v0, :cond_2

    .line 287
    move-object v0, p1

    check-cast v0, Lcom/amazon/kcp/library/fragments/ILibraryItemCountProvider;

    new-instance v1, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu$4;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu$4;-><init>(Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;)V

    invoke-interface {v0, v1}, Lcom/amazon/kcp/library/fragments/ILibraryItemCountProvider;->registerItemCountChangedListener(Lcom/amazon/kcp/library/fragments/ILibraryItemCountProvider$ILibraryItemChangedListener;)V

    :cond_2
    return-void
.end method

.method public clearMenuOptions(Landroid/view/ViewGroup;Landroid/view/Menu;)V
    .locals 1

    .line 384
    invoke-interface {p2}, Landroid/view/Menu;->clear()V

    .line 385
    iget-object p2, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->rootView:Landroid/view/ViewGroup;

    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->filter_root:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method protected createLibrarySortViewMenu(Landroid/view/ViewGroup;)Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;
    .locals 3

    .line 511
    const-class v0, Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenuProvider;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenuProvider;

    if-eqz v0, :cond_0

    .line 515
    iget-object v1, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->libraryContext:Lcom/amazon/kcp/library/LibraryContext;

    invoke-interface {v0, v1, p1, v2}, Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenuProvider;->getViewSortMenu(Landroid/app/Activity;Landroid/view/View;Lcom/amazon/kcp/library/LibraryContext;)Lcom/amazon/kindle/library/ui/popup/RefineLibraryViewSortMenu;

    move-result-object p1

    .line 516
    new-instance v0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu$8;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu$8;-><init>(Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;)V

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;->setDismissListener(Lcom/amazon/kindle/library/ui/popup/DismissListener;)V

    return-object p1

    .line 513
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "No LibraryViewSortMenuProvider found"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createSecondaryToolbarMenu(Landroid/view/ViewGroup;Landroid/view/Menu;)V
    .locals 7

    .line 149
    iget-object p2, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->activity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-virtual {p0}, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->getSecondaryMenuLayout()I

    move-result v0

    invoke-virtual {p2, v0, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->rootView:Landroid/view/ViewGroup;

    .line 151
    invoke-virtual {p0}, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->setupFilterMenu()V

    .line 152
    invoke-direct {p0}, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->setupViewAndSortTypePopup()V

    .line 154
    iget-object p2, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->rootView:Landroid/view/ViewGroup;

    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->kindle_downloaded_toggle:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->allDownloadToggle:Landroid/view/View;

    .line 155
    iget-object p2, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->rootView:Landroid/view/ViewGroup;

    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->toggle_left_padding:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->toggleLeftSpace:Landroid/view/View;

    .line 156
    iget-object p2, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->rootView:Landroid/view/ViewGroup;

    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->sort_filter:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->sortFilter:Landroid/view/View;

    .line 158
    invoke-direct {p0}, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->adjustForDisplayMask()V

    .line 160
    new-instance p2, Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar;

    iget-object v1, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->libraryFilter:Lcom/amazon/kcp/library/ILibraryFilter;

    iget-object v4, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->libraryType:Ljava/lang/String;

    iget-object v5, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->libraryFilterStateManager:Lcom/amazon/kcp/library/LibraryFilterStateManager;

    .line 162
    invoke-direct {p0}, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->createFilterBarTextChangedListener()Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar$FiltersBarTextChangeCallback;

    move-result-object v6

    move-object v0, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/amazon/kcp/library/ILibraryFilter;Ljava/lang/String;Lcom/amazon/kcp/library/LibraryFilterStateManager;Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar$FiltersBarTextChangeCallback;)V

    iput-object p2, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->librarySelectedFiltersBar:Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar;

    .line 165
    sget p1, Lcom/amazon/kindle/librarymodule/R$id;->sort_button:I

    const/4 p2, 0x0

    invoke-direct {p0, p2, p1}, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->styleTitleString(II)V

    .line 166
    sget p1, Lcom/amazon/kindle/librarymodule/R$id;->refine_button:I

    invoke-direct {p0, p2, p1}, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->styleTitleString(II)V

    return-void
.end method

.method public getAttachedFragmentHandler()Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;
    .locals 1

    .line 645
    iget-object v0, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->handler:Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;

    return-object v0
.end method

.method public getMenuType()Lcom/amazon/kindle/library/navigation/SecondaryMenuType;
    .locals 1

    .line 144
    sget-object v0, Lcom/amazon/kindle/library/navigation/SecondaryMenuType;->Library:Lcom/amazon/kindle/library/navigation/SecondaryMenuType;

    return-object v0
.end method

.method protected getSecondaryMenuLayout()I
    .locals 1

    .line 259
    iget-boolean v0, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->isAllDownloadedToggleEnabled:Z

    if-eqz v0, :cond_0

    .line 260
    sget v0, Lcom/amazon/kindle/librarymodule/R$layout;->refine_secondary_menu:I

    return v0

    .line 262
    :cond_0
    sget v0, Lcom/amazon/kindle/librarymodule/R$layout;->refine_secondary_menu_no_toggle:I

    return v0
.end method

.method isGroupItemViewHandler(Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;)Z
    .locals 2

    .line 325
    invoke-interface {p1}, Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;->getTab()Lcom/amazon/kindle/krx/library/LibraryView;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/library/LibraryView;->BACK_ISSUES:Lcom/amazon/kindle/krx/library/LibraryView;

    if-eq v0, v1, :cond_1

    .line 326
    invoke-interface {p1}, Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;->getTab()Lcom/amazon/kindle/krx/library/LibraryView;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/library/LibraryView;->SERIES:Lcom/amazon/kindle/krx/library/LibraryView;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public onDestroy()V
    .locals 2

    .line 563
    iget-object v0, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->libraryFilterMenu:Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;

    if-eqz v0, :cond_0

    .line 564
    invoke-virtual {v0}, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;->onDestroy()V

    .line 566
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->librarySelectedFiltersBar:Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar;

    if-eqz v0, :cond_1

    .line 567
    invoke-virtual {v0}, Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar;->onDestroy()V

    .line 570
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 571
    iget-object v0, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->libraryViewSortMenu:Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;

    if-eqz v0, :cond_2

    .line 572
    invoke-virtual {v0}, Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;->dismiss()V

    .line 574
    :cond_2
    iget-object v0, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->viewOptionsModel:Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel;

    iget-object v1, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->fragmentStatusListener:Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel$LibraryFragmentViewOptionsChangedListener;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel;->deregisterListener(Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel$LibraryFragmentViewOptionsChangedListener;)V

    .line 576
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    return-void
.end method

.method protected onSortMenuClicked(Landroid/view/ViewGroup;)V
    .locals 3

    .line 459
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 461
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v0

    const-string v1, "Library"

    const-string v2, "OpenViewSortMenu"

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->libraryViewSortMenu:Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;

    if-nez v0, :cond_1

    .line 465
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->createLibrarySortViewMenu(Landroid/view/ViewGroup;)Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->libraryViewSortMenu:Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;

    .line 467
    invoke-direct {p0}, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->createViewTypeListener()Lcom/amazon/kindle/library/navigation/ViewTypeMenuBaseListener;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->viewTypeMenuListener:Lcom/amazon/kindle/library/navigation/ViewTypeMenuBaseListener;

    .line 468
    new-instance v0, Lcom/amazon/kindle/library/navigation/SortTypeMenuBaseListener;

    invoke-direct {v0}, Lcom/amazon/kindle/library/navigation/SortTypeMenuBaseListener;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->sortTypeMenuListener:Lcom/amazon/kindle/library/navigation/SortTypeMenuBaseListener;

    .line 470
    iget-object v0, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->libraryViewSortMenu:Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;

    iget-object v1, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->viewTypeMenuListener:Lcom/amazon/kindle/library/navigation/ViewTypeMenuBaseListener;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;->setViewTypeMenuListener(Lcom/amazon/kindle/library/navigation/ViewTypeMenuBaseListener;)V

    .line 471
    iget-object v0, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->libraryViewSortMenu:Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;

    iget-object v1, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->sortTypeMenuListener:Lcom/amazon/kindle/library/navigation/SortTypeMenuBaseListener;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;->setSortTypeMenuListener(Lcom/amazon/kindle/library/ui/popup/LibrarySortTypeRadioGroup$SortTypeMenuListener;)V

    .line 474
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->sort_filter_text:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 475
    iget-object v0, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->sortTypeMenuListener:Lcom/amazon/kindle/library/navigation/SortTypeMenuBaseListener;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/library/navigation/SortTypeMenuBaseListener;->setSortTypeText(Landroid/widget/TextView;)V

    .line 477
    :cond_1
    iget-object p1, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->handler:Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;

    invoke-direct {p0, p1}, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->setSortMenuProperties(Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;)V

    .line 479
    iget-object p1, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->handler:Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;

    invoke-interface {p1}, Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;->getTab()Lcom/amazon/kindle/krx/library/LibraryView;

    move-result-object p1

    .line 480
    sget-object v0, Lcom/amazon/kindle/krx/library/LibraryView;->COLLECTIONS:Lcom/amazon/kindle/krx/library/LibraryView;

    if-eq p1, v0, :cond_3

    sget-object v0, Lcom/amazon/kindle/krx/library/LibraryView;->COLLECTIONS_BOOKS:Lcom/amazon/kindle/krx/library/LibraryView;

    if-eq p1, v0, :cond_3

    sget-object v0, Lcom/amazon/kindle/krx/library/LibraryView;->COLLECTIONS_NEWSSTAND:Lcom/amazon/kindle/krx/library/LibraryView;

    if-ne p1, v0, :cond_2

    goto :goto_0

    .line 484
    :cond_2
    iget-object p1, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->handler:Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;

    invoke-interface {p1}, Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;->getUserSelectedViewType()Lcom/amazon/kindle/krx/library/LibraryViewType;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 486
    invoke-static {p1}, Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;->fromLibraryViewType(Lcom/amazon/kindle/krx/library/LibraryViewType;)Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;

    move-result-object p1

    .line 487
    iget-object v0, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->libraryViewSortMenu:Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;->setViewTypeItemAsChecked(Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;)V

    goto :goto_1

    .line 482
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->libraryViewSortMenu:Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;

    sget-object v0, Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;->COLLECTIONS:Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;->setViewTypeItemAsChecked(Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;)V

    .line 491
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->libraryViewSortMenu:Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;

    invoke-virtual {p1}, Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;->show()V

    const/4 p1, 0x1

    .line 492
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->sort_button:I

    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->styleTitleString(II)V

    return-void
.end method

.method public onStateChange(Lcom/amazon/kindle/krx/library/LibraryGroupType;)V
    .locals 1

    .line 664
    iget-object v0, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->handler:Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;

    check-cast v0, Lcom/amazon/kcp/library/fragments/GroupedLibraryFragmentHandler;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/fragments/GroupedLibraryFragmentHandler;->onStateChange(Lcom/amazon/kindle/krx/library/LibraryGroupType;)V

    .line 666
    iget-object v0, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->libraryFilterMenu:Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;

    if-eqz v0, :cond_0

    .line 667
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;->setLibraryGroupType(Lcom/amazon/kindle/krx/library/LibraryGroupType;)V

    :cond_0
    return-void
.end method

.method public refreshLayout()V
    .locals 1

    .line 581
    invoke-direct {p0}, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->adjustForDisplayMask()V

    .line 582
    iget-object v0, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->librarySelectedFiltersBar:Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar;

    if-eqz v0, :cond_0

    .line 583
    invoke-virtual {v0}, Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar;->refreshLayout()V

    .line 585
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->handler:Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;

    invoke-interface {v0}, Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;->getGroupType()Lcom/amazon/kindle/krx/library/LibraryGroupType;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 587
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->setLibraryGroupType(Lcom/amazon/kindle/krx/library/LibraryGroupType;)V

    :cond_1
    return-void
.end method

.method public setCloudDeviceState(Landroid/app/Activity;Lcom/amazon/kindle/krx/library/LibraryGroupType;)V
    .locals 1

    .line 659
    iget-object v0, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->allDownloadToggleDelegate:Lcom/amazon/kcp/library/AllDownloadToggleDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/kcp/library/AllDownloadToggleDelegate;->setState(Landroid/app/Activity;Lcom/amazon/kindle/krx/library/LibraryGroupType;)V

    return-void
.end method

.method setCollectionButtonEnabled(Z)V
    .locals 1

    .line 402
    iget-object v0, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->createCollectionView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 403
    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->setViewEnabled(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method protected setFilterMenuEnabled(Z)V
    .locals 2

    .line 408
    iget-object v0, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->rootView:Landroid/view/ViewGroup;

    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->refine_menu_button_container:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 409
    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->setViewEnabled(Landroid/view/View;Z)V

    return-void
.end method

.method public setLibraryGroupType(Lcom/amazon/kindle/krx/library/LibraryGroupType;)V
    .locals 2

    .line 614
    iget-object v0, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->allDownloadToggleDelegate:Lcom/amazon/kcp/library/AllDownloadToggleDelegate;

    iget-object v1, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Lcom/amazon/kcp/library/AllDownloadToggleDelegate;->setState(Landroid/app/Activity;Lcom/amazon/kindle/krx/library/LibraryGroupType;)V

    .line 616
    iget-object v0, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->libraryFilterMenu:Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;

    if-eqz v0, :cond_0

    .line 617
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;->setLibraryGroupType(Lcom/amazon/kindle/krx/library/LibraryGroupType;)V

    :cond_0
    return-void
.end method

.method setRefineButtonEnabled()V
    .locals 2

    .line 337
    invoke-static {}, Lcom/amazon/kcp/library/CounterManagerSingleton;->getInstance()Lcom/amazon/kcp/library/CounterManagerSingleton;

    move-result-object v0

    const-string v1, "ALL_ITEMS"

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/CounterManagerSingleton;->getCounter(Ljava/lang/String;)Lcom/amazon/kcp/library/AbstractUserItemsCounter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 339
    invoke-virtual {v0}, Lcom/amazon/kcp/library/AbstractUserItemsCounter;->getUserItemsCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->setFilterMenuEnabled(Z)V

    return-void
.end method

.method setRefineButtonVisibility(Z)V
    .locals 2

    .line 353
    invoke-direct {p0}, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->hasVisibleFilters()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x4

    .line 354
    :goto_1
    iget-object v0, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->rootView:Landroid/view/ViewGroup;

    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->refine_menu_button_container:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 356
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public setSecondaryToolbarMenuEnabled(Z)V
    .locals 1

    .line 390
    iput-boolean p1, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->isSecondaryMenuEnabled:Z

    .line 391
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->setFilterMenuEnabled(Z)V

    .line 392
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->setCollectionButtonEnabled(Z)V

    .line 393
    iget-object v0, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->allDownloadToggle:Landroid/view/View;

    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->setViewEnabled(Landroid/view/View;Z)V

    .line 394
    iget-object v0, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->sortFilter:Landroid/view/View;

    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->setViewEnabled(Landroid/view/View;Z)V

    .line 395
    iget-object v0, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->librarySelectedFiltersBar:Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar;

    if-eqz v0, :cond_0

    .line 396
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method protected setViewEnabled(Landroid/view/View;Z)V
    .locals 3

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 624
    iget-boolean v2, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->isSecondaryMenuEnabled:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p2, :cond_1

    .line 625
    iget-boolean p2, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->isSecondaryMenuEnabled:Z

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-direct {p0, v0}, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->getAlpha(Z)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    return-void
.end method

.method public setupCloudDevice(Landroid/app/Activity;Lcom/amazon/kcp/library/AllDownloadToggleDelegate$CloudDeviceStateChangeListener;)V
    .locals 1

    .line 654
    iget-object v0, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->allDownloadToggleDelegate:Lcom/amazon/kcp/library/AllDownloadToggleDelegate;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/AllDownloadToggleDelegate;->refresh(Landroid/app/Activity;)V

    .line 655
    iget-object p1, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->allDownloadToggleDelegate:Lcom/amazon/kcp/library/AllDownloadToggleDelegate;

    invoke-virtual {p1, p2}, Lcom/amazon/kcp/library/AllDownloadToggleDelegate;->addStateChangeListener(Lcom/amazon/kcp/library/AllDownloadToggleDelegate$CloudDeviceStateChangeListener;)Z

    return-void
.end method

.method setupCreateCollectionButton(I)V
    .locals 2

    .line 417
    iget-object v0, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->createCollectionView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->rootView:Landroid/view/ViewGroup;

    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->create_collection_button:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->createCollectionView:Landroid/view/View;

    .line 419
    new-instance v1, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu$6;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu$6;-><init>(Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->createCollectionView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected setupFilterMenu()V
    .locals 2

    .line 227
    iget-object v0, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->rootView:Landroid/view/ViewGroup;

    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->refine_menu_button_container:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 228
    new-instance v1, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu$3;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu$3;-><init>(Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public shouldRecreate(Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;Lcom/amazon/kcp/library/LibraryContext;Landroid/view/View;)Z
    .locals 2

    .line 606
    iget-object v0, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->rootView:Landroid/view/ViewGroup;

    .line 607
    iget-object v1, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->libraryContext:Lcom/amazon/kcp/library/LibraryContext;

    if-eqz v1, :cond_1

    if-ne v0, p3, :cond_1

    .line 608
    invoke-interface {p1}, Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;->getSecondaryMenuType()Lcom/amazon/kindle/library/navigation/SecondaryMenuType;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->getMenuType()Lcom/amazon/kindle/library/navigation/SecondaryMenuType;

    move-result-object p3

    if-ne p1, p3, :cond_1

    .line 609
    invoke-virtual {p2}, Lcom/amazon/kcp/library/LibraryContext;->getTab()Lcom/amazon/kindle/krx/library/LibraryView;

    move-result-object p1

    invoke-virtual {v1}, Lcom/amazon/kcp/library/LibraryContext;->getTab()Lcom/amazon/kindle/krx/library/LibraryView;

    move-result-object p2

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method shouldShowRefineMenuBtn(Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;)Z
    .locals 0

    .line 315
    invoke-direct {p0, p1}, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->isCollectionsView(Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method protected updateMenuItemText()V
    .locals 0

    return-void
.end method

.method protected updateMenuItemTextInUIThread()V
    .locals 2

    .line 300
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    .line 302
    invoke-interface {v0}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->isRunningOnMainThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 303
    invoke-virtual {p0}, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->updateMenuItemText()V

    goto :goto_0

    .line 305
    :cond_0
    new-instance v1, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu$5;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu$5;-><init>(Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method updateSecondaryMenuForGroupItemView()V
    .locals 3

    const/4 v0, 0x1

    .line 330
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->setRefineButtonVisibility(Z)V

    .line 331
    iget-object v0, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->allDownloadToggleDelegate:Lcom/amazon/kcp/library/AllDownloadToggleDelegate;

    iget-object v1, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->activity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/library/AllDownloadToggleDelegate;->setVisibility(Landroid/app/Activity;I)V

    const/16 v0, 0x8

    .line 332
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->setupCreateCollectionButton(I)V

    return-void
.end method
