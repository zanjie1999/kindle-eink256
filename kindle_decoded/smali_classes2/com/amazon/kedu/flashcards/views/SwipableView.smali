.class public Lcom/amazon/kedu/flashcards/views/SwipableView;
.super Landroid/widget/ViewSwitcher;
.source "SwipableView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kedu/flashcards/views/SwipableView$SwipableItemEventListener;
    }
.end annotation


# static fields
.field private static COMPLETE_SWIPE_DELTA:Ljava/lang/Float; = null

.field private static START_SWIPE_DELTA:Ljava/lang/Float; = null

.field private static STATIC_VARIABLES_INITIALIZED:Z = false

.field private static SWIPE_ANIMATION_DURATION:J


# instance fields
.field private deleted:Z

.field private draggableView:Landroid/view/View;

.field private dragging:Z

.field private eventListener:Lcom/amazon/kedu/flashcards/views/SwipableView$SwipableItemEventListener;

.field private eventTargetModel:Ljava/lang/Object;

.field private firstDownX:Ljava/lang/Float;

.field private firstDownY:Ljava/lang/Float;

.field private lastTouchEvent:Landroid/view/MotionEvent;

.field private overlay:Landroid/view/View;

.field private swipable:Z

.field private undoDeleteButton:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Landroid/widget/ViewSwitcher;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x7fc00000    # Float.NaN

    .line 31
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kedu/flashcards/views/SwipableView;->firstDownX:Ljava/lang/Float;

    .line 32
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/views/SwipableView;->firstDownY:Ljava/lang/Float;

    const/4 p1, 0x0

    .line 33
    iput-boolean p1, p0, Lcom/amazon/kedu/flashcards/views/SwipableView;->deleted:Z

    .line 34
    iput-boolean p1, p0, Lcom/amazon/kedu/flashcards/views/SwipableView;->dragging:Z

    const/4 p1, 0x1

    .line 35
    iput-boolean p1, p0, Lcom/amazon/kedu/flashcards/views/SwipableView;->swipable:Z

    .line 40
    invoke-direct {p0, p2, p3}, Lcom/amazon/kedu/flashcards/views/SwipableView;->initialize(II)V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kedu/flashcards/views/SwipableView;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/views/SwipableView;->animatedUndoDeletion()V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kedu/flashcards/views/SwipableView;)Landroid/view/MotionEvent;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/amazon/kedu/flashcards/views/SwipableView;->lastTouchEvent:Landroid/view/MotionEvent;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/kedu/flashcards/views/SwipableView;Landroid/view/MotionEvent;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/amazon/kedu/flashcards/views/SwipableView;->cancelTouchEventInChildren(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$300(Lcom/amazon/kedu/flashcards/views/SwipableView;)Z
    .locals 0

    .line 17
    iget-boolean p0, p0, Lcom/amazon/kedu/flashcards/views/SwipableView;->deleted:Z

    return p0
.end method

.method static synthetic access$400(Lcom/amazon/kedu/flashcards/views/SwipableView;)Lcom/amazon/kedu/flashcards/views/SwipableView$SwipableItemEventListener;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/amazon/kedu/flashcards/views/SwipableView;->eventListener:Lcom/amazon/kedu/flashcards/views/SwipableView$SwipableItemEventListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/amazon/kedu/flashcards/views/SwipableView;)Ljava/lang/Object;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/amazon/kedu/flashcards/views/SwipableView;->eventTargetModel:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$600(Lcom/amazon/kedu/flashcards/views/SwipableView;)Z
    .locals 0

    .line 17
    iget-boolean p0, p0, Lcom/amazon/kedu/flashcards/views/SwipableView;->dragging:Z

    return p0
.end method

.method static synthetic access$602(Lcom/amazon/kedu/flashcards/views/SwipableView;Z)Z
    .locals 0

    .line 17
    iput-boolean p1, p0, Lcom/amazon/kedu/flashcards/views/SwipableView;->dragging:Z

    return p1
.end method

.method static synthetic access$700(Lcom/amazon/kedu/flashcards/views/SwipableView;ZZ)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/amazon/kedu/flashcards/views/SwipableView;->setDeleted(ZZ)V

    return-void
.end method

.method private animateSwipe(FJLandroid/animation/Animator$AnimatorListener;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const-string p1, "cardTranslationX"

    .line 277
    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_1

    .line 280
    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    if-eqz p4, :cond_0

    .line 284
    invoke-virtual {p1, p4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 287
    :cond_0
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    :cond_1
    return-void
.end method

.method private animatedUndoDeletion()V
    .locals 4

    .line 293
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/views/SwipableView;->getPercentageOfSwipeDragged()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    .line 297
    sget-wide v2, Lcom/amazon/kedu/flashcards/views/SwipableView;->SWIPE_ANIMATION_DURATION:J

    long-to-float v2, v2

    mul-float v0, v0, v2

    float-to-long v2, v0

    goto :goto_0

    .line 301
    :cond_0
    sget-wide v2, Lcom/amazon/kedu/flashcards/views/SwipableView;->SWIPE_ANIMATION_DURATION:J

    .line 303
    :goto_0
    new-instance v0, Lcom/amazon/kedu/flashcards/views/SwipableView$5;

    invoke-direct {v0, p0}, Lcom/amazon/kedu/flashcards/views/SwipableView$5;-><init>(Lcom/amazon/kedu/flashcards/views/SwipableView;)V

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/amazon/kedu/flashcards/views/SwipableView;->animateSwipe(FJLandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private cancelTouchEventInChildren(Landroid/view/MotionEvent;)V
    .locals 1

    .line 200
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    const/4 v0, 0x3

    .line 201
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 202
    invoke-super {p0, p1}, Landroid/widget/ViewSwitcher;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method private getPercentLeftToDrag()F
    .locals 2

    .line 335
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/views/SwipableView;->getPercentageOfSwipeDragged()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    return v1
.end method

.method private getPercentageOfSwipeDragged()F
    .locals 2

    .line 340
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/views/SwipableView;->getCardTranslationX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 341
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/views/SwipableView;->getTotalSwipeDistanceToTravel()F

    move-result v1

    div-float/2addr v0, v1

    return v0
.end method

.method private getSwipeDirection()I
    .locals 2

    .line 351
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/views/SwipableView;->getCardTranslationX()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private getTotalSwipeDistanceToTravel()F
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/views/SwipableView;->draggableView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method private initialize(II)V
    .locals 3

    .line 61
    sget-boolean v0, Lcom/amazon/kedu/flashcards/views/SwipableView;->STATIC_VARIABLES_INITIALIZED:Z

    if-nez v0, :cond_0

    .line 63
    invoke-virtual {p0}, Landroid/widget/ViewSwitcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kedu/flashcards/R$integer;->fc_start_drag_delta_percent:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/amazon/kedu/flashcards/views/SwipableView;->START_SWIPE_DELTA:Ljava/lang/Float;

    .line 64
    invoke-virtual {p0}, Landroid/widget/ViewSwitcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/amazon/kedu/flashcards/R$integer;->fc_complete_drag_delta_percent:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/amazon/kedu/flashcards/views/SwipableView;->COMPLETE_SWIPE_DELTA:Ljava/lang/Float;

    .line 65
    invoke-virtual {p0}, Landroid/widget/ViewSwitcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kedu/flashcards/R$integer;->fc_mark_flashcard_for_deletion_time:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/amazon/kedu/flashcards/views/SwipableView;->SWIPE_ANIMATION_DURATION:J

    const/4 v0, 0x1

    .line 66
    sput-boolean v0, Lcom/amazon/kedu/flashcards/views/SwipableView;->STATIC_VARIABLES_INITIALIZED:Z

    .line 69
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ViewSwitcher;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 71
    sget p1, Lcom/amazon/kedu/flashcards/R$id;->undo_delete_button:I

    invoke-virtual {p0, p1}, Landroid/widget/ViewSwitcher;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/amazon/kedu/flashcards/views/SwipableView;->undoDeleteButton:Landroid/widget/Button;

    .line 72
    new-instance v0, Lcom/amazon/kedu/flashcards/views/SwipableView$1;

    invoke-direct {v0, p0}, Lcom/amazon/kedu/flashcards/views/SwipableView$1;-><init>(Lcom/amazon/kedu/flashcards/views/SwipableView;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    invoke-virtual {p0, p2}, Landroid/widget/ViewSwitcher;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kedu/flashcards/views/SwipableView;->draggableView:Landroid/view/View;

    .line 82
    sget p1, Lcom/amazon/kedu/flashcards/R$id;->overlay:I

    invoke-virtual {p0, p1}, Landroid/widget/ViewSwitcher;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kedu/flashcards/views/SwipableView;->overlay:Landroid/view/View;

    .line 83
    invoke-virtual {p0}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/amazon/kedu/flashcards/views/SwipableView$2;

    invoke-direct {p2, p0}, Lcom/amazon/kedu/flashcards/views/SwipableView$2;-><init>(Lcom/amazon/kedu/flashcards/views/SwipableView;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    new-instance p1, Lcom/amazon/kedu/flashcards/views/SwipableView$3;

    invoke-direct {p1, p0}, Lcom/amazon/kedu/flashcards/views/SwipableView$3;-><init>(Lcom/amazon/kedu/flashcards/views/SwipableView;)V

    invoke-virtual {p0, p1}, Landroid/widget/ViewSwitcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    new-instance p1, Lcom/amazon/kedu/flashcards/views/SwipableView$4;

    invoke-direct {p1, p0}, Lcom/amazon/kedu/flashcards/views/SwipableView$4;-><init>(Lcom/amazon/kedu/flashcards/views/SwipableView;)V

    invoke-virtual {p0, p1}, Landroid/widget/ViewSwitcher;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method private resetSwipeTranslation()V
    .locals 1

    .line 188
    iget-boolean v0, p0, Lcom/amazon/kedu/flashcards/views/SwipableView;->deleted:Z

    if-eqz v0, :cond_0

    .line 190
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/views/SwipableView;->getTotalSwipeDistanceToTravel()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amazon/kedu/flashcards/views/SwipableView;->setCardTranslationX(F)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 194
    invoke-virtual {p0, v0}, Lcom/amazon/kedu/flashcards/views/SwipableView;->setCardTranslationX(F)V

    :goto_0
    return-void
.end method

.method private setDeleted(ZZ)V
    .locals 1

    .line 153
    iget-boolean v0, p0, Lcom/amazon/kedu/flashcards/views/SwipableView;->deleted:Z

    if-eq v0, p1, :cond_3

    .line 155
    iput-boolean p1, p0, Lcom/amazon/kedu/flashcards/views/SwipableView;->deleted:Z

    .line 156
    invoke-virtual {p0}, Landroid/widget/ViewSwitcher;->showNext()V

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 160
    invoke-virtual {p0, v0}, Landroid/widget/ViewSwitcher;->setClickable(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 164
    invoke-virtual {p0, v0}, Landroid/widget/ViewSwitcher;->setClickable(Z)V

    :goto_0
    if-nez p2, :cond_1

    .line 169
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/views/SwipableView;->resetSwipeTranslation()V

    .line 172
    :cond_1
    iget-object p2, p0, Lcom/amazon/kedu/flashcards/views/SwipableView;->eventListener:Lcom/amazon/kedu/flashcards/views/SwipableView$SwipableItemEventListener;

    if-eqz p2, :cond_3

    if-eqz p1, :cond_2

    .line 176
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/views/SwipableView;->eventTargetModel:Ljava/lang/Object;

    invoke-interface {p2, p1}, Lcom/amazon/kedu/flashcards/views/SwipableView$SwipableItemEventListener;->onMarkedForDeletion(Ljava/lang/Object;)V

    goto :goto_1

    .line 180
    :cond_2
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/views/SwipableView;->eventTargetModel:Ljava/lang/Object;

    invoke-interface {p2, p1}, Lcom/amazon/kedu/flashcards/views/SwipableView$SwipableItemEventListener;->onUndoDeletion(Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private swipingHorizontally(Ljava/lang/Float;Ljava/lang/Float;)Z
    .locals 2

    .line 270
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/amazon/kedu/flashcards/views/SwipableView;->firstDownX:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    .line 271
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iget-object v0, p0, Lcom/amazon/kedu/flashcards/views/SwipableView;->firstDownY:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sub-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    .line 272
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/views/SwipableView;->getTotalSwipeDistanceToTravel()F

    move-result v1

    div-float/2addr v0, v1

    sget-object v1, Lcom/amazon/kedu/flashcards/views/SwipableView;->START_SWIPE_DELTA:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public animatedMarkForDeletion()V
    .locals 4

    .line 321
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/views/SwipableView;->getPercentLeftToDrag()F

    move-result v0

    sget-wide v1, Lcom/amazon/kedu/flashcards/views/SwipableView;->SWIPE_ANIMATION_DURATION:J

    long-to-float v1, v1

    mul-float v0, v0, v1

    float-to-long v0, v0

    .line 322
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/views/SwipableView;->getTotalSwipeDistanceToTravel()F

    move-result v2

    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/views/SwipableView;->getSwipeDirection()I

    move-result v3

    int-to-float v3, v3

    mul-float v2, v2, v3

    new-instance v3, Lcom/amazon/kedu/flashcards/views/SwipableView$6;

    invoke-direct {v3, p0}, Lcom/amazon/kedu/flashcards/views/SwipableView$6;-><init>(Lcom/amazon/kedu/flashcards/views/SwipableView;)V

    invoke-direct {p0, v2, v0, v1, v3}, Lcom/amazon/kedu/flashcards/views/SwipableView;->animateSwipe(FJLandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public disableSwipe()V
    .locals 1

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/amazon/kedu/flashcards/views/SwipableView;->swipable:Z

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 210
    iget-boolean v0, p0, Lcom/amazon/kedu/flashcards/views/SwipableView;->swipable:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/amazon/kedu/flashcards/views/SwipableView;->deleted:Z

    if-nez v0, :cond_4

    .line 212
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 236
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, p0, Lcom/amazon/kedu/flashcards/views/SwipableView;->firstDownX:Ljava/lang/Float;

    .line 237
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kedu/flashcards/views/SwipableView;->firstDownY:Ljava/lang/Float;

    .line 239
    iget-boolean v0, p0, Lcom/amazon/kedu/flashcards/views/SwipableView;->dragging:Z

    if-eqz v0, :cond_5

    .line 243
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/views/SwipableView;->getPercentageOfSwipeDragged()F

    move-result v0

    sget-object v2, Lcom/amazon/kedu/flashcards/views/SwipableView;->COMPLETE_SWIPE_DELTA:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_0

    .line 245
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/views/SwipableView;->animatedMarkForDeletion()V

    goto :goto_1

    .line 249
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/views/SwipableView;->animatedUndoDeletion()V

    goto :goto_1

    .line 223
    :cond_1
    iget-boolean v0, p0, Lcom/amazon/kedu/flashcards/views/SwipableView;->dragging:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/amazon/kedu/flashcards/views/SwipableView;->swipingHorizontally(Ljava/lang/Float;Ljava/lang/Float;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 225
    :cond_2
    iput-boolean v1, p0, Lcom/amazon/kedu/flashcards/views/SwipableView;->dragging:Z

    .line 228
    invoke-direct {p0, p1}, Lcom/amazon/kedu/flashcards/views/SwipableView;->cancelTouchEventInChildren(Landroid/view/MotionEvent;)V

    .line 229
    invoke-virtual {p0, v1}, Landroid/widget/ViewSwitcher;->requestDisallowInterceptTouchEvent(Z)V

    .line 230
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v2, p0, Lcom/amazon/kedu/flashcards/views/SwipableView;->firstDownX:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    sub-float/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/amazon/kedu/flashcards/views/SwipableView;->setCardTranslationX(F)V

    goto :goto_1

    .line 216
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kedu/flashcards/views/SwipableView;->firstDownX:Ljava/lang/Float;

    .line 217
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kedu/flashcards/views/SwipableView;->firstDownY:Ljava/lang/Float;

    goto :goto_0

    .line 257
    :cond_4
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/views/SwipableView;->lastTouchEvent:Landroid/view/MotionEvent;

    :cond_5
    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_6

    .line 262
    invoke-super {p0, p1}, Landroid/widget/ViewSwitcher;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :cond_6
    return v1
.end method

.method public enableSwipe()V
    .locals 1

    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Lcom/amazon/kedu/flashcards/views/SwipableView;->swipable:Z

    return-void
.end method

.method public getCardTranslationX()F
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/views/SwipableView;->draggableView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    return v0
.end method

.method public getCardTranslationY()F
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/views/SwipableView;->draggableView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    return v0
.end method

.method public markAsDeleted()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 143
    invoke-direct {p0, v0, v1}, Lcom/amazon/kedu/flashcards/views/SwipableView;->setDeleted(ZZ)V

    return-void
.end method

.method public setCardTranslationX(F)V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/views/SwipableView;->draggableView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 128
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/views/SwipableView;->overlay:Landroid/view/View;

    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/views/SwipableView;->getPercentageOfSwipeDragged()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public setCardTranslationY(F)V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/views/SwipableView;->draggableView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public setEventListener(Lcom/amazon/kedu/flashcards/views/SwipableView$SwipableItemEventListener;Ljava/lang/Object;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/views/SwipableView;->eventListener:Lcom/amazon/kedu/flashcards/views/SwipableView$SwipableItemEventListener;

    .line 56
    iput-object p2, p0, Lcom/amazon/kedu/flashcards/views/SwipableView;->eventTargetModel:Ljava/lang/Object;

    return-void
.end method

.method public undoDeletion()V
    .locals 1

    const/4 v0, 0x0

    .line 148
    invoke-direct {p0, v0, v0}, Lcom/amazon/kedu/flashcards/views/SwipableView;->setDeleted(ZZ)V

    return-void
.end method
