.class Lcom/amazon/ea/ui/AnimationCoordinator$PreDrawListener$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AnimationCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ea/ui/AnimationCoordinator$PreDrawListener;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/ea/ui/AnimationCoordinator$PreDrawListener;

.field final synthetic val$listener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# direct methods
.method constructor <init>(Lcom/amazon/ea/ui/AnimationCoordinator$PreDrawListener;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 0

    .line 606
    iput-object p1, p0, Lcom/amazon/ea/ui/AnimationCoordinator$PreDrawListener$1;->this$1:Lcom/amazon/ea/ui/AnimationCoordinator$PreDrawListener;

    iput-object p2, p0, Lcom/amazon/ea/ui/AnimationCoordinator$PreDrawListener$1;->val$listener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 609
    iget-object p1, p0, Lcom/amazon/ea/ui/AnimationCoordinator$PreDrawListener$1;->this$1:Lcom/amazon/ea/ui/AnimationCoordinator$PreDrawListener;

    iget-object p1, p1, Lcom/amazon/ea/ui/AnimationCoordinator$PreDrawListener;->this$0:Lcom/amazon/ea/ui/AnimationCoordinator;

    invoke-static {p1}, Lcom/amazon/ea/ui/AnimationCoordinator;->access$800(Lcom/amazon/ea/ui/AnimationCoordinator;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    .line 610
    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 613
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 614
    iget-object v0, p0, Lcom/amazon/ea/ui/AnimationCoordinator$PreDrawListener$1;->val$listener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 617
    :cond_1
    iget-object v0, p0, Lcom/amazon/ea/ui/AnimationCoordinator$PreDrawListener$1;->val$listener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :goto_0
    return-void
.end method
