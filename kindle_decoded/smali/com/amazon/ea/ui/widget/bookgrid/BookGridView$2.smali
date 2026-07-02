.class Lcom/amazon/ea/ui/widget/bookgrid/BookGridView$2;
.super Ljava/lang/Object;
.source "BookGridView.java"

# interfaces
.implements Lcom/amazon/ea/ui/AnimationCoordinator$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;->destroyBubble(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;

.field final synthetic val$contentView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;Landroid/view/View;)V
    .locals 0

    .line 396
    iput-object p1, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridView$2;->this$0:Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;

    iput-object p2, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridView$2;->val$contentView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/view/View;)V
    .locals 1

    .line 399
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridView$2;->this$0:Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;

    invoke-static {v0}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;->access$400(Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 400
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridView$2;->val$contentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridView$2;->val$contentView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 401
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridView$2;->this$0:Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;

    invoke-static {p1}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;->access$500(Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;)Ljava/util/Stack;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridView$2;->val$contentView:Landroid/view/View;

    invoke-virtual {p1, v0}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    return-void
.end method
