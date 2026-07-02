.class public final Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment$newAdapter$2;
.super Lcom/amazon/kcp/library/FastReorderableRecyclerAdapter;
.source "LargeCollectionItemsReorderableRecyclerFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment;->newAdapter()Lcom/amazon/kcp/library/FastRecyclerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kcp/library/FastReorderableRecyclerAdapter<",
        "Lcom/amazon/kindle/observablemodel/ItemID;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLargeCollectionItemsReorderableRecyclerFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LargeCollectionItemsReorderableRecyclerFragment.kt\ncom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment$newAdapter$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,175:1\n221#2,2:176\n*E\n*S KotlinDebug\n*F\n+ 1 LargeCollectionItemsReorderableRecyclerFragment.kt\ncom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment$newAdapter$2\n*L\n135#1,2:176\n*E\n"
.end annotation


# instance fields
.field final synthetic $collectionId:Ljava/lang/String;

.field final synthetic this$0:Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .line 66
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment$newAdapter$2;->this$0:Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment;

    iput-object p2, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment$newAdapter$2;->$collectionId:Ljava/lang/String;

    invoke-direct {p0, p3}, Lcom/amazon/kcp/library/FastReorderableRecyclerAdapter;-><init>(Landroid/app/Activity;)V

    return-void
.end method

.method public static final synthetic access$getActivity$p(Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment$newAdapter$2;)Landroid/app/Activity;
    .locals 0

    .line 66
    invoke-virtual {p0}, Lcom/amazon/kcp/library/FastRecyclerAdapter;->getActivity()Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bindView(Lcom/amazon/kcp/library/FastRecyclerViewHolder;Landroid/view/View;Landroid/content/Context;ILcom/amazon/kindle/observablemodel/ItemID;)V
    .locals 3

    const-string/jumbo v0, "viewHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "item"

    invoke-static {p5, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    iget-object p3, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment$newAdapter$2;->this$0:Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment;

    invoke-static {p3}, Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment;->access$getAdapterHelper$p(Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment;)Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;

    move-result-object p3

    invoke-virtual {p3, p1, p4, p5}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->bindView(Lcom/amazon/kcp/library/FastRecyclerViewHolder;ILcom/amazon/kindle/observablemodel/ItemID;)Z

    .line 81
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment$newAdapter$2;->this$0:Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment;

    invoke-static {p1}, Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment;->access$getRepository$p(Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment;)Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;

    move-result-object p1

    new-instance p3, Lcom/amazon/kcp/integrator/PeriodicalArguments;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {p3, v1, v0, v2, v0}, Lcom/amazon/kcp/integrator/PeriodicalArguments;-><init>(ZLcom/amazon/kindle/krx/content/IBook$ReadState;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v1, Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment$newAdapter$2$bindView$1;

    invoke-direct {v1, p0, p2, p4}, Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment$newAdapter$2$bindView$1;-><init>(Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment$newAdapter$2;Landroid/view/View;I)V

    invoke-virtual {p1, v0, p5, p3, v1}, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->retrieveLibraryItemByID(Lcom/amazon/kcp/integrator/LibraryModelFormula;Lcom/amazon/kindle/observablemodel/ItemID;Lcom/amazon/kcp/integrator/PeriodicalArguments;Lcom/amazon/kcp/integrator/ILibraryRetrievalListener;)V

    return-void
.end method

.method public bridge synthetic bindView(Lcom/amazon/kcp/library/FastRecyclerViewHolder;Landroid/view/View;Landroid/content/Context;ILjava/lang/Object;)V
    .locals 0

    .line 66
    check-cast p5, Lcom/amazon/kindle/observablemodel/ItemID;

    invoke-virtual/range {p0 .. p5}, Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment$newAdapter$2;->bindView(Lcom/amazon/kcp/library/FastRecyclerViewHolder;Landroid/view/View;Landroid/content/Context;ILcom/amazon/kindle/observablemodel/ItemID;)V

    return-void
.end method

.method public getItem(I)Lcom/amazon/kindle/observablemodel/ItemID;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment$newAdapter$2;->this$0:Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment;

    invoke-static {v0}, Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment;->access$getAdapterHelper$p(Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment;)Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->getItem(I)Lcom/amazon/kindle/observablemodel/ItemID;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 66
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment$newAdapter$2;->getItem(I)Lcom/amazon/kindle/observablemodel/ItemID;

    move-result-object p1

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment$newAdapter$2;->this$0:Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment;

    invoke-static {v0}, Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment;->access$getAdapterHelper$p(Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment;)Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->itemCount()I

    move-result v0

    return v0
.end method

.method public itemId(Lcom/amazon/kindle/observablemodel/ItemID;)J
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment$newAdapter$2;->this$0:Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment;

    invoke-static {v0}, Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment;->access$getAdapterHelper$p(Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment;)Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->itemId(Lcom/amazon/kindle/observablemodel/ItemID;)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic itemId(Ljava/lang/Object;)J
    .locals 2

    .line 66
    check-cast p1, Lcom/amazon/kindle/observablemodel/ItemID;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment$newAdapter$2;->itemId(Lcom/amazon/kindle/observablemodel/ItemID;)J

    move-result-wide v0

    return-wide v0
.end method

.method public newView(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 2

    const-string p3, "context"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "parent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment$newAdapter$2;->this$0:Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment;

    invoke-virtual {p1}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getRecyclerLayoutType()Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;

    move-result-object p1

    sget-object p2, Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/amazon/kcp/library/FastRecyclerAdapter;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment$newAdapter$2;->this$0:Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment;

    invoke-virtual {p2}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getGridItemHeight()I

    move-result p2

    iget-object p3, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment$newAdapter$2;->this$0:Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment;

    invoke-virtual {p3}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getGridItemWidth()I

    move-result p3

    invoke-static {p1, p2, p3}, Lcom/amazon/kcp/cover/LibraryCoverFactory;->newDetailsGridCover(Landroid/content/Context;II)Landroid/view/View;

    move-result-object p1

    const-string p2, "LibraryCoverFactory.newD\u2026temHeight, gridItemWidth)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 74
    :cond_1
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment$newAdapter$2;->this$0:Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment;

    invoke-static {p1}, Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment;->access$getGridCoverProvider$p(Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment;)Lcom/amazon/kcp/cover/GridCoverProvider;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazon/kcp/library/FastRecyclerAdapter;->getActivity()Landroid/app/Activity;

    move-result-object p2

    iget-object p3, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment$newAdapter$2;->this$0:Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment;

    invoke-virtual {p3}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getGridItemHeight()I

    move-result p3

    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment$newAdapter$2;->this$0:Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getGridItemWidth()I

    move-result v0

    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment$newAdapter$2;->this$0:Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment;

    invoke-virtual {v1}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getGridRowPadding()I

    move-result v1

    invoke-interface {p1, p2, p3, v0, v1}, Lcom/amazon/kcp/cover/GridCoverProvider;->newGridCover(Landroid/content/Context;III)Landroid/view/View;

    move-result-object p1

    const-string p2, "gridCoverProvider.newGri\u2026temWidth, gridRowPadding)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 73
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/kcp/library/FastRecyclerAdapter;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kcp/cover/LibraryCoverFactory;->newListRow(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    const-string p2, "LibraryCoverFactory.newListRow(activity)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment$newAdapter$2;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/amazon/kcp/library/FastRecyclerViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/amazon/kcp/library/FastRecyclerViewHolder;
    .locals 2

    const-string/jumbo v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment$newAdapter$2;->this$0:Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment;

    invoke-static {v0}, Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment;->access$getAdapterHelper$p(Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment;)Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/kcp/library/FastRecyclerAdapter;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0, v1, p1, p2}, Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment$newAdapter$2;->newView(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->createViewHolder(Landroid/view/View;)Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onItemFinishedMoving(I)V
    .locals 4

    .line 126
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment$newAdapter$2;->this$0:Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getRecyclerLayoutType()Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment$WhenMappings;->$EnumSwitchMapping$3:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const-string v0, "CollectionItemSortOrderChangedViaDetails"

    goto :goto_0

    .line 129
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment$newAdapter$2;->this$0:Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment;

    invoke-static {v0}, Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment;->access$getGridCoverProvider$p(Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment;)Lcom/amazon/kcp/cover/GridCoverProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/cover/GridCoverProvider;->getGridCoverEvent()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gridCoverProvider.gridCoverEvent"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "CollectionItemSortOrderChangedViaList"

    .line 131
    :goto_0
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v3, "EditCollectionActivity"

    invoke-virtual {v1, v3, v0, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    .line 132
    invoke-virtual {p0}, Lcom/amazon/kcp/library/FastRecyclerAdapter;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_5

    check-cast v0, Lcom/amazon/kcp/library/EditCollectionActivity;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/EditCollectionActivity;->onItemMoved()V

    .line 133
    invoke-static {}, Lcom/amazon/kindle/collections/CollectionsManagerHolder;->getInstance()Lcom/amazon/kindle/collections/ICollectionsManager;

    move-result-object v0

    .line 134
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment$newAdapter$2;->getItem(I)Lcom/amazon/kindle/observablemodel/ItemID;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kindle/observablemodel/ItemID;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getItem(toPosition).identifier"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/collections/ICollectionsManager;->getCollectionItemsByBookId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 176
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/collections/dto/ICollectionItem;

    .line 135
    invoke-interface {v1}, Lcom/amazon/kindle/collections/dto/ICollectionItem;->getCollectionId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment$newAdapter$2;->$collectionId:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 136
    invoke-static {}, Lcom/amazon/kindle/collections/CollectionsManagerHolder;->getInstance()Lcom/amazon/kindle/collections/ICollectionsManager;

    move-result-object v0

    invoke-interface {v0, v1, p1}, Lcom/amazon/kindle/collections/ICollectionsManager;->addOrMoveCollectionItemToIndex(Lcom/amazon/kindle/collections/dto/ICollectionItem;I)Z

    return-void

    .line 177
    :cond_4
    new-instance p1, Ljava/util/NoSuchElementException;

    const-string v0, "Collection contains no element matching the predicate."

    invoke-direct {p1, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 132
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo v0, "null cannot be cast to non-null type com.amazon.kcp.library.EditCollectionActivity"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public recycleView(Lcom/amazon/kcp/library/FastRecyclerViewHolder;Landroid/view/View;I)V
    .locals 0

    const-string/jumbo p3, "viewHolder"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p3, "view"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    iget-object p3, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment$newAdapter$2;->this$0:Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment;

    invoke-static {p3}, Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment;->access$getAdapterHelper$p(Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment;)Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->recycleView(Lcom/amazon/kcp/library/FastRecyclerViewHolder;)V

    .line 118
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment$newAdapter$2;->this$0:Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment;

    invoke-virtual {p1}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getRecyclerLayoutType()Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;

    move-result-object p1

    sget-object p3, Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p3, p1

    const/4 p3, 0x1

    if-eq p1, p3, :cond_2

    const/4 p3, 0x2

    if-eq p1, p3, :cond_1

    const/4 p3, 0x3

    if-eq p1, p3, :cond_0

    goto :goto_0

    .line 121
    :cond_0
    invoke-static {p2}, Lcom/amazon/kcp/cover/LibraryCoverFactory;->recycleDetailsGridCover(Landroid/view/View;)V

    goto :goto_0

    .line 120
    :cond_1
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment$newAdapter$2;->this$0:Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment;

    invoke-static {p1}, Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment;->access$getGridCoverProvider$p(Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment;)Lcom/amazon/kcp/cover/GridCoverProvider;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/amazon/kcp/cover/GridCoverProvider;->recycleGridCover(Landroid/view/View;)V

    goto :goto_0

    .line 119
    :cond_2
    invoke-static {p2}, Lcom/amazon/kcp/cover/LibraryCoverFactory;->recycleListRow(Landroid/view/View;)V

    :goto_0
    return-void
.end method
