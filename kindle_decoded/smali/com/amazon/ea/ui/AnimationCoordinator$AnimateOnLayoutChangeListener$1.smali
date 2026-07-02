.class Lcom/amazon/ea/ui/AnimationCoordinator$AnimateOnLayoutChangeListener$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AnimationCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ea/ui/AnimationCoordinator$AnimateOnLayoutChangeListener;->onLayoutChange(Landroid/view/View;IIIIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/ea/ui/AnimationCoordinator$AnimateOnLayoutChangeListener;


# direct methods
.method constructor <init>(Lcom/amazon/ea/ui/AnimationCoordinator$AnimateOnLayoutChangeListener;)V
    .locals 0

    .line 402
    iput-object p1, p0, Lcom/amazon/ea/ui/AnimationCoordinator$AnimateOnLayoutChangeListener$1;->this$1:Lcom/amazon/ea/ui/AnimationCoordinator$AnimateOnLayoutChangeListener;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 405
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 406
    invoke-static {}, Lcom/amazon/ea/ui/AnimationCoordinator;->access$300()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Animator ended: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/ea/ui/AnimationCoordinator$AnimateOnLayoutChangeListener$1;->this$1:Lcom/amazon/ea/ui/AnimationCoordinator$AnimateOnLayoutChangeListener;

    invoke-static {v1}, Lcom/amazon/ea/ui/AnimationCoordinator$AnimateOnLayoutChangeListener;->access$700(Lcom/amazon/ea/ui/AnimationCoordinator$AnimateOnLayoutChangeListener;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    :cond_0
    iget-object p1, p0, Lcom/amazon/ea/ui/AnimationCoordinator$AnimateOnLayoutChangeListener$1;->this$1:Lcom/amazon/ea/ui/AnimationCoordinator$AnimateOnLayoutChangeListener;

    iget-object p1, p1, Lcom/amazon/ea/ui/AnimationCoordinator$AnimateOnLayoutChangeListener;->this$0:Lcom/amazon/ea/ui/AnimationCoordinator;

    invoke-static {p1}, Lcom/amazon/ea/ui/AnimationCoordinator;->access$400(Lcom/amazon/ea/ui/AnimationCoordinator;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/ea/ui/AnimationCoordinator$AnimateOnLayoutChangeListener$1;->this$1:Lcom/amazon/ea/ui/AnimationCoordinator$AnimateOnLayoutChangeListener;

    invoke-static {v0}, Lcom/amazon/ea/ui/AnimationCoordinator$AnimateOnLayoutChangeListener;->access$700(Lcom/amazon/ea/ui/AnimationCoordinator$AnimateOnLayoutChangeListener;)Landroid/view/View;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    iget-object p1, p0, Lcom/amazon/ea/ui/AnimationCoordinator$AnimateOnLayoutChangeListener$1;->this$1:Lcom/amazon/ea/ui/AnimationCoordinator$AnimateOnLayoutChangeListener;

    iget-object p1, p1, Lcom/amazon/ea/ui/AnimationCoordinator$AnimateOnLayoutChangeListener;->this$0:Lcom/amazon/ea/ui/AnimationCoordinator;

    invoke-static {p1}, Lcom/amazon/ea/ui/AnimationCoordinator;->access$500(Lcom/amazon/ea/ui/AnimationCoordinator;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/ea/ui/AnimationCoordinator$AnimateOnLayoutChangeListener$1;->this$1:Lcom/amazon/ea/ui/AnimationCoordinator$AnimateOnLayoutChangeListener;

    invoke-static {v0}, Lcom/amazon/ea/ui/AnimationCoordinator$AnimateOnLayoutChangeListener;->access$700(Lcom/amazon/ea/ui/AnimationCoordinator$AnimateOnLayoutChangeListener;)Landroid/view/View;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
