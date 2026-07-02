.class public final Lcom/amazon/kcp/library/fragments/LargeCollectionsRecyclerFragment;
.super Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;
.source "LargeCollectionsRecyclerFragment.kt"

# interfaces
.implements Lcom/amazon/kcp/library/fragments/CollectionsFragmentHandler$ICollectionsFragment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/fragments/LargeCollectionsRecyclerFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment<",
        "Lcom/amazon/kindle/observablemodel/ItemID;",
        ">;",
        "Lcom/amazon/kcp/library/fragments/CollectionsFragmentHandler$ICollectionsFragment;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLargeCollectionsRecyclerFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LargeCollectionsRecyclerFragment.kt\ncom/amazon/kcp/library/fragments/LargeCollectionsRecyclerFragment\n+ 2 UniqueDiscoveryUtils.kt\ncom/amazon/kcp/util/UniqueDiscoveryUtilsKt\n*L\n1#1,188:1\n7#2:189\n*E\n*S KotlinDebug\n*F\n+ 1 LargeCollectionsRecyclerFragment.kt\ncom/amazon/kcp/library/fragments/LargeCollectionsRecyclerFragment\n*L\n49#1:189\n*E\n"
.end annotation


# static fields
.field private static final COLLECTIONS_LOADER_ID:I = 0x9

.field private static final COLLECTION_FILTER_KEY:Ljava/lang/String; = "CollectionFilter"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private adapterHelper:Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;

.field private filter:Lcom/amazon/kindle/krx/collections/CollectionFilter;

.field private filterStateManager:Lcom/amazon/kcp/library/LibraryFilterStateManager;

.field private showInformativeToast:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kcp/library/fragments/LargeCollectionsRecyclerFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/library/fragments/LargeCollectionsRecyclerFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;-><init>()V

    .line 41
    sget-object v0, Lcom/amazon/kindle/krx/collections/CollectionFilter;->ALL:Lcom/amazon/kindle/krx/collections/CollectionFilter;

    iput-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionsRecyclerFragment;->filter:Lcom/amazon/kindle/krx/collections/CollectionFilter;

    return-void
.end method

.method public static final synthetic access$getAdapterHelper$p(Lcom/amazon/kcp/library/fragments/LargeCollectionsRecyclerFragment;)Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionsRecyclerFragment;->adapterHelper:Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "adapterHelper"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private final initAdapterHelper()Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;
    .locals 17

    move-object/from16 v0, p0

    .line 48
    const-class v1, Lcom/amazon/kcp/library/ILibraryFilterProvider;

    iget-object v2, v0, Lcom/amazon/kcp/library/fragments/LargeCollectionsRecyclerFragment;->adapterHelper:Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;

    const-string v3, "adapterHelper"

    const/4 v4, 0x0

    if-nez v2, :cond_3

    .line 189
    invoke-static {v1}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    check-cast v2, Lcom/amazon/kcp/library/ILibraryFilterProvider;

    .line 49
    new-instance v1, Lcom/amazon/kcp/library/LibraryFilterContext;

    sget-object v5, Lcom/amazon/kindle/krx/library/LibraryView;->COLLECTIONS:Lcom/amazon/kindle/krx/library/LibraryView;

    invoke-direct {v1, v5, v4}, Lcom/amazon/kcp/library/LibraryFilterContext;-><init>(Lcom/amazon/kindle/krx/library/LibraryView;Ljava/lang/String;)V

    invoke-interface {v2, v1}, Lcom/amazon/kcp/library/ILibraryFilterProvider;->provideLibraryFilter(Lcom/amazon/kcp/library/LibraryFilterContext;)Lcom/amazon/kcp/library/ILibraryFilter;

    move-result-object v10

    .line 50
    sget-object v1, Lcom/amazon/kcp/library/LibraryFilterStateManagerFetcher$StateManagerType;->LIBRARY:Lcom/amazon/kcp/library/LibraryFilterStateManagerFetcher$StateManagerType;

    invoke-static {v10, v1}, Lcom/amazon/kcp/library/LibraryFilterStateManagerFetcher;->getLibraryFilterStateManager(Lcom/amazon/kcp/library/ILibraryFilter;Lcom/amazon/kcp/library/LibraryFilterStateManagerFetcher$StateManagerType;)Lcom/amazon/kcp/library/LibraryFilterStateManager;

    move-result-object v1

    const-string v2, "LibraryFilterStateManage\u2026StateManagerType.LIBRARY)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/amazon/kcp/library/fragments/LargeCollectionsRecyclerFragment;->filterStateManager:Lcom/amazon/kcp/library/LibraryFilterStateManager;

    .line 51
    new-instance v1, Lcom/amazon/kcp/library/fragments/LargeLibraryCollectionsRecyclerAdapterHelper;

    .line 52
    invoke-static {}, Lcom/amazon/kcp/integrator/LargeLibraryUtilsKt;->largeLibraryRepository()Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;

    move-result-object v7

    .line 53
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    const-string v5, "Utils.getFactory()"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v2

    const-string v5, "Utils.getFactory().authenticationManager"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/amazon/kcp/application/IAuthenticationManager;->getAccountInfo()Lcom/amazon/kindle/services/authentication/IAccountInfo;

    move-result-object v2

    const-string v5, "Utils.getFactory().authe\u2026cationManager.accountInfo"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/amazon/kindle/services/authentication/IAccountInfo;->getId()Ljava/lang/String;

    move-result-object v8

    const-string v2, "Utils.getFactory().authe\u2026ionManager.accountInfo.id"

    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->getHelper()Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;

    move-result-object v2

    iget-object v9, v2, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->handler:Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;

    .line 56
    sget-object v2, Lcom/amazon/kcp/integrator/BookDataHelper;->INSTANCE:Lcom/amazon/kcp/integrator/BookDataHelper;

    invoke-virtual {v2}, Lcom/amazon/kcp/integrator/BookDataHelper;->getCATEGORIES()Ljava/util/Set;

    move-result-object v11

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x8

    const/16 v16, 0x0

    invoke-static/range {v11 .. v16}, Lcom/amazon/kcp/integrator/LargeLibraryUtilsKt;->modelContentWithArguments$default(Ljava/util/Set;Ljava/util/Set;Lcom/amazon/kindle/observablemodel/ItemID;Lcom/amazon/kindle/observablemodel/ModelContent;ILjava/lang/Object;)Lcom/amazon/kindle/observablemodel/ModelContent;

    move-result-object v11

    .line 57
    new-instance v12, Lcom/amazon/kindle/observablemodel/ModelFilter;

    invoke-direct {v12}, Lcom/amazon/kindle/observablemodel/ModelFilter;-><init>()V

    const/16 v2, 0x10

    const/4 v5, 0x0

    const/4 v6, 0x4

    .line 58
    invoke-static {v2, v5, v4, v6, v4}, Lcom/amazon/kcp/integrator/LargeLibraryUtilsKt;->modelSortingWithArguments$default(IILcom/amazon/kindle/observablemodel/ModelSorting;ILjava/lang/Object;)Lcom/amazon/kindle/observablemodel/ModelSorting;

    move-result-object v13

    move-object v6, v1

    .line 51
    invoke-direct/range {v6 .. v13}, Lcom/amazon/kcp/library/fragments/LargeLibraryCollectionsRecyclerAdapterHelper;-><init>(Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;Ljava/lang/String;Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;Lcom/amazon/kcp/library/ILibraryFilter;Lcom/amazon/kindle/observablemodel/ModelContent;Lcom/amazon/kindle/observablemodel/ModelFilter;Lcom/amazon/kindle/observablemodel/ModelSorting;)V

    iput-object v1, v0, Lcom/amazon/kcp/library/fragments/LargeCollectionsRecyclerFragment;->adapterHelper:Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;

    .line 59
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->getHelper()Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;

    move-result-object v1

    if-eqz v1, :cond_1

    check-cast v1, Lcom/amazon/kcp/library/fragments/LargeCollectionsFragmentHelper;

    iget-object v2, v0, Lcom/amazon/kcp/library/fragments/LargeCollectionsRecyclerFragment;->adapterHelper:Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/library/fragments/LargeCollectionsFragmentHelper;->setAdapterHelper(Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;)V

    goto :goto_0

    :cond_0
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_1
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "null cannot be cast to non-null type com.amazon.kcp.library.fragments.LargeCollectionsFragmentHelper"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 189
    :cond_2
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Must implement discoverable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 62
    :cond_3
    :goto_0
    iget-object v1, v0, Lcom/amazon/kcp/library/fragments/LargeCollectionsRecyclerFragment;->adapterHelper:Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;

    if-eqz v1, :cond_4

    return-object v1

    :cond_4
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionsRecyclerFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public getImageDimension()Lcom/amazon/kindle/util/drawing/Dimension;
    .locals 2

    .line 125
    new-instance v0, Lcom/amazon/kindle/util/drawing/Dimension;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/amazon/kindle/util/drawing/Dimension;-><init>(II)V

    return-object v0
.end method

.method public getItemCountProvider()Lcom/amazon/kcp/library/fragments/ILibraryItemCountProvider;
    .locals 2

    .line 184
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/LargeCollectionsRecyclerFragment;->initAdapterHelper()Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;

    .line 186
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionsRecyclerFragment;->adapterHelper:Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;

    if-nez v0, :cond_0

    const-string v1, "adapterHelper"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method protected getPreferredAspectRatio()F
    .locals 1

    const v0, 0x3fd33333    # 1.65f

    return v0
.end method

.method public bridge synthetic newAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LargeCollectionsRecyclerFragment;->newAdapter()Lcom/amazon/kcp/library/FastRecyclerAdapter;

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

    .line 66
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/LargeCollectionsRecyclerFragment;->initAdapterHelper()Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;

    .line 68
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionsRecyclerFragment;->adapterHelper:Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/amazon/kcp/library/fragments/LargeCollectionsRecyclerFragment$newAdapter$1;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v3, "activity!!"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->getHelper()Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->getMultiChoiceListener()Landroid/widget/AbsListView$MultiChoiceModeListener;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/amazon/kcp/library/fragments/LargeCollectionsRecyclerFragment$newAdapter$1;-><init>(Lcom/amazon/kcp/library/fragments/LargeCollectionsRecyclerFragment;Landroid/app/Activity;Landroid/view/ActionMode$Callback;)V

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->init(Lcom/amazon/kcp/library/FastRecyclerAdapter;)Lcom/amazon/kcp/library/FastRecyclerAdapter;

    return-object v1

    :cond_0
    const-string v0, "adapterHelper"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method protected newHelper()Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ">;"
        }
    .end annotation

    .line 120
    new-instance v0, Lcom/amazon/kcp/library/fragments/LargeCollectionsFragmentHelper;

    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionsRecyclerFragment;->filter:Lcom/amazon/kindle/krx/collections/CollectionFilter;

    const/16 v2, 0x9

    invoke-direct {v0, p0, p0, v2, v1}, Lcom/amazon/kcp/library/fragments/LargeCollectionsFragmentHelper;-><init>(Landroidx/fragment/app/Fragment;Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;ILcom/amazon/kindle/krx/collections/CollectionFilter;)V

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 162
    invoke-super {p0, p1}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 163
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    const-string v0, "Utils.getFactory()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object p1

    const-string v0, "Utils.getFactory().userSettingsController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazon/kcp/application/UserSettingsController;->getShowCollectionsInformationDialog()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionsRecyclerFragment;->showInformativeToast:Z

    if-eqz p1, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->getRecyclerAdapter()Lcom/amazon/kcp/library/FastRecyclerAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/amazon/kcp/library/fragments/LargeCollectionsRecyclerFragment$onActivityCreated$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/fragments/LargeCollectionsRecyclerFragment$onActivityCreated$1;-><init>(Lcom/amazon/kcp/library/fragments/LargeCollectionsRecyclerFragment;)V

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/library/FastRecyclerAdapter;->addHeader(Lcom/amazon/kcp/library/RecyclerHeader;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 147
    invoke-super {p0, p1}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_2

    const-string v0, "CollectionFilter"

    .line 149
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/amazon/kindle/krx/collections/CollectionFilter;->ALL:Lcom/amazon/kindle/krx/collections/CollectionFilter;

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string/jumbo v0, "savedInstanceState.getSt\u2026tionFilter.ALL.toString()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/amazon/kindle/krx/collections/CollectionFilter;->valueOf(Ljava/lang/String;)Lcom/amazon/kindle/krx/collections/CollectionFilter;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionsRecyclerFragment;->filter:Lcom/amazon/kindle/krx/collections/CollectionFilter;

    .line 150
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->getHelper()Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Lcom/amazon/kcp/library/fragments/LargeCollectionsFragmentHelper;

    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionsRecyclerFragment;->filter:Lcom/amazon/kindle/krx/collections/CollectionFilter;

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/library/fragments/LargeCollectionsFragmentHelper;->restoreCollectionFilter(Lcom/amazon/kindle/krx/collections/CollectionFilter;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo v0, "null cannot be cast to non-null type com.amazon.kcp.library.fragments.LargeCollectionsFragmentHelper"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 153
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionsRecyclerFragment;->adapterHelper:Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->getHelper()Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;

    move-result-object v1

    if-eqz v1, :cond_4

    check-cast v1, Lcom/amazon/kcp/library/fragments/SortChangeOwner;

    iget-object v2, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionsRecyclerFragment;->filterStateManager:Lcom/amazon/kcp/library/LibraryFilterStateManager;

    if-eqz v2, :cond_3

    invoke-virtual {p1, v1, v2}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->onCreate(Lcom/amazon/kcp/library/fragments/SortChangeOwner;Lcom/amazon/kcp/library/LibraryFilterStateManager;)V

    return-void

    :cond_3
    const-string p1, "filterStateManager"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo v0, "null cannot be cast to non-null type com.amazon.kcp.library.fragments.SortChangeOwner"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    const-string p1, "adapterHelper"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0
.end method

.method public onDestroy()V
    .locals 4

    .line 157
    invoke-super {p0}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->onDestroy()V

    .line 158
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionsRecyclerFragment;->adapterHelper:Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->getHelper()Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;

    move-result-object v2

    if-eqz v2, :cond_1

    check-cast v2, Lcom/amazon/kcp/library/fragments/SortChangeOwner;

    iget-object v3, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionsRecyclerFragment;->filterStateManager:Lcom/amazon/kcp/library/LibraryFilterStateManager;

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2, v3}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->onDestroy(Lcom/amazon/kcp/library/fragments/SortChangeOwner;Lcom/amazon/kcp/library/LibraryFilterStateManager;)V

    return-void

    :cond_0
    const-string v0, "filterStateManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "null cannot be cast to non-null type com.amazon.kcp.library.fragments.SortChangeOwner"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-string v0, "adapterHelper"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LargeCollectionsRecyclerFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string/jumbo v0, "savedInstanceState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    invoke-super {p0, p1}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 143
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionsRecyclerFragment;->filter:Lcom/amazon/kindle/krx/collections/CollectionFilter;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CollectionFilter"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCollectionFilter(Lcom/amazon/kindle/krx/collections/CollectionFilter;)V
    .locals 1

    const-string v0, "filter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionsRecyclerFragment;->filter:Lcom/amazon/kindle/krx/collections/CollectionFilter;

    .line 134
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->getHelper()Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/amazon/kcp/library/fragments/LargeCollectionsFragmentHelper;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/fragments/LargeCollectionsFragmentHelper;->setCollectionFilter(Lcom/amazon/kindle/krx/collections/CollectionFilter;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo v0, "null cannot be cast to non-null type com.amazon.kcp.library.fragments.LargeCollectionsFragmentHelper"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public showInformativeToast(Z)V
    .locals 0

    .line 138
    iput-boolean p1, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionsRecyclerFragment;->showInformativeToast:Z

    return-void
.end method
