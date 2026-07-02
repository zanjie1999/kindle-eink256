.class public Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSpeedReadingBox;
.super Landroid/widget/LinearLayout;
.source "DoubleTimeSpeedReadingBox.java"


# instance fields
.field private final PROPERTY_ALPHA:Ljava/lang/String;

.field private final animationDuration:I

.field private height:I

.field private showAnimator:Landroid/animation/ObjectAnimator;

.field private width:I

.field private zoom_in_alpha:F

.field private zoom_out_alpha:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 69
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x320

    .line 27
    iput v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSpeedReadingBox;->animationDuration:I

    const-string v0, "alpha"

    .line 32
    iput-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSpeedReadingBox;->PROPERTY_ALPHA:Ljava/lang/String;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 37
    iput v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSpeedReadingBox;->zoom_in_alpha:F

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSpeedReadingBox;->zoom_out_alpha:F

    .line 71
    invoke-direct {p0, p1}, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSpeedReadingBox;->checkDimensions(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p2, 0x320

    .line 27
    iput p2, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSpeedReadingBox;->animationDuration:I

    const-string p2, "alpha"

    .line 32
    iput-object p2, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSpeedReadingBox;->PROPERTY_ALPHA:Ljava/lang/String;

    const/high16 p2, 0x3f800000    # 1.0f

    .line 37
    iput p2, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSpeedReadingBox;->zoom_in_alpha:F

    const/4 p2, 0x0

    .line 42
    iput p2, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSpeedReadingBox;->zoom_out_alpha:F

    .line 64
    invoke-direct {p0, p1}, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSpeedReadingBox;->checkDimensions(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p2, 0x320

    .line 27
    iput p2, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSpeedReadingBox;->animationDuration:I

    const-string p2, "alpha"

    .line 32
    iput-object p2, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSpeedReadingBox;->PROPERTY_ALPHA:Ljava/lang/String;

    const/high16 p2, 0x3f800000    # 1.0f

    .line 37
    iput p2, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSpeedReadingBox;->zoom_in_alpha:F

    const/4 p2, 0x0

    .line 42
    iput p2, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSpeedReadingBox;->zoom_out_alpha:F

    .line 57
    invoke-direct {p0, p1}, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSpeedReadingBox;->checkDimensions(Landroid/content/Context;)V

    return-void
.end method

.method private checkDimensions(Landroid/content/Context;)V
    .locals 6

    .line 101
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 102
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 103
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 105
    iget v0, v1, Landroid/graphics/Point;->x:I

    .line 107
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/speedreading/R$integer;->dt_speed_reading_box_ideal_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/amazon/kindle/speedreading/R$integer;->dt_speed_reading_box_ideal_height:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    int-to-float p1, p1

    int-to-double v2, v0

    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    mul-double v2, v2, v4

    double-to-int v0, v2

    .line 114
    iput v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSpeedReadingBox;->width:I

    div-float/2addr p1, v1

    int-to-float v0, v0

    mul-float p1, p1, v0

    float-to-int p1, p1

    .line 115
    iput p1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSpeedReadingBox;->height:I

    return-void
.end method

.method private setBoxDimensions()V
    .locals 6

    .line 82
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSpeedReadingBox;->checkDimensions(Landroid/content/Context;)V

    .line 84
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSpeedReadingBox;->width:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 85
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSpeedReadingBox;->height:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 87
    sget v0, Lcom/amazon/kindle/speedreading/R$id;->dt_speed_reading_box_lines:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 89
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSpeedReadingBox;->width:I

    int-to-double v2, v2

    const-wide v4, 0x3fe3333333333333L    # 0.6

    mul-double v2, v2, v4

    double-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 90
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSpeedReadingBox;->height:I

    int-to-double v1, v1

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    mul-double v1, v1, v3

    double-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method


# virtual methods
.method public cancelAnimation()V
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSpeedReadingBox;->showAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSpeedReadingBox;->showAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public hideSpeedReadingBox()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [F

    .line 131
    iget v1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSpeedReadingBox;->zoom_out_alpha:F

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string v1, "alpha"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x320

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 133
    invoke-static {}, Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController;->getCubicBezierInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 135
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 206
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 208
    invoke-direct {p0}, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSpeedReadingBox;->setBoxDimensions()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSpeedReadingBox;->setBoxDimensions()V

    return-void
.end method

.method public showSpeedReadingBox()V
    .locals 3

    .line 120
    invoke-direct {p0}, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSpeedReadingBox;->setBoxDimensions()V

    const/4 v0, 0x1

    new-array v0, v0, [F

    .line 122
    iget v1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSpeedReadingBox;->zoom_in_alpha:F

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string v1, "alpha"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x320

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSpeedReadingBox;->showAnimator:Landroid/animation/ObjectAnimator;

    .line 124
    invoke-static {}, Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController;->getCubicBezierInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 126
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSpeedReadingBox;->showAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public updateColors(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/krx/ui/ColorMode;)V
    .locals 2

    .line 156
    sget v0, Lcom/amazon/kindle/speedreading/R$id;->dt_speed_reading_box_lines:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 160
    sget-object v1, Lcom/amazon/kindle/krx/ui/ColorMode;->BLACK:Lcom/amazon/kindle/krx/ui/ColorMode;

    invoke-virtual {p2, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/amazon/kindle/krx/ui/ColorMode;->NIGHT:Lcom/amazon/kindle/krx/ui/ColorMode;

    invoke-virtual {p2, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 165
    :cond_0
    sget-object v1, Lcom/amazon/kindle/krx/ui/ColorMode;->GREEN:Lcom/amazon/kindle/krx/ui/ColorMode;

    invoke-virtual {p2, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 167
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/amazon/kindle/speedreading/R$drawable;->dt_speedread_panel_green:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 168
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/amazon/kindle/speedreading/R$drawable;->dt_lines_green:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 170
    :cond_1
    sget-object v1, Lcom/amazon/kindle/krx/ui/ColorMode;->SEPIA:Lcom/amazon/kindle/krx/ui/ColorMode;

    invoke-virtual {p2, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 172
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/amazon/kindle/speedreading/R$drawable;->dt_speedread_panel_sepia:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 173
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/amazon/kindle/speedreading/R$drawable;->dt_lines_sepia:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 177
    :cond_2
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/amazon/kindle/speedreading/R$drawable;->dt_speedread_panel_white:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 178
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/amazon/kindle/speedreading/R$drawable;->dt_lines_white:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 162
    :cond_3
    :goto_0
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/amazon/kindle/speedreading/R$drawable;->dt_speedread_panel_dark:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 163
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/amazon/kindle/speedreading/R$drawable;->dt_lines_black:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 181
    :goto_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-ge p1, v0, :cond_4

    .line 184
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 188
    :cond_4
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    return-void
.end method
