.class Lcom/amazon/android/widget/PagingButtonWidget$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PagingButtonWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/widget/PagingButtonWidget;->toggleActiveRow(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/android/widget/PagingButtonWidget;

.field final synthetic val$viewToHide:Landroid/view/View;

.field final synthetic val$viewToShow:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/amazon/android/widget/PagingButtonWidget;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 514
    iput-object p1, p0, Lcom/amazon/android/widget/PagingButtonWidget$5;->this$0:Lcom/amazon/android/widget/PagingButtonWidget;

    iput-object p2, p0, Lcom/amazon/android/widget/PagingButtonWidget$5;->val$viewToHide:Landroid/view/View;

    iput-object p3, p0, Lcom/amazon/android/widget/PagingButtonWidget$5;->val$viewToShow:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 517
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 519
    iget-object p1, p0, Lcom/amazon/android/widget/PagingButtonWidget$5;->val$viewToHide:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 520
    iget-object p1, p0, Lcom/amazon/android/widget/PagingButtonWidget$5;->val$viewToShow:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 521
    iget-object p1, p0, Lcom/amazon/android/widget/PagingButtonWidget$5;->val$viewToShow:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 522
    iget-object p1, p0, Lcom/amazon/android/widget/PagingButtonWidget$5;->val$viewToHide:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 523
    iget-object p1, p0, Lcom/amazon/android/widget/PagingButtonWidget$5;->this$0:Lcom/amazon/android/widget/PagingButtonWidget;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/amazon/android/widget/PagingButtonWidget;->access$102(Lcom/amazon/android/widget/PagingButtonWidget;Z)Z

    .line 525
    iget-object p1, p0, Lcom/amazon/android/widget/PagingButtonWidget$5;->this$0:Lcom/amazon/android/widget/PagingButtonWidget;

    iget-object v0, p0, Lcom/amazon/android/widget/PagingButtonWidget$5;->val$viewToHide:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->bringChildToFront(Landroid/view/View;)V

    .line 527
    iget-object p1, p0, Lcom/amazon/android/widget/PagingButtonWidget$5;->val$viewToShow:Landroid/view/View;

    const/16 v0, 0x40

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroidx/core/view/ViewCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    .line 529
    iget-object p1, p0, Lcom/amazon/android/widget/PagingButtonWidget$5;->val$viewToShow:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return-void
.end method
