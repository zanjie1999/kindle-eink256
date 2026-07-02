.class public final Lcom/amazon/kcp/library/fragments/LargeNarrativeDetailRecyclerFragment;
.super Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;
.source "LargeNarrativeDetailRecyclerFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/fragments/LargeNarrativeDetailRecyclerFragment$Companion;
    }
.end annotation


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kcp/library/fragments/LargeNarrativeDetailRecyclerFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/library/fragments/LargeNarrativeDetailRecyclerFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeNarrativeDetailRecyclerFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method protected badgeSource()Lcom/amazon/kcp/cover/badge/BadgeSource;
    .locals 1

    .line 18
    sget-object v0, Lcom/amazon/kcp/cover/badge/BadgeSource;->SERIES_DETAIL:Lcom/amazon/kcp/cover/badge/BadgeSource;

    return-object v0
.end method

.method protected newAdapterHelper()Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;
    .locals 10

    .line 14
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->getHelper()Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/amazon/kcp/library/fragments/AbstractLargeLibraryFragmentHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->filterStateManager()Lcom/amazon/kcp/library/LibraryFilterStateManager;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/library/fragments/AbstractLargeLibraryFragmentHelper;->getNarrativeAdapterHelperSettings(Landroid/os/Bundle;Lcom/amazon/kcp/library/LibraryFilterStateManager;)Lcom/amazon/kcp/utils/AdapterHelperSettings;

    move-result-object v0

    .line 15
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

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    const-string v1, "Utils.getFactory().authenticationManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->getAccountInfo()Lcom/amazon/kindle/services/authentication/IAccountInfo;

    move-result-object v0

    const-string v1, "Utils.getFactory().authe\u2026cationManager.accountInfo"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/services/authentication/IAccountInfo;->getId()Ljava/lang/String;

    move-result-object v9

    const-string v0, "Utils.getFactory().authe\u2026ionManager.accountInfo.id"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {v2 .. v9}, Lcom/amazon/kcp/integrator/LargeLibraryUtilsKt;->adapterHelperForSortAndFilter(Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;Lcom/amazon/kcp/library/ILibraryFilter;Ljava/util/Set;Lcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kindle/krx/library/LibraryGroupType;Ljava/util/Set;Lcom/amazon/kindle/observablemodel/ItemID;Ljava/lang/String;)Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;

    move-result-object v0

    return-object v0

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "null cannot be cast to non-null type com.amazon.kcp.library.fragments.AbstractLargeLibraryFragmentHelper"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LargeNarrativeDetailRecyclerFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method protected onSeriesContentGroupedChanged()V
    .locals 0

    return-void
.end method
