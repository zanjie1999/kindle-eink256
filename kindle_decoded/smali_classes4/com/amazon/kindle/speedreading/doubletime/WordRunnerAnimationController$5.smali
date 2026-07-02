.class Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController$5;
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
.field final synthetic this$0:Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController;

.field final synthetic val$currentWord:Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

.field final synthetic val$hideWordListener:Landroid/animation/Animator$AnimatorListener;

.field final synthetic val$listener:Landroid/animation/Animator$AnimatorListener;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController;Landroid/animation/Animator$AnimatorListener;Lcom/amazon/kindle/speedreading/doubletime/framework/Word;Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController$5;->this$0:Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController;

    iput-object p2, p0, Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController$5;->val$listener:Landroid/animation/Animator$AnimatorListener;

    iput-object p3, p0, Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController$5;->val$currentWord:Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    iput-object p4, p0, Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController$5;->val$hideWordListener:Landroid/animation/Animator$AnimatorListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 206
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController$5;->this$0:Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController;

    invoke-static {p1}, Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController;->access$200(Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController;)Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeBackgroundLayer;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 207
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController$5;->this$0:Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController;

    invoke-static {p1}, Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController;->access$400(Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController;)Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController$5;->val$currentWord:Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    iget-object v1, p0, Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController$5;->val$hideWordListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, v0, v1}, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;->hideWordContainer(Lcom/amazon/kindle/speedreading/doubletime/framework/Word;Landroid/animation/Animator$AnimatorListener;)V

    .line 208
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController$5;->this$0:Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController;

    invoke-static {p1}, Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController;->access$500(Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController;)Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSpeedReadingBox;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSpeedReadingBox;->hideSpeedReadingBox()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 197
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController$5;->val$listener:Landroid/animation/Animator$AnimatorListener;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    return-void
.end method
