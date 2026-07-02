.class public final Lcom/amazon/kcp/library/fragments/CollectionItemsReorderableRecyclerFragment;
.super Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;
.source "CollectionItemsReorderableRecyclerFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/fragments/CollectionItemsReorderableRecyclerFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCollectionItemsReorderableRecyclerFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CollectionItemsReorderableRecyclerFragment.kt\ncom/amazon/kcp/library/fragments/CollectionItemsReorderableRecyclerFragment\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 UniqueDiscoveryUtils.kt\ncom/amazon/kcp/util/UniqueDiscoveryUtilsKt\n*L\n1#1,155:1\n1#2:156\n7#3:157\n*E\n*S KotlinDebug\n*F\n+ 1 CollectionItemsReorderableRecyclerFragment.kt\ncom/amazon/kcp/library/fragments/CollectionItemsReorderableRecyclerFragment\n*L\n35#1:157\n*E\n"
.end annotation


# static fields
.field private static final ARG_COLLECTION_ID:Ljava/lang/String; = "CollectionId"

.field public static final Companion:Lcom/amazon/kcp/library/fragments/CollectionItemsReorderableRecyclerFragment$Companion;


# instance fields
.field private final gridCoverProvider:Lcom/amazon/kcp/cover/GridCoverProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kcp/library/fragments/CollectionItemsReorderableRecyclerFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/library/fragments/CollectionItemsReorderableRecyclerFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kcp/library/fragments/CollectionItemsReorderableRecyclerFragment;->Companion:Lcom/amazon/kcp/library/fragments/CollectionItemsReorderableRecyclerFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 33
    const-class v0, Lcom/amazon/kcp/cover/GridCoverProvider;

    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;-><init>()V

    .line 157
    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, Lcom/amazon/kcp/cover/GridCoverProvider;

    iput-object v1, p0, Lcom/amazon/kcp/library/fragments/CollectionItemsReorderableRecyclerFragment;->gridCoverProvider:Lcom/amazon/kcp/cover/GridCoverProvider;

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

.method public static final synthetic access$getGridCoverProvider$p(Lcom/amazon/kcp/library/fragments/CollectionItemsReorderableRecyclerFragment;)Lcom/amazon/kcp/cover/GridCoverProvider;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/amazon/kcp/library/fragments/CollectionItemsReorderableRecyclerFragment;->gridCoverProvider:Lcom/amazon/kcp/cover/GridCoverProvider;

    return-object p0
.end method

.method private final populateItems()V
    .locals 12

    .line 139
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "CollectionId"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 143
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    const-string v3, "KindleObjectFactorySingleton.getInstance(activity)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v5

    .line 144
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    .line 145
    sget-object v6, Lcom/amazon/kindle/krx/library/LibraryGroupType;->NOT_APPLICABLE:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/amazon/kcp/library/CollectionItemsFilter;

    invoke-direct {v1, v0}, Lcom/amazon/kcp/library/CollectionItemsFilter;-><init>(Ljava/lang/String;)V

    :cond_1
    move-object v7, v1

    .line 146
    sget-object v8, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_CUSTOM:Lcom/amazon/kcp/library/LibrarySortType;

    const/4 v9, -0x1

    const/4 v11, 0x0

    const-string v10, "All"

    .line 144
    invoke-static/range {v4 .. v11}, Lcom/amazon/kcp/library/LibraryCursorFactory;->createLoaderForSortAndFilter(Landroid/content/Context;Lcom/amazon/kindle/content/ILibraryService;Lcom/amazon/kindle/krx/library/LibraryGroupType;Lcom/amazon/kcp/library/LibraryContentFilter;Lcom/amazon/kcp/library/LibrarySortType;ILjava/lang/String;Lcom/amazon/kcp/library/ILibraryItemQuery;)Lcom/amazon/kcp/library/LibraryServiceCursorLoader;

    move-result-object v0

    .line 150
    invoke-virtual {v0}, Lcom/amazon/kcp/library/AbstractLibraryCursorLoader;->loadInBackground()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_3

    .line 152
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    if-eqz v1, :cond_2

    check-cast v1, Lcom/amazon/kcp/library/FastReorderableRecyclerAdapter;

    const-string v2, "it"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/amazon/kcp/library/AbstractRecyclerAdapter;->setList(Ljava/util/List;)V

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "null cannot be cast to non-null type com.amazon.kcp.library.FastReorderableRecyclerAdapter<com.amazon.kcp.library.ILibraryDisplayItem>"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    return-void
.end method

.method private final setListDividers()V
    .locals 10

    .line 129
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getRecyclerLayoutType()Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;

    move-result-object v1

    sget-object v2, Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;->LIST:Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [I

    .line 131
    sget v2, Lcom/amazon/kindle/librarymodule/R$attr;->library_list_view_divider:I

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/app/Activity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const-string v1, "activity.obtainStyledAtt\u2026brary_list_view_divider))"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v1, "array.getDrawable(0)!!"

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 134
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/library/ListDividerDecoration;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x6

    const/4 v9, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lcom/amazon/kcp/library/ListDividerDecoration;-><init>(Landroid/graphics/drawable/Drawable;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected itemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;
    .locals 1

    .line 125
    new-instance v0, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/CollectionItemsReorderableRecyclerFragment;->newAdapter()Lcom/amazon/kcp/library/FastRecyclerAdapter;

    move-result-object v0

    return-object v0
.end method

.method public newAdapter()Lcom/amazon/kcp/library/FastRecyclerAdapter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/kcp/library/FastRecyclerAdapter<",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            ">;"
        }
    .end annotation

    .line 52
    new-instance v0, Lcom/amazon/kcp/library/fragments/CollectionItemsReorderableRecyclerFragment$newAdapter$1;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string/jumbo v2, "requireActivity()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0, v1}, Lcom/amazon/kcp/library/fragments/CollectionItemsReorderableRecyclerFragment$newAdapter$1;-><init>(Lcom/amazon/kcp/library/fragments/CollectionItemsReorderableRecyclerFragment;Landroid/app/Activity;)V

    .line 115
    invoke-virtual {v0}, Lcom/amazon/kcp/library/FastRecyclerAdapter;->init()Lcom/amazon/kcp/library/FastRecyclerAdapter;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 119
    invoke-super {p0, p1}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 120
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/CollectionItemsReorderableRecyclerFragment;->setListDividers()V

    .line 121
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/CollectionItemsReorderableRecyclerFragment;->populateItems()V

    return-void
.end method
