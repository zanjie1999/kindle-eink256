.class public abstract Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;
.super Landroidx/fragment/app/Fragment;
.source "AbstractRecyclerFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAbstractRecyclerFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AbstractRecyclerFragment.kt\ncom/amazon/kcp/library/fragments/AbstractRecyclerFragment\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,416:1\n1#2:417\n*E\n"
.end annotation


# static fields
.field private static final DEFAULT_ASPECT_RATIO:F = 1.5f

.field private static final MIN_GRID_SPACING_FACTOR:F = 0.5f

.field private static final NEWSSTAND_ASPECT_RATIO:F = 1.375f

.field private static final PINCH_TO_ZOOM_IN_THRESHOLD:D = 0.5

.field private static final PINCH_TO_ZOOM_MIN_COLUMN_COUNT:I = 0x2

.field private static final PINCH_TO_ZOOM_OUT_THRESHOLD:D = 1.5

.field private static final SMOOTH_SCROLL_TO_TOP_LIMIT:I = 0x5

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "*>;"
        }
    .end annotation
.end field

.field private cacheManager:Lcom/amazon/kcp/cover/ICoverCacheManager;

.field private currentColumnCount:I

.field private defaultColumnCount:I

.field private defaultHorizontalSpacing:I

.field private defaultSidePadding:I

.field private gridCoverDimension:Lcom/amazon/kindle/util/drawing/Dimension;

.field protected gridHorizontalSpacingDecoration:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

.field private gridItemHeight:I

.field private gridItemWidth:I

.field private gridRowPadding:I

.field private final pinchToZoomListener:Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment$pinchToZoomListener$1;

.field private recyclerLayoutType:Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private spanLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 37
    const-class v0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 50
    new-instance v0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment$pinchToZoomListener$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment$pinchToZoomListener$1;-><init>(Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->pinchToZoomListener:Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment$pinchToZoomListener$1;

    .line 92
    sget-object v0, Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;->LIST:Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;

    iput-object v0, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->recyclerLayoutType:Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;

    return-void
.end method

.method public static final synthetic access$getRecyclerView$p(Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public static final synthetic access$setGridDimens(Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->setGridDimens(I)V

    return-void
.end method

.method private final configureRecycler()V
    .locals 9

    .line 142
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    .line 143
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->itemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    const/4 v1, 0x0

    .line 144
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 146
    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->E3OS_SCROLL_CONTROL:I

    sget v2, Lcom/amazon/kindle/librarymodule/R$string;->SCROLL_PERCENT_100:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 148
    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->E3OS_DISPLAY_MODE:I

    sget v2, Lcom/amazon/kindle/librarymodule/R$string;->DISPLAY_MODE_LISTVIEW_LAST_PAGE_FLASH:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 150
    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->recyclerLayoutType:Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;

    sget-object v2, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 165
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getAppWidth()I

    move-result v4

    .line 166
    invoke-virtual {p0, v4}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getColumnCountForScreenWidth(I)I

    move-result v5

    .line 167
    new-instance v1, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment$configureRecycler$2;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, p0, v5, v2, v5}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment$configureRecycler$2;-><init>(Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;ILandroid/content/Context;I)V

    .line 176
    invoke-direct {p0, v1}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->setSpanSizeLookupForSection(Landroidx/recyclerview/widget/GridLayoutManager;)V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v3, p0

    .line 177
    invoke-static/range {v3 .. v8}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->updateGridColumnsAndSpacing$default(Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;IIIILjava/lang/Object;)V

    .line 179
    invoke-static {}, Lcom/amazon/kcp/debug/PinchToZoomDebugUtils;->isPinchToZoomEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 180
    new-instance v1, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->pinchToZoomListener:Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment$pinchToZoomListener$1;

    invoke-direct {v1, v2, v3}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    .line 181
    new-instance v2, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment$configureRecycler$4;

    invoke-direct {v2, v1}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment$configureRecycler$4;-><init>(Landroid/view/ScaleGestureDetector;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    .line 152
    :cond_1
    new-instance v1, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment$configureRecycler$1;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment$configureRecycler$1;-><init>(Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 162
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->setListPadding()V

    :cond_2
    :goto_0
    return-void
.end method

.method private final isShowingNewsstand()Z
    .locals 4

    .line 342
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryController()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v0

    const-string v2, "Utils.getFactory().libraryController"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/library/ILibraryController;->getCurrentLibraryView()Lcom/amazon/kindle/krx/library/LibraryView;

    move-result-object v0

    sget-object v3, Lcom/amazon/kindle/krx/library/LibraryView;->NEWSSTAND:Lcom/amazon/kindle/krx/library/LibraryView;

    if-eq v0, v3, :cond_1

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryController()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/library/ILibraryController;->getCurrentLibraryView()Lcom/amazon/kindle/krx/library/LibraryView;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/library/LibraryView;->BACK_ISSUES:Lcom/amazon/kindle/krx/library/LibraryView;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private final resetCachePivot()V
    .locals 3

    .line 350
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    .line 351
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    instance-of v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_1

    .line 353
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getCoverDimension()Lcom/amazon/kindle/util/drawing/Dimension;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->setCachePivot(IILcom/amazon/kindle/util/drawing/Dimension;)V

    :cond_1
    return-void
.end method

.method private final setGridDimens(I)V
    .locals 4

    .line 270
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 271
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    const-string v2, "Utils.getFactory()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    move-result-object v1

    const/4 v2, 0x0

    .line 272
    invoke-virtual {v1, v0, v2}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->getAvailableWindowDimensions(Landroid/content/Context;Z)Landroid/graphics/Point;

    move-result-object v0

    .line 273
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getPreferredAspectRatio()F

    move-result v1

    .line 274
    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v2, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->defaultSidePadding:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->defaultHorizontalSpacing:I

    add-int/lit8 v3, p1, -0x1

    mul-int v2, v2, v3

    sub-int/2addr v0, v2

    div-int/2addr v0, p1

    iput v0, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->gridItemWidth:I

    int-to-float p1, v0

    mul-float p1, p1, v1

    float-to-int p1, p1

    .line 275
    iput p1, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->gridItemHeight:I

    :cond_0
    return-void
.end method

.method private final setListPadding()V
    .locals 5

    .line 198
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/librarymodule/R$dimen;->ruby_grid_list_bottom_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 200
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    .line 201
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method private final setSpanSizeLookupForSection(Landroidx/recyclerview/widget/GridLayoutManager;)V
    .locals 1

    .line 191
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getSpanLookup()Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getSpanLookup()Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    :cond_0
    return-void
.end method

.method public static synthetic updateGridColumnsAndSpacing$default(Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;IIIILjava/lang/Object;)V
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 301
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getScreenGapWidth()I

    move-result p3

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->updateGridColumnsAndSpacing(III)V

    return-void

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: updateGridColumnsAndSpacing"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method protected generateCoverCachingScrollListener()Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
    .locals 4

    .line 364
    new-instance v0, Lcom/amazon/kcp/library/fragments/CoverCachingRecyclerScrollListener;

    .line 365
    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    if-eqz v1, :cond_0

    check-cast v1, Lcom/amazon/kcp/library/AbstractRecyclerAdapter;

    .line 366
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    const-string v3, "Utils.getFactory()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getCoverCache()Lcom/amazon/kcp/cover/ICoverCacheManager;

    move-result-object v2

    const-string v3, "Utils.getFactory().coverCache"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 367
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getCoverDimension()Lcom/amazon/kindle/util/drawing/Dimension;

    move-result-object v3

    .line 364
    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/kcp/library/fragments/CoverCachingRecyclerScrollListener;-><init>(Lcom/amazon/kcp/library/AbstractRecyclerAdapter;Lcom/amazon/kcp/cover/ICoverCacheManager;Lcom/amazon/kindle/util/drawing/Dimension;)V

    return-object v0

    .line 365
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "null cannot be cast to non-null type com.amazon.kcp.library.AbstractRecyclerAdapter<*, *>"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final generateDefaultGridColumnCount()I
    .locals 2

    .line 285
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/librarymodule/R$integer;->ruby_lib_grid_default_column_count:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method protected final getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "*>;"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-object v0
.end method

.method protected final getAppWidth()I
    .locals 3

    .line 332
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->getAvailableWindowDimensions(Landroid/content/Context;Z)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    return v0
.end method

.method protected final getColumnCountForScreenWidth(I)I
    .locals 3

    .line 336
    iget v0, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->defaultSidePadding:I

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v0, v0, v1

    .line 337
    iget v2, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->defaultHorizontalSpacing:I

    int-to-float v2, v2

    mul-float v2, v2, v1

    int-to-float p1, p1

    const/4 v1, 0x2

    int-to-float v1, v1

    mul-float v1, v1, v0

    sub-float/2addr p1, v1

    add-float/2addr p1, v2

    .line 338
    iget v0, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->gridItemWidth:I

    int-to-float v0, v0

    add-float/2addr v0, v2

    div-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p1, v0

    return p1
.end method

.method protected final getCoverDimension()Lcom/amazon/kindle/util/drawing/Dimension;
    .locals 3

    .line 357
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->recyclerLayoutType:Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;

    sget-object v1, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 359
    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->gridCoverDimension:Lcom/amazon/kindle/util/drawing/Dimension;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const-string v0, "gridCoverDimension"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    .line 358
    :cond_3
    new-instance v0, Lcom/amazon/kindle/util/drawing/Dimension;

    sget v1, Lcom/amazon/kcp/cover/LibraryCoverFactory;->LIST_COVER_WIDTH:I

    sget v2, Lcom/amazon/kcp/cover/LibraryCoverFactory;->LIST_COVER_HEIGHT:I

    invoke-direct {v0, v1, v2}, Lcom/amazon/kindle/util/drawing/Dimension;-><init>(II)V

    :goto_1
    return-object v0
.end method

.method protected final getCurrentColumnCount()I
    .locals 1

    .line 105
    iget v0, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->currentColumnCount:I

    return v0
.end method

.method protected final getDefaultColumnCount()I
    .locals 1

    .line 104
    iget v0, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->defaultColumnCount:I

    return v0
.end method

.method protected final getGridItemHeight()I
    .locals 1

    .line 94
    iget v0, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->gridItemHeight:I

    return v0
.end method

.method protected final getGridItemWidth()I
    .locals 1

    .line 95
    iget v0, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->gridItemWidth:I

    return v0
.end method

.method protected final getGridRowPadding()I
    .locals 1

    .line 96
    iget v0, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->gridRowPadding:I

    return v0
.end method

.method protected getPreferredAspectRatio()F
    .locals 1

    .line 346
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->isShowingNewsstand()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3fb00000    # 1.375f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3fc00000    # 1.5f

    :goto_0
    return v0
.end method

.method protected final getRecyclerLayoutType()Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->recyclerLayoutType:Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;

    return-object v0
.end method

.method public final getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method protected getScreenGapWidth()I
    .locals 3

    .line 323
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amazon/kindle/displaymask/DisplayMaskManager;->getInstance()Lcom/amazon/kindle/displaymask/DisplayMaskUtils;

    move-result-object v1

    const-string v2, "it"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Lcom/amazon/kindle/displaymask/DisplayMaskUtils;->getNonFunctionalAreas(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 324
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    invoke-static {v2}, Lcom/amazon/kindle/displaymask/DisplayMaskUtilsKt;->isVertical(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 325
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    :cond_1
    return v1
.end method

.method public getSpanLookup()Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->spanLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    return-object v0
.end method

.method public initGridDimens()V
    .locals 3

    .line 256
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 258
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "resources"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    sget v1, Lcom/amazon/kindle/librarymodule/R$dimen;->ruby_lib_grid_view_vertical_spacing:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->gridRowPadding:I

    .line 260
    sget v1, Lcom/amazon/kindle/librarymodule/R$dimen;->ruby_lib_grid_default_side_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->defaultSidePadding:I

    .line 261
    sget v1, Lcom/amazon/kindle/librarymodule/R$dimen;->ruby_lib_grid_default_horizontal_spacing:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->defaultHorizontalSpacing:I

    .line 262
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->generateDefaultGridColumnCount()I

    move-result v0

    iput v0, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->defaultColumnCount:I

    .line 263
    invoke-direct {p0, v0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->setGridDimens(I)V

    .line 264
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getCoverCache()Lcom/amazon/kcp/cover/ICoverCacheManager;

    move-result-object v0

    const-string v1, "Utils.getFactory().coverCache"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->cacheManager:Lcom/amazon/kcp/cover/ICoverCacheManager;

    const/4 v0, 0x0

    .line 265
    invoke-static {v0}, Lcom/amazon/kindle/cover/ImageSizes;->getInstance(Ljava/util/Map;)Lcom/amazon/kindle/cover/ImageSizes;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/cover/ImageSizes$Type;->SMALL:Lcom/amazon/kindle/cover/ImageSizes$Type;

    sget-object v2, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK:Lcom/amazon/kcp/library/models/BookType;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kindle/cover/ImageSizes;->getDimension(Lcom/amazon/kindle/cover/ImageSizes$Type;Lcom/amazon/kcp/library/models/BookType;)Lcom/amazon/kindle/util/drawing/Dimension;

    move-result-object v0

    const-string v1, "ImageSizes.getInstance(n\u2026SMALL, BookType.BT_EBOOK)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->gridCoverDimension:Lcom/amazon/kindle/util/drawing/Dimension;

    :cond_0
    return-void
.end method

.method protected itemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;
    .locals 3

    .line 371
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    sget v1, Lcom/amazon/kindle/librarymodule/R$bool;->enable_recyclerview_animations:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 372
    new-instance v0, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    const/4 v1, 0x0

    .line 374
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    const-wide/16 v1, 0x0

    .line 375
    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setChangeDuration(J)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public abstract newAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "*>;"
        }
    .end annotation
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 132
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 133
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->initGridDimens()V

    .line 134
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->configureRecycler()V

    .line 135
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    .line 136
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 137
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->generateCoverCachingScrollListener()Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 138
    new-instance v0, Lcom/amazon/kcp/library/fragments/InlineSearchRecyclerViewScrollListener;

    invoke-direct {v0, p1}, Lcom/amazon/kcp/library/fragments/InlineSearchRecyclerViewScrollListener;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    const-string/jumbo v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 227
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->recyclerLayoutType:Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;

    sget-object v0, Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;->GRID:Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;->DETAILS:Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;

    if-ne p1, v0, :cond_1

    .line 228
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->relayoutGrid()V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 120
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 121
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "ARG_RECYCLER_LAYOUT_TYPE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    instance-of v1, p1, Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, p1

    :goto_1
    check-cast v0, Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    sget-object v0, Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;->LIST:Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;

    :goto_2
    iput-object v0, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->recyclerLayoutType:Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;

    .line 122
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->newAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    sget p3, Lcom/amazon/kindle/librarymodule/R$layout;->recycler_fragment:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 127
    sget p2, Lcom/amazon/kindle/librarymodule/R$id;->recycler_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 206
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 207
    iput-object v1, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 208
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 0

    .line 219
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    .line 220
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result p1

    if-nez p1, :cond_0

    .line 221
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->resetCachePivot()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 212
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 213
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->resetCachePivot()V

    :cond_0
    return-void
.end method

.method protected final relayoutGrid()V
    .locals 2

    .line 233
    invoke-static {}, Lcom/amazon/kcp/debug/PinchToZoomDebugUtils;->isPinchToZoomEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->currentColumnCount:I

    if-lez v0, :cond_0

    .line 234
    invoke-direct {p0, v0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->setGridDimens(I)V

    goto :goto_0

    .line 236
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->initGridDimens()V

    .line 238
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->updateGridColumnsAndSpacing()V

    .line 239
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_1
    return-void
.end method

.method public final scrollToTop()V
    .locals 4

    .line 386
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_3

    const/4 v1, 0x0

    .line 394
    invoke-virtual {v0, v1, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    .line 397
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    if-eqz v2, :cond_2

    check-cast v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v2

    const/4 v3, 0x5

    if-ge v2, v3, :cond_1

    .line 399
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    goto :goto_1

    :cond_1
    if-lez v2, :cond_3

    .line 403
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    goto :goto_1

    .line 397
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 406
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->resetCachePivot()V

    return-void

    .line 388
    :catch_0
    sget-object v0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->TAG:Ljava/lang/String;

    const-string v1, "failed to get the library view. This usually indicates that the library fragment is not fully initialized during application restart."

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected updateGridColumnsAndSpacing()V
    .locals 7

    .line 293
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 295
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getAppWidth()I

    move-result v2

    .line 296
    invoke-virtual {p0, v2}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getColumnCountForScreenWidth(I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    .line 297
    invoke-static/range {v1 .. v6}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->updateGridColumnsAndSpacing$default(Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;IIIILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected updateGridColumnsAndSpacing(III)V
    .locals 5

    .line 302
    iget v0, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->gridItemWidth:I

    mul-int v0, v0, p2

    sub-int v0, p1, v0

    .line 303
    iget v1, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->defaultSidePadding:I

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v2, p2, -0x1

    iget v3, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->defaultHorizontalSpacing:I

    mul-int v4, v2, v3

    add-int/2addr v1, v4

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    int-to-float v1, v3

    mul-float v1, v1, v0

    .line 307
    invoke-static {v1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v0

    .line 308
    iget v1, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->gridItemWidth:I

    mul-int v1, v1, p2

    sub-int/2addr p1, v1

    mul-int v2, v2, v0

    sub-int/2addr p1, v2

    div-int/lit8 p1, p1, 0x2

    div-int/lit8 p1, v0, 0x2

    .line 309
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    .line 310
    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->gridHorizontalSpacingDecoration:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    const/4 v2, 0x0

    const-string v3, "gridHorizontalSpacingDecoration"

    if-eqz v1, :cond_1

    if-eqz v1, :cond_0

    .line 311
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    goto :goto_0

    :cond_0
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 313
    :cond_1
    :goto_0
    new-instance v1, Lcom/amazon/kcp/library/GridHorizontalSpacingDecoration;

    invoke-direct {v1, v0, p3}, Lcom/amazon/kcp/library/GridHorizontalSpacingDecoration;-><init>(II)V

    iput-object v1, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->gridHorizontalSpacingDecoration:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    if-eqz v1, :cond_3

    .line 314
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 315
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p3

    if-eqz p3, :cond_2

    check-cast p3, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    .line 316
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/amazon/kindle/librarymodule/R$dimen;->lib_grid_recycler_view_horizontal_padding:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/librarymodule/R$dimen;->ruby_grid_top_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 317
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/librarymodule/R$dimen;->lib_grid_recycler_view_horizontal_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/librarymodule/R$dimen;->ruby_grid_list_bottom_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 316
    invoke-virtual {p1, p3, v0, v1, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 318
    iput p2, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->currentColumnCount:I

    return-void

    .line 315
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo p2, "null cannot be cast to non-null type androidx.recyclerview.widget.GridLayoutManager"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 314
    :cond_3
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method
