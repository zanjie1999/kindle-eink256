.class public Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment;
.super Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;
.source "LibraryItemsRecyclerFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment<",
        "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLibraryItemsRecyclerFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LibraryItemsRecyclerFragment.kt\ncom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment\n+ 2 UniqueDiscoveryUtils.kt\ncom/amazon/kcp/util/UniqueDiscoveryUtilsKt\n*L\n1#1,123:1\n7#2:124\n*E\n*S KotlinDebug\n*F\n+ 1 LibraryItemsRecyclerFragment.kt\ncom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment\n*L\n25#1:124\n*E\n"
.end annotation


# static fields
.field private static final DETAILS_LOADER_ID:I = 0x8

.field private static final GRID_LOADER_ID:I = 0x6

.field private static final LIST_LOADER_ID:I = 0x7


# instance fields
.field private final gridCoverProvider:Lcom/amazon/kcp/cover/GridCoverProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 17
    const-class v0, Lcom/amazon/kcp/cover/GridCoverProvider;

    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;-><init>()V

    .line 124
    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, Lcom/amazon/kcp/cover/GridCoverProvider;

    iput-object v1, p0, Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment;->gridCoverProvider:Lcom/amazon/kcp/cover/GridCoverProvider;

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

.method public static final synthetic access$getGridCoverProvider$p(Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment;)Lcom/amazon/kcp/cover/GridCoverProvider;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment;->gridCoverProvider:Lcom/amazon/kcp/cover/GridCoverProvider;

    return-object p0
.end method

.method private final loaderId()I
    .locals 2

    .line 100
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getRecyclerLayoutType()Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment$WhenMappings;->$EnumSwitchMapping$3:[I

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

    .line 103
    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment;->gridCoverProvider:Lcom/amazon/kcp/cover/GridCoverProvider;

    invoke-interface {v0}, Lcom/amazon/kcp/cover/GridCoverProvider;->getGridLoaderId()I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x7

    :goto_0
    return v0
.end method


# virtual methods
.method protected badgeSource()Lcom/amazon/kcp/cover/badge/BadgeSource;
    .locals 1

    .line 96
    sget-object v0, Lcom/amazon/kcp/cover/badge/BadgeSource;->LIBRARY:Lcom/amazon/kcp/cover/badge/BadgeSource;

    return-object v0
.end method

.method public getItemCountProvider()Lcom/amazon/kcp/library/fragments/ILibraryItemCountProvider;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic newAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment;->newAdapter()Lcom/amazon/kcp/library/FastRecyclerAdapter;

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

    .line 32
    new-instance v0, Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment$newAdapter$1;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string/jumbo v2, "requireActivity()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->getHelper()Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->getMultiChoiceListener()Landroid/widget/AbsListView$MultiChoiceModeListener;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment$newAdapter$1;-><init>(Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment;Landroid/app/Activity;Landroid/view/ActionMode$Callback;)V

    .line 92
    invoke-virtual {v0}, Lcom/amazon/kcp/library/FastRecyclerAdapter;->init()Lcom/amazon/kcp/library/FastRecyclerAdapter;

    return-object v0
.end method

.method protected newHelper()Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper<",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            ">;"
        }
    .end annotation

    .line 28
    new-instance v6, Lcom/amazon/kcp/library/fragments/LibraryItemsFragmentHelper;

    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment;->loaderId()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kcp/library/fragments/LibraryItemsFragmentHelper;-><init>(Landroidx/fragment/app/Fragment;Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;IZZ)V

    return-object v6
.end method

.method public onHiddenChanged(Z)V
    .locals 2

    .line 108
    invoke-super {p0, p1}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->onHiddenChanged(Z)V

    .line 109
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

    .line 112
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/librarymodule/R$bool;->periodicals_supported:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->generateDefaultGridColumnCount()I

    move-result p1

    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getDefaultColumnCount()I

    move-result v0

    if-eq p1, v0, :cond_1

    .line 113
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->relayoutGrid()V

    const/4 p1, 0x0

    .line 115
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->swapList(Ljava/util/List;)Ljava/util/List;

    :cond_1
    return-void
.end method
