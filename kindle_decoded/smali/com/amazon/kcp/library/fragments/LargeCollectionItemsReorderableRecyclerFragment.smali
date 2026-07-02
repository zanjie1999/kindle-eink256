.class public final Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment;
.super Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;
.source "LargeCollectionItemsReorderableRecyclerFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLargeCollectionItemsReorderableRecyclerFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LargeCollectionItemsReorderableRecyclerFragment.kt\ncom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment\n+ 2 UniqueDiscoveryUtils.kt\ncom/amazon/kcp/util/UniqueDiscoveryUtilsKt\n*L\n1#1,175:1\n7#2:176\n7#2:177\n*E\n*S KotlinDebug\n*F\n+ 1 LargeCollectionItemsReorderableRecyclerFragment.kt\ncom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment\n*L\n59#1:176\n51#1:177\n*E\n"
.end annotation


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private adapterHelper:Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;

.field private final gridCoverProvider:Lcom/amazon/kcp/cover/GridCoverProvider;

.field private final repository:Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 43
    const-class v0, Lcom/amazon/kcp/cover/GridCoverProvider;

    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;-><init>()V

    .line 50
    invoke-static {}, Lcom/amazon/kcp/integrator/LargeLibraryUtilsKt;->largeLibraryRepository()Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment;->repository:Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;

    .line 177
    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, Lcom/amazon/kcp/cover/GridCoverProvider;

    iput-object v1, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment;->gridCoverProvider:Lcom/amazon/kcp/cover/GridCoverProvider;

    return-void

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

.method public static final synthetic access$getAdapterHelper$p(Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment;)Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment;->adapterHelper:Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "adapterHelper"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getGridCoverProvider$p(Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment;)Lcom/amazon/kcp/cover/GridCoverProvider;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment;->gridCoverProvider:Lcom/amazon/kcp/cover/GridCoverProvider;

    return-object p0
.end method

.method public static final synthetic access$getRepository$p(Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment;)Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment;->repository:Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;

    return-object p0
.end method

.method private final setListDividers()V
    .locals 9

    .line 163
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getRecyclerLayoutType()Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;->LIST:Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;

    if-ne v0, v1, :cond_3

    .line 165
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result v0

    if-nez v0, :cond_2

    .line 166
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    new-array v3, v3, [I

    sget v4, Lcom/amazon/kindle/librarymodule/R$attr;->library_list_view_divider:I

    aput v4, v3, v1

    invoke-virtual {v0, v3}, Landroid/app/Activity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 167
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 168
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    .line 170
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget v1, Lcom/amazon/kindle/librarymodule/R$drawable;->ruby_list_item_divider_dark:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_1
    move-object v4, v2

    .line 172
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/library/ListDividerDecoration;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/amazon/kcp/library/ListDividerDecoration;-><init>(Landroid/graphics/drawable/Drawable;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method protected itemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;
    .locals 1

    .line 159
    new-instance v0, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment;->newAdapter()Lcom/amazon/kcp/library/FastRecyclerAdapter;

    move-result-object v0

    return-object v0
.end method

.method public newAdapter()Lcom/amazon/kcp/library/FastRecyclerAdapter;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/kcp/library/FastRecyclerAdapter<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 54
    const-class v1, Lcom/amazon/kcp/library/ILibraryFilterProvider;

    iget-object v2, v0, Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment;->adapterHelper:Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;

    const-string v3, "CollectionId"

    const/4 v4, 0x0

    if-nez v2, :cond_2

    .line 55
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v4

    .line 56
    :goto_0
    new-instance v13, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;

    iget-object v6, v0, Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment;->repository:Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;

    .line 57
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v5

    const-string v7, "Utils.getFactory()"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v5

    const-string v7, "Utils.getFactory().authenticationManager"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5}, Lcom/amazon/kcp/application/IAuthenticationManager;->getAccountInfo()Lcom/amazon/kindle/services/authentication/IAccountInfo;

    move-result-object v5

    const-string v7, "Utils.getFactory().authe\u2026cationManager.accountInfo"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5}, Lcom/amazon/kindle/services/authentication/IAccountInfo;->getId()Ljava/lang/String;

    move-result-object v7

    const-string v5, "Utils.getFactory().authe\u2026ionManager.accountInfo.id"

    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x0

    .line 176
    invoke-static {v1}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    check-cast v5, Lcom/amazon/kcp/library/ILibraryFilterProvider;

    .line 59
    new-instance v1, Lcom/amazon/kcp/library/LibraryFilterContext;

    sget-object v9, Lcom/amazon/kindle/krx/library/LibraryView;->COLLECTION_ITEMS:Lcom/amazon/kindle/krx/library/LibraryView;

    invoke-direct {v1, v9, v2}, Lcom/amazon/kcp/library/LibraryFilterContext;-><init>(Lcom/amazon/kindle/krx/library/LibraryView;Ljava/lang/String;)V

    invoke-interface {v5, v1}, Lcom/amazon/kcp/library/ILibraryFilterProvider;->provideLibraryFilter(Lcom/amazon/kcp/library/LibraryFilterContext;)Lcom/amazon/kcp/library/ILibraryFilter;

    move-result-object v9

    .line 60
    sget-object v1, Lcom/amazon/kcp/integrator/BookDataHelper;->INSTANCE:Lcom/amazon/kcp/integrator/BookDataHelper;

    invoke-virtual {v1}, Lcom/amazon/kcp/integrator/BookDataHelper;->getCATEGORIES()Ljava/util/Set;

    move-result-object v14

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v15

    .line 61
    new-instance v5, Lcom/amazon/kindle/observablemodel/ItemID;

    const/4 v10, 0x3

    invoke-direct {v5, v10, v2}, Lcom/amazon/kindle/observablemodel/ItemID;-><init>(ILjava/lang/String;)V

    const/16 v17, 0x0

    const/16 v18, 0x8

    const/16 v19, 0x0

    move-object/from16 v16, v5

    .line 60
    invoke-static/range {v14 .. v19}, Lcom/amazon/kcp/integrator/LargeLibraryUtilsKt;->modelContentWithArguments$default(Ljava/util/Set;Ljava/util/Set;Lcom/amazon/kindle/observablemodel/ItemID;Lcom/amazon/kindle/observablemodel/ModelContent;ILjava/lang/Object;)Lcom/amazon/kindle/observablemodel/ModelContent;

    move-result-object v10

    .line 62
    new-instance v11, Lcom/amazon/kindle/observablemodel/ModelFilter;

    invoke-direct {v11}, Lcom/amazon/kindle/observablemodel/ModelFilter;-><init>()V

    const/16 v2, 0x22

    const/4 v5, 0x4

    .line 63
    invoke-static {v2, v1, v4, v5, v4}, Lcom/amazon/kcp/integrator/LargeLibraryUtilsKt;->modelSortingWithArguments$default(IILcom/amazon/kindle/observablemodel/ModelSorting;ILjava/lang/Object;)Lcom/amazon/kindle/observablemodel/ModelSorting;

    move-result-object v12

    move-object v5, v13

    .line 56
    invoke-direct/range {v5 .. v12}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;-><init>(Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;Ljava/lang/String;Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;Lcom/amazon/kcp/library/ILibraryFilter;Lcom/amazon/kindle/observablemodel/ModelContent;Lcom/amazon/kindle/observablemodel/ModelFilter;Lcom/amazon/kindle/observablemodel/ModelSorting;)V

    iput-object v13, v0, Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment;->adapterHelper:Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;

    goto :goto_1

    .line 176
    :cond_1
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

    .line 65
    :cond_2
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    move-object v1, v4

    .line 66
    :goto_2
    iget-object v2, v0, Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment;->adapterHelper:Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;

    if-eqz v2, :cond_4

    new-instance v3, Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment$newAdapter$2;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v5, "activity!!"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v0, v1, v4}, Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment$newAdapter$2;-><init>(Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment;Ljava/lang/String;Landroid/app/Activity;)V

    invoke-virtual {v2, v3}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->init(Lcom/amazon/kcp/library/FastRecyclerAdapter;)Lcom/amazon/kcp/library/FastRecyclerAdapter;

    return-object v3

    :cond_4
    const-string v1, "adapterHelper"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 154
    invoke-super {p0, p1}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 155
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment;->setListDividers()V

    return-void
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method
