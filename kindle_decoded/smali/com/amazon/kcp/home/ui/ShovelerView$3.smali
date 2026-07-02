.class Lcom/amazon/kcp/home/ui/ShovelerView$3;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "ShovelerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/home/ui/ShovelerView;->setShoveler(Lcom/amazon/kcp/library/ui/NestedRecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/home/ui/ShovelerView;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/home/ui/ShovelerView;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/amazon/kcp/home/ui/ShovelerView$3;->this$0:Lcom/amazon/kcp/home/ui/ShovelerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    if-nez p2, :cond_0

    .line 125
    iget-object p1, p0, Lcom/amazon/kcp/home/ui/ShovelerView$3;->this$0:Lcom/amazon/kcp/home/ui/ShovelerView;

    invoke-static {p1}, Lcom/amazon/kcp/home/ui/ShovelerView;->access$000(Lcom/amazon/kcp/home/ui/ShovelerView;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 126
    iget-object p1, p0, Lcom/amazon/kcp/home/ui/ShovelerView$3;->this$0:Lcom/amazon/kcp/home/ui/ShovelerView;

    invoke-static {p1}, Lcom/amazon/kcp/home/ui/ShovelerView;->access$000(Lcom/amazon/kcp/home/ui/ShovelerView;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result p2

    invoke-static {p1, p2}, Lcom/amazon/kcp/home/ui/ShovelerView;->access$102(Lcom/amazon/kcp/home/ui/ShovelerView;I)I

    :cond_0
    return-void
.end method
