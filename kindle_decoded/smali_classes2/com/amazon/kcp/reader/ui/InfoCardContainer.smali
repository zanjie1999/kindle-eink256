.class public Lcom/amazon/kcp/reader/ui/InfoCardContainer;
.super Landroid/widget/HorizontalScrollView;
.source "InfoCardContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/reader/ui/InfoCardContainer$InfoCardsFullyShownEvent;,
        Lcom/amazon/kcp/reader/ui/InfoCardContainer$InfoCardContainerDelegate;
    }
.end annotation


# instance fields
.field private accessibilityDelegate:Landroidx/core/view/AccessibilityDelegateCompat;

.field private cardHeight:I

.field private cardImageBottomPadding:I

.field private cardImageLeftPadding:I

.field private cardImageRightPadding:I

.field private cardImageTopPadding:I

.field cardTouchListener:Landroid/view/View$OnTouchListener;

.field private cardWidth:I

.field protected cardWrappers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field protected cards:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/ui/InfoCardView;",
            ">;"
        }
    .end annotation
.end field

.field private containerHeight:I

.field protected currentCenterIndex:I

.field public delegate:Lcom/amazon/kcp/reader/ui/InfoCardContainer$InfoCardContainerDelegate;

.field protected fullCardHeight:I

.field protected fullCardWidth:I

.field protected interItemPadding:I

.field private internalLayout:Landroid/widget/RelativeLayout;

.field private isHovering:Z

.field public isOnBottom:Z

.field protected isPartiallyHidden:Z

.field private isPerfMetricStarted:Z

.field protected leadingOffset:I

.field private messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

.field protected totalWidth:I

.field private touchDownOrigin:Landroid/graphics/Point;

.field private velocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 128
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 55
    iput p1, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->currentCenterIndex:I

    const/4 p2, 0x1

    .line 79
    iput-boolean p2, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->isPartiallyHidden:Z

    .line 81
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->isHovering:Z

    .line 85
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    const-class v1, Lcom/amazon/kcp/reader/ui/InfoCardContainer;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    .line 92
    iput-boolean p2, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->isOnBottom:Z

    .line 97
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->isPerfMetricStarted:Z

    .line 103
    new-instance p2, Lcom/amazon/kcp/reader/ui/InfoCardContainer$1;

    invoke-direct {p2, p0}, Lcom/amazon/kcp/reader/ui/InfoCardContainer$1;-><init>(Lcom/amazon/kcp/reader/ui/InfoCardContainer;)V

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->accessibilityDelegate:Landroidx/core/view/AccessibilityDelegateCompat;

    .line 130
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->initDimensFromResources()V

    .line 133
    invoke-virtual {p0, p1}, Landroid/widget/HorizontalScrollView;->setOverScrollMode(I)V

    .line 134
    invoke-virtual {p0, p1}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 136
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->cards:Ljava/util/List;

    .line 137
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->cardWrappers:Ljava/util/List;

    .line 139
    new-instance p1, Lcom/amazon/kcp/reader/ui/InfoCardContainer$2;

    invoke-direct {p1, p0}, Lcom/amazon/kcp/reader/ui/InfoCardContainer$2;-><init>(Lcom/amazon/kcp/reader/ui/InfoCardContainer;)V

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->cardTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/reader/ui/InfoCardContainer;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->animateFullyShow()V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kcp/reader/ui/InfoCardContainer;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->isHovering:Z

    return p0
.end method

.method static synthetic access$200(Lcom/amazon/kcp/reader/ui/InfoCardContainer;)Lcom/amazon/kindle/krx/events/IMessageQueue;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    return-object p0
.end method

.method private animateFullyShow()V
    .locals 5

    .line 605
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->isPartiallyHidden:Z

    if-nez v0, :cond_0

    return-void

    .line 609
    :cond_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 610
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 611
    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 613
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/krl/R$integer;->infocard_animation_duration:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 614
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/amazon/kindle/krl/R$dimen;->infocard_item_vertical_padding:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 616
    new-instance v4, Lcom/amazon/kcp/reader/ui/InfoCardContainer$4;

    invoke-direct {v4, p0, v1, v0, v3}, Lcom/amazon/kcp/reader/ui/InfoCardContainer$4;-><init>(Lcom/amazon/kcp/reader/ui/InfoCardContainer;III)V

    int-to-long v0, v2

    .line 632
    invoke-virtual {v4, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 634
    new-instance v0, Lcom/amazon/kcp/reader/ui/InfoCardContainer$5;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/ui/InfoCardContainer$5;-><init>(Lcom/amazon/kcp/reader/ui/InfoCardContainer;)V

    invoke-virtual {v4, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 659
    invoke-virtual {p0, v4}, Landroid/widget/HorizontalScrollView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private initDimensFromResources()V
    .locals 3

    .line 154
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$dimen;->info_card_v2_container_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->cardHeight:I

    .line 155
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$dimen;->info_card_v2_container_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->cardWidth:I

    .line 157
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$dimen;->infocard_image_left_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->cardImageLeftPadding:I

    .line 158
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$dimen;->infocard_image_right_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->cardImageRightPadding:I

    .line 159
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$dimen;->infocard_image_top_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->cardImageTopPadding:I

    .line 160
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$dimen;->infocard_image_bottom_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->cardImageBottomPadding:I

    .line 162
    iget v1, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->cardHeight:I

    iget v2, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->cardImageTopPadding:I

    add-int/2addr v1, v2

    add-int/2addr v1, v0

    iput v1, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->fullCardHeight:I

    .line 163
    iget v0, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->cardWidth:I

    iget v2, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->cardImageLeftPadding:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->cardImageRightPadding:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->fullCardWidth:I

    .line 165
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/amazon/kindle/krl/R$dimen;->infocard_item_vertical_padding:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->containerHeight:I

    .line 167
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$dimen;->infocard_inter_item_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->interItemPadding:I

    return-void
.end method

.method private isClickOffCard(Landroid/view/MotionEvent;Landroid/graphics/Point;)Z
    .locals 4

    .line 339
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->cardWrappers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 343
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    if-eqz p2, :cond_3

    .line 345
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iget v3, p2, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 346
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    iget p2, p2, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, p2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result p2

    const/16 v3, 0x14

    if-ge v0, v3, :cond_3

    if-ge p2, v3, :cond_3

    .line 351
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result p2

    int-to-float p2, p2

    add-float/2addr p1, p2

    .line 352
    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->cardWrappers:Ljava/util/List;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLeft()I

    move-result p2

    .line 353
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->cardWrappers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRight()I

    move-result v0

    int-to-float p2, p2

    cmpg-float p2, p1, p2

    if-ltz p2, :cond_2

    int-to-float p2, v0

    cmpl-float p1, p1, p2

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1

    :cond_3
    return v2
.end method


# virtual methods
.method public addCard(Lcom/amazon/kindle/krx/ui/InfoCardView;)V
    .locals 5

    const/4 v0, 0x1

    .line 368
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->isPerfMetricStarted:Z

    .line 370
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->cardTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 372
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 373
    new-instance v2, Lcom/amazon/kcp/reader/ui/InfoCardContainer$3;

    invoke-direct {v2, p0, v1}, Lcom/amazon/kcp/reader/ui/InfoCardContainer$3;-><init>(Lcom/amazon/kcp/reader/ui/InfoCardContainer;Landroid/widget/LinearLayout;)V

    invoke-static {v1, v2}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 423
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->fullCardWidth:I

    iget v4, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->fullCardHeight:I

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 426
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_0

    .line 427
    invoke-virtual {v1, p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 431
    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 434
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->cards:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 435
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->cardWrappers:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 437
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->internalLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 440
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->internalLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->requestLayout()V

    return-void
.end method

.method protected computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I
    .locals 3

    .line 327
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result p1

    .line 328
    iget v0, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->currentCenterIndex:I

    iget v1, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->cardWidth:I

    iget v2, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->interItemPadding:I

    add-int/2addr v1, v2

    mul-int v0, v0, v1

    sub-int/2addr v0, p1

    return v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 315
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 316
    iget-boolean p1, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->isPerfMetricStarted:Z

    if-eqz p1, :cond_0

    .line 317
    sget-object p1, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->INFO_CARDS_DRAW:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {p1}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Z)V

    .line 318
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->isPerfMetricStarted:Z

    :cond_0
    return-void
.end method

.method public fullyShow(Z)V
    .locals 4

    .line 576
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 577
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$dimen;->infocard_item_vertical_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    move v3, v1

    .line 581
    :goto_0
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 582
    :goto_1
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 584
    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 585
    iput-boolean v2, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->isPartiallyHidden:Z

    return-void
.end method

.method public getCardCount()I
    .locals 1

    .line 676
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->cards:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getContainerHeight()I
    .locals 1

    .line 551
    iget v0, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->containerHeight:I

    return v0
.end method

.method public getCurrentCenterIndex()I
    .locals 1

    .line 535
    iget v0, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->currentCenterIndex:I

    return v0
.end method

.method public getDesiredOnScreenHeight()I
    .locals 3

    .line 593
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$dimen;->infocard_item_vertical_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 594
    iget-boolean v1, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->isPartiallyHidden:Z

    if-eqz v1, :cond_0

    .line 595
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$dimen;->infocard_peek_amount:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_0
    add-int/2addr v1, v0

    return v1

    .line 597
    :cond_0
    iget v1, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->fullCardHeight:I

    goto :goto_0
.end method

.method public getFullCardSize()Landroid/graphics/Point;
    .locals 3

    .line 543
    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->fullCardWidth:I

    iget v2, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->fullCardHeight:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public getInfoCard(I)Lcom/amazon/kindle/krx/ui/InfoCardView;
    .locals 1

    if-ltz p1, :cond_1

    .line 668
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->cards:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 671
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->cards:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/krx/ui/InfoCardView;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getInfoCardCount()I
    .locals 1

    .line 478
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->internalLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getWrapperDescription(Landroid/widget/LinearLayout;)Ljava/lang/String;
    .locals 4

    .line 449
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->cardWrappers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const-string p1, ""

    return-object p1

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->cards:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/ui/InfoCardView;

    .line 456
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$string;->speak_card_x_of_y:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 457
    invoke-virtual {v0}, Lcom/amazon/kindle/krx/ui/InfoCardView;->getTitle()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    add-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v0

    const/4 p1, 0x2

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->cardWrappers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, p1

    .line 456
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 308
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 309
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->initDimensFromResources()V

    .line 310
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 258
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onFinishInflate()V

    .line 259
    sget v0, Lcom/amazon/kindle/krl/R$id;->info_card_layout:I

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->internalLayout:Landroid/widget/RelativeLayout;

    .line 261
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->accessibilityDelegate:Landroidx/core/view/AccessibilityDelegateCompat;

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 464
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 465
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->isHovering:Z

    goto :goto_0

    .line 466
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 467
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->isHovering:Z

    .line 470
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 295
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->internalLayout:Landroid/widget/RelativeLayout;

    iget p2, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->totalWidth:I

    iget p3, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->fullCardHeight:I

    const/4 p4, 0x0

    invoke-virtual {p1, p4, p4, p2, p3}, Landroid/widget/RelativeLayout;->layout(IIII)V

    .line 297
    iget p1, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->leadingOffset:I

    .line 298
    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->cardWrappers:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    .line 299
    iget p5, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->fullCardWidth:I

    add-int/2addr p5, p1

    .line 300
    iget v0, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->fullCardHeight:I

    invoke-virtual {p3, p1, p4, p5, v0}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 302
    iget p1, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->cardImageRightPadding:I

    sub-int/2addr p5, p1

    iget p1, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->cardImageLeftPadding:I

    sub-int/2addr p5, p1

    iget p1, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->interItemPadding:I

    add-int/2addr p1, p5

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 269
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 270
    iget p2, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->cardWidth:I

    sub-int p2, p1, p2

    div-int/lit8 p2, p2, 0x2

    iget v0, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->interItemPadding:I

    sub-int/2addr p2, v0

    .line 273
    iget v1, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->cardImageLeftPadding:I

    sub-int v1, p2, v1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->leadingOffset:I

    .line 276
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->cardWrappers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 p2, p2, 0x2

    .line 277
    iget v1, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->fullCardWidth:I

    add-int/2addr p2, v1

    add-int/lit8 v2, v0, 0x1

    iget v3, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->interItemPadding:I

    mul-int v2, v2, v3

    add-int/2addr p2, v2

    add-int/lit8 v0, v0, -0x1

    iget v2, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->cardImageRightPadding:I

    sub-int v2, v1, v2

    iget v3, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->cardImageLeftPadding:I

    sub-int/2addr v2, v3

    mul-int v0, v0, v2

    add-int/2addr p2, v0

    iput p2, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->totalWidth:I

    const/high16 p2, 0x40000000    # 2.0f

    .line 281
    invoke-static {v1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 282
    iget v1, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->fullCardHeight:I

    invoke-static {v1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 284
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->internalLayout:Landroid/widget/RelativeLayout;

    iget v3, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->totalWidth:I

    invoke-static {v3, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/widget/RelativeLayout;->measure(II)V

    .line 286
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->cardWrappers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 287
    invoke-virtual {v3, v0, v1}, Landroid/view/ViewGroup;->measure(II)V

    goto :goto_0

    .line 290
    :cond_0
    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-virtual {p0, p1, v1}, Landroid/widget/HorizontalScrollView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 172
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 174
    iget-boolean v1, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->isPartiallyHidden:Z

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x3

    if-nez v0, :cond_1

    .line 183
    new-instance v3, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    iput-object v3, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->touchDownOrigin:Landroid/graphics/Point;

    goto :goto_0

    :cond_1
    if-ne v0, v2, :cond_2

    .line 185
    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->touchDownOrigin:Landroid/graphics/Point;

    .line 189
    :cond_2
    :goto_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isTouchExplorationEnabled()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->touchDownOrigin:Landroid/graphics/Point;

    invoke-direct {p0, p1, v3}, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->isClickOffCard(Landroid/view/MotionEvent;Landroid/graphics/Point;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 190
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->delegate:Lcom/amazon/kcp/reader/ui/InfoCardContainer$InfoCardContainerDelegate;

    if-eqz p1, :cond_3

    .line 191
    invoke-interface {p1}, Lcom/amazon/kcp/reader/ui/InfoCardContainer$InfoCardContainerDelegate;->dismissCards()V

    :cond_3
    return v4

    :cond_4
    if-eqz v0, :cond_b

    if-eq v0, v4, :cond_7

    const/4 v3, 0x2

    if-eq v0, v3, :cond_5

    if-eq v0, v2, :cond_7

    .line 252
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 203
    :cond_5
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_6

    .line 205
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->velocityTracker:Landroid/view/VelocityTracker;

    .line 206
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 209
    :cond_6
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 210
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 214
    :cond_7
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_a

    .line 215
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 216
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->velocityTracker:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 218
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 219
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 220
    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 222
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v2

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v3

    float-to-double v5, v2

    const-wide/16 v7, 0x0

    cmpl-double v3, v5, v7

    if-nez v3, :cond_8

    .line 224
    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->touchDownOrigin:Landroid/graphics/Point;

    if-eqz v3, :cond_8

    .line 226
    iget v2, v3, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    sub-float/2addr v2, p1

    iget p1, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, p1

    .line 229
    :cond_8
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 230
    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->velocityTracker:Landroid/view/VelocityTracker;

    .line 235
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isTouchExplorationEnabled()Z

    move-result p1

    if-nez p1, :cond_a

    const/high16 p1, 0x43c80000    # 400.0f

    cmpl-float p1, v2, p1

    if-lez p1, :cond_9

    .line 237
    iget p1, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->currentCenterIndex:I

    sub-int/2addr p1, v4

    invoke-virtual {p0, p1, v4}, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->scrollToIndex(IZ)V

    return v4

    :cond_9
    const/high16 p1, -0x3c380000    # -400.0f

    cmpg-float p1, v2, p1

    if-gez p1, :cond_a

    .line 240
    iget p1, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->currentCenterIndex:I

    add-int/2addr p1, v4

    invoke-virtual {p0, p1, v4}, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->scrollToIndex(IZ)V

    return v4

    .line 246
    :cond_a
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result p1

    .line 247
    iget v0, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->fullCardWidth:I

    div-int/lit8 v1, v0, 0x2

    add-int/2addr p1, v1

    div-int/2addr p1, v0

    .line 248
    invoke-virtual {p0, p1, v4}, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->scrollToIndex(IZ)V

    return v4

    .line 198
    :cond_b
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->velocityTracker:Landroid/view/VelocityTracker;

    .line 199
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 200
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public partiallyHide(Z)V
    .locals 4

    .line 559
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 560
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$dimen;->infocard_peek_amount:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 561
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/krl/R$dimen;->infocard_item_vertical_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 563
    iget v3, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->cardHeight:I

    add-int/2addr v2, v3

    sub-int/2addr v2, v1

    mul-int/lit8 v2, v2, -0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    move v3, v2

    .line 565
    :goto_0
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 566
    :goto_1
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 568
    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    .line 569
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->isPartiallyHidden:Z

    return-void
.end method

.method public removeAllCards()V
    .locals 2

    .line 486
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->cardWrappers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 487
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    goto :goto_0

    .line 490
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->internalLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    const/4 v0, 0x0

    .line 491
    invoke-virtual {p0, v0, v0}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    .line 493
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->cardWrappers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 494
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->cards:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 496
    iput v0, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->currentCenterIndex:I

    return-void
.end method

.method protected scrollToIndex(IZ)V
    .locals 4

    const/4 v0, 0x0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 509
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->cards:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->cards:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    .line 511
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->delegate:Lcom/amazon/kcp/reader/ui/InfoCardContainer$InfoCardContainerDelegate;

    if-eqz v1, :cond_2

    .line 512
    invoke-interface {v1, p0, p1}, Lcom/amazon/kcp/reader/ui/InfoCardContainer$InfoCardContainerDelegate;->infoCardContainerWillScrollToIndex(Lcom/amazon/kcp/reader/ui/InfoCardContainer;I)V

    .line 515
    :cond_2
    iput p1, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->currentCenterIndex:I

    .line 516
    iget v1, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->cardWidth:I

    iget v2, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->interItemPadding:I

    add-int/2addr v1, v2

    mul-int v1, v1, p1

    .line 518
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/krl/R$bool;->disable_smooth_scroll:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 520
    invoke-virtual {p0, v1, v0}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    goto :goto_1

    .line 522
    :cond_3
    invoke-virtual {p0, v1, v0}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    :goto_1
    if-eqz p2, :cond_4

    .line 526
    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->cardWrappers:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    const/16 p2, 0x40

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroidx/core/view/ViewCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    :cond_4
    return-void
.end method
