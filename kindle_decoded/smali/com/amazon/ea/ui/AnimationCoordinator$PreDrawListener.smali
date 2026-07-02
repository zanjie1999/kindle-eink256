.class Lcom/amazon/ea/ui/AnimationCoordinator$PreDrawListener;
.super Ljava/lang/Object;
.source "AnimationCoordinator.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ea/ui/AnimationCoordinator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreDrawListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ea/ui/AnimationCoordinator;


# direct methods
.method private constructor <init>(Lcom/amazon/ea/ui/AnimationCoordinator;)V
    .locals 0

    .line 575
    iput-object p1, p0, Lcom/amazon/ea/ui/AnimationCoordinator$PreDrawListener;->this$0:Lcom/amazon/ea/ui/AnimationCoordinator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/ea/ui/AnimationCoordinator;Lcom/amazon/ea/ui/AnimationCoordinator$1;)V
    .locals 0

    .line 575
    invoke-direct {p0, p1}, Lcom/amazon/ea/ui/AnimationCoordinator$PreDrawListener;-><init>(Lcom/amazon/ea/ui/AnimationCoordinator;)V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 7

    .line 578
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 579
    invoke-static {}, Lcom/amazon/ea/ui/AnimationCoordinator;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onPreDrawListener; Cleaning up."

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    :cond_0
    iget-object v0, p0, Lcom/amazon/ea/ui/AnimationCoordinator$PreDrawListener;->this$0:Lcom/amazon/ea/ui/AnimationCoordinator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazon/ea/ui/AnimationCoordinator;->access$1202(Lcom/amazon/ea/ui/AnimationCoordinator;Lcom/amazon/ea/ui/AnimationCoordinator$PreDrawListener;)Lcom/amazon/ea/ui/AnimationCoordinator$PreDrawListener;

    .line 584
    iget-object v0, p0, Lcom/amazon/ea/ui/AnimationCoordinator$PreDrawListener;->this$0:Lcom/amazon/ea/ui/AnimationCoordinator;

    invoke-static {v0}, Lcom/amazon/ea/ui/AnimationCoordinator;->access$800(Lcom/amazon/ea/ui/AnimationCoordinator;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 585
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 588
    iget-object v2, p0, Lcom/amazon/ea/ui/AnimationCoordinator$PreDrawListener;->this$0:Lcom/amazon/ea/ui/AnimationCoordinator;

    invoke-static {v2}, Lcom/amazon/ea/ui/AnimationCoordinator;->access$100(Lcom/amazon/ea/ui/AnimationCoordinator;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 589
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 590
    invoke-static {}, Lcom/amazon/ea/ui/AnimationCoordinator;->access$300()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Animator not necessary -- view did not re-layout: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    :cond_1
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v4, v3}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    goto :goto_0

    .line 594
    :cond_2
    iget-object v2, p0, Lcom/amazon/ea/ui/AnimationCoordinator$PreDrawListener;->this$0:Lcom/amazon/ea/ui/AnimationCoordinator;

    invoke-static {v2}, Lcom/amazon/ea/ui/AnimationCoordinator;->access$100(Lcom/amazon/ea/ui/AnimationCoordinator;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 597
    iget-object v2, p0, Lcom/amazon/ea/ui/AnimationCoordinator$PreDrawListener;->this$0:Lcom/amazon/ea/ui/AnimationCoordinator;

    invoke-static {v2}, Lcom/amazon/ea/ui/AnimationCoordinator;->access$900(Lcom/amazon/ea/ui/AnimationCoordinator;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 598
    iget-object v2, p0, Lcom/amazon/ea/ui/AnimationCoordinator$PreDrawListener;->this$0:Lcom/amazon/ea/ui/AnimationCoordinator;

    invoke-static {v2}, Lcom/amazon/ea/ui/AnimationCoordinator;->access$200(Lcom/amazon/ea/ui/AnimationCoordinator;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 602
    new-instance v2, Lcom/amazon/ea/ui/AnimationCoordinator$DropFrameOnGlobalLayoutListener;

    iget-object v3, p0, Lcom/amazon/ea/ui/AnimationCoordinator$PreDrawListener;->this$0:Lcom/amazon/ea/ui/AnimationCoordinator;

    invoke-direct {v2, v3, v1}, Lcom/amazon/ea/ui/AnimationCoordinator$DropFrameOnGlobalLayoutListener;-><init>(Lcom/amazon/ea/ui/AnimationCoordinator;Lcom/amazon/ea/ui/AnimationCoordinator$1;)V

    .line 603
    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 604
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v3, 0x12c

    .line 605
    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 606
    new-instance v1, Lcom/amazon/ea/ui/AnimationCoordinator$PreDrawListener$1;

    invoke-direct {v1, p0, v2}, Lcom/amazon/ea/ui/AnimationCoordinator$PreDrawListener$1;-><init>(Lcom/amazon/ea/ui/AnimationCoordinator$PreDrawListener;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 621
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 625
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 626
    invoke-static {}, Lcom/amazon/ea/ui/AnimationCoordinator;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/ea/ui/AnimationCoordinator$PreDrawListener;->this$0:Lcom/amazon/ea/ui/AnimationCoordinator;

    invoke-static {v2}, Lcom/amazon/ea/ui/AnimationCoordinator;->access$400(Lcom/amazon/ea/ui/AnimationCoordinator;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " animators..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    :cond_3
    iget-object v0, p0, Lcom/amazon/ea/ui/AnimationCoordinator$PreDrawListener;->this$0:Lcom/amazon/ea/ui/AnimationCoordinator;

    invoke-static {v0}, Lcom/amazon/ea/ui/AnimationCoordinator;->access$400(Lcom/amazon/ea/ui/AnimationCoordinator;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    .line 629
    invoke-virtual {v1}, Landroid/animation/Animator;->isRunning()Z

    move-result v2

    if-nez v2, :cond_4

    .line 630
    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    goto :goto_1

    :cond_5
    const/4 v0, 0x1

    return v0

    nop

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method
