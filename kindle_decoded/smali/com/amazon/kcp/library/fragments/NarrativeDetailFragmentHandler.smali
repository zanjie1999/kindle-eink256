.class public Lcom/amazon/kcp/library/fragments/NarrativeDetailFragmentHandler;
.super Lcom/amazon/kcp/library/fragments/FilterFragmentHandler;
.source "NarrativeDetailFragmentHandler.kt"


# instance fields
.field private final fragmentTagSuffix:Ljava/lang/String;

.field private groupTitle:Ljava/lang/String;

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

    .line 20
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/kcp/library/fragments/FilterFragmentHandler;-><init>(Landroidx/fragment/app/FragmentActivity;Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel;Lcom/amazon/kcp/library/fragments/ILibraryViewModeListener;Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;)V

    iput-object p5, p0, Lcom/amazon/kcp/library/fragments/NarrativeDetailFragmentHandler;->fragmentTagSuffix:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAuxiliaryLibraryDisplayItemsProvider()Lcom/amazon/kcp/library/SeriesLibraryDisplayItemsProvider;
    .locals 2

    .line 56
    new-instance v0, Lcom/amazon/kcp/library/SeriesLibraryDisplayItemsProvider;

    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/NarrativeDetailFragmentHandler;->serializedGroupId:Ljava/lang/String;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lcom/amazon/kcp/library/SeriesLibraryDisplayItemsProvider;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic getAuxiliaryLibraryDisplayItemsProvider()Lcom/amazon/kindle/krx/providers/IProvider;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/NarrativeDetailFragmentHandler;->getAuxiliaryLibraryDisplayItemsProvider()Lcom/amazon/kcp/library/SeriesLibraryDisplayItemsProvider;

    move-result-object v0

    return-object v0
.end method

.method protected getDetailsFragmentTag()Ljava/lang/String;
    .locals 2

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NarrativeDetailFragmentHandler_DETAILS_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/NarrativeDetailFragmentHandler;->fragmentTagSuffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getGridFragmentTag()Ljava/lang/String;
    .locals 2

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NarrativeDetailFragmentHandler_GRID_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/NarrativeDetailFragmentHandler;->fragmentTagSuffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getListFragmentTag()Ljava/lang/String;
    .locals 2

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NarrativeDetailFragmentHandler_LIST_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/NarrativeDetailFragmentHandler;->fragmentTagSuffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSortTypePersistKey()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/NarrativeDetailFragmentHandler;->serializedGroupId:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedRefineMenuViewTypes()[Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;
    .locals 5

    .line 59
    sget-object v0, Lcom/amazon/kcp/debug/DetailsViewDebugUtils;->INSTANCE:Lcom/amazon/kcp/debug/DetailsViewDebugUtils;

    invoke-virtual {v0}, Lcom/amazon/kcp/debug/DetailsViewDebugUtils;->isDetailsViewEnabled()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;

    .line 60
    sget-object v4, Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;->GRID:Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;

    aput-object v4, v0, v2

    sget-object v2, Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;->DETAILS:Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;

    aput-object v2, v0, v1

    sget-object v1, Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;->LIST:Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;

    aput-object v1, v0, v3

    goto :goto_0

    :cond_0
    new-array v0, v3, [Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;

    .line 62
    sget-object v3, Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;->GRID:Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;

    aput-object v3, v0, v2

    sget-object v2, Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;->LIST:Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;

    aput-object v2, v0, v1

    :goto_0
    return-object v0
.end method

.method public getTab()Lcom/amazon/kindle/krx/library/LibraryView;
    .locals 1

    .line 41
    sget-object v0, Lcom/amazon/kindle/krx/library/LibraryView;->SERIES:Lcom/amazon/kindle/krx/library/LibraryView;

    return-object v0
.end method

.method public getTitleString()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/NarrativeDetailFragmentHandler;->groupTitle:Ljava/lang/String;

    return-object v0
.end method

.method protected instantiateLibraryRecyclerFragment(Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;)Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;
    .locals 3

    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "ARG_RECYCLER_LAYOUT_TYPE"

    .line 47
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 50
    const-class p1, Lcom/amazon/kcp/library/fragments/LargeLibraryFragmentProvider;

    invoke-static {p1}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Lcom/amazon/kcp/library/fragments/LargeLibraryFragmentProvider;

    .line 51
    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;->activity:Landroidx/fragment/app/FragmentActivity;

    const-string v2, "activity"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/amazon/kcp/library/fragments/NarrativeDetailFragmentHandler;->serializedGroupId:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lcom/amazon/kcp/library/fragments/LargeLibraryFragmentProvider;->narrativeDetailFragment(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo v0, "null cannot be cast to non-null type com.amazon.kcp.library.fragments.AbstractRecyclerFragment"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setGroupData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "groupTitle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "serializedGroupId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/NarrativeDetailFragmentHandler;->groupTitle:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/amazon/kcp/library/fragments/NarrativeDetailFragmentHandler;->serializedGroupId:Ljava/lang/String;

    return-void
.end method
