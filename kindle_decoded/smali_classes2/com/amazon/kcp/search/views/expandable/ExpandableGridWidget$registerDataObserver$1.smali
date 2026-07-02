.class public final Lcom/amazon/kcp/search/views/expandable/ExpandableGridWidget$registerDataObserver$1;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "ExpandableGridWidget.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/search/views/expandable/ExpandableGridWidget;->registerDataObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/search/views/expandable/ExpandableGridWidget;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/search/views/expandable/ExpandableGridWidget;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 113
    iput-object p1, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableGridWidget$registerDataObserver$1;->this$0:Lcom/amazon/kcp/search/views/expandable/ExpandableGridWidget;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 115
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onChanged()V

    .line 116
    iget-object v0, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableGridWidget$registerDataObserver$1;->this$0:Lcom/amazon/kcp/search/views/expandable/ExpandableGridWidget;

    invoke-static {v0}, Lcom/amazon/kcp/search/views/expandable/ExpandableGridWidget;->access$updateExpandBtn(Lcom/amazon/kcp/search/views/expandable/ExpandableGridWidget;)V

    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 0

    .line 120
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onItemRangeInserted(II)V

    .line 121
    iget-object p1, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableGridWidget$registerDataObserver$1;->this$0:Lcom/amazon/kcp/search/views/expandable/ExpandableGridWidget;

    invoke-static {p1}, Lcom/amazon/kcp/search/views/expandable/ExpandableGridWidget;->access$updateExpandBtn(Lcom/amazon/kcp/search/views/expandable/ExpandableGridWidget;)V

    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 0

    .line 125
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onItemRangeRemoved(II)V

    .line 126
    iget-object p1, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableGridWidget$registerDataObserver$1;->this$0:Lcom/amazon/kcp/search/views/expandable/ExpandableGridWidget;

    invoke-static {p1}, Lcom/amazon/kcp/search/views/expandable/ExpandableGridWidget;->access$updateExpandBtn(Lcom/amazon/kcp/search/views/expandable/ExpandableGridWidget;)V

    return-void
.end method
