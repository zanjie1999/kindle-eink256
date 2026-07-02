.class public final Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1$bindView$1;
.super Ljava/lang/Object;
.source "LargeLibraryItemsRecyclerFragment.kt"

# interfaces
.implements Lcom/amazon/kcp/integrator/ILibraryRetrievalListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1;->bindView(Lcom/amazon/kcp/library/FastRecyclerViewHolder;Landroid/view/View;Landroid/content/Context;ILcom/amazon/kindle/observablemodel/ItemID;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kcp/integrator/ILibraryRetrievalListener<",
        "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $item:Lcom/amazon/kindle/observablemodel/ItemID;

.field final synthetic $llViewHolder:Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;

.field final synthetic $position:I

.field final synthetic $view:Landroid/view/View;

.field final synthetic $viewHolder:Lcom/amazon/kcp/library/FastRecyclerViewHolder;

.field final synthetic this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1;Lcom/amazon/kcp/library/FastRecyclerViewHolder;Lcom/amazon/kindle/observablemodel/ItemID;Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;Landroid/view/View;Landroid/content/Context;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/library/FastRecyclerViewHolder;",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            "Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;",
            "Landroid/view/View;",
            "Landroid/content/Context;",
            "I)V"
        }
    .end annotation

    .line 453
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1$bindView$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1;

    iput-object p2, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1$bindView$1;->$viewHolder:Lcom/amazon/kcp/library/FastRecyclerViewHolder;

    iput-object p3, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1$bindView$1;->$item:Lcom/amazon/kindle/observablemodel/ItemID;

    iput-object p4, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1$bindView$1;->$llViewHolder:Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;

    iput-object p5, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1$bindView$1;->$view:Landroid/view/View;

    iput-object p6, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1$bindView$1;->$context:Landroid/content/Context;

    iput p7, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1$bindView$1;->$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onItemRetrieved(Lcom/amazon/kcp/integrator/ILargeLibraryDisplayItem;)V
    .locals 0

    .line 453
    check-cast p1, Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1$bindView$1;->onItemRetrieved(Lcom/amazon/kcp/library/ILibraryDisplayItem;)V

    return-void
.end method

.method public onItemRetrieved(Lcom/amazon/kcp/library/ILibraryDisplayItem;)V
    .locals 8

    const-string v0, "libraryItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 456
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1$bindView$1;->$viewHolder:Lcom/amazon/kcp/library/FastRecyclerViewHolder;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string/jumbo v1, "viewHolder.itemView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 459
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1$bindView$1;->$item:Lcom/amazon/kindle/observablemodel/ItemID;

    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1$bindView$1;->$llViewHolder:Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;

    invoke-virtual {v1}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;->getItemId()Lcom/amazon/kindle/observablemodel/ItemID;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    return-void

    .line 463
    :cond_0
    new-instance v0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1$bindView$1$onItemRetrieved$updater$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1$bindView$1$onItemRetrieved$updater$1;-><init>(Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1$bindView$1;)V

    .line 505
    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1$bindView$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1;

    iget-object v1, v1, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;

    invoke-static {v1}, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->access$getAdapterHelper$p(Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;)Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1$bindView$1;->$llViewHolder:Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;

    iget-object v3, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1$bindView$1;->$view:Landroid/view/View;

    iget-object v4, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1$bindView$1;->$context:Landroid/content/Context;

    iget v5, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1$bindView$1;->$position:I

    move-object v6, p1

    move-object v7, v0

    invoke-virtual/range {v1 .. v7}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->bindViewUpdater(Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;Landroid/view/View;Landroid/content/Context;ILcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kcp/library/fragments/RecyclerFragmentUpdater;)V

    .line 507
    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1$bindView$1;->$view:Landroid/view/View;

    iget-object v2, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1$bindView$1;->$context:Landroid/content/Context;

    iget v3, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1$bindView$1;->$position:I

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$newAdapter$1$bindView$1$onItemRetrieved$updater$1;->setDataOnView(Landroid/view/View;Landroid/content/Context;ILcom/amazon/kcp/library/ILibraryDisplayItem;)V

    return-void
.end method
