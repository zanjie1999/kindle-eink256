.class final Lcom/amazon/kcp/animation/AnimatorFactory$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AnimatorFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/animation/AnimatorFactory;->createResourceBasedAnimator(Landroid/view/View;IJ)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$duration:J

.field final synthetic val$resource:I

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;IJ)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/amazon/kcp/animation/AnimatorFactory$1;->val$view:Landroid/view/View;

    iput p2, p0, Lcom/amazon/kcp/animation/AnimatorFactory$1;->val$resource:I

    iput-wide p3, p0, Lcom/amazon/kcp/animation/AnimatorFactory$1;->val$duration:J

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 90
    iget-object p1, p0, Lcom/amazon/kcp/animation/AnimatorFactory$1;->val$view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v0, p0, Lcom/amazon/kcp/animation/AnimatorFactory$1;->val$resource:I

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    .line 91
    iget-wide v0, p0, Lcom/amazon/kcp/animation/AnimatorFactory$1;->val$duration:J

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 92
    iget-object v0, p0, Lcom/amazon/kcp/animation/AnimatorFactory$1;->val$view:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
