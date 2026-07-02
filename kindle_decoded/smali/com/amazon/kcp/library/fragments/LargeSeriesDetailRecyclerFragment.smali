.class public final Lcom/amazon/kcp/library/fragments/LargeSeriesDetailRecyclerFragment;
.super Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;
.source "LargeSeriesDetailRecyclerFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/fragments/LargeSeriesDetailRecyclerFragment$Companion;
    }
.end annotation


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private final groupId$delegate:Lkotlin/Lazy;

.field private final headerAdapterObserver:Lcom/amazon/kcp/library/fragments/LargeSeriesDetailRecyclerFragment$headerAdapterObserver$1;

.field private final seriesDetailHelper:Lcom/amazon/kcp/library/SeriesDetailHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kcp/library/fragments/LargeSeriesDetailRecyclerFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/library/fragments/LargeSeriesDetailRecyclerFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 11
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;-><init>()V

    .line 17
    new-instance v0, Lcom/amazon/kcp/library/SeriesDetailHelper;

    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->getLibraryFragmentClientProxy()Lcom/amazon/kcp/library/fragments/LibraryFragmentClientProxy;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/kcp/library/SeriesDetailHelper;-><init>(Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeSeriesDetailRecyclerFragment;->seriesDetailHelper:Lcom/amazon/kcp/library/SeriesDetailHelper;

    .line 18
    new-instance v0, Lcom/amazon/kcp/library/fragments/LargeSeriesDetailRecyclerFragment$headerAdapterObserver$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/fragments/LargeSeriesDetailRecyclerFragment$headerAdapterObserver$1;-><init>(Lcom/amazon/kcp/library/fragments/LargeSeriesDetailRecyclerFragment;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeSeriesDetailRecyclerFragment;->headerAdapterObserver:Lcom/amazon/kcp/library/fragments/LargeSeriesDetailRecyclerFragment$headerAdapterObserver$1;

    .line 28
    new-instance v0, Lcom/amazon/kcp/library/fragments/LargeSeriesDetailRecyclerFragment$groupId$2;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/fragments/LargeSeriesDetailRecyclerFragment$groupId$2;-><init>(Lcom/amazon/kcp/library/fragments/LargeSeriesDetailRecyclerFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeSeriesDetailRecyclerFragment;->groupId$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final addHeader()V
    .locals 6

    .line 77
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->getRecyclerAdapter()Lcom/amazon/kcp/library/FastRecyclerAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 78
    new-instance v1, Lcom/amazon/kcp/library/fragments/SeriesDetailHeader;

    .line 79
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-string/jumbo v3, "requireActivity()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/LargeSeriesDetailRecyclerFragment;->getGroupId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, ""

    .line 81
    :goto_0
    iget-object v4, p0, Lcom/amazon/kcp/library/fragments/LargeSeriesDetailRecyclerFragment;->seriesDetailHelper:Lcom/amazon/kcp/library/SeriesDetailHelper;

    .line 82
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getRecyclerLayoutType()Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;

    move-result-object v5

    .line 78
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/amazon/kcp/library/fragments/SeriesDetailHeader;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/amazon/kcp/library/SeriesDetailHelper;Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;)V

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/FastRecyclerAdapter;->addHeader(Lcom/amazon/kcp/library/RecyclerHeader;)V

    .line 84
    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/LargeSeriesDetailRecyclerFragment;->headerAdapterObserver:Lcom/amazon/kcp/library/fragments/LargeSeriesDetailRecyclerFragment$headerAdapterObserver$1;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    :cond_1
    return-void
.end method

.method private final getGroupId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeSeriesDetailRecyclerFragment;->groupId$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeSeriesDetailRecyclerFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method protected badgeSource()Lcom/amazon/kcp/cover/badge/BadgeSource;
    .locals 1

    .line 69
    sget-object v0, Lcom/amazon/kcp/cover/badge/BadgeSource;->SERIES_DETAIL:Lcom/amazon/kcp/cover/badge/BadgeSource;

    return-object v0
.end method

.method protected configureGrid()V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/LargeSeriesDetailRecyclerFragment;->addHeader()V

    .line 65
    invoke-super {p0}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->configureGrid()V

    return-void
.end method

.method protected configureList(Z)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/LargeSeriesDetailRecyclerFragment;->addHeader()V

    const/4 p1, 0x0

    .line 60
    invoke-super {p0, p1}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->configureList(Z)V

    return-void
.end method

.method protected initializeAZScrubber()V
    .locals 0

    return-void
.end method

.method protected newAdapterHelper()Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;
    .locals 9

    const/4 v0, 0x0

    .line 49
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v6

    .line 50
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/LargeSeriesDetailRecyclerFragment;->getGroupId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/observablemodel/ItemID;->seriesItemWithIdentifier(Ljava/lang/String;)Lcom/amazon/kindle/observablemodel/ItemID;

    move-result-object v7

    .line 51
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->filterStateManager()Lcom/amazon/kcp/library/LibraryFilterStateManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kcp/library/LibraryFilterStateManager;->getSelectedItemIds()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v0

    :goto_0
    move-object v3, v0

    .line 52
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->getHelper()Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;

    move-result-object v0

    iget-object v4, v0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->sortType:Lcom/amazon/kcp/library/LibrarySortType;

    .line 53
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->getHelper()Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;

    move-result-object v0

    iget-object v5, v0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->groupType:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    .line 55
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->getHelper()Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;

    move-result-object v0

    iget-object v1, v0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->handler:Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;

    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->libraryFilter()Lcom/amazon/kcp/library/ILibraryFilter;

    move-result-object v2

    const-string/jumbo v0, "sortType"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "groupType"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v8, "Utils.getFactory()"

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    const-string v8, "Utils.getFactory().authenticationManager"

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->getAccountInfo()Lcom/amazon/kindle/services/authentication/IAccountInfo;

    move-result-object v0

    const-string v8, "Utils.getFactory().authe\u2026cationManager.accountInfo"

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/services/authentication/IAccountInfo;->getId()Ljava/lang/String;

    move-result-object v8

    const-string v0, "Utils.getFactory().authe\u2026ionManager.accountInfo.id"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {v1 .. v8}, Lcom/amazon/kcp/integrator/LargeLibraryUtilsKt;->adapterHelperForSortAndFilter(Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;Lcom/amazon/kcp/library/ILibraryFilter;Ljava/util/Set;Lcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kindle/krx/library/LibraryGroupType;Ljava/util/Set;Lcom/amazon/kindle/observablemodel/ItemID;Ljava/lang/String;)Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;

    move-result-object v0

    return-object v0
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LargeSeriesDetailRecyclerFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method protected onSeriesContentGroupedChanged()V
    .locals 0

    return-void
.end method

.method protected refreshAZScrubber()V
    .locals 0

    return-void
.end method

.method public removeAZScrubberListeners()V
    .locals 0

    return-void
.end method

.method public setAZScrubberListeners()V
    .locals 0

    return-void
.end method
