.class public final Lcom/amazon/android/docviewer/pdf/PdfView;
.super Lcom/amazon/android/docviewer/KindleDocView;
.source "PdfView.java"


# static fields
.field private static final DEFAULT_PAGE_SPACE:I = 0x32

.field static final DEFAULT_ZOOM_SCALE:F = 1.0f

.field private static final ENABLE_INVALIDATION_LOOP_AFTER_PANNING:Z = true

.field private static final ENABLE_SMOOTH_PANNING:Z = false

.field static final EPSILON:F = 1.0E-8f

.field private static final FIRST_RENDER_WAIT_TIME_ON_GOTO_PAGE:I = 0xc8

.field static final METRIC_CLASS:Ljava/lang/String;

.field private static final NEXT_PAGE:Ljava/lang/String; = "NextPage"

.field static final ON_LAYOUT_TIMER:Ljava/lang/String; = "onLayoutTimer"

.field private static final PAGE_TYPE:Ljava/lang/String; = "PdfBasedDocument"

.field private static final PREVIOUS_PAGE:Ljava/lang/String; = "PreviousPage"

.field private static final RE_INVALIDATION_DELAY:I = 0x32

.field private static final RE_INVALIDATION_DURATION:I = 0x7d0

.field static final TAG:Ljava/lang/String;

.field private static final TILE_VIEW_CURRENT:I = 0x1

.field private static final TILE_VIEW_NEXT:I = 0x2

.field private static final TILE_VIEW_PREVIOUS:I = 0x0

.field private static final TIME_KEY:Ljava/lang/String; = "time"

.field private static final TOTAL_PAGES_ON_STAGE:I = 0x3

.field private static final ZOOM_PAGE:Ljava/lang/String; = "ZoomPage"

.field static final ZOOM_ROUNDING_MODE:I = 0x4

.field private static accessiblePageSwipePlayer:Landroid/media/MediaPlayer;

.field private static isPageSwipePlayerLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

.field static m_debug:Z


# instance fields
.field private animationDisabled:Z

.field private lastNavigationTime:J

.field private final m_animationEndHandler:Landroid/os/Handler;

.field private final m_cached_panningMatrix:Landroid/graphics/Matrix;

.field private final m_cached_zoomingMatrix:Landroid/graphics/Matrix;

.field private m_docReferencePoint:Landroid/graphics/PointF;

.field private m_doneInitialDraw:Z

.field private m_drawFilter:Lcom/amazon/android/docviewer/filter/IViewDrawFilter;

.field private m_isCurrentPageDrawInProgress:Z

.field private m_isPageTurnInteractionDisabled:Z

.field private m_isPanning:Z

.field private m_isZooming:Z

.field private m_lastRevisedOffset:I

.field private m_pageTurnAnimationDirection:Lcom/amazon/android/docviewer/KindleDocView$AnimationDirection;

.field private m_pageTurnDirection:Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;

.field private m_pageTurnOffset:I

.field private m_panningAnimation:Lcom/amazon/android/docviewer/pdf/PanningAnimation;

.field private final m_pdfBase:Lcom/amazon/android/docviewer/animation/AnimatedPageContainer;

.field private m_postInvalidationLoopEndTime:J

.field private final m_refDoc:Lcom/amazon/android/docviewer/pdf/PdfDoc;

.field private m_savedOrientation:I

.field private final m_scrollLockManager:Lcom/amazon/android/docviewer/ScrollLockManager;

.field private m_selectionFilter:Lcom/amazon/android/docviewer/filter/IViewDrawFilter;

.field private final m_viewer:Lcom/amazon/android/docviewer/pdf/PdfDocViewer;

.field private final momentumScroller:Lcom/amazon/android/docviewer/pdf/PdfViewMomentumScroller;

.field turnPageAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private final updatePages:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 63
    const-class v0, Lcom/amazon/android/docviewer/pdf/PdfView;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/android/docviewer/pdf/PdfView;->TAG:Ljava/lang/String;

    .line 64
    sput-object v0, Lcom/amazon/android/docviewer/pdf/PdfView;->METRIC_CLASS:Ljava/lang/String;

    const/4 v0, 0x0

    .line 66
    sput-boolean v0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_debug:Z

    .line 138
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v1, Lcom/amazon/android/docviewer/pdf/PdfView;->isPageSwipePlayerLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    .line 139
    sput-object v0, Lcom/amazon/android/docviewer/pdf/PdfView;->accessiblePageSwipePlayer:Landroid/media/MediaPlayer;

    return-void
.end method

.method constructor <init>(Lcom/amazon/android/docviewer/pdf/PdfDocViewer;Landroid/content/Context;)V
    .locals 4

    .line 170
    invoke-direct {p0, p2, p1}, Lcom/amazon/android/docviewer/KindleDocView;-><init>(Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDocViewer;)V

    const/4 v0, 0x0

    .line 117
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_doneInitialDraw:Z

    .line 118
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_isZooming:Z

    .line 119
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_isPanning:Z

    .line 125
    iput v0, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_lastRevisedOffset:I

    const/4 v1, -0x1

    .line 128
    iput v1, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_savedOrientation:I

    .line 134
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_isCurrentPageDrawInProgress:Z

    .line 793
    new-instance v2, Lcom/amazon/android/docviewer/pdf/PdfView$1;

    invoke-direct {v2, p0}, Lcom/amazon/android/docviewer/pdf/PdfView$1;-><init>(Lcom/amazon/android/docviewer/pdf/PdfView;)V

    iput-object v2, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->turnPageAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 811
    new-instance v2, Lcom/amazon/android/docviewer/pdf/PdfView$2;

    invoke-direct {v2, p0}, Lcom/amazon/android/docviewer/pdf/PdfView$2;-><init>(Lcom/amazon/android/docviewer/pdf/PdfView;)V

    iput-object v2, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->updatePages:Ljava/lang/Runnable;

    .line 172
    new-instance v2, Lcom/amazon/android/docviewer/pdf/PdfViewMomentumScroller;

    invoke-direct {v2, p2, p0}, Lcom/amazon/android/docviewer/pdf/PdfViewMomentumScroller;-><init>(Landroid/content/Context;Lcom/amazon/android/docviewer/pdf/PdfView;)V

    iput-object v2, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->momentumScroller:Lcom/amazon/android/docviewer/pdf/PdfViewMomentumScroller;

    .line 173
    iput-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_viewer:Lcom/amazon/android/docviewer/pdf/PdfDocViewer;

    .line 174
    new-instance p1, Lcom/amazon/android/docviewer/animation/AnimatedPageContainer;

    invoke-direct {p1, p2}, Lcom/amazon/android/docviewer/animation/AnimatedPageContainer;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_pdfBase:Lcom/amazon/android/docviewer/animation/AnimatedPageContainer;

    .line 176
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/amazon/kindle/krl/R$color;->pdf_background:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 177
    iget-object v2, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_pdfBase:Lcom/amazon/android/docviewer/animation/AnimatedPageContainer;

    new-instance v3, Lcom/amazon/android/docviewer/pdf/PdfBackgroundDrawable;

    invoke-direct {v3, p1, p0}, Lcom/amazon/android/docviewer/pdf/PdfBackgroundDrawable;-><init>(ILcom/amazon/android/docviewer/pdf/PdfView;)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 179
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 182
    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_pdfBase:Lcom/amazon/android/docviewer/animation/AnimatedPageContainer;

    invoke-virtual {p0, v1, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    iget-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_pdfBase:Lcom/amazon/android/docviewer/animation/AnimatedPageContainer;

    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->turnPageAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {p1, v1}, Lcom/amazon/android/docviewer/animation/AnimatedPageContainer;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 185
    iget-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_viewer:Lcom/amazon/android/docviewer/pdf/PdfDocViewer;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->getDocument()Lcom/amazon/android/docviewer/pdf/PdfDoc;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_refDoc:Lcom/amazon/android/docviewer/pdf/PdfDoc;

    .line 186
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_animationEndHandler:Landroid/os/Handler;

    .line 187
    new-instance p1, Lcom/amazon/android/docviewer/ScrollLockManager;

    invoke-direct {p1}, Lcom/amazon/android/docviewer/ScrollLockManager;-><init>()V

    iput-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_scrollLockManager:Lcom/amazon/android/docviewer/ScrollLockManager;

    .line 188
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_cached_panningMatrix:Landroid/graphics/Matrix;

    .line 189
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_cached_zoomingMatrix:Landroid/graphics/Matrix;

    .line 190
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_docReferencePoint:Landroid/graphics/PointF;

    const/high16 p1, 0x80000

    .line 194
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setDrawingCacheQuality(I)V

    .line 195
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setDrawingCacheEnabled(Z)V

    .line 196
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setAnimationCacheEnabled(Z)V

    const/4 p1, 0x1

    .line 197
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setWillNotCacheDrawing(Z)V

    const/4 v1, 0x0

    .line 198
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 199
    invoke-static {p2}, Lcom/amazon/kcp/util/DeviceUtils;->isEinkScreen(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->animationDisabled:Z

    .line 201
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 202
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfView;->lazyloadAccessiblePageSwipePlayer()V

    .line 205
    :cond_0
    invoke-static {p2}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_pdfBase:Lcom/amazon/android/docviewer/animation/AnimatedPageContainer;

    .line 206
    invoke-interface {v1, v0, v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->createViewDrawFilter(ILandroid/view/View;)Lcom/amazon/android/docviewer/filter/IViewDrawFilter;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_drawFilter:Lcom/amazon/android/docviewer/filter/IViewDrawFilter;

    .line 207
    iget-object v2, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_pdfBase:Lcom/amazon/android/docviewer/animation/AnimatedPageContainer;

    invoke-virtual {v2, v1}, Lcom/amazon/android/docviewer/animation/AnimatedPageContainer;->setDrawFilter(Lcom/amazon/android/docviewer/filter/IViewDrawFilter;)V

    .line 210
    invoke-static {}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->isHighlightingSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 211
    invoke-static {p2}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p2

    .line 212
    invoke-interface {p2, p1, p0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->createViewDrawFilter(ILandroid/view/View;)Lcom/amazon/android/docviewer/filter/IViewDrawFilter;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_selectionFilter:Lcom/amazon/android/docviewer/filter/IViewDrawFilter;

    if-eqz p1, :cond_1

    .line 215
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setWillNotDraw(Z)V

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/android/docviewer/pdf/PdfView;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/amazon/android/docviewer/pdf/PdfView;->onPageTurnEnd()V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/android/docviewer/pdf/PdfView;)Ljava/lang/Runnable;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->updatePages:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1000()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 56
    sget-object v0, Lcom/amazon/android/docviewer/pdf/PdfView;->isPageSwipePlayerLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$200(Lcom/amazon/android/docviewer/pdf/PdfView;)Landroid/os/Handler;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_animationEndHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/android/docviewer/pdf/PdfView;)Lcom/amazon/android/docviewer/pdf/PdfDoc;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_refDoc:Lcom/amazon/android/docviewer/pdf/PdfDoc;

    return-object p0
.end method

.method static synthetic access$400(Lcom/amazon/android/docviewer/pdf/PdfView;)Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_pageTurnDirection:Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;

    return-object p0
.end method

.method static synthetic access$500(Lcom/amazon/android/docviewer/pdf/PdfView;Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/amazon/android/docviewer/pdf/PdfView;->applyPageTurn(Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;)V

    return-void
.end method

.method static synthetic access$600(Lcom/amazon/android/docviewer/pdf/PdfView;)Lcom/amazon/android/docviewer/pdf/PdfDocViewer;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_viewer:Lcom/amazon/android/docviewer/pdf/PdfDocViewer;

    return-object p0
.end method

.method static synthetic access$700(Lcom/amazon/android/docviewer/pdf/PdfView;)Z
    .locals 0

    .line 56
    iget-boolean p0, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_doneInitialDraw:Z

    return p0
.end method

.method static synthetic access$702(Lcom/amazon/android/docviewer/pdf/PdfView;Z)Z
    .locals 0

    .line 56
    iput-boolean p1, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_doneInitialDraw:Z

    return p1
.end method

.method static synthetic access$800(Lcom/amazon/android/docviewer/pdf/PdfView;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/amazon/android/docviewer/pdf/PdfView;->loadPages()V

    return-void
.end method

.method static synthetic access$900()Landroid/media/MediaPlayer;
    .locals 1

    .line 56
    sget-object v0, Lcom/amazon/android/docviewer/pdf/PdfView;->accessiblePageSwipePlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$902(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    .line 56
    sput-object p0, Lcom/amazon/android/docviewer/pdf/PdfView;->accessiblePageSwipePlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method private animatePageTurn(F)Z
    .locals 5

    const-string v0, "PerfCounter"

    const-string v1, "animatePageTurn"

    .line 728
    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x64

    .line 732
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x2

    div-int/2addr v0, v1

    const/4 v2, 0x0

    rsub-int/lit8 v0, v0, 0x0

    .line 734
    iget v3, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_pageTurnOffset:I

    if-eqz v3, :cond_0

    .line 735
    iget-object v3, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_pdfBase:Lcom/amazon/android/docviewer/animation/AnimatedPageContainer;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v3

    sub-int/2addr v3, v0

    mul-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_pageTurnOffset:I

    .line 738
    :cond_0
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->animationDisabled:Z

    if-nez v0, :cond_3

    const/4 v0, 0x0

    .line 741
    iget-object v3, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_pageTurnDirection:Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;

    sget-object v4, Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;->Backward:Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;

    if-ne v3, v4, :cond_1

    .line 742
    invoke-direct {p0, v1}, Lcom/amazon/android/docviewer/pdf/PdfView;->getTileView(I)Lcom/amazon/android/docviewer/pdf/PdfTileView;

    move-result-object v0

    goto :goto_0

    .line 743
    :cond_1
    sget-object v1, Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;->Forward:Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;

    if-ne v3, v1, :cond_2

    .line 744
    invoke-direct {p0, v2}, Lcom/amazon/android/docviewer/pdf/PdfView;->getTileView(I)Lcom/amazon/android/docviewer/pdf/PdfTileView;

    move-result-object v0

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 747
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 752
    :cond_3
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_pageTurnAnimationDirection:Lcom/amazon/android/docviewer/KindleDocView$AnimationDirection;

    if-nez v0, :cond_4

    .line 753
    iget v0, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_pageTurnOffset:I

    neg-int v0, v0

    goto :goto_2

    .line 754
    :cond_4
    sget-object v1, Lcom/amazon/android/docviewer/KindleDocView$AnimationDirection;->ToRight:Lcom/amazon/android/docviewer/KindleDocView$AnimationDirection;

    if-ne v0, v1, :cond_5

    .line 755
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, 0x32

    iget v1, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_pageTurnOffset:I

    goto :goto_1

    .line 757
    :cond_5
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x32

    iget v1, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_pageTurnOffset:I

    :goto_1
    sub-int/2addr v0, v1

    .line 760
    :goto_2
    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_pdfBase:Lcom/amazon/android/docviewer/animation/AnimatedPageContainer;

    iget v3, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_pageTurnOffset:I

    const/4 v4, 0x1

    if-eqz v3, :cond_6

    const/4 v2, 0x1

    :cond_6
    invoke-virtual {v1, v0, p1, v2}, Lcom/amazon/android/docviewer/animation/AnimatedPageContainer;->setAnimation(IFZ)V

    .line 763
    iput-boolean v4, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_isPageTurnInteractionDisabled:Z

    .line 764
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    return v4
.end method

.method private declared-synchronized applyPageTurn(Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;)V
    .locals 8

    monitor-enter p0

    .line 897
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applyPageTurn direction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 900
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 901
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 902
    iget-wide v3, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->lastNavigationTime:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_0

    const-string/jumbo v3, "time"

    .line 903
    iget-wide v4, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->lastNavigationTime:J

    sub-long v4, v1, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 905
    :cond_0
    iput-wide v1, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->lastNavigationTime:J

    .line 908
    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_refDoc:Lcom/amazon/android/docviewer/pdf/PdfDoc;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->getCurrentPageIndex()I

    move-result v1

    .line 909
    sget-object v2, Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;->Forward:Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;

    const/4 v3, 0x1

    if-ne p1, v2, :cond_2

    add-int/lit8 v1, v1, 0x1

    .line 911
    iget-object v2, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_viewer:Lcom/amazon/android/docviewer/pdf/PdfDocViewer;

    invoke-virtual {v2, v3}, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->onDocViewerBeforePositionChanged(I)V

    .line 912
    iget-object v2, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_drawFilter:Lcom/amazon/android/docviewer/filter/IViewDrawFilter;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_drawFilter:Lcom/amazon/android/docviewer/filter/IViewDrawFilter;

    invoke-interface {v2}, Lcom/amazon/android/docviewer/filter/IViewDrawFilter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 914
    iget-object v2, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_drawFilter:Lcom/amazon/android/docviewer/filter/IViewDrawFilter;

    invoke-interface {v2}, Lcom/amazon/android/docviewer/filter/IViewDrawFilter;->disable()V

    .line 917
    :cond_1
    iget-object v2, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_viewer:Lcom/amazon/android/docviewer/pdf/PdfDocViewer;

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->getDocument()Lcom/amazon/android/docviewer/pdf/PdfDoc;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getAmzGuid()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v2, "PdfBasedDocument"

    const-string v4, "NextPage"

    .line 918
    invoke-static {v2, v4, v0}, Lcom/amazon/metrics/ClickstreamMetrics;->recordEventWithMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 920
    :cond_2
    sget-object v2, Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;->Backward:Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;

    if-ne p1, v2, :cond_4

    add-int/lit8 v1, v1, -0x1

    .line 922
    iget-object v2, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_viewer:Lcom/amazon/android/docviewer/pdf/PdfDocViewer;

    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->onDocViewerBeforePositionChanged(I)V

    .line 923
    iget-object v2, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_drawFilter:Lcom/amazon/android/docviewer/filter/IViewDrawFilter;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_drawFilter:Lcom/amazon/android/docviewer/filter/IViewDrawFilter;

    invoke-interface {v2}, Lcom/amazon/android/docviewer/filter/IViewDrawFilter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 925
    iget-object v2, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_drawFilter:Lcom/amazon/android/docviewer/filter/IViewDrawFilter;

    invoke-interface {v2}, Lcom/amazon/android/docviewer/filter/IViewDrawFilter;->disable()V

    .line 928
    :cond_3
    iget-object v2, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_viewer:Lcom/amazon/android/docviewer/pdf/PdfDocViewer;

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->getDocument()Lcom/amazon/android/docviewer/pdf/PdfDoc;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getAmzGuid()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v2, "PdfBasedDocument"

    const-string v4, "PreviousPage"

    .line 929
    invoke-static {v2, v4, v0}, Lcom/amazon/metrics/ClickstreamMetrics;->recordEventWithMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_4
    :goto_0
    add-int/lit8 v0, v1, -0x1

    add-int/lit8 v2, v1, 0x1

    .line 938
    iget-object v4, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_pdfBase:Lcom/amazon/android/docviewer/animation/AnimatedPageContainer;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-nez v4, :cond_5

    .line 939
    invoke-direct {p0}, Lcom/amazon/android/docviewer/pdf/PdfView;->loadPages()V

    goto :goto_1

    .line 940
    :cond_5
    sget-object v4, Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;->Backward:Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;

    if-ne p1, v4, :cond_6

    .line 941
    iget-object v2, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_viewer:Lcom/amazon/android/docviewer/pdf/PdfDocViewer;

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->refreshSearchResults()V

    .line 942
    invoke-direct {p0, v6}, Lcom/amazon/android/docviewer/pdf/PdfView;->removeTileView(I)V

    .line 943
    invoke-direct {p0, v0, v5}, Lcom/amazon/android/docviewer/pdf/PdfView;->createTileView(II)Lcom/amazon/android/docviewer/pdf/PdfTileView;

    goto :goto_1

    .line 944
    :cond_6
    sget-object v0, Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;->Forward:Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;

    if-ne p1, v0, :cond_7

    .line 945
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_viewer:Lcom/amazon/android/docviewer/pdf/PdfDocViewer;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->refreshSearchResults()V

    .line 946
    invoke-direct {p0, v5}, Lcom/amazon/android/docviewer/pdf/PdfView;->removeTileView(I)V

    .line 947
    invoke-direct {p0, v2, v6}, Lcom/amazon/android/docviewer/pdf/PdfView;->createTileView(II)Lcom/amazon/android/docviewer/pdf/PdfTileView;

    .line 950
    :cond_7
    :goto_1
    sget-boolean v0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_debug:Z

    if-eqz v0, :cond_8

    .line 951
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyPageTurn finished:  prev="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 952
    invoke-direct {p0, v5}, Lcom/amazon/android/docviewer/pdf/PdfView;->getTileView(I)Lcom/amazon/android/docviewer/pdf/PdfTileView;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " curr="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 953
    invoke-direct {p0, v3}, Lcom/amazon/android/docviewer/pdf/PdfView;->getTileView(I)Lcom/amazon/android/docviewer/pdf/PdfTileView;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " next="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 954
    invoke-direct {p0, v6}, Lcom/amazon/android/docviewer/pdf/PdfView;->getTileView(I)Lcom/amazon/android/docviewer/pdf/PdfTileView;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " direction="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 957
    :cond_8
    invoke-direct {p0, v3}, Lcom/amazon/android/docviewer/pdf/PdfView;->getTileView(I)Lcom/amazon/android/docviewer/pdf/PdfTileView;

    move-result-object v0

    .line 959
    iget-object v2, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_refDoc:Lcom/amazon/android/docviewer/pdf/PdfDoc;

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->isClosed()Z

    move-result v2

    if-nez v2, :cond_a

    if-nez v0, :cond_9

    goto :goto_2

    .line 964
    :cond_9
    iget-object v2, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_refDoc:Lcom/amazon/android/docviewer/pdf/PdfDoc;

    invoke-virtual {v2, v1}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->setCurrentPageIndex(I)Z

    .line 965
    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_refDoc:Lcom/amazon/android/docviewer/pdf/PdfDoc;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfTileView;->getPdfPage()Lcom/amazon/android/docviewer/pdf/PdfPage;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->setCurrentPdfPage(Lcom/amazon/android/docviewer/pdf/PdfPage;)V

    .line 966
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_viewer:Lcom/amazon/android/docviewer/pdf/PdfDocViewer;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->onRefresh()V

    .line 967
    new-instance v0, Lcom/amazon/android/docviewer/pdf/PdfView$3;

    invoke-direct {v0, p0, p1}, Lcom/amazon/android/docviewer/pdf/PdfView$3;-><init>(Lcom/amazon/android/docviewer/pdf/PdfView;Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;)V

    .line 978
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 979
    monitor-exit p0

    return-void

    .line 960
    :cond_a
    :goto_2
    :try_start_1
    sget-object p1, Lcom/amazon/android/docviewer/pdf/PdfView;->TAG:Ljava/lang/String;

    const-string v0, "Doc is closed or the current tile is null"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 961
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private checkIfNeedToTurnPage(F)Z
    .locals 5

    .line 691
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_refDoc:Lcom/amazon/android/docviewer/pdf/PdfDoc;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->getCurrentPageIndex()I

    move-result v0

    .line 693
    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_pageTurnDirection:Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;

    sget-object v2, Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;->Backward:Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_0

    sub-int/2addr v0, v4

    goto :goto_0

    .line 695
    :cond_0
    sget-object v2, Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;->Forward:Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;

    if-ne v1, v2, :cond_1

    add-int/2addr v0, v4

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 699
    :goto_0
    invoke-direct {p0, v0}, Lcom/amazon/android/docviewer/pdf/PdfView;->isValidIndex(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 700
    invoke-direct {p0, p1}, Lcom/amazon/android/docviewer/pdf/PdfView;->animatePageTurn(F)Z

    return v4

    .line 703
    :cond_2
    iget-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_pageTurnDirection:Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;

    sget-object v0, Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;->Forward:Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;

    if-ne p1, v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    .line 705
    :goto_1
    new-instance p1, Lcom/amazon/kcp/events/PageTurnAbortedEvent;

    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_viewer:Lcom/amazon/android/docviewer/pdf/PdfDocViewer;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->getDocument()Lcom/amazon/android/docviewer/pdf/PdfDoc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_viewer:Lcom/amazon/android/docviewer/pdf/PdfDocViewer;

    .line 706
    invoke-virtual {v1}, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->getDocument()Lcom/amazon/android/docviewer/pdf/PdfDoc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->getPageStartPositionObject()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_viewer:Lcom/amazon/android/docviewer/pdf/PdfDocViewer;

    .line 707
    invoke-virtual {v2}, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->getDocument()Lcom/amazon/android/docviewer/pdf/PdfDoc;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->getPageEndPositionObject()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    invoke-direct {p1, v0, v1, v2, v4}, Lcom/amazon/kcp/events/PageTurnAbortedEvent;-><init>(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Z)V

    .line 710
    invoke-virtual {p1}, Lcom/amazon/kindle/services/events/AbstractSelfPublishingEvent;->publish()V

    const/4 p1, 0x0

    .line 712
    iput-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_pageTurnDirection:Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;

    .line 713
    iput-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_pageTurnAnimationDirection:Lcom/amazon/android/docviewer/KindleDocView$AnimationDirection;

    return v3
.end method

.method private closeTileView(Lcom/amazon/android/docviewer/pdf/PdfTileView;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "closeTileView "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1113
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/pdf/PdfTileView;->getPdfPage()Lcom/amazon/android/docviewer/pdf/PdfPage;

    move-result-object v0

    .line 1114
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/pdf/PdfTileView;->closeTileView()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 1117
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfPage;->closePage()V

    :cond_1
    return-void
.end method

.method private declared-synchronized createTileView(II)Lcom/amazon/android/docviewer/pdf/PdfTileView;
    .locals 4

    monitor-enter p0

    .line 998
    :try_start_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1001
    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_refDoc:Lcom/amazon/android/docviewer/pdf/PdfDoc;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->isClosed()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1002
    sget-object p1, Lcom/amazon/android/docviewer/pdf/PdfView;->TAG:Ljava/lang/String;

    const-string p2, "Skipping view creation since the PDF document has been closed"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1003
    monitor-exit p0

    return-object v2

    .line 1006
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding tile view "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " at child position "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1009
    :try_start_2
    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_refDoc:Lcom/amazon/android/docviewer/pdf/PdfDoc;

    invoke-virtual {v1, p1}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->getPdfPage(I)Lcom/amazon/android/docviewer/pdf/PdfPage;

    move-result-object p1
    :try_end_2
    .catch Lcom/amazon/android/docviewer/pdf/PdfNativeLibraryException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1015
    :try_start_3
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_refDoc:Lcom/amazon/android/docviewer/pdf/PdfDoc;

    invoke-static {v1, v2, p1}, Lcom/amazon/android/docviewer/pdf/PdfTileView;->newInstance(Landroid/content/Context;Lcom/amazon/android/docviewer/pdf/PdfDoc;Lcom/amazon/android/docviewer/pdf/PdfPage;)Lcom/amazon/android/docviewer/pdf/PdfTileView;

    move-result-object p1

    .line 1016
    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_viewer:Lcom/amazon/android/docviewer/pdf/PdfDocViewer;

    invoke-virtual {p1, p0, v1}, Lcom/amazon/android/docviewer/pdf/PdfTileView;->setViewer(Lcom/amazon/android/docviewer/pdf/PdfView;Lcom/amazon/android/docviewer/pdf/PdfDocViewer;)V

    .line 1017
    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_pdfBase:Lcom/amazon/android/docviewer/animation/AnimatedPageContainer;

    invoke-virtual {v1, p1, p2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1018
    monitor-exit p0

    return-object p1

    :catch_0
    move-exception p1

    .line 1011
    :try_start_4
    sget-object p2, Lcom/amazon/android/docviewer/pdf/PdfView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Get page failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1012
    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized fitWidth()V
    .locals 6

    monitor-enter p0

    .line 1085
    :try_start_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_refDoc:Lcom/amazon/android/docviewer/pdf/PdfDoc;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->getCurrentPageIndex()I

    move-result v0

    .line 1086
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fitWidth pageIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v1, 0x0

    .line 1089
    invoke-direct {p0, v1}, Lcom/amazon/android/docviewer/pdf/PdfView;->getTileView(I)Lcom/amazon/android/docviewer/pdf/PdfTileView;

    move-result-object v2

    const v3, 0x322bcc77    # 1.0E-8f

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v2, :cond_0

    .line 1090
    invoke-virtual {v2}, Lcom/amazon/android/docviewer/pdf/PdfTileView;->getPdfTileManager()Lcom/amazon/android/docviewer/pdf/PdfTileManager;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1091
    invoke-static {v2}, Lcom/amazon/android/docviewer/pdf/PdfView;->getZoomScaleForPdfTileView(Lcom/amazon/android/docviewer/pdf/PdfTileView;)F

    move-result v2

    sub-float/2addr v2, v4

    .line 1092
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 1093
    invoke-direct {p0, v1}, Lcom/amazon/android/docviewer/pdf/PdfView;->removeTileView(I)V

    add-int/lit8 v2, v0, -0x1

    .line 1094
    invoke-direct {p0, v2, v1}, Lcom/amazon/android/docviewer/pdf/PdfView;->createTileView(II)Lcom/amazon/android/docviewer/pdf/PdfTileView;

    :cond_0
    const/4 v1, 0x2

    .line 1099
    invoke-direct {p0, v1}, Lcom/amazon/android/docviewer/pdf/PdfView;->getTileView(I)Lcom/amazon/android/docviewer/pdf/PdfTileView;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1100
    invoke-virtual {v2}, Lcom/amazon/android/docviewer/pdf/PdfTileView;->getPdfTileManager()Lcom/amazon/android/docviewer/pdf/PdfTileManager;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1101
    invoke-static {v2}, Lcom/amazon/android/docviewer/pdf/PdfView;->getZoomScaleForPdfTileView(Lcom/amazon/android/docviewer/pdf/PdfTileView;)F

    move-result v2

    sub-float/2addr v2, v4

    .line 1102
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 1103
    invoke-direct {p0, v1}, Lcom/amazon/android/docviewer/pdf/PdfView;->removeTileView(I)V

    add-int/lit8 v0, v0, 0x1

    .line 1104
    invoke-direct {p0, v0, v1}, Lcom/amazon/android/docviewer/pdf/PdfView;->createTileView(II)Lcom/amazon/android/docviewer/pdf/PdfTileView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1107
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final getTileView(I)Lcom/amazon/android/docviewer/pdf/PdfTileView;
    .locals 1

    .line 1122
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_pdfBase:Lcom/amazon/android/docviewer/animation/AnimatedPageContainer;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/amazon/android/docviewer/pdf/PdfTileView;

    return-object p1
.end method

.method public static final getZoomScale(Lcom/amazon/android/docviewer/pdf/PdfPage;)F
    .locals 1

    if-nez p0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    .line 1259
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getViewport()Landroid/graphics/RectF;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/amazon/android/docviewer/pdf/PdfView;->getZoomScale(Lcom/amazon/android/docviewer/pdf/PdfPage;Landroid/graphics/RectF;)F

    move-result p0

    return p0
.end method

.method public static final getZoomScale(Lcom/amazon/android/docviewer/pdf/PdfPage;Landroid/graphics/RectF;)F
    .locals 2

    .line 1237
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfPage;->isScreenOrientationPortrait()Z

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfPage;->isFullScreenOnHeight()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1238
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p0

    mul-float p0, p0, v1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    :goto_0
    int-to-float p0, p0

    div-float/2addr p0, v1

    return p0

    .line 1241
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p0

    mul-float p0, p0, v1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    goto :goto_0
.end method

.method public static final getZoomScaleForPdfTileView(Lcom/amazon/android/docviewer/pdf/PdfTileView;)F
    .locals 0

    if-nez p0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 1248
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfTileView;->getPdfPage()Lcom/amazon/android/docviewer/pdf/PdfPage;

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/android/docviewer/pdf/PdfView;->getZoomScale(Lcom/amazon/android/docviewer/pdf/PdfPage;)F

    move-result p0

    :goto_0
    return p0
.end method

.method private isValidIndex(I)Z
    .locals 2

    .line 987
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_refDoc:Lcom/amazon/android/docviewer/pdf/PdfDoc;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->getPageCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ltz p1, :cond_0

    if-gt p1, v0, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private layoutPages(Lcom/amazon/android/docviewer/KindleDocView$AnimationDirection;)V
    .locals 8

    .line 1180
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    const/4 v1, 0x3

    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x64

    .line 1181
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    sub-int v2, v0, v2

    const/4 v3, 0x2

    div-int/2addr v2, v3

    const/4 v4, 0x0

    rsub-int/lit8 v2, v2, 0x0

    .line 1182
    iget-object v5, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_pdfBase:Lcom/amazon/android/docviewer/animation/AnimatedPageContainer;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v5

    .line 1183
    iget v6, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_pageTurnOffset:I

    div-int/2addr v6, v3

    if-ne v5, v1, :cond_1

    if-nez p1, :cond_0

    .line 1187
    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_pdfBase:Lcom/amazon/android/docviewer/animation/AnimatedPageContainer;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getBottom()I

    move-result v7

    invoke-virtual {v1, v2, v5, v0, v7}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 1188
    invoke-direct {p0}, Lcom/amazon/android/docviewer/pdf/PdfView;->fitWidth()V

    goto :goto_0

    .line 1190
    :cond_0
    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_pdfBase:Lcom/amazon/android/docviewer/animation/AnimatedPageContainer;

    add-int/2addr v2, v6

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v5

    add-int/2addr v0, v6

    .line 1191
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getBottom()I

    move-result v7

    .line 1190
    invoke-virtual {v1, v2, v5, v0, v7}, Landroid/widget/FrameLayout;->layout(IIII)V

    :goto_0
    const/4 v0, 0x1

    .line 1193
    invoke-direct {p0, p1, v0, v6}, Lcom/amazon/android/docviewer/pdf/PdfView;->layoutTileView(Lcom/amazon/android/docviewer/KindleDocView$AnimationDirection;II)V

    .line 1194
    invoke-direct {p0, p1, v4, v6}, Lcom/amazon/android/docviewer/pdf/PdfView;->layoutTileView(Lcom/amazon/android/docviewer/KindleDocView$AnimationDirection;II)V

    .line 1195
    invoke-direct {p0, p1, v3, v6}, Lcom/amazon/android/docviewer/pdf/PdfView;->layoutTileView(Lcom/amazon/android/docviewer/KindleDocView$AnimationDirection;II)V

    :cond_1
    return-void
.end method

.method private layoutTileView(Lcom/amazon/android/docviewer/KindleDocView$AnimationDirection;II)V
    .locals 4

    .line 1134
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_viewer:Lcom/amazon/android/docviewer/pdf/PdfDocViewer;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->getDocument()Lcom/amazon/android/docviewer/pdf/PdfDoc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getReadingDirection()Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;->RIGHT_TO_LEFT:Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v1, :cond_2

    if-eqz p2, :cond_1

    if-eq p2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    const/4 p2, 0x2

    .line 1148
    :cond_2
    :goto_0
    invoke-direct {p0, p2}, Lcom/amazon/android/docviewer/pdf/PdfView;->getTileView(I)Lcom/amazon/android/docviewer/pdf/PdfTileView;

    move-result-object v0

    if-eqz v0, :cond_4

    if-nez p1, :cond_3

    .line 1151
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result p1

    mul-int p1, p1, p2

    mul-int/lit8 p2, p2, 0x32

    add-int/2addr p1, p2

    .line 1152
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result p2

    add-int/2addr p2, p1

    .line 1153
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getTop()I

    move-result p3

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getBottom()I

    move-result v1

    invoke-virtual {v0, p1, p3, p2, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 1155
    :cond_3
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result p1

    mul-int p1, p1, p2

    mul-int/lit8 p2, p2, 0x32

    add-int/2addr p1, p2

    .line 1156
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result p2

    add-int/2addr p2, p1

    add-int/2addr p1, p3

    .line 1157
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v1

    add-int/2addr p2, p3

    .line 1158
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getBottom()I

    move-result p3

    .line 1157
    invoke-virtual {v0, p1, v1, p2, p3}, Landroid/view/View;->layout(IIII)V

    .line 1160
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result p1

    if-nez p1, :cond_4

    .line 1161
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method private declared-synchronized loadPages()V
    .locals 5

    monitor-enter p0

    .line 862
    :try_start_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_refDoc:Lcom/amazon/android/docviewer/pdf/PdfDoc;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->getCurrentPageIndex()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    add-int/lit8 v2, v0, 0x1

    .line 866
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadPages pageIndex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " childCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_pdfBase:Lcom/amazon/android/docviewer/animation/AnimatedPageContainer;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 867
    iget-object v3, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_pdfBase:Lcom/amazon/android/docviewer/animation/AnimatedPageContainer;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x0

    .line 868
    invoke-direct {p0, v1, v3}, Lcom/amazon/android/docviewer/pdf/PdfView;->createTileView(II)Lcom/amazon/android/docviewer/pdf/PdfTileView;

    const/4 v1, 0x1

    .line 869
    invoke-direct {p0, v0, v1}, Lcom/amazon/android/docviewer/pdf/PdfView;->createTileView(II)Lcom/amazon/android/docviewer/pdf/PdfTileView;

    move-result-object v0

    .line 870
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->supportPreloadBook()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    .line 871
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    move-result-object v3

    .line 872
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->getAvailableWindowDimensions(Landroid/content/Context;Z)Landroid/graphics/Point;

    move-result-object v1

    .line 873
    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v4}, Lcom/amazon/android/docviewer/pdf/PdfTileView;->preRenderCurrentView(IILandroid/graphics/RectF;)V

    :cond_0
    const/4 v0, 0x2

    .line 875
    invoke-direct {p0, v2, v0}, Lcom/amazon/android/docviewer/pdf/PdfView;->createTileView(II)Lcom/amazon/android/docviewer/pdf/PdfTileView;

    .line 878
    :cond_1
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_refDoc:Lcom/amazon/android/docviewer/pdf/PdfDoc;

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfView;->getCurrentPage()Lcom/amazon/android/docviewer/pdf/PdfPage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->setCurrentPdfPage(Lcom/amazon/android/docviewer/pdf/PdfPage;)V

    .line 879
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfView;->getCurrentTileView()Lcom/amazon/android/docviewer/pdf/PdfTileView;

    move-result-object v0

    if-eqz v0, :cond_2

    const/16 v1, 0xc8

    .line 881
    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/pdf/PdfTileView;->setWaitTimeForFirstRender(I)V

    .line 883
    :cond_2
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_viewer:Lcom/amazon/android/docviewer/pdf/PdfDocViewer;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->onRefresh()V

    .line 885
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->lastNavigationTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 886
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private onPageTurnEnd()V
    .locals 3

    .line 770
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_refDoc:Lcom/amazon/android/docviewer/pdf/PdfDoc;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->getCurrentPageIndex()I

    move-result v0

    .line 773
    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_pageTurnDirection:Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;

    sget-object v2, Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;->Forward:Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 775
    :cond_0
    sget-object v2, Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;->Backward:Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;

    if-ne v1, v2, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 778
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_refDoc:Lcom/amazon/android/docviewer/pdf/PdfDoc;

    invoke-virtual {v1, v0}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->isPageValid(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 779
    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_animationEndHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->updatePages:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 781
    :cond_2
    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_viewer:Lcom/amazon/android/docviewer/pdf/PdfDocViewer;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->onRefresh()V

    :goto_1
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 784
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "Page index=%d: onPageTurnEnd"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PerfCounter"

    .line 783
    invoke-static {v1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 787
    sget-object v0, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->TAP_TO_TURN_PAGE:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {v0}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_viewer:Lcom/amazon/android/docviewer/pdf/PdfDocViewer;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->getDocument()Lcom/amazon/android/docviewer/pdf/PdfDoc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 788
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_pageTurnDirection:Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;

    sget-object v1, Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;->Forward:Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;

    if-ne v0, v1, :cond_3

    const-string/jumbo v0, "next"

    goto :goto_2

    :cond_3
    const-string/jumbo v0, "prev"

    .line 789
    :goto_2
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/PerfMetricsCollector;->getInstance()Lcom/amazon/kindle/krx/metrics/IBatchMetricCollector;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->TAP_TO_TURN_PAGE:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {v2}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/amazon/kindle/krx/metrics/IBatchMetricCollector;->collectEndTimerMetric(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method private declared-synchronized reloadPages()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x2

    .line 890
    :try_start_0
    invoke-direct {p0, v0}, Lcom/amazon/android/docviewer/pdf/PdfView;->removeTileView(I)V

    const/4 v0, 0x1

    .line 891
    invoke-direct {p0, v0}, Lcom/amazon/android/docviewer/pdf/PdfView;->removeTileView(I)V

    const/4 v0, 0x0

    .line 892
    invoke-direct {p0, v0}, Lcom/amazon/android/docviewer/pdf/PdfView;->removeTileView(I)V

    .line 893
    invoke-direct {p0}, Lcom/amazon/android/docviewer/pdf/PdfView;->loadPages()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 894
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized removeTileView(I)V
    .locals 2

    monitor-enter p0

    .line 1025
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removing tile view "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1026
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_pdfBase:Lcom/amazon/android/docviewer/animation/AnimatedPageContainer;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/amazon/android/docviewer/pdf/PdfTileView;

    .line 1027
    invoke-direct {p0, p1}, Lcom/amazon/android/docviewer/pdf/PdfView;->closeTileView(Lcom/amazon/android/docviewer/pdf/PdfTileView;)V

    .line 1028
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_pdfBase:Lcom/amazon/android/docviewer/animation/AnimatedPageContainer;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1029
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private reviseOffsetWithPanDistance(I)F
    .locals 5

    .line 1200
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfView;->getViewport()Landroid/graphics/RectF;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1202
    iget p1, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_lastRevisedOffset:I

    :goto_0
    int-to-float p1, p1

    return p1

    .line 1205
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfView;->getCurrentPage()Lcom/amazon/android/docviewer/pdf/PdfPage;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/android/docviewer/pdf/PdfView;->getZoomScale(Lcom/amazon/android/docviewer/pdf/PdfPage;)F

    move-result v1

    .line 1206
    iget v2, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_pageTurnOffset:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    .line 1207
    iget v3, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_lastRevisedOffset:I

    sub-int v3, p1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v2

    const/4 v2, 0x0

    cmpl-float v3, v3, v2

    if-lez v3, :cond_2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v4, v1, v3

    if-lez v4, :cond_1

    .line 1212
    iget v1, v0, Landroid/graphics/RectF;->left:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    iget v0, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_2

    .line 1213
    iput p1, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_lastRevisedOffset:I

    goto :goto_1

    :cond_1
    cmpg-float v1, v1, v3

    if-gez v1, :cond_2

    .line 1216
    iget v1, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    iget v0, v0, Landroid/graphics/RectF;->right:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_2

    .line 1217
    iput p1, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_lastRevisedOffset:I

    .line 1221
    :cond_2
    :goto_1
    iget v0, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_lastRevisedOffset:I

    sub-int/2addr p1, v0

    goto :goto_0
.end method

.method private startOrLoadAccessiblePageSwipePlayer()V
    .locals 1

    .line 1376
    sget-object v0, Lcom/amazon/android/docviewer/pdf/PdfView;->accessiblePageSwipePlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 1377
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    goto :goto_0

    .line 1379
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfView;->lazyloadAccessiblePageSwipePlayer()V

    :goto_0
    return-void
.end method

.method private stopAnyPageTurns()V
    .locals 1

    .line 683
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfView;->isPageTurnInteractionDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 684
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_viewer:Lcom/amazon/android/docviewer/pdf/PdfDocViewer;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->onRefresh()V

    :cond_0
    return-void
.end method


# virtual methods
.method applyPanningTransformation(FF)V
    .locals 3

    .line 484
    iget v0, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_pageTurnOffset:I

    int-to-float v0, v0

    mul-float v0, v0, p1

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 p1, 0x0

    .line 488
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_scrollLockManager:Lcom/amazon/android/docviewer/ScrollLockManager;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/ScrollLockManager;->locksInChangeableState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 489
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_scrollLockManager:Lcom/amazon/android/docviewer/ScrollLockManager;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/android/docviewer/ScrollLockManager;->evaluatePositionChange(FF)V

    .line 493
    :cond_1
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_scrollLockManager:Lcom/amazon/android/docviewer/ScrollLockManager;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/ScrollLockManager;->getHorizontalScrollLock()Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, p1

    const/4 p2, 0x0

    goto :goto_0

    .line 495
    :cond_2
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_scrollLockManager:Lcom/amazon/android/docviewer/ScrollLockManager;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/ScrollLockManager;->getVerticalScrollLock()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    move v1, p1

    :goto_0
    const/4 p1, 0x1

    .line 498
    invoke-direct {p0, p1}, Lcom/amazon/android/docviewer/pdf/PdfView;->getTileView(I)Lcom/amazon/android/docviewer/pdf/PdfTileView;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 500
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/pdf/PdfTileView;->getPdfTileManager()Lcom/amazon/android/docviewer/pdf/PdfTileManager;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 501
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/pdf/PdfTileView;->getPdfTileManager()Lcom/amazon/android/docviewer/pdf/PdfTileManager;

    move-result-object v0

    new-instance v2, Landroid/graphics/Point;

    float-to-int v1, v1

    float-to-int p2, p2

    invoke-direct {v2, v1, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 502
    invoke-virtual {v0, v2}, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->mapScreenToWorldOffset(Landroid/graphics/Point;)Landroid/graphics/PointF;

    move-result-object p2

    .line 503
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_cached_panningMatrix:Landroid/graphics/Matrix;

    iget v1, p2, Landroid/graphics/PointF;->x:F

    neg-float v1, v1

    iget p2, p2, Landroid/graphics/PointF;->y:F

    neg-float p2, p2

    invoke-virtual {v0, v1, p2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 504
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/pdf/PdfTileView;->getPdfTileManager()Lcom/amazon/android/docviewer/pdf/PdfTileManager;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_cached_panningMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->applyMatrix(Landroid/graphics/Matrix;)V

    :cond_4
    return-void
.end method

.method applyPanningTransformationByReferencePoint(FF)V
    .locals 4

    const/4 v0, 0x1

    .line 516
    invoke-direct {p0, v0}, Lcom/amazon/android/docviewer/pdf/PdfView;->getTileView(I)Lcom/amazon/android/docviewer/pdf/PdfTileView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 518
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfTileView;->getPdfTileManager()Lcom/amazon/android/docviewer/pdf/PdfTileManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 519
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfTileView;->getPdfTileManager()Lcom/amazon/android/docviewer/pdf/PdfTileManager;

    move-result-object v1

    new-instance v2, Landroid/graphics/Point;

    float-to-int p1, p1

    float-to-int p2, p2

    invoke-direct {v2, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 520
    invoke-virtual {v1, v2}, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->mapScreenToWorldPoint(Landroid/graphics/Point;)Landroid/graphics/PointF;

    move-result-object p1

    .line 521
    new-instance p2, Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_docReferencePoint:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v3

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, v2

    invoke-direct {p2, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 522
    iget-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_cached_panningMatrix:Landroid/graphics/Matrix;

    iget v1, p2, Landroid/graphics/PointF;->x:F

    neg-float v1, v1

    iget p2, p2, Landroid/graphics/PointF;->y:F

    neg-float p2, p2

    invoke-virtual {p1, v1, p2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 523
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfTileView;->getPdfTileManager()Lcom/amazon/android/docviewer/pdf/PdfTileManager;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_cached_panningMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->applyMatrix(Landroid/graphics/Matrix;)V

    :cond_0
    return-void
.end method

.method public buildDrawingCache(Z)V
    .locals 0

    return-void
.end method

.method public canFling(FF)Z
    .locals 1

    .line 1372
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->momentumScroller:Lcom/amazon/android/docviewer/pdf/PdfViewMomentumScroller;

    float-to-int p1, p1

    float-to-int p2, p2

    invoke-virtual {v0, p1, p2}, Lcom/amazon/android/docviewer/pdf/PdfViewMomentumScroller;->canFling(II)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfView;->getPageTurnOffset()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method close()V
    .locals 2

    .line 1274
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_animationEndHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->updatePages:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x2

    .line 1275
    invoke-direct {p0, v0}, Lcom/amazon/android/docviewer/pdf/PdfView;->removeTileView(I)V

    const/4 v0, 0x1

    .line 1276
    invoke-direct {p0, v0}, Lcom/amazon/android/docviewer/pdf/PdfView;->removeTileView(I)V

    const/4 v0, 0x0

    .line 1277
    invoke-direct {p0, v0}, Lcom/amazon/android/docviewer/pdf/PdfView;->removeTileView(I)V

    .line 1278
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_animationEndHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->updatePages:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1033
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1036
    iget-boolean p1, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_doneInitialDraw:Z

    if-nez p1, :cond_0

    .line 1039
    new-instance p1, Lcom/amazon/android/docviewer/pdf/PdfView$4;

    invoke-direct {p1, p0}, Lcom/amazon/android/docviewer/pdf/PdfView$4;-><init>(Lcom/amazon/android/docviewer/pdf/PdfView;)V

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    .line 1063
    :cond_0
    iget-wide v0, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_postInvalidationLoopEndTime:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_1

    .line 1064
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_postInvalidationLoopEndTime:J

    cmp-long p1, v0, v2

    if-gez p1, :cond_1

    const-wide/16 v0, 0x32

    .line 1065
    invoke-virtual {p0, v0, v1}, Landroid/widget/RelativeLayout;->postInvalidateDelayed(J)V

    :cond_1
    return-void
.end method

.method public doDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 157
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_selectionFilter:Lcom/amazon/android/docviewer/filter/IViewDrawFilter;

    if-eqz v0, :cond_0

    .line 163
    invoke-interface {v0, p1}, Lcom/amazon/android/docviewer/filter/IViewDrawFilter;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 165
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->draw(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method public drawPage()V
    .locals 0

    .line 314
    invoke-direct {p0}, Lcom/amazon/android/docviewer/pdf/PdfView;->loadPages()V

    return-void
.end method

.method public finishFling()V
    .locals 1

    .line 1362
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->momentumScroller:Lcom/amazon/android/docviewer/pdf/PdfViewMomentumScroller;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfViewMomentumScroller;->finishFling()V

    return-void
.end method

.method public finishPan()V
    .locals 1

    const/4 v0, 0x0

    .line 605
    invoke-virtual {p0, v0}, Lcom/amazon/android/docviewer/pdf/PdfView;->finishPan(Z)V

    return-void
.end method

.method public finishPan(Z)V
    .locals 4

    const/4 v0, 0x0

    .line 611
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_isPanning:Z

    .line 613
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_viewer:Lcom/amazon/android/docviewer/pdf/PdfDocViewer;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->getAnnotationAreaManager()Lcom/amazon/android/docviewer/pdf/PdfAnnotationAreaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfAnnotationAreaManager;->rebuildNoteAreas()V

    const/4 v0, 0x1

    .line 614
    invoke-direct {p0, v0}, Lcom/amazon/android/docviewer/pdf/PdfView;->getTileView(I)Lcom/amazon/android/docviewer/pdf/PdfTileView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 623
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfTileView;->finishPan()V

    .line 624
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 625
    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_scrollLockManager:Lcom/amazon/android/docviewer/ScrollLockManager;

    invoke-virtual {v1, p1}, Lcom/amazon/android/docviewer/ScrollLockManager;->onFinishPan(Z)V

    :cond_0
    if-eqz v0, :cond_1

    .line 630
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x7d0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_postInvalidationLoopEndTime:J

    const-wide/16 v0, 0x32

    .line 631
    invoke-virtual {p0, v0, v1}, Landroid/widget/RelativeLayout;->postInvalidateDelayed(J)V

    :cond_1
    return-void
.end method

.method public finishZoom()V
    .locals 2

    const/4 v0, 0x0

    .line 639
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_isZooming:Z

    .line 641
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_viewer:Lcom/amazon/android/docviewer/pdf/PdfDocViewer;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->getAnnotationAreaManager()Lcom/amazon/android/docviewer/pdf/PdfAnnotationAreaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfAnnotationAreaManager;->rebuildNoteAreas()V

    const/4 v0, 0x1

    .line 642
    invoke-direct {p0, v0}, Lcom/amazon/android/docviewer/pdf/PdfView;->getTileView(I)Lcom/amazon/android/docviewer/pdf/PdfTileView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 645
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfTileView;->getPdfTileManager()Lcom/amazon/android/docviewer/pdf/PdfTileManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 647
    invoke-virtual {v1}, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->finishZoom()V

    .line 649
    :cond_0
    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_viewer:Lcom/amazon/android/docviewer/pdf/PdfDocViewer;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->onRefresh()V

    .line 650
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    const-string v0, "PdfBasedDocument"

    const-string v1, "ZoomPage"

    .line 652
    invoke-static {v0, v1}, Lcom/amazon/metrics/ClickstreamMetrics;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public forceRefresh()V
    .locals 2

    .line 657
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_refDoc:Lcom/amazon/android/docviewer/pdf/PdfDoc;

    if-nez v0, :cond_0

    return-void

    .line 661
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->getCurrentPageIndex()I

    move-result v0

    const/4 v1, 0x2

    .line 662
    invoke-direct {p0, v1}, Lcom/amazon/android/docviewer/pdf/PdfView;->removeTileView(I)V

    const/4 v1, 0x1

    .line 663
    invoke-direct {p0, v1}, Lcom/amazon/android/docviewer/pdf/PdfView;->removeTileView(I)V

    const/4 v1, 0x0

    .line 664
    invoke-direct {p0, v1}, Lcom/amazon/android/docviewer/pdf/PdfView;->removeTileView(I)V

    .line 665
    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_refDoc:Lcom/amazon/android/docviewer/pdf/PdfDoc;

    invoke-virtual {v1, v0}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->setCurrentPageIndex(I)Z

    .line 666
    invoke-direct {p0}, Lcom/amazon/android/docviewer/pdf/PdfView;->loadPages()V

    return-void
.end method

.method getCurrentPage()Lcom/amazon/android/docviewer/pdf/PdfPage;
    .locals 1

    const/4 v0, 0x1

    .line 671
    invoke-direct {p0, v0}, Lcom/amazon/android/docviewer/pdf/PdfView;->getTileView(I)Lcom/amazon/android/docviewer/pdf/PdfTileView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 673
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfTileView;->getPdfPage()Lcom/amazon/android/docviewer/pdf/PdfPage;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method final getCurrentTileView()Lcom/amazon/android/docviewer/pdf/PdfTileView;
    .locals 1

    const/4 v0, 0x1

    .line 1127
    invoke-direct {p0, v0}, Lcom/amazon/android/docviewer/pdf/PdfView;->getTileView(I)Lcom/amazon/android/docviewer/pdf/PdfTileView;

    move-result-object v0

    return-object v0
.end method

.method public final getCurrentZoomScale()F
    .locals 1

    .line 1267
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfView;->getCurrentPage()Lcom/amazon/android/docviewer/pdf/PdfPage;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/android/docviewer/pdf/PdfView;->getZoomScale(Lcom/amazon/android/docviewer/pdf/PdfPage;)F

    move-result v0

    return v0
.end method

.method public getDrawFilter()Lcom/amazon/android/docviewer/filter/IViewDrawFilter;
    .locals 1

    .line 1419
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_drawFilter:Lcom/amazon/android/docviewer/filter/IViewDrawFilter;

    return-object v0
.end method

.method public getFooterRect()Landroid/graphics/Rect;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeaderRect()Landroid/graphics/Rect;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPageMargins()Landroid/view/ViewGroup$MarginLayoutParams;
    .locals 2

    .line 369
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 370
    :cond_0
    new-instance v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public getPageTurnOffset()I
    .locals 1

    .line 241
    iget v0, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_pageTurnOffset:I

    return v0
.end method

.method public getScaleX()F
    .locals 1

    const/4 v0, 0x1

    .line 1283
    invoke-direct {p0, v0}, Lcom/amazon/android/docviewer/pdf/PdfView;->getTileView(I)Lcom/amazon/android/docviewer/pdf/PdfTileView;

    move-result-object v0

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 1284
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfTileView;->getScaleX()F

    move-result v0

    :goto_0
    return v0
.end method

.method public getScaleY()F
    .locals 1

    const/4 v0, 0x1

    .line 1289
    invoke-direct {p0, v0}, Lcom/amazon/android/docviewer/pdf/PdfView;->getTileView(I)Lcom/amazon/android/docviewer/pdf/PdfTileView;

    move-result-object v0

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 1290
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfTileView;->getScaleY()F

    move-result v0

    :goto_0
    return v0
.end method

.method public getScrollLockManager()Lcom/amazon/android/docviewer/ScrollLockManager;
    .locals 1

    .line 1301
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_scrollLockManager:Lcom/amazon/android/docviewer/ScrollLockManager;

    return-object v0
.end method

.method public getSelectionFilter()Lcom/amazon/android/docviewer/filter/IViewDrawFilter;
    .locals 1

    .line 1424
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_selectionFilter:Lcom/amazon/android/docviewer/filter/IViewDrawFilter;

    return-object v0
.end method

.method public getViewport()Landroid/graphics/RectF;
    .locals 1

    .line 1295
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfView;->getCurrentPage()Lcom/amazon/android/docviewer/pdf/PdfPage;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1296
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getViewport()Landroid/graphics/RectF;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method protected declared-synchronized gotoNextPage()V
    .locals 2

    monitor-enter p0

    .line 249
    :try_start_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_refDoc:Lcom/amazon/android/docviewer/pdf/PdfDoc;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->getCurrentPageIndex()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0, v1}, Lcom/amazon/android/docviewer/pdf/PdfView;->gotoPage(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized gotoPage(I)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 245
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/amazon/android/docviewer/pdf/PdfView;->gotoPage(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized gotoPage(IZ)V
    .locals 5

    monitor-enter p0

    .line 264
    :try_start_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_refDoc:Lcom/amazon/android/docviewer/pdf/PdfDoc;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->getCurrentPageIndex()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    .line 266
    monitor-exit p0

    return-void

    .line 269
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_viewer:Lcom/amazon/android/docviewer/pdf/PdfDocViewer;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getSearchResults()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 272
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/krx/search/ISearchResult;

    .line 273
    instance-of v4, v3, Lcom/amazon/kcp/search/InBookContentSearchResult;

    if-eqz v4, :cond_1

    .line 274
    check-cast v3, Lcom/amazon/kcp/search/InBookContentSearchResult;

    .line 275
    iget-object v4, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_viewer:Lcom/amazon/android/docviewer/pdf/PdfDocViewer;

    .line 276
    invoke-virtual {v3}, Lcom/amazon/kcp/search/InBookContentSearchResult;->getPositionRange()Lcom/amazon/android/docviewer/IPositionRange;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v3

    .line 275
    invoke-virtual {v4, v3}, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->getPageIndexFromPosition(I)I

    move-result v3

    if-ne p1, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    .line 285
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_viewer:Lcom/amazon/android/docviewer/pdf/PdfDocViewer;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->refreshSearchResults()V

    .line 289
    :cond_3
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_viewer:Lcom/amazon/android/docviewer/pdf/PdfDocViewer;

    invoke-virtual {v0, v2}, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->onDocViewerBeforePositionChanged(I)V

    .line 290
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_refDoc:Lcom/amazon/android/docviewer/pdf/PdfDoc;

    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->setCurrentPageIndex(I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 291
    invoke-direct {p0}, Lcom/amazon/android/docviewer/pdf/PdfView;->stopAnyPageTurns()V

    if-eqz p2, :cond_4

    .line 293
    invoke-direct {p0}, Lcom/amazon/android/docviewer/pdf/PdfView;->reloadPages()V

    goto :goto_1

    :cond_4
    const/4 p1, 0x2

    .line 295
    invoke-direct {p0, p1}, Lcom/amazon/android/docviewer/pdf/PdfView;->removeTileView(I)V

    .line 296
    invoke-direct {p0, v1}, Lcom/amazon/android/docviewer/pdf/PdfView;->removeTileView(I)V

    .line 297
    invoke-direct {p0, v2}, Lcom/amazon/android/docviewer/pdf/PdfView;->removeTileView(I)V

    .line 301
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_viewer:Lcom/amazon/android/docviewer/pdf/PdfDocViewer;

    invoke-virtual {p1, v2}, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->onDocViewerAfterPositionChanged(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 302
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized gotoPrevPage()V
    .locals 2

    monitor-enter p0

    .line 253
    :try_start_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_refDoc:Lcom/amazon/android/docviewer/pdf/PdfDoc;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->getCurrentPageIndex()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0, v1}, Lcom/amazon/android/docviewer/pdf/PdfView;->gotoPage(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final isAnimating()Z
    .locals 1

    .line 359
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_isPanning:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_isZooming:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfView;->isAnimatingViewChange()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method final isAnimatingViewChange()Z
    .locals 1

    .line 363
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_pdfBase:Lcom/amazon/android/docviewer/animation/AnimatedPageContainer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_pdfBase:Lcom/amazon/android/docviewer/animation/AnimatedPageContainer;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/animation/AnimatedPageContainer;->isAnimationSet()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method isCurrentPageDrawInProgress()Z
    .locals 1

    .line 1312
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_isCurrentPageDrawInProgress:Z

    return v0
.end method

.method public isFlinging()Z
    .locals 1

    .line 1367
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->momentumScroller:Lcom/amazon/android/docviewer/pdf/PdfViewMomentumScroller;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfViewMomentumScroller;->isFlinging()Z

    move-result v0

    return v0
.end method

.method public isPageTurnInteractionDisabled()Z
    .locals 1

    .line 355
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_isPageTurnInteractionDisabled:Z

    return v0
.end method

.method public isZoomed()Z
    .locals 3

    const/4 v0, 0x1

    .line 594
    invoke-direct {p0, v0}, Lcom/amazon/android/docviewer/pdf/PdfView;->getTileView(I)Lcom/amazon/android/docviewer/pdf/PdfTileView;

    move-result-object v1

    .line 595
    invoke-static {v1}, Lcom/amazon/android/docviewer/pdf/PdfView;->getZoomScaleForPdfTileView(Lcom/amazon/android/docviewer/pdf/PdfTileView;)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v1, v2

    .line 596
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x322bcc77    # 1.0E-8f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public lazyloadAccessiblePageSwipePlayer()V
    .locals 3

    .line 1388
    sget-object v0, Lcom/amazon/android/docviewer/pdf/PdfView;->isPageSwipePlayerLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1389
    new-instance v0, Lcom/amazon/android/docviewer/pdf/PdfView$5;

    invoke-direct {v0, p0}, Lcom/amazon/android/docviewer/pdf/PdfView$5;-><init>(Lcom/amazon/android/docviewer/pdf/PdfView;)V

    .line 1406
    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method notifyCurrentPageDrawInProgress()V
    .locals 1

    const/4 v0, 0x1

    .line 1319
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_isCurrentPageDrawInProgress:Z

    return-void
.end method

.method notifyPageDrawingComplete()V
    .locals 2

    const/4 v0, 0x0

    .line 1331
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_isCurrentPageDrawInProgress:Z

    .line 1332
    invoke-direct {p0, v0}, Lcom/amazon/android/docviewer/pdf/PdfView;->getTileView(I)Lcom/amazon/android/docviewer/pdf/PdfTileView;

    move-result-object v0

    const/4 v1, 0x2

    .line 1333
    invoke-direct {p0, v1}, Lcom/amazon/android/docviewer/pdf/PdfView;->getTileView(I)Lcom/amazon/android/docviewer/pdf/PdfTileView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1336
    invoke-virtual {v1}, Lcom/amazon/android/docviewer/pdf/PdfTileView;->preRender()V

    :cond_0
    if-eqz v0, :cond_1

    .line 1340
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfTileView;->preRender()V

    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 823
    sget-boolean p1, Lcom/amazon/android/docviewer/pdf/PdfView;->m_debug:Z

    if-eqz p1, :cond_0

    .line 824
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onLayout: doneInitalDraw="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_doneInitialDraw:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 827
    :cond_0
    iget-boolean p1, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_doneInitialDraw:Z

    if-eqz p1, :cond_2

    .line 828
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 830
    iget p2, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_savedOrientation:I

    const/4 p3, -0x1

    if-eq p2, p3, :cond_1

    if-eq p2, p1, :cond_2

    .line 831
    :cond_1
    iput p1, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_savedOrientation:I

    const/4 p1, 0x0

    .line 834
    iput p1, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_pageTurnOffset:I

    .line 836
    iget-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_viewer:Lcom/amazon/android/docviewer/pdf/PdfDocViewer;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->onPageLayoutChanged()V

    .line 843
    :cond_2
    iget-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_pageTurnAnimationDirection:Lcom/amazon/android/docviewer/KindleDocView$AnimationDirection;

    if-nez p1, :cond_5

    .line 844
    iget p1, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_pageTurnOffset:I

    if-lez p1, :cond_3

    sget-object p1, Lcom/amazon/android/docviewer/KindleDocView$AnimationDirection;->ToRight:Lcom/amazon/android/docviewer/KindleDocView$AnimationDirection;

    goto :goto_0

    :cond_3
    if-gez p1, :cond_4

    sget-object p1, Lcom/amazon/android/docviewer/KindleDocView$AnimationDirection;->ToLeft:Lcom/amazon/android/docviewer/KindleDocView$AnimationDirection;

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/amazon/android/docviewer/pdf/PdfView;->layoutPages(Lcom/amazon/android/docviewer/KindleDocView$AnimationDirection;)V

    goto :goto_1

    .line 847
    :cond_5
    invoke-direct {p0, p1}, Lcom/amazon/android/docviewer/pdf/PdfView;->layoutPages(Lcom/amazon/android/docviewer/KindleDocView$AnimationDirection;)V

    .line 850
    :goto_1
    iget-boolean p1, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->animationDisabled:Z

    if-eqz p1, :cond_6

    .line 851
    invoke-direct {p0}, Lcom/amazon/android/docviewer/pdf/PdfView;->onPageTurnEnd()V

    goto :goto_2

    .line 853
    :cond_6
    iget-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_pdfBase:Lcom/amazon/android/docviewer/animation/AnimatedPageContainer;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/animation/AnimatedPageContainer;->startAnimation()V

    .line 856
    :goto_2
    sget-boolean p1, Lcom/amazon/android/docviewer/pdf/PdfView;->m_debug:Z

    return-void
.end method

.method public panPage(FF)V
    .locals 2

    .line 405
    sget-boolean v0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_debug:Z

    if-eqz v0, :cond_0

    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "panPage("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    const/4 v0, 0x1

    .line 409
    invoke-direct {p0, v0}, Lcom/amazon/android/docviewer/pdf/PdfView;->getTileView(I)Lcom/amazon/android/docviewer/pdf/PdfTileView;

    move-result-object v0

    .line 424
    invoke-virtual {p0, p1, p2}, Lcom/amazon/android/docviewer/pdf/PdfView;->applyPanningTransformation(FF)V

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    .line 426
    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/pdf/PdfTileView;->drawScrollBar(Z)V

    .line 427
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 431
    :cond_1
    iget-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_drawFilter:Lcom/amazon/android/docviewer/filter/IViewDrawFilter;

    if-eqz p1, :cond_2

    .line 432
    invoke-interface {p1}, Lcom/amazon/android/docviewer/filter/IViewDrawFilter;->enable()V

    :cond_2
    return-void
.end method

.method public panPageByReferencePoint(FF)V
    .locals 2

    .line 438
    sget-boolean v0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_debug:Z

    if-eqz v0, :cond_0

    .line 439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "panPageByReferencePoint("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    const/4 v0, 0x1

    .line 442
    invoke-direct {p0, v0}, Lcom/amazon/android/docviewer/pdf/PdfView;->getTileView(I)Lcom/amazon/android/docviewer/pdf/PdfTileView;

    move-result-object v0

    .line 457
    invoke-virtual {p0, p1, p2}, Lcom/amazon/android/docviewer/pdf/PdfView;->applyPanningTransformationByReferencePoint(FF)V

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    .line 459
    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/pdf/PdfTileView;->drawScrollBar(Z)V

    .line 460
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public preRender()V
    .locals 0

    .line 306
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfView;->drawPage()V

    return-void
.end method

.method public refresh()V
    .locals 2

    .line 335
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_pdfBase:Lcom/amazon/android/docviewer/animation/AnimatedPageContainer;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/animation/AnimatedPageContainer;->isAnimationSet()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 336
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_isPageTurnInteractionDisabled:Z

    .line 337
    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_pdfBase:Lcom/amazon/android/docviewer/animation/AnimatedPageContainer;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/animation/AnimatedPageContainer;->removeAnimation()V

    .line 338
    iput v0, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_pageTurnOffset:I

    .line 339
    iput v0, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_lastRevisedOffset:I

    const/4 v1, 0x0

    .line 340
    iput-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_pageTurnDirection:Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;

    .line 341
    invoke-virtual {p0, v1, v0}, Lcom/amazon/android/docviewer/KindleDocView;->setRawPageTurnOffset(Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;I)V

    .line 342
    iput-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_pageTurnAnimationDirection:Lcom/amazon/android/docviewer/KindleDocView$AnimationDirection;

    .line 343
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    :cond_0
    const/4 v0, 0x1

    .line 347
    invoke-direct {p0, v0}, Lcom/amazon/android/docviewer/pdf/PdfView;->getTileView(I)Lcom/amazon/android/docviewer/pdf/PdfTileView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 349
    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    :cond_1
    return-void
.end method

.method public refreshDecorationProvider(Lcom/amazon/kindle/krx/ui/IContentDecorationProvider;)V
    .locals 0

    .line 1414
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfView;->refresh()V

    return-void
.end method

.method public resetZoom(FF)V
    .locals 6

    const/4 v0, 0x1

    .line 562
    invoke-direct {p0, v0}, Lcom/amazon/android/docviewer/pdf/PdfView;->getTileView(I)Lcom/amazon/android/docviewer/pdf/PdfTileView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 568
    :cond_0
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 569
    invoke-static {v0}, Lcom/amazon/android/docviewer/pdf/PdfView;->getZoomScaleForPdfTileView(Lcom/amazon/android/docviewer/pdf/PdfTileView;)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    div-float v2, v3, v2

    .line 570
    invoke-virtual {v1, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 573
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfTileView;->getPdfTileManager()Lcom/amazon/android/docviewer/pdf/PdfTileManager;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 575
    new-instance v5, Landroid/graphics/Point;

    float-to-int p1, p1

    float-to-int p2, p2

    invoke-direct {v5, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v4, v5}, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->mapScreenToWorldPoint(Landroid/graphics/Point;)Landroid/graphics/PointF;

    move-result-object p1

    .line 577
    iget p2, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v2

    mul-float p2, p2, v3

    iget p1, p1, Landroid/graphics/PointF;->y:F

    mul-float p1, p1, v3

    invoke-virtual {v1, p2, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 579
    invoke-virtual {v4, v1}, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->applyMatrix(Landroid/graphics/Matrix;)V

    .line 581
    :cond_1
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfTileView;->getScaleX()F

    move-result p1

    mul-float p1, p1, v2

    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/pdf/PdfTileView;->setScaleX(F)V

    .line 582
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfTileView;->getScaleY()F

    move-result p1

    mul-float v2, v2, p1

    invoke-virtual {v0, v2}, Lcom/amazon/android/docviewer/pdf/PdfTileView;->setScaleY(F)V

    .line 583
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 585
    iget-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_drawFilter:Lcom/amazon/android/docviewer/filter/IViewDrawFilter;

    if-eqz p1, :cond_2

    .line 586
    invoke-interface {p1}, Lcom/amazon/android/docviewer/filter/IViewDrawFilter;->disable()V

    :cond_2
    return-void
.end method

.method public setDocReferencePoint(FF)V
    .locals 2

    const/4 v0, 0x1

    .line 467
    invoke-direct {p0, v0}, Lcom/amazon/android/docviewer/pdf/PdfView;->getTileView(I)Lcom/amazon/android/docviewer/pdf/PdfTileView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 468
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfTileView;->getPdfTileManager()Lcom/amazon/android/docviewer/pdf/PdfTileManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 469
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfTileView;->getPdfTileManager()Lcom/amazon/android/docviewer/pdf/PdfTileManager;

    move-result-object v0

    .line 470
    new-instance v1, Landroid/graphics/Point;

    float-to-int p1, p1

    float-to-int p2, p2

    invoke-direct {v1, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->mapScreenToWorldPoint(Landroid/graphics/Point;)Landroid/graphics/PointF;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_docReferencePoint:Landroid/graphics/PointF;

    :cond_0
    return-void
.end method

.method public setPageTurnOffset(Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;I)V
    .locals 0

    .line 319
    invoke-direct {p0, p2}, Lcom/amazon/android/docviewer/pdf/PdfView;->reviseOffsetWithPanDistance(I)F

    move-result p2

    float-to-int p2, p2

    .line 321
    iput p2, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_pageTurnOffset:I

    .line 322
    iput-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_pageTurnDirection:Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;

    .line 323
    iget-boolean p1, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->animationDisabled:Z

    if-eqz p1, :cond_0

    return-void

    .line 327
    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    return-void
.end method

.method public setTitleVisibility(ZZ)V
    .locals 0

    return-void
.end method

.method public startFling(FF)V
    .locals 1

    .line 1357
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->momentumScroller:Lcom/amazon/android/docviewer/pdf/PdfViewMomentumScroller;

    float-to-int p1, p1

    float-to-int p2, p2

    invoke-virtual {v0, p1, p2}, Lcom/amazon/android/docviewer/pdf/PdfViewMomentumScroller;->start(II)V

    return-void
.end method

.method public startPan()V
    .locals 1

    const/4 v0, 0x1

    .line 377
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_isPanning:Z

    .line 379
    invoke-direct {p0, v0}, Lcom/amazon/android/docviewer/pdf/PdfView;->getTileView(I)Lcom/amazon/android/docviewer/pdf/PdfTileView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 381
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfTileView;->startPan()V

    .line 382
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_scrollLockManager:Lcom/amazon/android/docviewer/ScrollLockManager;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/ScrollLockManager;->onStartPan()V

    :cond_0
    return-void
.end method

.method public startZoom()V
    .locals 2

    const/4 v0, 0x1

    .line 389
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_isZooming:Z

    .line 390
    invoke-direct {p0, v0}, Lcom/amazon/android/docviewer/pdf/PdfView;->getTileView(I)Lcom/amazon/android/docviewer/pdf/PdfTileView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 391
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfTileView;->getPdfTileManager()Lcom/amazon/android/docviewer/pdf/PdfTileManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 392
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfTileView;->getPdfTileManager()Lcom/amazon/android/docviewer/pdf/PdfTileManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 394
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->startZoom()V

    :cond_0
    return-void
.end method

.method public turnPage(Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;Lcom/amazon/android/docviewer/KindleDocView$AnimationDirection;F)Z
    .locals 1

    .line 225
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_isPageTurnInteractionDisabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_isZooming:Z

    if-nez v0, :cond_1

    .line 226
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_viewer:Lcom/amazon/android/docviewer/pdf/PdfDocViewer;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->beforePageTurn()V

    .line 227
    iput-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_pageTurnDirection:Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;

    .line 228
    iput-object p2, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_pageTurnAnimationDirection:Lcom/amazon/android/docviewer/KindleDocView$AnimationDirection;

    .line 229
    invoke-direct {p0, p3}, Lcom/amazon/android/docviewer/pdf/PdfView;->checkIfNeedToTurnPage(F)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 230
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isTouchExplorationEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 231
    invoke-direct {p0}, Lcom/amazon/android/docviewer/pdf/PdfView;->startOrLoadAccessiblePageSwipePlayer()V

    :cond_0
    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public zoom(FFF)V
    .locals 4

    const/4 v0, 0x1

    .line 529
    invoke-direct {p0, v0}, Lcom/amazon/android/docviewer/pdf/PdfView;->getTileView(I)Lcom/amazon/android/docviewer/pdf/PdfTileView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 535
    :cond_0
    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_cached_zoomingMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    const/high16 v1, 0x3f800000    # 1.0f

    div-float p1, v1, p1

    .line 537
    iget-object v2, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_cached_zoomingMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, p1, p1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 540
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfTileView;->getPdfTileManager()Lcom/amazon/android/docviewer/pdf/PdfTileManager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 542
    new-instance v3, Landroid/graphics/Point;

    float-to-int p2, p2

    float-to-int p3, p3

    invoke-direct {v3, p2, p3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->mapScreenToWorldPoint(Landroid/graphics/Point;)Landroid/graphics/PointF;

    move-result-object p2

    .line 544
    iget-object p3, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_cached_zoomingMatrix:Landroid/graphics/Matrix;

    iget v3, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, p1

    mul-float v3, v3, v1

    iget p1, p2, Landroid/graphics/PointF;->y:F

    mul-float p1, p1, v1

    invoke-virtual {p3, v3, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 546
    iget-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_cached_zoomingMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, p1}, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->applyMatrix(Landroid/graphics/Matrix;)V

    .line 548
    invoke-static {v0}, Lcom/amazon/android/docviewer/pdf/PdfView;->getZoomScaleForPdfTileView(Lcom/amazon/android/docviewer/pdf/PdfTileView;)F

    move-result p1

    .line 549
    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/pdf/PdfTileView;->setScaleX(F)V

    .line 550
    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/pdf/PdfTileView;->setScaleY(F)V

    :cond_1
    const/4 p1, 0x0

    .line 553
    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/pdf/PdfTileView;->drawScrollBar(Z)V

    .line 554
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 555
    iget-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfView;->m_drawFilter:Lcom/amazon/android/docviewer/filter/IViewDrawFilter;

    if-eqz p1, :cond_2

    .line 556
    invoke-interface {p1}, Lcom/amazon/android/docviewer/filter/IViewDrawFilter;->enable()V

    :cond_2
    return-void
.end method
