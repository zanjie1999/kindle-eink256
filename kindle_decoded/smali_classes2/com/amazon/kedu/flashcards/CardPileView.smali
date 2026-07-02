.class public Lcom/amazon/kedu/flashcards/CardPileView;
.super Landroid/widget/AdapterView;
.source "CardPileView.java"

# interfaces
.implements Lcom/amazon/kedu/flashcards/views/QuizCardView$OnQuizCardFlipListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kedu/flashcards/CardPileView$QuizCardDraggingStatus;,
        Lcom/amazon/kedu/flashcards/CardPileView$QuizPileAdapterDataSetObserver;,
        Lcom/amazon/kedu/flashcards/CardPileView$QuizPileAnimatorListener;,
        Lcom/amazon/kedu/flashcards/CardPileView$QuizPileSection;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView<",
        "Lcom/amazon/kedu/flashcards/CardPileAdapter;",
        ">;",
        "Lcom/amazon/kedu/flashcards/views/QuizCardView$OnQuizCardFlipListener;"
    }
.end annotation


# static fields
.field private static final ANIMATION_WIDTH_MULTIPLIER:I = 0x2

.field private static final FEEDBACK_CIRCLE_INNER_RADIUS_FACTOR:F = 0.125f

.field private static final FEEDBACK_CIRCLE_OUTER_RADIUS_FACTOR:F = 0.25f

.field private static final MAX_VISIBLE_CARDS:I = 0x2

.field private static final ROTATION_ANGLE:I = 0xf

.field private static final SHUFFLE_DELAY_PERCENT:F = 0.5f

.field private static final SHUFFLE_JITTER_MAX_PERCENT:F = 0.2f

.field private static final SHUFFLE_JITTER_MIN_PERCENT:F = 0.1f

.field private static final SHUFFLE_ZOOM_OUT_PERCENT:F = 0.8f

.field private static final TOUCH_FLING_VELOCITY_SCALE:F = 50.0f

.field private static final TOUCH_INVALID_POINTER_ID:I = -0x1

.field private static final TOUCH_VELOCITY_UNIT:I = 0x1


# instance fields
.field private accessibilityView:Lcom/amazon/kedu/flashcards/views/QuizAccessibilityView;

.field private adapter:Lcom/amazon/kedu/flashcards/CardPileAdapter;

.field private cardDragging:Z

.field private completedView:Landroid/view/View;

.field private dataSetObserver:Lcom/amazon/kedu/flashcards/CardPileView$QuizPileAdapterDataSetObserver;

.field private pileAnimating:Z

.field private quizPileAnimatorListener:Lcom/amazon/kedu/flashcards/CardPileView$QuizPileAnimatorListener;

.field private random:Ljava/util/Random;

.field private screenDimensions:Landroid/graphics/Point;

.field private topCard:Lcom/amazon/kedu/flashcards/views/QuizCardView;

.field private touchActivePointerId:I

.field private touchLastX:F

.field private touchLastY:F

.field private touchSlop:I

.field private velocityTracker:Landroid/view/VelocityTracker;

.field private viewConfiguration:Landroid/view/ViewConfiguration;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;)V

    .line 78
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/CardPileView;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 83
    invoke-direct {p0, p1, p2}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/CardPileView;->initialize()V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kedu/flashcards/CardPileView;)Lcom/amazon/kedu/flashcards/views/QuizCardView;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/amazon/kedu/flashcards/CardPileView;->topCard:Lcom/amazon/kedu/flashcards/views/QuizCardView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/amazon/kedu/flashcards/CardPileView;Landroid/view/View;)V
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->detachViewFromParent(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/amazon/kedu/flashcards/CardPileView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 36
    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/AdapterView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/amazon/kedu/flashcards/CardPileView;Lcom/amazon/kedu/flashcards/views/QuizCardView;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/amazon/kedu/flashcards/CardPileView;->setTopCard(Lcom/amazon/kedu/flashcards/views/QuizCardView;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/amazon/kedu/flashcards/CardPileView;Lcom/amazon/kedu/flashcards/views/QuizCardView;)F
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/amazon/kedu/flashcards/CardPileView;->calculateCardRotation(Lcom/amazon/kedu/flashcards/views/QuizCardView;)F

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lcom/amazon/kedu/flashcards/CardPileView;Lcom/amazon/kedu/flashcards/views/QuizCardView;)Lcom/amazon/kedu/flashcards/CardPileView$QuizCardDraggingStatus;
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/amazon/kedu/flashcards/CardPileView;->getQuizCardDraggingStatus(Lcom/amazon/kedu/flashcards/views/QuizCardView;)Lcom/amazon/kedu/flashcards/CardPileView$QuizCardDraggingStatus;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1500(Lcom/amazon/kedu/flashcards/CardPileView;Lcom/amazon/kedu/flashcards/views/QuizCardView;Lcom/amazon/kedu/flashcards/CardPileView$QuizCardDraggingStatus;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/amazon/kedu/flashcards/CardPileView;->onCardDragging(Lcom/amazon/kedu/flashcards/views/QuizCardView;Lcom/amazon/kedu/flashcards/CardPileView$QuizCardDraggingStatus;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/amazon/kedu/flashcards/CardPileView;Lcom/amazon/kedu/flashcards/views/QuizCardView;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/amazon/kedu/flashcards/CardPileView;->startDraggingCard(Lcom/amazon/kedu/flashcards/views/QuizCardView;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/amazon/kedu/flashcards/CardPileView;Lcom/amazon/kedu/flashcards/views/QuizCardView;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/amazon/kedu/flashcards/CardPileView;->stopDraggingCard(Lcom/amazon/kedu/flashcards/views/QuizCardView;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/amazon/kedu/flashcards/CardPileView;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/CardPileView;->refresh()V

    return-void
.end method

.method static synthetic access$200(Lcom/amazon/kedu/flashcards/CardPileView;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/CardPileView;->animateDismiss()V

    return-void
.end method

.method static synthetic access$300(Lcom/amazon/kedu/flashcards/CardPileView;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/CardPileView;->onCardCommittedPositive()V

    return-void
.end method

.method static synthetic access$400(Lcom/amazon/kedu/flashcards/CardPileView;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/CardPileView;->onCardCommittedNegative()V

    return-void
.end method

.method static synthetic access$500(Lcom/amazon/kedu/flashcards/CardPileView;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/CardPileView;->onPileAnimationStart()V

    return-void
.end method

.method static synthetic access$600(Lcom/amazon/kedu/flashcards/CardPileView;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/CardPileView;->onPileAnimationEnd()V

    return-void
.end method

.method static synthetic access$700(Lcom/amazon/kedu/flashcards/CardPileView;Z)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/amazon/kedu/flashcards/CardPileView;->showPileDropShadow(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/amazon/kedu/flashcards/CardPileView;)Lcom/amazon/kedu/flashcards/CardPileAdapter;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/amazon/kedu/flashcards/CardPileView;->adapter:Lcom/amazon/kedu/flashcards/CardPileAdapter;

    return-object p0
.end method

.method static synthetic access$900(Lcom/amazon/kedu/flashcards/CardPileView;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/CardPileView;->onCardDismissed()V

    return-void
.end method

.method private animateDismiss()V
    .locals 2

    .line 817
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/CardPileView;->topCard:Lcom/amazon/kedu/flashcards/views/QuizCardView;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/amazon/kedu/flashcards/CardPileView;->animateDismiss(Lcom/amazon/kedu/flashcards/views/QuizCardView;FF)V

    return-void
.end method

.method private animateDismiss(Lcom/amazon/kedu/flashcards/views/QuizCardView;FF)V
    .locals 4

    .line 822
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/amazon/kedu/flashcards/R$integer;->fc_card_pile_anim_dismiss_duration_default:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-long v0, p2

    const/4 p2, 0x0

    cmpl-float p2, p3, p2

    if-eqz p2, :cond_0

    .line 825
    sget-object p2, Lcom/amazon/kedu/flashcards/CardPileView$QuizPileSection;->TOP:Lcom/amazon/kedu/flashcards/CardPileView$QuizPileSection;

    invoke-direct {p0, p1, p2}, Lcom/amazon/kedu/flashcards/CardPileView;->getOffscreenLocationForSection(Lcom/amazon/kedu/flashcards/views/QuizCardView;Lcom/amazon/kedu/flashcards/CardPileView$QuizPileSection;)Landroid/graphics/Point;

    move-result-object p2

    .line 826
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getY()F

    move-result v2

    iget v3, p2, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    int-to-float p2, p2

    add-float/2addr v2, p2

    div-float/2addr v2, p3

    .line 827
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    long-to-float p3, v0

    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    move-result p2

    float-to-long v0, p2

    .line 830
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/kedu/flashcards/CardPileView;->getCardDismissAnimation(Lcom/amazon/kedu/flashcards/views/QuizCardView;)Landroid/animation/Animator;

    move-result-object p1

    .line 831
    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 832
    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 834
    invoke-direct {p0, p1}, Lcom/amazon/kedu/flashcards/CardPileView;->startPileAnimation(Landroid/animation/Animator;)V

    return-void
.end method

.method private animateNegativeCommit()V
    .locals 2

    .line 785
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/CardPileView;->topCard:Lcom/amazon/kedu/flashcards/views/QuizCardView;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/amazon/kedu/flashcards/CardPileView;->animateNegativeCommit(Lcom/amazon/kedu/flashcards/views/QuizCardView;FF)V

    return-void
.end method

.method private animateNegativeCommit(Lcom/amazon/kedu/flashcards/views/QuizCardView;FF)V
    .locals 4

    .line 790
    sget-object p3, Lcom/amazon/kedu/flashcards/CardPileView$QuizPileSection;->LEFT:Lcom/amazon/kedu/flashcards/CardPileView$QuizPileSection;

    .line 792
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kedu/flashcards/R$integer;->fc_card_pile_anim_commit_duration_default:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x0

    cmpl-float v2, p2, v2

    if-eqz v2, :cond_0

    .line 795
    invoke-direct {p0, p1, p3}, Lcom/amazon/kedu/flashcards/CardPileView;->getOffscreenLocationForSection(Lcom/amazon/kedu/flashcards/views/QuizCardView;Lcom/amazon/kedu/flashcards/CardPileView$QuizPileSection;)Landroid/graphics/Point;

    move-result-object v2

    .line 796
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getX()F

    move-result v3

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    sub-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v2, p2

    .line 797
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    long-to-float v0, v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    move-result p2

    float-to-long v0, p2

    .line 800
    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/amazon/kedu/flashcards/CardPileView;->getCardCommitAnimation(Lcom/amazon/kedu/flashcards/views/QuizCardView;Lcom/amazon/kedu/flashcards/CardPileView$QuizPileSection;)Landroid/animation/Animator;

    move-result-object p1

    .line 801
    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 802
    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 803
    new-instance p2, Lcom/amazon/kedu/flashcards/CardPileView$4;

    invoke-direct {p2, p0}, Lcom/amazon/kedu/flashcards/CardPileView$4;-><init>(Lcom/amazon/kedu/flashcards/CardPileView;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 812
    invoke-direct {p0, p1}, Lcom/amazon/kedu/flashcards/CardPileView;->startPileAnimation(Landroid/animation/Animator;)V

    return-void
.end method

.method private animatePositiveCommit()V
    .locals 2

    .line 753
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/CardPileView;->topCard:Lcom/amazon/kedu/flashcards/views/QuizCardView;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/amazon/kedu/flashcards/CardPileView;->animatePositiveCommit(Lcom/amazon/kedu/flashcards/views/QuizCardView;FF)V

    return-void
.end method

.method private animatePositiveCommit(Lcom/amazon/kedu/flashcards/views/QuizCardView;FF)V
    .locals 4

    .line 758
    sget-object p3, Lcom/amazon/kedu/flashcards/CardPileView$QuizPileSection;->RIGHT:Lcom/amazon/kedu/flashcards/CardPileView$QuizPileSection;

    .line 760
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kedu/flashcards/R$integer;->fc_card_pile_anim_commit_duration_default:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x0

    cmpl-float v2, p2, v2

    if-eqz v2, :cond_0

    .line 763
    invoke-direct {p0, p1, p3}, Lcom/amazon/kedu/flashcards/CardPileView;->getOffscreenLocationForSection(Lcom/amazon/kedu/flashcards/views/QuizCardView;Lcom/amazon/kedu/flashcards/CardPileView$QuizPileSection;)Landroid/graphics/Point;

    move-result-object v2

    .line 764
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getX()F

    move-result v3

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    sub-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v2, p2

    .line 765
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    long-to-float v0, v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    move-result p2

    float-to-long v0, p2

    .line 768
    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/amazon/kedu/flashcards/CardPileView;->getCardCommitAnimation(Lcom/amazon/kedu/flashcards/views/QuizCardView;Lcom/amazon/kedu/flashcards/CardPileView$QuizPileSection;)Landroid/animation/Animator;

    move-result-object p1

    .line 769
    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 770
    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 771
    new-instance p2, Lcom/amazon/kedu/flashcards/CardPileView$3;

    invoke-direct {p2, p0}, Lcom/amazon/kedu/flashcards/CardPileView$3;-><init>(Lcom/amazon/kedu/flashcards/CardPileView;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 780
    invoke-direct {p0, p1}, Lcom/amazon/kedu/flashcards/CardPileView;->startPileAnimation(Landroid/animation/Animator;)V

    return-void
.end method

.method private animateReturnToPile(Lcom/amazon/kedu/flashcards/views/QuizCardView;J)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 839
    invoke-direct {p0, p1, v0, v0, v1}, Lcom/amazon/kedu/flashcards/CardPileView;->buildCardMoveAnimationSegment(Lcom/amazon/kedu/flashcards/views/QuizCardView;FFZ)Landroid/animation/Animator;

    move-result-object p1

    .line 840
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v0}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 841
    invoke-virtual {p1, p2, p3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 843
    invoke-direct {p0, p1}, Lcom/amazon/kedu/flashcards/CardPileView;->startPileAnimation(Landroid/animation/Animator;)V

    return-void
.end method

.method private animateShuffle()V
    .locals 4

    .line 742
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kedu/flashcards/R$integer;->fc_card_pile_anim_shuffle_duration:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    .line 743
    iget-object v2, p0, Lcom/amazon/kedu/flashcards/CardPileView;->topCard:Lcom/amazon/kedu/flashcards/views/QuizCardView;

    .line 745
    iget-object v3, p0, Lcom/amazon/kedu/flashcards/CardPileView;->adapter:Lcom/amazon/kedu/flashcards/CardPileAdapter;

    invoke-virtual {v3}, Lcom/amazon/kedu/flashcards/DeckAdapter;->shuffle()V

    .line 747
    invoke-direct {p0, v2, v0, v1}, Lcom/amazon/kedu/flashcards/CardPileView;->getPileShuffleAnimation(Lcom/amazon/kedu/flashcards/views/QuizCardView;J)Landroid/animation/Animator;

    move-result-object v0

    .line 748
    invoke-direct {p0, v0}, Lcom/amazon/kedu/flashcards/CardPileView;->startPileAnimation(Landroid/animation/Animator;)V

    return-void
.end method

.method private buildCardMoveAnimationSegment(Lcom/amazon/kedu/flashcards/views/QuizCardView;FFZ)Landroid/animation/Animator;
    .locals 4

    .line 1061
    sget-object v0, Landroid/view/View;->X:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v2, v1, [F

    const/4 v3, 0x0

    aput p2, v2, v3

    invoke-static {p1, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 1062
    sget-object v0, Landroid/view/View;->Y:Landroid/util/Property;

    new-array v2, v1, [F

    aput p3, v2, v3

    invoke-static {p1, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    .line 1064
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object p2, v2, v3

    aput-object p3, v2, v1

    .line 1065
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    if-eqz p4, :cond_0

    .line 1069
    new-instance p3, Lcom/amazon/kedu/flashcards/CardPileView$10;

    invoke-direct {p3, p0, p1}, Lcom/amazon/kedu/flashcards/CardPileView$10;-><init>(Lcom/amazon/kedu/flashcards/CardPileView;Lcom/amazon/kedu/flashcards/views/QuizCardView;)V

    invoke-virtual {p2, p3}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1080
    new-instance p2, Lcom/amazon/kedu/flashcards/CardPileView$11;

    invoke-direct {p2, p0, p1}, Lcom/amazon/kedu/flashcards/CardPileView$11;-><init>(Lcom/amazon/kedu/flashcards/CardPileView;Lcom/amazon/kedu/flashcards/views/QuizCardView;)V

    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 1100
    :cond_0
    new-instance p2, Lcom/amazon/kedu/flashcards/CardPileView$12;

    invoke-direct {p2, p0, p1}, Lcom/amazon/kedu/flashcards/CardPileView$12;-><init>(Lcom/amazon/kedu/flashcards/CardPileView;Lcom/amazon/kedu/flashcards/views/QuizCardView;)V

    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :goto_0
    return-object v0
.end method

.method private buildCardToBackAnimationSegment(Lcom/amazon/kedu/flashcards/views/QuizCardView;FFZ)Landroid/animation/Animator;
    .locals 1

    .line 1029
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/kedu/flashcards/CardPileView;->buildCardMoveAnimationSegment(Lcom/amazon/kedu/flashcards/views/QuizCardView;FFZ)Landroid/animation/Animator;

    move-result-object p2

    const/4 p3, 0x0

    .line 1030
    invoke-direct {p0, p1, p3, p3, p4}, Lcom/amazon/kedu/flashcards/CardPileView;->buildCardMoveAnimationSegment(Lcom/amazon/kedu/flashcards/views/QuizCardView;FFZ)Landroid/animation/Animator;

    move-result-object p3

    .line 1031
    new-instance p4, Lcom/amazon/kedu/flashcards/CardPileView$9;

    invoke-direct {p4, p0, p1}, Lcom/amazon/kedu/flashcards/CardPileView$9;-><init>(Lcom/amazon/kedu/flashcards/CardPileView;Lcom/amazon/kedu/flashcards/views/QuizCardView;)V

    invoke-virtual {p3, p4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1053
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 p4, 0x2

    new-array p4, p4, [Landroid/animation/Animator;

    const/4 v0, 0x0

    aput-object p2, p4, v0

    const/4 p2, 0x1

    aput-object p3, p4, p2

    .line 1054
    invoke-virtual {p1, p4}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    return-object p1
.end method

.method private calculateCardRotation(Lcom/amazon/kedu/flashcards/views/QuizCardView;)F
    .locals 2

    .line 614
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result p1

    int-to-float p1, p1

    const/high16 v1, 0x3e800000    # 0.25f

    mul-float p1, p1, v1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float p1, p1, v1

    div-float/2addr v0, p1

    const/high16 p1, 0x41700000    # 15.0f

    mul-float v0, v0, p1

    return v0
.end method

.method private getAbsoluteLocation(Landroid/view/View;)[I
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1122
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    return-object v0
.end method

.method private getCardCommitAnimation(Lcom/amazon/kedu/flashcards/views/QuizCardView;Lcom/amazon/kedu/flashcards/CardPileView$QuizPileSection;)Landroid/animation/Animator;
    .locals 2

    .line 969
    invoke-direct {p0, p1, p2}, Lcom/amazon/kedu/flashcards/CardPileView;->getOffscreenLocationForSection(Lcom/amazon/kedu/flashcards/views/QuizCardView;Lcom/amazon/kedu/flashcards/CardPileView$QuizPileSection;)Landroid/graphics/Point;

    move-result-object p2

    .line 971
    iget v0, p2, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget p2, p2, Landroid/graphics/Point;->y:I

    int-to-float p2, p2

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/amazon/kedu/flashcards/CardPileView;->buildCardMoveAnimationSegment(Lcom/amazon/kedu/flashcards/views/QuizCardView;FFZ)Landroid/animation/Animator;

    move-result-object p1

    .line 972
    new-instance p2, Lcom/amazon/kedu/flashcards/CardPileView$7;

    invoke-direct {p2, p0}, Lcom/amazon/kedu/flashcards/CardPileView$7;-><init>(Lcom/amazon/kedu/flashcards/CardPileView;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p1
.end method

.method private getCardDismissAnimation(Lcom/amazon/kedu/flashcards/views/QuizCardView;)Landroid/animation/Animator;
    .locals 3

    .line 986
    sget-object v0, Lcom/amazon/kedu/flashcards/CardPileView$QuizPileSection;->TOP:Lcom/amazon/kedu/flashcards/CardPileView$QuizPileSection;

    invoke-direct {p0, p1, v0}, Lcom/amazon/kedu/flashcards/CardPileView;->getOffscreenLocationForSection(Lcom/amazon/kedu/flashcards/views/QuizCardView;Lcom/amazon/kedu/flashcards/CardPileView$QuizPileSection;)Landroid/graphics/Point;

    move-result-object v0

    .line 988
    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/amazon/kedu/flashcards/CardPileView;->buildCardToBackAnimationSegment(Lcom/amazon/kedu/flashcards/views/QuizCardView;FFZ)Landroid/animation/Animator;

    move-result-object p1

    .line 989
    new-instance v0, Lcom/amazon/kedu/flashcards/CardPileView$8;

    invoke-direct {v0, p0}, Lcom/amazon/kedu/flashcards/CardPileView$8;-><init>(Lcom/amazon/kedu/flashcards/CardPileView;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p1
.end method

.method private getCardShuffleAnimation(Lcom/amazon/kedu/flashcards/views/QuizCardView;Z)Landroid/animation/Animator;
    .locals 6

    .line 1011
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kedu/flashcards/R$dimen;->fc_card_pile_anim_shuffle_margin_sides:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    .line 1012
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v0

    .line 1013
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/CardPileView;->screenDimensions:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    const v2, 0x3dcccccd    # 0.1f

    mul-float v0, v0, v2

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, -0x1

    .line 1016
    :goto_0
    iget-object v4, p0, Lcom/amazon/kedu/flashcards/CardPileView;->random:Ljava/util/Random;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    if-ne v4, v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    int-to-float p2, p2

    mul-float v1, v1, p2

    .line 1019
    iget-object p2, p0, Lcom/amazon/kedu/flashcards/CardPileView;->random:Ljava/util/Random;

    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result p2

    iget-object v3, p0, Lcom/amazon/kedu/flashcards/CardPileView;->screenDimensions:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    const v4, 0x3e4ccccd    # 0.2f

    mul-float v3, v3, v4

    mul-float p2, p2, v3

    add-float/2addr p2, v0

    int-to-float v0, v2

    mul-float p2, p2, v0

    const/4 v0, 0x0

    .line 1021
    invoke-direct {p0, p1, v1, p2, v0}, Lcom/amazon/kedu/flashcards/CardPileView;->buildCardToBackAnimationSegment(Lcom/amazon/kedu/flashcards/views/QuizCardView;FFZ)Landroid/animation/Animator;

    move-result-object p1

    .line 1022
    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p1
.end method

.method private getOffscreenLocationForSection(Lcom/amazon/kedu/flashcards/views/QuizCardView;Lcom/amazon/kedu/flashcards/CardPileView$QuizPileSection;)Landroid/graphics/Point;
    .locals 7

    .line 630
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getX()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getY()F

    move-result v0

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getX()F

    move-result v2

    div-float/2addr v0, v2

    .line 632
    :goto_0
    sget-object v2, Lcom/amazon/kedu/flashcards/CardPileView$13;->$SwitchMap$com$amazon$kedu$flashcards$CardPileView$QuizPileSection:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v2, p2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p2, v2, :cond_4

    const/4 v2, 0x2

    if-eq p2, v2, :cond_3

    const/4 v2, 0x3

    if-eq p2, v2, :cond_1

    const/4 p2, 0x0

    goto :goto_4

    .line 635
    :cond_1
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p2

    sub-int/2addr v3, p2

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v2, Lcom/amazon/kedu/flashcards/R$dimen;->fc_card_pile_anim_dismiss_margin_top:I

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    sub-int/2addr v3, p2

    int-to-float p2, v3

    cmpl-float v1, v0, v1

    if-nez v1, :cond_2

    .line 636
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getX()F

    move-result p1

    goto :goto_1

    :cond_2
    div-float p1, p2, v0

    :goto_1
    move v1, p1

    goto :goto_4

    .line 645
    :cond_3
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p2

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v4

    invoke-static {p2, v4}, Ljava/lang/Math;->max(II)I

    move-result p2

    mul-int/lit8 p2, p2, 0x2

    sub-int/2addr v3, p2

    int-to-float p2, v3

    cmpl-float v1, v0, v1

    if-nez v1, :cond_5

    .line 646
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getY()F

    move-result p1

    goto :goto_2

    .line 640
    :cond_4
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getX()F

    move-result p2

    iget-object v2, p0, Lcom/amazon/kedu/flashcards/CardPileView;->screenDimensions:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v4

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/2addr v2, v4

    invoke-direct {p0, p1}, Lcom/amazon/kedu/flashcards/CardPileView;->getAbsoluteLocation(Landroid/view/View;)[I

    move-result-object v4

    aget v3, v4, v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    add-float/2addr p2, v2

    cmpl-float v1, v0, v1

    if-nez v1, :cond_5

    .line 641
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getY()F

    move-result p1

    :goto_2
    move v1, p1

    goto :goto_3

    :cond_5
    mul-float v0, v0, p2

    move v1, v0

    :goto_3
    move v6, v1

    move v1, p2

    move p2, v6

    .line 652
    :goto_4
    new-instance p1, Landroid/graphics/Point;

    float-to-int v0, v1

    float-to-int p2, p2

    invoke-direct {p1, v0, p2}, Landroid/graphics/Point;-><init>(II)V

    return-object p1
.end method

.method private getPileShuffleAnimation(Lcom/amazon/kedu/flashcards/views/QuizCardView;J)Landroid/animation/Animator;
    .locals 12

    .line 871
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 873
    iget-object v1, p0, Lcom/amazon/kedu/flashcards/CardPileView;->adapter:Lcom/amazon/kedu/flashcards/CardPileAdapter;

    invoke-virtual {v1}, Lcom/amazon/kedu/flashcards/CardPileAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_5

    .line 878
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/amazon/kedu/flashcards/R$integer;->fc_card_pile_anim_shuffle_card_count:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 879
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v3

    int-to-long v4, v1

    .line 881
    div-long/2addr p2, v4

    long-to-float v4, p2

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float v4, v4, v5

    float-to-long v4, v4

    .line 886
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(I)V

    if-eqz p1, :cond_0

    .line 890
    invoke-direct {p0, p1, v2}, Lcom/amazon/kedu/flashcards/CardPileView;->getCardShuffleAnimation(Lcom/amazon/kedu/flashcards/views/QuizCardView;Z)Landroid/animation/Animator;

    move-result-object v7

    .line 891
    invoke-virtual {v7, p2, p3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 892
    invoke-direct {p0, p1, v3}, Lcom/amazon/kedu/flashcards/CardPileView;->renderViewInPile(Landroid/view/View;I)V

    .line 893
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 p1, -0x1

    const/4 v7, 0x1

    .line 897
    :cond_1
    :goto_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v8, v1, :cond_2

    .line 899
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    iget-object v10, p0, Lcom/amazon/kedu/flashcards/CardPileView;->adapter:Lcom/amazon/kedu/flashcards/CardPileAdapter;

    invoke-virtual {v10}, Lcom/amazon/kedu/flashcards/CardPileAdapter;->getCount()I

    move-result v10

    int-to-double v10, v10

    mul-double v8, v8, v10

    double-to-int v8, v8

    if-eq v8, p1, :cond_1

    xor-int/lit8 v7, v7, 0x1

    .line 905
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/CardPileView;->adapter:Lcom/amazon/kedu/flashcards/CardPileAdapter;

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9, p0}, Lcom/amazon/kedu/flashcards/CardPileAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/amazon/kedu/flashcards/views/QuizCardView;

    .line 906
    invoke-direct {p0, p1, v7}, Lcom/amazon/kedu/flashcards/CardPileView;->getCardShuffleAnimation(Lcom/amazon/kedu/flashcards/views/QuizCardView;Z)Landroid/animation/Animator;

    move-result-object v9

    .line 907
    invoke-virtual {v9, p2, p3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 909
    invoke-direct {p0, p1, v3}, Lcom/amazon/kedu/flashcards/CardPileView;->renderViewInPile(Landroid/view/View;I)V

    .line 910
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move p1, v8

    goto :goto_0

    .line 915
    :cond_2
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 916
    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_4

    .line 918
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/animation/Animator;

    if-lez v3, :cond_3

    int-to-long v8, v3

    mul-long v8, v8, p2

    add-long/2addr v8, v4

    .line 921
    invoke-virtual {v7, v8, v9}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 923
    :cond_3
    invoke-virtual {p1, v7}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 926
    :cond_4
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getScaleX()F

    move-result p2

    .line 927
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getScaleY()F

    move-result p3

    .line 929
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/amazon/kedu/flashcards/R$integer;->fc_card_pile_anim_zoom_duration:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v3, v3

    .line 931
    sget-object v5, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v6, v2, [F

    const v7, 0x3f4ccccd    # 0.8f

    mul-float v8, p2, v7

    aput v8, v6, v1

    invoke-static {p0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 932
    sget-object v6, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v8, v2, [F

    mul-float v7, v7, p3

    aput v7, v8, v1

    invoke-static {p0, v6, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 933
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    .line 934
    new-instance v8, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v8}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v8, 0x2

    new-array v9, v8, [Landroid/animation/Animator;

    aput-object v5, v9, v1

    aput-object v6, v9, v2

    .line 935
    invoke-virtual {v7, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 936
    invoke-virtual {v7, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 938
    sget-object v5, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v6, v2, [F

    aput p2, v6, v1

    invoke-static {p0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 939
    sget-object v5, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v6, v2, [F

    aput p3, v6, v1

    invoke-static {p0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    .line 940
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 941
    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v6, v8, [Landroid/animation/Animator;

    aput-object p2, v6, v1

    aput-object p3, v6, v2

    .line 942
    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 943
    invoke-virtual {v5, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 945
    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 946
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 948
    new-instance p1, Lcom/amazon/kedu/flashcards/CardPileView$6;

    invoke-direct {p1, p0}, Lcom/amazon/kedu/flashcards/CardPileView$6;-><init>(Lcom/amazon/kedu/flashcards/CardPileView;)V

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_5
    return-object v0
.end method

.method private getProjectedLocationForFling(Lcom/amazon/kedu/flashcards/views/QuizCardView;FF)Landroid/graphics/Point;
    .locals 2

    .line 619
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getX()F

    move-result v0

    const/high16 v1, 0x42480000    # 50.0f

    mul-float p2, p2, v1

    add-float/2addr v0, p2

    .line 620
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getY()F

    move-result p1

    mul-float p3, p3, v1

    add-float/2addr p1, p3

    .line 622
    new-instance p2, Landroid/graphics/Point;

    float-to-int p3, v0

    float-to-int p1, p1

    invoke-direct {p2, p3, p1}, Landroid/graphics/Point;-><init>(II)V

    return-object p2
.end method

.method private getProjectedQuizCardDraggingStatus(Lcom/amazon/kedu/flashcards/views/QuizCardView;FF)Lcom/amazon/kedu/flashcards/CardPileView$QuizCardDraggingStatus;
    .locals 10

    .line 556
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getY()F

    move-result v0

    neg-float v0, v0

    float-to-double v0, v0

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getX()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    .line 563
    sget-object v2, Lcom/amazon/kedu/flashcards/CardPileView$QuizPileSection;->NONE:Lcom/amazon/kedu/flashcards/CardPileView$QuizPileSection;

    const-wide v3, 0x3fe0c152382d7365L    # 0.5235987755982988

    const-wide v5, 0x4004f1a6c638d03eL    # 2.617993877991494

    cmpg-double v7, v3, v0

    if-gtz v7, :cond_0

    cmpg-double v7, v0, v5

    if-gtz v7, :cond_0

    .line 566
    sget-object v2, Lcom/amazon/kedu/flashcards/CardPileView$QuizPileSection;->TOP:Lcom/amazon/kedu/flashcards/CardPileView$QuizPileSection;

    goto :goto_0

    :cond_0
    const-wide v7, -0x3ffb0e5939c72fc2L    # -2.617993877991494

    cmpg-double v9, v7, v0

    if-gtz v9, :cond_1

    const-wide v7, -0x401f3eadc7d28c9bL    # -0.5235987755982988

    cmpg-double v9, v0, v7

    if-gtz v9, :cond_1

    .line 570
    sget-object v2, Lcom/amazon/kedu/flashcards/CardPileView$QuizPileSection;->BOTTOM:Lcom/amazon/kedu/flashcards/CardPileView$QuizPileSection;

    goto :goto_0

    .line 572
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    cmpg-double v9, v5, v7

    if-gez v9, :cond_2

    .line 574
    sget-object v2, Lcom/amazon/kedu/flashcards/CardPileView$QuizPileSection;->LEFT:Lcom/amazon/kedu/flashcards/CardPileView$QuizPileSection;

    goto :goto_0

    .line 576
    :cond_2
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpg-double v5, v0, v3

    if-gez v5, :cond_3

    .line 578
    sget-object v2, Lcom/amazon/kedu/flashcards/CardPileView$QuizPileSection;->RIGHT:Lcom/amazon/kedu/flashcards/CardPileView$QuizPileSection;

    .line 582
    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    .line 583
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    .line 585
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kedu/flashcards/CardPileView;->getProjectedLocationForFling(Lcom/amazon/kedu/flashcards/views/QuizCardView;FF)Landroid/graphics/Point;

    move-result-object p1

    int-to-float p2, v0

    const/high16 p3, 0x3e000000    # 0.125f

    mul-float p3, p3, p2

    const/high16 v3, 0x3e800000    # 0.25f

    mul-float p2, p2, v3

    .line 590
    div-int/lit8 v0, v0, 0x2

    .line 591
    div-int/lit8 v1, v1, 0x2

    .line 592
    iget v3, p1, Landroid/graphics/Point;->x:I

    add-int/2addr v3, v0

    int-to-float v3, v3

    .line 593
    iget p1, p1, Landroid/graphics/Point;->y:I

    add-int/2addr p1, v1

    int-to-float p1, p1

    int-to-float v0, v0

    sub-float/2addr v3, v0

    float-to-double v3, v3

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    .line 595
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    int-to-float v0, v1

    sub-float/2addr p1, v0

    float-to-double v0, p1

    .line 596
    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    add-double/2addr v3, v0

    .line 595
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p1, v0

    const/4 v0, 0x0

    cmpl-float v1, p1, p3

    if-lez v1, :cond_4

    sub-float v1, p1, p3

    sub-float/2addr p2, p3

    div-float/2addr v1, p2

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    cmpl-float p1, p1, v0

    if-nez p1, :cond_5

    .line 606
    sget-object v2, Lcom/amazon/kedu/flashcards/CardPileView$QuizPileSection;->NONE:Lcom/amazon/kedu/flashcards/CardPileView$QuizPileSection;

    .line 609
    :cond_5
    new-instance p1, Lcom/amazon/kedu/flashcards/CardPileView$QuizCardDraggingStatus;

    invoke-direct {p1, p0, v2, v1}, Lcom/amazon/kedu/flashcards/CardPileView$QuizCardDraggingStatus;-><init>(Lcom/amazon/kedu/flashcards/CardPileView;Lcom/amazon/kedu/flashcards/CardPileView$QuizPileSection;F)V

    return-object p1
.end method

.method private getQuizCardDraggingStatus(Lcom/amazon/kedu/flashcards/views/QuizCardView;)Lcom/amazon/kedu/flashcards/CardPileView$QuizCardDraggingStatus;
    .locals 1

    const/4 v0, 0x0

    .line 550
    invoke-direct {p0, p1, v0, v0}, Lcom/amazon/kedu/flashcards/CardPileView;->getProjectedQuizCardDraggingStatus(Lcom/amazon/kedu/flashcards/views/QuizCardView;FF)Lcom/amazon/kedu/flashcards/CardPileView$QuizCardDraggingStatus;

    move-result-object p1

    return-object p1
.end method

.method private getScreenSize()Landroid/graphics/Point;
    .locals 2

    .line 722
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 723
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 724
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    return-object v1
.end method

.method private initialize()V
    .locals 2

    const/4 v0, 0x0

    .line 89
    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->setClipChildren(Z)V

    .line 90
    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->setClipToPadding(Z)V

    .line 92
    iput-boolean v0, p0, Lcom/amazon/kedu/flashcards/CardPileView;->cardDragging:Z

    .line 93
    iput-boolean v0, p0, Lcom/amazon/kedu/flashcards/CardPileView;->pileAnimating:Z

    .line 95
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/amazon/kedu/flashcards/CardPileView;->random:Ljava/util/Random;

    .line 96
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/CardPileView;->getScreenSize()Landroid/graphics/Point;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kedu/flashcards/CardPileView;->screenDimensions:Landroid/graphics/Point;

    .line 98
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kedu/flashcards/CardPileView;->viewConfiguration:Landroid/view/ViewConfiguration;

    const/4 v1, -0x1

    .line 99
    iput v1, p0, Lcom/amazon/kedu/flashcards/CardPileView;->touchActivePointerId:I

    .line 100
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/amazon/kedu/flashcards/CardPileView;->touchSlop:I

    .line 102
    new-instance v0, Lcom/amazon/kedu/flashcards/CardPileView$QuizPileAdapterDataSetObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/kedu/flashcards/CardPileView$QuizPileAdapterDataSetObserver;-><init>(Lcom/amazon/kedu/flashcards/CardPileView;Lcom/amazon/kedu/flashcards/CardPileView$1;)V

    iput-object v0, p0, Lcom/amazon/kedu/flashcards/CardPileView;->dataSetObserver:Lcom/amazon/kedu/flashcards/CardPileView$QuizPileAdapterDataSetObserver;

    return-void
.end method

.method private isPileInteractable()Z
    .locals 1

    .line 545
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/CardPileView;->topCard:Lcom/amazon/kedu/flashcards/views/QuizCardView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amazon/kedu/flashcards/CardPileView;->pileAnimating:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private onCardCommittedNegative()V
    .locals 2

    .line 1135
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/amazon/kedu/flashcards/R$string;->fc_quiz_accessibility_marked_incorrect:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kedu/flashcards/CardPileView;->topCard:Lcom/amazon/kedu/flashcards/views/QuizCardView;

    invoke-static {v0, v1}, Lcom/amazon/kedu/flashcards/AccessibilityUtils;->speakViaTalkback(Ljava/lang/CharSequence;Landroid/view/View;)V

    .line 1136
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/CardPileView;->adapter:Lcom/amazon/kedu/flashcards/CardPileAdapter;

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/DeckAdapter;->iterateViaIncorrect()V

    return-void
.end method

.method private onCardCommittedPositive()V
    .locals 2

    .line 1129
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/amazon/kedu/flashcards/R$string;->fc_quiz_accessibility_marked_correct:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kedu/flashcards/CardPileView;->topCard:Lcom/amazon/kedu/flashcards/views/QuizCardView;

    invoke-static {v0, v1}, Lcom/amazon/kedu/flashcards/AccessibilityUtils;->speakViaTalkback(Ljava/lang/CharSequence;Landroid/view/View;)V

    .line 1130
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/CardPileView;->adapter:Lcom/amazon/kedu/flashcards/CardPileAdapter;

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/DeckAdapter;->iterateViaCorrect()V

    return-void
.end method

.method private onCardDismissed()V
    .locals 2

    const-string v0, "KindleFlashcards"

    const-string v1, "NextCard"

    .line 1141
    invoke-static {v0, v1}, Lcom/amazon/metrics/ClickstreamMetrics;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1143
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/CardPileView;->adapter:Lcom/amazon/kedu/flashcards/CardPileAdapter;

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/DeckAdapter;->iterateViaDismiss()V

    return-void
.end method

.method private onCardDragging(Lcom/amazon/kedu/flashcards/views/QuizCardView;Lcom/amazon/kedu/flashcards/CardPileView$QuizCardDraggingStatus;)V
    .locals 1

    .line 1148
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/CardPileView;->quizPileAnimatorListener:Lcom/amazon/kedu/flashcards/CardPileView$QuizPileAnimatorListener;

    if-eqz v0, :cond_0

    .line 1150
    invoke-interface {v0, p1, p2}, Lcom/amazon/kedu/flashcards/CardPileView$QuizPileAnimatorListener;->onQuizCardDragging(Lcom/amazon/kedu/flashcards/views/QuizCardView;Lcom/amazon/kedu/flashcards/CardPileView$QuizCardDraggingStatus;)V

    :cond_0
    return-void
.end method

.method private onPileAnimationEnd()V
    .locals 2

    const/4 v0, 0x0

    .line 1171
    iput-boolean v0, p0, Lcom/amazon/kedu/flashcards/CardPileView;->pileAnimating:Z

    .line 1173
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/CardPileView;->updateTopCard()V

    .line 1175
    invoke-direct {p0, v0}, Lcom/amazon/kedu/flashcards/CardPileView;->showPileDropShadow(Z)V

    .line 1177
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/CardPileView;->topCard:Lcom/amazon/kedu/flashcards/views/QuizCardView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 1179
    invoke-virtual {v0, v1}, Lcom/amazon/kedu/flashcards/views/CardView;->setEnabled(Z)V

    .line 1182
    :cond_0
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/CardPileView;->quizPileAnimatorListener:Lcom/amazon/kedu/flashcards/CardPileView$QuizPileAnimatorListener;

    if-eqz v0, :cond_1

    .line 1184
    invoke-interface {v0}, Lcom/amazon/kedu/flashcards/CardPileView$QuizPileAnimatorListener;->onPileAnimationEnd()V

    :cond_1
    return-void
.end method

.method private onPileAnimationStart()V
    .locals 2

    const/4 v0, 0x1

    .line 1156
    iput-boolean v0, p0, Lcom/amazon/kedu/flashcards/CardPileView;->pileAnimating:Z

    .line 1158
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/CardPileView;->topCard:Lcom/amazon/kedu/flashcards/views/QuizCardView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1160
    invoke-virtual {v0, v1}, Lcom/amazon/kedu/flashcards/views/CardView;->setEnabled(Z)V

    .line 1163
    :cond_0
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/CardPileView;->quizPileAnimatorListener:Lcom/amazon/kedu/flashcards/CardPileView$QuizPileAnimatorListener;

    if-eqz v0, :cond_1

    .line 1165
    invoke-interface {v0}, Lcom/amazon/kedu/flashcards/CardPileView$QuizPileAnimatorListener;->onPileAnimationStart()V

    :cond_1
    return-void
.end method

.method private recordVelocity(Landroid/view/MotionEvent;)V
    .locals 1

    .line 657
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/CardPileView;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 659
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kedu/flashcards/CardPileView;->velocityTracker:Landroid/view/VelocityTracker;

    .line 662
    :cond_0
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/CardPileView;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private refresh()V
    .locals 0

    .line 232
    invoke-virtual {p0}, Landroid/widget/AdapterView;->removeAllViewsInLayout()V

    .line 233
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/CardPileView;->render()V

    return-void
.end method

.method private releaseVelocityTracker()V
    .locals 1

    .line 667
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/CardPileView;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 669
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 670
    iput-object v0, p0, Lcom/amazon/kedu/flashcards/CardPileView;->velocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private render()V
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/CardPileView;->adapter:Lcom/amazon/kedu/flashcards/CardPileAdapter;

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/CardPileAdapter;->isWholeDeckEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/CardPileView;->showEmptyView()V

    goto :goto_0

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/CardPileView;->adapter:Lcom/amazon/kedu/flashcards/CardPileAdapter;

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/CardPileAdapter;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 244
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/CardPileView;->showCompletedView()V

    goto :goto_0

    .line 248
    :cond_1
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/CardPileView;->showPileView()V

    .line 249
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/CardPileView;->renderPile()V

    :goto_0
    return-void
.end method

.method private renderPile()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 256
    :goto_0
    iget-object v2, p0, Lcom/amazon/kedu/flashcards/CardPileView;->adapter:Lcom/amazon/kedu/flashcards/CardPileAdapter;

    invoke-virtual {v2}, Lcom/amazon/kedu/flashcards/CardPileAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    .line 258
    iget-object v2, p0, Lcom/amazon/kedu/flashcards/CardPileView;->adapter:Lcom/amazon/kedu/flashcards/CardPileAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, p0}, Lcom/amazon/kedu/flashcards/CardPileAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 260
    invoke-direct {p0, v2, v0}, Lcom/amazon/kedu/flashcards/CardPileView;->renderViewInPile(Landroid/view/View;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 265
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/CardPileView;->updateTopCard()V

    .line 266
    invoke-virtual {p0}, Landroid/widget/AdapterView;->requestLayout()V

    return-void
.end method

.method private renderViewInPile(Landroid/view/View;I)V
    .locals 3

    const/4 v0, 0x0

    .line 271
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 272
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, p2, v1, v0}, Landroid/widget/AdapterView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    return-void
.end method

.method private setPileVisibility(I)V
    .locals 3

    const/4 v0, 0x0

    .line 697
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 699
    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 700
    iget-object v2, p0, Lcom/amazon/kedu/flashcards/CardPileView;->topCard:Lcom/amazon/kedu/flashcards/views/QuizCardView;

    if-eq v1, v2, :cond_0

    .line 702
    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setTopCard(Lcom/amazon/kedu/flashcards/views/QuizCardView;)V
    .locals 1

    .line 676
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/CardPileView;->topCard:Lcom/amazon/kedu/flashcards/views/QuizCardView;

    if-eq p1, v0, :cond_0

    .line 678
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/CardPileView;->topCard:Lcom/amazon/kedu/flashcards/views/QuizCardView;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 682
    invoke-virtual {p1, v0}, Lcom/amazon/kedu/flashcards/views/CardView;->setEnabled(Z)V

    .line 683
    invoke-virtual {p1, p0}, Lcom/amazon/kedu/flashcards/views/QuizCardView;->setOnQuizCardFlipListener(Lcom/amazon/kedu/flashcards/views/QuizCardView$OnQuizCardFlipListener;)V

    .line 685
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/CardPileView;->accessibilityFocusTopCard()V

    :cond_0
    return-void
.end method

.method private showCompletedView()V
    .locals 3

    const/4 v0, 0x4

    .line 317
    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->setVisibility(I)V

    .line 319
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getEmptyView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 321
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getEmptyView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 324
    :cond_0
    iget-object v1, p0, Lcom/amazon/kedu/flashcards/CardPileView;->completedView:Landroid/view/View;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    .line 326
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 329
    :cond_1
    iget-object v1, p0, Lcom/amazon/kedu/flashcards/CardPileView;->accessibilityView:Lcom/amazon/kedu/flashcards/views/QuizAccessibilityView;

    if-eqz v1, :cond_2

    .line 331
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method private showEmptyView()V
    .locals 3

    const/4 v0, 0x4

    .line 297
    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->setVisibility(I)V

    .line 299
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getEmptyView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 301
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getEmptyView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 304
    :cond_0
    iget-object v1, p0, Lcom/amazon/kedu/flashcards/CardPileView;->completedView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 306
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 309
    :cond_1
    iget-object v1, p0, Lcom/amazon/kedu/flashcards/CardPileView;->accessibilityView:Lcom/amazon/kedu/flashcards/views/QuizAccessibilityView;

    if-eqz v1, :cond_2

    .line 311
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method private showPileDropShadow(Z)V
    .locals 2

    .line 709
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 711
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/CardPileView;->topCard:Lcom/amazon/kedu/flashcards/views/QuizCardView;

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v0, v1

    .line 712
    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kedu/flashcards/views/QuizCardView;

    if-eqz v0, :cond_0

    .line 715
    invoke-virtual {v0, p1}, Lcom/amazon/kedu/flashcards/views/QuizCardView;->setActive(Z)V

    :cond_0
    return-void
.end method

.method private showPileView()V
    .locals 3

    const/4 v0, 0x0

    .line 277
    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->setVisibility(I)V

    .line 279
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getEmptyView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    if-eqz v1, :cond_0

    .line 281
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getEmptyView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 284
    :cond_0
    iget-object v1, p0, Lcom/amazon/kedu/flashcards/CardPileView;->completedView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 286
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 289
    :cond_1
    iget-object v1, p0, Lcom/amazon/kedu/flashcards/CardPileView;->accessibilityView:Lcom/amazon/kedu/flashcards/views/QuizAccessibilityView;

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/amazon/kedu/flashcards/AccessibilityUtils;->isScreenReaderEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 291
    iget-object v1, p0, Lcom/amazon/kedu/flashcards/CardPileView;->accessibilityView:Lcom/amazon/kedu/flashcards/views/QuizAccessibilityView;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method private startDraggingCard(Lcom/amazon/kedu/flashcards/views/QuizCardView;)V
    .locals 1

    const/4 v0, 0x1

    .line 730
    iput-boolean v0, p0, Lcom/amazon/kedu/flashcards/CardPileView;->cardDragging:Z

    .line 731
    invoke-virtual {p1, v0}, Lcom/amazon/kedu/flashcards/views/QuizCardView;->setActive(Z)V

    return-void
.end method

.method private startPileAnimation(Landroid/animation/Animator;)V
    .locals 1

    .line 848
    iget-boolean v0, p0, Lcom/amazon/kedu/flashcards/CardPileView;->pileAnimating:Z

    if-nez v0, :cond_0

    .line 850
    new-instance v0, Lcom/amazon/kedu/flashcards/CardPileView$5;

    invoke-direct {v0, p0}, Lcom/amazon/kedu/flashcards/CardPileView$5;-><init>(Lcom/amazon/kedu/flashcards/CardPileView;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 865
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    :cond_0
    return-void
.end method

.method private stopDraggingCard(Lcom/amazon/kedu/flashcards/views/QuizCardView;)V
    .locals 1

    const/4 v0, 0x0

    .line 736
    iput-boolean v0, p0, Lcom/amazon/kedu/flashcards/CardPileView;->cardDragging:Z

    .line 737
    invoke-virtual {p1, v0}, Lcom/amazon/kedu/flashcards/views/QuizCardView;->setActive(Z)V

    return-void
.end method

.method private updateTopCard()V
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/CardPileView;->adapter:Lcom/amazon/kedu/flashcards/CardPileAdapter;

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/CardPileAdapter;->isComplete()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 339
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kedu/flashcards/views/QuizCardView;

    invoke-direct {p0, v0}, Lcom/amazon/kedu/flashcards/CardPileView;->setTopCard(Lcom/amazon/kedu/flashcards/views/QuizCardView;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 343
    invoke-direct {p0, v0}, Lcom/amazon/kedu/flashcards/CardPileView;->setTopCard(Lcom/amazon/kedu/flashcards/views/QuizCardView;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public accessibilityFocusTopCard()V
    .locals 2

    .line 692
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/CardPileView;->topCard:Lcom/amazon/kedu/flashcards/views/QuizCardView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->sendAccessibilityEvent(I)V

    return-void
.end method

.method public commitCardNegative()V
    .locals 0

    .line 112
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/CardPileView;->animateNegativeCommit()V

    return-void
.end method

.method public commitCardPositive()V
    .locals 0

    .line 107
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/CardPileView;->animatePositiveCommit()V

    return-void
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/CardPileView;->getAdapter()Lcom/amazon/kedu/flashcards/CardPileAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Lcom/amazon/kedu/flashcards/CardPileAdapter;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/CardPileView;->adapter:Lcom/amazon/kedu/flashcards/CardPileAdapter;

    return-object v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/CardPileView;->topCard:Lcom/amazon/kedu/flashcards/views/QuizCardView;

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 350
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 352
    invoke-virtual {p0}, Landroid/widget/AdapterView;->isEnabled()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    return v2

    .line 357
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/CardPileView;->isPileInteractable()Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    return v3

    .line 362
    :cond_1
    iget v1, p0, Lcom/amazon/kedu/flashcards/CardPileView;->touchActivePointerId:I

    const/4 v4, -0x1

    if-ne v1, v4, :cond_2

    if-eqz v0, :cond_2

    return v3

    :cond_2
    if-eqz v0, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    goto :goto_0

    .line 394
    :cond_3
    iget v0, p0, Lcom/amazon/kedu/flashcards/CardPileView;->touchActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-ne v0, v4, :cond_4

    return v3

    .line 402
    :cond_4
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iget v4, p0, Lcom/amazon/kedu/flashcards/CardPileView;->touchLastX:F

    sub-float/2addr v1, v4

    .line 403
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iget v0, p0, Lcom/amazon/kedu/flashcards/CardPileView;->touchLastY:F

    sub-float/2addr p1, v0

    .line 406
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/amazon/kedu/flashcards/CardPileView;->touchSlop:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_5

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lcom/amazon/kedu/flashcards/CardPileView;->touchSlop:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_8

    :cond_5
    return v2

    .line 371
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 373
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iget-object v2, p0, Lcom/amazon/kedu/flashcards/CardPileView;->topCard:Lcom/amazon/kedu/flashcards/views/QuizCardView;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getX()F

    move-result v2

    add-float/2addr v1, v2

    .line 374
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    iget-object v4, p0, Lcom/amazon/kedu/flashcards/CardPileView;->topCard:Lcom/amazon/kedu/flashcards/views/QuizCardView;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getY()F

    move-result v4

    add-float/2addr v2, v4

    .line 376
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 377
    iget-object v5, p0, Lcom/amazon/kedu/flashcards/CardPileView;->topCard:Lcom/amazon/kedu/flashcards/views/QuizCardView;

    invoke-virtual {v5, v4}, Landroid/widget/RelativeLayout;->getHitRect(Landroid/graphics/Rect;)V

    float-to-int v5, v1

    float-to-int v6, v2

    .line 378
    invoke-virtual {v4, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-nez v4, :cond_7

    return v3

    .line 383
    :cond_7
    invoke-direct {p0, p1}, Lcom/amazon/kedu/flashcards/CardPileView;->recordVelocity(Landroid/view/MotionEvent;)V

    .line 385
    iput v1, p0, Lcom/amazon/kedu/flashcards/CardPileView;->touchLastX:F

    .line 386
    iput v2, p0, Lcom/amazon/kedu/flashcards/CardPileView;->touchLastY:F

    .line 387
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/amazon/kedu/flashcards/CardPileView;->touchActivePointerId:I

    :cond_8
    :goto_0
    return v3
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .line 206
    invoke-super/range {p0 .. p5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    .line 208
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/CardPileView;->adapter:Lcom/amazon/kedu/flashcards/CardPileAdapter;

    if-nez p1, :cond_0

    return-void

    .line 213
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getMeasuredWidth()I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 214
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getMeasuredHeight()I

    move-result v1

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/4 v1, 0x0

    .line 216
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 218
    invoke-virtual {p0, v1}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 219
    invoke-virtual {v2, p1, v0}, Landroid/view/View;->measure(II)V

    .line 220
    invoke-virtual {v2, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 223
    :cond_1
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/CardPileView;->topCard:Lcom/amazon/kedu/flashcards/views/QuizCardView;

    if-eqz p1, :cond_2

    .line 225
    iget-object p2, p0, Lcom/amazon/kedu/flashcards/CardPileView;->adapter:Lcom/amazon/kedu/flashcards/CardPileAdapter;

    sget-object p3, Lcom/amazon/kedu/flashcards/utils/Side;->FRONT:Lcom/amazon/kedu/flashcards/utils/Side;

    invoke-virtual {p1, p3}, Lcom/amazon/kedu/flashcards/views/CardView;->getContentSize(Lcom/amazon/kedu/flashcards/utils/Side;)Landroid/graphics/Point;

    move-result-object p1

    iget-object p3, p0, Lcom/amazon/kedu/flashcards/CardPileView;->topCard:Lcom/amazon/kedu/flashcards/views/QuizCardView;

    sget-object p4, Lcom/amazon/kedu/flashcards/utils/Side;->BACK:Lcom/amazon/kedu/flashcards/utils/Side;

    .line 226
    invoke-virtual {p3, p4}, Lcom/amazon/kedu/flashcards/views/CardView;->getContentSize(Lcom/amazon/kedu/flashcards/utils/Side;)Landroid/graphics/Point;

    move-result-object p3

    .line 225
    invoke-virtual {p2, p1, p3}, Lcom/amazon/kedu/flashcards/DeckAdapter;->setLoadableContentArea(Landroid/graphics/Point;Landroid/graphics/Point;)V

    :cond_2
    return-void
.end method

.method public onQuizCardFlipEnd(Lcom/amazon/kedu/flashcards/views/QuizCardView;)V
    .locals 0

    const/4 p1, 0x0

    .line 186
    invoke-direct {p0, p1}, Lcom/amazon/kedu/flashcards/CardPileView;->setPileVisibility(I)V

    .line 187
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/CardPileView;->onPileAnimationEnd()V

    .line 188
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/CardPileView;->accessibilityFocusTopCard()V

    return-void
.end method

.method public onQuizCardFlipStart(Lcom/amazon/kedu/flashcards/views/QuizCardView;)V
    .locals 0

    const/4 p1, 0x4

    .line 179
    invoke-direct {p0, p1}, Lcom/amazon/kedu/flashcards/CardPileView;->setPileVisibility(I)V

    .line 180
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/CardPileView;->onPileAnimationStart()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 425
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/CardPileView;->isPileInteractable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Landroid/widget/AdapterView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 430
    :cond_0
    iget v0, p0, Lcom/amazon/kedu/flashcards/CardPileView;->touchActivePointerId:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    return v1

    .line 435
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v0, v5, :cond_7

    if-eq v0, v4, :cond_4

    if-eq v0, v3, :cond_7

    const/4 v2, 0x6

    if-eq v0, v2, :cond_2

    goto/16 :goto_2

    .line 521
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 522
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 525
    iget v3, p0, Lcom/amazon/kedu/flashcards/CardPileView;->touchActivePointerId:I

    if-ne v2, v3, :cond_e

    if-nez v0, :cond_3

    const/4 v1, 0x1

    .line 529
    :cond_3
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/amazon/kedu/flashcards/CardPileView;->touchLastX:F

    .line 530
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/amazon/kedu/flashcards/CardPileView;->touchLastY:F

    .line 531
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/amazon/kedu/flashcards/CardPileView;->touchActivePointerId:I

    goto/16 :goto_2

    .line 439
    :cond_4
    iget v0, p0, Lcom/amazon/kedu/flashcards/CardPileView;->touchActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-ne v0, v2, :cond_5

    return v1

    .line 447
    :cond_5
    invoke-direct {p0, p1}, Lcom/amazon/kedu/flashcards/CardPileView;->recordVelocity(Landroid/view/MotionEvent;)V

    .line 449
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 450
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    .line 451
    iget v0, p0, Lcom/amazon/kedu/flashcards/CardPileView;->touchLastX:F

    sub-float/2addr v1, v0

    .line 452
    iget v0, p0, Lcom/amazon/kedu/flashcards/CardPileView;->touchLastY:F

    sub-float/2addr p1, v0

    .line 454
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/CardPileView;->topCard:Lcom/amazon/kedu/flashcards/views/QuizCardView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setX(F)V

    .line 455
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/CardPileView;->topCard:Lcom/amazon/kedu/flashcards/views/QuizCardView;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setY(F)V

    .line 456
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/CardPileView;->topCard:Lcom/amazon/kedu/flashcards/views/QuizCardView;

    invoke-direct {p0, p1}, Lcom/amazon/kedu/flashcards/CardPileView;->calculateCardRotation(Lcom/amazon/kedu/flashcards/views/QuizCardView;)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setRotation(F)V

    .line 458
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/CardPileView;->topCard:Lcom/amazon/kedu/flashcards/views/QuizCardView;

    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/views/QuizCardView;->isActive()Z

    move-result p1

    if-nez p1, :cond_6

    .line 460
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/CardPileView;->topCard:Lcom/amazon/kedu/flashcards/views/QuizCardView;

    invoke-direct {p0, p1}, Lcom/amazon/kedu/flashcards/CardPileView;->startDraggingCard(Lcom/amazon/kedu/flashcards/views/QuizCardView;)V

    .line 463
    :cond_6
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/CardPileView;->topCard:Lcom/amazon/kedu/flashcards/views/QuizCardView;

    invoke-direct {p0, p1}, Lcom/amazon/kedu/flashcards/CardPileView;->getQuizCardDraggingStatus(Lcom/amazon/kedu/flashcards/views/QuizCardView;)Lcom/amazon/kedu/flashcards/CardPileView$QuizCardDraggingStatus;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/amazon/kedu/flashcards/CardPileView;->onCardDragging(Lcom/amazon/kedu/flashcards/views/QuizCardView;Lcom/amazon/kedu/flashcards/CardPileView$QuizCardDraggingStatus;)V

    goto/16 :goto_2

    .line 471
    :cond_7
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/CardPileView;->velocityTracker:Landroid/view/VelocityTracker;

    iget-object v0, p0, Lcom/amazon/kedu/flashcards/CardPileView;->viewConfiguration:Landroid/view/ViewConfiguration;

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v5, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 472
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/CardPileView;->velocityTracker:Landroid/view/VelocityTracker;

    iget v0, p0, Lcom/amazon/kedu/flashcards/CardPileView;->touchActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result p1

    .line 473
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/CardPileView;->velocityTracker:Landroid/view/VelocityTracker;

    iget v1, p0, Lcom/amazon/kedu/flashcards/CardPileView;->touchActivePointerId:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v0

    .line 475
    iget-object v1, p0, Lcom/amazon/kedu/flashcards/CardPileView;->topCard:Lcom/amazon/kedu/flashcards/views/QuizCardView;

    invoke-direct {p0, v1, p1, v0}, Lcom/amazon/kedu/flashcards/CardPileView;->getProjectedQuizCardDraggingStatus(Lcom/amazon/kedu/flashcards/views/QuizCardView;FF)Lcom/amazon/kedu/flashcards/CardPileView$QuizCardDraggingStatus;

    move-result-object v1

    .line 476
    invoke-virtual {v1}, Lcom/amazon/kedu/flashcards/CardPileView$QuizCardDraggingStatus;->getPercentCommitted()F

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_d

    .line 478
    iget-object v6, p0, Lcom/amazon/kedu/flashcards/CardPileView;->quizPileAnimatorListener:Lcom/amazon/kedu/flashcards/CardPileView$QuizPileAnimatorListener;

    if-eqz v6, :cond_8

    .line 480
    invoke-interface {v6, v1}, Lcom/amazon/kedu/flashcards/CardPileView$QuizPileAnimatorListener;->onQuizCardDraggingFinish(Lcom/amazon/kedu/flashcards/CardPileView$QuizCardDraggingStatus;)V

    .line 482
    :cond_8
    sget-object v6, Lcom/amazon/kedu/flashcards/CardPileView$13;->$SwitchMap$com$amazon$kedu$flashcards$CardPileView$QuizPileSection:[I

    invoke-virtual {v1}, Lcom/amazon/kedu/flashcards/CardPileView$QuizCardDraggingStatus;->getPileSection()Lcom/amazon/kedu/flashcards/CardPileView$QuizPileSection;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v6, v1

    const-string v6, "KindleFlashcards"

    if-eq v1, v5, :cond_c

    if-eq v1, v4, :cond_b

    if-eq v1, v3, :cond_9

    goto :goto_0

    .line 497
    :cond_9
    iget-object v1, p0, Lcom/amazon/kedu/flashcards/CardPileView;->adapter:Lcom/amazon/kedu/flashcards/CardPileAdapter;

    invoke-virtual {v1}, Lcom/amazon/kedu/flashcards/CardPileAdapter;->getCount()I

    move-result v1

    if-le v1, v5, :cond_a

    .line 499
    iget-object v1, p0, Lcom/amazon/kedu/flashcards/CardPileView;->topCard:Lcom/amazon/kedu/flashcards/views/QuizCardView;

    invoke-direct {p0, v1, p1, v0}, Lcom/amazon/kedu/flashcards/CardPileView;->animateDismiss(Lcom/amazon/kedu/flashcards/views/QuizCardView;FF)V

    goto :goto_1

    .line 504
    :cond_a
    :goto_0
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/CardPileView;->topCard:Lcom/amazon/kedu/flashcards/views/QuizCardView;

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kedu/flashcards/R$integer;->fc_card_pile_anim_return_to_pile_duration:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, p1, v0, v1}, Lcom/amazon/kedu/flashcards/CardPileView;->animateReturnToPile(Lcom/amazon/kedu/flashcards/views/QuizCardView;J)V

    goto :goto_1

    :cond_b
    const-string v1, "MarkCardIncorrectSwipe"

    .line 491
    invoke-static {v6, v1}, Lcom/amazon/metrics/ClickstreamMetrics;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    iget-object v1, p0, Lcom/amazon/kedu/flashcards/CardPileView;->topCard:Lcom/amazon/kedu/flashcards/views/QuizCardView;

    invoke-direct {p0, v1, p1, v0}, Lcom/amazon/kedu/flashcards/CardPileView;->animateNegativeCommit(Lcom/amazon/kedu/flashcards/views/QuizCardView;FF)V

    goto :goto_1

    :cond_c
    const-string v1, "MarkCardCorrectSwipe"

    .line 485
    invoke-static {v6, v1}, Lcom/amazon/metrics/ClickstreamMetrics;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    iget-object v1, p0, Lcom/amazon/kedu/flashcards/CardPileView;->topCard:Lcom/amazon/kedu/flashcards/views/QuizCardView;

    invoke-direct {p0, v1, p1, v0}, Lcom/amazon/kedu/flashcards/CardPileView;->animatePositiveCommit(Lcom/amazon/kedu/flashcards/views/QuizCardView;FF)V

    goto :goto_1

    .line 509
    :cond_d
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/CardPileView;->topCard:Lcom/amazon/kedu/flashcards/views/QuizCardView;

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kedu/flashcards/R$integer;->fc_card_pile_anim_return_to_pile_duration:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, p1, v0, v1}, Lcom/amazon/kedu/flashcards/CardPileView;->animateReturnToPile(Lcom/amazon/kedu/flashcards/views/QuizCardView;J)V

    .line 512
    :goto_1
    iput v2, p0, Lcom/amazon/kedu/flashcards/CardPileView;->touchActivePointerId:I

    .line 514
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/CardPileView;->releaseVelocityTracker()V

    :cond_e
    :goto_2
    return v5

    :cond_f
    :goto_3
    return v1
.end method

.method public reset(Lcom/amazon/kedu/flashcards/models/QuizDeckModel$ResetType;)V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/CardPileView;->adapter:Lcom/amazon/kedu/flashcards/CardPileAdapter;

    invoke-virtual {v0, p1}, Lcom/amazon/kedu/flashcards/DeckAdapter;->reset(Lcom/amazon/kedu/flashcards/models/QuizDeckModel$ResetType;)V

    return-void
.end method

.method public setAccessibilityView(Lcom/amazon/kedu/flashcards/views/QuizAccessibilityView;)V
    .locals 1

    .line 137
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/CardPileView;->accessibilityView:Lcom/amazon/kedu/flashcards/views/QuizAccessibilityView;

    .line 138
    new-instance v0, Lcom/amazon/kedu/flashcards/CardPileView$1;

    invoke-direct {v0, p0}, Lcom/amazon/kedu/flashcards/CardPileView$1;-><init>(Lcom/amazon/kedu/flashcards/CardPileView;)V

    invoke-virtual {p1, v0}, Lcom/amazon/kedu/flashcards/views/QuizAccessibilityView;->setOnFlipClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/CardPileView;->accessibilityView:Lcom/amazon/kedu/flashcards/views/QuizAccessibilityView;

    new-instance v0, Lcom/amazon/kedu/flashcards/CardPileView$2;

    invoke-direct {v0, p0}, Lcom/amazon/kedu/flashcards/CardPileView$2;-><init>(Lcom/amazon/kedu/flashcards/CardPileView;)V

    invoke-virtual {p1, v0}, Lcom/amazon/kedu/flashcards/views/QuizAccessibilityView;->setOnSendToBackClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 36
    check-cast p1, Lcom/amazon/kedu/flashcards/CardPileAdapter;

    invoke-virtual {p0, p1}, Lcom/amazon/kedu/flashcards/CardPileView;->setAdapter(Lcom/amazon/kedu/flashcards/CardPileAdapter;)V

    return-void
.end method

.method public setAdapter(Lcom/amazon/kedu/flashcards/CardPileAdapter;)V
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/CardPileView;->adapter:Lcom/amazon/kedu/flashcards/CardPileAdapter;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amazon/kedu/flashcards/CardPileView;->dataSetObserver:Lcom/amazon/kedu/flashcards/CardPileView$QuizPileAdapterDataSetObserver;

    if-eqz v1, :cond_0

    .line 167
    invoke-virtual {v0, v1}, Landroid/widget/BaseAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 170
    :cond_0
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/CardPileView;->adapter:Lcom/amazon/kedu/flashcards/CardPileAdapter;

    .line 171
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/CardPileView;->dataSetObserver:Lcom/amazon/kedu/flashcards/CardPileView$QuizPileAdapterDataSetObserver;

    invoke-virtual {p1, v0}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 173
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/CardPileView;->refresh()V

    return-void
.end method

.method public setCompletedView(Landroid/view/View;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/CardPileView;->completedView:Landroid/view/View;

    return-void
.end method

.method public setQuizPileAnimatorListener(Lcom/amazon/kedu/flashcards/CardPileView$QuizPileAnimatorListener;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/CardPileView;->quizPileAnimatorListener:Lcom/amazon/kedu/flashcards/CardPileView$QuizPileAnimatorListener;

    return-void
.end method

.method public setSelection(I)V
    .locals 0

    .line 200
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public shuffle()V
    .locals 0

    .line 117
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/CardPileView;->animateShuffle()V

    return-void
.end method
