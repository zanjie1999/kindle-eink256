.class public Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController;
.super Ljava/lang/Object;
.source "WordRunnerAnimationController.java"


# instance fields
.field private backgroundLayer:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeBackgroundLayer;

.field private countAnimation:Lcom/amazon/kindle/speedreading/doubletime/CountAnimation;

.field private countAnimationCanceled:Z

.field private showWordAnimationCanceled:Z

.field private speedReadingBox:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSpeedReadingBox;

.field private wordContainer:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSpeedReadingBox;Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeBackgroundLayer;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController;->countAnimation:Lcom/amazon/kindle/speedreading/doubletime/CountAnimation;

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController;->showWordAnimationCanceled:Z

    .line 25
    iput-boolean v0, p0, Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController;->countAnimationCanceled:Z

    .line 31
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController;->wordContainer:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;

    .line 32
    iput-object p2, p0, Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController;->speedReadingBox:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSpeedReadingBox;

    .line 33
    iput-object p3, p0, Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController;->backgroundLayer:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeBackgroundLayer;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController;)Z
    .locals 0

    .line 18
    iget-boolean p0, p0, Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController;->countAnimationCanceled:Z

    return p0
.end method

.method static synthetic access$002(Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController;Z)Z
    .locals 0

    .line 18
    iput-boolean p1, p0, Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController;->countAnimationCanceled:Z

    return p1
.end method

.method static synthetic access$100(Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController;)Z
    .locals 0

    .line 18
    iget-boolean p0, p0, Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController;->showWordAnimationCanceled:Z

    return p0
.end method

.method static synthetic access$102(Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController;Z)Z
    .locals 0

    .line 18
    iput-boolean p1, p0, Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController;->showWordAnimationCanceled:Z

    return p1
.end method

.method static synthetic access$200(Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController;)Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeBackgroundLayer;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController;->backgroundLayer:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeBackgroundLayer;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController;)Lcom/amazon/kindle/speedreading/doubletime/CountAnimation;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController;->countAnimation:Lcom/amazon/kindle/speedreading/doubletime/CountAnimation;

    return-object p0
.end method

.method static synthetic access$400(Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController;)Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController;->wordContainer:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;

    return-object p0
.end method

.method static synthetic access$500(Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController;)Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSpeedReadingBox;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController;->speedReadingBox:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSpeedReadingBox;

    return-object p0
.end method

.method public static getCubicBezierInterpolator()Landroid/view/animation/Interpolator;
    .locals 4

    const v0, 0x3edc28f6    # 0.43f

    const/4 v1, 0x0

    const v2, 0x3e051eb8    # 0.13f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 249
    invoke-static {v0, v1, v2, v3}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public cancelAnimation()V
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController;->countAnimation:Lcom/amazon/kindle/speedreading/doubletime/CountAnimation;

    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {v0}, Lcom/amazon/kindle/speedreading/doubletime/CountAnimation;->cancelAnimation()V

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController;->wordContainer:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;

    if-eqz v0, :cond_1

    .line 229
    invoke-virtual {v0}, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;->cancelAnimation()V

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController;->backgroundLayer:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeBackgroundLayer;

    if-eqz v0, :cond_2

    .line 234
    invoke-virtual {v0}, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeBackgroundLayer;->cancelAnimation()V

    .line 237
    :cond_2
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController;->speedReadingBox:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSpeedReadingBox;

    if-eqz v0, :cond_3

    .line 239
    invoke-virtual {v0}, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSpeedReadingBox;->cancelAnimation()V

    :cond_3
    return-void
.end method

.method public hideWordRunner(Lcom/amazon/kindle/speedreading/doubletime/framework/Word;Landroid/animation/Animator$AnimatorListener;)V
    .locals 2

    .line 174
    new-instance v0, Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController$4;

    invoke-direct {v0, p0, p2}, Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController$4;-><init>(Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController;Landroid/animation/Animator$AnimatorListener;)V

    .line 192
    new-instance v1, Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController$5;

    invoke-direct {v1, p0, p2, p1, v0}, Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController$5;-><init>(Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController;Landroid/animation/Animator$AnimatorListener;Lcom/amazon/kindle/speedreading/doubletime/framework/Word;Landroid/animation/Animator$AnimatorListener;)V

    .line 214
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController;->backgroundLayer:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeBackgroundLayer;

    invoke-virtual {p1, v1}, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeBackgroundLayer;->hideBackgroundLayer(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public showWordRunner(Lcom/amazon/kindle/speedreading/doubletime/framework/Word;Landroid/animation/Animator$AnimatorListener;)V
    .locals 4

    .line 64
    new-instance v0, Lcom/amazon/kindle/speedreading/doubletime/CountAnimation;

    iget-object v1, p0, Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController;->wordContainer:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->getDelay(Z)J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/kindle/speedreading/doubletime/CountAnimation;-><init>(Landroid/widget/TextView;J)V

    iput-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController;->countAnimation:Lcom/amazon/kindle/speedreading/doubletime/CountAnimation;

    .line 65
    new-instance v0, Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController$1;

    invoke-direct {v0, p0, p2}, Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController$1;-><init>(Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController;Landroid/animation/Animator$AnimatorListener;)V

    .line 91
    iget-object v1, p0, Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController;->countAnimation:Lcom/amazon/kindle/speedreading/doubletime/CountAnimation;

    invoke-virtual {v1, v0}, Lcom/amazon/kindle/speedreading/doubletime/CountAnimation;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 93
    new-instance v0, Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController$2;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController$2;-><init>(Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController;)V

    .line 109
    new-instance v1, Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController$3;

    invoke-direct {v1, p0, p2, v0}, Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController$3;-><init>(Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController;Landroid/animation/Animator$AnimatorListener;Landroid/animation/Animator$AnimatorListener;)V

    .line 139
    iget-object p2, p0, Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController;->speedReadingBox:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSpeedReadingBox;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getLeft()I

    move-result p2

    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController;->speedReadingBox:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSpeedReadingBox;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    int-to-float p2, p2

    .line 140
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController;->speedReadingBox:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSpeedReadingBox;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getTop()I

    move-result v0

    iget-object v2, p0, Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController;->speedReadingBox:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSpeedReadingBox;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    int-to-float v0, v0

    .line 141
    iget-object v2, p0, Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController;->wordContainer:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;

    invoke-virtual {v2, p1, v1, p2, v0}, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;->showWordContainer(Lcom/amazon/kindle/speedreading/doubletime/framework/Word;Landroid/animation/Animator$AnimatorListener;FF)V

    .line 142
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController;->speedReadingBox:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSpeedReadingBox;

    invoke-virtual {p1}, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSpeedReadingBox;->showSpeedReadingBox()V

    return-void
.end method
