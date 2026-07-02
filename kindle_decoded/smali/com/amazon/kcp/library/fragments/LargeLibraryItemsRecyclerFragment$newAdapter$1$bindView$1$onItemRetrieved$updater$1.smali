.class public final Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1$bindView$1$onItemRetrieved$updater$1;
.super Ljava/lang/Object;
.source "LargeLibraryItemsRecyclerFragment.kt"

# interfaces
.implements Lcom/amazon/kcp/library/fragments/RecyclerFragmentUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1$bindView$1;->onItemRetrieved(Lcom/amazon/kcp/library/ILibraryDisplayItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1$bindView$1;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1$bindView$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 463
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1$bindView$1$onItemRetrieved$updater$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1$bindView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setDataOnView(Landroid/view/View;Landroid/content/Context;ILcom/amazon/kcp/library/ILibraryDisplayItem;)V
    .locals 13

    move-object v0, p0

    move-object/from16 v1, p4

    const-string/jumbo v2, "view"

    move-object v6, p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "context"

    move-object v4, p2

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "libraryItem"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 465
    iget-object v2, v0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1$bindView$1$onItemRetrieved$updater$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1$bindView$1;

    iget-object v2, v2, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1$bindView$1;->$llViewHolder:Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v3, "llViewHolder.itemView"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 467
    iget-object v2, v0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1$bindView$1$onItemRetrieved$updater$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1$bindView$1;

    iget-object v2, v2, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1$bindView$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1;

    iget-object v2, v2, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;

    invoke-virtual {v2}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->getHelper()Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsFragmentHelper;

    iget-object v3, v0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1$bindView$1$onItemRetrieved$updater$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1$bindView$1;

    iget-object v3, v3, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1$bindView$1;->$llViewHolder:Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;

    invoke-virtual {v2, v1, v3}, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsFragmentHelper;->applyFilter(Lcom/amazon/kcp/library/ILibraryDisplayItem;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Lcom/amazon/kcp/library/ILibraryDisplayItem;

    move-result-object v1

    .line 470
    invoke-interface {v1}, Lcom/amazon/kcp/library/ICoverCacheable;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    .line 474
    :cond_0
    iget-object v2, v0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1$bindView$1$onItemRetrieved$updater$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1$bindView$1;

    iget-object v2, v2, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1$bindView$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1;

    iget-object v2, v2, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;

    invoke-virtual {v2}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getRecyclerLayoutType()Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;

    move-result-object v2

    sget-object v3, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    goto/16 :goto_0

    .line 496
    :cond_1
    iget-object v2, v0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1$bindView$1$onItemRetrieved$updater$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1$bindView$1;

    iget-object v2, v2, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1$bindView$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1;

    iget-object v2, v2, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;

    invoke-virtual {v2}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->getHelper()Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->getFilter()Lcom/amazon/kcp/library/LibraryContentFilter;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/kcp/util/LibraryUtils;->isConsolidated(Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kcp/library/LibraryContentFilter;)Z

    move-result v2

    .line 497
    iget-object v3, v0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1$bindView$1$onItemRetrieved$updater$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1$bindView$1;

    iget-object v3, v3, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1$bindView$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1;

    iget-object v3, v3, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;

    invoke-virtual {v3}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getGridItemHeight()I

    move-result v7

    .line 498
    iget-object v3, v0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1$bindView$1$onItemRetrieved$updater$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1$bindView$1;

    iget-object v3, v3, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1$bindView$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1;

    iget-object v3, v3, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;

    invoke-virtual {v3}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getGridItemWidth()I

    move-result v8

    .line 499
    iget-object v3, v0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1$bindView$1$onItemRetrieved$updater$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1$bindView$1;

    iget-object v3, v3, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1$bindView$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1;

    iget-object v3, v3, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;

    invoke-virtual {v3}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getGridRowPadding()I

    move-result v9

    .line 501
    iget-object v3, v0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1$bindView$1$onItemRetrieved$updater$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1$bindView$1;

    iget-object v3, v3, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1$bindView$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1;

    iget-object v3, v3, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;

    invoke-virtual {v3}, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->badgeSource()Lcom/amazon/kcp/cover/badge/BadgeSource;

    move-result-object v11

    move-object v3, p2

    move-object v4, v1

    move-object v5, p1

    move v6, v2

    move/from16 v10, p3

    .line 492
    invoke-static/range {v3 .. v11}, Lcom/amazon/kcp/cover/LibraryCoverFactory;->bindDetailsGridCover(Landroid/content/Context;Lcom/amazon/kcp/library/ILibraryDisplayItem;Landroid/view/View;ZIIIILcom/amazon/kcp/cover/badge/BadgeSource;)Landroid/view/View;

    goto/16 :goto_0

    .line 482
    :cond_2
    iget-object v2, v0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1$bindView$1$onItemRetrieved$updater$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1$bindView$1;

    iget-object v2, v2, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1$bindView$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1;

    iget-object v2, v2, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;

    invoke-static {v2}, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->access$getGridCoverProvider$p(Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;)Lcom/amazon/kcp/cover/GridCoverProvider;

    move-result-object v3

    .line 486
    iget-object v2, v0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1$bindView$1$onItemRetrieved$updater$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1$bindView$1;

    iget-object v2, v2, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1$bindView$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1;

    iget-object v2, v2, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;

    invoke-virtual {v2}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->getHelper()Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->getFilter()Lcom/amazon/kcp/library/LibraryContentFilter;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/kcp/util/LibraryUtils;->isConsolidated(Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kcp/library/LibraryContentFilter;)Z

    move-result v7

    .line 487
    iget-object v2, v0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1$bindView$1$onItemRetrieved$updater$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1$bindView$1;

    iget-object v2, v2, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1$bindView$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1;

    iget-object v2, v2, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;

    invoke-virtual {v2}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getGridItemHeight()I

    move-result v8

    .line 488
    iget-object v2, v0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1$bindView$1$onItemRetrieved$updater$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1$bindView$1;

    iget-object v2, v2, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1$bindView$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1;

    iget-object v2, v2, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;

    invoke-virtual {v2}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getGridItemWidth()I

    move-result v9

    .line 489
    iget-object v2, v0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1$bindView$1$onItemRetrieved$updater$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1$bindView$1;

    iget-object v2, v2, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1$bindView$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1;

    iget-object v2, v2, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;

    invoke-virtual {v2}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getGridRowPadding()I

    move-result v10

    .line 491
    iget-object v2, v0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1$bindView$1$onItemRetrieved$updater$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1$bindView$1;

    iget-object v2, v2, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1$bindView$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1;

    iget-object v2, v2, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;

    invoke-virtual {v2}, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->badgeSource()Lcom/amazon/kcp/cover/badge/BadgeSource;

    move-result-object v12

    move-object v4, p2

    move-object v5, v1

    move-object v6, p1

    move/from16 v11, p3

    .line 482
    invoke-interface/range {v3 .. v12}, Lcom/amazon/kcp/cover/GridCoverProvider;->bindGridCover(Landroid/content/Context;Lcom/amazon/kcp/library/ILibraryDisplayItem;Landroid/view/View;ZIIIILcom/amazon/kcp/cover/badge/BadgeSource;)Landroid/view/View;

    goto :goto_0

    .line 479
    :cond_3
    iget-object v2, v0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1$bindView$1$onItemRetrieved$updater$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1$bindView$1;

    iget-object v2, v2, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1$bindView$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1;

    iget-object v2, v2, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;

    invoke-virtual {v2}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->getHelper()Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->getFilter()Lcom/amazon/kcp/library/LibraryContentFilter;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/kcp/util/LibraryUtils;->isConsolidated(Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kcp/library/LibraryContentFilter;)Z

    move-result v2

    .line 481
    iget-object v3, v0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1$bindView$1$onItemRetrieved$updater$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1$bindView$1;

    iget-object v3, v3, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1$bindView$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1;

    iget-object v3, v3, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;

    invoke-virtual {v3}, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->badgeSource()Lcom/amazon/kcp/cover/badge/BadgeSource;

    move-result-object v8

    move-object v3, p2

    move-object v4, v1

    move-object v5, p1

    move v6, v2

    move/from16 v7, p3

    .line 475
    invoke-static/range {v3 .. v8}, Lcom/amazon/kcp/cover/LibraryCoverFactory;->bindListRow(Landroid/content/Context;Lcom/amazon/kcp/library/ILibraryDisplayItem;Landroid/view/View;ZILcom/amazon/kcp/cover/badge/BadgeSource;)Landroid/view/View;

    :goto_0
    return-void
.end method
