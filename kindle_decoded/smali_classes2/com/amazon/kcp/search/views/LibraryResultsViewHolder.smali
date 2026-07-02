.class public final Lcom/amazon/kcp/search/views/LibraryResultsViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "LibraryResultsViewHolder.kt"


# instance fields
.field private view:Lcom/amazon/kcp/search/views/LibraryResultsView;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/search/views/LibraryResultsView;Lcom/amazon/kcp/search/views/LibraryItemInteractionObserver;)V
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "interactionObserver"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/amazon/kcp/search/views/LibraryResultsViewHolder;->view:Lcom/amazon/kcp/search/views/LibraryResultsView;

    .line 15
    invoke-interface {p1}, Lcom/amazon/kcp/search/views/LibraryResultsView;->getOrCreateAdapter()Lcom/amazon/kcp/search/views/LibraryResultsAdapter;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/amazon/kcp/search/views/LibraryResultsAdapter;->setInteractionObserver(Lcom/amazon/kcp/search/views/LibraryItemInteractionObserver;)V

    return-void
.end method


# virtual methods
.method public final bindData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/kindle/model/content/IListableBook;",
            ">;)V"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/amazon/kcp/search/views/LibraryResultsViewHolder;->view:Lcom/amazon/kcp/search/views/LibraryResultsView;

    invoke-interface {v0}, Lcom/amazon/kcp/search/views/LibraryResultsView;->getOrCreateAdapter()Lcom/amazon/kcp/search/views/LibraryResultsAdapter;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kcp/search/views/LibraryResultsAdapter;->setResults(Ljava/util/List;)V

    return-void
.end method

.method public final collapseLibraryResults()V
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/amazon/kcp/search/views/LibraryResultsViewHolder;->view:Lcom/amazon/kcp/search/views/LibraryResultsView;

    instance-of v1, v0, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsView;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsView;->collapseLibraryResults()V

    :cond_1
    return-void
.end method
