.class public Lcom/amazon/xray/ui/widget/CardCarousel;
.super Landroid/view/ViewGroup;
.source "CardCarousel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/xray/ui/widget/CardCarousel$DelayedAccessibilityFocusRunnable;,
        Lcom/amazon/xray/ui/widget/CardCarousel$ScrollerAnimatorUpdateListener;,
        Lcom/amazon/xray/ui/widget/CardCarousel$CarouselScrollListener;
    }
.end annotation


# static fields
.field private static final CARD_ACCESSIBILITY_LOAD_TIMEOUT_MS:I = 0xc8

.field private static final FOCUSED_CARD_INDEX_BUNDLE_KEY:Ljava/lang/String; = "focusedCardIndex"

.field private static final INSTANCE_BUNDLE_KEY:Ljava/lang/String; = "instanceState"

.field private static final VELOCITY_UNITS_PIXELS_PER_SECOND:I = 0x3e8


# instance fields
.field private adapter:Landroid/widget/ListAdapter;

.field private cardHeight:I

.field private final cardHorizontalInset:I

.field private final cardVerticalInset:I

.field private cardWidth:I

.field private final cardsToDetach:Landroid/util/SparseBooleanArray;

.field private currentX:I

.field private externalScrollListener:Lcom/amazon/xray/ui/widget/CardCarousel$CarouselScrollListener;

.field private focusedCardIndex:I

.field private lastX:F

.field private lastY:F

.field private minFlingVelocity:I

.field private recycledCards:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Stack<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private final scroller:Landroid/widget/Scroller;

.field private final scrollerAnimator:Landroid/animation/ValueAnimator;

.field private startX:F

.field private startY:F

.field private touchSlop:I

.field private tracking:Z

.field private trackingCardIndex:I

.field private velocityTracker:Landroid/view/VelocityTracker;

.field private visibleCards:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 110
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->cardsToDetach:Landroid/util/SparseBooleanArray;

    .line 112
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 113
    sget p2, Lcom/amazon/kindle/xray/R$dimen;->xray_inset_card_carousel_vertical:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->cardVerticalInset:I

    .line 114
    sget p2, Lcom/amazon/kindle/xray/R$dimen;->xray_inset_card_carousel_horizontal:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->cardHorizontalInset:I

    .line 116
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->visibleCards:Landroid/util/SparseArray;

    const/4 p1, 0x0

    .line 119
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 122
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 123
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    iput p2, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->touchSlop:I

    .line 124
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p1

    iput p1, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->minFlingVelocity:I

    .line 127
    new-instance p1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->scroller:Landroid/widget/Scroller;

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 128
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->scrollerAnimator:Landroid/animation/ValueAnimator;

    .line 129
    new-instance p2, Lcom/amazon/xray/ui/widget/CardCarousel$ScrollerAnimatorUpdateListener;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/amazon/xray/ui/widget/CardCarousel$ScrollerAnimatorUpdateListener;-><init>(Lcom/amazon/xray/ui/widget/CardCarousel;Lcom/amazon/xray/ui/widget/CardCarousel$1;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$200(Lcom/amazon/xray/ui/widget/CardCarousel;)Landroid/widget/Scroller;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->scroller:Landroid/widget/Scroller;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/xray/ui/widget/CardCarousel;)I
    .locals 0

    .line 35
    iget p0, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->currentX:I

    return p0
.end method

.method static synthetic access$400(Lcom/amazon/xray/ui/widget/CardCarousel;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/amazon/xray/ui/widget/CardCarousel;->setCurrentX(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/amazon/xray/ui/widget/CardCarousel;)Landroid/util/SparseArray;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->visibleCards:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$600(Lcom/amazon/xray/ui/widget/CardCarousel;)I
    .locals 0

    .line 35
    iget p0, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->focusedCardIndex:I

    return p0
.end method

.method private addEventMovement(Landroid/view/MotionEvent;)V
    .locals 1

    .line 748
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 749
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->velocityTracker:Landroid/view/VelocityTracker;

    .line 751
    :cond_0
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private centerOnFocusedCard()V
    .locals 4

    .line 454
    iget v0, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->focusedCardIndex:I

    iget v1, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->cardWidth:I

    mul-int v0, v0, v1

    .line 455
    iget v1, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->currentX:I

    sub-int/2addr v0, v1

    .line 457
    iget-object v2, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->scroller:Landroid/widget/Scroller;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0, v3}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 458
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->scrollerAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getDuration()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 459
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->scrollerAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private createOrUpdateCard(I)Landroid/view/View;
    .locals 5

    .line 379
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->visibleCards:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_3

    .line 382
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->recycledCards:Ljava/util/List;

    iget-object v2, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->adapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    .line 383
    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->adapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1, v1, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 385
    iget-object v2, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->visibleCards:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-nez v1, :cond_1

    .line 389
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v3, v1, v2}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    goto :goto_0

    .line 391
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v3, v1}, Landroid/view/ViewGroup;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 395
    :goto_0
    iget v1, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->cardWidth:I

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget v4, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->cardHeight:I

    .line 396
    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 395
    invoke-virtual {v0, v1, v3}, Landroid/view/View;->measure(II)V

    .line 399
    iget v1, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->focusedCardIndex:I

    if-ne p1, v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    invoke-direct {p0, v0, v2}, Lcom/amazon/xray/ui/widget/CardCarousel;->setCardNavigable(Landroid/view/View;Z)V

    .line 403
    :cond_3
    invoke-direct {p0, v0, p1}, Lcom/amazon/xray/ui/widget/CardCarousel;->positionCard(Landroid/view/View;I)V

    return-object v0
.end method

.method private detachAndRecycleCard(I)V
    .locals 3

    .line 361
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->visibleCards:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 364
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->detachViewFromParent(Landroid/view/View;)V

    .line 366
    iget-object v1, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->recycledCards:Ljava/util/List;

    iget-object v2, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->adapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->visibleCards:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method private dispatchOnScroll()V
    .locals 8

    .line 571
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->externalScrollListener:Lcom/amazon/xray/ui/widget/CardCarousel$CarouselScrollListener;

    if-eqz v0, :cond_0

    .line 573
    iget v1, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->currentX:I

    iget v2, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->focusedCardIndex:I

    iget v3, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->cardWidth:I

    mul-int v4, v2, v3

    sub-int/2addr v1, v4

    int-to-double v4, v1

    int-to-double v6, v3

    div-double/2addr v4, v6

    .line 576
    invoke-interface {v0, p0, v2, v4, v5}, Lcom/amazon/xray/ui/widget/CardCarousel$CarouselScrollListener;->onScroll(Lcom/amazon/xray/ui/widget/CardCarousel;ID)V

    :cond_0
    return-void
.end method

.method private getNearestCardIndex(I)I
    .locals 4

    int-to-double v0, p1

    .line 493
    iget p1, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->cardWidth:I

    int-to-double v2, p1

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int p1, v0

    .line 495
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->adapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    if-le p1, v0, :cond_1

    move p1, v0

    :cond_1
    :goto_0
    return p1
.end method

.method private positionCard(Landroid/view/View;I)V
    .locals 3

    .line 442
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->cardWidth:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    mul-int p2, p2, v1

    add-int/2addr v0, p2

    .line 445
    iget p2, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->currentX:I

    sub-int v2, v0, p2

    add-int/2addr v0, v1

    sub-int/2addr v0, p2

    .line 447
    iget p2, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->cardVerticalInset:I

    iget v1, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->cardHeight:I

    add-int/2addr v1, p2

    invoke-virtual {p1, v2, p2, v0, v1}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method private scrollToCard(I)V
    .locals 4

    .line 470
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->adapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    if-le p1, v0, :cond_0

    .line 471
    iget-object p1, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->adapter:Landroid/widget/ListAdapter;

    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    .line 475
    :cond_1
    :goto_0
    iget v0, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->cardWidth:I

    mul-int p1, p1, v0

    .line 478
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->scroller:Landroid/widget/Scroller;

    iget v2, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->currentX:I

    sub-int v3, p1, v2

    invoke-virtual {v0, v2, v1, v3, v1}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 479
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0, p1}, Landroid/widget/Scroller;->setFinalX(I)V

    .line 480
    iget-object p1, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->scrollerAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getDuration()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 481
    iget-object p1, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->scrollerAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private setCardNavigable(Landroid/view/View;Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    .line 422
    :goto_0
    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 426
    invoke-virtual {p1, p2}, Landroid/view/View;->setFocusable(Z)V

    .line 427
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 428
    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p2, :cond_2

    const/high16 p2, 0x20000

    goto :goto_1

    :cond_2
    const/high16 p2, 0x60000

    :goto_1
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    :cond_3
    return-void
.end method

.method private setCurrentX(I)V
    .locals 4

    .line 520
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->adapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_5

    iget v1, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->cardWidth:I

    if-nez v1, :cond_0

    goto :goto_1

    .line 526
    :cond_0
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iget v2, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->cardWidth:I

    mul-int v0, v0, v2

    const/4 v2, 0x0

    if-gez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    if-le p1, v0, :cond_2

    move p1, v0

    .line 534
    :cond_2
    :goto_0
    iget v0, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->focusedCardIndex:I

    .line 535
    iput p1, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->currentX:I

    .line 536
    invoke-direct {p0, p1}, Lcom/amazon/xray/ui/widget/CardCarousel;->getNearestCardIndex(I)I

    move-result p1

    iput p1, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->focusedCardIndex:I

    .line 539
    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result p1

    .line 542
    invoke-direct {p0}, Lcom/amazon/xray/ui/widget/CardCarousel;->updateCardViews()V

    .line 545
    iget v3, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->focusedCardIndex:I

    if-eq v0, v3, :cond_4

    .line 547
    iget-object v3, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->visibleCards:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0, v2}, Lcom/amazon/xray/ui/widget/CardCarousel;->setCardNavigable(Landroid/view/View;Z)V

    .line 549
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->visibleCards:Landroid/util/SparseArray;

    iget v2, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->focusedCardIndex:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_4

    .line 552
    invoke-direct {p0, v0, v1}, Lcom/amazon/xray/ui/widget/CardCarousel;->setCardNavigable(Landroid/view/View;Z)V

    if-eqz p1, :cond_3

    .line 554
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_3
    const/16 p1, 0x40

    const/4 v1, 0x0

    .line 558
    invoke-static {v0, p1, v1}, Landroidx/core/view/ViewCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    .line 564
    :cond_4
    invoke-direct {p0}, Lcom/amazon/xray/ui/widget/CardCarousel;->dispatchOnScroll()V

    :cond_5
    :goto_1
    return-void
.end method

.method private startTrackingTouch(FF)V
    .locals 1

    const/4 v0, 0x1

    .line 721
    iput-boolean v0, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->tracking:Z

    .line 722
    iget v0, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->focusedCardIndex:I

    iput v0, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->trackingCardIndex:I

    .line 725
    iput p1, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->startX:F

    .line 726
    iput p2, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->startY:F

    return-void
.end method

.method private stopScroller()V
    .locals 2

    .line 509
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->scrollerAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 510
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->scroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    return-void
.end method

.method private stopTrackingTouch()V
    .locals 1

    const/4 v0, 0x0

    .line 733
    iput-boolean v0, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->tracking:Z

    .line 734
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 735
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 736
    iput-object v0, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->velocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private updateCardViews()V
    .locals 7

    .line 329
    invoke-virtual {p0}, Lcom/amazon/xray/ui/widget/CardCarousel;->getFirstVisibleCardIndex()I

    move-result v0

    .line 330
    invoke-virtual {p0}, Lcom/amazon/xray/ui/widget/CardCarousel;->getLastVisibleCardIndex()I

    move-result v1

    .line 333
    iget-object v2, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->cardsToDetach:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 334
    :goto_0
    iget-object v4, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->visibleCards:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 335
    iget-object v4, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->visibleCards:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    if-lt v4, v0, :cond_0

    if-le v4, v1, :cond_1

    .line 337
    :cond_0
    iget-object v5, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->cardsToDetach:Landroid/util/SparseBooleanArray;

    const/4 v6, 0x1

    invoke-virtual {v5, v4, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 340
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->cardsToDetach:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 341
    iget-object v3, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->cardsToDetach:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/amazon/xray/ui/widget/CardCarousel;->detachAndRecycleCard(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    if-gt v0, v1, :cond_4

    .line 346
    invoke-direct {p0, v0}, Lcom/amazon/xray/ui/widget/CardCarousel;->createOrUpdateCard(I)Landroid/view/View;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 351
    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 756
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->visibleCards:Landroid/util/SparseArray;

    iget v1, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->focusedCardIndex:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_5

    .line 757
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 762
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x15

    const/4 v2, 0x1

    if-ne v0, v1, :cond_2

    .line 764
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_1

    iget p1, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->focusedCardIndex:I

    if-lez p1, :cond_1

    sub-int/2addr p1, v2

    .line 765
    invoke-virtual {p0, p1}, Lcom/amazon/xray/ui/widget/CardCarousel;->setFocusedCardIndex(I)V

    :cond_1
    return v2

    :cond_2
    const/16 v1, 0x16

    if-ne v0, v1, :cond_4

    .line 769
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_3

    iget p1, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->focusedCardIndex:I

    iget-object v0, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->adapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, v2

    if-ge p1, v0, :cond_3

    .line 770
    iget p1, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->focusedCardIndex:I

    add-int/2addr p1, v2

    invoke-virtual {p0, p1}, Lcom/amazon/xray/ui/widget/CardCarousel;->setFocusedCardIndex(I)V

    :cond_3
    return v2

    .line 775
    :cond_4
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 758
    :cond_5
    :goto_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->adapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getFirstVisibleCardIndex()I
    .locals 4

    .line 197
    iget v0, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->cardWidth:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 201
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    iget v2, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->cardWidth:I

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    .line 202
    iget v3, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->currentX:I

    sub-int/2addr v3, v0

    .line 203
    div-int/2addr v3, v2

    .line 204
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getFocusedCardIndex()I
    .locals 1

    .line 175
    iget v0, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->focusedCardIndex:I

    return v0
.end method

.method public getLastVisibleCardIndex()I
    .locals 3

    .line 211
    iget v0, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->cardWidth:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 215
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->cardWidth:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 216
    iget v2, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->currentX:I

    add-int/2addr v2, v1

    add-int/2addr v2, v0

    .line 217
    div-int/2addr v2, v1

    .line 218
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->adapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 296
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 297
    invoke-direct {p0}, Lcom/amazon/xray/ui/widget/CardCarousel;->stopScroller()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 596
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 597
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 599
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v3, :cond_2

    const/4 v4, 0x2

    if-eq v2, v4, :cond_0

    const/4 p1, 0x3

    if-eq v2, p1, :cond_2

    goto :goto_0

    .line 621
    :cond_0
    iget v2, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->lastX:F

    sub-float v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 622
    iget v4, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->lastY:F

    sub-float v4, v1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 623
    iget v5, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->startX:F

    sub-float v5, v0, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v2, v2, v4

    if-lez v2, :cond_1

    .line 624
    iget v2, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->touchSlop:I

    int-to-float v2, v2

    cmpl-float v2, v5, v2

    if-lez v2, :cond_1

    .line 625
    invoke-direct {p0, v0, v1}, Lcom/amazon/xray/ui/widget/CardCarousel;->startTrackingTouch(FF)V

    return v3

    .line 629
    :cond_1
    invoke-direct {p0, p1}, Lcom/amazon/xray/ui/widget/CardCarousel;->addEventMovement(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 602
    :cond_2
    invoke-direct {p0}, Lcom/amazon/xray/ui/widget/CardCarousel;->stopTrackingTouch()V

    goto :goto_0

    .line 608
    :cond_3
    iget v2, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->cardHorizontalInset:I

    int-to-float v2, v2

    cmpg-float v2, v0, v2

    if-ltz v2, :cond_5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    iget v4, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->cardHorizontalInset:I

    sub-int/2addr v2, v4

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-lez v2, :cond_4

    goto :goto_1

    .line 613
    :cond_4
    iput v0, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->lastX:F

    iput v0, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->startX:F

    .line 614
    iput v1, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->lastY:F

    iput v1, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->startY:F

    .line 616
    invoke-direct {p0, p1}, Lcom/amazon/xray/ui/widget/CardCarousel;->addEventMovement(Landroid/view/MotionEvent;)V

    .line 633
    :goto_0
    iput v0, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->lastX:F

    .line 634
    iput v1, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->lastY:F

    const/4 p1, 0x0

    return p1

    :cond_5
    :goto_1
    return v3
.end method

.method public onLayout(ZIIII)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    sub-int/2addr p4, p2

    .line 286
    iget p1, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->cardHorizontalInset:I

    mul-int/lit8 p1, p1, 0x2

    sub-int/2addr p4, p1

    iput p4, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->cardWidth:I

    sub-int/2addr p5, p3

    .line 287
    iget p1, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->cardVerticalInset:I

    mul-int/lit8 p1, p1, 0x2

    sub-int/2addr p5, p1

    iput p5, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->cardHeight:I

    .line 291
    iget p1, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->focusedCardIndex:I

    mul-int p1, p1, p4

    invoke-direct {p0, p1}, Lcom/amazon/xray/ui/widget/CardCarousel;->setCurrentX(I)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 2

    const/4 v0, 0x0

    const v1, 0x7fffffff

    .line 276
    invoke-static {v1, p1, v0}, Landroid/view/ViewGroup;->resolveSizeAndState(III)I

    move-result p1

    .line 277
    invoke-static {v1, p2, v0}, Landroid/view/ViewGroup;->resolveSizeAndState(III)I

    move-result p2

    .line 276
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 261
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 262
    check-cast p1, Landroid/os/Bundle;

    const/4 v0, 0x0

    const-string v1, "focusedCardIndex"

    .line 265
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->focusedCardIndex:I

    const-string v0, "instanceState"

    .line 267
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    .line 270
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 249
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 250
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    const-string v2, "instanceState"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 253
    iget v1, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->focusedCardIndex:I

    const-string v2, "focusedCardIndex"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 649
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 650
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 652
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_a

    if-eq v2, v3, :cond_4

    const/4 v4, 0x2

    if-eq v2, v4, :cond_1

    const/4 p1, 0x3

    if-eq v2, p1, :cond_0

    goto/16 :goto_2

    .line 654
    :cond_0
    invoke-direct {p0}, Lcom/amazon/xray/ui/widget/CardCarousel;->centerOnFocusedCard()V

    .line 655
    invoke-direct {p0}, Lcom/amazon/xray/ui/widget/CardCarousel;->stopTrackingTouch()V

    goto/16 :goto_2

    .line 693
    :cond_1
    iget-boolean v2, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->tracking:Z

    if-nez v2, :cond_2

    .line 694
    invoke-direct {p0, v0, v1}, Lcom/amazon/xray/ui/widget/CardCarousel;->startTrackingTouch(FF)V

    .line 698
    :cond_2
    iget v2, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->currentX:I

    iget v4, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->lastX:F

    sub-float v4, v0, v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    sub-int/2addr v2, v4

    .line 699
    iget v4, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->currentX:I

    if-eq v2, v4, :cond_3

    .line 700
    invoke-direct {p0, v2}, Lcom/amazon/xray/ui/widget/CardCarousel;->setCurrentX(I)V

    .line 703
    :cond_3
    invoke-direct {p0, p1}, Lcom/amazon/xray/ui/widget/CardCarousel;->addEventMovement(Landroid/view/MotionEvent;)V

    goto/16 :goto_2

    .line 660
    :cond_4
    iget p1, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->cardHorizontalInset:I

    int-to-float p1, p1

    cmpg-float p1, v0, p1

    if-ltz p1, :cond_5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    iget v2, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->cardHorizontalInset:I

    sub-int/2addr p1, v2

    int-to-float p1, p1

    cmpl-float p1, v0, p1

    if-lez p1, :cond_7

    :cond_5
    iget p1, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->startX:F

    sub-float p1, v0, p1

    .line 661
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v2, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->touchSlop:I

    int-to-float v2, v2

    cmpg-float p1, p1, v2

    if-gez p1, :cond_7

    iget p1, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->startY:F

    sub-float p1, v1, p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v2, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->touchSlop:I

    int-to-float v2, v2

    cmpg-float p1, p1, v2

    if-gez p1, :cond_7

    .line 662
    iget p1, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->cardHorizontalInset:I

    int-to-float p1, p1

    cmpg-float p1, v0, p1

    if-gez p1, :cond_6

    iget p1, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->focusedCardIndex:I

    sub-int/2addr p1, v3

    goto :goto_0

    :cond_6
    iget p1, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->focusedCardIndex:I

    add-int/2addr p1, v3

    :goto_0
    invoke-direct {p0, p1}, Lcom/amazon/xray/ui/widget/CardCarousel;->scrollToCard(I)V

    .line 663
    invoke-direct {p0}, Lcom/amazon/xray/ui/widget/CardCarousel;->stopTrackingTouch()V

    return v3

    .line 668
    :cond_7
    iget-boolean p1, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->tracking:Z

    if-eqz p1, :cond_9

    .line 669
    iget-object p1, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->velocityTracker:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    invoke-virtual {p1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 670
    iget-object p1, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p1

    .line 671
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v4, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->minFlingVelocity:I

    int-to-float v4, v4

    cmpl-float v2, v2, v4

    if-lez v2, :cond_9

    iget v2, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->trackingCardIndex:I

    iget v4, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->focusedCardIndex:I

    if-ne v2, v4, :cond_9

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_8

    sub-int/2addr v4, v3

    goto :goto_1

    :cond_8
    add-int/2addr v4, v3

    .line 672
    :goto_1
    invoke-direct {p0, v4}, Lcom/amazon/xray/ui/widget/CardCarousel;->scrollToCard(I)V

    .line 673
    invoke-direct {p0}, Lcom/amazon/xray/ui/widget/CardCarousel;->stopTrackingTouch()V

    return v3

    .line 679
    :cond_9
    invoke-direct {p0}, Lcom/amazon/xray/ui/widget/CardCarousel;->centerOnFocusedCard()V

    .line 680
    invoke-direct {p0}, Lcom/amazon/xray/ui/widget/CardCarousel;->stopTrackingTouch()V

    goto :goto_2

    .line 685
    :cond_a
    iput v0, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->lastX:F

    iput v0, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->startX:F

    .line 686
    iput v1, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->lastY:F

    iput v1, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->startY:F

    .line 688
    invoke-direct {p0, p1}, Lcom/amazon/xray/ui/widget/CardCarousel;->addEventMovement(Landroid/view/MotionEvent;)V

    .line 707
    :goto_2
    iput v0, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->lastX:F

    .line 708
    iput v1, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->lastY:F

    return v3
.end method

.method public reloadCard(I)V
    .locals 2

    .line 307
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->visibleCards:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 309
    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v0

    .line 311
    invoke-direct {p0, p1}, Lcom/amazon/xray/ui/widget/CardCarousel;->detachAndRecycleCard(I)V

    .line 312
    invoke-direct {p0, p1}, Lcom/amazon/xray/ui/widget/CardCarousel;->createOrUpdateCard(I)Landroid/view/View;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 315
    iget v0, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->focusedCardIndex:I

    if-ne p1, v0, :cond_0

    .line 316
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 320
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 3

    .line 148
    iput-object p1, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->adapter:Landroid/widget/ListAdapter;

    .line 151
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 152
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->visibleCards:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    if-eqz p1, :cond_0

    .line 156
    invoke-interface {p1}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result p1

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->recycledCards:Ljava/util/List;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 159
    iget-object v1, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->recycledCards:Ljava/util/List;

    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    invoke-interface {v1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 162
    iput-object p1, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->recycledCards:Ljava/util/List;

    .line 166
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public setCarouselScrollListener(Lcom/amazon/xray/ui/widget/CardCarousel$CarouselScrollListener;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->externalScrollListener:Lcom/amazon/xray/ui/widget/CardCarousel$CarouselScrollListener;

    return-void
.end method

.method public setFocusedCardIndex(I)V
    .locals 1

    .line 185
    invoke-direct {p0}, Lcom/amazon/xray/ui/widget/CardCarousel;->stopScroller()V

    .line 186
    iget v0, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->cardWidth:I

    mul-int v0, v0, p1

    invoke-direct {p0, v0}, Lcom/amazon/xray/ui/widget/CardCarousel;->setCurrentX(I)V

    .line 190
    iput p1, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->focusedCardIndex:I

    return-void
.end method

.method public takeAccessibilityFocus()V
    .locals 3

    .line 225
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->visibleCards:Landroid/util/SparseArray;

    iget v1, p0, Lcom/amazon/xray/ui/widget/CardCarousel;->focusedCardIndex:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1

    .line 229
    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 230
    new-instance v0, Lcom/amazon/xray/ui/widget/CardCarousel$DelayedAccessibilityFocusRunnable;

    invoke-direct {v0, p0, v2}, Lcom/amazon/xray/ui/widget/CardCarousel$DelayedAccessibilityFocusRunnable;-><init>(Lcom/amazon/xray/ui/widget/CardCarousel;Lcom/amazon/xray/ui/widget/CardCarousel$1;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    const/16 v1, 0x40

    .line 232
    invoke-static {v0, v1, v2}, Landroidx/core/view/ViewCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    :cond_1
    :goto_0
    return-void
.end method
