.class public final Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;
.super Landroid/widget/FrameLayout;
.source "AnimatedPageFlipper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$ViewDelegator;,
        Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$PagesLayout;
    }
.end annotation


# static fields
.field private static final ANIMATION_DELAY_OVERHEAD:J = 0x32L

.field private static final MAX_PAGE_TURN_TIME:J = 0x12cL


# instance fields
.field private animationDisabled:Z

.field private blockInvalidation:Z

.field private final m_asyncHandler:Landroid/os/Handler;

.field private m_currentAnimation:Lcom/amazon/android/docviewer/animation/AnimationTranslateX;

.field private m_delegator:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$ViewDelegator;

.field private m_listener:Landroid/view/animation/Animation$AnimationListener;

.field private m_pageTurnDuration:J

.field private m_pageTurnStartTime:J

.field private m_pagesLayout:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$PagesLayout;

.field private m_selectionFilter:Lcom/amazon/android/docviewer/filter/IViewDrawFilter;

.field private final m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/amazon/android/docviewer/mobi/MobiDocViewer;)V
    .locals 1

    .line 74
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 437
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->blockInvalidation:Z

    .line 75
    iput-object p2, p0, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    .line 76
    sget-object p2, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$PagesLayout;->SinglePage:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$PagesLayout;

    iput-object p2, p0, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->m_pagesLayout:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$PagesLayout;

    .line 78
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->m_asyncHandler:Landroid/os/Handler;

    .line 80
    invoke-static {p1}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    const/4 p2, 0x1

    .line 81
    invoke-interface {p1, p2, p0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->createViewDrawFilter(ILandroid/view/View;)Lcom/amazon/android/docviewer/filter/IViewDrawFilter;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->m_selectionFilter:Lcom/amazon/android/docviewer/filter/IViewDrawFilter;

    .line 83
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->realOnAnimationEnd()V

    return-void
.end method

.method private layoutPages()V
    .locals 7

    .line 281
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->getPageFlipMargin()I

    move-result v0

    .line 282
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    sub-int/2addr v1, v0

    .line 284
    iget-boolean v2, p0, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->animationDisabled:Z

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 285
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->m_delegator:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$ViewDelegator;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTop()I

    move-result v2

    div-int/2addr v1, v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v3

    invoke-interface {v0, v4, v2, v1, v3}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$ViewDelegator;->setCurrentViewBounds(IIII)V

    .line 286
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->m_delegator:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$ViewDelegator;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v3

    invoke-interface {v0, v4, v2, v1, v3}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$ViewDelegator;->setTransientViewBounds(IIII)V

    return-void

    .line 294
    :cond_0
    sget-object v2, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$2;->$SwitchMap$com$amazon$android$docviewer$mobi$AnimatedPageFlipper$PagesLayout:[I

    iget-object v5, p0, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->m_pagesLayout:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$PagesLayout;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v2, v2, v5

    const/4 v5, 0x1

    if-eq v2, v5, :cond_3

    if-eq v2, v3, :cond_2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 305
    :cond_1
    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->m_delegator:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$ViewDelegator;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTop()I

    move-result v3

    div-int/lit8 v5, v1, 0x2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v6

    invoke-interface {v2, v4, v3, v5, v6}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$ViewDelegator;->setCurrentViewBounds(IIII)V

    .line 306
    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->m_delegator:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$ViewDelegator;

    add-int/2addr v5, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTop()I

    move-result v3

    add-int/2addr v1, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v0

    invoke-interface {v2, v5, v3, v1, v0}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$ViewDelegator;->setTransientViewBounds(IIII)V

    goto :goto_0

    .line 301
    :cond_2
    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->m_delegator:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$ViewDelegator;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTop()I

    move-result v3

    div-int/lit8 v5, v1, 0x2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v6

    invoke-interface {v2, v4, v3, v5, v6}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$ViewDelegator;->setTransientViewBounds(IIII)V

    .line 302
    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->m_delegator:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$ViewDelegator;

    add-int/2addr v5, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTop()I

    move-result v3

    add-int/2addr v1, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v0

    invoke-interface {v2, v5, v3, v1, v0}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$ViewDelegator;->setCurrentViewBounds(IIII)V

    goto :goto_0

    .line 296
    :cond_3
    div-int/2addr v1, v3

    .line 297
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->m_delegator:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$ViewDelegator;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v3

    invoke-interface {v0, v4, v2, v1, v3}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$ViewDelegator;->setCurrentViewBounds(IIII)V

    .line 298
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->m_delegator:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$ViewDelegator;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v3

    invoke-interface {v0, v4, v2, v1, v3}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$ViewDelegator;->setTransientViewBounds(IIII)V

    :goto_0
    return-void
.end method

.method private prepareTransientPage(Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;)V
    .locals 1

    .line 161
    sget-object v0, Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;->Forward:Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;

    if-ne p1, v0, :cond_0

    .line 162
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->m_delegator:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$ViewDelegator;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$ViewDelegator;->prepareTransientPage(I)V

    goto :goto_0

    .line 163
    :cond_0
    sget-object v0, Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;->Backward:Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;

    if-ne p1, v0, :cond_1

    .line 164
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->m_delegator:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$ViewDelegator;

    const/4 v0, -0x1

    invoke-interface {p1, v0}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$ViewDelegator;->prepareTransientPage(I)V

    .line 167
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->layoutPages()V

    .line 168
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->invalidate()V

    return-void
.end method

.method private realOnAnimationEnd()V
    .locals 10

    .line 239
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 240
    iget-wide v2, p0, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->m_pageTurnStartTime:J

    iget-wide v4, p0, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->m_pageTurnDuration:J

    add-long/2addr v2, v4

    const-wide/16 v4, 0x32

    add-long/2addr v2, v4

    cmp-long v6, v0, v2

    if-gez v6, :cond_0

    .line 241
    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->m_asyncHandler:Landroid/os/Handler;

    new-instance v3, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$1;

    invoke-direct {v3, p0}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$1;-><init>(Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;)V

    iget-wide v6, p0, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->m_pageTurnStartTime:J

    iget-wide v8, p0, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->m_pageTurnDuration:J

    add-long/2addr v6, v8

    add-long/2addr v6, v4

    sub-long/2addr v6, v0

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->m_listener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 251
    invoke-interface {v0, v1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public disableInvalidation()V
    .locals 1

    const/4 v0, 0x1

    .line 420
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->blockInvalidation:Z

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->m_selectionFilter:Lcom/amazon/android/docviewer/filter/IViewDrawFilter;

    if-eqz v0, :cond_0

    .line 67
    invoke-interface {v0, p1}, Lcom/amazon/android/docviewer/filter/IViewDrawFilter;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 69
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method public enableInvalidation()V
    .locals 1

    const/4 v0, 0x0

    .line 424
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->blockInvalidation:Z

    return-void
.end method

.method public finishPan()V
    .locals 1

    .line 372
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->m_delegator:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$ViewDelegator;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$ViewDelegator;->finishPan()V

    return-void
.end method

.method public finishZoom()V
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->m_delegator:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$ViewDelegator;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$ViewDelegator;->finishZoom()V

    return-void
.end method

.method getAsyncHandler()Landroid/os/Handler;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->m_asyncHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getCurrentPageDrawable()Lcom/amazon/android/docviewer/mobi/PageDrawable;
    .locals 1

    .line 428
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->m_delegator:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$ViewDelegator;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$ViewDelegator;->getCurrentPageDrawable()Lcom/amazon/android/docviewer/mobi/PageDrawable;

    move-result-object v0

    return-object v0
.end method

.method getDocViewer()Lcom/amazon/android/docviewer/mobi/MobiDocViewer;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    return-object v0
.end method

.method public getFooterRect()Landroid/graphics/Rect;
    .locals 1

    .line 412
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->m_delegator:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$ViewDelegator;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$ViewDelegator;->getFooterRect()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderRect()Landroid/graphics/Rect;
    .locals 1

    .line 416
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->m_delegator:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$ViewDelegator;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$ViewDelegator;->getHeaderRect()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method getPageFlipMargin()I
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->m_delegator:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$ViewDelegator;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$ViewDelegator;->getPageTurnMargin()I

    move-result v0

    return v0
.end method

.method getPageMargins()Landroid/view/ViewGroup$MarginLayoutParams;
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->m_delegator:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$ViewDelegator;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$ViewDelegator;->getPageMargins()Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getSelectionFilter()Lcom/amazon/android/docviewer/filter/IViewDrawFilter;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->m_selectionFilter:Lcom/amazon/android/docviewer/filter/IViewDrawFilter;

    return-object v0
.end method

.method getViewport()Landroid/graphics/RectF;
    .locals 1

    .line 400
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->m_delegator:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$ViewDelegator;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$ViewDelegator;->getViewPort()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public invalidate()V
    .locals 3

    const-string v0, "invalidating pageflipper"

    const/4 v1, 0x1

    .line 89
    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 90
    iget-boolean v1, p0, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->blockInvalidation:Z

    if-nez v1, :cond_1

    .line 91
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 92
    invoke-super {p0}, Landroid/widget/FrameLayout;->postInvalidate()V

    goto :goto_0

    .line 94
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 97
    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    return-void
.end method

.method public invalidate(IIII)V
    .locals 1

    .line 109
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->blockInvalidation:Z

    if-nez v0, :cond_0

    .line 110
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->invalidate(IIII)V

    :cond_0
    return-void
.end method

.method public invalidate(Landroid/graphics/Rect;)V
    .locals 1

    .line 102
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->blockInvalidation:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 103
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->invalidate(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method isAnimationSet()Z
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->m_currentAnimation:Lcom/amazon/android/docviewer/animation/AnimationTranslateX;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isImageCornerInZoom()Z
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->m_delegator:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$ViewDelegator;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$ViewDelegator;->isImageCornerInZoom()Z

    move-result v0

    return v0
.end method

.method public isOpaque()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method isZoomed()Z
    .locals 1

    .line 392
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->m_delegator:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$ViewDelegator;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$ViewDelegator;->isZoomed()Z

    move-result v0

    return v0
.end method

.method protected onAnimationEnd()V
    .locals 0

    .line 234
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAnimationEnd()V

    .line 235
    invoke-direct {p0}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->realOnAnimationEnd()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 268
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 270
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->m_delegator:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$ViewDelegator;

    invoke-interface {v0, p1}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$ViewDelegator;->paintCurrentView(Landroid/graphics/Canvas;)V

    .line 275
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->m_pagesLayout:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$PagesLayout;

    sget-object v1, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$PagesLayout;->SinglePage:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$PagesLayout;

    if-eq v0, v1, :cond_1

    .line 276
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->m_delegator:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$ViewDelegator;

    invoke-interface {v0, p1}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$ViewDelegator;->paintTransientView(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 260
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 262
    invoke-direct {p0}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->layoutPages()V

    return-void
.end method

.method onRemoveFromDocViewer()V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->m_delegator:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$ViewDelegator;

    if-eqz v0, :cond_0

    .line 124
    invoke-interface {v0}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$ViewDelegator;->onRemoveFromDocViewer()V

    :cond_0
    return-void
.end method

.method panPage(FF)V
    .locals 1

    .line 368
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->m_delegator:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$ViewDelegator;

    invoke-interface {v0, p1, p2}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$ViewDelegator;->panPage(FF)V

    return-void
.end method

.method preparePage()V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->m_delegator:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$ViewDelegator;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$ViewDelegator;->preparePage()V

    return-void
.end method

.method public redrawFooter()V
    .locals 1

    .line 408
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->m_delegator:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$ViewDelegator;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$ViewDelegator;->getFooterRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method

.method public redrawHeader()V
    .locals 1

    .line 404
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->m_delegator:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$ViewDelegator;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$ViewDelegator;->getHeaderRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method

.method refresh()V
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->m_delegator:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$ViewDelegator;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$ViewDelegator;->refresh()V

    .line 313
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->invalidate()V

    return-void
.end method

.method removeAnimation()V
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->m_currentAnimation:Lcom/amazon/android/docviewer/animation/AnimationTranslateX;

    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/animation/AnimationTranslateX;->clear()V

    const/4 v0, 0x0

    .line 218
    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->m_currentAnimation:Lcom/amazon/android/docviewer/animation/AnimationTranslateX;

    const-wide/16 v0, 0x0

    .line 219
    iput-wide v0, p0, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->m_pageTurnStartTime:J

    .line 220
    iput-wide v0, p0, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->m_pageTurnDuration:J

    :cond_0
    return-void
.end method

.method resetZoom(FF)V
    .locals 1

    .line 384
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->m_delegator:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$ViewDelegator;

    invoke-interface {v0, p1, p2}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$ViewDelegator;->resetZoom(FF)V

    return-void
.end method

.method setAnimation(IFZ)V
    .locals 6

    const-wide/16 v0, 0x12c

    const/4 v2, 0x0

    cmpl-float v2, p2, v2

    if-nez v2, :cond_1

    .line 187
    new-instance p2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    if-eqz p3, :cond_0

    goto :goto_0

    .line 191
    :cond_0
    iget-object p3, p0, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->m_delegator:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$ViewDelegator;

    invoke-interface {p3}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$ViewDelegator;->getPageTurnDefaultDuration()J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->m_pageTurnDuration:J

    goto :goto_2

    .line 199
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    if-ge p3, v2, :cond_2

    const/high16 p3, 0x3f000000    # 0.5f

    goto :goto_1

    :cond_2
    const/high16 p3, 0x3f400000    # 0.75f

    :goto_1
    mul-int/lit16 v2, p1, 0x3e8

    int-to-float v2, v2

    div-float/2addr v2, p2

    .line 200
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    float-to-double v2, p2

    float-to-double p2, p3

    invoke-static {v2, v3, p2, p3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p2

    double-to-long p2, p2

    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    iput-wide p2, p0, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->m_pageTurnDuration:J

    const/4 p2, 0x0

    :goto_2
    move-object v5, p2

    .line 203
    new-instance p2, Lcom/amazon/android/docviewer/animation/AnimationTranslateX;

    iget-wide v3, p0, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->m_pageTurnDuration:J

    move-object v0, p2

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/amazon/android/docviewer/animation/AnimationTranslateX;-><init>(Landroid/view/View;IJLandroid/view/animation/Interpolator;)V

    iput-object p2, p0, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->m_currentAnimation:Lcom/amazon/android/docviewer/animation/AnimationTranslateX;

    return-void
.end method

.method public setAnimationDisabled(Z)V
    .locals 0

    .line 115
    iput-boolean p1, p0, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->animationDisabled:Z

    return-void
.end method

.method setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->m_listener:Landroid/view/animation/Animation$AnimationListener;

    return-void
.end method

.method setColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode;)V
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->m_delegator:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$ViewDelegator;

    invoke-interface {v0, p1}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$ViewDelegator;->setColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode;)V

    return-void
.end method

.method setDefaultFontFace(Ljava/lang/String;)V
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->m_delegator:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$ViewDelegator;

    invoke-interface {v0, p1}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$ViewDelegator;->setDefaultFontFace(Ljava/lang/String;)V

    return-void
.end method

.method setFontSize(I)V
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->m_delegator:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$ViewDelegator;

    invoke-interface {v0, p1}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$ViewDelegator;->setFontSize(I)V

    return-void
.end method

.method setLineSpacing(I)V
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->m_delegator:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$ViewDelegator;

    invoke-interface {v0, p1}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$ViewDelegator;->setLineSpacing(I)V

    return-void
.end method

.method setMargin(Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;)V
    .locals 1

    .line 350
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->m_delegator:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$ViewDelegator;

    invoke-interface {v0, p1}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$ViewDelegator;->setMargin(Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;)V

    .line 352
    invoke-direct {p0}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->layoutPages()V

    return-void
.end method

.method setMarginColor(I)V
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->m_delegator:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$ViewDelegator;

    invoke-interface {v0, p1}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$ViewDelegator;->setMarginColor(I)V

    return-void
.end method

.method setSinglePage()V
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->m_pagesLayout:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$PagesLayout;

    sget-object v1, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$PagesLayout;->SinglePage:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$PagesLayout;

    if-eq v0, v1, :cond_0

    .line 143
    iput-object v1, p0, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->m_pagesLayout:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$PagesLayout;

    .line 144
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->m_delegator:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$ViewDelegator;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$ViewDelegator;->prepareTransientPage(I)V

    .line 145
    invoke-direct {p0}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->layoutPages()V

    .line 146
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->invalidate()V

    :cond_0
    return-void
.end method

.method setTitleVisibility(ZZ)V
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->m_delegator:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$ViewDelegator;

    invoke-interface {v0, p1, p2}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$ViewDelegator;->setTitleVisibility(ZZ)V

    return-void
.end method

.method setTwoPagesLeft(Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;)V
    .locals 1

    .line 151
    sget-object v0, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$PagesLayout;->TwoPagesLeft:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$PagesLayout;

    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->m_pagesLayout:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$PagesLayout;

    .line 152
    invoke-direct {p0, p1}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->prepareTransientPage(Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;)V

    return-void
.end method

.method setTwoPagesRight(Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;)V
    .locals 1

    .line 156
    sget-object v0, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$PagesLayout;->TwoPagesRight:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$PagesLayout;

    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->m_pagesLayout:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$PagesLayout;

    .line 157
    invoke-direct {p0, p1}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->prepareTransientPage(Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;)V

    return-void
.end method

.method setViewDelegator(Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$ViewDelegator;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->m_delegator:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$ViewDelegator;

    return-void
.end method

.method startAnimation()V
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->m_currentAnimation:Lcom/amazon/android/docviewer/animation/AnimationTranslateX;

    if-eqz v0, :cond_0

    .line 208
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->m_pageTurnStartTime:J

    .line 209
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->m_currentAnimation:Lcom/amazon/android/docviewer/animation/AnimationTranslateX;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/animation/AnimationTranslateX;->start()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->invalidate()V

    :cond_0
    return-void
.end method

.method public startPan()V
    .locals 1

    .line 364
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->m_delegator:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$ViewDelegator;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$ViewDelegator;->startPan()V

    return-void
.end method

.method public startZoom()V
    .locals 1

    .line 376
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->m_delegator:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$ViewDelegator;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$ViewDelegator;->startZoom()V

    return-void
.end method

.method zoom(FFF)V
    .locals 1

    .line 380
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->m_delegator:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$ViewDelegator;

    invoke-interface {v0, p1, p2, p3}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$ViewDelegator;->zoom(FFF)V

    return-void
.end method
