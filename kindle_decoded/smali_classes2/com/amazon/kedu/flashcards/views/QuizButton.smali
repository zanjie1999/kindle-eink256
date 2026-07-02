.class public Lcom/amazon/kedu/flashcards/views/QuizButton;
.super Landroid/widget/ImageButton;
.source "QuizButton.java"


# static fields
.field private static final ATTR_DEFAULT_HIGHLIGHT_COLOR:I = -0x1

.field private static final ATTR_DEFAULT_PRIMARY_COLOR:I = -0x1000000

.field private static final BACKGROUND_RESOURCE_ID:I


# instance fields
.field private argbEvaluator:Landroid/animation/ArgbEvaluator;

.field private boundary:Landroid/graphics/Rect;

.field private currentAnimation:Landroid/animation/Animator;

.field private fadeDuration:J

.field private highlightColor:I

.field private highlightDuration:J

.field private primaryColor:I

.field private primaryColorFilterColor:I

.field private queuedAnimation:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    sget v0, Lcom/amazon/kedu/flashcards/R$drawable;->fc_bg_quiz_button:I

    sput v0, Lcom/amazon/kedu/flashcards/views/QuizButton;->BACKGROUND_RESOURCE_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 41
    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    const/high16 p1, -0x1000000

    const/4 v0, -0x1

    .line 42
    invoke-direct {p0, p1, v0}, Lcom/amazon/kedu/flashcards/views/QuizButton;->initialize(II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lcom/amazon/kedu/flashcards/R$styleable;->QuizButton:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 52
    :try_start_0
    sget p2, Lcom/amazon/kedu/flashcards/R$styleable;->QuizButton_primaryColor:I

    const/high16 v0, -0x1000000

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    .line 53
    sget v0, Lcom/amazon/kedu/flashcards/R$styleable;->QuizButton_highlightColor:I

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 55
    invoke-direct {p0, p2, v0}, Lcom/amazon/kedu/flashcards/views/QuizButton;->initialize(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 60
    throw p2
.end method

.method static synthetic access$000(Lcom/amazon/kedu/flashcards/views/QuizButton;Z)Landroid/animation/Animator;
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/amazon/kedu/flashcards/views/QuizButton;->buildHighlightChangeAnimation(Z)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/kedu/flashcards/views/QuizButton;)J
    .locals 2

    .line 21
    iget-wide v0, p0, Lcom/amazon/kedu/flashcards/views/QuizButton;->fadeDuration:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/amazon/kedu/flashcards/views/QuizButton;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/amazon/kedu/flashcards/views/QuizButton;->setPrimaryColorFilter(I)V

    return-void
.end method

.method static synthetic access$302(Lcom/amazon/kedu/flashcards/views/QuizButton;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/views/QuizButton;->currentAnimation:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$400(Lcom/amazon/kedu/flashcards/views/QuizButton;)Ljava/lang/Runnable;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/amazon/kedu/flashcards/views/QuizButton;->queuedAnimation:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$402(Lcom/amazon/kedu/flashcards/views/QuizButton;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/views/QuizButton;->queuedAnimation:Ljava/lang/Runnable;

    return-object p1
.end method

.method private buildHighlightChangeAnimation(Z)Landroid/animation/Animator;
    .locals 3

    if-eqz p1, :cond_0

    .line 174
    iget p1, p0, Lcom/amazon/kedu/flashcards/views/QuizButton;->highlightColor:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/amazon/kedu/flashcards/views/QuizButton;->primaryColor:I

    :goto_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 176
    iget v2, p0, Lcom/amazon/kedu/flashcards/views/QuizButton;->primaryColorFilterColor:I

    aput v2, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 177
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/views/QuizButton;->argbEvaluator:Landroid/animation/ArgbEvaluator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 178
    new-instance v0, Lcom/amazon/kedu/flashcards/views/QuizButton$2;

    invoke-direct {v0, p0}, Lcom/amazon/kedu/flashcards/views/QuizButton$2;-><init>(Lcom/amazon/kedu/flashcards/views/QuizButton;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 187
    new-instance v0, Lcom/amazon/kedu/flashcards/views/QuizButton$3;

    invoke-direct {v0, p0}, Lcom/amazon/kedu/flashcards/views/QuizButton$3;-><init>(Lcom/amazon/kedu/flashcards/views/QuizButton;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p1
.end method

.method private initialize(II)V
    .locals 2

    .line 65
    iput p1, p0, Lcom/amazon/kedu/flashcards/views/QuizButton;->primaryColor:I

    .line 66
    iput p2, p0, Lcom/amazon/kedu/flashcards/views/QuizButton;->highlightColor:I

    .line 67
    iput p1, p0, Lcom/amazon/kedu/flashcards/views/QuizButton;->primaryColorFilterColor:I

    .line 69
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/amazon/kedu/flashcards/R$integer;->fc_quiz_button_anim_intensity_fade_duration:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-long v0, p2

    iput-wide v0, p0, Lcom/amazon/kedu/flashcards/views/QuizButton;->fadeDuration:J

    .line 70
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/amazon/kedu/flashcards/R$integer;->fc_quiz_button_anim_intensity_highlight_duration:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-long v0, p2

    iput-wide v0, p0, Lcom/amazon/kedu/flashcards/views/QuizButton;->highlightDuration:J

    .line 72
    new-instance p2, Landroid/animation/ArgbEvaluator;

    invoke-direct {p2}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object p2, p0, Lcom/amazon/kedu/flashcards/views/QuizButton;->argbEvaluator:Landroid/animation/ArgbEvaluator;

    const/4 p2, 0x0

    .line 73
    iput-object p2, p0, Lcom/amazon/kedu/flashcards/views/QuizButton;->currentAnimation:Landroid/animation/Animator;

    .line 74
    iput-object p2, p0, Lcom/amazon/kedu/flashcards/views/QuizButton;->queuedAnimation:Ljava/lang/Runnable;

    .line 75
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/amazon/kedu/flashcards/views/QuizButton;->boundary:Landroid/graphics/Rect;

    .line 77
    sget p2, Lcom/amazon/kedu/flashcards/views/QuizButton;->BACKGROUND_RESOURCE_ID:I

    invoke-virtual {p0, p2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 78
    invoke-virtual {p0, p1}, Lcom/amazon/kedu/flashcards/views/QuizButton;->setBackgroundColor(I)V

    return-void
.end method

.method private setPrimaryColorFilter(I)V
    .locals 6

    const/high16 v0, 0xff0000

    and-int/2addr v0, p1

    const v1, 0xffff

    .line 158
    div-int/2addr v0, v1

    const v1, 0xff00

    and-int/2addr v1, p1

    .line 159
    div-int/lit16 v1, v1, 0xff

    and-int/lit16 v2, p1, 0xff

    const/16 v3, 0x14

    new-array v3, v3, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v4, v3, v5

    const/4 v5, 0x1

    aput v4, v3, v5

    const/4 v5, 0x2

    aput v4, v3, v5

    const/4 v5, 0x3

    aput v4, v3, v5

    int-to-float v0, v0

    const/4 v5, 0x4

    aput v0, v3, v5

    const/4 v0, 0x5

    aput v4, v3, v0

    const/4 v0, 0x6

    aput v4, v3, v0

    const/4 v0, 0x7

    aput v4, v3, v0

    const/16 v0, 0x8

    aput v4, v3, v0

    int-to-float v0, v1

    const/16 v1, 0x9

    aput v0, v3, v1

    const/16 v0, 0xa

    aput v4, v3, v0

    const/16 v0, 0xb

    aput v4, v3, v0

    const/16 v0, 0xc

    aput v4, v3, v0

    const/16 v0, 0xd

    aput v4, v3, v0

    int-to-float v0, v2

    const/16 v1, 0xe

    aput v0, v3, v1

    const/16 v0, 0xf

    aput v4, v3, v0

    const/16 v0, 0x10

    aput v4, v3, v0

    const/16 v0, 0x11

    aput v4, v3, v0

    const/16 v0, 0x12

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, v3, v0

    const/16 v0, 0x13

    aput v4, v3, v0

    .line 167
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v1, v3}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 169
    iput p1, p0, Lcom/amazon/kedu/flashcards/views/QuizButton;->primaryColorFilterColor:I

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 120
    invoke-virtual {p0}, Landroid/widget/ImageButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 122
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/views/QuizButton;->boundary:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getX()F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getY()F

    move-result v3

    add-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 141
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/views/QuizButton;->resetHighlight()V

    goto :goto_1

    .line 126
    :cond_2
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/views/QuizButton;->boundary:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->getHitRect(Landroid/graphics/Rect;)V

    const/4 v0, 0x1

    .line 128
    invoke-direct {p0, v0}, Lcom/amazon/kedu/flashcards/views/QuizButton;->buildHighlightChangeAnimation(Z)Landroid/animation/Animator;

    move-result-object v0

    .line 129
    iget-wide v1, p0, Lcom/amazon/kedu/flashcards/views/QuizButton;->highlightDuration:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 130
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 146
    :cond_3
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public resetHighlight()V
    .locals 2

    .line 96
    new-instance v0, Lcom/amazon/kedu/flashcards/views/QuizButton$1;

    invoke-direct {v0, p0}, Lcom/amazon/kedu/flashcards/views/QuizButton$1;-><init>(Lcom/amazon/kedu/flashcards/views/QuizButton;)V

    .line 107
    iget-object v1, p0, Lcom/amazon/kedu/flashcards/views/QuizButton;->currentAnimation:Landroid/animation/Animator;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/animation/Animator;->isStarted()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 113
    :cond_0
    iput-object v0, p0, Lcom/amazon/kedu/flashcards/views/QuizButton;->queuedAnimation:Ljava/lang/Runnable;

    goto :goto_1

    .line 109
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_1
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 152
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 153
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-void
.end method

.method public setHighlightIntensity(F)V
    .locals 3

    .line 84
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/views/QuizButton;->currentAnimation:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 86
    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 88
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/views/QuizButton;->argbEvaluator:Landroid/animation/ArgbEvaluator;

    iget v1, p0, Lcom/amazon/kedu/flashcards/views/QuizButton;->primaryColor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/amazon/kedu/flashcards/views/QuizButton;->highlightColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 90
    invoke-direct {p0, p1}, Lcom/amazon/kedu/flashcards/views/QuizButton;->setPrimaryColorFilter(I)V

    :cond_1
    return-void
.end method
