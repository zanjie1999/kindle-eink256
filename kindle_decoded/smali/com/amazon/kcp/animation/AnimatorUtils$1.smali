.class final Lcom/amazon/kcp/animation/AnimatorUtils$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AnimatorUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/animation/AnimatorUtils;->createVisibilityChangeListener(Landroid/view/View;ZZ)Landroid/animation/Animator$AnimatorListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$endsVisible:Z

.field final synthetic val$startsVisible:Z

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;ZZ)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/amazon/kcp/animation/AnimatorUtils$1;->val$view:Landroid/view/View;

    iput-boolean p2, p0, Lcom/amazon/kcp/animation/AnimatorUtils$1;->val$startsVisible:Z

    iput-boolean p3, p0, Lcom/amazon/kcp/animation/AnimatorUtils$1;->val$endsVisible:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 92
    iget-object p1, p0, Lcom/amazon/kcp/animation/AnimatorUtils$1;->val$view:Landroid/view/View;

    iget-boolean v0, p0, Lcom/amazon/kcp/animation/AnimatorUtils$1;->val$endsVisible:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 87
    iget-object p1, p0, Lcom/amazon/kcp/animation/AnimatorUtils$1;->val$view:Landroid/view/View;

    iget-boolean v0, p0, Lcom/amazon/kcp/animation/AnimatorUtils$1;->val$startsVisible:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
