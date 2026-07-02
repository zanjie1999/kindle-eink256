.class Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BookOpenAndCloseAnimationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->createBookCloseAnimationListener(Landroid/view/View;)Landroid/animation/Animator$AnimatorListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;

.field final synthetic val$originView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;Landroid/view/View;)V
    .locals 0

    .line 409
    iput-object p1, p0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper$3;->this$0:Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;

    iput-object p2, p0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper$3;->val$originView:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 422
    iget-object p1, p0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper$3;->val$originView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 423
    iget-object p1, p0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper$3;->this$0:Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;

    invoke-static {p1}, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->access$400(Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;)Landroid/view/ViewGroup;

    move-result-object p1

    iget-object v1, p0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper$3;->this$0:Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;

    invoke-static {v1}, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->access$300(Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 424
    iget-object p1, p0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper$3;->this$0:Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;

    invoke-static {p1, v0}, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->access$502(Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;Z)Z

    .line 425
    iget-object p1, p0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper$3;->this$0:Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->access$702(Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 412
    iget-object p1, p0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper$3;->val$originView:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 413
    iget-object p1, p0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper$3;->this$0:Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;

    invoke-static {p1}, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->access$300(Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 414
    iget-object p1, p0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper$3;->this$0:Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;

    invoke-static {p1}, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->access$300(Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper$3;->this$0:Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;

    invoke-static {v0}, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->access$300(Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 416
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper$3;->this$0:Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;

    invoke-static {p1}, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->access$400(Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;)Landroid/view/ViewGroup;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper$3;->this$0:Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;

    invoke-static {v0}, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->access$300(Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 417
    iget-object p1, p0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper$3;->this$0:Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->access$502(Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;Z)Z

    return-void
.end method
