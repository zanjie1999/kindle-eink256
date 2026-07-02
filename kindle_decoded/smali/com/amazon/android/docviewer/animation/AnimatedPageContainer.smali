.class public final Lcom/amazon/android/docviewer/animation/AnimatedPageContainer;
.super Landroid/widget/FrameLayout;
.source "AnimatedPageContainer.java"


# static fields
.field private static final ANIMATION_DELAY_OVERHEAD:J = 0x32L

.field private static final DEFAULT_PAGE_TURN_TIME:J = 0xc8L

.field private static final MAX_PAGE_TURN_TIME:J = 0x12cL

.field private static final MIN_PAGE_TURN_TIME:J = 0x64L


# instance fields
.field private final m_asyncHandler:Landroid/os/Handler;

.field private m_currentAnimation:Lcom/amazon/android/docviewer/animation/AnimationTranslateX;

.field private m_drawFilter:Lcom/amazon/android/docviewer/filter/IViewDrawFilter;

.field private m_listener:Landroid/view/animation/Animation$AnimationListener;

.field private m_pageTurnDuration:J

.field private m_pageTurnStartTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 44
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/amazon/android/docviewer/animation/AnimatedPageContainer;->m_asyncHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/android/docviewer/animation/AnimatedPageContainer;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/amazon/android/docviewer/animation/AnimatedPageContainer;->realOnAnimationEnd()V

    return-void
.end method

.method private realOnAnimationEnd()V
    .locals 10

    .line 99
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 100
    iget-wide v2, p0, Lcom/amazon/android/docviewer/animation/AnimatedPageContainer;->m_pageTurnStartTime:J

    iget-wide v4, p0, Lcom/amazon/android/docviewer/animation/AnimatedPageContainer;->m_pageTurnDuration:J

    add-long/2addr v2, v4

    const-wide/16 v4, 0x32

    add-long/2addr v2, v4

    cmp-long v6, v0, v2

    if-gez v6, :cond_0

    .line 101
    iget-object v2, p0, Lcom/amazon/android/docviewer/animation/AnimatedPageContainer;->m_asyncHandler:Landroid/os/Handler;

    new-instance v3, Lcom/amazon/android/docviewer/animation/AnimatedPageContainer$1;

    invoke-direct {v3, p0}, Lcom/amazon/android/docviewer/animation/AnimatedPageContainer$1;-><init>(Lcom/amazon/android/docviewer/animation/AnimatedPageContainer;)V

    iget-wide v6, p0, Lcom/amazon/android/docviewer/animation/AnimatedPageContainer;->m_pageTurnStartTime:J

    iget-wide v8, p0, Lcom/amazon/android/docviewer/animation/AnimatedPageContainer;->m_pageTurnDuration:J

    add-long/2addr v6, v8

    add-long/2addr v6, v4

    sub-long/2addr v6, v0

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/animation/AnimatedPageContainer;->m_listener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 111
    invoke-interface {v0, v1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/amazon/android/docviewer/animation/AnimatedPageContainer;->m_drawFilter:Lcom/amazon/android/docviewer/filter/IViewDrawFilter;

    if-eqz v0, :cond_0

    .line 36
    invoke-interface {v0, p1}, Lcom/amazon/android/docviewer/filter/IViewDrawFilter;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 38
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method public isAnimationSet()Z
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/amazon/android/docviewer/animation/AnimatedPageContainer;->m_currentAnimation:Lcom/amazon/android/docviewer/animation/AnimationTranslateX;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onAnimationEnd()V
    .locals 0

    .line 94
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAnimationEnd()V

    .line 95
    invoke-direct {p0}, Lcom/amazon/android/docviewer/animation/AnimatedPageContainer;->realOnAnimationEnd()V

    return-void
.end method

.method public removeAnimation()V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/amazon/android/docviewer/animation/AnimatedPageContainer;->m_currentAnimation:Lcom/amazon/android/docviewer/animation/AnimationTranslateX;

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/animation/AnimationTranslateX;->clear()V

    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Lcom/amazon/android/docviewer/animation/AnimatedPageContainer;->m_currentAnimation:Lcom/amazon/android/docviewer/animation/AnimationTranslateX;

    const-wide/16 v0, 0x0

    .line 79
    iput-wide v0, p0, Lcom/amazon/android/docviewer/animation/AnimatedPageContainer;->m_pageTurnStartTime:J

    .line 80
    iput-wide v0, p0, Lcom/amazon/android/docviewer/animation/AnimatedPageContainer;->m_pageTurnDuration:J

    :cond_0
    return-void
.end method

.method public setAnimation(IFZ)V
    .locals 6

    .line 49
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    const-wide/16 v0, 0x12c

    const/4 v2, 0x0

    cmpl-float v2, p2, v2

    if-nez v2, :cond_1

    .line 53
    new-instance p2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0xc8

    .line 57
    :goto_0
    iput-wide v0, p0, Lcom/amazon/android/docviewer/animation/AnimatedPageContainer;->m_pageTurnDuration:J

    goto :goto_1

    :cond_1
    const-wide/16 v2, 0x64

    int-to-float p3, p1

    div-float/2addr p3, p2

    float-to-long p2, p3

    .line 60
    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-static {v2, v3, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    iput-wide p2, p0, Lcom/amazon/android/docviewer/animation/AnimatedPageContainer;->m_pageTurnDuration:J

    const/4 p2, 0x0

    :goto_1
    move-object v5, p2

    .line 63
    new-instance p2, Lcom/amazon/android/docviewer/animation/AnimationTranslateX;

    iget-wide v3, p0, Lcom/amazon/android/docviewer/animation/AnimatedPageContainer;->m_pageTurnDuration:J

    move-object v0, p2

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/amazon/android/docviewer/animation/AnimationTranslateX;-><init>(Landroid/view/View;IJLandroid/view/animation/Interpolator;)V

    iput-object p2, p0, Lcom/amazon/android/docviewer/animation/AnimatedPageContainer;->m_currentAnimation:Lcom/amazon/android/docviewer/animation/AnimationTranslateX;

    return-void
.end method

.method public setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/amazon/android/docviewer/animation/AnimatedPageContainer;->m_listener:Landroid/view/animation/Animation$AnimationListener;

    return-void
.end method

.method public setDrawFilter(Lcom/amazon/android/docviewer/filter/IViewDrawFilter;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/amazon/android/docviewer/animation/AnimatedPageContainer;->m_drawFilter:Lcom/amazon/android/docviewer/filter/IViewDrawFilter;

    return-void
.end method

.method public startAnimation()V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/amazon/android/docviewer/animation/AnimatedPageContainer;->m_currentAnimation:Lcom/amazon/android/docviewer/animation/AnimationTranslateX;

    if-eqz v0, :cond_0

    .line 68
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/android/docviewer/animation/AnimatedPageContainer;->m_pageTurnStartTime:J

    .line 69
    iget-object v0, p0, Lcom/amazon/android/docviewer/animation/AnimatedPageContainer;->m_currentAnimation:Lcom/amazon/android/docviewer/animation/AnimationTranslateX;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/animation/AnimationTranslateX;->start()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_0
    return-void
.end method
