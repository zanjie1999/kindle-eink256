.class public Lcom/amazon/ea/ui/AnimationCoordinator$ScrollOnLayoutChangeListener;
.super Ljava/lang/Object;
.source "AnimationCoordinator.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ea/ui/AnimationCoordinator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ScrollOnLayoutChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ea/ui/AnimationCoordinator;


# direct methods
.method protected constructor <init>(Lcom/amazon/ea/ui/AnimationCoordinator;)V
    .locals 0

    .line 421
    iput-object p1, p0, Lcom/amazon/ea/ui/AnimationCoordinator$ScrollOnLayoutChangeListener;->this$0:Lcom/amazon/ea/ui/AnimationCoordinator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 427
    iget-object p1, p0, Lcom/amazon/ea/ui/AnimationCoordinator$ScrollOnLayoutChangeListener;->this$0:Lcom/amazon/ea/ui/AnimationCoordinator;

    invoke-static {p1}, Lcom/amazon/ea/ui/AnimationCoordinator;->access$100(Lcom/amazon/ea/ui/AnimationCoordinator;)Ljava/util/HashMap;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/ea/ui/AnimationCoordinator$ScrollOnLayoutChangeListener;->this$0:Lcom/amazon/ea/ui/AnimationCoordinator;

    invoke-static {p2}, Lcom/amazon/ea/ui/AnimationCoordinator;->access$800(Lcom/amazon/ea/ui/AnimationCoordinator;)Landroid/view/ViewGroup;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    iget-object p1, p0, Lcom/amazon/ea/ui/AnimationCoordinator$ScrollOnLayoutChangeListener;->this$0:Lcom/amazon/ea/ui/AnimationCoordinator;

    invoke-static {p1}, Lcom/amazon/ea/ui/AnimationCoordinator;->access$800(Lcom/amazon/ea/ui/AnimationCoordinator;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 431
    iget-object p1, p0, Lcom/amazon/ea/ui/AnimationCoordinator$ScrollOnLayoutChangeListener;->this$0:Lcom/amazon/ea/ui/AnimationCoordinator;

    invoke-static {p1}, Lcom/amazon/ea/ui/AnimationCoordinator;->access$400(Lcom/amazon/ea/ui/AnimationCoordinator;)Ljava/util/Map;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/ea/ui/AnimationCoordinator$ScrollOnLayoutChangeListener;->this$0:Lcom/amazon/ea/ui/AnimationCoordinator;

    invoke-static {p2}, Lcom/amazon/ea/ui/AnimationCoordinator;->access$800(Lcom/amazon/ea/ui/AnimationCoordinator;)Landroid/view/ViewGroup;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/animation/Animator;

    if-eqz p1, :cond_0

    .line 433
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 437
    :cond_0
    iget-object p1, p0, Lcom/amazon/ea/ui/AnimationCoordinator$ScrollOnLayoutChangeListener;->this$0:Lcom/amazon/ea/ui/AnimationCoordinator;

    invoke-static {p1}, Lcom/amazon/ea/ui/AnimationCoordinator;->access$800(Lcom/amazon/ea/ui/AnimationCoordinator;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/amazon/ea/ui/ScrollLayoutDecider;->onLayoutChangeDecider(Landroid/view/ViewGroup;Lcom/amazon/ea/ui/AnimationCoordinator$ScrollOnLayoutChangeListener;)V

    return-void
.end method

.method protected onLayoutChangeBottomSheet(Landroid/view/ViewGroup;)V
    .locals 10

    .line 442
    check-cast p1, Landroidx/core/widget/NestedScrollView;

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 443
    fill-array-data v1, :array_0

    new-array v2, v0, [I

    .line 444
    fill-array-data v2, :array_1

    .line 446
    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    .line 451
    iget-object v3, p0, Lcom/amazon/ea/ui/AnimationCoordinator$ScrollOnLayoutChangeListener;->this$0:Lcom/amazon/ea/ui/AnimationCoordinator;

    invoke-static {v3}, Lcom/amazon/ea/ui/AnimationCoordinator;->access$900(Lcom/amazon/ea/ui/AnimationCoordinator;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 452
    invoke-virtual {v7, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 454
    aget v9, v2, v8

    if-eq v5, v4, :cond_1

    if-ge v9, v5, :cond_2

    :cond_1
    move v5, v9

    .line 459
    :cond_2
    aget v8, v2, v8

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v8, v7

    if-eq v6, v4, :cond_3

    if-le v8, v6, :cond_0

    :cond_3
    move v6, v8

    goto :goto_0

    .line 466
    :cond_4
    iget-object v2, p0, Lcom/amazon/ea/ui/AnimationCoordinator$ScrollOnLayoutChangeListener;->this$0:Lcom/amazon/ea/ui/AnimationCoordinator;

    invoke-static {v2}, Lcom/amazon/ea/ui/AnimationCoordinator;->access$1000(Lcom/amazon/ea/ui/AnimationCoordinator;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/ea/R$dimen;->endactions_scroll_to_visible_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v5, v2

    add-int/2addr v6, v2

    .line 473
    aget v2, v1, v8

    .line 474
    aget v1, v1, v8

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    sub-int v3, v6, v5

    sub-int v4, v1, v2

    const/4 v7, 0x0

    if-le v3, v4, :cond_5

    const/4 v3, 0x1

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_8

    if-ge v5, v2, :cond_6

    goto :goto_2

    :cond_6
    if-le v6, v1, :cond_7

    sub-int/2addr v6, v1

    goto :goto_3

    :cond_7
    const/4 v6, 0x0

    goto :goto_3

    :cond_8
    :goto_2
    sub-int v6, v5, v2

    :goto_3
    if-eqz v6, :cond_a

    .line 485
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 486
    invoke-static {}, Lcom/amazon/ea/ui/AnimationCoordinator;->access$300()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creating scroll animator: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    :cond_9
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v1

    .line 489
    invoke-static {}, Lcom/amazon/ea/ui/AnimationCoordinator;->access$1100()Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->clone()Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 490
    invoke-virtual {v2, p1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    new-array v0, v0, [I

    aput v1, v0, v7

    add-int/2addr v1, v6

    aput v1, v0, v8

    .line 491
    invoke-virtual {v2, v0}, Landroid/animation/ObjectAnimator;->setIntValues([I)V

    .line 492
    new-instance v0, Lcom/amazon/ea/ui/AnimationCoordinator$ScrollOnLayoutChangeListener$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/ea/ui/AnimationCoordinator$ScrollOnLayoutChangeListener$1;-><init>(Lcom/amazon/ea/ui/AnimationCoordinator$ScrollOnLayoutChangeListener;Landroidx/core/widget/NestedScrollView;)V

    invoke-virtual {v2, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 501
    iget-object v0, p0, Lcom/amazon/ea/ui/AnimationCoordinator$ScrollOnLayoutChangeListener;->this$0:Lcom/amazon/ea/ui/AnimationCoordinator;

    invoke-static {v0}, Lcom/amazon/ea/ui/AnimationCoordinator;->access$400(Lcom/amazon/ea/ui/AnimationCoordinator;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method protected onLayoutChangeLegacy(Landroid/view/ViewGroup;)V
    .locals 10

    .line 507
    check-cast p1, Landroid/widget/ScrollView;

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 508
    fill-array-data v1, :array_0

    new-array v2, v0, [I

    .line 509
    fill-array-data v2, :array_1

    .line 511
    invoke-virtual {p1, v1}, Landroid/widget/ScrollView;->getLocationInWindow([I)V

    .line 516
    iget-object v3, p0, Lcom/amazon/ea/ui/AnimationCoordinator$ScrollOnLayoutChangeListener;->this$0:Lcom/amazon/ea/ui/AnimationCoordinator;

    invoke-static {v3}, Lcom/amazon/ea/ui/AnimationCoordinator;->access$900(Lcom/amazon/ea/ui/AnimationCoordinator;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 517
    invoke-virtual {v7, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 519
    aget v9, v2, v8

    if-eq v5, v4, :cond_1

    if-ge v9, v5, :cond_2

    :cond_1
    move v5, v9

    .line 524
    :cond_2
    aget v8, v2, v8

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v8, v7

    if-eq v6, v4, :cond_3

    if-le v8, v6, :cond_0

    :cond_3
    move v6, v8

    goto :goto_0

    .line 531
    :cond_4
    iget-object v2, p0, Lcom/amazon/ea/ui/AnimationCoordinator$ScrollOnLayoutChangeListener;->this$0:Lcom/amazon/ea/ui/AnimationCoordinator;

    invoke-static {v2}, Lcom/amazon/ea/ui/AnimationCoordinator;->access$1000(Lcom/amazon/ea/ui/AnimationCoordinator;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/ea/R$dimen;->endactions_scroll_to_visible_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v5, v2

    add-int/2addr v6, v2

    .line 538
    aget v2, v1, v8

    .line 539
    aget v1, v1, v8

    invoke-virtual {p1}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    sub-int v3, v6, v5

    sub-int v4, v1, v2

    const/4 v7, 0x0

    if-le v3, v4, :cond_5

    const/4 v3, 0x1

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_8

    if-ge v5, v2, :cond_6

    goto :goto_2

    :cond_6
    if-le v6, v1, :cond_7

    sub-int/2addr v6, v1

    goto :goto_3

    :cond_7
    const/4 v6, 0x0

    goto :goto_3

    :cond_8
    :goto_2
    sub-int v6, v5, v2

    :goto_3
    if-eqz v6, :cond_a

    .line 550
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 551
    invoke-static {}, Lcom/amazon/ea/ui/AnimationCoordinator;->access$300()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creating scroll animator: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    :cond_9
    invoke-virtual {p1}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    .line 554
    invoke-static {}, Lcom/amazon/ea/ui/AnimationCoordinator;->access$1100()Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->clone()Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 555
    invoke-virtual {v2, p1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    new-array v0, v0, [I

    aput v1, v0, v7

    add-int/2addr v1, v6

    aput v1, v0, v8

    .line 556
    invoke-virtual {v2, v0}, Landroid/animation/ObjectAnimator;->setIntValues([I)V

    .line 557
    new-instance v0, Lcom/amazon/ea/ui/AnimationCoordinator$ScrollOnLayoutChangeListener$2;

    invoke-direct {v0, p0, p1}, Lcom/amazon/ea/ui/AnimationCoordinator$ScrollOnLayoutChangeListener$2;-><init>(Lcom/amazon/ea/ui/AnimationCoordinator$ScrollOnLayoutChangeListener;Landroid/widget/ScrollView;)V

    invoke-virtual {v2, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 566
    iget-object v0, p0, Lcom/amazon/ea/ui/AnimationCoordinator$ScrollOnLayoutChangeListener;->this$0:Lcom/amazon/ea/ui/AnimationCoordinator;

    invoke-static {v0}, Lcom/amazon/ea/ui/AnimationCoordinator;->access$400(Lcom/amazon/ea/ui/AnimationCoordinator;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data
.end method
