.class public Lcom/amazon/kcp/library/fragments/SeriesDetailFragmentHandler;
.super Lcom/amazon/kcp/library/fragments/FilterFragmentHandler;
.source "SeriesDetailFragmentHandler.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSeriesDetailFragmentHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SeriesDetailFragmentHandler.kt\ncom/amazon/kcp/library/fragments/SeriesDetailFragmentHandler\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,110:1\n1819#2,2:111\n*E\n*S KotlinDebug\n*F\n+ 1 SeriesDetailFragmentHandler.kt\ncom/amazon/kcp/library/fragments/SeriesDetailFragmentHandler\n*L\n52#1,2:111\n*E\n"
.end annotation


# instance fields
.field private final fragmentTagSuffix:Ljava/lang/String;

.field private groupTitle:Ljava/lang/String;

.field private isFalkorSeries:Z

.field private serializedGroupId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel;Lcom/amazon/kcp/library/fragments/ILibraryViewModeListener;Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;Ljava/lang/String;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "viewOptionsModel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "libraryFragmentClient"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragmentTagSuffix"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/kcp/library/fragments/FilterFragmentHandler;-><init>(Landroidx/fragment/app/FragmentActivity;Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel;Lcom/amazon/kcp/library/fragments/ILibraryViewModeListener;Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;)V

    iput-object p5, p0, Lcom/amazon/kcp/library/fragments/SeriesDetailFragmentHandler;->fragmentTagSuffix:Ljava/lang/String;

    return-void
.end method

.method private final getIsFalkorSeries(Ljava/lang/String;)Z
    .locals 2

    .line 68
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getGroupService()Lcom/amazon/kindle/content/IGroupService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kindle/content/IGroupService;->isGroupFalkorStory(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "Utils.getFactory().group\u2026rStory(serializedGroupId)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method private final setGroupId(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Landroidx/fragment/app/Fragment;

    .line 52
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->getListFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->getGridFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->getDetailsFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 111
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 53
    instance-of v2, v1, Lcom/amazon/kcp/library/fragments/SeriesDetailRecyclerFragment;

    if-nez v2, :cond_1

    const/4 v1, 0x0

    :cond_1
    check-cast v1, Lcom/amazon/kcp/library/fragments/SeriesDetailRecyclerFragment;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/amazon/kcp/library/fragments/SeriesDetailRecyclerFragment;->setGroupId(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public getAuxiliaryLibraryDisplayItemsProvider()Lcom/amazon/kcp/library/SeriesLibraryDisplayItemsProvider;
    .locals 2

    .line 98
    new-instance v0, Lcom/amazon/kcp/library/SeriesLibraryDisplayItemsProvider;

    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/SeriesDetailFragmentHandler;->serializedGroupId:Ljava/lang/String;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lcom/amazon/kcp/library/SeriesLibraryDisplayItemsProvider;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic getAuxiliaryLibraryDisplayItemsProvider()Lcom/amazon/kindle/krx/providers/IProvider;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/SeriesDetailFragmentHandler;->getAuxiliaryLibraryDisplayItemsProvider()Lcom/amazon/kcp/library/SeriesLibraryDisplayItemsProvider;

    move-result-object v0

    return-object v0
.end method

.method protected getDetailsFragmentTag()Ljava/lang/String;
    .locals 2

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SeriesDetailFragmentHandler_DETAILS_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/SeriesDetailFragmentHandler;->fragmentTagSuffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getGridFragmentTag()Ljava/lang/String;
    .locals 2

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SeriesDetailFragmentHandler_GRID_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/SeriesDetailFragmentHandler;->fragmentTagSuffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getListFragmentTag()Ljava/lang/String;
    .locals 2

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SeriesDetailFragmentHandler_LIST_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/SeriesDetailFragmentHandler;->fragmentTagSuffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedRefineMenuViewTypes()[Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;
    .locals 5

    .line 101
    invoke-static {}, Lcom/amazon/kcp/util/FalkorUtils;->isFalkorEnabled()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amazon/kcp/library/fragments/SeriesDetailFragmentHandler;->isFalkorSeries:Z

    if-eqz v0, :cond_0

    new-array v0, v1, [Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;

    .line 102
    sget-object v1, Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;->LIST:Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;

    aput-object v1, v0, v2

    goto :goto_0

    .line 103
    :cond_0
    sget-object v0, Lcom/amazon/kcp/debug/DetailsViewDebugUtils;->INSTANCE:Lcom/amazon/kcp/debug/DetailsViewDebugUtils;

    invoke-virtual {v0}, Lcom/amazon/kcp/debug/DetailsViewDebugUtils;->isDetailsViewEnabled()Z

    move-result v0

    const/4 v3, 0x2

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;

    .line 104
    sget-object v4, Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;->GRID:Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;

    aput-object v4, v0, v2

    sget-object v2, Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;->DETAILS:Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;

    aput-object v2, v0, v1

    sget-object v1, Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;->LIST:Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;

    aput-object v1, v0, v3

    goto :goto_0

    :cond_1
    new-array v0, v3, [Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;

    .line 106
    sget-object v3, Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;->GRID:Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;

    aput-object v3, v0, v2

    sget-object v2, Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;->LIST:Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;

    aput-object v2, v0, v1

    :goto_0
    return-object v0
.end method

.method public getTab()Lcom/amazon/kindle/krx/library/LibraryView;
    .locals 1

    .line 63
    sget-object v0, Lcom/amazon/kindle/krx/library/LibraryView;->SERIES:Lcom/amazon/kindle/krx/library/LibraryView;

    return-object v0
.end method

.method public getTitleString()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/SeriesDetailFragmentHandler;->groupTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getUserSelectedViewType()Lcom/amazon/kindle/krx/library/LibraryViewType;
    .locals 1

    .line 78
    invoke-static {}, Lcom/amazon/kcp/util/FalkorUtils;->isFalkorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amazon/kcp/library/fragments/SeriesDetailFragmentHandler;->isFalkorSeries:Z

    if-eqz v0, :cond_0

    .line 79
    sget-object v0, Lcom/amazon/kindle/krx/library/LibraryViewType;->LIST:Lcom/amazon/kindle/krx/library/LibraryViewType;

    return-object v0

    .line 81
    :cond_0
    invoke-super {p0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->getUserSelectedViewType()Lcom/amazon/kindle/krx/library/LibraryViewType;

    move-result-object v0

    return-object v0
.end method

.method protected instantiateLibraryRecyclerFragment(Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;)Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;
    .locals 3

    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "ARG_RECYCLER_LAYOUT_TYPE"

    .line 86
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 88
    invoke-static {}, Lcom/amazon/kcp/debug/LargeLibraryDebugUtils;->isLargeLibraryEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 89
    const-class p1, Lcom/amazon/kcp/library/fragments/LargeLibraryFragmentProvider;

    invoke-static {p1}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Lcom/amazon/kcp/library/fragments/LargeLibraryFragmentProvider;

    .line 90
    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;->activity:Landroidx/fragment/app/FragmentActivity;

    const-string v2, "activity"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/amazon/kcp/library/fragments/SeriesDetailFragmentHandler;->serializedGroupId:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lcom/amazon/kcp/library/fragments/LargeLibraryFragmentProvider;->seriesDetailFragment(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo v0, "null cannot be cast to non-null type com.amazon.kcp.library.fragments.AbstractRecyclerFragment"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 92
    :cond_1
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;->activity:Landroidx/fragment/app/FragmentActivity;

    const-class v1, Lcom/amazon/kcp/library/fragments/SeriesDetailRecyclerFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, Lcom/amazon/kcp/library/fragments/SeriesDetailRecyclerFragment;

    .line 93
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/SeriesDetailFragmentHandler;->serializedGroupId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/library/fragments/SeriesDetailRecyclerFragment;->setGroupId(Ljava/lang/String;)V

    :goto_0
    return-object p1

    .line 92
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo v0, "null cannot be cast to non-null type com.amazon.kcp.library.fragments.SeriesDetailRecyclerFragment"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setGroupData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "groupTitle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "serializedGroupId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/SeriesDetailFragmentHandler;->groupTitle:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/amazon/kcp/library/fragments/SeriesDetailFragmentHandler;->serializedGroupId:Ljava/lang/String;

    .line 40
    invoke-direct {p0, p2}, Lcom/amazon/kcp/library/fragments/SeriesDetailFragmentHandler;->getIsFalkorSeries(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazon/kcp/library/fragments/SeriesDetailFragmentHandler;->isFalkorSeries:Z

    .line 42
    invoke-direct {p0, p2}, Lcom/amazon/kcp/library/fragments/SeriesDetailFragmentHandler;->setGroupId(Ljava/lang/String;)V

    return-void
.end method
