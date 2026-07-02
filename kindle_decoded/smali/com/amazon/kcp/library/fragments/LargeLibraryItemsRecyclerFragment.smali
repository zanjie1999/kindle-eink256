.class public Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;
.super Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;
.source "LargeLibraryItemsRecyclerFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment<",
        "Lcom/amazon/kindle/observablemodel/ItemID;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLargeLibraryItemsRecyclerFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LargeLibraryItemsRecyclerFragment.kt\ncom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment\n+ 2 UniqueDiscoveryUtils.kt\ncom/amazon/kcp/util/UniqueDiscoveryUtilsKt\n*L\n1#1,613:1\n7#2:614\n*E\n*S KotlinDebug\n*F\n+ 1 LargeLibraryItemsRecyclerFragment.kt\ncom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment\n*L\n49#1:614\n*E\n"
.end annotation


# static fields
.field private static final DETAILS_LOADER_ID:I = 0x8

.field private static final LIST_LOADER_ID:I = 0x7


# instance fields
.field private final TAG:Ljava/lang/String;

.field private _$_findViewCache:Ljava/util/HashMap;

.field private accessibilityGroupLayout:Landroid/view/View;

.field private adapterHelper:Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;

.field private azScrubber:Lcom/amazon/kcp/library/LibraryAZScrubber;

.field private azScrubberInitialized:Z

.field private azScrubberLetterTouched:Z

.field private azScrubberLogId:Ljava/lang/String;

.field private dataChangeObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

.field private filterStateManager:Lcom/amazon/kcp/library/LibraryFilterStateManager;

.field private fragmentLogId:Ljava/lang/String;

.field private final gridCoverProvider:Lcom/amazon/kcp/cover/GridCoverProvider;

.field private isAZScrubberListenerRegistered:Z

.field private libraryOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 47
    const-class v0, Lcom/amazon/kcp/cover/GridCoverProvider;

    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;-><init>()V

    .line 614
    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, Lcom/amazon/kcp/cover/GridCoverProvider;

    iput-object v1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->gridCoverProvider:Lcom/amazon/kcp/cover/GridCoverProvider;

    .line 69
    const-class v0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Utils.getTag(LargeLibrar\u2026clerFragment::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->TAG:Ljava/lang/String;

    .line 74
    new-instance v0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$libraryOnScrollListener$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$libraryOnScrollListener$1;-><init>(Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->libraryOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 110
    new-instance v0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$dataChangeObserver$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$dataChangeObserver$1;-><init>(Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->dataChangeObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    return-void

    .line 614
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Must implement discoverable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final synthetic access$alignAZscrubberOnAccessibilityChanged(Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;Z)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->alignAZscrubberOnAccessibilityChanged(Z)V

    return-void
.end method

.method public static final synthetic access$azScrubberAccessibilityFocusHandler(Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;Z)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->azScrubberAccessibilityFocusHandler(Z)V

    return-void
.end method

.method public static final synthetic access$getAdapterHelper$p(Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;)Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->adapterHelper:Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "adapterHelper"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getAzScrubber$p(Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;)Lcom/amazon/kcp/library/LibraryAZScrubber;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->azScrubber:Lcom/amazon/kcp/library/LibraryAZScrubber;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "azScrubber"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getAzScrubberInitialized$p(Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->azScrubberInitialized:Z

    return p0
.end method

.method public static final synthetic access$getGridCoverProvider$p(Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;)Lcom/amazon/kcp/cover/GridCoverProvider;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->gridCoverProvider:Lcom/amazon/kcp/cover/GridCoverProvider;

    return-object p0
.end method

.method public static final synthetic access$getTAG$p(Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;)Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method private final alignAZscrubberOnAccessibilityChanged(Z)V
    .locals 6

    const/4 v0, 0x0

    const-string v1, "azScrubber"

    if-eqz p1, :cond_3

    .line 244
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->azScrubber:Lcom/amazon/kcp/library/LibraryAZScrubber;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->isListWidthLimited()Z

    move-result v3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    invoke-virtual {p1, v2, v3, v4}, Lcom/amazon/kcp/library/LibraryAZScrubber;->setupAZScrubberOnAccessibilityOrOrientationChange(Landroid/content/Context;ZZ)V

    .line 245
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->azScrubber:Lcom/amazon/kcp/library/LibraryAZScrubber;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_4

    .line 246
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->azScrubber:Lcom/amazon/kcp/library/LibraryAZScrubber;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v5}, Lcom/amazon/kcp/library/LibraryAZScrubber;->setScrubberGroupViewVisibility(Z)V

    .line 247
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->disableScrubberAccessibility()V

    goto :goto_0

    .line 246
    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 245
    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 244
    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 250
    :cond_3
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->azScrubber:Lcom/amazon/kcp/library/LibraryAZScrubber;

    if-eqz p1, :cond_5

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/library/LibraryAZScrubber;->setScrubberGroupViewVisibility(Z)V

    :cond_4
    :goto_0
    return-void

    :cond_5
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0
.end method

.method private final azScrubberAccessibilityFocusHandler(Z)V
    .locals 5

    .line 93
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_5

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 94
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->getRecyclerAdapter()Lcom/amazon/kcp/library/FastRecyclerAdapter;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 96
    iget-object v2, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->azScrubber:Lcom/amazon/kcp/library/LibraryAZScrubber;

    const/4 v3, 0x0

    const-string v4, "azScrubber"

    if-eqz v2, :cond_2

    iget v2, v2, Lcom/amazon/kcp/library/BaseAZScrubber;->accessibilityContentPosition:I

    invoke-virtual {v1}, Lcom/amazon/kcp/library/FastRecyclerAdapter;->numHeaders()I

    move-result v1

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 97
    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->azScrubber:Lcom/amazon/kcp/library/LibraryAZScrubber;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    .line 98
    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->azScrubber:Lcom/amazon/kcp/library/LibraryAZScrubber;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/library/LibraryAZScrubber;->setScrubberGroupViewVisibility(Z)V

    .line 99
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->disableScrubberAccessibility()V

    .line 100
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    const/16 v1, 0x8

    .line 101
    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_0

    .line 98
    :cond_0
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 97
    :cond_1
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 96
    :cond_2
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_3
    :goto_0
    if-nez p1, :cond_4

    const/4 p1, 0x0

    .line 105
    iput-boolean p1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->azScrubberLetterTouched:Z

    :cond_4
    return-void

    .line 93
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo v0, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final disableScrubberAccessibility()V
    .locals 6

    .line 258
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->azScrubber:Lcom/amazon/kcp/library/LibraryAZScrubber;

    const/4 v1, 0x0

    const-string v2, "azScrubber"

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    .line 259
    iget-object v4, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->azScrubber:Lcom/amazon/kcp/library/LibraryAZScrubber;

    if-eqz v4, :cond_0

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const-string v5, "azScrubber.getChildAt(scrubberChild)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/view/View;->setImportantForAccessibility(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_1
    return-void

    .line 258
    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method private final initializeAdapterHelper()V
    .locals 2

    .line 608
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->adapterHelper:Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;

    if-nez v0, :cond_2

    .line 609
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->newAdapterHelper()Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->adapterHelper:Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;

    .line 610
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->getHelper()Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsFragmentHelper;

    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->adapterHelper:Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsFragmentHelper;->setAdapterHelper(Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;)V

    goto :goto_0

    :cond_0
    const-string v0, "adapterHelper"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "null cannot be cast to non-null type com.amazon.kcp.library.fragments.LargeLibraryItemsFragmentHelper"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    return-void
.end method

.method private final loaderId()I
    .locals 2

    .line 546
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getRecyclerLayoutType()Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$WhenMappings;->$EnumSwitchMapping$3:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    .line 549
    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 548
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->gridCoverProvider:Lcom/amazon/kcp/cover/GridCoverProvider;

    invoke-interface {v0}, Lcom/amazon/kcp/cover/GridCoverProvider;->getGridLoaderId()I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x7

    :goto_0
    return v0
.end method

.method private final modelGroupingSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 143
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isComicsBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amazon/kcp/debug/LargeLibraryDebugUtils;->isNarrativesEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    sget-object v0, Lcom/amazon/kcp/utils/ModelContentGroupings;->INSTANCE:Lcom/amazon/kcp/utils/ModelContentGroupings;

    invoke-virtual {v0}, Lcom/amazon/kcp/utils/ModelContentGroupings;->getCOMICS_NARRATIVES_GROUPING()Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    .line 147
    :cond_0
    sget-object v0, Lcom/amazon/kcp/utils/ModelContentGroupings;->INSTANCE:Lcom/amazon/kcp/utils/ModelContentGroupings;

    invoke-virtual {v0}, Lcom/amazon/kcp/utils/ModelContentGroupings;->getKINDLE_SERIES_GROUPING()Ljava/util/Set;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private final scrubberGroupViewOnTouchListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 270
    new-instance v0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$scrubberGroupViewOnTouchListener$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$scrubberGroupViewOnTouchListener$1;-><init>(Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;)V

    return-object v0
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method protected badgeSource()Lcom/amazon/kcp/cover/badge/BadgeSource;
    .locals 1

    .line 542
    sget-object v0, Lcom/amazon/kcp/cover/badge/BadgeSource;->LIBRARY:Lcom/amazon/kcp/cover/badge/BadgeSource;

    return-object v0
.end method

.method protected final filterStateManager()Lcom/amazon/kcp/library/LibraryFilterStateManager;
    .locals 3

    .line 419
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->filterStateManager:Lcom/amazon/kcp/library/LibraryFilterStateManager;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->getHelper()Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;

    move-result-object v0

    iget-object v0, v0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->handler:Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;->getLibraryContext()Lcom/amazon/kcp/library/LibraryContext;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/amazon/kcp/library/LibraryContext;->getFilterStateManager()Lcom/amazon/kcp/library/LibraryFilterStateManager;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 421
    const-class v1, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "null LibraryFragmentHandler or LibraryContext for library fragment"

    invoke-static {v1, v2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    :cond_2
    iput-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->filterStateManager:Lcom/amazon/kcp/library/LibraryFilterStateManager;

    :goto_1
    return-object v0
.end method

.method public bridge synthetic generateCoverCachingScrollListener()Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->generateCoverCachingScrollListener()Lcom/amazon/kcp/library/fragments/CoverCachingRecyclerScrollListener;

    move-result-object v0

    return-object v0
.end method

.method protected generateCoverCachingScrollListener()Lcom/amazon/kcp/library/fragments/CoverCachingRecyclerScrollListener;
    .locals 4

    .line 600
    new-instance v0, Lcom/amazon/kcp/library/fragments/LargeCoverCachingRecyclerScrollListener;

    .line 601
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    if-eqz v1, :cond_0

    check-cast v1, Lcom/amazon/kcp/library/FastRecyclerAdapter;

    .line 602
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    const-string v3, "Utils.getFactory()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getCoverCache()Lcom/amazon/kcp/cover/ICoverCacheManager;

    move-result-object v2

    const-string v3, "Utils.getFactory().coverCache"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 603
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getCoverDimension()Lcom/amazon/kindle/util/drawing/Dimension;

    move-result-object v3

    .line 600
    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/kcp/library/fragments/LargeCoverCachingRecyclerScrollListener;-><init>(Lcom/amazon/kcp/library/AbstractRecyclerAdapter;Lcom/amazon/kcp/cover/ICoverCacheManager;Lcom/amazon/kindle/util/drawing/Dimension;)V

    return-object v0

    .line 601
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "null cannot be cast to non-null type com.amazon.kcp.library.FastRecyclerAdapter<com.amazon.kindle.observablemodel.ItemID>"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getAzScrubberLetterTouched()Z
    .locals 1

    .line 71
    iget-boolean v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->azScrubberLetterTouched:Z

    return v0
.end method

.method public getItemCountProvider()Lcom/amazon/kcp/library/fragments/ILibraryItemCountProvider;
    .locals 2

    .line 595
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->initializeAdapterHelper()V

    .line 596
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->adapterHelper:Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;

    if-nez v0, :cond_0

    const-string v1, "adapterHelper"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method protected initializeAZScrubber()V
    .locals 8

    .line 172
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "azScrubber"

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    .line 174
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v3, Lcom/amazon/kindle/librarymodule/R$layout;->lib_azscrubber_accessibility_group_view:I

    invoke-virtual {v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const-string v3, "layoutInflater.inflate(R\u2026ibility_group_view, null)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->accessibilityGroupLayout:Landroid/view/View;

    const-string v3, "accessibilityGroupLayout"

    if-eqz v0, :cond_6

    .line 175
    sget v4, Lcom/amazon/kindle/librarymodule/R$id;->lib_az_scrubber_accessibility:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 176
    new-instance v4, Lcom/amazon/kcp/library/LibraryAZScrubber;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->isListWidthLimited()Z

    move-result v6

    iget-object v7, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->accessibilityGroupLayout:Landroid/view/View;

    if-eqz v7, :cond_5

    invoke-direct {v4, v5, v6, v7, v0}, Lcom/amazon/kcp/library/LibraryAZScrubber;-><init>(Landroid/content/Context;ZLandroid/view/View;Landroid/widget/ImageButton;)V

    iput-object v4, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->azScrubber:Lcom/amazon/kcp/library/LibraryAZScrubber;

    if-eqz v4, :cond_4

    .line 177
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->lib_az_scrubber:I

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setId(I)V

    const/4 v0, 0x1

    .line 178
    iput-boolean v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->azScrubberInitialized:Z

    .line 179
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->azScrubber:Lcom/amazon/kcp/library/LibraryAZScrubber;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Integer.toHexString(azScrubber.hashCode())"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->azScrubberLogId:Ljava/lang/String;

    .line 180
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Integer.toHexString(this\u2026yclerFragment.hashCode())"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->fragmentLogId:Ljava/lang/String;

    .line 182
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AZScrubber: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->azScrubberLogId:Ljava/lang/String;

    if-eqz v4, :cond_2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " initialized for Library Fragment : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->fragmentLogId:Ljava/lang/String;

    if-eqz v4, :cond_1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " with Layout: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getRecyclerLayoutType()Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->setAZScrubberListeners()V

    .line 187
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->azScrubber:Lcom/amazon/kcp/library/LibraryAZScrubber;

    if-eqz v0, :cond_0

    new-instance v3, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$initializeAZScrubber$1;

    invoke-direct {v3, p0}, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$initializeAZScrubber$1;-><init>(Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;)V

    invoke-virtual {v0, v3}, Lcom/amazon/kcp/library/BaseAZScrubber;->setOnTouchListener(Lcom/amazon/kcp/library/BaseAZScrubber$ScrubberOnTouchListener;)V

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_1
    const-string v0, "fragmentLogId"

    .line 182
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_2
    const-string v0, "azScrubberLogId"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 179
    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 177
    :cond_4
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 176
    :cond_5
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 175
    :cond_6
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 206
    :cond_7
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/amazon/kcp/library/CollectionItemsActivity;

    if-nez v0, :cond_12

    .line 207
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget v3, Lcom/amazon/kindle/librarymodule/R$id;->library_screenlet_coordinator_parent:I

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 208
    sget v3, Lcom/amazon/kindle/librarymodule/R$id;->lib_az_scrubber_parent:I

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 209
    iget-object v3, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->azScrubber:Lcom/amazon/kcp/library/LibraryAZScrubber;

    if-eqz v3, :cond_11

    iput-object v0, v3, Lcom/amazon/kcp/library/BaseAZScrubber;->parentContainerView:Landroid/view/View;

    if-eqz v3, :cond_10

    .line 210
    invoke-virtual {v3}, Lcom/amazon/kcp/library/LibraryAZScrubber;->setupScrubberParentLayout()V

    .line 211
    iget-object v3, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->azScrubber:Lcom/amazon/kcp/library/LibraryAZScrubber;

    if-eqz v3, :cond_f

    iget-object v3, v3, Lcom/amazon/kcp/library/BaseAZScrubber;->accessibilityGroupView:Landroid/widget/ImageButton;

    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->scrubberGroupViewOnTouchListener()Landroid/view/View$OnClickListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    iget-object v3, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->azScrubber:Lcom/amazon/kcp/library/LibraryAZScrubber;

    if-eqz v3, :cond_e

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 213
    iget-object v3, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->azScrubber:Lcom/amazon/kcp/library/LibraryAZScrubber;

    if-eqz v3, :cond_d

    iget-object v3, v3, Lcom/amazon/kcp/library/BaseAZScrubber;->accessibilityGroupLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 215
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_8

    const-string v3, "accessibility"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_8
    move-object v0, v2

    :goto_1
    instance-of v3, v0, Landroid/view/accessibility/AccessibilityManager;

    if-nez v3, :cond_9

    move-object v0, v2

    :cond_9
    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_a

    .line 216
    new-instance v3, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$initializeAZScrubber$2;

    invoke-direct {v3, p0}, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$initializeAZScrubber$2;-><init>(Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;)V

    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityManager;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    .line 219
    :cond_a
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isTouchExplorationEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->alignAZscrubberOnAccessibilityChanged(Z)V

    .line 227
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFOSDevice()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 228
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->azScrubber:Lcom/amazon/kcp/library/LibraryAZScrubber;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_b

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const v1, 0x800015

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_2

    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 213
    :cond_d
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 212
    :cond_e
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 211
    :cond_f
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 210
    :cond_10
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 209
    :cond_11
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_12
    :goto_2
    return-void
.end method

.method public final isAZScrubberListenerRegistered()Z
    .locals 1

    .line 58
    iget-boolean v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->isAZScrubberListenerRegistered:Z

    return v0
.end method

.method protected libraryFilter()Lcom/amazon/kcp/library/ILibraryFilter;
    .locals 2

    .line 415
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->getHelper()Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;

    move-result-object v0

    iget-object v0, v0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->handler:Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;->getLibraryContext()Lcom/amazon/kcp/library/LibraryContext;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kcp/library/LibraryContext;->getLibraryFilter()Lcom/amazon/kcp/library/ILibraryFilter;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "null LibraryFragmentHandler or LibraryContext for library fragment"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic newAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->newAdapter()Lcom/amazon/kcp/library/FastRecyclerAdapter;

    move-result-object v0

    return-object v0
.end method

.method public newAdapter()Lcom/amazon/kcp/library/FastRecyclerAdapter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/kcp/library/FastRecyclerAdapter<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ">;"
        }
    .end annotation

    .line 433
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->initializeAdapterHelper()V

    .line 434
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->adapterHelper:Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v3, "activity!!"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->getHelper()Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->getMultiChoiceListener()Landroid/widget/AbsListView$MultiChoiceModeListener;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1;-><init>(Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;Landroid/app/Activity;Landroid/view/ActionMode$Callback;)V

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->init(Lcom/amazon/kcp/library/FastRecyclerAdapter;)Lcom/amazon/kcp/library/FastRecyclerAdapter;

    return-object v1

    :cond_0
    const-string v0, "adapterHelper"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method protected newAdapterHelper()Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;
    .locals 10

    .line 410
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->getHelper()Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/amazon/kcp/library/fragments/AbstractLargeLibraryFragmentHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->filterStateManager()Lcom/amazon/kcp/library/LibraryFilterStateManager;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/library/fragments/AbstractLargeLibraryFragmentHelper;->getAdapterHelperSettings(Landroid/app/Activity;Lcom/amazon/kcp/library/LibraryFilterStateManager;)Lcom/amazon/kcp/utils/AdapterHelperSettings;

    move-result-object v0

    .line 411
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->getHelper()Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;

    move-result-object v1

    iget-object v2, v1, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->handler:Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;

    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->libraryFilter()Lcom/amazon/kcp/library/ILibraryFilter;

    move-result-object v3

    invoke-virtual {v0}, Lcom/amazon/kcp/utils/AdapterHelperSettings;->getSelectedFilterIds()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v0}, Lcom/amazon/kcp/utils/AdapterHelperSettings;->getSortType()Lcom/amazon/kcp/library/LibrarySortType;

    move-result-object v5

    invoke-virtual {v0}, Lcom/amazon/kcp/utils/AdapterHelperSettings;->getGroupType()Lcom/amazon/kindle/krx/library/LibraryGroupType;

    move-result-object v6

    invoke-virtual {v0}, Lcom/amazon/kcp/utils/AdapterHelperSettings;->getGrouping()Ljava/util/Set;

    move-result-object v7

    invoke-virtual {v0}, Lcom/amazon/kcp/utils/AdapterHelperSettings;->getParent()Lcom/amazon/kindle/observablemodel/ItemID;

    move-result-object v8

    invoke-virtual {v0}, Lcom/amazon/kcp/utils/AdapterHelperSettings;->getCurrentUserId()Ljava/lang/String;

    move-result-object v9

    invoke-static/range {v2 .. v9}, Lcom/amazon/kcp/integrator/LargeLibraryUtilsKt;->adapterHelperForSortAndFilter(Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;Lcom/amazon/kcp/library/ILibraryFilter;Ljava/util/Set;Lcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kindle/krx/library/LibraryGroupType;Ljava/util/Set;Lcom/amazon/kindle/observablemodel/ItemID;Ljava/lang/String;)Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;

    move-result-object v0

    return-object v0

    .line 410
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "null cannot be cast to non-null type com.amazon.kcp.library.fragments.AbstractLargeLibraryFragmentHelper"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected newHelper()Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ">;"
        }
    .end annotation

    .line 428
    new-instance v6, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsFragmentHelper;

    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->loaderId()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsFragmentHelper;-><init>(Landroidx/fragment/app/Fragment;Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;IZZ)V

    return-object v6
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    const-string/jumbo v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 353
    invoke-super {p0, p1}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 354
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->setupAZScrubberOnConfigurationChanged()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 151
    invoke-super {p0, p1}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->onCreate(Landroid/os/Bundle;)V

    .line 153
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->adapterHelper:Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->getHelper()Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/amazon/kcp/library/fragments/SortChangeOwner;

    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->filterStateManager()Lcom/amazon/kcp/library/LibraryFilterStateManager;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->onCreate(Lcom/amazon/kcp/library/fragments/SortChangeOwner;Lcom/amazon/kcp/library/LibraryFilterStateManager;)V

    .line 154
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void

    .line 153
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo v0, "null cannot be cast to non-null type com.amazon.kcp.library.fragments.SortChangeOwner"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const-string p1, "adapterHelper"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    sget-object v0, Lcom/amazon/kcp/debug/LibraryAZScrubberDebugUtils;->INSTANCE:Lcom/amazon/kcp/debug/LibraryAZScrubberDebugUtils;

    invoke-virtual {v0}, Lcom/amazon/kcp/debug/LibraryAZScrubberDebugUtils;->isLibraryAZScrubberEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    invoke-super {p0, p1, p2, p3}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/widget/FrameLayout;

    .line 161
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->initializeAZScrubber()V

    goto :goto_0

    .line 160
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo p2, "null cannot be cast to non-null type android.widget.FrameLayout"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 164
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public onDestroy()V
    .locals 4

    .line 403
    invoke-super {p0}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->onDestroy()V

    .line 404
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->adapterHelper:Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->getHelper()Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;

    move-result-object v2

    if-eqz v2, :cond_0

    check-cast v2, Lcom/amazon/kcp/library/fragments/SortChangeOwner;

    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->filterStateManager()Lcom/amazon/kcp/library/LibraryFilterStateManager;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->onDestroy(Lcom/amazon/kcp/library/fragments/SortChangeOwner;Lcom/amazon/kcp/library/LibraryFilterStateManager;)V

    .line 405
    iput-object v1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->filterStateManager:Lcom/amazon/kcp/library/LibraryFilterStateManager;

    .line 406
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    return-void

    .line 404
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "null cannot be cast to non-null type com.amazon.kcp.library.fragments.SortChangeOwner"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v0, "adapterHelper"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public onDestroyView()V
    .locals 0

    .line 398
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->removeAZScrubberListeners()V

    .line 399
    invoke-super {p0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->onDestroyView()V

    .line 400
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public final onGroupContentSettingChangeEvent(Lcom/amazon/kcp/groupcontent/GroupContentSettingChangeEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 576
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->onSeriesContentGroupedChanged()V

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 2

    .line 554
    invoke-super {p0, p1}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->onHiddenChanged(Z)V

    .line 555
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getRecyclerLayoutType()Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;->GRID:Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getRecyclerLayoutType()Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;->DETAILS:Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;

    if-ne v0, v1, :cond_1

    :cond_0
    if-nez p1, :cond_1

    .line 558
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/librarymodule/R$bool;->periodicals_supported:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->generateDefaultGridColumnCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getDefaultColumnCount()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 559
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->relayoutGrid()V

    const/4 v0, 0x0

    .line 561
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->swapList(Ljava/util/List;)Ljava/util/List;

    :cond_1
    if-eqz p1, :cond_2

    .line 566
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->removeAZScrubberListeners()V

    goto :goto_0

    .line 568
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->setAZScrubberListeners()V

    .line 569
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->refreshAZScrubber()V

    :goto_0
    return-void
.end method

.method protected onSeriesContentGroupedChanged()V
    .locals 6

    .line 582
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->getHelper()Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;

    move-result-object v0

    if-eqz v0, :cond_8

    check-cast v0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsFragmentHelper;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/AbstractLargeLibraryFragmentHelper;->backIssueParentAsin()Ljava/lang/String;

    move-result-object v0

    .line 583
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->getHelper()Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsFragmentHelper;

    invoke-virtual {v1}, Lcom/amazon/kcp/library/fragments/AbstractLargeLibraryFragmentHelper;->collection()Lcom/amazon/kindle/collections/dto/ICollection;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 584
    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_7

    if-eqz v1, :cond_2

    goto :goto_3

    .line 586
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    const-string v1, "UserSettingsController.getInstance(activity)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->isSeriesContentGrouped()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 587
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->modelGroupingSet()Ljava/util/Set;

    move-result-object v0

    goto :goto_2

    .line 588
    :cond_3
    sget-object v0, Lcom/amazon/kcp/utils/ModelContentGroupings;->INSTANCE:Lcom/amazon/kcp/utils/ModelContentGroupings;

    invoke-virtual {v0}, Lcom/amazon/kcp/utils/ModelContentGroupings;->getNON_SERIES_GROUPING()Ljava/util/Set;

    move-result-object v0

    .line 589
    :goto_2
    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->adapterHelper:Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;

    if-eqz v1, :cond_7

    const/4 v2, 0x0

    const-string v3, "adapterHelper"

    if-eqz v1, :cond_6

    if-eqz v1, :cond_5

    .line 590
    invoke-virtual {v1}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->getModelFilter()Lcom/amazon/kindle/observablemodel/ModelFilter;

    move-result-object v4

    iget-object v5, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->adapterHelper:Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->getModelContent()Lcom/amazon/kindle/observablemodel/ModelContent;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/amazon/kindle/observablemodel/ModelContent;->modelContentWithGroupingSet(Ljava/util/Set;)Lcom/amazon/kindle/observablemodel/ModelContent;

    move-result-object v0

    const-string v2, "adapterHelper.getModelCo\u2026WithGroupingSet(grouping)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v4, v0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->setModelFilterAndContent(Lcom/amazon/kindle/observablemodel/ModelFilter;Lcom/amazon/kindle/observablemodel/ModelContent;)V

    goto :goto_3

    :cond_4
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_5
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_6
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_7
    :goto_3
    return-void

    .line 582
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "null cannot be cast to non-null type com.amazon.kcp.library.fragments.LargeLibraryItemsFragmentHelper"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected refreshAZScrubber()V
    .locals 12

    .line 344
    sget-object v0, Lcom/amazon/kcp/debug/LibraryAZScrubberDebugUtils;->INSTANCE:Lcom/amazon/kcp/debug/LibraryAZScrubberDebugUtils;

    invoke-virtual {v0}, Lcom/amazon/kcp/debug/LibraryAZScrubberDebugUtils;->isLibraryAZScrubberEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->azScrubberInitialized:Z

    if-eqz v0, :cond_6

    .line 345
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "refreshScrubber called for AZScrubber: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->azScrubberLogId:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for Library Fragment : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->fragmentLogId:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with Layout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getRecyclerLayoutType()Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->firstVisiblePosition()I

    move-result v10

    .line 347
    iget-object v4, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->azScrubber:Lcom/amazon/kcp/library/LibraryAZScrubber;

    if-eqz v4, :cond_3

    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->adapterHelper:Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;

    const-string v1, "adapterHelper"

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->getItemSectionItemCounts()[I

    move-result-object v5

    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->adapterHelper:Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->getItemIndexTitles()Ljava/util/List;

    move-result-object v6

    .line 348
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->adapterHelper:Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->itemCount()I

    move-result v7

    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->getHelper()Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;

    move-result-object v0

    iget-object v8, v0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->sortType:Lcom/amazon/kcp/library/LibrarySortType;

    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getRecyclerLayoutType()Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;

    move-result-object v9

    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->isListWidthLimited()Z

    move-result v11

    .line 347
    invoke-virtual/range {v4 .. v11}, Lcom/amazon/kcp/library/LibraryAZScrubber;->refreshScrubber([ILjava/util/List;ILcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;IZ)V

    goto :goto_0

    .line 348
    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 347
    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_3
    const-string v0, "azScrubber"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_4
    const-string v0, "fragmentLogId"

    .line 345
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_5
    const-string v0, "azScrubberLogId"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_6
    :goto_0
    return-void
.end method

.method public removeAZScrubberListeners()V
    .locals 4

    .line 385
    sget-object v0, Lcom/amazon/kcp/debug/LibraryAZScrubberDebugUtils;->INSTANCE:Lcom/amazon/kcp/debug/LibraryAZScrubberDebugUtils;

    invoke-virtual {v0}, Lcom/amazon/kcp/debug/LibraryAZScrubberDebugUtils;->isLibraryAZScrubberEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->isAZScrubberListenerRegistered:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->azScrubberInitialized:Z

    if-eqz v0, :cond_6

    .line 386
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Listeners removed for AZScrubber: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->azScrubberLogId:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for Library Fragment : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->fragmentLogId:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with Layout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getRecyclerLayoutType()Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->azScrubber:Lcom/amazon/kcp/library/LibraryAZScrubber;

    const-string v1, "azScrubber"

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/amazon/kcp/library/BaseAZScrubber;->setScrubberVisibility(Z)V

    .line 388
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 389
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->azScrubber:Lcom/amazon/kcp/library/LibraryAZScrubber;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Lcom/amazon/kcp/library/LibraryAZScrubber;->setScrubberGroupViewVisibility(Z)V

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 391
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->libraryOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 392
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->dataChangeObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 393
    :cond_2
    iput-boolean v2, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->isAZScrubberListenerRegistered:Z

    goto :goto_1

    .line 387
    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_4
    const-string v0, "fragmentLogId"

    .line 386
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_5
    const-string v0, "azScrubberLogId"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_6
    :goto_1
    return-void
.end method

.method public setAZScrubberListeners()V
    .locals 4

    .line 322
    sget-object v0, Lcom/amazon/kcp/debug/LibraryAZScrubberDebugUtils;->INSTANCE:Lcom/amazon/kcp/debug/LibraryAZScrubberDebugUtils;

    invoke-virtual {v0}, Lcom/amazon/kcp/debug/LibraryAZScrubberDebugUtils;->isLibraryAZScrubberEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->isAZScrubberListenerRegistered:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->azScrubberInitialized:Z

    if-eqz v0, :cond_6

    .line 325
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Listeners set for AZScrubber: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->azScrubberLogId:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for Library Fragment : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->fragmentLogId:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with Layout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getRecyclerLayoutType()Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->libraryOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 330
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isTouchExplorationEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->azScrubber:Lcom/amazon/kcp/library/LibraryAZScrubber;

    const-string v2, "azScrubber"

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 331
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->azScrubber:Lcom/amazon/kcp/library/LibraryAZScrubber;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/LibraryAZScrubber;->setScrubberGroupViewVisibility(Z)V

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 330
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 335
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->dataChangeObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 336
    :cond_3
    iput-boolean v1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->isAZScrubberListenerRegistered:Z

    goto :goto_1

    :cond_4
    const-string v0, "fragmentLogId"

    .line 325
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_5
    const-string v0, "azScrubberLogId"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_6
    :goto_1
    return-void
.end method

.method public final setAzScrubberLetterTouched(Z)V
    .locals 0

    .line 71
    iput-boolean p1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->azScrubberLetterTouched:Z

    return-void
.end method

.method public final setupAZScrubberOnConfigurationChanged()V
    .locals 11

    .line 364
    sget-object v0, Lcom/amazon/kcp/debug/LibraryAZScrubberDebugUtils;->INSTANCE:Lcom/amazon/kcp/debug/LibraryAZScrubberDebugUtils;

    invoke-virtual {v0}, Lcom/amazon/kcp/debug/LibraryAZScrubberDebugUtils;->isLibraryAZScrubberEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->azScrubberInitialized:Z

    if-eqz v0, :cond_b

    .line 365
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->azScrubber:Lcom/amazon/kcp/library/LibraryAZScrubber;

    const-string v1, "azScrubber"

    const/4 v2, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/amazon/kcp/library/LibraryAZScrubber;->isASupportedLocale()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 366
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onConfigurationChanged called for AZScrubber: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->azScrubberLogId:Ljava/lang/String;

    if-eqz v4, :cond_7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " for Library Fragment : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->fragmentLogId:Ljava/lang/String;

    if-eqz v4, :cond_6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " with Layout: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getRecyclerLayoutType()Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->azScrubber:Lcom/amazon/kcp/library/LibraryAZScrubber;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->isListWidthLimited()Z

    move-result v4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v3, v4, v5}, Lcom/amazon/kcp/library/LibraryAZScrubber;->setupAZScrubberOnAccessibilityOrOrientationChange(Landroid/content/Context;ZZ)V

    .line 368
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->azScrubber:Lcom/amazon/kcp/library/LibraryAZScrubber;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_b

    .line 369
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->firstVisiblePosition()I

    move-result v9

    .line 370
    iget-object v3, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->azScrubber:Lcom/amazon/kcp/library/LibraryAZScrubber;

    if-eqz v3, :cond_3

    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->adapterHelper:Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;

    const-string v1, "adapterHelper"

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->getItemSectionItemCounts()[I

    move-result-object v4

    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->adapterHelper:Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->getItemIndexTitles()Ljava/util/List;

    move-result-object v5

    .line 371
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->adapterHelper:Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->itemCount()I

    move-result v6

    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->getHelper()Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;

    move-result-object v0

    iget-object v7, v0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->sortType:Lcom/amazon/kcp/library/LibrarySortType;

    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getRecyclerLayoutType()Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;

    move-result-object v8

    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->isListWidthLimited()Z

    move-result v10

    .line 370
    invoke-virtual/range {v3 .. v10}, Lcom/amazon/kcp/library/LibraryAZScrubber;->refreshScrubber([ILjava/util/List;ILcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;IZ)V

    goto :goto_0

    .line 371
    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 370
    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 368
    :cond_4
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 367
    :cond_5
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_6
    const-string v0, "fragmentLogId"

    .line 366
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_7
    const-string v0, "azScrubberLogId"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 374
    :cond_8
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->azScrubber:Lcom/amazon/kcp/library/LibraryAZScrubber;

    if-eqz v0, :cond_9

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/BaseAZScrubber;->setScrubberVisibility(Z)V

    goto :goto_0

    :cond_9
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 365
    :cond_a
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_b
    :goto_0
    return-void
.end method

.method public final updateScrubberOnScrollStateChanged(ZI)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    const/4 p1, 0x1

    :cond_0
    if-nez p2, :cond_1

    const/4 p1, 0x0

    :cond_1
    return p1
.end method

.method public final updateScrubberOnScrolled(Z)V
    .locals 3

    .line 293
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->firstVisiblePosition()I

    move-result v0

    if-ltz v0, :cond_3

    if-eqz p1, :cond_3

    .line 294
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->azScrubber:Lcom/amazon/kcp/library/LibraryAZScrubber;

    const/4 v1, 0x0

    const-string v2, "azScrubber"

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_3

    .line 295
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->azScrubber:Lcom/amazon/kcp/library/LibraryAZScrubber;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/amazon/kcp/library/BaseAZScrubber;->resetLastHighlightedLetter()V

    .line 296
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->azScrubber:Lcom/amazon/kcp/library/LibraryAZScrubber;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/library/BaseAZScrubber;->setHighlightedLetter(I)V

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 295
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 294
    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_0
    return-void
.end method
