.class public final Lcom/amazon/kcp/library/fragments/CollectionItemsReorderableRecyclerFragment$newAdapter$1;
.super Lcom/amazon/kcp/library/FastReorderableRecyclerAdapter;
.source "CollectionItemsReorderableRecyclerFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/fragments/CollectionItemsReorderableRecyclerFragment;->newAdapter()Lcom/amazon/kcp/library/FastRecyclerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kcp/library/FastReorderableRecyclerAdapter<",
        "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/fragments/CollectionItemsReorderableRecyclerFragment;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/fragments/CollectionItemsReorderableRecyclerFragment;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .line 52
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/CollectionItemsReorderableRecyclerFragment$newAdapter$1;->this$0:Lcom/amazon/kcp/library/fragments/CollectionItemsReorderableRecyclerFragment;

    invoke-direct {p0, p2}, Lcom/amazon/kcp/library/FastReorderableRecyclerAdapter;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public bindView(Lcom/amazon/kcp/library/FastRecyclerViewHolder;Landroid/view/View;Landroid/content/Context;ILcom/amazon/kcp/library/ILibraryDisplayItem;)V
    .locals 12

    move-object v0, p0

    const-string/jumbo v1, "viewHolder"

    move-object v2, p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "view"

    move-object v5, p2

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "context"

    move-object v2, p3

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "item"

    move-object/from16 v4, p5

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    iget-object v1, v0, Lcom/amazon/kcp/library/fragments/CollectionItemsReorderableRecyclerFragment$newAdapter$1;->this$0:Lcom/amazon/kcp/library/fragments/CollectionItemsReorderableRecyclerFragment;

    invoke-virtual {v1}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getRecyclerLayoutType()Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;

    move-result-object v1

    sget-object v2, Lcom/amazon/kcp/library/fragments/CollectionItemsReorderableRecyclerFragment$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/library/FastRecyclerAdapter;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v1, 0x0

    .line 85
    iget-object v3, v0, Lcom/amazon/kcp/library/fragments/CollectionItemsReorderableRecyclerFragment$newAdapter$1;->this$0:Lcom/amazon/kcp/library/fragments/CollectionItemsReorderableRecyclerFragment;

    invoke-virtual {v3}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getGridItemHeight()I

    move-result v6

    .line 86
    iget-object v3, v0, Lcom/amazon/kcp/library/fragments/CollectionItemsReorderableRecyclerFragment$newAdapter$1;->this$0:Lcom/amazon/kcp/library/fragments/CollectionItemsReorderableRecyclerFragment;

    invoke-virtual {v3}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getGridItemWidth()I

    move-result v7

    .line 87
    iget-object v3, v0, Lcom/amazon/kcp/library/fragments/CollectionItemsReorderableRecyclerFragment$newAdapter$1;->this$0:Lcom/amazon/kcp/library/fragments/CollectionItemsReorderableRecyclerFragment;

    invoke-virtual {v3}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getGridRowPadding()I

    move-result v8

    .line 89
    sget-object v10, Lcom/amazon/kcp/cover/badge/BadgeSource;->COLLECTIONS:Lcom/amazon/kcp/cover/badge/BadgeSource;

    move-object/from16 v3, p5

    move-object v4, p2

    move v5, v1

    move/from16 v9, p4

    .line 80
    invoke-static/range {v2 .. v10}, Lcom/amazon/kcp/cover/LibraryCoverFactory;->bindDetailsGridCover(Landroid/content/Context;Lcom/amazon/kcp/library/ILibraryDisplayItem;Landroid/view/View;ZIIIILcom/amazon/kcp/cover/badge/BadgeSource;)Landroid/view/View;

    goto :goto_0

    .line 70
    :cond_1
    iget-object v1, v0, Lcom/amazon/kcp/library/fragments/CollectionItemsReorderableRecyclerFragment$newAdapter$1;->this$0:Lcom/amazon/kcp/library/fragments/CollectionItemsReorderableRecyclerFragment;

    invoke-static {v1}, Lcom/amazon/kcp/library/fragments/CollectionItemsReorderableRecyclerFragment;->access$getGridCoverProvider$p(Lcom/amazon/kcp/library/fragments/CollectionItemsReorderableRecyclerFragment;)Lcom/amazon/kcp/cover/GridCoverProvider;

    move-result-object v2

    .line 71
    invoke-virtual {p0}, Lcom/amazon/kcp/library/FastRecyclerAdapter;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v6, 0x0

    .line 75
    iget-object v1, v0, Lcom/amazon/kcp/library/fragments/CollectionItemsReorderableRecyclerFragment$newAdapter$1;->this$0:Lcom/amazon/kcp/library/fragments/CollectionItemsReorderableRecyclerFragment;

    invoke-virtual {v1}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getGridItemHeight()I

    move-result v7

    .line 76
    iget-object v1, v0, Lcom/amazon/kcp/library/fragments/CollectionItemsReorderableRecyclerFragment$newAdapter$1;->this$0:Lcom/amazon/kcp/library/fragments/CollectionItemsReorderableRecyclerFragment;

    invoke-virtual {v1}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getGridItemWidth()I

    move-result v8

    .line 77
    iget-object v1, v0, Lcom/amazon/kcp/library/fragments/CollectionItemsReorderableRecyclerFragment$newAdapter$1;->this$0:Lcom/amazon/kcp/library/fragments/CollectionItemsReorderableRecyclerFragment;

    invoke-virtual {v1}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getGridRowPadding()I

    move-result v9

    .line 79
    sget-object v11, Lcom/amazon/kcp/cover/badge/BadgeSource;->COLLECTIONS:Lcom/amazon/kcp/cover/badge/BadgeSource;

    move-object/from16 v4, p5

    move-object v5, p2

    move/from16 v10, p4

    .line 70
    invoke-interface/range {v2 .. v11}, Lcom/amazon/kcp/cover/GridCoverProvider;->bindGridCover(Landroid/content/Context;Lcom/amazon/kcp/library/ILibraryDisplayItem;Landroid/view/View;ZIIIILcom/amazon/kcp/cover/badge/BadgeSource;)Landroid/view/View;

    goto :goto_0

    .line 64
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/kcp/library/FastRecyclerAdapter;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v1, 0x0

    .line 69
    sget-object v7, Lcom/amazon/kcp/cover/badge/BadgeSource;->COLLECTIONS:Lcom/amazon/kcp/cover/badge/BadgeSource;

    move-object/from16 v3, p5

    move-object v4, p2

    move v5, v1

    move/from16 v6, p4

    .line 63
    invoke-static/range {v2 .. v7}, Lcom/amazon/kcp/cover/LibraryCoverFactory;->bindListRow(Landroid/content/Context;Lcom/amazon/kcp/library/ILibraryDisplayItem;Landroid/view/View;ZILcom/amazon/kcp/cover/badge/BadgeSource;)Landroid/view/View;

    :goto_0
    return-void
.end method

.method public bridge synthetic bindView(Lcom/amazon/kcp/library/FastRecyclerViewHolder;Landroid/view/View;Landroid/content/Context;ILjava/lang/Object;)V
    .locals 0

    .line 52
    check-cast p5, Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-virtual/range {p0 .. p5}, Lcom/amazon/kcp/library/fragments/CollectionItemsReorderableRecyclerFragment$newAdapter$1;->bindView(Lcom/amazon/kcp/library/FastRecyclerViewHolder;Landroid/view/View;Landroid/content/Context;ILcom/amazon/kcp/library/ILibraryDisplayItem;)V

    return-void
.end method

.method public itemId(Lcom/amazon/kcp/library/ILibraryDisplayItem;)J
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    invoke-interface {p1}, Lcom/amazon/kcp/library/ICoverCacheable;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public bridge synthetic itemId(Ljava/lang/Object;)J
    .locals 2

    .line 52
    check-cast p1, Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/fragments/CollectionItemsReorderableRecyclerFragment$newAdapter$1;->itemId(Lcom/amazon/kcp/library/ILibraryDisplayItem;)J

    move-result-wide v0

    return-wide v0
.end method

.method public newView(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 2

    const-string p3, "context"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "parent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/CollectionItemsReorderableRecyclerFragment$newAdapter$1;->this$0:Lcom/amazon/kcp/library/fragments/CollectionItemsReorderableRecyclerFragment;

    invoke-virtual {p1}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getRecyclerLayoutType()Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;

    move-result-object p1

    sget-object p2, Lcom/amazon/kcp/library/fragments/CollectionItemsReorderableRecyclerFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/amazon/kcp/library/FastRecyclerAdapter;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/kcp/library/fragments/CollectionItemsReorderableRecyclerFragment$newAdapter$1;->this$0:Lcom/amazon/kcp/library/fragments/CollectionItemsReorderableRecyclerFragment;

    invoke-virtual {p2}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getGridItemHeight()I

    move-result p2

    iget-object p3, p0, Lcom/amazon/kcp/library/fragments/CollectionItemsReorderableRecyclerFragment$newAdapter$1;->this$0:Lcom/amazon/kcp/library/fragments/CollectionItemsReorderableRecyclerFragment;

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

    .line 56
    :cond_1
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/CollectionItemsReorderableRecyclerFragment$newAdapter$1;->this$0:Lcom/amazon/kcp/library/fragments/CollectionItemsReorderableRecyclerFragment;

    invoke-static {p1}, Lcom/amazon/kcp/library/fragments/CollectionItemsReorderableRecyclerFragment;->access$getGridCoverProvider$p(Lcom/amazon/kcp/library/fragments/CollectionItemsReorderableRecyclerFragment;)Lcom/amazon/kcp/cover/GridCoverProvider;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazon/kcp/library/FastRecyclerAdapter;->getActivity()Landroid/app/Activity;

    move-result-object p2

    iget-object p3, p0, Lcom/amazon/kcp/library/fragments/CollectionItemsReorderableRecyclerFragment$newAdapter$1;->this$0:Lcom/amazon/kcp/library/fragments/CollectionItemsReorderableRecyclerFragment;

    invoke-virtual {p3}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getGridItemHeight()I

    move-result p3

    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/CollectionItemsReorderableRecyclerFragment$newAdapter$1;->this$0:Lcom/amazon/kcp/library/fragments/CollectionItemsReorderableRecyclerFragment;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getGridItemWidth()I

    move-result v0

    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/CollectionItemsReorderableRecyclerFragment$newAdapter$1;->this$0:Lcom/amazon/kcp/library/fragments/CollectionItemsReorderableRecyclerFragment;

    invoke-virtual {v1}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getGridRowPadding()I

    move-result v1

    invoke-interface {p1, p2, p3, v0, v1}, Lcom/amazon/kcp/cover/GridCoverProvider;->newGridCover(Landroid/content/Context;III)Landroid/view/View;

    move-result-object p1

    const-string p2, "gridCoverProvider.newGri\u2026temWidth, gridRowPadding)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 55
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

.method public onItemFinishedMoving(I)V
    .locals 4

    .line 102
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/CollectionItemsReorderableRecyclerFragment$newAdapter$1;->this$0:Lcom/amazon/kcp/library/fragments/CollectionItemsReorderableRecyclerFragment;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getRecyclerLayoutType()Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/library/fragments/CollectionItemsReorderableRecyclerFragment$WhenMappings;->$EnumSwitchMapping$3:[I

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

    .line 105
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/CollectionItemsReorderableRecyclerFragment$newAdapter$1;->this$0:Lcom/amazon/kcp/library/fragments/CollectionItemsReorderableRecyclerFragment;

    invoke-static {v0}, Lcom/amazon/kcp/library/fragments/CollectionItemsReorderableRecyclerFragment;->access$getGridCoverProvider$p(Lcom/amazon/kcp/library/fragments/CollectionItemsReorderableRecyclerFragment;)Lcom/amazon/kcp/cover/GridCoverProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/cover/GridCoverProvider;->getGridCoverEvent()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gridCoverProvider.gridCoverEvent"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "CollectionItemSortOrderChangedViaList"

    .line 107
    :goto_0
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v3, "EditCollectionActivity"

    invoke-virtual {v1, v3, v0, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    .line 108
    invoke-virtual {p0}, Lcom/amazon/kcp/library/FastRecyclerAdapter;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v0, Lcom/amazon/kcp/library/EditCollectionActivity;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/EditCollectionActivity;->onItemMoved()V

    .line 109
    invoke-static {}, Lcom/amazon/kindle/collections/CollectionsManagerHolder;->getInstance()Lcom/amazon/kindle/collections/ICollectionsManager;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/FastRecyclerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-interface {v1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getCollectionItem()Lcom/amazon/kindle/collections/dto/ICollectionItem;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v2, "getItem(toPosition).collectionItem!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1, p1}, Lcom/amazon/kindle/collections/ICollectionsManager;->addOrMoveCollectionItemToIndex(Lcom/amazon/kindle/collections/dto/ICollectionItem;I)Z

    return-void

    .line 108
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo v0, "null cannot be cast to non-null type com.amazon.kcp.library.EditCollectionActivity"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public recycleView(Lcom/amazon/kcp/library/FastRecyclerViewHolder;Landroid/view/View;I)V
    .locals 0

    const-string/jumbo p3, "viewHolder"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "view"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/CollectionItemsReorderableRecyclerFragment$newAdapter$1;->this$0:Lcom/amazon/kcp/library/fragments/CollectionItemsReorderableRecyclerFragment;

    invoke-virtual {p1}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getRecyclerLayoutType()Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;

    move-result-object p1

    sget-object p3, Lcom/amazon/kcp/library/fragments/CollectionItemsReorderableRecyclerFragment$WhenMappings;->$EnumSwitchMapping$2:[I

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

    .line 97
    :cond_0
    invoke-static {p2}, Lcom/amazon/kcp/cover/LibraryCoverFactory;->recycleDetailsGridCover(Landroid/view/View;)V

    goto :goto_0

    .line 96
    :cond_1
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/CollectionItemsReorderableRecyclerFragment$newAdapter$1;->this$0:Lcom/amazon/kcp/library/fragments/CollectionItemsReorderableRecyclerFragment;

    invoke-static {p1}, Lcom/amazon/kcp/library/fragments/CollectionItemsReorderableRecyclerFragment;->access$getGridCoverProvider$p(Lcom/amazon/kcp/library/fragments/CollectionItemsReorderableRecyclerFragment;)Lcom/amazon/kcp/cover/GridCoverProvider;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/amazon/kcp/cover/GridCoverProvider;->recycleGridCover(Landroid/view/View;)V

    goto :goto_0

    .line 95
    :cond_2
    invoke-static {p2}, Lcom/amazon/kcp/cover/LibraryCoverFactory;->recycleListRow(Landroid/view/View;)V

    :goto_0
    return-void
.end method
