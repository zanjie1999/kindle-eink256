.class public Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;
.super Landroid/widget/TextView;
.source "DoubleTimeWordContainer.java"


# instance fields
.field private final PROPERTY_SCALE_X:Ljava/lang/String;

.field private final PROPERTY_SCALE_Y:Ljava/lang/String;

.field private final PROPERTY_X:Ljava/lang/String;

.field private final PROPERTY_Y:Ljava/lang/String;

.field private finalScaleX:F

.field private finalScaleY:F

.field private initialScaleX:Ljava/lang/Float;

.field private initialScaleY:Ljava/lang/Float;

.field private sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private final zoomDuration:I

.field private zoomInAnimation:Landroid/animation/AnimatorSet;

.field private zoomOutAnimation:Landroid/animation/AnimatorSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 41
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;->initialScaleX:Ljava/lang/Float;

    .line 46
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;->initialScaleY:Ljava/lang/Float;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 51
    iput p1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;->finalScaleX:F

    .line 56
    iput p1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;->finalScaleY:F

    const/16 p1, 0x320

    .line 61
    iput p1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;->zoomDuration:I

    const/4 p1, 0x0

    .line 63
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    const-string p1, "x"

    .line 68
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;->PROPERTY_X:Ljava/lang/String;

    const-string p1, "y"

    .line 69
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;->PROPERTY_Y:Ljava/lang/String;

    const-string p1, "scaleX"

    .line 70
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;->PROPERTY_SCALE_X:Ljava/lang/String;

    const-string p1, "scaleY"

    .line 71
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;->PROPERTY_SCALE_Y:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 82
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 41
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;->initialScaleX:Ljava/lang/Float;

    .line 46
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;->initialScaleY:Ljava/lang/Float;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 51
    iput p1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;->finalScaleX:F

    .line 56
    iput p1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;->finalScaleY:F

    const/16 p1, 0x320

    .line 61
    iput p1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;->zoomDuration:I

    const/4 p1, 0x0

    .line 63
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    const-string p1, "x"

    .line 68
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;->PROPERTY_X:Ljava/lang/String;

    const-string p1, "y"

    .line 69
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;->PROPERTY_Y:Ljava/lang/String;

    const-string p1, "scaleX"

    .line 70
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;->PROPERTY_SCALE_X:Ljava/lang/String;

    const-string p1, "scaleY"

    .line 71
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;->PROPERTY_SCALE_Y:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 41
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;->initialScaleX:Ljava/lang/Float;

    .line 46
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;->initialScaleY:Ljava/lang/Float;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 51
    iput p1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;->finalScaleX:F

    .line 56
    iput p1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;->finalScaleY:F

    const/16 p1, 0x320

    .line 61
    iput p1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;->zoomDuration:I

    const/4 p1, 0x0

    .line 63
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    const-string p1, "x"

    .line 68
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;->PROPERTY_X:Ljava/lang/String;

    const-string p1, "y"

    .line 69
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;->PROPERTY_Y:Ljava/lang/String;

    const-string p1, "scaleX"

    .line 70
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;->PROPERTY_SCALE_X:Ljava/lang/String;

    const-string p1, "scaleY"

    .line 71
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;->PROPERTY_SCALE_Y:Ljava/lang/String;

    return-void
.end method

.method private createAnimatorForWordZoomIn(FF)Landroid/animation/AnimatorSet;
    .locals 4

    .line 290
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float/2addr p1, v0

    .line 291
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float/2addr p2, v0

    const/16 v0, 0x320

    const-string v1, "x"

    .line 294
    invoke-direct {p0, p0, v1, p1, v0}, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;->createFloatAnimator(Landroid/view/View;Ljava/lang/String;FI)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-string v1, "y"

    .line 297
    invoke-direct {p0, p0, v1, p2, v0}, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;->createFloatAnimator(Landroid/view/View;Ljava/lang/String;FI)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 300
    iget v1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;->finalScaleX:F

    const-string v2, "scaleX"

    invoke-direct {p0, p0, v2, v1, v0}, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;->createFloatAnimator(Landroid/view/View;Ljava/lang/String;FI)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 303
    iget v2, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;->finalScaleY:F

    const-string v3, "scaleY"

    invoke-direct {p0, p0, v3, v2, v0}, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;->createFloatAnimator(Landroid/view/View;Ljava/lang/String;FI)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 306
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 307
    invoke-static {}, Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController;->getCubicBezierInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 308
    invoke-virtual {v2, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-object v2
.end method

.method private createAnimatorForWordZoomOut(Lcom/amazon/kindle/krx/reader/Rectangle;)Landroid/animation/AnimatorSet;
    .locals 5

    .line 327
    iget v0, p1, Lcom/amazon/kindle/krx/reader/Rectangle;->x:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p1, Lcom/amazon/kindle/krx/reader/Rectangle;->width:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    const/16 v1, 0x320

    const-string v2, "x"

    invoke-direct {p0, p0, v2, v0, v1}, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;->createFloatAnimator(Landroid/view/View;Ljava/lang/String;FI)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 330
    iget v2, p1, Lcom/amazon/kindle/krx/reader/Rectangle;->y:I

    iget p1, p1, Lcom/amazon/kindle/krx/reader/Rectangle;->height:I

    div-int/lit8 p1, p1, 0x2

    sub-int/2addr v2, p1

    int-to-float p1, v2

    const-string v2, "y"

    invoke-direct {p0, p0, v2, p1, v1}, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;->createFloatAnimator(Landroid/view/View;Ljava/lang/String;FI)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 333
    iget-object v2, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;->initialScaleX:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const-string v3, "scaleX"

    invoke-direct {p0, p0, v3, v2, v1}, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;->createFloatAnimator(Landroid/view/View;Ljava/lang/String;FI)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 336
    iget-object v3, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;->initialScaleY:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const-string v4, "scaleY"

    invoke-direct {p0, p0, v4, v3, v1}, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;->createFloatAnimator(Landroid/view/View;Ljava/lang/String;FI)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 339
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 340
    invoke-static {}, Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController;->getCubicBezierInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 341
    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-object v3
.end method

.method private createFloatAnimator(Landroid/view/View;Ljava/lang/String;FI)Landroid/animation/ObjectAnimator;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p3, v0, v1

    .line 362
    invoke-static {p1, p2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    int-to-long p2, p4

    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    return-object p1
.end method

.method private getCoveringRectangle(Lcom/amazon/kindle/krx/reader/IPosition;)Lcom/amazon/kindle/krx/reader/Rectangle;
    .locals 3

    const/4 v0, 0x0

    .line 378
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookContent()Lcom/amazon/kindle/krx/content/IBookContent;

    move-result-object v1

    .line 379
    sget-object v2, Lcom/amazon/kindle/krx/content/IBookElement$BookElementType;->TEXT:Lcom/amazon/kindle/krx/content/IBookElement$BookElementType;

    invoke-interface {v1, p1, v2}, Lcom/amazon/kindle/krx/content/IBookContent;->getElement(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/content/IBookElement$BookElementType;)Lcom/amazon/kindle/krx/content/IBookElement;

    move-result-object p1

    .line 380
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBookElement;->getCoveringRectangles()Ljava/util/Vector;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 382
    invoke-virtual {p1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 384
    invoke-virtual {p1, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/krx/reader/Rectangle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    :catch_0
    :cond_0
    return-object v0
.end method

.method private moveViewToXY(Landroid/view/View;II)V
    .locals 0

    int-to-float p2, p2

    .line 270
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    int-to-float p2, p3

    .line 271
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method


# virtual methods
.method public cancelAnimation()V
    .locals 1

    .line 406
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;->zoomInAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;->zoomInAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;->zoomOutAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 413
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;->zoomOutAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    return-void
.end method

.method public hideWordContainer(Lcom/amazon/kindle/speedreading/doubletime/framework/Word;Landroid/animation/Animator$AnimatorListener;)V
    .locals 4

    .line 234
    invoke-virtual {p1}, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->getStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;->getCoveringRectangle(Lcom/amazon/kindle/krx/reader/IPosition;)Lcom/amazon/kindle/krx/reader/Rectangle;

    move-result-object p1

    if-nez p1, :cond_0

    const/16 p1, 0xa

    .line 244
    new-instance v0, Lcom/amazon/kindle/krx/reader/Rectangle;

    invoke-virtual {p0}, Landroid/widget/TextView;->getX()F

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    const/4 v2, 0x5

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getY()F

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {v0, v1, v2, p1, p1}, Lcom/amazon/kindle/krx/reader/Rectangle;-><init>(IIII)V

    move-object p1, v0

    .line 247
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;->createAnimatorForWordZoomOut(Lcom/amazon/kindle/krx/reader/Rectangle;)Landroid/animation/AnimatorSet;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;->zoomOutAnimation:Landroid/animation/AnimatorSet;

    if-eqz p2, :cond_1

    .line 251
    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 253
    :cond_1
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;->zoomOutAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    const/4 p1, 0x0

    .line 255
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setKeepScreenOn(Z)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 128
    invoke-super {p0, p1}, Landroid/widget/TextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 129
    invoke-static {}, Lcom/amazon/kindle/speedreading/doubletime/FontSettings;->getInstance()Lcom/amazon/kindle/speedreading/doubletime/FontSettings;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/speedreading/doubletime/FontSettings;->getTextSize(Z)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 141
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 143
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v1, 0x1

    .line 144
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 145
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 146
    invoke-virtual {p0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 147
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 148
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 155
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Paint;->descent()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    .line 156
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3, v1, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 93
    invoke-static {}, Lcom/amazon/kindle/speedreading/doubletime/FontSettings;->getInstance()Lcom/amazon/kindle/speedreading/doubletime/FontSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/speedreading/doubletime/FontSettings;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 94
    invoke-static {}, Lcom/amazon/kindle/speedreading/doubletime/FontSettings;->getInstance()Lcom/amazon/kindle/speedreading/doubletime/FontSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/speedreading/doubletime/FontSettings;->getTextSize(Z)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextSize(F)V

    return-void
.end method

.method public setSDK(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 0

    .line 398
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-void
.end method

.method public showWordContainer(Lcom/amazon/kindle/speedreading/doubletime/framework/Word;Landroid/animation/Animator$AnimatorListener;FF)V
    .locals 3

    .line 179
    invoke-static {}, Lcom/amazon/kindle/speedreading/doubletime/FontSettings;->getInstance()Lcom/amazon/kindle/speedreading/doubletime/FontSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/speedreading/doubletime/FontSettings;->getTextSize(Z)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 181
    invoke-virtual {p1}, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->getStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    .line 182
    invoke-virtual {p1}, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    invoke-direct {p0, v0}, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;->getCoveringRectangle(Lcom/amazon/kindle/krx/reader/IPosition;)Lcom/amazon/kindle/krx/reader/Rectangle;

    move-result-object p1

    if-nez p1, :cond_0

    const/16 p1, 0xa

    const/4 v0, 0x5

    int-to-float v0, v0

    sub-float v1, p3, v0

    sub-float v0, p4, v0

    .line 195
    new-instance v2, Lcom/amazon/kindle/krx/reader/Rectangle;

    float-to-int v1, v1

    float-to-int v0, v0

    invoke-direct {v2, v1, v0, p1, p1}, Lcom/amazon/kindle/krx/reader/Rectangle;-><init>(IIII)V

    move-object p1, v2

    .line 210
    :cond_0
    iget v0, p1, Lcom/amazon/kindle/krx/reader/Rectangle;->x:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p1, Lcom/amazon/kindle/krx/reader/Rectangle;->width:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p1, Lcom/amazon/kindle/krx/reader/Rectangle;->y:I

    iget p1, p1, Lcom/amazon/kindle/krx/reader/Rectangle;->height:I

    div-int/lit8 p1, p1, 0x2

    sub-int/2addr v1, p1

    invoke-direct {p0, p0, v0, v1}, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;->moveViewToXY(Landroid/view/View;II)V

    .line 212
    invoke-direct {p0, p3, p4}, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;->createAnimatorForWordZoomIn(FF)Landroid/animation/AnimatorSet;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;->zoomInAnimation:Landroid/animation/AnimatorSet;

    if-eqz p2, :cond_1

    .line 215
    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 218
    :cond_1
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;->zoomInAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    const/4 p1, 0x1

    .line 220
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setKeepScreenOn(Z)V

    return-void
.end method

.method public updateColors(Lcom/amazon/kindle/krx/ui/ColorMode;)V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-eqz v0, :cond_4

    .line 106
    sget-object v0, Lcom/amazon/kindle/krx/ui/ColorMode;->BLACK:Lcom/amazon/kindle/krx/ui/ColorMode;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/amazon/kindle/krx/ui/ColorMode;->NIGHT:Lcom/amazon/kindle/krx/ui/ColorMode;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 110
    :cond_0
    sget-object v0, Lcom/amazon/kindle/krx/ui/ColorMode;->GREEN:Lcom/amazon/kindle/krx/ui/ColorMode;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/speedreading/R$color;->dt_green_mode_text:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 114
    :cond_1
    sget-object v0, Lcom/amazon/kindle/krx/ui/ColorMode;->SEPIA:Lcom/amazon/kindle/krx/ui/ColorMode;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 116
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/speedreading/R$color;->dt_sepia_mode_text:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 120
    :cond_2
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/speedreading/R$color;->dt_white_mode_text:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 108
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/speedreading/R$color;->dt_black_mode_text:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_4
    :goto_1
    return-void
.end method
