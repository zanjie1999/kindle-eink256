.class public Lcom/amazon/android/docviewer/pdf/PdfViewMomentumScroller;
.super Ljava/lang/Object;
.source "PdfViewMomentumScroller.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# static fields
.field private static final FLING_VELOCITY_SCALE:I = 0x2

.field private static final SCROLL_DIRECTION_LOCK_VELOCITY_RATIO:F = 3.0f

.field private static final VIEWPORT_EDGE_EPSILON:F = 0.005f


# instance fields
.field private animation:Lcom/amazon/android/docviewer/pdf/PdfViewScrollingAnimation;

.field private final pdfView:Lcom/amazon/android/docviewer/pdf/PdfView;

.field private final scroller:Landroid/widget/Scroller;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/amazon/android/docviewer/pdf/PdfView;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfViewMomentumScroller;->scroller:Landroid/widget/Scroller;

    .line 33
    iput-object p2, p0, Lcom/amazon/android/docviewer/pdf/PdfViewMomentumScroller;->pdfView:Lcom/amazon/android/docviewer/pdf/PdfView;

    return-void
.end method

.method private getAdjustedVelocityX(II)I
    .locals 2

    .line 139
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    int-to-float p2, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40400000    # 3.0f

    mul-float v0, v0, v1

    cmpl-float p2, p2, v0

    if-lez p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    return p1
.end method

.method private getAdjustedVelocityY(II)I
    .locals 2

    .line 143
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40400000    # 3.0f

    mul-float v0, v0, v1

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    const/4 p2, 0x0

    :cond_0
    return p2
.end method


# virtual methods
.method public canFling(II)Z
    .locals 5

    .line 37
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfViewMomentumScroller;->pdfView:Lcom/amazon/android/docviewer/pdf/PdfView;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfView;->getCurrentTileView()Lcom/amazon/android/docviewer/pdf/PdfTileView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 39
    invoke-virtual {v0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfTileView;->getPdfPage()Lcom/amazon/android/docviewer/pdf/PdfPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getViewport()Landroid/graphics/RectF;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 49
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/amazon/android/docviewer/pdf/PdfViewMomentumScroller;->getAdjustedVelocityX(II)I

    move-result v2

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/amazon/android/docviewer/pdf/PdfViewMomentumScroller;->getAdjustedVelocityY(II)I

    move-result p1

    const/4 p2, 0x1

    const v3, 0x3f7eb852    # 0.995f

    if-gez v2, :cond_2

    .line 53
    iget v4, v0, Landroid/graphics/RectF;->right:F

    cmpg-float v4, v4, v3

    if-ltz v4, :cond_3

    :cond_2
    const v4, 0x3ba3d70a    # 0.005f

    if-lez v2, :cond_4

    iget v2, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v2, v2, v4

    if-lez v2, :cond_4

    :cond_3
    return p2

    :cond_4
    if-gez p1, :cond_5

    .line 62
    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_6

    :cond_5
    if-lez p1, :cond_7

    iget p1, v0, Landroid/graphics/RectF;->top:F

    cmpl-float p1, p1, v4

    if-lez p1, :cond_7

    :cond_6
    return p2

    :cond_7
    :goto_0
    return v1
.end method

.method finishFling()V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfViewMomentumScroller;->animation:Lcom/amazon/android/docviewer/pdf/PdfViewScrollingAnimation;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfViewMomentumScroller;->animation:Lcom/amazon/android/docviewer/pdf/PdfViewScrollingAnimation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    :cond_0
    return-void
.end method

.method isFlinging()Z
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfViewMomentumScroller;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .line 115
    iget-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfViewMomentumScroller;->scroller:Landroid/widget/Scroller;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 116
    iget-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfViewMomentumScroller;->pdfView:Lcom/amazon/android/docviewer/pdf/PdfView;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/pdf/PdfView;->getCurrentTileView()Lcom/amazon/android/docviewer/pdf/PdfTileView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 118
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/pdf/PdfTileView;->finishFling()V

    .line 119
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 123
    :cond_0
    iget-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfViewMomentumScroller;->pdfView:Lcom/amazon/android/docviewer/pdf/PdfView;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v0}, Lcom/amazon/android/docviewer/pdf/PdfView;->turnPage(Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;Lcom/amazon/android/docviewer/KindleDocView$AnimationDirection;F)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .line 132
    iget-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfViewMomentumScroller;->pdfView:Lcom/amazon/android/docviewer/pdf/PdfView;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/pdf/PdfView;->getCurrentTileView()Lcom/amazon/android/docviewer/pdf/PdfTileView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 134
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/pdf/PdfTileView;->startFling()V

    :cond_0
    return-void
.end method

.method start(II)V
    .locals 19

    move-object/from16 v0, p0

    .line 74
    iget-object v1, v0, Lcom/amazon/android/docviewer/pdf/PdfViewMomentumScroller;->pdfView:Lcom/amazon/android/docviewer/pdf/PdfView;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/pdf/PdfView;->getCurrentTileView()Lcom/amazon/android/docviewer/pdf/PdfTileView;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 76
    invoke-direct/range {p0 .. p2}, Lcom/amazon/android/docviewer/pdf/PdfViewMomentumScroller;->getAdjustedVelocityX(II)I

    move-result v2

    .line 77
    invoke-direct/range {p0 .. p2}, Lcom/amazon/android/docviewer/pdf/PdfViewMomentumScroller;->getAdjustedVelocityY(II)I

    move-result v3

    .line 79
    new-instance v4, Landroid/graphics/RectF;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/pdf/PdfTileView;->getPdfPage()Lcom/amazon/android/docviewer/pdf/PdfPage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getViewport()Landroid/graphics/RectF;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 80
    invoke-virtual {v4}, Landroid/graphics/RectF;->sort()V

    .line 82
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v6

    div-float/2addr v5, v6

    .line 83
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v7

    div-float/2addr v6, v7

    .line 85
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v7

    const/4 v8, 0x0

    const v9, 0x3f7eb852    # 0.995f

    cmpl-float v7, v7, v9

    if-lez v7, :cond_0

    const/4 v7, 0x0

    goto :goto_0

    :cond_0
    iget v7, v4, Landroid/graphics/RectF;->left:F

    mul-float v7, v7, v5

    :goto_0
    float-to-int v7, v7

    .line 86
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v10

    cmpl-float v10, v10, v9

    if-lez v10, :cond_1

    const/4 v10, 0x0

    goto :goto_1

    :cond_1
    iget v10, v4, Landroid/graphics/RectF;->top:F

    mul-float v10, v10, v6

    :goto_1
    float-to-int v15, v10

    .line 88
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v10

    const/high16 v11, 0x3f800000    # 1.0f

    cmpl-float v10, v10, v9

    if-lez v10, :cond_2

    const/4 v10, 0x0

    goto :goto_2

    :cond_2
    iget v10, v4, Landroid/graphics/RectF;->right:F

    sub-float/2addr v10, v11

    mul-float v10, v10, v5

    :goto_2
    float-to-int v5, v10

    .line 89
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v10

    cmpl-float v9, v10, v9

    if-lez v9, :cond_3

    goto :goto_3

    :cond_3
    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v11

    mul-float v8, v4, v6

    :goto_3
    float-to-int v4, v8

    .line 91
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/android/docviewer/pdf/PdfViewMomentumScroller;->finishFling()V

    .line 92
    iget-object v10, v0, Lcom/amazon/android/docviewer/pdf/PdfViewMomentumScroller;->scroller:Landroid/widget/Scroller;

    const/4 v11, 0x0

    const/4 v12, 0x0

    div-int/lit8 v13, v2, 0x2

    div-int/lit8 v14, v3, 0x2

    move v2, v15

    move v15, v5

    move/from16 v16, v7

    move/from16 v17, v4

    move/from16 v18, v2

    invoke-virtual/range {v10 .. v18}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 95
    new-instance v2, Lcom/amazon/android/docviewer/pdf/PdfViewScrollingAnimation;

    iget-object v3, v0, Lcom/amazon/android/docviewer/pdf/PdfViewMomentumScroller;->pdfView:Lcom/amazon/android/docviewer/pdf/PdfView;

    iget-object v4, v0, Lcom/amazon/android/docviewer/pdf/PdfViewMomentumScroller;->scroller:Landroid/widget/Scroller;

    invoke-direct {v2, v3, v4}, Lcom/amazon/android/docviewer/pdf/PdfViewScrollingAnimation;-><init>(Lcom/amazon/android/docviewer/pdf/PdfView;Landroid/widget/Scroller;)V

    iput-object v2, v0, Lcom/amazon/android/docviewer/pdf/PdfViewMomentumScroller;->animation:Lcom/amazon/android/docviewer/pdf/PdfViewScrollingAnimation;

    .line 96
    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 97
    iget-object v2, v0, Lcom/amazon/android/docviewer/pdf/PdfViewMomentumScroller;->animation:Lcom/amazon/android/docviewer/pdf/PdfViewScrollingAnimation;

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 98
    iget-object v2, v0, Lcom/amazon/android/docviewer/pdf/PdfViewMomentumScroller;->animation:Lcom/amazon/android/docviewer/pdf/PdfViewScrollingAnimation;

    iget-object v3, v0, Lcom/amazon/android/docviewer/pdf/PdfViewMomentumScroller;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getDuration()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 99
    iget-object v2, v0, Lcom/amazon/android/docviewer/pdf/PdfViewMomentumScroller;->animation:Lcom/amazon/android/docviewer/pdf/PdfViewScrollingAnimation;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_4
    return-void
.end method
