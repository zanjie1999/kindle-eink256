.class public final Lcom/amazon/kcp/library/fragments/CollectionMultiSelectRecyclerFragment$newAdapter$1;
.super Lcom/amazon/kcp/library/FastRecyclerAdapter;
.source "CollectionMultiSelectRecyclerFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/fragments/CollectionMultiSelectRecyclerFragment;->newAdapter()Lcom/amazon/kcp/library/FastRecyclerAdapter;
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
.field final synthetic this$0:Lcom/amazon/kcp/library/fragments/CollectionMultiSelectRecyclerFragment;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/fragments/CollectionMultiSelectRecyclerFragment;Landroid/app/Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .line 51
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/CollectionMultiSelectRecyclerFragment$newAdapter$1;->this$0:Lcom/amazon/kcp/library/fragments/CollectionMultiSelectRecyclerFragment;

    const/4 p1, 0x0

    const/4 v0, 0x2

    invoke-direct {p0, p2, p1, v0, p1}, Lcom/amazon/kcp/library/FastRecyclerAdapter;-><init>(Landroid/app/Activity;Landroid/view/ActionMode$Callback;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bindView(Lcom/amazon/kcp/library/FastRecyclerViewHolder;Landroid/view/View;Landroid/content/Context;ILcom/amazon/kcp/library/ILibraryDisplayItem;)V
    .locals 7

    const-string/jumbo v0, "viewHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "view"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "context"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "item"

    invoke-static {p5, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/CollectionMultiSelectRecyclerFragment$newAdapter$1;->this$0:Lcom/amazon/kcp/library/fragments/CollectionMultiSelectRecyclerFragment;

    invoke-virtual {p1}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getGridItemHeight()I

    move-result v3

    .line 61
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/CollectionMultiSelectRecyclerFragment$newAdapter$1;->this$0:Lcom/amazon/kcp/library/fragments/CollectionMultiSelectRecyclerFragment;

    invoke-virtual {p1}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getGridItemWidth()I

    move-result v4

    .line 63
    sget-object v6, Lcom/amazon/kcp/cover/badge/BadgeSource;->COLLECTIONS:Lcom/amazon/kcp/cover/badge/BadgeSource;

    move-object v0, p3

    move-object v1, p5

    move-object v2, p2

    move v5, p4

    .line 59
    invoke-static/range {v0 .. v6}, Lcom/amazon/kcp/cover/LibraryCoverFactory;->bindCheckableGridCover(Landroid/content/Context;Lcom/amazon/kcp/library/ILibraryDisplayItem;Landroid/view/View;IIILcom/amazon/kcp/cover/badge/BadgeSource;)Lcom/amazon/kcp/cover/CheckableFrameLayout;

    return-void
.end method

.method public bridge synthetic bindView(Lcom/amazon/kcp/library/FastRecyclerViewHolder;Landroid/view/View;Landroid/content/Context;ILjava/lang/Object;)V
    .locals 0

    .line 51
    check-cast p5, Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-virtual/range {p0 .. p5}, Lcom/amazon/kcp/library/fragments/CollectionMultiSelectRecyclerFragment$newAdapter$1;->bindView(Lcom/amazon/kcp/library/FastRecyclerViewHolder;Landroid/view/View;Landroid/content/Context;ILcom/amazon/kcp/library/ILibraryDisplayItem;)V

    return-void
.end method

.method public canSelectItem(Lcom/amazon/kcp/library/ILibraryDisplayItem;)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 75
    invoke-interface {p1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->isMultiSelectionEnabled()Z

    move-result v1

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/CollectionMultiSelectRecyclerFragment$newAdapter$1;->this$0:Lcom/amazon/kcp/library/fragments/CollectionMultiSelectRecyclerFragment;

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

    .line 51
    check-cast p1, Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/fragments/CollectionMultiSelectRecyclerFragment$newAdapter$1;->canSelectItem(Lcom/amazon/kcp/library/ILibraryDisplayItem;)Z

    move-result p1

    return p1
.end method

.method public itemId(Lcom/amazon/kcp/library/ILibraryDisplayItem;)J
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-interface {p1}, Lcom/amazon/kcp/library/ICoverCacheable;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public bridge synthetic itemId(Ljava/lang/Object;)J
    .locals 2

    .line 51
    check-cast p1, Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/fragments/CollectionMultiSelectRecyclerFragment$newAdapter$1;->itemId(Lcom/amazon/kcp/library/ILibraryDisplayItem;)J

    move-result-wide v0

    return-wide v0
.end method

.method public newView(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 1

    const-string p3, "context"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p3, "parent"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iget-object p2, p0, Lcom/amazon/kcp/library/fragments/CollectionMultiSelectRecyclerFragment$newAdapter$1;->this$0:Lcom/amazon/kcp/library/fragments/CollectionMultiSelectRecyclerFragment;

    invoke-virtual {p2}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getGridItemHeight()I

    move-result p2

    iget-object p3, p0, Lcom/amazon/kcp/library/fragments/CollectionMultiSelectRecyclerFragment$newAdapter$1;->this$0:Lcom/amazon/kcp/library/fragments/CollectionMultiSelectRecyclerFragment;

    invoke-virtual {p3}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getGridItemWidth()I

    move-result p3

    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/CollectionMultiSelectRecyclerFragment$newAdapter$1;->this$0:Lcom/amazon/kcp/library/fragments/CollectionMultiSelectRecyclerFragment;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getGridRowPadding()I

    move-result v0

    invoke-static {p1, p2, p3, v0}, Lcom/amazon/kcp/cover/LibraryCoverFactory;->newCheckableGridCover(Landroid/content/Context;III)Lcom/amazon/kcp/cover/CheckableFrameLayout;

    move-result-object p1

    const-string p2, "LibraryCoverFactory.newC\u2026temWidth, gridRowPadding)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public recycleView(Lcom/amazon/kcp/library/FastRecyclerViewHolder;Landroid/view/View;I)V
    .locals 0

    const-string/jumbo p3, "viewHolder"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "view"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-static {p2}, Lcom/amazon/kcp/cover/LibraryCoverFactory;->recycleCheckableGridCover(Landroid/view/View;)V

    return-void
.end method
