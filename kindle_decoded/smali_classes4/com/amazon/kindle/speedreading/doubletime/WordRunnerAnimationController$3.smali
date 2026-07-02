.class Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController$3;
.super Ljava/lang/Object;
.source "WordRunnerAnimationController.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController;->showWordRunner(Lcom/amazon/kindle/speedreading/doubletime/framework/Word;Landroid/animation/Animator$AnimatorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController;

.field final synthetic val$backgroundLayerListener:Landroid/animation/Animator$AnimatorListener;

.field final synthetic val$listener:Landroid/animation/Animator$AnimatorListener;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController;Landroid/animation/Animator$AnimatorListener;Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController$3;->this$0:Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController;

    iput-object p2, p0, Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController$3;->val$listener:Landroid/animation/Animator$AnimatorListener;

    iput-object p3, p0, Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController$3;->val$backgroundLayerListener:Landroid/animation/Animator$AnimatorListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 135
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController$3;->this$0:Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController;->access$102(Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController;Z)Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 125
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController$3;->this$0:Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController;

    invoke-static {p1}, Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController;->access$100(Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 127
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController$3;->this$0:Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController;

    invoke-static {p1}, Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController;->access$200(Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController;)Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeBackgroundLayer;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController$3;->val$backgroundLayerListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeBackgroundLayer;->showBackgroundLayer(Landroid/animation/Animator$AnimatorListener;)V

    .line 128
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController$3;->this$0:Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController;

    invoke-static {p1}, Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController;->access$300(Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController;)Lcom/amazon/kindle/speedreading/doubletime/CountAnimation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/speedreading/doubletime/CountAnimation;->start()V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 114
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController$3;->this$0:Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController;->access$102(Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController;Z)Z

    .line 115
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController$3;->this$0:Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController;

    invoke-static {p1}, Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController;->access$200(Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController;)Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeBackgroundLayer;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 116
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController$3;->val$listener:Landroid/animation/Animator$AnimatorListener;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    return-void
.end method
