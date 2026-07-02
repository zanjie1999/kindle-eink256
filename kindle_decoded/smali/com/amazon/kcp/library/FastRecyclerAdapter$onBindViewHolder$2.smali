.class final Lcom/amazon/kcp/library/FastRecyclerAdapter$onBindViewHolder$2;
.super Ljava/lang/Object;
.source "FastRecyclerAdapter.kt"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/FastRecyclerAdapter;->onBindViewHolder(Lcom/amazon/kcp/library/FastRecyclerViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $holder:Lcom/amazon/kcp/library/FastRecyclerViewHolder;

.field final synthetic $item:Ljava/lang/Object;

.field final synthetic $itemView:Landroid/view/View;

.field final synthetic this$0:Lcom/amazon/kcp/library/FastRecyclerAdapter;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/FastRecyclerAdapter;Lcom/amazon/kcp/library/FastRecyclerViewHolder;Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/library/FastRecyclerAdapter$onBindViewHolder$2;->this$0:Lcom/amazon/kcp/library/FastRecyclerAdapter;

    iput-object p2, p0, Lcom/amazon/kcp/library/FastRecyclerAdapter$onBindViewHolder$2;->$holder:Lcom/amazon/kcp/library/FastRecyclerViewHolder;

    iput-object p3, p0, Lcom/amazon/kcp/library/FastRecyclerAdapter$onBindViewHolder$2;->$itemView:Landroid/view/View;

    iput-object p4, p0, Lcom/amazon/kcp/library/FastRecyclerAdapter$onBindViewHolder$2;->$item:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 3

    .line 128
    iget-object p1, p0, Lcom/amazon/kcp/library/FastRecyclerAdapter$onBindViewHolder$2;->$holder:Lcom/amazon/kcp/library/FastRecyclerViewHolder;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    .line 129
    iget-object v0, p0, Lcom/amazon/kcp/library/FastRecyclerAdapter$onBindViewHolder$2;->this$0:Lcom/amazon/kcp/library/FastRecyclerAdapter;

    invoke-static {v0, p1}, Lcom/amazon/kcp/library/FastRecyclerAdapter;->access$getAdjustedPosition(Lcom/amazon/kcp/library/FastRecyclerAdapter;I)I

    move-result p1

    .line 130
    iget-object v0, p0, Lcom/amazon/kcp/library/FastRecyclerAdapter$onBindViewHolder$2;->this$0:Lcom/amazon/kcp/library/FastRecyclerAdapter;

    invoke-static {v0}, Lcom/amazon/kcp/library/FastRecyclerAdapter;->access$getMultiSelectHelper$p(Lcom/amazon/kcp/library/FastRecyclerAdapter;)Lcom/amazon/kcp/library/RecyclerMultiSelectHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/FastRecyclerAdapter$onBindViewHolder$2;->$itemView:Landroid/view/View;

    iget-object v2, p0, Lcom/amazon/kcp/library/FastRecyclerAdapter$onBindViewHolder$2;->$item:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/library/RecyclerMultiSelectHelper;->onItemLongClick(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/library/FastRecyclerAdapter$onBindViewHolder$2;->this$0:Lcom/amazon/kcp/library/FastRecyclerAdapter;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/FastRecyclerAdapter;->isInAdapterRange$LibraryModule_release(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/amazon/kcp/library/FastRecyclerAdapter$onBindViewHolder$2;->this$0:Lcom/amazon/kcp/library/FastRecyclerAdapter;

    invoke-static {v0}, Lcom/amazon/kcp/library/FastRecyclerAdapter;->access$getOnItemLongClickListener$p(Lcom/amazon/kcp/library/FastRecyclerAdapter;)Lcom/amazon/kcp/library/FastRecyclerItemLongClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amazon/kcp/library/FastRecyclerAdapter$onBindViewHolder$2;->$item:Ljava/lang/Object;

    iget-object v2, p0, Lcom/amazon/kcp/library/FastRecyclerAdapter$onBindViewHolder$2;->$itemView:Landroid/view/View;

    invoke-interface {v0, p1, v1, v2}, Lcom/amazon/kcp/library/FastRecyclerItemLongClickListener;->onItemLongClick(ILjava/lang/Object;Landroid/view/View;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
