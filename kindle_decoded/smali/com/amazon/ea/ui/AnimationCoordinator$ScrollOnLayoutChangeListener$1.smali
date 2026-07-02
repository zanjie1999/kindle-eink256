.class Lcom/amazon/ea/ui/AnimationCoordinator$ScrollOnLayoutChangeListener$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AnimationCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ea/ui/AnimationCoordinator$ScrollOnLayoutChangeListener;->onLayoutChangeBottomSheet(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/ea/ui/AnimationCoordinator$ScrollOnLayoutChangeListener;

.field final synthetic val$nestedRootScroll:Landroidx/core/widget/NestedScrollView;


# direct methods
.method constructor <init>(Lcom/amazon/ea/ui/AnimationCoordinator$ScrollOnLayoutChangeListener;Landroidx/core/widget/NestedScrollView;)V
    .locals 0

    .line 492
    iput-object p1, p0, Lcom/amazon/ea/ui/AnimationCoordinator$ScrollOnLayoutChangeListener$1;->this$1:Lcom/amazon/ea/ui/AnimationCoordinator$ScrollOnLayoutChangeListener;

    iput-object p2, p0, Lcom/amazon/ea/ui/AnimationCoordinator$ScrollOnLayoutChangeListener$1;->val$nestedRootScroll:Landroidx/core/widget/NestedScrollView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 495
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 496
    invoke-static {}, Lcom/amazon/ea/ui/AnimationCoordinator;->access$300()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Scroll animator ended: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/ea/ui/AnimationCoordinator$ScrollOnLayoutChangeListener$1;->val$nestedRootScroll:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    :cond_0
    iget-object p1, p0, Lcom/amazon/ea/ui/AnimationCoordinator$ScrollOnLayoutChangeListener$1;->this$1:Lcom/amazon/ea/ui/AnimationCoordinator$ScrollOnLayoutChangeListener;

    iget-object p1, p1, Lcom/amazon/ea/ui/AnimationCoordinator$ScrollOnLayoutChangeListener;->this$0:Lcom/amazon/ea/ui/AnimationCoordinator;

    invoke-static {p1}, Lcom/amazon/ea/ui/AnimationCoordinator;->access$400(Lcom/amazon/ea/ui/AnimationCoordinator;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/ea/ui/AnimationCoordinator$ScrollOnLayoutChangeListener$1;->val$nestedRootScroll:Landroidx/core/widget/NestedScrollView;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
