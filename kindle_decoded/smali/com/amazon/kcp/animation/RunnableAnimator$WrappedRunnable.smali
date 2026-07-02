.class Lcom/amazon/kcp/animation/RunnableAnimator$WrappedRunnable;
.super Ljava/lang/Object;
.source "RunnableAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/animation/RunnableAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WrappedRunnable"
.end annotation


# instance fields
.field private animator:Lcom/amazon/kcp/animation/RunnableAnimator;

.field private volatile canceled:Z

.field private innerRunnable:Ljava/lang/Runnable;

.field private volatile running:Z


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Lcom/amazon/kcp/animation/RunnableAnimator;)V
    .locals 0

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    iput-object p1, p0, Lcom/amazon/kcp/animation/RunnableAnimator$WrappedRunnable;->innerRunnable:Ljava/lang/Runnable;

    .line 294
    iput-object p2, p0, Lcom/amazon/kcp/animation/RunnableAnimator$WrappedRunnable;->animator:Lcom/amazon/kcp/animation/RunnableAnimator;

    const/4 p1, 0x0

    .line 295
    iput-boolean p1, p0, Lcom/amazon/kcp/animation/RunnableAnimator$WrappedRunnable;->running:Z

    .line 296
    iput-boolean p1, p0, Lcom/amazon/kcp/animation/RunnableAnimator$WrappedRunnable;->canceled:Z

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 315
    iput-boolean v0, p0, Lcom/amazon/kcp/animation/RunnableAnimator$WrappedRunnable;->canceled:Z

    return-void
.end method

.method public isRunning()Z
    .locals 1

    .line 311
    iget-boolean v0, p0, Lcom/amazon/kcp/animation/RunnableAnimator$WrappedRunnable;->running:Z

    return v0
.end method

.method public run()V
    .locals 1

    .line 302
    iget-boolean v0, p0, Lcom/amazon/kcp/animation/RunnableAnimator$WrappedRunnable;->canceled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 303
    iput-boolean v0, p0, Lcom/amazon/kcp/animation/RunnableAnimator$WrappedRunnable;->running:Z

    .line 304
    iget-object v0, p0, Lcom/amazon/kcp/animation/RunnableAnimator$WrappedRunnable;->innerRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    .line 305
    iput-boolean v0, p0, Lcom/amazon/kcp/animation/RunnableAnimator$WrappedRunnable;->running:Z

    .line 306
    iget-object v0, p0, Lcom/amazon/kcp/animation/RunnableAnimator$WrappedRunnable;->animator:Lcom/amazon/kcp/animation/RunnableAnimator;

    invoke-virtual {v0}, Lcom/amazon/kcp/animation/RunnableAnimator;->end()V

    :cond_0
    return-void
.end method
