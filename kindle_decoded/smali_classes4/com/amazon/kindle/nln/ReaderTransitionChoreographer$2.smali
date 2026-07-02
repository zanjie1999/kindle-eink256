.class Lcom/amazon/kindle/nln/ReaderTransitionChoreographer$2;
.super Ljava/lang/Object;
.source "ReaderTransitionChoreographer.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/amazon/kindle/nln/ReaderTransitionChoreographer$2;->this$0:Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/amazon/kindle/nln/ReaderTransitionChoreographer$2;->this$0:Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;

    invoke-virtual {v0}, Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;->cleanupAnimation()V

    .line 134
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/amazon/kindle/nln/ReaderTransitionChoreographer$2;->this$0:Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;

    invoke-virtual {v0}, Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;->cleanupAnimation()V

    .line 128
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

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
