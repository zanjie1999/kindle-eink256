.class public Lcom/amazon/kedu/flashcards/views/QuizCardView;
.super Lcom/amazon/kedu/flashcards/views/CardView;
.source "QuizCardView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kedu/flashcards/views/QuizCardView$OnQuizCardFlipListener;
    }
.end annotation


# static fields
.field private static final LAYOUT_RESOURCE_ID:I


# instance fields
.field private isActive:Z

.field private onQuizCardFlipListener:Lcom/amazon/kedu/flashcards/views/QuizCardView$OnQuizCardFlipListener;

.field private viewSwitcher:Landroid/widget/ViewSwitcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    sget v0, Lcom/amazon/kedu/flashcards/R$layout;->fc_view_quiz_card:I

    sput v0, Lcom/amazon/kedu/flashcards/views/QuizCardView;->LAYOUT_RESOURCE_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 32
    sget v0, Lcom/amazon/kedu/flashcards/views/QuizCardView;->LAYOUT_RESOURCE_ID:I

    invoke-direct {p0, p1, v0}, Lcom/amazon/kedu/flashcards/views/CardView;-><init>(Landroid/content/Context;I)V

    .line 33
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/views/QuizCardView;->initialize()V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/amazon/kedu/flashcards/views/CardView;-><init>(Landroid/content/Context;I)V

    .line 45
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/views/QuizCardView;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 38
    sget v0, Lcom/amazon/kedu/flashcards/views/QuizCardView;->LAYOUT_RESOURCE_ID:I

    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/kedu/flashcards/views/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/views/QuizCardView;->initialize()V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kedu/flashcards/views/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/views/QuizCardView;->initialize()V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kedu/flashcards/views/QuizCardView;)Landroid/widget/ViewSwitcher;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/amazon/kedu/flashcards/views/QuizCardView;->viewSwitcher:Landroid/widget/ViewSwitcher;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/kedu/flashcards/views/QuizCardView;Lcom/amazon/kedu/flashcards/views/QuizCardView;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/amazon/kedu/flashcards/views/QuizCardView;->onQuizCardFlipStart(Lcom/amazon/kedu/flashcards/views/QuizCardView;)V

    return-void
.end method

.method static synthetic access$200(Lcom/amazon/kedu/flashcards/views/QuizCardView;Lcom/amazon/kedu/flashcards/views/QuizCardView;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/amazon/kedu/flashcards/views/QuizCardView;->onCardFlipEnd(Lcom/amazon/kedu/flashcards/views/QuizCardView;)V

    return-void
.end method

.method private initialize()V
    .locals 2

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lcom/amazon/kedu/flashcards/views/QuizCardView;->isActive:Z

    .line 58
    sget v1, Lcom/amazon/kedu/flashcards/R$id;->view_switcher:I

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ViewSwitcher;

    iput-object v1, p0, Lcom/amazon/kedu/flashcards/views/QuizCardView;->viewSwitcher:Landroid/widget/ViewSwitcher;

    .line 60
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setClipChildren(Z)V

    .line 61
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setClipToPadding(Z)V

    return-void
.end method

.method private onCardFlipEnd(Lcom/amazon/kedu/flashcards/views/QuizCardView;)V
    .locals 1

    const-string p1, "KindleFlashcards"

    const-string v0, "CardFlipped"

    .line 187
    invoke-static {p1, v0}, Lcom/amazon/metrics/ClickstreamMetrics;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 189
    invoke-virtual {p0, p1}, Lcom/amazon/kedu/flashcards/views/CardView;->setEnabled(Z)V

    .line 191
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/views/QuizCardView;->onQuizCardFlipListener:Lcom/amazon/kedu/flashcards/views/QuizCardView$OnQuizCardFlipListener;

    if-eqz p1, :cond_0

    .line 193
    invoke-interface {p1, p0}, Lcom/amazon/kedu/flashcards/views/QuizCardView$OnQuizCardFlipListener;->onQuizCardFlipEnd(Lcom/amazon/kedu/flashcards/views/QuizCardView;)V

    :cond_0
    return-void
.end method

.method private onQuizCardFlipStart(Lcom/amazon/kedu/flashcards/views/QuizCardView;)V
    .locals 0

    const/4 p1, 0x0

    .line 177
    invoke-virtual {p0, p1}, Lcom/amazon/kedu/flashcards/views/CardView;->setEnabled(Z)V

    .line 179
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/views/QuizCardView;->onQuizCardFlipListener:Lcom/amazon/kedu/flashcards/views/QuizCardView$OnQuizCardFlipListener;

    if-eqz p1, :cond_0

    .line 181
    invoke-interface {p1, p0}, Lcom/amazon/kedu/flashcards/views/QuizCardView$OnQuizCardFlipListener;->onQuizCardFlipStart(Lcom/amazon/kedu/flashcards/views/QuizCardView;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public flip()V
    .locals 9

    .line 127
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/views/QuizCardView;->viewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    .line 128
    iget-object v1, p0, Lcom/amazon/kedu/flashcards/views/QuizCardView;->viewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v1

    .line 130
    invoke-virtual {v0}, Landroid/view/View;->getRotationY()F

    move-result v2

    const/high16 v3, 0x42b40000    # 90.0f

    add-float v4, v2, v3

    .line 132
    invoke-virtual {v1}, Landroid/view/View;->getRotation()F

    move-result v5

    sub-float/2addr v5, v3

    .line 133
    invoke-virtual {v1}, Landroid/view/View;->getRotation()F

    move-result v3

    const/4 v6, 0x2

    new-array v7, v6, [F

    const/4 v8, 0x0

    aput v2, v7, v8

    const/4 v2, 0x1

    aput v4, v7, v2

    const-string v4, "rotationY"

    .line 135
    invoke-static {v0, v4, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-array v7, v6, [F

    aput v5, v7, v8

    aput v3, v7, v2

    .line 136
    invoke-static {v1, v4, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 138
    new-instance v3, Lcom/amazon/kedu/flashcards/views/QuizCardView$1;

    invoke-direct {v3, p0}, Lcom/amazon/kedu/flashcards/views/QuizCardView$1;-><init>(Lcom/amazon/kedu/flashcards/views/QuizCardView;)V

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 149
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v4, v6, [Landroid/animation/Animator;

    aput-object v0, v4, v8

    aput-object v1, v4, v2

    .line 150
    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 151
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kedu/flashcards/R$integer;->fc_card_anim_flip_duration:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v3, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 153
    new-instance v0, Lcom/amazon/kedu/flashcards/views/QuizCardView$2;

    invoke-direct {v0, p0}, Lcom/amazon/kedu/flashcards/views/QuizCardView$2;-><init>(Lcom/amazon/kedu/flashcards/views/QuizCardView;)V

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 172
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public getVisibleSide()Lcom/amazon/kedu/flashcards/utils/Side;
    .locals 2

    .line 71
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/views/QuizCardView;->getVisibleSideView()Lcom/amazon/kedu/flashcards/views/QuizCardSideView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/views/CardView;->getFrontSideView()Lcom/amazon/kedu/flashcards/views/CardSideView;

    move-result-object v1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/amazon/kedu/flashcards/utils/Side;->FRONT:Lcom/amazon/kedu/flashcards/utils/Side;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/amazon/kedu/flashcards/utils/Side;->BACK:Lcom/amazon/kedu/flashcards/utils/Side;

    :goto_0
    return-object v0
.end method

.method public getVisibleSideView()Lcom/amazon/kedu/flashcards/views/QuizCardSideView;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/views/QuizCardView;->viewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kedu/flashcards/views/QuizCardSideView;

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    .line 84
    iget-boolean v0, p0, Lcom/amazon/kedu/flashcards/views/QuizCardView;->isActive:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 108
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 110
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 116
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/views/QuizCardView;->flip()V

    :cond_1
    return v1

    .line 122
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setActive(Z)V
    .locals 1

    .line 89
    iput-boolean p1, p0, Lcom/amazon/kedu/flashcards/views/QuizCardView;->isActive:Z

    .line 91
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/views/QuizCardView;->getVisibleSideView()Lcom/amazon/kedu/flashcards/views/QuizCardSideView;

    move-result-object p1

    iget-boolean v0, p0, Lcom/amazon/kedu/flashcards/views/QuizCardView;->isActive:Z

    invoke-virtual {p1, v0}, Lcom/amazon/kedu/flashcards/views/QuizCardSideView;->setShowDropShadow(Z)V

    return-void
.end method

.method public setOnQuizCardFlipListener(Lcom/amazon/kedu/flashcards/views/QuizCardView$OnQuizCardFlipListener;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/views/QuizCardView;->onQuizCardFlipListener:Lcom/amazon/kedu/flashcards/views/QuizCardView$OnQuizCardFlipListener;

    return-void
.end method

.method public setRemainingCount(I)V
    .locals 1

    .line 96
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/views/CardView;->getFrontSideView()Lcom/amazon/kedu/flashcards/views/CardSideView;

    move-result-object v0

    check-cast v0, Lcom/amazon/kedu/flashcards/views/QuizCardSideView;

    invoke-virtual {v0, p1}, Lcom/amazon/kedu/flashcards/views/QuizCardSideView;->setRemainingCardCount(I)V

    .line 97
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/views/CardView;->getBackSideView()Lcom/amazon/kedu/flashcards/views/CardSideView;

    move-result-object v0

    check-cast v0, Lcom/amazon/kedu/flashcards/views/QuizCardSideView;

    invoke-virtual {v0, p1}, Lcom/amazon/kedu/flashcards/views/QuizCardSideView;->setRemainingCardCount(I)V

    return-void
.end method

.method public setVisibleSide(Lcom/amazon/kedu/flashcards/utils/Side;)V
    .locals 1

    .line 76
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/views/QuizCardView;->getVisibleSide()Lcom/amazon/kedu/flashcards/utils/Side;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 78
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/views/QuizCardView;->viewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {p1}, Landroid/widget/ViewSwitcher;->showNext()V

    :cond_0
    return-void
.end method
