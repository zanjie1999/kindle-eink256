.class public final Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment$newAdapter$1;
.super Lcom/amazon/kcp/library/FastRecyclerAdapter;
.source "LibraryItemsRecyclerFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment;->newAdapter()Lcom/amazon/kcp/library/FastRecyclerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kcp/library/FastRecyclerAdapter<",
        "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment;Landroid/app/Activity;Landroid/view/ActionMode$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/ActionMode$Callback;",
            ")V"
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment$newAdapter$1;->this$0:Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment;

    invoke-direct {p0, p2, p3}, Lcom/amazon/kcp/library/FastRecyclerAdapter;-><init>(Landroid/app/Activity;Landroid/view/ActionMode$Callback;)V

    return-void
.end method


# virtual methods
.method public bindView(Lcom/amazon/kcp/library/FastRecyclerViewHolder;Landroid/view/View;Landroid/content/Context;ILcom/amazon/kcp/library/ILibraryDisplayItem;)V
    .locals 6

    const-string/jumbo v0, "viewHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "view"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "context"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "item"

    invoke-static {p5, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment$newAdapter$1;->this$0:Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment;

    invoke-virtual {p1}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->getHelper()Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;

    move-result-object p1

    new-instance p5, Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment$newAdapter$1$bindView$1;

    move-object v0, p5

    move-object v1, p0

    move-object v2, p3

    move-object v3, p2

    move v4, p4

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment$newAdapter$1$bindView$1;-><init>(Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment$newAdapter$1;Landroid/content/Context;Landroid/view/View;II)V

    invoke-virtual {p1, p5}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->executeWithLatestData(Lcom/amazon/foundation/internal/IObjectCallback;)V

    return-void
.end method

.method public bridge synthetic bindView(Lcom/amazon/kcp/library/FastRecyclerViewHolder;Landroid/view/View;Landroid/content/Context;ILjava/lang/Object;)V
    .locals 0

    .line 32
    check-cast p5, Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-virtual/range {p0 .. p5}, Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment$newAdapter$1;->bindView(Lcom/amazon/kcp/library/FastRecyclerViewHolder;Landroid/view/View;Landroid/content/Context;ILcom/amazon/kcp/library/ILibraryDisplayItem;)V

    return-void
.end method

.method public canSelectItem(Lcom/amazon/kcp/library/ILibraryDisplayItem;)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 90
    invoke-interface {p1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->isMultiSelectionEnabled()Z

    move-result v1

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment$newAdapter$1;->this$0:Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment;

    invoke-virtual {v1}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->getHelper()Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->getFilter()Lcom/amazon/kcp/library/LibraryContentFilter;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/amazon/kcp/util/LibraryUtils;->isConsolidated(Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kcp/library/LibraryContentFilter;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic canSelectItem(Ljava/lang/Object;)Z
    .locals 0

    .line 32
    check-cast p1, Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment$newAdapter$1;->canSelectItem(Lcom/amazon/kcp/library/ILibraryDisplayItem;)Z

    move-result p1

    return p1
.end method

.method public itemId(Lcom/amazon/kcp/library/ILibraryDisplayItem;)J
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-interface {p1}, Lcom/amazon/kcp/library/ICoverCacheable;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public bridge synthetic itemId(Ljava/lang/Object;)J
    .locals 2

    .line 32
    check-cast p1, Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment$newAdapter$1;->itemId(Lcom/amazon/kcp/library/ILibraryDisplayItem;)J

    move-result-wide v0

    return-wide v0
.end method

.method public newView(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 2

    const-string p3, "context"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p3, "parent"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget-object p2, p0, Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment$newAdapter$1;->this$0:Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment;

    invoke-virtual {p2}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getRecyclerLayoutType()Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;

    move-result-object p2

    sget-object p3, Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, p3, p2

    const/4 p3, 0x1

    if-eq p2, p3, :cond_2

    const/4 p3, 0x2

    if-eq p2, p3, :cond_1

    const/4 p3, 0x3

    if-ne p2, p3, :cond_0

    .line 37
    iget-object p2, p0, Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment$newAdapter$1;->this$0:Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment;

    invoke-virtual {p2}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getGridItemHeight()I

    move-result p2

    iget-object p3, p0, Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment$newAdapter$1;->this$0:Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment;

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

    .line 36
    :cond_1
    iget-object p2, p0, Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment$newAdapter$1;->this$0:Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment;

    invoke-static {p2}, Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment;->access$getGridCoverProvider$p(Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment;)Lcom/amazon/kcp/cover/GridCoverProvider;

    move-result-object p2

    iget-object p3, p0, Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment$newAdapter$1;->this$0:Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment;

    invoke-virtual {p3}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getGridItemHeight()I

    move-result p3

    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment$newAdapter$1;->this$0:Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getGridItemWidth()I

    move-result v0

    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment$newAdapter$1;->this$0:Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment;

    invoke-virtual {v1}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getGridRowPadding()I

    move-result v1

    invoke-interface {p2, p1, p3, v0, v1}, Lcom/amazon/kcp/cover/GridCoverProvider;->newGridCover(Landroid/content/Context;III)Landroid/view/View;

    move-result-object p1

    const-string p2, "gridCoverProvider.newGri\u2026temWidth, gridRowPadding)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 35
    :cond_2
    invoke-static {p1}, Lcom/amazon/kcp/cover/LibraryCoverFactory;->newListRow(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    const-string p2, "LibraryCoverFactory.newListRow(context)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method public recycleView(Lcom/amazon/kcp/library/FastRecyclerViewHolder;Landroid/view/View;I)V
    .locals 0

    const-string/jumbo p3, "viewHolder"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "view"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment$newAdapter$1;->this$0:Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment;

    invoke-virtual {p1}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getRecyclerLayoutType()Lcom/amazon/kcp/library/fragments/RecyclerFragmentLayoutType;

    move-result-object p1

    sget-object p3, Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment$WhenMappings;->$EnumSwitchMapping$2:[I

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

    .line 81
    :cond_0
    invoke-static {p2}, Lcom/amazon/kcp/cover/LibraryCoverFactory;->recycleDetailsGridCover(Landroid/view/View;)V

    goto :goto_0

    .line 80
    :cond_1
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment$newAdapter$1;->this$0:Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment;

    invoke-static {p1}, Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment;->access$getGridCoverProvider$p(Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment;)Lcom/amazon/kcp/cover/GridCoverProvider;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/amazon/kcp/cover/GridCoverProvider;->recycleGridCover(Landroid/view/View;)V

    goto :goto_0

    .line 79
    :cond_2
    invoke-static {p2}, Lcom/amazon/kcp/cover/LibraryCoverFactory;->recycleListRow(Landroid/view/View;)V

    :goto_0
    return-void
.end method
