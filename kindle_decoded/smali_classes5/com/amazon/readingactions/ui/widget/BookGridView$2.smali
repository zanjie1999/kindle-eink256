.class Lcom/amazon/readingactions/ui/widget/BookGridView$2;
.super Ljava/lang/Object;
.source "BookGridView.java"

# interfaces
.implements Lcom/amazon/ea/ui/AnimationCoordinator$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/readingactions/ui/widget/BookGridView;->destroyBubble(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/readingactions/ui/widget/BookGridView;

.field final synthetic val$contentView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/amazon/readingactions/ui/widget/BookGridView;Landroid/view/View;)V
    .locals 0

    .line 423
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridView$2;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridView;

    iput-object p2, p0, Lcom/amazon/readingactions/ui/widget/BookGridView$2;->val$contentView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/view/View;)V
    .locals 1

    .line 426
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridView$2;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridView;

    invoke-static {v0}, Lcom/amazon/readingactions/ui/widget/BookGridView;->access$400(Lcom/amazon/readingactions/ui/widget/BookGridView;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 427
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridView$2;->val$contentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridView$2;->val$contentView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 428
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridView$2;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridView;

    invoke-static {p1}, Lcom/amazon/readingactions/ui/widget/BookGridView;->access$500(Lcom/amazon/readingactions/ui/widget/BookGridView;)Ljava/util/Stack;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridView$2;->val$contentView:Landroid/view/View;

    invoke-virtual {p1, v0}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    return-void
.end method
