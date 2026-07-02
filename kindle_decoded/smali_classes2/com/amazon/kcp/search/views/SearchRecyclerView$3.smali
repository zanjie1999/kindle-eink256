.class Lcom/amazon/kcp/search/views/SearchRecyclerView$3;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "SearchRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/search/views/SearchRecyclerView;->registerDataObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/search/views/SearchRecyclerView;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/search/views/SearchRecyclerView;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/amazon/kcp/search/views/SearchRecyclerView$3;->this$0:Lcom/amazon/kcp/search/views/SearchRecyclerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemRangeInserted(II)V
    .locals 0

    .line 236
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onItemRangeInserted(II)V

    .line 238
    iget-object p2, p0, Lcom/amazon/kcp/search/views/SearchRecyclerView$3;->this$0:Lcom/amazon/kcp/search/views/SearchRecyclerView;

    invoke-static {p2}, Lcom/amazon/kcp/search/views/SearchRecyclerView;->access$200(Lcom/amazon/kcp/search/views/SearchRecyclerView;)Z

    move-result p2

    if-nez p2, :cond_0

    if-nez p1, :cond_0

    .line 239
    iget-object p1, p0, Lcom/amazon/kcp/search/views/SearchRecyclerView$3;->this$0:Lcom/amazon/kcp/search/views/SearchRecyclerView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_0
    return-void
.end method
