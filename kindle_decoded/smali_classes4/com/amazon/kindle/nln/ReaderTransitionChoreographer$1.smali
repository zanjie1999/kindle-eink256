.class Lcom/amazon/kindle/nln/ReaderTransitionChoreographer$1;
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

    .line 79
    iput-object p1, p0, Lcom/amazon/kindle/nln/ReaderTransitionChoreographer$1;->this$0:Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/amazon/kindle/nln/ReaderTransitionChoreographer$1;->this$0:Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;

    invoke-static {v0}, Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;->access$010(Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;)I

    .line 105
    invoke-static {}, Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;->access$100()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(--) Number of active animations: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/nln/ReaderTransitionChoreographer$1;->this$0:Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;

    invoke-static {v1}, Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;->access$000(Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " For "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/nln/ReaderTransitionChoreographer$1;->this$0:Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    iget-object v0, p0, Lcom/amazon/kindle/nln/ReaderTransitionChoreographer$1;->this$0:Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;

    invoke-static {v0}, Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;->access$000(Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;)I

    move-result v0

    if-nez v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/amazon/kindle/nln/ReaderTransitionChoreographer$1;->this$0:Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;

    invoke-static {v0}, Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;->access$300(Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;)V

    .line 109
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/amazon/kindle/nln/ReaderTransitionChoreographer$1;->this$0:Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;

    invoke-static {v0}, Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;->access$010(Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;)I

    .line 94
    invoke-static {}, Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;->access$100()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(--) Number of active animations: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/nln/ReaderTransitionChoreographer$1;->this$0:Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;

    invoke-static {v1}, Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;->access$000(Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " For "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/nln/ReaderTransitionChoreographer$1;->this$0:Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    iget-object v0, p0, Lcom/amazon/kindle/nln/ReaderTransitionChoreographer$1;->this$0:Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;

    invoke-static {v0}, Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;->access$000(Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;)I

    move-result v0

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/amazon/kindle/nln/ReaderTransitionChoreographer$1;->this$0:Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;

    invoke-static {v0}, Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;->access$300(Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;)V

    .line 98
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 82
    iget-object p1, p0, Lcom/amazon/kindle/nln/ReaderTransitionChoreographer$1;->this$0:Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;

    invoke-static {p1}, Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;->access$008(Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;)I

    .line 83
    invoke-static {}, Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;->access$100()Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "(++) Number of active animations: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/kindle/nln/ReaderTransitionChoreographer$1;->this$0:Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;

    invoke-static {v0}, Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;->access$000(Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " For "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/kindle/nln/ReaderTransitionChoreographer$1;->this$0:Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    iget-object p1, p0, Lcom/amazon/kindle/nln/ReaderTransitionChoreographer$1;->this$0:Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;

    invoke-static {p1}, Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;->access$200(Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 86
    iget-object p1, p0, Lcom/amazon/kindle/nln/ReaderTransitionChoreographer$1;->this$0:Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;->access$202(Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;Z)Z

    .line 87
    iget-object p1, p0, Lcom/amazon/kindle/nln/ReaderTransitionChoreographer$1;->this$0:Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;

    invoke-virtual {p1}, Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;->onTransitionStart()V

    :cond_0
    return-void
.end method
