.class final Lcom/amazon/kcp/library/FastRecyclerAdapter$onBindViewHolder$1;
.super Ljava/lang/Object;
.source "FastRecyclerAdapter.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/amazon/kcp/library/FastRecyclerAdapter$onBindViewHolder$1;->this$0:Lcom/amazon/kcp/library/FastRecyclerAdapter;

    iput-object p2, p0, Lcom/amazon/kcp/library/FastRecyclerAdapter$onBindViewHolder$1;->$holder:Lcom/amazon/kcp/library/FastRecyclerViewHolder;

    iput-object p3, p0, Lcom/amazon/kcp/library/FastRecyclerAdapter$onBindViewHolder$1;->$itemView:Landroid/view/View;

    iput-object p4, p0, Lcom/amazon/kcp/library/FastRecyclerAdapter$onBindViewHolder$1;->$item:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 120
    iget-object p1, p0, Lcom/amazon/kcp/library/FastRecyclerAdapter$onBindViewHolder$1;->$holder:Lcom/amazon/kcp/library/FastRecyclerViewHolder;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    .line 121
    iget-object v0, p0, Lcom/amazon/kcp/library/FastRecyclerAdapter$onBindViewHolder$1;->this$0:Lcom/amazon/kcp/library/FastRecyclerAdapter;

    invoke-static {v0, p1}, Lcom/amazon/kcp/library/FastRecyclerAdapter;->access$getAdjustedPosition(Lcom/amazon/kcp/library/FastRecyclerAdapter;I)I

    move-result p1

    .line 122
    iget-object v0, p0, Lcom/amazon/kcp/library/FastRecyclerAdapter$onBindViewHolder$1;->this$0:Lcom/amazon/kcp/library/FastRecyclerAdapter;

    invoke-static {v0}, Lcom/amazon/kcp/library/FastRecyclerAdapter;->access$getMultiSelectHelper$p(Lcom/amazon/kcp/library/FastRecyclerAdapter;)Lcom/amazon/kcp/library/RecyclerMultiSelectHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/FastRecyclerAdapter$onBindViewHolder$1;->$itemView:Landroid/view/View;

    iget-object v2, p0, Lcom/amazon/kcp/library/FastRecyclerAdapter$onBindViewHolder$1;->$item:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/library/RecyclerMultiSelectHelper;->onItemClick(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-ltz p1, :cond_0

    .line 124
    iget-object v0, p0, Lcom/amazon/kcp/library/FastRecyclerAdapter$onBindViewHolder$1;->this$0:Lcom/amazon/kcp/library/FastRecyclerAdapter;

    invoke-static {v0}, Lcom/amazon/kcp/library/FastRecyclerAdapter;->access$getOnItemClickListener$p(Lcom/amazon/kcp/library/FastRecyclerAdapter;)Lcom/amazon/kcp/library/FastRecyclerItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amazon/kcp/library/FastRecyclerAdapter$onBindViewHolder$1;->$item:Ljava/lang/Object;

    iget-object v2, p0, Lcom/amazon/kcp/library/FastRecyclerAdapter$onBindViewHolder$1;->$itemView:Landroid/view/View;

    invoke-interface {v0, p1, v1, v2}, Lcom/amazon/kcp/library/FastRecyclerItemClickListener;->onItemClick(ILjava/lang/Object;Landroid/view/View;)V

    :cond_0
    return-void
.end method
