.class public Lcom/amazon/kcp/animation/AnimatorFactory;
.super Ljava/lang/Object;
.source "AnimatorFactory.java"


# direct methods
.method public static createDownSlideAnimator(Landroid/view/View;ZJ)Landroid/animation/Animator;
    .locals 0

    if-eqz p1, :cond_0

    .line 73
    sget p1, Lcom/amazon/kindle/krl/R$anim;->slide_out_top:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/amazon/kindle/krl/R$anim;->slide_in_top:I

    .line 74
    :goto_0
    invoke-static {p0, p1, p2, p3}, Lcom/amazon/kcp/animation/AnimatorFactory;->createResourceBasedAnimator(Landroid/view/View;IJ)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public static createFadingAnimator(Landroid/view/View;ZJ)Landroid/animation/Animator;
    .locals 0

    if-eqz p1, :cond_0

    .line 43
    sget p1, Lcom/amazon/kindle/krl/R$anim;->fade_in:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/amazon/kindle/krl/R$anim;->fade_out:I

    .line 44
    :goto_0
    invoke-static {p0, p1, p2, p3}, Lcom/amazon/kcp/animation/AnimatorFactory;->createResourceBasedAnimator(Landroid/view/View;IJ)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public static createResourceBasedAnimator(Landroid/view/View;IJ)Landroid/animation/Animator;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 86
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 87
    new-instance v1, Lcom/amazon/kcp/animation/AnimatorFactory$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/amazon/kcp/animation/AnimatorFactory$1;-><init>(Landroid/view/View;IJ)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 95
    invoke-virtual {v0, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static createUpSlideAnimator(Landroid/view/View;ZJ)Landroid/animation/Animator;
    .locals 0

    if-eqz p1, :cond_0

    .line 58
    sget p1, Lcom/amazon/kindle/krl/R$anim;->slide_out_bottom:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/amazon/kindle/krl/R$anim;->slide_in_bottom:I

    .line 59
    :goto_0
    invoke-static {p0, p1, p2, p3}, Lcom/amazon/kcp/animation/AnimatorFactory;->createResourceBasedAnimator(Landroid/view/View;IJ)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method
