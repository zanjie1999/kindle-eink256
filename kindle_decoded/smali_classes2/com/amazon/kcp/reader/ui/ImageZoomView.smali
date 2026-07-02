.class public Lcom/amazon/kcp/reader/ui/ImageZoomView;
.super Landroid/widget/RelativeLayout;
.source "ImageZoomView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final DEFAULT_MAX_ZOOM:F = 5.0f

.field private static final DEFAULT_MIN_ZOOM:F = 1.0f

.field private static final MIN_DEFAULT_TO_MAX_ZOOM_MULTIPLIER:F = 2.0f

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private applyDefaultZoomBeforeDraw:Z

.field private final bitmapPaint:Landroid/graphics/Paint;

.field private defaultZoom:F

.field private delayedFocalPointX:F

.field private delayedFocalPointY:F

.field private drawFilter:Lcom/amazon/android/docviewer/filter/IViewDrawFilter;

.field private focalPointX:F

.field private focalPointY:F

.field private ignoreNextMove:Z

.field protected imageProvider:Lcom/amazon/android/docviewer/ImageProvider;

.field private inPinch:Z

.field private lastPinchDistance:F

.field private maxAllowedZoom:F

.field private maxZoom:F

.field private minZoom:F

.field private setFocalPointBeforeDraw:Z

.field protected final sourceRect:Landroid/graphics/Rect;

.field private touchX:F

.field private touchY:F

.field protected final viewPort:Landroid/graphics/RectF;

.field private zoom:F

.field private zoomActivity:Lcom/amazon/kcp/reader/ImageZoomActivity;

.field private zoomMade:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-class v0, Lcom/amazon/kcp/reader/ui/ImageZoomView;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 194
    invoke-direct {p0, p1, v0}, Lcom/amazon/kcp/reader/ui/ImageZoomView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 203
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 43
    iput-boolean p2, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->inPinch:Z

    const/high16 v0, 0x40a00000    # 5.0f

    .line 47
    iput v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->maxAllowedZoom:F

    .line 56
    iput-boolean p2, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->ignoreNextMove:Z

    .line 74
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->sourceRect:Landroid/graphics/Rect;

    .line 90
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->viewPort:Landroid/graphics/RectF;

    .line 107
    iput-boolean p2, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->applyDefaultZoomBeforeDraw:Z

    .line 114
    iput-boolean p2, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->setFocalPointBeforeDraw:Z

    const/high16 v0, -0x40800000    # -1.0f

    .line 163
    iput v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->maxZoom:F

    .line 170
    iput v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->minZoom:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 176
    iput v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->defaultZoom:F

    .line 181
    iput-boolean p2, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->zoomMade:Z

    .line 205
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->bitmapPaint:Landroid/graphics/Paint;

    .line 207
    invoke-virtual {p0, p0}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 209
    invoke-static {p1}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    .line 210
    invoke-interface {p1, p2, p0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->createViewDrawFilter(ILandroid/view/View;)Lcom/amazon/android/docviewer/filter/IViewDrawFilter;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->drawFilter:Lcom/amazon/android/docviewer/filter/IViewDrawFilter;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/reader/ui/ImageZoomView;)Lcom/amazon/kcp/reader/ImageZoomActivity;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->zoomActivity:Lcom/amazon/kcp/reader/ImageZoomActivity;

    return-object p0
.end method

.method private calculateZoomLevels()V
    .locals 4

    .line 287
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->imageProvider:Lcom/amazon/android/docviewer/ImageProvider;

    if-eqz v0, :cond_2

    .line 291
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/ImageProvider;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->imageProvider:Lcom/amazon/android/docviewer/ImageProvider;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/ImageProvider;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 292
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x40000000    # 2.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 302
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->imageProvider:Lcom/amazon/android/docviewer/ImageProvider;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/ImageProvider;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->defaultZoom:F

    .line 306
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->imageProvider:Lcom/amazon/android/docviewer/ImageProvider;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/ImageProvider;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    div-float/2addr v0, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->minZoom:F

    goto :goto_0

    .line 309
    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->imageProvider:Lcom/amazon/android/docviewer/ImageProvider;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/ImageProvider;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->defaultZoom:F

    .line 313
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->imageProvider:Lcom/amazon/android/docviewer/ImageProvider;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/ImageProvider;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    div-float/2addr v0, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->minZoom:F

    .line 321
    :goto_0
    iget v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->defaultZoom:F

    iget v1, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->maxAllowedZoom:F

    div-float v2, v1, v3

    cmpl-float v2, v0, v2

    if-lez v2, :cond_1

    .line 322
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->maxZoom:F

    .line 323
    iget v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->maxAllowedZoom:F

    div-float/2addr v0, v3

    iput v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->defaultZoom:F

    goto :goto_1

    .line 325
    :cond_1
    iput v1, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->maxZoom:F

    :goto_1
    return-void

    .line 288
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot compute default zoom level as no bitmaps has been set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private modifyZoom(FFF)V
    .locals 7

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-lez v1, :cond_4

    .line 368
    iget v1, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->minZoom:F

    cmpg-float v1, v1, v0

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->maxZoom:F

    cmpg-float v0, v1, v0

    if-gez v0, :cond_1

    .line 370
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ImageZoomView;->calculateZoomLevels()V

    .line 372
    :cond_1
    iget v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->minZoom:F

    iget v1, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->zoom:F

    float-to-double v2, v1

    const-wide/16 v4, 0x0

    cmpl-double v6, v2, v4

    if-nez v6, :cond_2

    goto :goto_0

    :cond_2
    mul-float p1, p1, v1

    :goto_0
    iget v1, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->maxZoom:F

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/kcp/reader/ui/ImageZoomView;->setZoom(FFF)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 374
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->drawFilter:Lcom/amazon/android/docviewer/filter/IViewDrawFilter;

    if-eqz p1, :cond_3

    .line 375
    invoke-interface {p1}, Lcom/amazon/android/docviewer/filter/IViewDrawFilter;->enable()V

    :cond_3
    return-void

    .line 366
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot pass 0 or negative number to increaseZoom(float)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected adjustDestinationRectForPadding(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0

    return-object p1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 612
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->drawFilter:Lcom/amazon/android/docviewer/filter/IViewDrawFilter;

    if-eqz v0, :cond_0

    .line 613
    invoke-interface {v0, p1}, Lcom/amazon/android/docviewer/filter/IViewDrawFilter;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 615
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->draw(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method public getDefaultZoom()F
    .locals 1

    .line 266
    iget v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->defaultZoom:F

    return v0
.end method

.method public getFocalPointX()F
    .locals 1

    .line 420
    iget v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->focalPointX:F

    return v0
.end method

.method public getFocalPointY()F
    .locals 1

    .line 428
    iget v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->focalPointY:F

    return v0
.end method

.method public getImageHeight()I
    .locals 2

    .line 775
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->imageProvider:Lcom/amazon/android/docviewer/ImageProvider;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/ImageProvider;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->zoom:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getImageWidth()I
    .locals 2

    .line 771
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->imageProvider:Lcom/amazon/android/docviewer/ImageProvider;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/ImageProvider;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->zoom:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getViewPort()Landroid/graphics/RectF;
    .locals 1

    .line 763
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->viewPort:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getZoom()F
    .locals 1

    .line 257
    iget v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->zoom:F

    return v0
.end method

.method public modifyZoom(F)V
    .locals 2

    .line 353
    iget v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->focalPointX:F

    iget v1, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->focalPointY:F

    invoke-direct {p0, p1, v0, v1}, Lcom/amazon/kcp/reader/ui/ImageZoomView;->modifyZoom(FFF)V

    return-void
.end method

.method public modifyZoomAboutPoint(FFF)V
    .locals 3

    .line 342
    iget v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->focalPointX:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr p2, v2

    mul-float p2, p2, v1

    iget v2, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->zoom:F

    div-float/2addr p2, v2

    sub-float/2addr v0, p2

    .line 343
    iget p2, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->focalPointY:F

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr p3, v2

    mul-float v1, v1, p3

    iget p3, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->zoom:F

    div-float/2addr v1, p3

    sub-float/2addr p2, v1

    .line 345
    invoke-direct {p0, p1, v0, p2}, Lcom/amazon/kcp/reader/ui/ImageZoomView;->modifyZoom(FFF)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 521
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->applyDefaultZoomBeforeDraw:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->imageProvider:Lcom/amazon/android/docviewer/ImageProvider;

    if-eqz v0, :cond_0

    .line 523
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/ImageProvider;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->imageProvider:Lcom/amazon/android/docviewer/ImageProvider;

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/ImageProvider;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0, v0, v2}, Lcom/amazon/kcp/reader/ui/ImageZoomView;->setFocalPoint(FF)Z

    .line 526
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ImageZoomView;->calculateZoomLevels()V

    .line 529
    iget v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->defaultZoom:F

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ui/ImageZoomView;->setZoom(F)V

    .line 532
    iput-boolean v1, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->applyDefaultZoomBeforeDraw:Z

    .line 534
    :cond_0
    iget v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->minZoom:F

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->maxZoom:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->imageProvider:Lcom/amazon/android/docviewer/ImageProvider;

    if-eqz v0, :cond_2

    .line 536
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ImageZoomView;->calculateZoomLevels()V

    .line 539
    iget v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->minZoom:F

    iget v3, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->maxZoom:F

    iget v4, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->zoom:F

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ui/ImageZoomView;->setZoom(F)V

    .line 542
    :cond_2
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->setFocalPointBeforeDraw:Z

    if-eqz v0, :cond_3

    .line 543
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    if-eqz v0, :cond_3

    .line 544
    iget v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->delayedFocalPointX:F

    iget v3, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->delayedFocalPointY:F

    invoke-virtual {p0, v0, v3}, Lcom/amazon/kcp/reader/ui/ImageZoomView;->setFocalPoint(FF)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 545
    iput-boolean v1, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->setFocalPointBeforeDraw:Z

    .line 550
    :cond_3
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->imageProvider:Lcom/amazon/android/docviewer/ImageProvider;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/ImageProvider;->isClosed()Z

    move-result v0

    if-nez v0, :cond_7

    .line 551
    iget v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->focalPointX:F

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->zoom:F

    div-float/2addr v3, v4

    sub-float/2addr v0, v3

    .line 552
    iget v3, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->focalPointY:F

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget v5, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->zoom:F

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    .line 553
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->zoom:F

    div-float/2addr v4, v5

    add-float/2addr v4, v0

    .line 554
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->zoom:F

    div-float/2addr v5, v6

    add-float/2addr v5, v3

    .line 558
    iget-object v6, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->sourceRect:Landroid/graphics/Rect;

    float-to-int v7, v0

    iput v7, v6, Landroid/graphics/Rect;->left:I

    float-to-int v7, v3

    .line 559
    iput v7, v6, Landroid/graphics/Rect;->top:I

    float-to-int v7, v4

    .line 560
    iput v7, v6, Landroid/graphics/Rect;->right:I

    float-to-int v7, v5

    .line 561
    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    .line 563
    iget-object v6, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->imageProvider:Lcom/amazon/android/docviewer/ImageProvider;

    invoke-virtual {v6}, Lcom/amazon/android/docviewer/ImageProvider;->getWidth()I

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->imageProvider:Lcom/amazon/android/docviewer/ImageProvider;

    invoke-virtual {v6}, Lcom/amazon/android/docviewer/ImageProvider;->getHeight()I

    move-result v6

    if-eqz v6, :cond_4

    .line 564
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->viewPort:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->imageProvider:Lcom/amazon/android/docviewer/ImageProvider;

    invoke-virtual {v6}, Lcom/amazon/android/docviewer/ImageProvider;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v0, v6

    iput v0, v2, Landroid/graphics/RectF;->left:F

    .line 565
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->viewPort:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->imageProvider:Lcom/amazon/android/docviewer/ImageProvider;

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/ImageProvider;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v3, v2

    iput v3, v0, Landroid/graphics/RectF;->top:F

    .line 566
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->viewPort:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->imageProvider:Lcom/amazon/android/docviewer/ImageProvider;

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/ImageProvider;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v4, v2

    iput v4, v0, Landroid/graphics/RectF;->right:F

    .line 567
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->viewPort:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->imageProvider:Lcom/amazon/android/docviewer/ImageProvider;

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/ImageProvider;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v5, v2

    iput v5, v0, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    .line 569
    :cond_4
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->viewPort:Landroid/graphics/RectF;

    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 570
    iput v2, v0, Landroid/graphics/RectF;->top:F

    const/high16 v2, 0x3f800000    # 1.0f

    .line 571
    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 572
    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    .line 582
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->sourceRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    if-gez v2, :cond_5

    mul-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    .line 583
    iget v3, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->zoom:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    .line 584
    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 585
    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->imageProvider:Lcom/amazon/android/docviewer/ImageProvider;

    invoke-virtual {v3}, Lcom/amazon/android/docviewer/ImageProvider;->getWidth()I

    move-result v3

    iput v3, v0, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    .line 587
    :goto_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->sourceRect:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->top:I

    if-gez v3, :cond_6

    mul-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    .line 588
    iget v4, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->zoom:F

    mul-float v3, v3, v4

    float-to-int v3, v3

    .line 589
    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 590
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->imageProvider:Lcom/amazon/android/docviewer/ImageProvider;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/ImageProvider;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    move v1, v3

    .line 593
    :cond_6
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getLeft()I

    move-result v3

    add-int/2addr v3, v2

    .line 594
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v4

    add-int/2addr v4, v1

    .line 595
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getRight()I

    move-result v5

    sub-int/2addr v5, v2

    .line 596
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getBottom()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-direct {v0, v3, v4, v5, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 598
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ui/ImageZoomView;->adjustDestinationRectForPadding(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 601
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->imageProvider:Lcom/amazon/android/docviewer/ImageProvider;

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->sourceRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1, v2, v0, v3}, Lcom/amazon/android/docviewer/ImageProvider;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_7
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 215
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 218
    sget v0, Lcom/amazon/kindle/krl/R$id;->image_zoom_close_button:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 220
    new-instance v1, Lcom/amazon/kcp/reader/ui/ImageZoomView$1;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/reader/ui/ImageZoomView$1;-><init>(Lcom/amazon/kcp/reader/ui/ImageZoomView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    .line 660
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->drawFilter:Lcom/amazon/android/docviewer/filter/IViewDrawFilter;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lcom/amazon/android/docviewer/filter/IViewDrawFilter;->touch(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    return v0

    .line 664
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    if-eqz p1, :cond_c

    const/4 v1, 0x0

    if-eq p1, v0, :cond_a

    const-string v2, "ImageZoomView.inPinch is true, but we have less than 2 touch points.  Setting inPinch to false."

    const/4 v3, 0x2

    if-eq p1, v3, :cond_4

    const/4 v4, 0x5

    if-eq p1, v4, :cond_2

    const/4 v2, 0x6

    if-eq p1, v2, :cond_1

    .line 757
    sget-object p1, Lcom/amazon/kcp/reader/ui/ImageZoomView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Detected invalid event action "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 710
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    if-gt p1, v3, :cond_d

    .line 711
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->zoomMade:Z

    .line 712
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->ignoreNextMove:Z

    .line 713
    iput-boolean v1, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->inPinch:Z

    goto/16 :goto_4

    .line 674
    :cond_2
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->inPinch:Z

    .line 676
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    if-ge p1, v3, :cond_3

    .line 677
    sget-object p1, Lcom/amazon/kcp/reader/ui/ImageZoomView;->TAG:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    iput-boolean v1, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->inPinch:Z

    goto :goto_0

    .line 680
    :cond_3
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    sub-float/2addr p1, v2

    .line 681
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result p2

    sub-float/2addr v2, p2

    mul-float p1, p1, p1

    float-to-double p1, p1

    mul-float v2, v2, v2

    float-to-double v1, v2

    add-double/2addr p1, v1

    .line 682
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    iput p1, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->lastPinchDistance:F

    .line 686
    :goto_0
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->zoomActivity:Lcom/amazon/kcp/reader/ImageZoomActivity;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ImageZoomActivity;->showOverlays()V

    goto/16 :goto_4

    .line 719
    :cond_4
    iget-boolean p1, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->inPinch:Z

    if-eqz p1, :cond_8

    .line 721
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    if-ge p1, v3, :cond_5

    .line 722
    sget-object p1, Lcom/amazon/kcp/reader/ui/ImageZoomView;->TAG:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    iput-boolean v1, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->inPinch:Z

    goto/16 :goto_4

    .line 726
    :cond_5
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    .line 727
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 728
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 729
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p2

    sub-float v3, v2, p1

    sub-float v4, p2, v1

    mul-float v3, v3, v3

    float-to-double v5, v3

    mul-float v4, v4, v4

    float-to-double v3, v4

    add-double/2addr v5, v3

    .line 732
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    const/4 v4, 0x0

    cmpl-float v5, v3, v4

    if-nez v5, :cond_6

    goto :goto_4

    .line 737
    :cond_6
    iget v5, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->lastPinchDistance:F

    cmpl-float v4, v5, v4

    if-nez v4, :cond_7

    .line 738
    sget-object p1, Lcom/amazon/kcp/reader/ui/ImageZoomView;->TAG:Ljava/lang/String;

    const-string p2, "The last pinch distance is zero.  If that\'s the case, there was no pinch.  Not modifying zoom!"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    div-float v4, v3, v5

    add-float/2addr p1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p1, v2

    add-float/2addr v1, p2

    div-float/2addr v1, v2

    .line 740
    invoke-virtual {p0, v4, p1, v1}, Lcom/amazon/kcp/reader/ui/ImageZoomView;->modifyZoomAboutPoint(FFF)V

    .line 742
    :goto_1
    iput v3, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->lastPinchDistance:F

    goto :goto_4

    .line 747
    :cond_8
    iget-boolean p1, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->ignoreNextMove:Z

    if-eqz p1, :cond_9

    .line 748
    iput-boolean v1, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->ignoreNextMove:Z

    goto :goto_2

    .line 750
    :cond_9
    iget p1, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->touchX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr p1, v1

    iget v1, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->touchY:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/amazon/kcp/reader/ui/ImageZoomView;->updateFocalPoint(FF)V

    .line 752
    :goto_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->touchX:F

    .line 753
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->touchY:F

    goto :goto_4

    .line 693
    :cond_a
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->zoomActivity:Lcom/amazon/kcp/reader/ImageZoomActivity;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ImageZoomActivity;->cancelOverlaysAfterDelay()V

    .line 696
    iget-boolean p1, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->zoomMade:Z

    if-eqz p1, :cond_b

    .line 697
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->zoomActivity:Lcom/amazon/kcp/reader/ImageZoomActivity;

    const-wide/16 v2, 0x9c4

    invoke-virtual {p1, v2, v3}, Lcom/amazon/kcp/reader/ImageZoomActivity;->hideOverlaysAfterDelay(J)V

    goto :goto_3

    .line 700
    :cond_b
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->zoomActivity:Lcom/amazon/kcp/reader/ImageZoomActivity;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ImageZoomActivity;->toggleOverlays()V

    .line 702
    :goto_3
    iput-boolean v1, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->zoomMade:Z

    .line 704
    iput-boolean v1, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->inPinch:Z

    goto :goto_4

    .line 668
    :cond_c
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->touchX:F

    .line 669
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->touchY:F

    :cond_d
    :goto_4
    return v0
.end method

.method public setFocalPoint(FF)Z
    .locals 4

    .line 467
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->imageProvider:Lcom/amazon/android/docviewer/ImageProvider;

    if-eqz v0, :cond_6

    .line 472
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 483
    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v2, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->zoom:F

    div-float/2addr v0, v2

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 484
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    iget v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->zoom:F

    div-float/2addr p1, v0

    .line 485
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->imageProvider:Lcom/amazon/android/docviewer/ImageProvider;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/ImageProvider;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 486
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->focalPointX:F

    goto :goto_0

    .line 489
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->imageProvider:Lcom/amazon/android/docviewer/ImageProvider;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/ImageProvider;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->zoom:F

    div-float/2addr v2, v3

    sub-float/2addr v0, v2

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    .line 490
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->imageProvider:Lcom/amazon/android/docviewer/ImageProvider;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/ImageProvider;->getWidth()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v2, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->zoom:F

    div-float/2addr v0, v2

    sub-float/2addr p1, v0

    .line 491
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->imageProvider:Lcom/amazon/android/docviewer/ImageProvider;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/ImageProvider;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 492
    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->focalPointX:F

    goto :goto_0

    .line 494
    :cond_2
    iput p1, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->focalPointX:F

    .line 501
    :goto_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    iget v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->zoom:F

    div-float/2addr p1, v0

    cmpg-float p1, p2, p1

    if-gez p1, :cond_3

    .line 502
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    iget p2, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->zoom:F

    div-float/2addr p1, p2

    .line 503
    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->imageProvider:Lcom/amazon/android/docviewer/ImageProvider;

    invoke-virtual {p2}, Lcom/amazon/android/docviewer/ImageProvider;->getHeight()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    .line 504
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->focalPointY:F

    goto :goto_1

    .line 507
    :cond_3
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->imageProvider:Lcom/amazon/android/docviewer/ImageProvider;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/ImageProvider;->getHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v2, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->zoom:F

    div-float/2addr v0, v2

    sub-float/2addr p1, v0

    cmpl-float p1, p2, p1

    if-lez p1, :cond_4

    .line 508
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->imageProvider:Lcom/amazon/android/docviewer/ImageProvider;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/ImageProvider;->getHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    iget v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->zoom:F

    div-float/2addr p2, v0

    sub-float/2addr p1, p2

    .line 509
    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->imageProvider:Lcom/amazon/android/docviewer/ImageProvider;

    invoke-virtual {p2}, Lcom/amazon/android/docviewer/ImageProvider;->getHeight()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    .line 510
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->focalPointY:F

    goto :goto_1

    .line 512
    :cond_4
    iput p2, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->focalPointY:F

    .line 514
    :goto_1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    return v1

    .line 473
    :cond_5
    :goto_2
    iput p1, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->delayedFocalPointX:F

    .line 474
    iput p2, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->delayedFocalPointY:F

    .line 475
    iput-boolean v1, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->setFocalPointBeforeDraw:Z

    const/4 p1, 0x0

    return p1

    .line 468
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot set the focal point since no bitmap has been set."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setImageProvider(Lcom/amazon/android/docviewer/ImageProvider;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->imageProvider:Lcom/amazon/android/docviewer/ImageProvider;

    const/4 p1, 0x1

    .line 233
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->applyDefaultZoomBeforeDraw:Z

    .line 234
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    return-void
.end method

.method public setMaxAllowedZoom(F)V
    .locals 0

    .line 275
    iput p1, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->maxAllowedZoom:F

    return-void
.end method

.method public setZoom(F)V
    .locals 2

    .line 411
    iget v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->focalPointX:F

    iget v1, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->focalPointY:F

    invoke-virtual {p0, p1, v0, v1}, Lcom/amazon/kcp/reader/ui/ImageZoomView;->setZoom(FFF)Z

    return-void
.end method

.method public setZoom(FFF)Z
    .locals 2

    const/4 v0, 0x0

    .line 391
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->applyDefaultZoomBeforeDraw:Z

    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-lez v1, :cond_1

    .line 396
    iget v1, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->zoom:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    .line 397
    iput p1, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->zoom:F

    .line 399
    invoke-virtual {p0, p2, p3}, Lcom/amazon/kcp/reader/ui/ImageZoomView;->setFocalPoint(FF)Z

    .line 400
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0

    .line 394
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot pass 0 or a negative number to setZoom(float)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setZoomActivity(Lcom/amazon/kcp/reader/ImageZoomActivity;)V
    .locals 0

    .line 767
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->zoomActivity:Lcom/amazon/kcp/reader/ImageZoomActivity;

    return-void
.end method

.method public setZoomedImageProvider(Lcom/amazon/android/docviewer/ImageProvider;)V
    .locals 4

    .line 238
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->imageProvider:Lcom/amazon/android/docviewer/ImageProvider;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/ImageProvider;->getHeight()I

    move-result v0

    .line 239
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->imageProvider:Lcom/amazon/android/docviewer/ImageProvider;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/ImageProvider;->getWidth()I

    move-result v1

    .line 240
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->imageProvider:Lcom/amazon/android/docviewer/ImageProvider;

    .line 241
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/ImageProvider;->getHeight()I

    move-result p1

    .line 242
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->imageProvider:Lcom/amazon/android/docviewer/ImageProvider;

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/ImageProvider;->getWidth()I

    move-result v2

    int-to-float p1, p1

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float p1, p1, v3

    int-to-float v0, v0

    div-float/2addr p1, v0

    int-to-float v0, v2

    mul-float v0, v0, v3

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/4 v1, 0x0

    .line 246
    iput-boolean v1, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->applyDefaultZoomBeforeDraw:Z

    .line 247
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ImageZoomView;->calculateZoomLevels()V

    .line 248
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ImageZoomView;->getFocalPointX()F

    move-result v1

    mul-float v1, v1, v0

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ImageZoomView;->getFocalPointY()F

    move-result v0

    mul-float v0, v0, p1

    invoke-virtual {p0, v1, v0}, Lcom/amazon/kcp/reader/ui/ImageZoomView;->setFocalPoint(FF)Z

    const/high16 p1, 0x3f000000    # 0.5f

    .line 249
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ui/ImageZoomView;->modifyZoom(F)V

    return-void
.end method

.method public updateFocalPoint(FF)V
    .locals 2

    .line 443
    iget v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->focalPointX:F

    iget v1, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->zoom:F

    div-float/2addr p1, v1

    add-float/2addr v0, p1

    iget p1, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->focalPointY:F

    div-float/2addr p2, v1

    add-float/2addr p1, p2

    invoke-virtual {p0, v0, p1}, Lcom/amazon/kcp/reader/ui/ImageZoomView;->setFocalPoint(FF)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 445
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->drawFilter:Lcom/amazon/android/docviewer/filter/IViewDrawFilter;

    if-eqz p1, :cond_0

    iget p2, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->zoom:F

    iget v0, p0, Lcom/amazon/kcp/reader/ui/ImageZoomView;->defaultZoom:F

    cmpl-float p2, p2, v0

    if-lez p2, :cond_0

    .line 446
    invoke-interface {p1}, Lcom/amazon/android/docviewer/filter/IViewDrawFilter;->enable()V

    :cond_0
    return-void
.end method
