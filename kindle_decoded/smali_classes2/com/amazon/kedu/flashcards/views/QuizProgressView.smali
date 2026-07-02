.class public Lcom/amazon/kedu/flashcards/views/QuizProgressView;
.super Landroid/widget/RelativeLayout;
.source "QuizProgressView.java"


# static fields
.field private static final ATTR_DEFAULT_EXPANDED:Z = false

.field private static final CONTRACTION_EXPANSION_FACTOR:F = 3.0f


# instance fields
.field private isExpanded:Z

.field private negativeBar:Landroid/widget/TextView;

.field private positiveBar:Landroid/widget/TextView;

.field private projectedNegativeBarWidth:I

.field private projectedPositiveBarWidth:I

.field private standardTextColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 39
    invoke-direct {p0, p1}, Lcom/amazon/kedu/flashcards/views/QuizProgressView;->initialize(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lcom/amazon/kedu/flashcards/R$styleable;->QuizProgressView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 49
    :try_start_0
    sget p2, Lcom/amazon/kedu/flashcards/R$styleable;->QuizProgressView_isProgressBarExpanded:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 50
    invoke-direct {p0, p2}, Lcom/amazon/kedu/flashcards/views/QuizProgressView;->initialize(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 55
    throw p2
.end method

.method static synthetic access$000(Lcom/amazon/kedu/flashcards/views/QuizProgressView;Z)Landroid/animation/Animator;
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/amazon/kedu/flashcards/views/QuizProgressView;->getContractionExpansionAnimation(Z)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/kedu/flashcards/views/QuizProgressView;III)Landroid/animation/Animator;
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kedu/flashcards/views/QuizProgressView;->getUpdateAnimation(III)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/kedu/flashcards/views/QuizProgressView;)Landroid/widget/TextView;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/amazon/kedu/flashcards/views/QuizProgressView;->negativeBar:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/kedu/flashcards/views/QuizProgressView;)Landroid/widget/TextView;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/amazon/kedu/flashcards/views/QuizProgressView;->positiveBar:Landroid/widget/TextView;

    return-object p0
.end method

.method private buildBarHeightChangeAnimation(Landroid/widget/TextView;I)Landroid/animation/Animator;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 174
    invoke-virtual {p1}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p2

    .line 175
    new-instance v0, Lcom/amazon/kedu/flashcards/views/QuizProgressView$3;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kedu/flashcards/views/QuizProgressView$3;-><init>(Lcom/amazon/kedu/flashcards/views/QuizProgressView;Landroid/widget/TextView;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p2
.end method

.method private buildBarWidthChangeAnimation(Landroid/widget/TextView;I)Landroid/animation/Animator;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 285
    invoke-virtual {p1}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p2

    .line 286
    new-instance v0, Lcom/amazon/kedu/flashcards/views/QuizProgressView$5;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kedu/flashcards/views/QuizProgressView$5;-><init>(Lcom/amazon/kedu/flashcards/views/QuizProgressView;Landroid/widget/TextView;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p2
.end method

.method private buildWholeFitTextWidthChangeAnimation(II)Landroid/animation/Animator;
    .locals 4

    .line 226
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/views/QuizProgressView;->positiveBar:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/amazon/kedu/flashcards/views/QuizProgressView;->getMinWidthForBar(Landroid/widget/TextView;)I

    move-result v0

    .line 228
    iget-object v1, p0, Lcom/amazon/kedu/flashcards/views/QuizProgressView;->negativeBar:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/amazon/kedu/flashcards/views/QuizProgressView;->getMinWidthForBar(Landroid/widget/TextView;)I

    move-result v1

    if-ge p1, v0, :cond_0

    move p1, v0

    :cond_0
    if-ge p2, v1, :cond_1

    move p2, v1

    .line 240
    :cond_1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    sub-int/2addr v0, p1

    sub-int/2addr v0, p2

    if-gez v0, :cond_3

    if-le p1, p2, :cond_2

    add-int/2addr p1, v0

    goto :goto_0

    :cond_2
    add-int/2addr p2, v0

    .line 275
    :cond_3
    :goto_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v2, 0x0

    .line 277
    iget-object v3, p0, Lcom/amazon/kedu/flashcards/views/QuizProgressView;->negativeBar:Landroid/widget/TextView;

    invoke-direct {p0, v3, p2}, Lcom/amazon/kedu/flashcards/views/QuizProgressView;->buildBarWidthChangeAnimation(Landroid/widget/TextView;I)Landroid/animation/Animator;

    move-result-object p2

    aput-object p2, v1, v2

    const/4 p2, 0x1

    iget-object v2, p0, Lcom/amazon/kedu/flashcards/views/QuizProgressView;->positiveBar:Landroid/widget/TextView;

    .line 278
    invoke-direct {p0, v2, p1}, Lcom/amazon/kedu/flashcards/views/QuizProgressView;->buildBarWidthChangeAnimation(Landroid/widget/TextView;I)Landroid/animation/Animator;

    move-result-object p1

    aput-object p1, v1, p2

    .line 277
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object v0
.end method

.method private buildWholeUpdateAnimation(ZII)Landroid/animation/Animator;
    .locals 4

    .line 196
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x2

    if-eqz p1, :cond_0

    .line 200
    invoke-direct {p0, p2, p3}, Lcom/amazon/kedu/flashcards/views/QuizProgressView;->buildWholeFitTextWidthChangeAnimation(II)Landroid/animation/Animator;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_0

    :cond_0
    new-array p1, v1, [Landroid/animation/Animator;

    const/4 v2, 0x0

    .line 204
    iget-object v3, p0, Lcom/amazon/kedu/flashcards/views/QuizProgressView;->positiveBar:Landroid/widget/TextView;

    invoke-direct {p0, v3, p2}, Lcom/amazon/kedu/flashcards/views/QuizProgressView;->buildBarWidthChangeAnimation(Landroid/widget/TextView;I)Landroid/animation/Animator;

    move-result-object p2

    aput-object p2, p1, v2

    const/4 p2, 0x1

    iget-object v2, p0, Lcom/amazon/kedu/flashcards/views/QuizProgressView;->negativeBar:Landroid/widget/TextView;

    .line 205
    invoke-direct {p0, v2, p3}, Lcom/amazon/kedu/flashcards/views/QuizProgressView;->buildBarWidthChangeAnimation(Landroid/widget/TextView;I)Landroid/animation/Animator;

    move-result-object p3

    aput-object p3, p1, p2

    .line 204
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 208
    :goto_0
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/views/QuizProgressView;->negativeBar:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, v1, p2}, Landroid/widget/TextView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 209
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/views/QuizProgressView;->positiveBar:Landroid/widget/TextView;

    invoke-virtual {p1, v1, p2}, Landroid/widget/TextView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 210
    new-instance p1, Lcom/amazon/kedu/flashcards/views/QuizProgressView$4;

    invoke-direct {p1, p0}, Lcom/amazon/kedu/flashcards/views/QuizProgressView$4;-><init>(Lcom/amazon/kedu/flashcards/views/QuizProgressView;)V

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0
.end method

.method private getContractionExpansionAnimation(Z)Landroid/animation/Animator;
    .locals 6

    .line 147
    invoke-direct {p0, p1}, Lcom/amazon/kedu/flashcards/views/QuizProgressView;->getHeightForState(Z)I

    move-result v0

    .line 149
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v2, 0x2

    new-array v3, v2, [Landroid/animation/Animator;

    .line 150
    iget-object v4, p0, Lcom/amazon/kedu/flashcards/views/QuizProgressView;->negativeBar:Landroid/widget/TextView;

    invoke-direct {p0, v4, v0}, Lcom/amazon/kedu/flashcards/views/QuizProgressView;->buildBarHeightChangeAnimation(Landroid/widget/TextView;I)Landroid/animation/Animator;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/amazon/kedu/flashcards/views/QuizProgressView;->positiveBar:Landroid/widget/TextView;

    .line 151
    invoke-direct {p0, v4, v0}, Lcom/amazon/kedu/flashcards/views/QuizProgressView;->buildBarHeightChangeAnimation(Landroid/widget/TextView;I)Landroid/animation/Animator;

    move-result-object v0

    const/4 v4, 0x1

    aput-object v0, v3, v4

    .line 150
    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 153
    iget v0, p0, Lcom/amazon/kedu/flashcards/views/QuizProgressView;->projectedPositiveBarWidth:I

    iget v3, p0, Lcom/amazon/kedu/flashcards/views/QuizProgressView;->projectedNegativeBarWidth:I

    invoke-direct {p0, p1, v0, v3}, Lcom/amazon/kedu/flashcards/views/QuizProgressView;->buildWholeUpdateAnimation(ZII)Landroid/animation/Animator;

    move-result-object p1

    .line 155
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v1, v2, v5

    aput-object p1, v2, v4

    .line 156
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object v0
.end method

.method private getHeightForState(Z)I
    .locals 1

    if-eqz p1, :cond_0

    .line 315
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x40400000    # 3.0f

    div-float/2addr p1, v0

    float-to-int p1, p1

    :goto_0
    return p1
.end method

.method private getMinWidthForBar(Landroid/widget/TextView;)I
    .locals 2

    .line 307
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kedu/flashcards/R$dimen;->fc_quiz_progress_bar_padding_sides:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    .line 308
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p1

    float-to-int p1, p1

    add-int/2addr p1, v0

    return p1
.end method

.method private getUpdateAnimation(III)Landroid/animation/Animator;
    .locals 0

    int-to-float p1, p1

    int-to-float p3, p3

    div-float/2addr p1, p3

    int-to-float p2, p2

    div-float/2addr p2, p3

    .line 166
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result p3

    int-to-float p3, p3

    mul-float p3, p3, p1

    float-to-int p1, p3

    iput p1, p0, Lcom/amazon/kedu/flashcards/views/QuizProgressView;->projectedPositiveBarWidth:I

    .line 167
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result p1

    int-to-float p1, p1

    mul-float p1, p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/amazon/kedu/flashcards/views/QuizProgressView;->projectedNegativeBarWidth:I

    .line 169
    iget-boolean p2, p0, Lcom/amazon/kedu/flashcards/views/QuizProgressView;->isExpanded:Z

    iget p3, p0, Lcom/amazon/kedu/flashcards/views/QuizProgressView;->projectedPositiveBarWidth:I

    invoke-direct {p0, p2, p3, p1}, Lcom/amazon/kedu/flashcards/views/QuizProgressView;->buildWholeUpdateAnimation(ZII)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method private initialize(Z)V
    .locals 2

    .line 60
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 61
    sget v1, Lcom/amazon/kedu/flashcards/R$layout;->fc_view_quiz_progress:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 63
    sget v0, Lcom/amazon/kedu/flashcards/R$id;->negative_bar:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kedu/flashcards/views/QuizProgressView;->negativeBar:Landroid/widget/TextView;

    .line 64
    sget v0, Lcom/amazon/kedu/flashcards/R$id;->positive_bar:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kedu/flashcards/views/QuizProgressView;->positiveBar:Landroid/widget/TextView;

    .line 66
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/views/QuizProgressView;->negativeBar:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    iput v0, p0, Lcom/amazon/kedu/flashcards/views/QuizProgressView;->standardTextColor:I

    const/4 v0, 0x0

    .line 68
    invoke-virtual {p0, p1, v0}, Lcom/amazon/kedu/flashcards/views/QuizProgressView;->setExpanded(ZZ)V

    return-void
.end method


# virtual methods
.method public setExpanded(ZZ)V
    .locals 3

    if-eqz p2, :cond_0

    .line 73
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/amazon/kedu/flashcards/R$integer;->fc_quiz_progress_expand_anim_duration:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-long v0, p2

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 75
    iget p2, p0, Lcom/amazon/kedu/flashcards/views/QuizProgressView;->standardTextColor:I

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    .line 77
    :goto_1
    iget-object v2, p0, Lcom/amazon/kedu/flashcards/views/QuizProgressView;->positiveBar:Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 78
    iget-object v2, p0, Lcom/amazon/kedu/flashcards/views/QuizProgressView;->negativeBar:Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 82
    new-instance p2, Lcom/amazon/kedu/flashcards/views/QuizProgressView$1;

    invoke-direct {p2, p0}, Lcom/amazon/kedu/flashcards/views/QuizProgressView$1;-><init>(Lcom/amazon/kedu/flashcards/views/QuizProgressView;)V

    .line 99
    invoke-virtual {p2, p1, v0, v1}, Lcom/amazon/kedu/flashcards/views/QuizProgressView$1;->init(ZJ)Ljava/lang/Runnable;

    .line 82
    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    .line 102
    iput-boolean p1, p0, Lcom/amazon/kedu/flashcards/views/QuizProgressView;->isExpanded:Z

    return-void
.end method

.method public updateProgress(IIIZ)V
    .locals 8

    .line 112
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/views/QuizProgressView;->positiveBar:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/views/QuizProgressView;->negativeBar:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p4, :cond_0

    .line 115
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v0, Lcom/amazon/kedu/flashcards/R$integer;->fc_quiz_progress_update_anim_duration:I

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p4

    int-to-long v0, p4

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    move-wide v6, v0

    .line 119
    new-instance p4, Lcom/amazon/kedu/flashcards/views/QuizProgressView$2;

    invoke-direct {p4, p0}, Lcom/amazon/kedu/flashcards/views/QuizProgressView$2;-><init>(Lcom/amazon/kedu/flashcards/views/QuizProgressView;)V

    move-object v2, p4

    move v3, p1

    move v4, p2

    move v5, p3

    .line 141
    invoke-virtual/range {v2 .. v7}, Lcom/amazon/kedu/flashcards/views/QuizProgressView$2;->init(IIIJ)Ljava/lang/Runnable;

    .line 119
    invoke-virtual {p0, p4}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
