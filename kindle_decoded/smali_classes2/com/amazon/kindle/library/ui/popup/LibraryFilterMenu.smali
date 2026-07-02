.class public Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;
.super Ljava/lang/Object;
.source "LibraryFilterMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu$OnFilterItemClickListener;
    }
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private adapter:Lcom/amazon/kcp/library/LibraryRefineMenuAdapter;

.field private final anchor:Landroid/view/View;

.field private bottomSheetDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private bottomSheetMenuContainer:Landroid/view/ViewGroup;

.field private bottomSheetRootView:Landroid/view/ViewGroup;

.field private bottomsheet:Lcom/amazon/kindle/library/ui/popup/BottomSheetPopup;

.field private filterMenu:Lcom/amazon/kindle/library/ui/popup/IPopup;

.field private inlineFilterLeafName:Ljava/lang/String;

.field private final libraryFilter:Lcom/amazon/kcp/library/ILibraryFilter;

.field private final libraryFilterStateManager:Lcom/amazon/kcp/library/LibraryFilterStateManager;

.field private libraryGroupType:Lcom/amazon/kindle/krx/library/LibraryGroupType;

.field private final libraryType:Ljava/lang/String;

.field private popup:Lcom/amazon/kindle/library/ui/popup/LibraryPopupMenu;

.field private popupMenuContainer:Landroid/view/ViewGroup;

.field private popupRootView:Landroid/view/ViewGroup;

.field private final refineMenuExpandableListView:Lcom/amazon/kindle/library/ui/RefineMenuExpandableListView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Lcom/amazon/kcp/library/LibraryFilterStateManager;Lcom/amazon/kcp/library/ILibraryFilter;Ljava/lang/String;Lcom/amazon/kindle/krx/library/LibraryGroupType;Ljava/lang/String;)V
    .locals 6

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 64
    iput-object v0, p0, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;->inlineFilterLeafName:Ljava/lang/String;

    .line 72
    iput-object p2, p0, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;->anchor:Landroid/view/View;

    .line 73
    iput-object p1, p0, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;->activity:Landroid/app/Activity;

    .line 74
    iput-object p3, p0, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;->libraryFilterStateManager:Lcom/amazon/kcp/library/LibraryFilterStateManager;

    .line 75
    iput-object p4, p0, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;->libraryFilter:Lcom/amazon/kcp/library/ILibraryFilter;

    .line 76
    iput-object p5, p0, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;->libraryType:Ljava/lang/String;

    .line 77
    iput-object p6, p0, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;->libraryGroupType:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    .line 78
    iput-object p7, p0, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;->inlineFilterLeafName:Ljava/lang/String;

    .line 80
    invoke-static {}, Lcom/amazon/kcp/debug/LargeLibraryDebugUtils;->isLargeLibraryEnabled()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 81
    const-class p2, Lcom/amazon/kcp/library/LargeLibraryRefineMenuAdapterProvider;

    invoke-static {p2}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/amazon/kcp/library/LargeLibraryRefineMenuAdapterProvider;

    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p6

    move-object v5, p7

    .line 85
    invoke-interface/range {v0 .. v5}, Lcom/amazon/kcp/library/LargeLibraryRefineMenuAdapterProvider;->refineMenuAdapter(Landroid/app/Activity;Lcom/amazon/kcp/library/LibraryFilterStateManager;Lcom/amazon/kcp/library/ILibraryFilter;Lcom/amazon/kindle/krx/library/LibraryGroupType;Ljava/lang/String;)Lcom/amazon/kcp/library/LibraryRefineMenuAdapter;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;->adapter:Lcom/amazon/kcp/library/LibraryRefineMenuAdapter;

    .line 86
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p2

    invoke-interface {p2, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    goto :goto_0

    .line 83
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Null LargeLibraryRefineMenuAdapterProvider while LL is enabled"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 88
    :cond_1
    new-instance p2, Lcom/amazon/kcp/library/LibraryRefineMenuAdapter;

    invoke-direct {p2, p1, p3, p4}, Lcom/amazon/kcp/library/LibraryRefineMenuAdapter;-><init>(Landroid/app/Activity;Lcom/amazon/kcp/library/LibraryFilterStateManager;Lcom/amazon/kcp/library/ILibraryFilter;)V

    iput-object p2, p0, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;->adapter:Lcom/amazon/kcp/library/LibraryRefineMenuAdapter;

    .line 91
    :goto_0
    new-instance p2, Lcom/amazon/kindle/library/ui/RefineMenuExpandableListView;

    invoke-direct {p2, p1, p3}, Lcom/amazon/kindle/library/ui/RefineMenuExpandableListView;-><init>(Landroid/content/Context;Lcom/amazon/kcp/library/LibraryFilterStateManager;)V

    iput-object p2, p0, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;->refineMenuExpandableListView:Lcom/amazon/kindle/library/ui/RefineMenuExpandableListView;

    .line 92
    iget-object p1, p0, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;->adapter:Lcom/amazon/kcp/library/LibraryRefineMenuAdapter;

    invoke-virtual {p2, p1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 93
    iget-object p1, p0, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;->refineMenuExpandableListView:Lcom/amazon/kindle/library/ui/RefineMenuExpandableListView;

    new-instance p2, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu$OnFilterItemClickListener;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu$OnFilterItemClickListener;-><init>(Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu$1;)V

    invoke-virtual {p1, p2}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 94
    invoke-direct {p0}, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;->updateMenu()V

    .line 95
    invoke-virtual {p0}, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;->setViewType()V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;)Lcom/amazon/kcp/library/LibraryFilterStateManager;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;->libraryFilterStateManager:Lcom/amazon/kcp/library/LibraryFilterStateManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;)Lcom/amazon/kindle/library/ui/popup/IPopup;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;->filterMenu:Lcom/amazon/kindle/library/ui/popup/IPopup;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;)Ljava/lang/String;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;->libraryType:Ljava/lang/String;

    return-object p0
.end method

.method private addFilterToCorrectParentView(Landroid/view/ViewGroup;)V
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;->refineMenuExpandableListView:Lcom/amazon/kindle/library/ui/RefineMenuExpandableListView;

    invoke-virtual {v0}, Landroid/widget/ExpandableListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;->refineMenuExpandableListView:Lcom/amazon/kindle/library/ui/RefineMenuExpandableListView;

    invoke-virtual {v0}, Landroid/widget/ExpandableListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;->refineMenuExpandableListView:Lcom/amazon/kindle/library/ui/RefineMenuExpandableListView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;->refineMenuExpandableListView:Lcom/amazon/kindle/library/ui/RefineMenuExpandableListView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private createBottomSheetAndSetMenu()V
    .locals 4

    .line 120
    iget-object v0, p0, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/librarymodule/R$layout;->lib_refine_menu:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;->bottomSheetRootView:Landroid/view/ViewGroup;

    .line 121
    new-instance v0, Lcom/amazon/kindle/library/ui/popup/BottomSheetPopup;

    iget-object v1, p0, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;->bottomSheetRootView:Landroid/view/ViewGroup;

    invoke-direct {v0, v1, v2}, Lcom/amazon/kindle/library/ui/popup/BottomSheetPopup;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;->bottomsheet:Lcom/amazon/kindle/library/ui/popup/BottomSheetPopup;

    .line 122
    iget-object v0, p0, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;->bottomSheetRootView:Landroid/view/ViewGroup;

    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->refine_menu_container:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;->bottomSheetMenuContainer:Landroid/view/ViewGroup;

    .line 123
    iget-object v0, p0, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;->bottomsheet:Lcom/amazon/kindle/library/ui/popup/BottomSheetPopup;

    iput-object v0, p0, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;->filterMenu:Lcom/amazon/kindle/library/ui/popup/IPopup;

    .line 124
    iget-object v0, p0, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;->bottomSheetRootView:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;->setupClearFiltersView(Landroid/view/ViewGroup;)V

    .line 125
    iget-object v0, p0, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;->bottomsheet:Lcom/amazon/kindle/library/ui/popup/BottomSheetPopup;

    iget-object v1, p0, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;->bottomSheetDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/library/ui/popup/BottomSheetPopup;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method private createPopupIfNecessaryAndSetMenu()V
    .locals 5

    .line 99
    iget-object v0, p0, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;->popup:Lcom/amazon/kindle/library/ui/popup/LibraryPopupMenu;

    if-nez v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/librarymodule/R$layout;->lib_refine_menu_popup:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;->popupRootView:Landroid/view/ViewGroup;

    .line 101
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;->scalePopupMenuWidth(Landroid/view/View;)V

    .line 102
    new-instance v0, Lcom/amazon/kindle/library/ui/popup/LibraryPopupMenu;

    iget-object v1, p0, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;->popupRootView:Landroid/view/ViewGroup;

    sget v3, Lcom/amazon/kindle/librarymodule/R$style;->PopupAnimationLeft:I

    iget-object v4, p0, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;->anchor:Landroid/view/View;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/kindle/library/ui/popup/LibraryPopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;ILandroid/view/View;)V

    iput-object v0, p0, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;->popup:Lcom/amazon/kindle/library/ui/popup/LibraryPopupMenu;

    .line 103
    sget v1, Lcom/amazon/kindle/librarymodule/R$string;->library_filter:I

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/library/ui/popup/PopupMenu;->setContentDescription(I)V

    .line 104
    iget-object v0, p0, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;->popupRootView:Landroid/view/ViewGroup;

    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->refine_menu_container:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;->popupMenuContainer:Landroid/view/ViewGroup;

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;->popup:Lcom/amazon/kindle/library/ui/popup/LibraryPopupMenu;

    iput-object v0, p0, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;->filterMenu:Lcom/amazon/kindle/library/ui/popup/IPopup;

    .line 107
    iget-object v0, p0, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;->popupRootView:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;->setupClearFiltersView(Landroid/view/ViewGroup;)V

    return-void
.end method

.method private getItemsForFilter(Lcom/amazon/kcp/library/LibraryFilterGroup;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/library/LibraryFilterGroup;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/LibraryFilterItem;",
            ">;"
        }
    .end annotation

    .line 145
    invoke-virtual {p1}, Lcom/amazon/kcp/library/LibraryFilterGroup;->getItems()Ljava/util/List;

    move-result-object p1

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 147
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/library/LibraryFilterItem;

    .line 148
    invoke-virtual {v1}, Lcom/amazon/kcp/library/LibraryFilterItem;->isVisible()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;->libraryFilterStateManager:Lcom/amazon/kcp/library/LibraryFilterStateManager;

    invoke-virtual {v1}, Lcom/amazon/kcp/library/LibraryFilterItem;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazon/kcp/library/LibraryFilterStateManager;->isItemIdSelected(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 149
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private setListViewHeight(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/LibraryFilterGroup;",
            ">;)V"
        }
    .end annotation

    .line 197
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kcp/library/LibraryFilterGroup;

    .line 198
    invoke-virtual {v3}, Lcom/amazon/kcp/library/LibraryFilterGroup;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 203
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v3, Lcom/amazon/kindle/librarymodule/R$dimen;->filter_item_divider_height:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-double v3, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int p1, v3

    .line 204
    iget-object v3, p0, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/amazon/kindle/librarymodule/R$dimen;->checkable_item_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    mul-int v3, v3, v1

    mul-int p1, p1, v2

    add-int/2addr v3, p1

    .line 208
    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 209
    iget-object v1, p0, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    .line 210
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 211
    invoke-virtual {v1, p1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 217
    iget-object v1, p0, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/librarymodule/R$dimen;->lib_popup_menu_layout_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 218
    iget-object v2, p0, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/amazon/kindle/librarymodule/R$dimen;->filter_fullscreen_status_bar_offset:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 220
    iget-object v4, p0, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/amazon/kindle/librarymodule/R$bool;->show_refine_menu_as_bottomsheet:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 222
    iget-object v0, p0, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/amazon/kindle/librarymodule/R$dimen;->top_bar_height:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 225
    :cond_1
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    add-int/2addr v1, v2

    add-int/2addr v1, v0

    sub-int/2addr p1, v1

    .line 226
    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 228
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 229
    iget-object p1, p0, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;->refineMenuExpandableListView:Lcom/amazon/kindle/library/ui/RefineMenuExpandableListView;

    invoke-virtual {p1, v0}, Landroid/widget/ExpandableListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateMenu()V
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;->libraryFilter:Lcom/amazon/kcp/library/ILibraryFilter;

    invoke-interface {v0}, Lcom/amazon/kcp/library/ILibraryFilter;->getGroupsMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 189
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;->getGroupsWithItemsForFilter(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 190
    iget-object v1, p0, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;->adapter:Lcom/amazon/kcp/library/LibraryRefineMenuAdapter;

    invoke-virtual {v1, v0}, Lcom/amazon/kcp/library/LibraryRefineMenuAdapter;->setFilterGroups(Ljava/util/List;)V

    .line 191
    invoke-direct {p0, v0}, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;->setListViewHeight(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method getGroupsWithItemsForFilter(Ljava/util/Collection;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/kcp/library/LibraryFilterGroup;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/LibraryFilterGroup;",
            ">;"
        }
    .end annotation

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 132
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/library/LibraryFilterGroup;

    .line 133
    invoke-direct {p0, v1}, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;->getItemsForFilter(Lcom/amazon/kcp/library/LibraryFilterGroup;)Ljava/util/List;

    move-result-object v2

    .line 134
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 135
    new-instance v3, Lcom/amazon/kcp/library/LibraryFilterGroup;

    invoke-virtual {v1}, Lcom/amazon/kcp/library/LibraryFilterGroup;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/amazon/kcp/library/LibraryFilterGroup;->getTitleResId()I

    move-result v5

    .line 136
    invoke-virtual {v1}, Lcom/amazon/kcp/library/LibraryFilterGroup;->getPriority()I

    move-result v1

    invoke-direct {v3, v4, v5, v1, v2}, Lcom/amazon/kcp/library/LibraryFilterGroup;-><init>(Ljava/lang/String;IILjava/util/List;)V

    .line 137
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public onAuthenticationEvent(Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;)V
    .locals 6
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 282
    invoke-static {}, Lcom/amazon/kcp/debug/LargeLibraryDebugUtils;->isLargeLibraryEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 285
    :cond_0
    sget-object v0, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu$4;->$SwitchMap$com$amazon$kindle$krx$events$KRXAuthenticationEvent$EventType:[I

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;->getType()Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    goto :goto_0

    .line 287
    :cond_1
    const-class p1, Lcom/amazon/kcp/library/LargeLibraryRefineMenuAdapterProvider;

    invoke-static {p1}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/amazon/kcp/library/LargeLibraryRefineMenuAdapterProvider;

    if-eqz v0, :cond_3

    .line 291
    iget-object v1, p0, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;->libraryFilterStateManager:Lcom/amazon/kcp/library/LibraryFilterStateManager;

    iget-object v3, p0, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;->libraryFilter:Lcom/amazon/kcp/library/ILibraryFilter;

    iget-object v4, p0, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;->libraryGroupType:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    iget-object v5, p0, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;->inlineFilterLeafName:Ljava/lang/String;

    invoke-interface/range {v0 .. v5}, Lcom/amazon/kcp/library/LargeLibraryRefineMenuAdapterProvider;->refineMenuAdapter(Landroid/app/Activity;Lcom/amazon/kcp/library/LibraryFilterStateManager;Lcom/amazon/kcp/library/ILibraryFilter;Lcom/amazon/kindle/krx/library/LibraryGroupType;Ljava/lang/String;)Lcom/amazon/kcp/library/LibraryRefineMenuAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;->adapter:Lcom/amazon/kcp/library/LibraryRefineMenuAdapter;

    .line 292
    iget-object v0, p0, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;->refineMenuExpandableListView:Lcom/amazon/kindle/library/ui/RefineMenuExpandableListView;

    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 295
    :cond_2
    iget-object p1, p0, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;->adapter:Lcom/amazon/kcp/library/LibraryRefineMenuAdapter;

    invoke-virtual {p1}, Lcom/amazon/kcp/library/LibraryRefineMenuAdapter;->onDestroy()V

    :goto_0
    return-void

    .line 289
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Null LargeLibraryRefineMenuAdapterProvider while LL is enabled"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onDestroy()V
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;->filterMenu:Lcom/amazon/kindle/library/ui/popup/IPopup;

    invoke-interface {v0}, Lcom/amazon/kindle/library/ui/popup/IPopup;->dismiss()V

    .line 257
    iget-object v0, p0, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;->refineMenuExpandableListView:Lcom/amazon/kindle/library/ui/RefineMenuExpandableListView;

    invoke-virtual {v0}, Lcom/amazon/kindle/library/ui/RefineMenuExpandableListView;->onDestroy()V

    .line 258
    iget-object v0, p0, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;->adapter:Lcom/amazon/kcp/library/LibraryRefineMenuAdapter;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/LibraryRefineMenuAdapter;->onDestroy()V

    const/4 v0, 0x0

    .line 259
    iput-object v0, p0, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;->activity:Landroid/app/Activity;

    return-void
.end method

.method scalePopupMenuWidth(Landroid/view/View;)V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 113
    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 115
    invoke-virtual {p1}, Landroid/view/View;->getMinimumWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v0

    float-to-int v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setMinimumWidth(I)V

    :cond_0
    return-void
.end method

.method public setDismissListener(Lcom/amazon/kindle/library/ui/popup/DismissListener;)V
    .locals 2

    .line 264
    new-instance v0, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu$2;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu$2;-><init>(Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;Lcom/amazon/kindle/library/ui/popup/DismissListener;)V

    iput-object v0, p0, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;->bottomSheetDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 270
    invoke-direct {p0}, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;->createPopupIfNecessaryAndSetMenu()V

    .line 271
    iget-object v0, p0, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;->popup:Lcom/amazon/kindle/library/ui/popup/LibraryPopupMenu;

    new-instance v1, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu$3;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu$3;-><init>(Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;Lcom/amazon/kindle/library/ui/popup/DismissListener;)V

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/library/ui/popup/PopupMenu;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method

.method public setLibraryGroupType(Lcom/amazon/kindle/krx/library/LibraryGroupType;)V
    .locals 1

    .line 383
    iput-object p1, p0, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;->libraryGroupType:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    .line 384
    iget-object v0, p0, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;->adapter:Lcom/amazon/kcp/library/LibraryRefineMenuAdapter;

    if-eqz v0, :cond_0

    .line 385
    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/LibraryRefineMenuAdapter;->setLibraryGroupType(Lcom/amazon/kindle/krx/library/LibraryGroupType;)V

    :cond_0
    return-void
.end method

.method setViewType()V
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/librarymodule/R$bool;->show_refine_menu_as_bottomsheet:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    invoke-direct {p0}, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;->createBottomSheetAndSetMenu()V

    .line 163
    iget-object v0, p0, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;->bottomSheetMenuContainer:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;->addFilterToCorrectParentView(Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 165
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;->createPopupIfNecessaryAndSetMenu()V

    .line 166
    iget-object v0, p0, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;->popupMenuContainer:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;->addFilterToCorrectParentView(Landroid/view/ViewGroup;)V

    :goto_0
    return-void
.end method

.method setupClearFiltersView(Landroid/view/ViewGroup;)V
    .locals 2

    .line 237
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->clear_filters_container:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 238
    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->clear_filters:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    .line 242
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isSpokenFeedbackAccessibilityServiceEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 243
    new-instance v1, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu$1;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu$1;-><init>(Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x0

    .line 249
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    .line 251
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public show()V
    .locals 1

    .line 178
    invoke-direct {p0}, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;->updateMenu()V

    .line 179
    invoke-virtual {p0}, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;->setViewType()V

    .line 180
    iget-object v0, p0, Lcom/amazon/kindle/library/ui/popup/LibraryFilterMenu;->filterMenu:Lcom/amazon/kindle/library/ui/popup/IPopup;

    invoke-interface {v0}, Lcom/amazon/kindle/library/ui/popup/IPopup;->show()V

    .line 181
    sget-object v0, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->FILTER_MENU_OPEN:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-static {v0}, Lcom/amazon/kindle/performance/PerformanceEventBuilder;->createEndEvent(Lcom/amazon/kindle/performance/KindlePerformanceConstants;)Lcom/amazon/kindle/performance/PerformanceEventBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/performance/PerformanceEventBuilder;->buildAndSend()V

    return-void
.end method
