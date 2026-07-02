.class final Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsAdapter$onBindViewHolder$1;
.super Ljava/lang/Object;
.source "ExpandableLibraryResultsAdapter.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field final synthetic $libraryItem:Lcom/amazon/kindle/model/content/IListableBook;

.field final synthetic this$0:Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsAdapter;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsAdapter;Lcom/amazon/kindle/model/content/IListableBook;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsAdapter$onBindViewHolder$1;->this$0:Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsAdapter;

    iput-object p2, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsAdapter$onBindViewHolder$1;->$libraryItem:Lcom/amazon/kindle/model/content/IListableBook;

    iput-object p3, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsAdapter$onBindViewHolder$1;->$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 116
    iget-object p1, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsAdapter$onBindViewHolder$1;->this$0:Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsAdapter;

    invoke-static {p1}, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsAdapter;->access$getInteractionObserver$p(Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsAdapter;)Lcom/amazon/kcp/search/views/LibraryItemInteractionObserver;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsAdapter$onBindViewHolder$1;->$libraryItem:Lcom/amazon/kindle/model/content/IListableBook;

    iget-object v1, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsAdapter$onBindViewHolder$1;->$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {p1, v0, v1}, Lcom/amazon/kcp/search/views/LibraryItemInteractionObserver;->onItemInteracted(Lcom/amazon/kindle/model/content/IListableBook;Landroid/view/View;)V

    :cond_0
    return-void
.end method
