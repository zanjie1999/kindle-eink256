.class public Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeBackgroundLayer;
.super Landroid/widget/LinearLayout;
.source "DoubleTimeBackgroundLayer.java"


# instance fields
.field private final PROPERTY_ALPHA:Ljava/lang/String;

.field private final animationDuration:I

.field private animatorAlpha:Landroid/animation/ObjectAnimator;

.field private zoom_in_alpha:F

.field private zoom_out_alpha:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x2ee

    .line 24
    iput p1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeBackgroundLayer;->animationDuration:I

    const-string p1, "alpha"

    .line 25
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeBackgroundLayer;->PROPERTY_ALPHA:Ljava/lang/String;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 26
    iput p1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeBackgroundLayer;->zoom_in_alpha:F

    const/4 p1, 0x0

    .line 27
    iput p1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeBackgroundLayer;->zoom_out_alpha:F

    const/4 p1, 0x0

    .line 28
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeBackgroundLayer;->animatorAlpha:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x2ee

    .line 24
    iput p1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeBackgroundLayer;->animationDuration:I

    const-string p1, "alpha"

    .line 25
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeBackgroundLayer;->PROPERTY_ALPHA:Ljava/lang/String;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 26
    iput p1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeBackgroundLayer;->zoom_in_alpha:F

    const/4 p1, 0x0

    .line 27
    iput p1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeBackgroundLayer;->zoom_out_alpha:F

    const/4 p1, 0x0

    .line 28
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeBackgroundLayer;->animatorAlpha:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x2ee

    .line 24
    iput p1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeBackgroundLayer;->animationDuration:I

    const-string p1, "alpha"

    .line 25
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeBackgroundLayer;->PROPERTY_ALPHA:Ljava/lang/String;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 26
    iput p1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeBackgroundLayer;->zoom_in_alpha:F

    const/4 p1, 0x0

    .line 27
    iput p1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeBackgroundLayer;->zoom_out_alpha:F

    const/4 p1, 0x0

    .line 28
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeBackgroundLayer;->animatorAlpha:Landroid/animation/ObjectAnimator;

    return-void
.end method


# virtual methods
.method public cancelAnimation()V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeBackgroundLayer;->animatorAlpha:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeBackgroundLayer;->animatorAlpha:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public enableCloseButton(Z)V
    .locals 1

    .line 121
    sget v0, Lcom/amazon/kindle/speedreading/R$id;->dt_close_button:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 125
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 129
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    .line 133
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public hideBackgroundLayer(Landroid/animation/Animator$AnimatorListener;)V
    .locals 3

    .line 99
    invoke-virtual {p0}, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeBackgroundLayer;->cancelAnimation()V

    const/4 v0, 0x1

    new-array v0, v0, [F

    .line 101
    iget v1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeBackgroundLayer;->zoom_out_alpha:F

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string v1, "alpha"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x2ee

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeBackgroundLayer;->animatorAlpha:Landroid/animation/ObjectAnimator;

    .line 103
    invoke-static {}, Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController;->getCubicBezierInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-eqz p1, :cond_0

    .line 107
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeBackgroundLayer;->animatorAlpha:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 109
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeBackgroundLayer;->animatorAlpha:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public setExitButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 47
    sget v0, Lcom/amazon/kindle/speedreading/R$id;->dt_close_button:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public setTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0

    .line 140
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public showBackgroundLayer(Landroid/animation/Animator$AnimatorListener;)V
    .locals 3

    .line 84
    invoke-virtual {p0}, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeBackgroundLayer;->cancelAnimation()V

    const/4 v0, 0x1

    new-array v0, v0, [F

    .line 86
    iget v1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeBackgroundLayer;->zoom_in_alpha:F

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string v1, "alpha"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x2ee

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeBackgroundLayer;->animatorAlpha:Landroid/animation/ObjectAnimator;

    .line 88
    invoke-static {}, Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController;->getCubicBezierInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-eqz p1, :cond_0

    .line 92
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeBackgroundLayer;->animatorAlpha:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 94
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeBackgroundLayer;->animatorAlpha:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public updateColors(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/krx/ui/ColorMode;)V
    .locals 1

    .line 64
    sget-object v0, Lcom/amazon/kindle/krx/ui/ColorMode;->BLACK:Lcom/amazon/kindle/krx/ui/ColorMode;

    invoke-virtual {p2, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/amazon/kindle/krx/ui/ColorMode;->NIGHT:Lcom/amazon/kindle/krx/ui/ColorMode;

    invoke-virtual {p2, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    sget-object v0, Lcom/amazon/kindle/krx/ui/ColorMode;->GREEN:Lcom/amazon/kindle/krx/ui/ColorMode;

    invoke-virtual {p2, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/speedreading/R$color;->dt_green_mode_background:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_1

    .line 72
    :cond_1
    sget-object v0, Lcom/amazon/kindle/krx/ui/ColorMode;->SEPIA:Lcom/amazon/kindle/krx/ui/ColorMode;

    invoke-virtual {p2, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 74
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/speedreading/R$color;->dt_sepia_mode_background:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_1

    .line 78
    :cond_2
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/speedreading/R$color;->dt_white_mode_background:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_1

    .line 66
    :cond_3
    :goto_0
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/speedreading/R$color;->dt_black_mode_background:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    :goto_1
    return-void
.end method
