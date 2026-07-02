.class public Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;
.super Ljava/lang/Object;
.source "LibraryViewSortMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu$LibrarySortPopupMenu;,
        Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu$LibrarySortBottomSheet;,
        Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu$ILibrarySortMenu;
    }
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final bottomSheetContainer:Landroid/view/ViewGroup;

.field private final librarySortBottomSheet:Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu$LibrarySortBottomSheet;

.field private final librarySortPopupMenu:Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu$LibrarySortPopupMenu;

.field private final popupContainer:Landroid/view/ViewGroup;

.field private sortTypeMenuListener:Lcom/amazon/kindle/library/ui/popup/LibrarySortTypeRadioGroup$SortTypeMenuListener;

.field sortTypeRadioGroup:Lcom/amazon/kindle/library/ui/popup/LibrarySortTypeRadioGroup;

.field viewSortMenu:Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu$ILibrarySortMenu;

.field viewSortMenuRootView:Landroid/view/View;

.field private viewTypeMenuListener:Lcom/amazon/kindle/library/ui/popup/RefineLibraryViewTypeRadioGroup$RefineViewTypeMenuListener;

.field viewTypeRadioGroup:Lcom/amazon/kindle/library/ui/popup/RefineLibraryViewTypeRadioGroup;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .locals 4

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;->activity:Landroid/app/Activity;

    .line 46
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/librarymodule/R$layout;->lib_view_and_sort_type_bottom_sheet:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;->viewSortMenuRootView:Landroid/view/View;

    .line 49
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/librarymodule/R$layout;->lib_view_sort_container:I

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;->bottomSheetContainer:Landroid/view/ViewGroup;

    .line 51
    new-instance v0, Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu$LibrarySortBottomSheet;

    iget-object v1, p0, Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;->bottomSheetContainer:Landroid/view/ViewGroup;

    invoke-direct {v0, p1, v1}, Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu$LibrarySortBottomSheet;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;->librarySortBottomSheet:Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu$LibrarySortBottomSheet;

    .line 53
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/librarymodule/R$layout;->lib_view_sort_container_popup:I

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;->popupContainer:Landroid/view/ViewGroup;

    .line 55
    new-instance v1, Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu$LibrarySortPopupMenu;

    sget v2, Lcom/amazon/kindle/librarymodule/R$style;->PopupAnimationRight:I

    invoke-direct {v1, p1, v0, v2, p2}, Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu$LibrarySortPopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;ILandroid/view/View;)V

    iput-object v1, p0, Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;->librarySortPopupMenu:Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu$LibrarySortPopupMenu;

    .line 58
    invoke-virtual {p0}, Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;->setSortPopupType()V

    .line 59
    invoke-direct {p0}, Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;->createViewTypeRadioGroup()V

    .line 60
    invoke-direct {p0}, Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;->createSortTypeRadioGroup()V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;)Lcom/amazon/kindle/library/ui/popup/LibrarySortTypeRadioGroup$SortTypeMenuListener;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;->sortTypeMenuListener:Lcom/amazon/kindle/library/ui/popup/LibrarySortTypeRadioGroup$SortTypeMenuListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;)Lcom/amazon/kindle/library/ui/popup/RefineLibraryViewTypeRadioGroup$RefineViewTypeMenuListener;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;->viewTypeMenuListener:Lcom/amazon/kindle/library/ui/popup/RefineLibraryViewTypeRadioGroup$RefineViewTypeMenuListener;

    return-object p0
.end method

.method private createSortTypeRadioGroup()V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;->viewSortMenuRootView:Landroid/view/View;

    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->lib_sortby_radio_group:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/library/ui/popup/LibrarySortTypeRadioGroup;

    iput-object v0, p0, Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;->sortTypeRadioGroup:Lcom/amazon/kindle/library/ui/popup/LibrarySortTypeRadioGroup;

    .line 82
    new-instance v1, Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu$1;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu$1;-><init>(Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;)V

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/widget/CheckableRadioGroup;->setMenuItemActionListener(Lcom/amazon/kcp/widget/CheckableRadioGroup$MenuItemActionListener;)V

    return-void
.end method

.method private createViewTypeRadioGroup()V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;->viewSortMenuRootView:Landroid/view/View;

    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->lib_view_type_radio_group:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/library/ui/popup/RefineLibraryViewTypeRadioGroup;

    iput-object v0, p0, Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;->viewTypeRadioGroup:Lcom/amazon/kindle/library/ui/popup/RefineLibraryViewTypeRadioGroup;

    .line 103
    new-instance v1, Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu$2;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu$2;-><init>(Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;)V

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/widget/CheckableRadioGroup;->setMenuItemActionListener(Lcom/amazon/kcp/widget/CheckableRadioGroup$MenuItemActionListener;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;->viewSortMenu:Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu$ILibrarySortMenu;

    invoke-interface {v0}, Lcom/amazon/kindle/library/ui/popup/IPopup;->dismiss()V

    return-void
.end method

.method public setDismissListener(Lcom/amazon/kindle/library/ui/popup/DismissListener;)V
    .locals 2

    .line 212
    iget-object v0, p0, Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;->librarySortBottomSheet:Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu$LibrarySortBottomSheet;

    new-instance v1, Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu$3;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu$3;-><init>(Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;Lcom/amazon/kindle/library/ui/popup/DismissListener;)V

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/library/ui/popup/BottomSheetPopup;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 219
    iget-object v0, p0, Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;->librarySortPopupMenu:Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu$LibrarySortPopupMenu;

    new-instance v1, Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu$4;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu$4;-><init>(Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;Lcom/amazon/kindle/library/ui/popup/DismissListener;)V

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/library/ui/popup/PopupMenu;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method

.method public setEnabledRefineViewType([Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;)V
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;->viewTypeRadioGroup:Lcom/amazon/kindle/library/ui/popup/RefineLibraryViewTypeRadioGroup;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/library/ui/popup/RefineLibraryViewTypeRadioGroup;->setEnabledRefineViewType([Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;)V

    .line 148
    iget-object v0, p0, Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;->viewSortMenuRootView:Landroid/view/View;

    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->lib_view_type_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 150
    array-length p1, p1

    const/4 v1, 0x2

    if-ge p1, v1, :cond_0

    const/16 p1, 0x8

    .line 151
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 153
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setEnabledSortType([Lcom/amazon/kcp/library/LibrarySortType;)V
    .locals 6

    .line 160
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v4, p1, v2

    .line 161
    iget-object v5, p0, Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;->sortTypeRadioGroup:Lcom/amazon/kindle/library/ui/popup/LibrarySortTypeRadioGroup;

    invoke-virtual {v5}, Lcom/amazon/kindle/library/ui/popup/LibrarySortTypeRadioGroup;->getItemMap()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;->viewSortMenuRootView:Landroid/view/View;

    sget v2, Lcom/amazon/kindle/librarymodule/R$id;->sort_options_container:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x2

    if-ge v3, v2, :cond_2

    const/16 p1, 0x8

    .line 169
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 171
    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;->sortTypeRadioGroup:Lcom/amazon/kindle/library/ui/popup/LibrarySortTypeRadioGroup;

    invoke-virtual {v0, p1, v1}, Lcom/amazon/kindle/library/ui/popup/LibrarySortTypeRadioGroup;->setEnabledSortType([Lcom/amazon/kcp/library/LibrarySortType;Z)V

    :goto_1
    return-void
.end method

.method setSortPopupType()V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;->viewSortMenuRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;->viewSortMenuRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;->viewSortMenuRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/librarymodule/R$bool;->show_refine_menu_as_bottomsheet:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;->bottomSheetContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;->viewSortMenuRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 72
    iget-object v0, p0, Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;->librarySortBottomSheet:Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu$LibrarySortBottomSheet;

    iput-object v0, p0, Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;->viewSortMenu:Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu$ILibrarySortMenu;

    goto :goto_0

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;->popupContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;->viewSortMenuRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 75
    iget-object v0, p0, Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;->librarySortPopupMenu:Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu$LibrarySortPopupMenu;

    iput-object v0, p0, Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;->viewSortMenu:Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu$ILibrarySortMenu;

    :goto_0
    return-void
.end method

.method public setSortTypeItemAsChecked(Lcom/amazon/kcp/library/LibrarySortType;)V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;->sortTypeRadioGroup:Lcom/amazon/kindle/library/ui/popup/LibrarySortTypeRadioGroup;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/widget/CheckableRadioGroup;->setMenuItemChecked(Ljava/lang/Object;)V

    return-void
.end method

.method public setSortTypeMenuListener(Lcom/amazon/kindle/library/ui/popup/LibrarySortTypeRadioGroup$SortTypeMenuListener;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;->sortTypeMenuListener:Lcom/amazon/kindle/library/ui/popup/LibrarySortTypeRadioGroup$SortTypeMenuListener;

    return-void
.end method

.method public setViewTypeItemAsChecked(Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;)V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;->viewTypeRadioGroup:Lcom/amazon/kindle/library/ui/popup/RefineLibraryViewTypeRadioGroup;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/widget/CheckableRadioGroup;->setMenuItemChecked(Ljava/lang/Object;)V

    return-void
.end method

.method public setViewTypeMenuListener(Lcom/amazon/kindle/library/navigation/ViewTypeMenuBaseListener;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;->viewTypeMenuListener:Lcom/amazon/kindle/library/ui/popup/RefineLibraryViewTypeRadioGroup$RefineViewTypeMenuListener;

    return-void
.end method

.method public show()V
    .locals 1

    .line 177
    invoke-virtual {p0}, Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;->setSortPopupType()V

    .line 178
    iget-object v0, p0, Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu;->viewSortMenu:Lcom/amazon/kindle/library/ui/popup/LibraryViewSortMenu$ILibrarySortMenu;

    invoke-interface {v0}, Lcom/amazon/kindle/library/ui/popup/IPopup;->show()V

    .line 179
    sget-object v0, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->VIEW_SORT_MENU_OPEN:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-static {v0}, Lcom/amazon/kindle/performance/PerformanceEventBuilder;->createEndEvent(Lcom/amazon/kindle/performance/KindlePerformanceConstants;)Lcom/amazon/kindle/performance/PerformanceEventBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/performance/PerformanceEventBuilder;->buildAndSend()V

    return-void
.end method
