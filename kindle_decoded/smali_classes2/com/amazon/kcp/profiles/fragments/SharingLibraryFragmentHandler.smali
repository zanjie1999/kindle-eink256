.class public final Lcom/amazon/kcp/profiles/fragments/SharingLibraryFragmentHandler;
.super Lcom/amazon/kcp/library/fragments/FilterFragmentHandler;
.source "SharingLibraryFragmentHandler.kt"


# virtual methods
.method public getFilter()Lcom/amazon/kcp/library/LibraryContentFilter;
    .locals 2

    .line 27
    sget-object v0, Lcom/amazon/kcp/library/LibraryContentFilter;->ALL_ITEMS_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

    const-string v1, "ALL_ITEMS_FILTER"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getSupportedRefineMenuViewTypes()[Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;

    .line 38
    sget-object v1, Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;->GRID:Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;->LIST:Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method protected instantiateLibraryRecyclerFragment(Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;)Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;
    .locals 3

    .line 31
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "ARG_RECYCLER_LAYOUT_TYPE"

    .line 32
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 33
    const-class p1, Lcom/amazon/kcp/library/fragments/LargeLibraryFragmentProvider;

    invoke-static {p1}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/library/fragments/LargeLibraryFragmentProvider;

    if-eqz p1, :cond_0

    .line 34
    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;->activity:Landroidx/fragment/app/FragmentActivity;

    const-string v2, "activity"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v1, v0}, Lcom/amazon/kcp/library/fragments/LargeLibraryFragmentProvider;->sharingFragment(Landroid/content/Context;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    check-cast p1, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type com.amazon.kcp.library.fragments.AbstractRecyclerFragment"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
