.class public Lcom/amazon/kcp/animation/RunnableAnimator;
.super Landroid/animation/Animator;
.source "RunnableAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/animation/RunnableAnimator$WrappedRunnable;
    }
.end annotation


# instance fields
.field private delayAnimator:Landroid/animation/ValueAnimator;

.field private handler:Landroid/os/Handler;

.field private runInMainThread:Z

.field private runnable:Lcom/amazon/kcp/animation/RunnableAnimator$WrappedRunnable;

.field private startDelay:J

.field private started:Z


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, v0}, Lcom/amazon/kcp/animation/RunnableAnimator;-><init>(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;Z)V
    .locals 2

    .line 46
    invoke-direct {p0}, Landroid/animation/Animator;-><init>()V

    .line 47
    new-instance v0, Lcom/amazon/kcp/animation/RunnableAnimator$WrappedRunnable;

    invoke-direct {v0, p1, p0}, Lcom/amazon/kcp/animation/RunnableAnimator$WrappedRunnable;-><init>(Ljava/lang/Runnable;Lcom/amazon/kcp/animation/RunnableAnimator;)V

    iput-object v0, p0, Lcom/amazon/kcp/animation/RunnableAnimator;->runnable:Lcom/amazon/kcp/animation/RunnableAnimator$WrappedRunnable;

    const/4 p1, 0x0

    .line 48
    iput-object p1, p0, Lcom/amazon/kcp/animation/RunnableAnimator;->delayAnimator:Landroid/animation/ValueAnimator;

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/amazon/kcp/animation/RunnableAnimator;->started:Z

    .line 50
    iput-boolean p2, p0, Lcom/amazon/kcp/animation/RunnableAnimator;->runInMainThread:Z

    const-wide/16 v0, 0x0

    .line 51
    iput-wide v0, p0, Lcom/amazon/kcp/animation/RunnableAnimator;->startDelay:J

    .line 52
    iput-object p1, p0, Lcom/amazon/kcp/animation/RunnableAnimator;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/animation/RunnableAnimator;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/amazon/kcp/animation/RunnableAnimator;->executeRunnable()V

    return-void
.end method

.method private executeRunnable()V
    .locals 2

    .line 268
    iget-boolean v0, p0, Lcom/amazon/kcp/animation/RunnableAnimator;->runInMainThread:Z

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/amazon/kcp/animation/RunnableAnimator;->handler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 270
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/amazon/kcp/animation/RunnableAnimator;->handler:Landroid/os/Handler;

    .line 271
    iget-object v1, p0, Lcom/amazon/kcp/animation/RunnableAnimator;->runnable:Lcom/amazon/kcp/animation/RunnableAnimator$WrappedRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/animation/RunnableAnimator;->runnable:Lcom/amazon/kcp/animation/RunnableAnimator$WrappedRunnable;

    invoke-virtual {v0}, Lcom/amazon/kcp/animation/RunnableAnimator$WrappedRunnable;->run()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 4

    .line 173
    invoke-virtual {p0}, Lcom/amazon/kcp/animation/RunnableAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 175
    invoke-virtual {p0}, Lcom/amazon/kcp/animation/RunnableAnimator;->getListeners()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator$AnimatorListener;

    .line 178
    invoke-interface {v2, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    goto :goto_0

    .line 190
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/animation/RunnableAnimator;->delayAnimator:Landroid/animation/ValueAnimator;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 192
    iget-object v1, p0, Lcom/amazon/kcp/animation/RunnableAnimator;->delayAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_1

    .line 194
    :cond_1
    iget-object v1, p0, Lcom/amazon/kcp/animation/RunnableAnimator;->runnable:Lcom/amazon/kcp/animation/RunnableAnimator$WrappedRunnable;

    invoke-virtual {v1}, Lcom/amazon/kcp/animation/RunnableAnimator$WrappedRunnable;->isRunning()Z

    move-result v1

    if-nez v1, :cond_2

    .line 198
    iget-object v1, p0, Lcom/amazon/kcp/animation/RunnableAnimator;->runnable:Lcom/amazon/kcp/animation/RunnableAnimator$WrappedRunnable;

    invoke-virtual {v1}, Lcom/amazon/kcp/animation/RunnableAnimator$WrappedRunnable;->cancel()V

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    .line 204
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    .line 205
    invoke-interface {v1, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    goto :goto_2

    .line 209
    :cond_3
    iput-boolean v3, p0, Lcom/amazon/kcp/animation/RunnableAnimator;->started:Z

    :cond_4
    return-void
.end method

.method public end()V
    .locals 2

    .line 219
    invoke-virtual {p0}, Lcom/amazon/kcp/animation/RunnableAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 220
    iget-object v0, p0, Lcom/amazon/kcp/animation/RunnableAnimator;->delayAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/animation/RunnableAnimator;->runnable:Lcom/amazon/kcp/animation/RunnableAnimator$WrappedRunnable;

    invoke-virtual {v0}, Lcom/amazon/kcp/animation/RunnableAnimator$WrappedRunnable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 227
    iget-object v0, p0, Lcom/amazon/kcp/animation/RunnableAnimator;->runnable:Lcom/amazon/kcp/animation/RunnableAnimator$WrappedRunnable;

    invoke-virtual {v0}, Lcom/amazon/kcp/animation/RunnableAnimator$WrappedRunnable;->cancel()V

    .line 231
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kcp/animation/RunnableAnimator;->getListeners()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 233
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    .line 234
    invoke-interface {v1, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 237
    iput-boolean v0, p0, Lcom/amazon/kcp/animation/RunnableAnimator;->started:Z

    :cond_3
    return-void
.end method

.method public getDuration()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getListeners()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation

    .line 255
    invoke-super {p0}, Landroid/animation/Animator;->getListeners()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 257
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStartDelay()J
    .locals 2

    .line 61
    iget-wide v0, p0, Lcom/amazon/kcp/animation/RunnableAnimator;->startDelay:J

    return-wide v0
.end method

.method public isRunning()Z
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/amazon/kcp/animation/RunnableAnimator;->runnable:Lcom/amazon/kcp/animation/RunnableAnimator$WrappedRunnable;

    invoke-virtual {v0}, Lcom/amazon/kcp/animation/RunnableAnimator$WrappedRunnable;->isRunning()Z

    move-result v0

    return v0
.end method

.method public isStarted()Z
    .locals 1

    .line 164
    iget-boolean v0, p0, Lcom/amazon/kcp/animation/RunnableAnimator;->started:Z

    return v0
.end method

.method public setDuration(J)Landroid/animation/Animator;
    .locals 0

    return-object p0
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)V
    .locals 0

    return-void
.end method

.method public setStartDelay(J)V
    .locals 0

    .line 70
    iput-wide p1, p0, Lcom/amazon/kcp/animation/RunnableAnimator;->startDelay:J

    return-void
.end method

.method public start()V
    .locals 5

    const/4 v0, 0x1

    .line 120
    iput-boolean v0, p0, Lcom/amazon/kcp/animation/RunnableAnimator;->started:Z

    .line 123
    invoke-virtual {p0}, Lcom/amazon/kcp/animation/RunnableAnimator;->getListeners()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    .line 126
    invoke-interface {v1, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    goto :goto_0

    .line 130
    :cond_0
    iget-wide v0, p0, Lcom/amazon/kcp/animation/RunnableAnimator;->startDelay:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    .line 132
    invoke-direct {p0}, Lcom/amazon/kcp/animation/RunnableAnimator;->executeRunnable()V

    goto :goto_1

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 135
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 136
    iget-wide v1, p0, Lcom/amazon/kcp/animation/RunnableAnimator;->startDelay:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 137
    new-instance v1, Lcom/amazon/kcp/animation/RunnableAnimator$1;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/animation/RunnableAnimator$1;-><init>(Lcom/amazon/kcp/animation/RunnableAnimator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 153
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 154
    iput-object v0, p0, Lcom/amazon/kcp/animation/RunnableAnimator;->delayAnimator:Landroid/animation/ValueAnimator;

    :goto_1
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
