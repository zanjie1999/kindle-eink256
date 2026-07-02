.class public abstract Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;
.super Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;
.source "LibraryRecyclerFragment.kt"

# interfaces
.implements Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler$ILibraryFragment;
.implements Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;
.implements Lcom/amazon/kcp/library/FastRecyclerItemClickListener;
.implements Lcom/amazon/kcp/library/FastRecyclerItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;",
        "Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler$ILibraryFragment;",
        "Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment<",
        "TT;>;",
        "Lcom/amazon/kcp/library/FastRecyclerItemClickListener<",
        "TT;>;",
        "Lcom/amazon/kcp/library/FastRecyclerItemLongClickListener<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final TABLET_LIST_VIEW_WIDTH_SCALE_FACTOR:D = 0.85


# instance fields
.field private final helper:Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final libraryFragmentClientProxy:Lcom/amazon/kcp/library/fragments/LibraryFragmentClientProxy;

.field private listTabletHeader:Lcom/amazon/kcp/library/RecyclerHeader;

.field private final visibilityHelper:Lcom/amazon/kcp/library/fragments/VisibilityStatefulFragmentHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;-><init>()V

    .line 36
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->newHelper()Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->helper:Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;

    .line 37
    new-instance v0, Lcom/amazon/kcp/library/fragments/LibraryFragmentClientProxy;

    invoke-direct {v0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentClientProxy;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->libraryFragmentClientProxy:Lcom/amazon/kcp/library/fragments/LibraryFragmentClientProxy;

    .line 38
    new-instance v0, Lcom/amazon/kcp/library/fragments/VisibilityStatefulFragmentHelper;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/fragments/VisibilityStatefulFragmentHelper;-><init>(Landroidx/fragment/app/Fragment;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->visibilityHelper:Lcom/amazon/kcp/library/fragments/VisibilityStatefulFragmentHelper;

    return-void
.end method

.method private final addDefaultListHeader(Z)V
    .locals 1

    if-eqz p1, :cond_1

    .line 238
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->getRecyclerAdapter()Lcom/amazon/kcp/library/FastRecyclerAdapter;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 239
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->listTabletHeader:Lcom/amazon/kcp/library/RecyclerHeader;

    if-nez v0, :cond_1

    .line 240
    new-instance v0, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment$addDefaultListHeader$2;

    invoke-direct {v0}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment$addDefaultListHeader$2;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->listTabletHeader:Lcom/amazon/kcp/library/RecyclerHeader;

    if-eqz v0, :cond_0

    .line 250
    invoke-virtual {p1, v0}, Lcom/amazon/kcp/library/FastRecyclerAdapter;->addHeader(Lcom/amazon/kcp/library/RecyclerHeader;)V

    goto :goto_0

    :cond_0
    const-string p1, "listTabletHeader"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method private final configureRecycler()V
    .locals 2

    .line 180
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getRecyclerLayoutType()Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 182
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->configureGrid()V

    goto :goto_0

    .line 181
    :cond_1
    invoke-virtual {p0, v1}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->configureList(Z)V

    :goto_0
    return-void
.end method

.method private final setupListViewLayoutForWidth(Z)V
    .locals 6

    .line 222
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    .line 223
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 224
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    if-eqz p1, :cond_0

    if-eqz v2, :cond_0

    .line 226
    sget p1, Lcom/amazon/kindle/librarymodule/R$attr;->library_list_view_bordered_background:I

    invoke-static {p1, v2}, Lcom/amazon/android/util/UIUtils;->getThemedResourceId(ILandroid/content/Context;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    const/16 p1, 0xe

    .line 227
    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 228
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    const-string v3, "Utils.getFactory()"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    move-result-object p1

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->getAvailableWindowDimensions(Landroid/content/Context;Z)Landroid/graphics/Point;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Point;->x:I

    int-to-double v2, p1

    const-wide v4, 0x3feb333333333333L    # 0.85

    mul-double v2, v2, v4

    double-to-int p1, v2

    iput p1, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    goto :goto_0

    :cond_0
    const/16 p1, 0x12

    .line 230
    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 p1, -0x1

    .line 231
    iput p1, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 233
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private final setupRecyclerListDivider(Landroidx/recyclerview/widget/RecyclerView;Z)V
    .locals 10

    const/4 v0, 0x1

    .line 202
    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setNestedScrollingEnabled(Landroid/view/View;Z)V

    const/4 v1, 0x0

    .line 203
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVerticalFadingEdgeEnabled(Z)V

    .line 206
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_1

    new-array v3, v0, [I

    .line 208
    sget v4, Lcom/amazon/kindle/librarymodule/R$attr;->library_list_view_divider:I

    aput v4, v3, v1

    invoke-virtual {v2, v3}, Landroid/app/Activity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    const-string v3, "activity.obtainStyledAtt\u2026brary_list_view_divider))"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v1, "array.getDrawable(0)!!"

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 211
    new-instance v1, Lcom/amazon/kcp/library/ListDividerDecoration;

    if-eqz p2, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->getRecyclerAdapter()Lcom/amazon/kcp/library/FastRecyclerAdapter;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/amazon/kcp/library/FastRecyclerAdapter;->numHeaders()I

    move-result v0

    move v6, v0

    :goto_0
    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lcom/amazon/kcp/library/ListDividerDecoration;-><init>(Landroid/graphics/drawable/Drawable;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public checkedItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 120
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->getRecyclerAdapter()Lcom/amazon/kcp/library/FastRecyclerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kcp/library/FastRecyclerAdapter;->getCheckedItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0
.end method

.method public clearCheckedItems()V
    .locals 1

    .line 130
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->getRecyclerAdapter()Lcom/amazon/kcp/library/FastRecyclerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kcp/library/FastRecyclerAdapter;->clearCheckedItems()V

    :cond_0
    return-void
.end method

.method protected configureGrid()V
    .locals 2

    .line 187
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setNestedScrollingEnabled(Landroid/view/View;Z)V

    return-void
.end method

.method protected configureList(Z)V
    .locals 2

    .line 191
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    .line 192
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->isListWidthLimited()Z

    move-result v1

    .line 194
    invoke-direct {p0, v1}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->setupListViewLayoutForWidth(Z)V

    if-eqz p1, :cond_0

    .line 196
    invoke-direct {p0, v1}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->addDefaultListHeader(Z)V

    .line 198
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->setupRecyclerListDivider(Landroidx/recyclerview/widget/RecyclerView;Z)V

    return-void
.end method

.method public dismissActionMode()V
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->helper:Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->getActionMode()Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    :cond_0
    return-void
.end method

.method public firstVisiblePosition()I
    .locals 2

    .line 116
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final getHelper()Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper<",
            "TT;>;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->helper:Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;

    return-object v0
.end method

.method public getImageDimension()Lcom/amazon/kindle/util/drawing/Dimension;
    .locals 1

    .line 150
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getCoverDimension()Lcom/amazon/kindle/util/drawing/Dimension;

    move-result-object v0

    return-object v0
.end method

.method protected final getLibraryFragmentClientProxy()Lcom/amazon/kcp/library/fragments/LibraryFragmentClientProxy;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->libraryFragmentClientProxy:Lcom/amazon/kcp/library/fragments/LibraryFragmentClientProxy;

    return-object v0
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 104
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->getRecyclerAdapter()Lcom/amazon/kcp/library/FastRecyclerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kcp/library/AbstractRecyclerAdapter;->getList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getRecyclerAdapter()Lcom/amazon/kcp/library/FastRecyclerAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/kcp/library/FastRecyclerAdapter<",
            "TT;>;"
        }
    .end annotation

    .line 172
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/FastRecyclerAdapter;

    return-object v0
.end method

.method public hasAdapter()Z
    .locals 1

    .line 134
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->getRecyclerAdapter()Lcom/amazon/kcp/library/FastRecyclerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasView()Z
    .locals 1

    .line 142
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isListWidthLimited()Z
    .locals 2

    .line 257
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/librarymodule/R$bool;->ruby_library_list_view_size_limited:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method protected abstract newHelper()Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper<",
            "TT;>;"
        }
    .end annotation
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 108
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->getRecyclerAdapter()Lcom/amazon/kcp/library/FastRecyclerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 58
    invoke-super {p0, p1}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 59
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->configureRecycler()V

    .line 60
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->helper:Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;

    invoke-virtual {p1}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->onActivityCreated()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    const-string/jumbo v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-super {p0, p1}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 65
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getRecyclerLayoutType()Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;

    move-result-object p1

    sget-object v0, Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;->LIST:Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;

    if-ne p1, v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->isListWidthLimited()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->setupListViewLayoutForWidth(Z)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 44
    invoke-super {p0, p1}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->onCreate(Landroid/os/Bundle;)V

    .line 45
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->helper:Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;

    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->libraryFragmentClientProxy:Lcom/amazon/kcp/library/fragments/LibraryFragmentClientProxy;

    invoke-virtual {v0, p1, v1}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->onCreate(Landroid/os/Bundle;Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;)V

    .line 46
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->getRecyclerAdapter()Lcom/amazon/kcp/library/FastRecyclerAdapter;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 47
    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->helper:Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;

    invoke-virtual {v1, v0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->onAdapterCreated(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 48
    invoke-virtual {v0, p0}, Lcom/amazon/kcp/library/FastRecyclerAdapter;->setOnItemClickListener(Lcom/amazon/kcp/library/FastRecyclerItemClickListener;)V

    .line 49
    invoke-virtual {v0, p0}, Lcom/amazon/kcp/library/FastRecyclerAdapter;->setOnItemLongClickListener(Lcom/amazon/kcp/library/FastRecyclerItemLongClickListener;)V

    .line 50
    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->visibilityHelper:Lcom/amazon/kcp/library/fragments/VisibilityStatefulFragmentHelper;

    invoke-virtual {v1, p1}, Lcom/amazon/kcp/library/fragments/VisibilityStatefulFragmentHelper;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "isRecreatedForThemeChange"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 53
    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/FastRecyclerAdapter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 92
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 93
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->helper:Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->onDestroy()V

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 1

    .line 71
    invoke-super {p0, p1}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->onHiddenChanged(Z)V

    .line 72
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->visibilityHelper:Lcom/amazon/kcp/library/fragments/VisibilityStatefulFragmentHelper;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/fragments/VisibilityStatefulFragmentHelper;->onHiddenChanged(Z)V

    .line 73
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->helper:Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->onHiddenChange(Z)V

    return-void
.end method

.method public onItemClick(ILjava/lang/Object;Landroid/view/View;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string/jumbo p2, "view"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getRecyclerLayoutType()Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;

    move-result-object p2

    sget-object v0, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    const-string v1, "LibraryGridView"

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 161
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_1
    const-string v1, "LibraryListView"

    :cond_2
    :goto_0
    move-object v7, v1

    .line 163
    iget-object v2, p0, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->helper:Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;

    invoke-virtual {p3}, Landroid/view/View;->getId()I

    move-result p2

    int-to-long v5, p2

    move-object v3, p3

    move v4, p1

    invoke-virtual/range {v2 .. v7}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->onItemClickWithReadingStream(Landroid/view/View;IJLjava/lang/String;)V

    return-void
.end method

.method public onItemLongClick(ILjava/lang/Object;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string/jumbo p1, "view"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onRefresh()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 77
    invoke-super {p0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->onResume()V

    .line 78
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->helper:Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->onResume()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    const-string/jumbo v0, "savedInstanceState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 98
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->helper:Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 99
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->visibilityHelper:Lcom/amazon/kcp/library/fragments/VisibilityStatefulFragmentHelper;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/fragments/VisibilityStatefulFragmentHelper;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 100
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->getRecyclerAdapter()Lcom/amazon/kcp/library/FastRecyclerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/FastRecyclerAdapter;->onSaveInstanceState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 82
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 83
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->helper:Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 87
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 88
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->helper:Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->onStop()V

    return-void
.end method

.method public refresh()V
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->helper:Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->refresh()V

    return-void
.end method

.method public setAdapterFragmentListener(Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$IAdapterFragmentListener;)V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->helper:Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->setAdapterFragmentListener(Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$IAdapterFragmentListener;)V

    return-void
.end method

.method public setFilterAndSort(Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;)V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->helper:Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->setFilterAndSort(Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;)V

    return-void
.end method

.method public setItemChecked(Ljava/lang/Object;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;IZ)V"
        }
    .end annotation

    .line 124
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->getRecyclerAdapter()Lcom/amazon/kcp/library/FastRecyclerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {v0, p1, p3}, Lcom/amazon/kcp/library/FastRecyclerAdapter;->setItemChecked(Ljava/lang/Object;Z)V

    .line 126
    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_0
    return-void
.end method

.method public setLibraryFragmentClient(Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;)V
    .locals 1

    const-string v0, "libraryFragmentClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->libraryFragmentClientProxy:Lcom/amazon/kcp/library/fragments/LibraryFragmentClientProxy;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/fragments/LibraryFragmentClientProxy;->setLibraryFragmentClient(Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;)V

    return-void
.end method

.method public swapList(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 112
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->getRecyclerAdapter()Lcom/amazon/kcp/library/FastRecyclerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/FastRecyclerAdapter;->swapList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
