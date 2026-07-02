.class Lcom/amazon/kcp/library/fragments/RubyHomeFragment$4;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "RubyHomeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/fragments/RubyHomeFragment;->setRecyclerView(Lcom/amazon/kcp/library/ui/NestedRecyclerView;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/fragments/RubyHomeFragment;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/fragments/RubyHomeFragment;)V
    .locals 0

    .line 445
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment$4;->this$0:Lcom/amazon/kcp/library/fragments/RubyHomeFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 448
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 450
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment$4;->this$0:Lcom/amazon/kcp/library/fragments/RubyHomeFragment;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/amazon/kcp/library/fragments/RubyHomeFragment;->access$500(Lcom/amazon/kcp/library/fragments/RubyHomeFragment;Z)V

    return-void
.end method
