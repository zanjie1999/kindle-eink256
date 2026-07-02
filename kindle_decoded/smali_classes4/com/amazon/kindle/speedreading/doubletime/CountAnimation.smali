.class public Lcom/amazon/kindle/speedreading/doubletime/CountAnimation;
.super Ljava/lang/Object;
.source "CountAnimation.java"


# instance fields
.field private final PROPERTY_ALPHA:Ljava/lang/String;

.field private final PROPERTY_SCALE_X:Ljava/lang/String;

.field private final PROPERTY_SCALE_Y:Ljava/lang/String;

.field private final START_DELAY:I

.field private final START_VALUE_321:I

.field private animatorSet:Landroid/animation/AnimatorSet;

.field private count321:I

.field private duration321:I

.field private repeatCount321:I

.field private textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;J)V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 20
    iput v0, p0, Lcom/amazon/kindle/speedreading/doubletime/CountAnimation;->repeatCount321:I

    const/16 v0, 0x1f4

    .line 21
    iput v0, p0, Lcom/amazon/kindle/speedreading/doubletime/CountAnimation;->duration321:I

    const/4 v1, 0x3

    .line 22
    iput v1, p0, Lcom/amazon/kindle/speedreading/doubletime/CountAnimation;->START_VALUE_321:I

    .line 23
    iput v1, p0, Lcom/amazon/kindle/speedreading/doubletime/CountAnimation;->count321:I

    const-string v1, "scaleX"

    .line 24
    iput-object v1, p0, Lcom/amazon/kindle/speedreading/doubletime/CountAnimation;->PROPERTY_SCALE_X:Ljava/lang/String;

    const-string v1, "scaleY"

    .line 25
    iput-object v1, p0, Lcom/amazon/kindle/speedreading/doubletime/CountAnimation;->PROPERTY_SCALE_Y:Ljava/lang/String;

    const-string v1, "alpha"

    .line 26
    iput-object v1, p0, Lcom/amazon/kindle/speedreading/doubletime/CountAnimation;->PROPERTY_ALPHA:Ljava/lang/String;

    const/16 v1, 0x3e8

    .line 30
    iput v1, p0, Lcom/amazon/kindle/speedreading/doubletime/CountAnimation;->START_DELAY:I

    .line 34
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/CountAnimation;->textView:Landroid/widget/TextView;

    int-to-long v0, v0

    cmp-long p1, p2, v0

    if-lez p1, :cond_0

    long-to-int p1, p2

    .line 38
    iput p1, p0, Lcom/amazon/kindle/speedreading/doubletime/CountAnimation;->duration321:I

    .line 41
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kindle/speedreading/doubletime/CountAnimation;->create321Animation()Landroid/animation/AnimatorSet;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/CountAnimation;->animatorSet:Landroid/animation/AnimatorSet;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/speedreading/doubletime/CountAnimation;)I
    .locals 0

    .line 17
    iget p0, p0, Lcom/amazon/kindle/speedreading/doubletime/CountAnimation;->count321:I

    return p0
.end method

.method static synthetic access$002(Lcom/amazon/kindle/speedreading/doubletime/CountAnimation;I)I
    .locals 0

    .line 17
    iput p1, p0, Lcom/amazon/kindle/speedreading/doubletime/CountAnimation;->count321:I

    return p1
.end method

.method static synthetic access$010(Lcom/amazon/kindle/speedreading/doubletime/CountAnimation;)I
    .locals 2

    .line 17
    iget v0, p0, Lcom/amazon/kindle/speedreading/doubletime/CountAnimation;->count321:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/amazon/kindle/speedreading/doubletime/CountAnimation;->count321:I

    return v0
.end method

.method static synthetic access$100(Lcom/amazon/kindle/speedreading/doubletime/CountAnimation;)Landroid/widget/TextView;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/amazon/kindle/speedreading/doubletime/CountAnimation;->textView:Landroid/widget/TextView;

    return-object p0
.end method

.method private create321Animation()Landroid/animation/AnimatorSet;
    .locals 9

    .line 46
    iget-object v1, p0, Lcom/amazon/kindle/speedreading/doubletime/CountAnimation;->textView:Landroid/widget/TextView;

    iget v5, p0, Lcom/amazon/kindle/speedreading/doubletime/CountAnimation;->duration321:I

    const-string v2, "scaleX"

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kindle/speedreading/doubletime/CountAnimation;->createFloatAnimator(Landroid/view/View;Ljava/lang/String;FFI)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 47
    iget v1, p0, Lcom/amazon/kindle/speedreading/doubletime/CountAnimation;->repeatCount321:I

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 49
    iget-object v3, p0, Lcom/amazon/kindle/speedreading/doubletime/CountAnimation;->textView:Landroid/widget/TextView;

    iget v7, p0, Lcom/amazon/kindle/speedreading/doubletime/CountAnimation;->duration321:I

    const-string v4, "scaleY"

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/amazon/kindle/speedreading/doubletime/CountAnimation;->createFloatAnimator(Landroid/view/View;Ljava/lang/String;FFI)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 50
    iget v2, p0, Lcom/amazon/kindle/speedreading/doubletime/CountAnimation;->repeatCount321:I

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 52
    iget-object v4, p0, Lcom/amazon/kindle/speedreading/doubletime/CountAnimation;->textView:Landroid/widget/TextView;

    iget v8, p0, Lcom/amazon/kindle/speedreading/doubletime/CountAnimation;->duration321:I

    const-string v5, "alpha"

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/amazon/kindle/speedreading/doubletime/CountAnimation;->createFloatAnimator(Landroid/view/View;Ljava/lang/String;FFI)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 53
    iget v3, p0, Lcom/amazon/kindle/speedreading/doubletime/CountAnimation;->repeatCount321:I

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 54
    new-instance v3, Lcom/amazon/kindle/speedreading/doubletime/CountAnimation$1;

    invoke-direct {v3, p0}, Lcom/amazon/kindle/speedreading/doubletime/CountAnimation$1;-><init>(Lcom/amazon/kindle/speedreading/doubletime/CountAnimation;)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 75
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 77
    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 78
    new-instance v0, Lcom/amazon/kindle/speedreading/doubletime/CountAnimation$2;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/speedreading/doubletime/CountAnimation$2;-><init>(Lcom/amazon/kindle/speedreading/doubletime/CountAnimation;)V

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v0, 0x3e8

    .line 99
    invoke-virtual {v3, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 100
    invoke-static {}, Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController;->getCubicBezierInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v3
.end method

.method private createFloatAnimator(Landroid/view/View;Ljava/lang/String;FFI)Landroid/animation/ObjectAnimator;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p3, v0, v1

    const/4 p3, 0x1

    aput p4, v0, p3

    .line 124
    invoke-static {p1, p2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    int-to-long p2, p5

    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/CountAnimation;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public cancelAnimation()V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/CountAnimation;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/CountAnimation;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/CountAnimation;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
