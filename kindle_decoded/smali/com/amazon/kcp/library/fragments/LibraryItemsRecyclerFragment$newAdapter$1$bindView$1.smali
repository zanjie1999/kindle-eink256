.class public final Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment$newAdapter$1$bindView$1;
.super Lcom/amazon/kcp/library/BindCoverViewCallback;
.source "LibraryItemsRecyclerFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment$newAdapter$1;->bindView(Lcom/amazon/kcp/library/FastRecyclerViewHolder;Landroid/view/View;Landroid/content/Context;ILcom/amazon/kcp/library/ILibraryDisplayItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $position:I

.field final synthetic $view:Landroid/view/View;

.field final synthetic this$0:Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment$newAdapter$1;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment$newAdapter$1;Landroid/content/Context;Landroid/view/View;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/View;",
            "II)V"
        }
    .end annotation

    .line 42
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment$newAdapter$1$bindView$1;->this$0:Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment$newAdapter$1;

    iput-object p2, p0, Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment$newAdapter$1$bindView$1;->$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment$newAdapter$1$bindView$1;->$view:Landroid/view/View;

    iput p4, p0, Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment$newAdapter$1$bindView$1;->$position:I

    invoke-direct {p0, p5}, Lcom/amazon/kcp/library/BindCoverViewCallback;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bindCover(Lcom/amazon/kcp/library/ILibraryDisplayItem;)V
    .locals 10

    .line 44
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment$newAdapter$1$bindView$1;->this$0:Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment$newAdapter$1;

    iget-object v0, v0, Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment$newAdapter$1;->this$0:Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getRecyclerLayoutType()Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment$newAdapter$1$bindView$1;->$context:Landroid/content/Context;

    .line 65
    iget-object v3, p0, Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment$newAdapter$1$bindView$1;->$view:Landroid/view/View;

    .line 66
    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment$newAdapter$1$bindView$1;->this$0:Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment$newAdapter$1;

    iget-object v1, v1, Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment$newAdapter$1;->this$0:Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment;

    invoke-virtual {v1}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->getHelper()Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->getFilter()Lcom/amazon/kcp/library/LibraryContentFilter;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/amazon/kcp/util/LibraryUtils;->isConsolidated(Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kcp/library/LibraryContentFilter;)Z

    move-result v4

    .line 67
    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment$newAdapter$1$bindView$1;->this$0:Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment$newAdapter$1;

    iget-object v1, v1, Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment$newAdapter$1;->this$0:Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment;

    invoke-virtual {v1}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getGridItemHeight()I

    move-result v5

    .line 68
    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment$newAdapter$1$bindView$1;->this$0:Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment$newAdapter$1;

    iget-object v1, v1, Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment$newAdapter$1;->this$0:Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment;

    invoke-virtual {v1}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getGridItemWidth()I

    move-result v6

    .line 69
    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment$newAdapter$1$bindView$1;->this$0:Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment$newAdapter$1;

    iget-object v1, v1, Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment$newAdapter$1;->this$0:Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment;

    invoke-virtual {v1}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getGridRowPadding()I

    move-result v7

    .line 70
    iget v8, p0, Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment$newAdapter$1$bindView$1;->$position:I

    .line 71
    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment$newAdapter$1$bindView$1;->this$0:Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment$newAdapter$1;

    iget-object v1, v1, Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment$newAdapter$1;->this$0:Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment;

    invoke-virtual {v1}, Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment;->badgeSource()Lcom/amazon/kcp/cover/badge/BadgeSource;

    move-result-object v9

    move-object v1, p1

    move-object v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move-object v8, v9

    .line 62
    invoke-static/range {v0 .. v8}, Lcom/amazon/kcp/cover/LibraryCoverFactory;->bindDetailsGridCover(Landroid/content/Context;Lcom/amazon/kcp/library/ILibraryDisplayItem;Landroid/view/View;ZIIIILcom/amazon/kcp/cover/badge/BadgeSource;)Landroid/view/View;

    goto :goto_0

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment$newAdapter$1$bindView$1;->this$0:Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment$newAdapter$1;

    iget-object v0, v0, Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment$newAdapter$1;->this$0:Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment;

    invoke-static {v0}, Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment;->access$getGridCoverProvider$p(Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment;)Lcom/amazon/kcp/cover/GridCoverProvider;

    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment$newAdapter$1$bindView$1;->$context:Landroid/content/Context;

    .line 55
    iget-object v3, p0, Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment$newAdapter$1$bindView$1;->$view:Landroid/view/View;

    .line 56
    iget-object v4, p0, Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment$newAdapter$1$bindView$1;->this$0:Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment$newAdapter$1;

    iget-object v4, v4, Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment$newAdapter$1;->this$0:Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment;

    invoke-virtual {v4}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->getHelper()Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->getFilter()Lcom/amazon/kcp/library/LibraryContentFilter;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/amazon/kcp/util/LibraryUtils;->isConsolidated(Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kcp/library/LibraryContentFilter;)Z

    move-result v4

    .line 57
    iget-object v5, p0, Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment$newAdapter$1$bindView$1;->this$0:Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment$newAdapter$1;

    iget-object v5, v5, Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment$newAdapter$1;->this$0:Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment;

    invoke-virtual {v5}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getGridItemHeight()I

    move-result v5

    .line 58
    iget-object v6, p0, Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment$newAdapter$1$bindView$1;->this$0:Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment$newAdapter$1;

    iget-object v6, v6, Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment$newAdapter$1;->this$0:Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment;

    invoke-virtual {v6}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getGridItemWidth()I

    move-result v6

    .line 59
    iget-object v7, p0, Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment$newAdapter$1$bindView$1;->this$0:Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment$newAdapter$1;

    iget-object v7, v7, Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment$newAdapter$1;->this$0:Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment;

    invoke-virtual {v7}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getGridRowPadding()I

    move-result v7

    .line 60
    iget v8, p0, Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment$newAdapter$1$bindView$1;->$position:I

    .line 61
    iget-object v9, p0, Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment$newAdapter$1$bindView$1;->this$0:Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment$newAdapter$1;

    iget-object v9, v9, Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment$newAdapter$1;->this$0:Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment;

    invoke-virtual {v9}, Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment;->badgeSource()Lcom/amazon/kcp/cover/badge/BadgeSource;

    move-result-object v9

    move-object v2, p1

    .line 52
    invoke-interface/range {v0 .. v9}, Lcom/amazon/kcp/cover/GridCoverProvider;->bindGridCover(Landroid/content/Context;Lcom/amazon/kcp/library/ILibraryDisplayItem;Landroid/view/View;ZIIIILcom/amazon/kcp/cover/badge/BadgeSource;)Landroid/view/View;

    goto :goto_0

    .line 46
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment$newAdapter$1$bindView$1;->$context:Landroid/content/Context;

    .line 48
    iget-object v3, p0, Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment$newAdapter$1$bindView$1;->$view:Landroid/view/View;

    .line 49
    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment$newAdapter$1$bindView$1;->this$0:Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment$newAdapter$1;

    iget-object v1, v1, Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment$newAdapter$1;->this$0:Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment;

    invoke-virtual {v1}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->getHelper()Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->getFilter()Lcom/amazon/kcp/library/LibraryContentFilter;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/amazon/kcp/util/LibraryUtils;->isConsolidated(Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kcp/library/LibraryContentFilter;)Z

    move-result v4

    .line 50
    iget v5, p0, Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment$newAdapter$1$bindView$1;->$position:I

    .line 51
    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment$newAdapter$1$bindView$1;->this$0:Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment$newAdapter$1;

    iget-object v1, v1, Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment$newAdapter$1;->this$0:Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment;

    invoke-virtual {v1}, Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment;->badgeSource()Lcom/amazon/kcp/cover/badge/BadgeSource;

    move-result-object v6

    move-object v1, p1

    move-object v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    .line 45
    invoke-static/range {v0 .. v5}, Lcom/amazon/kcp/cover/LibraryCoverFactory;->bindListRow(Landroid/content/Context;Lcom/amazon/kcp/library/ILibraryDisplayItem;Landroid/view/View;ZILcom/amazon/kcp/cover/badge/BadgeSource;)Landroid/view/View;

    :goto_0
    return-void
.end method
