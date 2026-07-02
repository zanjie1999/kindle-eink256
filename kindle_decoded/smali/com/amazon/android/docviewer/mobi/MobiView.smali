.class public Lcom/amazon/android/docviewer/mobi/MobiView;
.super Lcom/amazon/android/docviewer/KindleDocView;
.source "MobiView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/android/docviewer/mobi/MobiView$NavigationCallback;
    }
.end annotation


# instance fields
.field private animationDisabled:Z

.field private currentSafeInsets:Lcom/amazon/kcp/util/device/SafeInsets;

.field m_flipper:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;

.field private m_isPageTurnInteractionDisabled:Z

.field private m_pageTurnAnimationDirection:Lcom/amazon/android/docviewer/KindleDocView$AnimationDirection;

.field private m_pageTurnDirection:Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;

.field private m_pageTurnOffset:I

.field final m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;


# direct methods
.method public constructor <init>(Lcom/amazon/android/docviewer/mobi/MobiDocViewer;Landroid/content/Context;)V
    .locals 1

    .line 47
    invoke-direct {p0, p2, p1}, Lcom/amazon/android/docviewer/KindleDocView;-><init>(Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDocViewer;)V

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->currentSafeInsets:Lcom/amazon/kcp/util/device/SafeInsets;

    .line 48
    invoke-static {p2}, Lcom/amazon/kcp/util/DeviceUtils;->isEinkScreen(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->animationDisabled:Z

    .line 50
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    .line 51
    invoke-virtual {p0, p2}, Lcom/amazon/android/docviewer/mobi/MobiView;->initializePageFlipper(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/android/docviewer/mobi/MobiView;Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/amazon/android/docviewer/mobi/MobiView;->doPageTurn(Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;)V

    return-void
.end method

.method static synthetic access$200(Lcom/amazon/android/docviewer/mobi/MobiView;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/amazon/android/docviewer/mobi/MobiView;->removeAnimation()V

    return-void
.end method

.method static synthetic access$300(Lcom/amazon/android/docviewer/mobi/MobiView;Z)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/amazon/android/docviewer/mobi/MobiView;->publishPageTurnAbortedEvent(Z)V

    return-void
.end method

.method private animatePageTurn(F)Z
    .locals 5

    .line 356
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_isPageTurnInteractionDisabled:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_pageTurnDirection:Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_pageTurnOffset:I

    if-eqz v0, :cond_7

    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_pageTurnDirection:Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;

    sget-object v3, Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;->Backward:Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    .line 358
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    .line 359
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->isPrevPageAvailable()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_1
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_pageTurnDirection:Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;

    sget-object v3, Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;->Forward:Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    .line 360
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    .line 361
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->isNextPageAvailable()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 375
    :cond_2
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_flipper:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;

    if-eqz v0, :cond_6

    .line 378
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_pageTurnAnimationDirection:Lcom/amazon/android/docviewer/KindleDocView$AnimationDirection;

    if-nez v0, :cond_3

    .line 379
    iget v0, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_pageTurnOffset:I

    neg-int v0, v0

    goto :goto_0

    .line 380
    :cond_3
    sget-object v3, Lcom/amazon/android/docviewer/KindleDocView$AnimationDirection;->ToRight:Lcom/amazon/android/docviewer/KindleDocView$AnimationDirection;

    if-ne v0, v3, :cond_4

    .line 381
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    iget v3, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_pageTurnOffset:I

    sub-int/2addr v0, v3

    iget-object v3, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_flipper:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;

    invoke-virtual {v3}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->getPageFlipMargin()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_0

    .line 383
    :cond_4
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    neg-int v0, v0

    iget v3, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_pageTurnOffset:I

    sub-int/2addr v0, v3

    iget-object v3, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_flipper:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;

    invoke-virtual {v3}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->getPageFlipMargin()I

    move-result v3

    sub-int/2addr v0, v3

    .line 386
    :goto_0
    iget-object v3, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_flipper:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;

    iget v4, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_pageTurnOffset:I

    if-eqz v4, :cond_5

    const/4 v2, 0x1

    :cond_5
    invoke-virtual {v3, v0, p1, v2}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->setAnimation(IFZ)V

    .line 392
    iput-boolean v1, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_isPageTurnInteractionDisabled:Z

    .line 393
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    return v1

    :cond_6
    return v2

    .line 364
    :cond_7
    :goto_1
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_pageTurnDirection:Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;

    sget-object v0, Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;->Forward:Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;

    if-ne p1, v0, :cond_8

    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    .line 365
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->isBookNavigatorInitialized()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    .line 366
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDoc;->isNextPageAvailable()Z

    move-result p1

    if-nez p1, :cond_8

    .line 367
    invoke-direct {p0, v1}, Lcom/amazon/android/docviewer/mobi/MobiView;->publishPageTurnAbortedEvent(Z)V

    goto :goto_2

    .line 368
    :cond_8
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_pageTurnDirection:Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;

    sget-object v0, Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;->Backward:Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;

    if-ne p1, v0, :cond_9

    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    .line 369
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDoc;->isPrevPageAvailable()Z

    move-result p1

    if-nez p1, :cond_9

    .line 370
    invoke-direct {p0, v2}, Lcom/amazon/android/docviewer/mobi/MobiView;->publishPageTurnAbortedEvent(Z)V

    :cond_9
    :goto_2
    return v2
.end method

.method private doPageTurn(Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;)V
    .locals 4

    .line 400
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 406
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 407
    sget-object v1, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->TAP_TO_TURN_PAGE:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {v1}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 408
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_pageTurnDirection:Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;

    sget-object v2, Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;->Forward:Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;

    if-ne v1, v2, :cond_1

    const-string/jumbo v1, "next"

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "prev"

    .line 409
    :goto_0
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/PerfMetricsCollector;->getInstance()Lcom/amazon/kindle/krx/metrics/IBatchMetricCollector;

    move-result-object v2

    sget-object v3, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->TAP_TO_TURN_PAGE:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {v3}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lcom/amazon/kindle/krx/metrics/IBatchMetricCollector;->collectEndTimerMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    :cond_2
    new-instance v1, Lcom/amazon/android/docviewer/mobi/MobiView$NavigationCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/amazon/android/docviewer/mobi/MobiView$NavigationCallback;-><init>(Lcom/amazon/android/docviewer/mobi/MobiView;Lcom/amazon/android/docviewer/mobi/MobiView$1;)V

    .line 412
    sget-object v2, Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;->Backward:Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;

    if-ne p1, v2, :cond_3

    .line 413
    iput-boolean v0, v1, Lcom/amazon/android/docviewer/mobi/MobiView$NavigationCallback;->swipePastEnd:Z

    .line 414
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-virtual {p1, v1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->navigateToPrevPage(Lcom/amazon/foundation/internal/IBooleanCallback;)V

    goto :goto_1

    .line 415
    :cond_3
    sget-object v0, Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;->Forward:Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;

    if-ne p1, v0, :cond_4

    const/4 p1, 0x1

    .line 416
    iput-boolean p1, v1, Lcom/amazon/android/docviewer/mobi/MobiView$NavigationCallback;->swipePastEnd:Z

    .line 417
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-virtual {p1, v1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->navigateToNextPage(Lcom/amazon/foundation/internal/IBooleanCallback;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private layoutPages()V
    .locals 5

    .line 494
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_flipper:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;

    if-eqz v0, :cond_5

    .line 497
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_pageTurnAnimationDirection:Lcom/amazon/android/docviewer/KindleDocView$AnimationDirection;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 500
    :cond_0
    iget v0, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_pageTurnOffset:I

    if-lez v0, :cond_1

    sget-object v0, Lcom/amazon/android/docviewer/KindleDocView$AnimationDirection;->ToRight:Lcom/amazon/android/docviewer/KindleDocView$AnimationDirection;

    goto :goto_0

    :cond_1
    if-gez v0, :cond_2

    sget-object v0, Lcom/amazon/android/docviewer/KindleDocView$AnimationDirection;->ToLeft:Lcom/amazon/android/docviewer/KindleDocView$AnimationDirection;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    const/4 v0, 0x0

    .line 520
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_flipper:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->getPageFlipMargin()I

    move-result v2

    add-int/2addr v1, v2

    .line 521
    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_flipper:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getBottom()I

    move-result v4

    invoke-virtual {v2, v0, v3, v1, v4}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 522
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_flipper:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->setSinglePage()V

    goto :goto_1

    .line 523
    :cond_3
    sget-object v1, Lcom/amazon/android/docviewer/KindleDocView$AnimationDirection;->ToRight:Lcom/amazon/android/docviewer/KindleDocView$AnimationDirection;

    if-ne v0, v1, :cond_4

    .line 524
    iget v0, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_pageTurnOffset:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_flipper:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->getPageFlipMargin()I

    move-result v1

    sub-int/2addr v0, v1

    .line 525
    iget v1, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_pageTurnOffset:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    .line 526
    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_flipper:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getBottom()I

    move-result v4

    invoke-virtual {v2, v0, v3, v1, v4}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 527
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_flipper:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;

    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_pageTurnDirection:Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;

    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->setTwoPagesLeft(Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;)V

    goto :goto_1

    .line 529
    :cond_4
    iget v0, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_pageTurnOffset:I

    .line 530
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_flipper:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->getPageFlipMargin()I

    move-result v2

    add-int/2addr v1, v2

    .line 531
    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_flipper:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getBottom()I

    move-result v4

    invoke-virtual {v2, v0, v3, v1, v4}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 532
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_flipper:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;

    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_pageTurnDirection:Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;

    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->setTwoPagesRight(Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;)V

    :cond_5
    :goto_1
    return-void
.end method

.method private postPageTurn()V
    .locals 2

    const/4 v0, 0x0

    .line 547
    iput v0, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_pageTurnOffset:I

    const/4 v1, 0x0

    .line 548
    iput-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_pageTurnAnimationDirection:Lcom/amazon/android/docviewer/KindleDocView$AnimationDirection;

    .line 549
    iput-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_pageTurnDirection:Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;

    .line 550
    invoke-virtual {p0, v1, v0}, Lcom/amazon/android/docviewer/KindleDocView;->setRawPageTurnOffset(Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;I)V

    .line 551
    invoke-direct {p0}, Lcom/amazon/android/docviewer/mobi/MobiView;->requestLayoutWithWorkaround()V

    .line 552
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getEventHandlers()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/android/docviewer/IKindleDocViewerEvents;

    .line 553
    invoke-interface {v1}, Lcom/amazon/android/docviewer/IKindleDocViewerEvents;->onDocViewerAfterPageTurn()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private publishPageTurnAbortedEvent(Z)V
    .locals 4

    .line 665
    new-instance v0, Lcom/amazon/kcp/events/PageTurnAbortedEvent;

    iget-object v1, p0, Lcom/amazon/android/docviewer/KindleDocView;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/android/docviewer/KindleDocView;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 666
    invoke-interface {v2}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/android/docviewer/KindleDoc;->getPageStartPositionObject()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/android/docviewer/KindleDocView;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 667
    invoke-interface {v3}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/android/docviewer/KindleDoc;->getPageEndPositionObject()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/amazon/kcp/events/PageTurnAbortedEvent;-><init>(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Z)V

    .line 670
    invoke-virtual {v0}, Lcom/amazon/kindle/services/events/AbstractSelfPublishingEvent;->publish()V

    return-void
.end method

.method private removeAnimation()V
    .locals 1

    .line 539
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_flipper:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->isAnimationSet()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 540
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_isPageTurnInteractionDisabled:Z

    .line 541
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_flipper:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->removeAnimation()V

    .line 542
    invoke-direct {p0}, Lcom/amazon/android/docviewer/mobi/MobiView;->postPageTurn()V

    :cond_0
    return-void
.end method

.method private requestLayoutWithWorkaround()V
    .locals 2

    .line 562
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 568
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "samsung"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 569
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_3

    .line 571
    invoke-interface {v0}, Landroid/view/ViewParent;->isLayoutRequested()Z

    move-result v1

    if-nez v1, :cond_2

    .line 572
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_0

    .line 574
    invoke-interface {v0}, Landroid/view/ViewParent;->requestLayout()V

    goto :goto_1

    .line 576
    :cond_0
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_1

    .line 578
    move-object v1, v0

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->forceLayout()V

    goto :goto_1

    .line 581
    :cond_1
    invoke-interface {v0}, Landroid/view/ViewParent;->requestLayout()V

    .line 585
    :cond_2
    :goto_1
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public changeFooterVisibility(ZZ)V
    .locals 0

    .line 690
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiView;->getCurrentPageDrawable()Lcom/amazon/android/docviewer/mobi/PageDrawable;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 692
    invoke-virtual {p2, p1}, Lcom/amazon/android/docviewer/mobi/PageDrawable;->showFooter(Z)V

    :cond_0
    return-void
.end method

.method public changeHeaderVisibility(ZZ)V
    .locals 0

    .line 682
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiView;->getCurrentPageDrawable()Lcom/amazon/android/docviewer/mobi/PageDrawable;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 684
    invoke-virtual {p2, p1}, Lcom/amazon/android/docviewer/mobi/PageDrawable;->showTitle(Z)V

    :cond_0
    return-void
.end method

.method public disablePageInvalidation()V
    .locals 1

    .line 659
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_flipper:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;

    if-eqz v0, :cond_0

    .line 660
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->disableInvalidation()V

    :cond_0
    return-void
.end method

.method public dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 4

    .line 478
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 479
    :goto_0
    invoke-static {v0}, Lcom/amazon/android/util/UIUtils;->isActivityInMultiWindowedMode(Landroid/app/Activity;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 480
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v0, :cond_2

    .line 481
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    .line 482
    :cond_2
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_flipper:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->getDocViewer()Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    move-result-object v0

    goto :goto_2

    :cond_3
    move-object v0, v1

    :goto_2
    if-eqz v0, :cond_4

    .line 483
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getPage()Lcom/amazon/android/docviewer/mobi/MobiPage;

    move-result-object v1

    :cond_4
    if-eqz v1, :cond_5

    .line 485
    invoke-virtual {v1, v3, v2}, Lcom/amazon/android/docviewer/mobi/MobiPage;->setSystemUIOffsets(II)V

    .line 487
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method

.method public enablePageInvalidation()V
    .locals 1

    .line 653
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_flipper:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;

    if-eqz v0, :cond_0

    .line 654
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->enableInvalidation()V

    :cond_0
    return-void
.end method

.method public finishPan()V
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_flipper:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;

    if-eqz v0, :cond_0

    .line 281
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->finishPan()V

    :cond_0
    return-void
.end method

.method public finishPan(Z)V
    .locals 0

    .line 275
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiView;->finishPan()V

    return-void
.end method

.method public finishZoom()V
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_flipper:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;

    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->finishZoom()V

    :cond_0
    return-void
.end method

.method public getCurrentPageDrawable()Lcom/amazon/android/docviewer/mobi/PageDrawable;
    .locals 1

    .line 674
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_flipper:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;

    if-eqz v0, :cond_0

    .line 675
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->getCurrentPageDrawable()Lcom/amazon/android/docviewer/mobi/PageDrawable;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method getCurrentSafeInsets()Lcom/amazon/kcp/util/device/SafeInsets;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->currentSafeInsets:Lcom/amazon/kcp/util/device/SafeInsets;

    if-eqz v0, :cond_0

    return-object v0

    .line 111
    :cond_0
    new-instance v0, Lcom/amazon/kcp/util/device/SafeInsets;

    invoke-direct {v0}, Lcom/amazon/kcp/util/device/SafeInsets;-><init>()V

    return-object v0
.end method

.method public getFooterRect()Landroid/graphics/Rect;
    .locals 1

    .line 646
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_flipper:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;

    if-eqz v0, :cond_0

    .line 647
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->getFooterRect()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeaderRect()Landroid/graphics/Rect;
    .locals 1

    .line 638
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_flipper:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;

    if-eqz v0, :cond_0

    .line 639
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->getHeaderRect()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPageMargins()Landroid/view/ViewGroup$MarginLayoutParams;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_flipper:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;

    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->getPageMargins()Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPageTurnOffset()I
    .locals 1

    .line 160
    iget v0, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_pageTurnOffset:I

    return v0
.end method

.method public getScaleX()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getScaleY()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getScrollLockManager()Lcom/amazon/android/docviewer/ScrollLockManager;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectionFilter()Lcom/amazon/android/docviewer/filter/IViewDrawFilter;
    .locals 1

    .line 723
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_flipper:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;

    if-eqz v0, :cond_0

    .line 724
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->getSelectionFilter()Lcom/amazon/android/docviewer/filter/IViewDrawFilter;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getViewport()Landroid/graphics/RectF;
    .locals 1

    .line 623
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_flipper:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;

    if-eqz v0, :cond_0

    .line 624
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->getViewport()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public initializePageFlipper(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-virtual {p0, p1, v0}, Lcom/amazon/android/docviewer/mobi/MobiView;->initializePageFlipper(Landroid/content/Context;Z)V

    return-void
.end method

.method initializePageFlipper(Landroid/content/Context;Z)V
    .locals 3

    .line 59
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_flipper:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_1

    .line 60
    :cond_0
    iget-object p2, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->setPageDrawRequested(Z)V

    .line 61
    new-instance p2, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;

    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-direct {p2, p1, v0}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;-><init>(Landroid/content/Context;Lcom/amazon/android/docviewer/mobi/MobiDocViewer;)V

    iput-object p2, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_flipper:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;

    const/4 v0, 0x0

    .line 64
    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 70
    new-instance p2, Lcom/amazon/android/docviewer/mobi/AnimatedTextViewDelegator;

    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    .line 71
    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getNewPageDrawable(Landroid/content/Context;)Lcom/amazon/android/docviewer/mobi/PageDrawable;

    move-result-object v0

    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    .line 72
    invoke-virtual {v2, p1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getNewPageDrawable(Landroid/content/Context;)Lcom/amazon/android/docviewer/mobi/PageDrawable;

    move-result-object p1

    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_flipper:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;

    invoke-direct {p2, v0, p1, v2}, Lcom/amazon/android/docviewer/mobi/AnimatedTextViewDelegator;-><init>(Lcom/amazon/android/docviewer/mobi/PageDrawable;Lcom/amazon/android/docviewer/mobi/PageDrawable;Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;)V

    .line 74
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_flipper:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;

    invoke-virtual {p1, p2}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->setViewDelegator(Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$ViewDelegator;)V

    .line 75
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_flipper:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;

    new-instance p2, Lcom/amazon/kcp/ui/RunnableExecutorAnimationListener;

    new-instance v0, Lcom/amazon/android/docviewer/mobi/MobiView$1;

    invoke-direct {v0, p0}, Lcom/amazon/android/docviewer/mobi/MobiView$1;-><init>(Lcom/amazon/android/docviewer/mobi/MobiView;)V

    invoke-direct {p2, v1, v1, v0}, Lcom/amazon/kcp/ui/RunnableExecutorAnimationListener;-><init>(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-virtual {p1, p2}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 82
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_flipper:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;

    iget-boolean p2, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->animationDisabled:Z

    invoke-virtual {p1, p2}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->setAnimationDisabled(Z)V

    .line 85
    :cond_1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 86
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_flipper:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;

    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p2, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public isPageTurnInteractionDisabled()Z
    .locals 1

    .line 201
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_isPageTurnInteractionDisabled:Z

    return v0
.end method

.method public isZoomed()Z
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_flipper:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;

    if-eqz v0, :cond_0

    .line 268
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->isZoomed()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public needToReInitializePageFlipper()Z
    .locals 1

    .line 739
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_flipper:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onAnimationFinish()V
    .locals 2

    .line 422
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_pageTurnDirection:Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;

    .line 424
    new-instance v1, Lcom/amazon/android/docviewer/mobi/MobiView$2;

    invoke-direct {v1, p0, v0}, Lcom/amazon/android/docviewer/mobi/MobiView$2;-><init>(Lcom/amazon/android/docviewer/mobi/MobiView;Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;)V

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    .line 430
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_pageTurnDirection:Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_flipper:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;

    if-eqz v0, :cond_1

    .line 432
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->preparePage()V

    goto :goto_0

    .line 435
    :cond_0
    invoke-direct {p0}, Lcom/amazon/android/docviewer/mobi/MobiView;->removeAnimation()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 4

    .line 94
    invoke-static {}, Lcom/amazon/kcp/util/device/DisplayCutoutUtils;->isNotchSupportEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    invoke-static {p1}, Lcom/amazon/kcp/util/device/DisplayCutoutUtils;->getDisplayCutoutSafeInsets(Landroid/view/WindowInsets;)Lcom/amazon/kcp/util/device/SafeInsets;

    move-result-object v0

    .line 96
    invoke-static {}, Lcom/amazon/android/docviewer/mobi/MobiSafeInsetsCacheProvider;->getCache()Lcom/amazon/android/docviewer/mobi/MobiSafeInsetsCache;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    .line 97
    invoke-virtual {v2}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/amazon/kcp/util/device/DisplayCutoutUtils;->getSafeInsetsPairForBook(Lcom/amazon/kindle/model/content/ILocalBookInfo;Landroid/content/Context;Lcom/amazon/kcp/util/device/SafeInsets;)Lcom/amazon/kcp/util/device/SafeInsetsPair;

    move-result-object v2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 96
    invoke-interface {v1, v2, v3}, Lcom/amazon/android/docviewer/mobi/MobiSafeInsetsCache;->setSafeInsetsPair(Lcom/amazon/kcp/util/device/SafeInsetsPair;Landroid/content/Context;)V

    goto :goto_0

    .line 101
    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/util/DeviceUtils;->getPortraitSafeInsets(Landroid/content/Context;)Lcom/amazon/kcp/util/device/SafeInsets;

    move-result-object v0

    .line 103
    :goto_0
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/amazon/kcp/util/device/DisplayCutoutUtils;->getSafeInsetsForBook(Lcom/amazon/kindle/model/content/ILocalBookInfo;Lcom/amazon/kcp/util/device/SafeInsets;)Lcom/amazon/kcp/util/device/SafeInsets;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->currentSafeInsets:Lcom/amazon/kcp/util/device/SafeInsets;

    .line 104
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 116
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 117
    invoke-direct {p0}, Lcom/amazon/android/docviewer/mobi/MobiView;->removeAnimation()V

    .line 118
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/amazon/android/docviewer/mobi/MobiView;->initializePageFlipper(Landroid/content/Context;Z)V

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 698
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 699
    const-class v0, Lcom/amazon/android/docviewer/mobi/MobiView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 704
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 705
    const-class v0, Lcom/amazon/android/docviewer/mobi/MobiView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 461
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_flipper:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;

    if-eqz p1, :cond_0

    .line 463
    invoke-direct {p0}, Lcom/amazon/android/docviewer/mobi/MobiView;->layoutPages()V

    .line 464
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_flipper:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->startAnimation()V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 470
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 471
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_flipper:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;

    if-eqz v0, :cond_0

    .line 472
    invoke-virtual {v0, p1, p2}, Landroid/widget/FrameLayout;->measure(II)V

    :cond_0
    return-void
.end method

.method onRemoveFromDocViewer()V
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_flipper:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;

    if-eqz v0, :cond_0

    .line 295
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->onRemoveFromDocViewer()V

    :cond_0
    const/4 v0, 0x0

    .line 298
    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_flipper:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;

    return-void
.end method

.method public onToggleActiveArea()V
    .locals 0

    return-void
.end method

.method public panPage(FF)V
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_flipper:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;

    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {v0, p1, p2}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->panPage(FF)V

    :cond_0
    return-void
.end method

.method public panPageByReferencePoint(FF)V
    .locals 0

    return-void
.end method

.method public preRender()V
    .locals 1

    .line 715
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiView;->getCurrentPageDrawable()Lcom/amazon/android/docviewer/mobi/PageDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 717
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/PageDrawable;->fetchFooter()V

    :cond_0
    return-void
.end method

.method public redrawFooters()V
    .locals 1

    .line 597
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_flipper:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;

    if-eqz v0, :cond_0

    .line 598
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->redrawFooter()V

    :cond_0
    return-void
.end method

.method public redrawHeaders()V
    .locals 1

    .line 591
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_flipper:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;

    if-eqz v0, :cond_0

    .line 592
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->redrawHeader()V

    :cond_0
    return-void
.end method

.method public refresh()V
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_flipper:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->refresh()V

    .line 195
    invoke-direct {p0}, Lcom/amazon/android/docviewer/mobi/MobiView;->removeAnimation()V

    :cond_0
    return-void
.end method

.method public refreshDecorationProvider(Lcom/amazon/kindle/krx/ui/IContentDecorationProvider;)V
    .locals 0

    .line 710
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiView;->refresh()V

    return-void
.end method

.method public resetZoom(FF)V
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_flipper:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;

    if-eqz v0, :cond_0

    .line 261
    invoke-virtual {v0, p1, p2}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->resetZoom(FF)V

    :cond_0
    return-void
.end method

.method setColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode;)V
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_flipper:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;

    if-eqz v0, :cond_0

    .line 303
    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->setColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode;)V

    :cond_0
    return-void
.end method

.method setDefaultFontFace(Ljava/lang/String;)V
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_flipper:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;

    if-eqz v0, :cond_0

    .line 327
    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->setDefaultFontFace(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setDocReferencePoint(FF)V
    .locals 0

    return-void
.end method

.method setFontSize(I)V
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_flipper:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;

    if-eqz v0, :cond_0

    .line 321
    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->setFontSize(I)V

    :cond_0
    return-void
.end method

.method setLineSpacing(I)V
    .locals 1

    .line 332
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_flipper:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;

    if-eqz v0, :cond_0

    .line 333
    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->setLineSpacing(I)V

    :cond_0
    return-void
.end method

.method setMargin(Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;)V
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_flipper:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;

    if-eqz v0, :cond_0

    .line 339
    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->setMargin(Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;)V

    .line 343
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method setMarginColor(I)V
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_flipper:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;

    if-eqz v0, :cond_0

    .line 315
    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->setMarginColor(I)V

    :cond_0
    return-void
.end method

.method public setPageTurnOffset(Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;I)V
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->isNavigatingWithinPage()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;->Forward:Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    .line 167
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->hasNextNavigationStop()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;->Backward:Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    .line 169
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->hasPrevNavigationStop()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return-void

    .line 173
    :cond_2
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_flipper:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->isZoomed()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_flipper:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->isImageCornerInZoom()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 p2, 0x0

    .line 177
    :cond_3
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->animationDisabled:Z

    if-eqz v0, :cond_4

    .line 178
    iput v1, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_pageTurnOffset:I

    .line 179
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_pageTurnDirection:Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;

    return-void

    .line 183
    :cond_4
    iput p2, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_pageTurnOffset:I

    .line 184
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_pageTurnDirection:Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;

    .line 186
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_flipper:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;

    if-eqz p1, :cond_5

    .line 187
    invoke-direct {p0}, Lcom/amazon/android/docviewer/mobi/MobiView;->layoutPages()V

    :cond_5
    return-void
.end method

.method public setTitleVisibility(ZZ)V
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_flipper:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;

    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {v0, p1, p2}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->setTitleVisibility(ZZ)V

    :cond_0
    return-void
.end method

.method public startPan()V
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_flipper:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;

    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->startPan()V

    :cond_0
    return-void
.end method

.method public startZoom()V
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_flipper:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;

    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->startZoom()V

    :cond_0
    return-void
.end method

.method public turnPage(Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;Lcom/amazon/android/docviewer/KindleDocView$AnimationDirection;F)Z
    .locals 3

    .line 125
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->isNavigatingWithinPage()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 126
    sget-object v0, Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;->Forward:Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->hasNextNavigationStop()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->navigateToNextNavigationStop()V

    return v1

    .line 131
    :cond_0
    sget-object v0, Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;->Backward:Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    .line 132
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->hasPrevNavigationStop()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->navigateToPrevNavigationStop()V

    return v1

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getEventHandlers()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/android/docviewer/IKindleDocViewerEvents;

    .line 139
    invoke-interface {v2}, Lcom/amazon/android/docviewer/IKindleDocViewerEvents;->onDocViewerBeforePageTurn()V

    goto :goto_0

    .line 142
    :cond_2
    iput-object p2, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_pageTurnAnimationDirection:Lcom/amazon/android/docviewer/KindleDocView$AnimationDirection;

    .line 143
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_pageTurnDirection:Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;

    .line 145
    iget-boolean p2, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->animationDisabled:Z

    if-eqz p2, :cond_4

    .line 146
    iget-object p2, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_flipper:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;

    if-eqz p2, :cond_3

    .line 147
    invoke-virtual {p2}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->preparePage()V

    .line 149
    :cond_3
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_pageTurnDirection:Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;

    .line 150
    invoke-direct {p0, p1}, Lcom/amazon/android/docviewer/mobi/MobiView;->doPageTurn(Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;)V

    .line 151
    invoke-direct {p0}, Lcom/amazon/android/docviewer/mobi/MobiView;->postPageTurn()V

    return v1

    .line 155
    :cond_4
    invoke-direct {p0, p3}, Lcom/amazon/android/docviewer/mobi/MobiView;->animatePageTurn(F)Z

    move-result p1

    return p1
.end method

.method public zoom(FFF)V
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_flipper:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;

    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->zoom(FFF)V

    :cond_0
    return-void
.end method
