.class public final Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment$newAdapter$2$bindView$1;
.super Ljava/lang/Object;
.source "LargeCollectionItemsReorderableRecyclerFragment.kt"

# interfaces
.implements Lcom/amazon/kcp/integrator/ILibraryRetrievalListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment$newAdapter$2;->bindView(Lcom/amazon/kcp/library/FastRecyclerViewHolder;Landroid/view/View;Landroid/content/Context;ILcom/amazon/kindle/observablemodel/ItemID;)V
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
.field final synthetic $position:I

.field final synthetic $view:Landroid/view/View;

.field final synthetic this$0:Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment$newAdapter$2;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment$newAdapter$2;Landroid/view/View;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    .line 81
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment$newAdapter$2$bindView$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment$newAdapter$2;

    iput-object p2, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment$newAdapter$2$bindView$1;->$view:Landroid/view/View;

    iput p3, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment$newAdapter$2$bindView$1;->$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onItemRetrieved(Lcom/amazon/kcp/integrator/ILargeLibraryDisplayItem;)V
    .locals 0

    .line 81
    check-cast p1, Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment$newAdapter$2$bindView$1;->onItemRetrieved(Lcom/amazon/kcp/library/ILibraryDisplayItem;)V

    return-void
.end method

.method public onItemRetrieved(Lcom/amazon/kcp/library/ILibraryDisplayItem;)V
    .locals 11

    const-string v0, "libraryItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment$newAdapter$2$bindView$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment$newAdapter$2;

    iget-object v0, v0, Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment$newAdapter$2;->this$0:Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getRecyclerLayoutType()Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment$newAdapter$2$bindView$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment$newAdapter$2;

    invoke-static {v0}, Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment$newAdapter$2;->access$getActivity$p(Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment$newAdapter$2;)Landroid/app/Activity;

    move-result-object v1

    .line 104
    iget-object v3, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment$newAdapter$2$bindView$1;->$view:Landroid/view/View;

    const/4 v4, 0x0

    .line 106
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment$newAdapter$2$bindView$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment$newAdapter$2;

    iget-object v0, v0, Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment$newAdapter$2;->this$0:Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getGridItemHeight()I

    move-result v5

    .line 107
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment$newAdapter$2$bindView$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment$newAdapter$2;

    iget-object v0, v0, Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment$newAdapter$2;->this$0:Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getGridItemWidth()I

    move-result v6

    .line 108
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment$newAdapter$2$bindView$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment$newAdapter$2;

    iget-object v0, v0, Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment$newAdapter$2;->this$0:Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getGridRowPadding()I

    move-result v7

    .line 109
    iget v8, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment$newAdapter$2$bindView$1;->$position:I

    .line 110
    sget-object v9, Lcom/amazon/kcp/cover/badge/BadgeSource;->COLLECTIONS:Lcom/amazon/kcp/cover/badge/BadgeSource;

    move-object v2, p1

    .line 101
    invoke-static/range {v1 .. v9}, Lcom/amazon/kcp/cover/LibraryCoverFactory;->bindDetailsGridCover(Landroid/content/Context;Lcom/amazon/kcp/library/ILibraryDisplayItem;Landroid/view/View;ZIIIILcom/amazon/kcp/cover/badge/BadgeSource;)Landroid/view/View;

    goto :goto_0

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment$newAdapter$2$bindView$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment$newAdapter$2;

    iget-object v0, v0, Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment$newAdapter$2;->this$0:Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment;

    invoke-static {v0}, Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment;->access$getGridCoverProvider$p(Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment;)Lcom/amazon/kcp/cover/GridCoverProvider;

    move-result-object v1

    .line 92
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment$newAdapter$2$bindView$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment$newAdapter$2;

    invoke-static {v0}, Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment$newAdapter$2;->access$getActivity$p(Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment$newAdapter$2;)Landroid/app/Activity;

    move-result-object v2

    .line 94
    iget-object v4, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment$newAdapter$2$bindView$1;->$view:Landroid/view/View;

    const/4 v5, 0x0

    .line 96
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment$newAdapter$2$bindView$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment$newAdapter$2;

    iget-object v0, v0, Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment$newAdapter$2;->this$0:Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getGridItemHeight()I

    move-result v6

    .line 97
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment$newAdapter$2$bindView$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment$newAdapter$2;

    iget-object v0, v0, Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment$newAdapter$2;->this$0:Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getGridItemWidth()I

    move-result v7

    .line 98
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment$newAdapter$2$bindView$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment$newAdapter$2;

    iget-object v0, v0, Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment$newAdapter$2;->this$0:Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getGridRowPadding()I

    move-result v8

    .line 99
    iget v9, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment$newAdapter$2$bindView$1;->$position:I

    .line 100
    sget-object v10, Lcom/amazon/kcp/cover/badge/BadgeSource;->COLLECTIONS:Lcom/amazon/kcp/cover/badge/BadgeSource;

    move-object v3, p1

    .line 91
    invoke-interface/range {v1 .. v10}, Lcom/amazon/kcp/cover/GridCoverProvider;->bindGridCover(Landroid/content/Context;Lcom/amazon/kcp/library/ILibraryDisplayItem;Landroid/view/View;ZIIIILcom/amazon/kcp/cover/badge/BadgeSource;)Landroid/view/View;

    goto :goto_0

    .line 85
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment$newAdapter$2$bindView$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment$newAdapter$2;

    invoke-static {v0}, Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment$newAdapter$2;->access$getActivity$p(Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment$newAdapter$2;)Landroid/app/Activity;

    move-result-object v1

    .line 87
    iget-object v3, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment$newAdapter$2$bindView$1;->$view:Landroid/view/View;

    const/4 v4, 0x0

    .line 89
    iget v5, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionItemsReorderableRecyclerFragment$newAdapter$2$bindView$1;->$position:I

    .line 90
    sget-object v6, Lcom/amazon/kcp/cover/badge/BadgeSource;->COLLECTIONS:Lcom/amazon/kcp/cover/badge/BadgeSource;

    move-object v2, p1

    .line 84
    invoke-static/range {v1 .. v6}, Lcom/amazon/kcp/cover/LibraryCoverFactory;->bindListRow(Landroid/content/Context;Lcom/amazon/kcp/library/ILibraryDisplayItem;Landroid/view/View;ZILcom/amazon/kcp/cover/badge/BadgeSource;)Landroid/view/View;

    :goto_0
    return-void
.end method
