.class Lcom/amazon/kcp/library/fragments/RubyHomeFragment$RubyHomeAdapter$RubyHomeViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "RubyHomeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/fragments/RubyHomeFragment$RubyHomeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RubyHomeViewHolder"
.end annotation


# instance fields
.field view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/library/fragments/RubyHomeFragment$RubyHomeAdapter;Landroid/view/View;)V
    .locals 0

    .line 513
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 514
    iput-object p2, p0, Lcom/amazon/kcp/library/fragments/RubyHomeFragment$RubyHomeAdapter$RubyHomeViewHolder;->view:Landroid/view/View;

    return-void
.end method
