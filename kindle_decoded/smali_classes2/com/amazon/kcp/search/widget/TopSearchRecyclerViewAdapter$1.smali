.class Lcom/amazon/kcp/search/widget/TopSearchRecyclerViewAdapter$1;
.super Ljava/lang/Object;
.source "TopSearchRecyclerViewAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/search/widget/TopSearchRecyclerViewAdapter;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/search/widget/TopSearchRecyclerViewAdapter;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/search/widget/TopSearchRecyclerViewAdapter;Landroid/view/View;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/amazon/kcp/search/widget/TopSearchRecyclerViewAdapter$1;->this$0:Lcom/amazon/kcp/search/widget/TopSearchRecyclerViewAdapter;

    iput-object p2, p0, Lcom/amazon/kcp/search/widget/TopSearchRecyclerViewAdapter$1;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 76
    iget-object v0, p0, Lcom/amazon/kcp/search/widget/TopSearchRecyclerViewAdapter$1;->this$0:Lcom/amazon/kcp/search/widget/TopSearchRecyclerViewAdapter;

    invoke-static {v0}, Lcom/amazon/kcp/search/widget/TopSearchRecyclerViewAdapter;->access$000(Lcom/amazon/kcp/search/widget/TopSearchRecyclerViewAdapter;)Lcom/amazon/kcp/search/widget/TopSearchRecyclerViewAdapter$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/amazon/kcp/search/widget/TopSearchRecyclerViewAdapter$1;->val$v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 78
    iget-object v1, p0, Lcom/amazon/kcp/search/widget/TopSearchRecyclerViewAdapter$1;->this$0:Lcom/amazon/kcp/search/widget/TopSearchRecyclerViewAdapter;

    invoke-static {v1}, Lcom/amazon/kcp/search/widget/TopSearchRecyclerViewAdapter;->access$100(Lcom/amazon/kcp/search/widget/TopSearchRecyclerViewAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 79
    iget-object v2, p0, Lcom/amazon/kcp/search/widget/TopSearchRecyclerViewAdapter$1;->this$0:Lcom/amazon/kcp/search/widget/TopSearchRecyclerViewAdapter;

    invoke-static {v2}, Lcom/amazon/kcp/search/widget/TopSearchRecyclerViewAdapter;->access$000(Lcom/amazon/kcp/search/widget/TopSearchRecyclerViewAdapter;)Lcom/amazon/kcp/search/widget/TopSearchRecyclerViewAdapter$OnItemClickListener;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcom/amazon/kcp/search/widget/TopSearchRecyclerViewAdapter$OnItemClickListener;->onItemClick(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
