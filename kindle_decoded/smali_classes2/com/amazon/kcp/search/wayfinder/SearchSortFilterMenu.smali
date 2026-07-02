.class public final Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;
.super Ljava/lang/Object;
.source "SearchSortFilterMenu.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu$OnFilterSortItemClickListener;,
        Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu$Companion;
    }
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final anchor:Landroid/view/View;

.field private final headerTextId:I

.field private final isShowBottomSheet:Z

.field private listView:Landroid/widget/ExpandableListView;

.field private listViewAdapter:Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenuAdapter;

.field private menu:Lcom/amazon/kindle/library/ui/popup/IPopup;

.field private menuHeaderView:Landroid/widget/TextView;

.field private final menuProvider:Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenuProvider;

.field private final onChildClickListener:Landroid/widget/ExpandableListView$OnChildClickListener;

.field private uiContainer:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;ILcom/amazon/kcp/search/wayfinder/SearchSortFilterMenuProvider;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "anchor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "menuProvider"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;->activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;->anchor:Landroid/view/View;

    iput p3, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;->headerTextId:I

    iput-object p4, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;->menuProvider:Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenuProvider;

    .line 38
    new-instance p1, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu$OnFilterSortItemClickListener;

    invoke-direct {p1, p0}, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu$OnFilterSortItemClickListener;-><init>(Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;)V

    iput-object p1, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;->onChildClickListener:Landroid/widget/ExpandableListView$OnChildClickListener;

    .line 39
    iget-object p1, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/librarymodule/R$bool;->show_refine_menu_as_bottomsheet:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;->isShowBottomSheet:Z

    .line 48
    invoke-direct {p0}, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;->create()V

    return-void
.end method

.method public static final synthetic access$getMenuHeaderView$p(Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;)Landroid/widget/TextView;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;->menuHeaderView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "menuHeaderView"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getMenuProvider$p(Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;)Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenuProvider;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;->menuProvider:Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenuProvider;

    return-object p0
.end method

.method public static final synthetic access$getUiContainer$p(Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;)Landroid/view/View;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;->uiContainer:Landroid/view/View;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string/jumbo p0, "uiContainer"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$isShowBottomSheet$p(Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;->isShowBottomSheet:Z

    return p0
.end method

.method private final create()V
    .locals 3

    .line 71
    iget-boolean v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;->isShowBottomSheet:Z

    if-eqz v0, :cond_0

    .line 72
    invoke-direct {p0}, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;->createBottomSheet()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 74
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;->createPopup()Landroid/view/View;

    move-result-object v0

    .line 71
    :goto_0
    iput-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;->uiContainer:Landroid/view/View;

    .line 78
    new-instance v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuView;

    iget-object v1, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;->listView:Landroid/widget/ExpandableListView;

    .line 79
    new-instance v0, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenuAdapter;

    iget-object v1, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;->menuProvider:Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenuProvider;

    invoke-direct {v0, v1, v2}, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenuAdapter;-><init>(Landroid/app/Activity;Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenuProvider;)V

    iput-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;->listViewAdapter:Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenuAdapter;

    .line 80
    iget-object v1, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;->menuProvider:Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenuProvider;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1, v0}, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenuProvider;->addListener(Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenuProvider$Listener;)V

    .line 81
    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;->listView:Landroid/widget/ExpandableListView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;->listViewAdapter:Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenuAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;->listView:Landroid/widget/ExpandableListView;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;->onChildClickListener:Landroid/widget/ExpandableListView$OnChildClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 84
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;->uiContainer:Landroid/view/View;

    if-eqz v0, :cond_4

    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->refine_menu_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v0, Landroid/view/ViewGroup;

    .line 85
    iget-object v1, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;->listView:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void

    .line 84
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const-string/jumbo v0, "uiContainer"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method private final createBottomSheet()Landroid/view/View;
    .locals 4

    .line 92
    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/librarymodule/R$layout;->lib_refine_menu_wayfinder_sort_filter:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    .line 95
    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->refine_menu_header:I

    invoke-direct {p0, v0, v1}, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;->setUpHeaderView(Landroid/view/View;I)V

    .line 97
    new-instance v1, Lcom/amazon/kindle/library/ui/popup/BottomSheetPopup;

    iget-object v2, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2, v0}, Lcom/amazon/kindle/library/ui/popup/BottomSheetPopup;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v1, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;->menu:Lcom/amazon/kindle/library/ui/popup/IPopup;

    return-object v0

    .line 92
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final createPopup()Landroid/view/View;
    .locals 5

    .line 106
    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/librarymodule/R$layout;->lib_refine_menu_popup_wayfinder_sort_filter:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    .line 107
    invoke-direct {p0, v0}, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;->scalePopupMenuWidth(Landroid/view/View;)V

    .line 109
    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->wayfinder_refine_menu_header:I

    invoke-direct {p0, v0, v1}, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;->setUpHeaderView(Landroid/view/View;I)V

    .line 111
    new-instance v1, Lcom/amazon/kindle/library/ui/popup/LibraryPopupMenu;

    iget-object v2, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;->activity:Landroid/app/Activity;

    sget v3, Lcom/amazon/kindle/librarymodule/R$style;->PopupAnimationLeft:I

    iget-object v4, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;->anchor:Landroid/view/View;

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/amazon/kindle/library/ui/popup/LibraryPopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;ILandroid/view/View;)V

    .line 112
    iget v2, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;->headerTextId:I

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/library/ui/popup/PopupMenu;->setContentDescription(I)V

    .line 113
    iput-object v1, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;->menu:Lcom/amazon/kindle/library/ui/popup/IPopup;

    return-object v0

    .line 106
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final resizeMenu()V
    .locals 8

    .line 192
    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;->menuProvider:Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenuProvider;

    invoke-interface {v0}, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenuProvider;->getGroups()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuGroup;

    .line 193
    invoke-virtual {v4}, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuGroup;->getItems()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 198
    invoke-virtual {v4}, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuGroup;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_0

    .line 202
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/amazon/kcp/search/R$dimen;->filter_item_divider_height:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-float v0, v4

    float-to-int v0, v0

    .line 203
    iget-object v4, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/amazon/kcp/search/R$dimen;->checkable_item_height:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-float v4, v4

    float-to-int v4, v4

    mul-int v4, v4, v2

    mul-int v0, v0, v3

    add-int/2addr v4, v0

    .line 207
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 208
    iget-object v2, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    const-string v3, "activity.windowManager"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 210
    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 214
    iget-object v2, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kcp/search/R$dimen;->lib_popup_menu_layout_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 215
    iget-object v3, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/amazon/kcp/search/R$dimen;->filter_fullscreen_status_bar_offset:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 217
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isSpokenFeedbackAccessibilityServiceEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;->menuProvider:Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenuProvider;

    instance-of v5, v5, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;

    if-eqz v5, :cond_2

    .line 218
    iget-object v5, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/amazon/kcp/search/R$dimen;->checkable_item_height:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-float v5, v5

    float-to-int v5, v5

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    .line 223
    :goto_1
    iget-object v6, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;->activity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/amazon/kcp/search/R$bool;->show_refine_menu_as_bottomsheet:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_2

    .line 226
    :cond_3
    iget-object v1, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v6, Lcom/amazon/kcp/search/R$dimen;->top_bar_height:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 230
    :goto_2
    iget-object v6, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;->activity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/amazon/kcp/search/R$dimen;->lib_popup_menu_layout_height:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 233
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    add-int/2addr v6, v2

    add-int/2addr v6, v1

    add-int/2addr v6, v3

    add-int/2addr v6, v5

    sub-int v1, v0, v6

    int-to-double v2, v0

    const-wide v5, 0x3fe570a3d70a3d71L    # 0.67

    mul-double v2, v2, v5

    .line 234
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 233
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 236
    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 237
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 238
    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;->listView:Landroid/widget/ExpandableListView;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    return-void
.end method

.method private final scalePopupMenuWidth(Landroid/view/View;)V
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "activity.resources"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 178
    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    const/4 v1, 0x1

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 180
    invoke-virtual {p1}, Landroid/view/View;->getMinimumWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v0

    float-to-int v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setMinimumWidth(I)V

    :cond_0
    return-void
.end method

.method private final setUpAccessibilityButtons()V
    .locals 7

    .line 134
    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;->uiContainer:Landroid/view/View;

    const/4 v1, 0x0

    const-string/jumbo v2, "uiContainer"

    if-eqz v0, :cond_5

    sget v3, Lcom/amazon/kindle/librarymodule/R$id;->menu_close_icon:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v3, "uiContainer.findViewById\u2026ule.R.id.menu_close_icon)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    .line 135
    iget-object v3, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;->uiContainer:Landroid/view/View;

    if-eqz v3, :cond_4

    sget v4, Lcom/amazon/kindle/librarymodule/R$id;->clear_filters_container:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string/jumbo v4, "uiContainer.findViewById\u2026.clear_filters_container)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    iget-object v4, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;->uiContainer:Landroid/view/View;

    if-eqz v4, :cond_3

    sget v2, Lcom/amazon/kindle/librarymodule/R$id;->clear_filters:I

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string/jumbo v4, "uiContainer.findViewById\u2026odule.R.id.clear_filters)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/TextView;

    .line 137
    iget-object v4, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/amazon/kcp/search/R$dimen;->lib_popup_menu_layout_height:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 138
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isSpokenFeedbackAccessibilityServiceEnabled()Z

    move-result v5

    const/16 v6, 0x8

    if-eqz v5, :cond_2

    .line 142
    iget-object v5, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;->menuHeaderView:Landroid/widget/TextView;

    if-eqz v5, :cond_1

    new-instance v1, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu$setUpAccessibilityButtons$1;

    invoke-direct {v1, p0, v0, v4}, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu$setUpAccessibilityButtons$1;-><init>(Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;Landroid/widget/ImageView;I)V

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    const/4 v1, 0x0

    .line 151
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 153
    new-instance v4, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu$setUpAccessibilityButtons$2;

    invoke-direct {v4, p0}, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu$setUpAccessibilityButtons$2;-><init>(Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;->menuProvider:Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenuProvider;

    instance-of v0, v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;

    if-eqz v0, :cond_0

    .line 159
    new-instance v0, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu$setUpAccessibilityButtons$3;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu$setUpAccessibilityButtons$3;-><init>(Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;)V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 164
    :cond_0
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const-string v0, "menuHeaderView"

    .line 142
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 167
    :cond_2
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 168
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void

    .line 136
    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 135
    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 134
    :cond_5
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method private final setUpHeaderView(Landroid/view/View;I)V
    .locals 3

    .line 122
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;->menuHeaderView:Landroid/widget/TextView;

    const/4 p2, 0x0

    const-string v0, "menuHeaderView"

    if-eqz p1, :cond_1

    .line 123
    iget-object v1, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;->activity:Landroid/app/Activity;

    iget v2, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;->headerTextId:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object p1, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;->menuHeaderView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;->activity:Landroid/app/Activity;

    iget v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;->headerTextId:I

    invoke-virtual {p2, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p2

    .line 123
    :cond_1
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p2

    .line 122
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type android.widget.TextView"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final dismiss()V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;->menu:Lcom/amazon/kindle/library/ui/popup/IPopup;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/library/ui/popup/IPopup;->dismiss()V

    :cond_0
    return-void
.end method

.method public final show()V
    .locals 1

    .line 55
    invoke-direct {p0}, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;->setUpAccessibilityButtons()V

    .line 56
    invoke-direct {p0}, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;->resizeMenu()V

    .line 57
    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;->menu:Lcom/amazon/kindle/library/ui/popup/IPopup;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/library/ui/popup/IPopup;->show()V

    :cond_0
    return-void
.end method
