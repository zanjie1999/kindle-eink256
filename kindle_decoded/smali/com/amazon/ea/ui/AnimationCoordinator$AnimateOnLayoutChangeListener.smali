.class Lcom/amazon/ea/ui/AnimationCoordinator$AnimateOnLayoutChangeListener;
.super Ljava/lang/Object;
.source "AnimationCoordinator.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ea/ui/AnimationCoordinator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimateOnLayoutChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ea/ui/AnimationCoordinator;

.field private final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/amazon/ea/ui/AnimationCoordinator;Landroid/view/View;)V
    .locals 0

    .line 345
    iput-object p1, p0, Lcom/amazon/ea/ui/AnimationCoordinator$AnimateOnLayoutChangeListener;->this$0:Lcom/amazon/ea/ui/AnimationCoordinator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 346
    iput-object p2, p0, Lcom/amazon/ea/ui/AnimationCoordinator$AnimateOnLayoutChangeListener;->view:Landroid/view/View;

    return-void
.end method

.method static synthetic access$700(Lcom/amazon/ea/ui/AnimationCoordinator$AnimateOnLayoutChangeListener;)Landroid/view/View;
    .locals 0

    .line 335
    iget-object p0, p0, Lcom/amazon/ea/ui/AnimationCoordinator$AnimateOnLayoutChangeListener;->view:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 5

    .line 353
    iget-object v0, p0, Lcom/amazon/ea/ui/AnimationCoordinator$AnimateOnLayoutChangeListener;->this$0:Lcom/amazon/ea/ui/AnimationCoordinator;

    invoke-static {v0}, Lcom/amazon/ea/ui/AnimationCoordinator;->access$100(Lcom/amazon/ea/ui/AnimationCoordinator;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/ea/ui/AnimationCoordinator$AnimateOnLayoutChangeListener;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    iget-object v0, p0, Lcom/amazon/ea/ui/AnimationCoordinator$AnimateOnLayoutChangeListener;->view:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 357
    iget-object v0, p0, Lcom/amazon/ea/ui/AnimationCoordinator$AnimateOnLayoutChangeListener;->this$0:Lcom/amazon/ea/ui/AnimationCoordinator;

    invoke-static {v0}, Lcom/amazon/ea/ui/AnimationCoordinator;->access$200(Lcom/amazon/ea/ui/AnimationCoordinator;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 358
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 359
    invoke-static {}, Lcom/amazon/ea/ui/AnimationCoordinator;->access$300()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Animator not necessary -- view is fading in"

    invoke-static {p1, p2}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    if-ne p6, p2, :cond_3

    if-ne p7, p3, :cond_3

    if-ne p8, p4, :cond_3

    if-ne p9, p5, :cond_3

    .line 366
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 367
    invoke-static {}, Lcom/amazon/ea/ui/AnimationCoordinator;->access$300()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Animator not necessary -- layout did not change frame"

    invoke-static {p1, p2}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    .line 373
    :cond_3
    iget-object p1, p0, Lcom/amazon/ea/ui/AnimationCoordinator$AnimateOnLayoutChangeListener;->this$0:Lcom/amazon/ea/ui/AnimationCoordinator;

    invoke-static {p1}, Lcom/amazon/ea/ui/AnimationCoordinator;->access$400(Lcom/amazon/ea/ui/AnimationCoordinator;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/ea/ui/AnimationCoordinator$AnimateOnLayoutChangeListener;->view:Landroid/view/View;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 375
    iget-object p1, p0, Lcom/amazon/ea/ui/AnimationCoordinator$AnimateOnLayoutChangeListener;->this$0:Lcom/amazon/ea/ui/AnimationCoordinator;

    invoke-static {p1}, Lcom/amazon/ea/ui/AnimationCoordinator;->access$500(Lcom/amazon/ea/ui/AnimationCoordinator;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/ea/ui/AnimationCoordinator$AnimateOnLayoutChangeListener;->view:Landroid/view/View;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    .line 376
    iget v0, p1, Landroid/graphics/Rect;->left:I

    if-ne v0, p2, :cond_5

    iget v0, p1, Landroid/graphics/Rect;->top:I

    if-ne v0, p3, :cond_5

    iget v0, p1, Landroid/graphics/Rect;->right:I

    if-ne v0, p4, :cond_5

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    if-ne p1, p5, :cond_5

    .line 377
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 378
    invoke-static {}, Lcom/amazon/ea/ui/AnimationCoordinator;->access$300()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Animator not necessary -- already animating towards that frame"

    invoke-static {p1, p2}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void

    .line 384
    :cond_5
    iget-object p1, p0, Lcom/amazon/ea/ui/AnimationCoordinator$AnimateOnLayoutChangeListener;->this$0:Lcom/amazon/ea/ui/AnimationCoordinator;

    invoke-static {p1}, Lcom/amazon/ea/ui/AnimationCoordinator;->access$500(Lcom/amazon/ea/ui/AnimationCoordinator;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/ea/ui/AnimationCoordinator$AnimateOnLayoutChangeListener;->view:Landroid/view/View;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    iget-object p1, p0, Lcom/amazon/ea/ui/AnimationCoordinator$AnimateOnLayoutChangeListener;->this$0:Lcom/amazon/ea/ui/AnimationCoordinator;

    invoke-static {p1}, Lcom/amazon/ea/ui/AnimationCoordinator;->access$400(Lcom/amazon/ea/ui/AnimationCoordinator;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/ea/ui/AnimationCoordinator$AnimateOnLayoutChangeListener;->view:Landroid/view/View;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_6

    .line 387
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 392
    :cond_6
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 393
    invoke-static {}, Lcom/amazon/ea/ui/AnimationCoordinator;->access$300()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Creating animator: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/ea/ui/AnimationCoordinator$AnimateOnLayoutChangeListener;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    :cond_7
    invoke-static {}, Lcom/amazon/ea/ui/AnimationCoordinator;->access$600()Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->clone()Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 396
    iget-object v0, p0, Lcom/amazon/ea/ui/AnimationCoordinator$AnimateOnLayoutChangeListener;->view:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 397
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    const/4 v1, 0x0

    .line 398
    aget-object v2, v0, v1

    const/4 v3, 0x2

    new-array v4, v3, [I

    aput p6, v4, v1

    const/4 p6, 0x1

    aput p2, v4, p6

    invoke-virtual {v2, v4}, Landroid/animation/PropertyValuesHolder;->setIntValues([I)V

    .line 399
    aget-object v2, v0, p6

    new-array v4, v3, [I

    aput p7, v4, v1

    aput p3, v4, p6

    invoke-virtual {v2, v4}, Landroid/animation/PropertyValuesHolder;->setIntValues([I)V

    .line 400
    aget-object p7, v0, v3

    new-array v2, v3, [I

    aput p8, v2, v1

    aput p4, v2, p6

    invoke-virtual {p7, v2}, Landroid/animation/PropertyValuesHolder;->setIntValues([I)V

    const/4 p7, 0x3

    .line 401
    aget-object p7, v0, p7

    new-array p8, v3, [I

    aput p9, p8, v1

    aput p5, p8, p6

    invoke-virtual {p7, p8}, Landroid/animation/PropertyValuesHolder;->setIntValues([I)V

    .line 402
    new-instance p6, Lcom/amazon/ea/ui/AnimationCoordinator$AnimateOnLayoutChangeListener$1;

    invoke-direct {p6, p0}, Lcom/amazon/ea/ui/AnimationCoordinator$AnimateOnLayoutChangeListener$1;-><init>(Lcom/amazon/ea/ui/AnimationCoordinator$AnimateOnLayoutChangeListener;)V

    invoke-virtual {p1, p6}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 412
    iget-object p6, p0, Lcom/amazon/ea/ui/AnimationCoordinator$AnimateOnLayoutChangeListener;->this$0:Lcom/amazon/ea/ui/AnimationCoordinator;

    invoke-static {p6}, Lcom/amazon/ea/ui/AnimationCoordinator;->access$400(Lcom/amazon/ea/ui/AnimationCoordinator;)Ljava/util/Map;

    move-result-object p6

    iget-object p7, p0, Lcom/amazon/ea/ui/AnimationCoordinator$AnimateOnLayoutChangeListener;->view:Landroid/view/View;

    invoke-interface {p6, p7, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    iget-object p1, p0, Lcom/amazon/ea/ui/AnimationCoordinator$AnimateOnLayoutChangeListener;->this$0:Lcom/amazon/ea/ui/AnimationCoordinator;

    invoke-static {p1}, Lcom/amazon/ea/ui/AnimationCoordinator;->access$500(Lcom/amazon/ea/ui/AnimationCoordinator;)Ljava/util/Map;

    move-result-object p1

    iget-object p6, p0, Lcom/amazon/ea/ui/AnimationCoordinator$AnimateOnLayoutChangeListener;->view:Landroid/view/View;

    new-instance p7, Landroid/graphics/Rect;

    invoke-direct {p7, p2, p3, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-interface {p1, p6, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
