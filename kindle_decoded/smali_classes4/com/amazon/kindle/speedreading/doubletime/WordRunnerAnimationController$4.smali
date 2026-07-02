.class Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController$4;
.super Ljava/lang/Object;
.source "WordRunnerAnimationController.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController;->hideWordRunner(Lcom/amazon/kindle/speedreading/doubletime/framework/Word;Landroid/animation/Animator$AnimatorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Landroid/animation/Animator$AnimatorListener;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController;Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    .line 175
    iput-object p2, p0, Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController$4;->val$listener:Landroid/animation/Animator$AnimatorListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 185
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController$4;->val$listener:Landroid/animation/Animator$AnimatorListener;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
