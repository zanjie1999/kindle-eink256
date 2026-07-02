.class public Lcom/amazon/kcp/ui/RunnableExecutorAnimationListener;
.super Ljava/lang/Object;
.source "RunnableExecutorAnimationListener.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private onFinishRunnable:Ljava/lang/Runnable;

.field private onRepeatRunnable:Ljava/lang/Runnable;

.field private onStartRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/amazon/kcp/ui/RunnableExecutorAnimationListener;->onStartRunnable:Ljava/lang/Runnable;

    .line 30
    iput-object p2, p0, Lcom/amazon/kcp/ui/RunnableExecutorAnimationListener;->onRepeatRunnable:Ljava/lang/Runnable;

    .line 31
    iput-object p3, p0, Lcom/amazon/kcp/ui/RunnableExecutorAnimationListener;->onFinishRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .line 50
    iget-object p1, p0, Lcom/amazon/kcp/ui/RunnableExecutorAnimationListener;->onFinishRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 51
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .line 43
    iget-object p1, p0, Lcom/amazon/kcp/ui/RunnableExecutorAnimationListener;->onRepeatRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 44
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .line 36
    iget-object p1, p0, Lcom/amazon/kcp/ui/RunnableExecutorAnimationListener;->onStartRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 37
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
