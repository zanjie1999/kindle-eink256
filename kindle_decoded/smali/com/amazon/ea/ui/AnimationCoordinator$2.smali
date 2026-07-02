.class Lcom/amazon/ea/ui/AnimationCoordinator$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AnimationCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ea/ui/AnimationCoordinator;->removeView(Landroid/view/View;Lcom/amazon/ea/ui/AnimationCoordinator$OnCompletionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$child:Landroid/view/View;

.field final synthetic val$listener:Lcom/amazon/ea/ui/AnimationCoordinator$OnCompletionListener;

.field final synthetic val$parent:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/amazon/ea/ui/AnimationCoordinator;Landroid/view/ViewGroup;Landroid/view/View;Lcom/amazon/ea/ui/AnimationCoordinator$OnCompletionListener;)V
    .locals 0

    .line 246
    iput-object p2, p0, Lcom/amazon/ea/ui/AnimationCoordinator$2;->val$parent:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/amazon/ea/ui/AnimationCoordinator$2;->val$child:Landroid/view/View;

    iput-object p4, p0, Lcom/amazon/ea/ui/AnimationCoordinator$2;->val$listener:Lcom/amazon/ea/ui/AnimationCoordinator$OnCompletionListener;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 249
    iget-object p1, p0, Lcom/amazon/ea/ui/AnimationCoordinator$2;->val$parent:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/amazon/ea/ui/AnimationCoordinator$2;->val$child:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 250
    iget-object p1, p0, Lcom/amazon/ea/ui/AnimationCoordinator$2;->val$listener:Lcom/amazon/ea/ui/AnimationCoordinator$OnCompletionListener;

    if-eqz p1, :cond_0

    .line 251
    iget-object v0, p0, Lcom/amazon/ea/ui/AnimationCoordinator$2;->val$child:Landroid/view/View;

    invoke-interface {p1, v0}, Lcom/amazon/ea/ui/AnimationCoordinator$OnCompletionListener;->onCompletion(Landroid/view/View;)V

    :cond_0
    return-void
.end method
