.class Lcom/amazon/kcp/animation/RunnableAnimator$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "RunnableAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/animation/RunnableAnimator;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field canceled:Z

.field final synthetic this$0:Lcom/amazon/kcp/animation/RunnableAnimator;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/animation/RunnableAnimator;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/amazon/kcp/animation/RunnableAnimator$1;->this$0:Lcom/amazon/kcp/animation/RunnableAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x0

    .line 138
    iput-boolean p1, p0, Lcom/amazon/kcp/animation/RunnableAnimator$1;->canceled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 143
    iput-boolean p1, p0, Lcom/amazon/kcp/animation/RunnableAnimator$1;->canceled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 147
    iget-boolean p1, p0, Lcom/amazon/kcp/animation/RunnableAnimator$1;->canceled:Z

    if-nez p1, :cond_0

    .line 149
    iget-object p1, p0, Lcom/amazon/kcp/animation/RunnableAnimator$1;->this$0:Lcom/amazon/kcp/animation/RunnableAnimator;

    invoke-static {p1}, Lcom/amazon/kcp/animation/RunnableAnimator;->access$000(Lcom/amazon/kcp/animation/RunnableAnimator;)V

    :cond_0
    return-void
.end method
