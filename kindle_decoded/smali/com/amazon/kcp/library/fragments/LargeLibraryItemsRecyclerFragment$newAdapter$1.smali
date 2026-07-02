.class public final Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1;
.super Lcom/amazon/kcp/library/FastRecyclerAdapter;
.source "LargeLibraryItemsRecyclerFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->newAdapter()Lcom/amazon/kcp/library/FastRecyclerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kcp/library/FastRecyclerAdapter<",
        "Lcom/amazon/kindle/observablemodel/ItemID;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;Landroid/app/Activity;Landroid/view/ActionMode$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/ActionMode$Callback;",
            ")V"
        }
    .end annotation

    .line 434
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;

    invoke-direct {p0, p2, p3}, Lcom/amazon/kcp/library/FastRecyclerAdapter;-><init>(Landroid/app/Activity;Landroid/view/ActionMode$Callback;)V

    return-void
.end method


# virtual methods
.method public bindView(Lcom/amazon/kcp/library/FastRecyclerViewHolder;Landroid/view/View;Landroid/content/Context;ILcom/amazon/kindle/observablemodel/ItemID;)V
    .locals 10

    const-string/jumbo v0, "viewHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 448
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;

    invoke-static {v0}, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->access$getAdapterHelper$p(Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;)Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p4, p5}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->bindView(Lcom/amazon/kcp/library/FastRecyclerViewHolder;ILcom/amazon/kindle/observablemodel/ItemID;)Z

    move-result v0

    .line 449
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string/jumbo v2, "viewHolder.itemView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 451
    move-object v6, p1

    check-cast v6, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;

    .line 453
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->getHelper()Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsFragmentHelper;

    new-instance v1, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1$bindView$1;

    move-object v2, v1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p5

    move-object v7, p2

    move-object v8, p3

    move v9, p4

    invoke-direct/range {v2 .. v9}, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1$bindView$1;-><init>(Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1;Lcom/amazon/kcp/library/FastRecyclerViewHolder;Lcom/amazon/kindle/observablemodel/ItemID;Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;Landroid/view/View;Landroid/content/Context;I)V

    invoke-virtual {v0, p5, v1}, Lcom/amazon/kcp/library/fragments/AbstractLargeLibraryFragmentHelper;->retrieveLibraryItem(Lcom/amazon/kindle/observablemodel/ItemID;Lcom/amazon/kcp/integrator/ILibraryRetrievalListener;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo p2, "null cannot be cast to non-null type com.amazon.kcp.library.fragments.LargeLibraryItemsFragmentHelper"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic bindView(Lcom/amazon/kcp/library/FastRecyclerViewHolder;Landroid/view/View;Landroid/content/Context;ILjava/lang/Object;)V
    .locals 0

    .line 434
    check-cast p5, Lcom/amazon/kindle/observablemodel/ItemID;

    invoke-virtual/range {p0 .. p5}, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1;->bindView(Lcom/amazon/kcp/library/FastRecyclerViewHolder;Landroid/view/View;Landroid/content/Context;ILcom/amazon/kindle/observablemodel/ItemID;)V

    return-void
.end method

.method public canSelectItem(Lcom/amazon/kindle/observablemodel/ItemID;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 535
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;

    invoke-virtual {v1}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->getHelper()Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;

    move-result-object v1

    if-eqz v1, :cond_2

    check-cast v1, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsFragmentHelper;

    invoke-virtual {v1, p1}, Lcom/amazon/kcp/library/fragments/AbstractLargeLibraryFragmentHelper;->retrieveLibraryItem(Lcom/amazon/kindle/observablemodel/ItemID;)Lcom/amazon/kcp/library/ILibraryDisplayItem;

    move-result-object p1

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 536
    invoke-interface {p1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->isMultiSelectionEnabled()Z

    move-result v2

    if-ne v2, v1, :cond_1

    iget-object v2, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;

    invoke-virtual {v2}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->getHelper()Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->getFilter()Lcom/amazon/kcp/library/LibraryContentFilter;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/amazon/kcp/util/LibraryUtils;->isConsolidated(Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kcp/library/LibraryContentFilter;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 535
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo v0, "null cannot be cast to non-null type com.amazon.kcp.library.fragments.LargeLibraryItemsFragmentHelper"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic canSelectItem(Ljava/lang/Object;)Z
    .locals 0

    .line 434
    check-cast p1, Lcom/amazon/kindle/observablemodel/ItemID;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1;->canSelectItem(Lcom/amazon/kindle/observablemodel/ItemID;)Z

    move-result p1

    return p1
.end method

.method public getItem(I)Lcom/amazon/kindle/observablemodel/ItemID;
    .locals 1

    .line 530
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;

    invoke-static {v0}, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->access$getAdapterHelper$p(Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;)Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->getItem(I)Lcom/amazon/kindle/observablemodel/ItemID;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 434
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1;->getItem(I)Lcom/amazon/kindle/observablemodel/ItemID;

    move-result-object p1

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 526
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;

    invoke-static {v0}, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->access$getAdapterHelper$p(Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;)Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->itemCount()I

    move-result v0

    return v0
.end method

.method public itemId(Lcom/amazon/kindle/observablemodel/ItemID;)J
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 522
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;

    invoke-static {v0}, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->access$getAdapterHelper$p(Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;)Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->itemId(Lcom/amazon/kindle/observablemodel/ItemID;)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic itemId(Ljava/lang/Object;)J
    .locals 2

    .line 434
    check-cast p1, Lcom/amazon/kindle/observablemodel/ItemID;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1;->itemId(Lcom/amazon/kindle/observablemodel/ItemID;)J

    move-result-wide v0

    return-wide v0
.end method

.method public newView(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 2

    const-string p3, "context"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p3, "parent"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 440
    iget-object p2, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;

    invoke-virtual {p2}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getRecyclerLayoutType()Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;

    move-result-object p2

    sget-object p3, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, p3, p2

    const/4 p3, 0x1

    if-eq p2, p3, :cond_2

    const/4 p3, 0x2

    if-eq p2, p3, :cond_1

    const/4 p3, 0x3

    if-ne p2, p3, :cond_0

    .line 443
    iget-object p2, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;

    invoke-virtual {p2}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getGridItemHeight()I

    move-result p2

    iget-object p3, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;

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

    .line 442
    :cond_1
    iget-object p2, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;

    invoke-static {p2}, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->access$getGridCoverProvider$p(Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;)Lcom/amazon/kcp/cover/GridCoverProvider;

    move-result-object p2

    iget-object p3, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;

    invoke-virtual {p3}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getGridItemHeight()I

    move-result p3

    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getGridItemWidth()I

    move-result v0

    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;

    invoke-virtual {v1}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getGridRowPadding()I

    move-result v1

    invoke-interface {p2, p1, p3, v0, v1}, Lcom/amazon/kcp/cover/GridCoverProvider;->newGridCover(Landroid/content/Context;III)Landroid/view/View;

    move-result-object p1

    const-string p2, "gridCoverProvider.newGri\u2026temWidth, gridRowPadding)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 441
    :cond_2
    invoke-static {p1}, Lcom/amazon/kcp/cover/LibraryCoverFactory;->newListRow(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    const-string p2, "LibraryCoverFactory.newListRow(context)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 434
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/amazon/kcp/library/FastRecyclerViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/amazon/kcp/library/FastRecyclerViewHolder;
    .locals 1

    const-string/jumbo v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 436
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;

    invoke-static {v0}, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->access$getAdapterHelper$p(Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;)Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/library/FastRecyclerAdapter;->createView(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->createViewHolder(Landroid/view/View;)Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public recycleView(Lcom/amazon/kcp/library/FastRecyclerViewHolder;Landroid/view/View;I)V
    .locals 0

    const-string/jumbo p3, "viewHolder"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p3, "view"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 513
    iget-object p3, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;

    invoke-static {p3}, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->access$getAdapterHelper$p(Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;)Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->recycleView(Lcom/amazon/kcp/library/FastRecyclerViewHolder;)V

    .line 514
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;

    invoke-virtual {p1}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getRecyclerLayoutType()Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;

    move-result-object p1

    sget-object p3, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$WhenMappings;->$EnumSwitchMapping$2:[I

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

    .line 517
    :cond_0
    invoke-static {p2}, Lcom/amazon/kcp/cover/LibraryCoverFactory;->recycleDetailsGridCover(Landroid/view/View;)V

    goto :goto_0

    .line 516
    :cond_1
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;

    invoke-static {p1}, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->access$getGridCoverProvider$p(Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;)Lcom/amazon/kcp/cover/GridCoverProvider;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/amazon/kcp/cover/GridCoverProvider;->recycleGridCover(Landroid/view/View;)V

    goto :goto_0

    .line 515
    :cond_2
    invoke-static {p2}, Lcom/amazon/kcp/cover/LibraryCoverFactory;->recycleListRow(Landroid/view/View;)V

    :goto_0
    return-void
.end method
