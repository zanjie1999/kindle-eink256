.class Lcom/amazon/android/docviewer/pdf/PdfTileView;
.super Landroid/view/View;
.source "PdfTileView.java"

# interfaces
.implements Lcom/amazon/android/docviewer/pdf/PdfTileManager$PdfTileManagerCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/android/docviewer/pdf/PdfTileView$PdfTileViewResource;
    }
.end annotation


# static fields
.field private static final DEBUG_COLOR:I = -0xff01

.field private static final EDGE_TOLERANCE:F = 0.01f

.field private static final ENABLE_FPS_COUNTER:Z = true

.field private static final ENABLE_FPS_REPORT_EVERY_N_FRAMES:I = 0x14

.field private static final ENABLE_SCROLL_BAR_DURING_PAN:Z = false

.field private static final ENABLE_SCROLL_BAR_DURING_ZOOM:Z = true

.field static final METRIC_CLASS:Ljava/lang/String;

.field static final ON_LAYOUT_TIMER:Ljava/lang/String; = "onLayoutTimer"

.field private static final TAG:Ljava/lang/String;

.field private static final TEXT_MAGNIFICATION_NEED_TO_TURN_ON:I = 0x1

.field private static pdfTileViewResource:Lcom/amazon/android/docviewer/pdf/PdfTileView$PdfTileViewResource;


# instance fields
.field private frameCount:I

.field private frameCountStartTime:J

.field private final m_cachedPageRect:Landroid/graphics/Rect;

.field private final m_noteAreaOutlinePaint:Landroid/graphics/Paint;

.field private m_pdfDoc:Lcom/amazon/android/docviewer/pdf/PdfDoc;

.field private m_pdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

.field private m_preRendered:Z

.field private m_prevHeight:I

.field private m_prevOrientation:I

.field private m_prevWidth:I

.field private m_renderWaitTime:I

.field private m_scaleX:F

.field private m_scaleY:F

.field private m_spinny:Landroid/widget/ProgressBar;

.field private m_tileManager:Lcom/amazon/android/docviewer/pdf/PdfTileManager;

.field private m_view:Lcom/amazon/android/docviewer/pdf/PdfView;

.field private m_viewer:Lcom/amazon/android/docviewer/pdf/PdfDocViewer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const-class v0, Lcom/amazon/android/docviewer/pdf/PdfTileView;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->TAG:Ljava/lang/String;

    .line 37
    sput-object v0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->METRIC_CLASS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 86
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 48
    iput p2, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_prevOrientation:I

    const/4 v0, -0x1

    .line 49
    iput v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_prevWidth:I

    .line 50
    iput v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_prevHeight:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 55
    iput v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_scaleX:F

    .line 56
    iput v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_scaleY:F

    .line 57
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_cachedPageRect:Landroid/graphics/Rect;

    .line 58
    iput p2, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->frameCount:I

    .line 60
    iput p2, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_renderWaitTime:I

    .line 61
    iput-boolean p2, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_preRendered:Z

    .line 88
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_noteAreaOutlinePaint:Landroid/graphics/Paint;

    const v1, -0xff01

    .line 89
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 90
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_noteAreaOutlinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 91
    new-instance v0, Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    const v2, 0x1010287

    invoke-direct {v0, p1, v1, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_spinny:Landroid/widget/ProgressBar;

    .line 92
    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/android/docviewer/pdf/PdfTileView;)Lcom/amazon/android/docviewer/pdf/PdfTileManager;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_tileManager:Lcom/amazon/android/docviewer/pdf/PdfTileManager;

    return-object p0
.end method

.method private drawAnnotations(Landroid/graphics/Canvas;)V
    .locals 3

    .line 395
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_viewer:Lcom/amazon/android/docviewer/pdf/PdfDocViewer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getAnnotationsManager()Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_viewer:Lcom/amazon/android/docviewer/pdf/PdfDocViewer;

    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_pdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getDrawingArea()Landroid/graphics/Rect;

    move-result-object v2

    invoke-static {v0, p1, v1, v2}, Lcom/amazon/kindle/annotation/ui/AbstractAnnotationRendererFactory;->render(Lcom/amazon/android/docviewer/KindleDocViewer;Landroid/graphics/Canvas;Lcom/amazon/android/docviewer/IDocumentPage;Landroid/graphics/Rect;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private drawTextMagnification(Landroid/graphics/Canvas;)V
    .locals 9

    .line 335
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_pdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getSelectedMagnificationItem()Lcom/amazon/android/docviewer/pdf/PdfTextMagnification;

    move-result-object v0

    .line 336
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 337
    iget-object v2, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_pdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getViewport()Landroid/graphics/RectF;

    move-result-object v2

    .line 340
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfTextMagnification;->getDisplayPosition()Landroid/graphics/PointF;

    move-result-object v3

    .line 342
    iget v4, v3, Landroid/graphics/PointF;->x:F

    const/4 v5, 0x0

    const v6, 0x41e66667    # 28.800001f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 343
    iput v6, v3, Landroid/graphics/PointF;->x:F

    .line 346
    :cond_0
    iget v4, v3, Landroid/graphics/PointF;->y:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    .line 347
    iput v6, v3, Landroid/graphics/PointF;->y:F

    :cond_1
    const/high16 v4, 0x3f800000    # 1.0f

    .line 350
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v5

    div-float/2addr v4, v5

    .line 351
    iget-object v5, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_pdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    invoke-virtual {v5}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getRenderedPageRect()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v6

    iget-object v6, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_pdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    .line 352
    invoke-virtual {v6}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getPageWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x64

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 354
    iget-object v6, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_pdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    invoke-virtual {v6}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getRenderedPageRect()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    iget v7, v3, Landroid/graphics/PointF;->x:F

    mul-float v6, v6, v7

    iget-object v7, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_pdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    .line 355
    invoke-virtual {v7}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getPageWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x64

    int-to-float v7, v7

    div-float/2addr v6, v7

    .line 356
    iget-object v7, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_pdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    invoke-virtual {v7}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getRenderedPageRect()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    iget v3, v3, Landroid/graphics/PointF;->y:F

    mul-float v7, v7, v3

    iget-object v3, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_pdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    .line 357
    invoke-virtual {v3}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getPageHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x64

    int-to-float v3, v3

    div-float/2addr v7, v3

    .line 367
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfTextMagnification;->getImage()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v4

    add-float/2addr v3, v6

    iget-object v8, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_pdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    .line 368
    invoke-virtual {v8}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getRenderedPageRect()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    cmpl-float v3, v3, v8

    if-lez v3, :cond_2

    .line 370
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfTextMagnification;->getImage()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v4

    add-float/2addr v3, v6

    iget-object v8, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_pdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    .line 371
    invoke-virtual {v8}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getRenderedPageRect()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v3, v8

    sub-float/2addr v6, v3

    sub-float/2addr v6, v5

    .line 374
    :cond_2
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfTextMagnification;->getImage()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v4

    add-float/2addr v3, v7

    iget-object v8, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_pdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    .line 375
    invoke-virtual {v8}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getRenderedPageRect()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    cmpl-float v3, v3, v8

    if-lez v3, :cond_3

    .line 377
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfTextMagnification;->getImage()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v4

    add-float/2addr v3, v7

    iget-object v8, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_pdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    .line 378
    invoke-virtual {v8}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getRenderedPageRect()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v3, v8

    sub-float/2addr v7, v3

    sub-float/2addr v7, v5

    .line 383
    :cond_3
    iget-object v3, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_pdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    .line 384
    invoke-virtual {v3}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getRenderedPageRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    iget v5, v2, Landroid/graphics/RectF;->left:F

    mul-float v3, v3, v5

    sub-float/2addr v6, v3

    .line 385
    iget-object v3, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_pdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    .line 386
    invoke-virtual {v3}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getRenderedPageRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    iget v2, v2, Landroid/graphics/RectF;->top:F

    mul-float v3, v3, v2

    sub-float/2addr v7, v3

    .line 388
    invoke-virtual {v1, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 389
    invoke-virtual {v1, v4, v4, v6, v7}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 391
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfTextMagnification;->getImage()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    return-void
.end method

.method private isCurrentPage()Z
    .locals 2

    .line 309
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_pdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getPageIndex()I

    move-result v0

    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_pdfDoc:Lcom/amazon/android/docviewer/pdf/PdfDoc;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->getCurrentPageIndex()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static newInstance(Landroid/content/Context;Lcom/amazon/android/docviewer/pdf/PdfDoc;Lcom/amazon/android/docviewer/pdf/PdfPage;)Lcom/amazon/android/docviewer/pdf/PdfTileView;
    .locals 3

    .line 66
    sget v0, Lcom/amazon/kindle/krl/R$layout;->pdf_tile_view:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/docviewer/pdf/PdfTileView;

    const/high16 v2, 0x80000

    .line 70
    invoke-virtual {v0, v2}, Landroid/view/View;->setDrawingCacheQuality(I)V

    const/4 v2, 0x0

    .line 71
    invoke-virtual {v0, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    const/4 v2, 0x1

    .line 72
    invoke-virtual {v0, v2}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    .line 73
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 75
    iput-object p2, v0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_pdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    .line 76
    iput-object p1, v0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_pdfDoc:Lcom/amazon/android/docviewer/pdf/PdfDoc;

    .line 78
    sget-object p1, Lcom/amazon/android/docviewer/pdf/PdfTileView;->pdfTileViewResource:Lcom/amazon/android/docviewer/pdf/PdfTileView$PdfTileViewResource;

    if-nez p1, :cond_0

    .line 79
    new-instance p1, Lcom/amazon/android/docviewer/pdf/PdfTileView$PdfTileViewResource;

    invoke-direct {p1, p0}, Lcom/amazon/android/docviewer/pdf/PdfTileView$PdfTileViewResource;-><init>(Landroid/content/Context;)V

    sput-object p1, Lcom/amazon/android/docviewer/pdf/PdfTileView;->pdfTileViewResource:Lcom/amazon/android/docviewer/pdf/PdfTileView$PdfTileViewResource;

    :cond_0
    return-object v0
.end method

.method private final reportFramesPerSecond(I)V
    .locals 5

    .line 572
    iget-wide v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->frameCountStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    if-lez p1, :cond_0

    rem-int/lit8 v0, p1, 0x14

    if-nez v0, :cond_0

    int-to-float v0, p1

    .line 574
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->frameCountStartTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    long-to-float v1, v1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    div-float/2addr v0, v1

    .line 575
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FPS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " frameCount: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private final startFramesPerSecondCounter()V
    .locals 2

    const/4 v0, 0x0

    .line 562
    iput v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->frameCount:I

    .line 563
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->frameCountStartTime:J

    return-void
.end method

.method private final stopFramesPerSecondCounter()V
    .locals 2

    const/4 v0, 0x0

    .line 567
    iput v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->frameCount:I

    const-wide/16 v0, 0x0

    .line 568
    iput-wide v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->frameCountStartTime:J

    return-void
.end method

.method private updateVerticalPosition(Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 5

    .line 313
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 315
    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    .line 316
    iget p1, p1, Landroid/graphics/RectF;->top:F

    const v3, 0x3c23d70a    # 0.01f

    const/4 v4, 0x0

    cmpg-float p1, p1, v3

    if-gtz p1, :cond_0

    .line 317
    iget p1, p2, Landroid/graphics/RectF;->top:F

    neg-float p1, p1

    goto :goto_0

    :cond_0
    cmpg-float p1, v1, v3

    if-gtz p1, :cond_1

    .line 319
    iget p1, p2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p1, v2

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    cmpl-float p2, p1, v4

    if-eqz p2, :cond_2

    .line 323
    invoke-virtual {v0, v4, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 324
    iget-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_tileManager:Lcom/amazon/android/docviewer/pdf/PdfTileManager;

    invoke-virtual {p1, v0}, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->applyMatrix(Landroid/graphics/Matrix;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public buildDrawingCache(Z)V
    .locals 0

    return-void
.end method

.method closeTileView()V
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_tileManager:Lcom/amazon/android/docviewer/pdf/PdfTileManager;

    if-eqz v0, :cond_0

    .line 300
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->close()V

    :cond_0
    return-void
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 2

    .line 450
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_pdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    if-eqz v0, :cond_0

    .line 451
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_pdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getViewport()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0

    .line 453
    :cond_0
    sget-object v0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->TAG:Ljava/lang/String;

    const-string v1, "computeHorizontalScrollExtent: m_pdfPage is null"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 2

    .line 440
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_pdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    if-eqz v0, :cond_0

    .line 441
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_pdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getViewport()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->left:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0

    .line 443
    :cond_0
    sget-object v0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->TAG:Ljava/lang/String;

    const-string v1, "computeHorizontalScrollOffset: m_pdfPage is null"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method protected computeVerticalScrollExtent()I
    .locals 2

    .line 460
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_pdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    if-eqz v0, :cond_0

    .line 461
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_pdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getViewport()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0

    .line 463
    :cond_0
    sget-object v0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->TAG:Ljava/lang/String;

    const-string v1, "computeVerticalScrollExtent: m_pdfPage is null"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 2

    .line 470
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_pdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    if-eqz v0, :cond_0

    .line 471
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_pdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getViewport()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->top:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0

    .line 473
    :cond_0
    sget-object v0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->TAG:Ljava/lang/String;

    const-string v1, "computeVerticalScrollOffset: m_pdfPage is null"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 97
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 99
    iget p1, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->frameCount:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->frameCount:I

    invoke-direct {p0, p1}, Lcom/amazon/android/docviewer/pdf/PdfTileView;->reportFramesPerSecond(I)V

    return-void
.end method

.method drawScrollBar(Z)V
    .locals 2

    .line 481
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_tileManager:Lcom/amazon/android/docviewer/pdf/PdfTileManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 483
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->isZooming()Z

    move-result v0

    or-int/2addr v1, v0

    :cond_0
    if-eqz v1, :cond_1

    .line 486
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_pdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    if-eqz v0, :cond_1

    .line 487
    invoke-static {v0}, Lcom/amazon/android/docviewer/pdf/PdfView;->getZoomScale(Lcom/amazon/android/docviewer/pdf/PdfPage;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 489
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v0

    .line 490
    invoke-virtual {p0, v0, p1}, Landroid/view/View;->awakenScrollBars(IZ)Z

    :cond_1
    return-void
.end method

.method public execute(Landroid/graphics/RectF;)V
    .locals 1

    .line 150
    new-instance v0, Lcom/amazon/android/docviewer/pdf/PdfTileView$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/android/docviewer/pdf/PdfTileView$1;-><init>(Lcom/amazon/android/docviewer/pdf/PdfTileView;Landroid/graphics/RectF;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method finishFling()V
    .locals 1

    .line 536
    invoke-direct {p0}, Lcom/amazon/android/docviewer/pdf/PdfTileView;->stopFramesPerSecondCounter()V

    .line 538
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_tileManager:Lcom/amazon/android/docviewer/pdf/PdfTileManager;

    if-eqz v0, :cond_0

    .line 539
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->finishFling()V

    :cond_0
    return-void
.end method

.method finishPan()V
    .locals 1

    .line 554
    invoke-direct {p0}, Lcom/amazon/android/docviewer/pdf/PdfTileView;->stopFramesPerSecondCounter()V

    .line 556
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_tileManager:Lcom/amazon/android/docviewer/pdf/PdfTileManager;

    if-eqz v0, :cond_0

    .line 557
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->finishPan()V

    :cond_0
    return-void
.end method

.method getPdfDoc()Lcom/amazon/android/docviewer/pdf/PdfDoc;
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_pdfDoc:Lcom/amazon/android/docviewer/pdf/PdfDoc;

    return-object v0
.end method

.method getPdfPage()Lcom/amazon/android/docviewer/pdf/PdfPage;
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_pdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    return-object v0
.end method

.method getPdfTileManager()Lcom/amazon/android/docviewer/pdf/PdfTileManager;
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_tileManager:Lcom/amazon/android/docviewer/pdf/PdfTileManager;

    return-object v0
.end method

.method public getScaleX()F
    .locals 1

    .line 502
    iget v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_scaleX:F

    return v0
.end method

.method public getScaleY()F
    .locals 1

    .line 497
    iget v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_scaleY:F

    return v0
.end method

.method isAnimating()Z
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_tileManager:Lcom/amazon/android/docviewer/pdf/PdfTileManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->isPanning()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_tileManager:Lcom/amazon/android/docviewer/pdf/PdfTileManager;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->isZooming()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_tileManager:Lcom/amazon/android/docviewer/pdf/PdfTileManager;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->isFlinging()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_view:Lcom/amazon/android/docviewer/pdf/PdfView;

    if-eqz v0, :cond_2

    .line 291
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfView;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isAnimatingViewChange()Z
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_view:Lcom/amazon/android/docviewer/pdf/PdfView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfView;->isAnimatingViewChange()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method final isPageFillingView()Z
    .locals 4

    .line 283
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_tileManager:Lcom/amazon/android/docviewer/pdf/PdfTileManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->isDoneFirstDraw()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_pdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    iget-object v3, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_cachedPageRect:Landroid/graphics/Rect;

    .line 284
    invoke-virtual {v0, v3, v2}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getRenderedPageRect(Landroid/graphics/Rect;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 285
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_cachedPageRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    if-lt v0, v3, :cond_1

    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_cachedPageRect:Landroid/graphics/Rect;

    .line 286
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    if-lt v0, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 105
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 107
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_tileManager:Lcom/amazon/android/docviewer/pdf/PdfTileManager;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_pdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    if-eqz v0, :cond_5

    .line 108
    invoke-direct {p0}, Lcom/amazon/android/docviewer/pdf/PdfTileView;->isCurrentPage()Z

    move-result v0

    .line 109
    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_view:Lcom/amazon/android/docviewer/pdf/PdfView;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/pdf/PdfView;->isCurrentPageDrawInProgress()Z

    move-result v1

    .line 111
    iget v2, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_renderWaitTime:I

    const/4 v3, 0x0

    if-lez v2, :cond_0

    .line 112
    iget-object v4, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_tileManager:Lcom/amazon/android/docviewer/pdf/PdfTileManager;

    invoke-virtual {v4, v2}, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->setWaitTimeForFirstRender(I)V

    .line 113
    iput v3, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_renderWaitTime:I

    .line 118
    :cond_0
    iget-object v2, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_tileManager:Lcom/amazon/android/docviewer/pdf/PdfTileManager;

    const/4 v4, 0x1

    if-nez v0, :cond_2

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2, p1, v0}, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->draw(Landroid/graphics/Canvas;Z)V

    .line 120
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_tileManager:Lcom/amazon/android/docviewer/pdf/PdfTileManager;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->isDoneFirstDraw()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 121
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_pdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getIsTextMagnificationEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 122
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_pdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getMagnificationStatus()I

    move-result v0

    if-ne v0, v4, :cond_3

    .line 123
    invoke-direct {p0, p1}, Lcom/amazon/android/docviewer/pdf/PdfTileView;->drawTextMagnification(Landroid/graphics/Canvas;)V

    goto :goto_2

    .line 125
    :cond_3
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_pdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    invoke-virtual {v0, v3}, Lcom/amazon/android/docviewer/pdf/PdfPage;->setIsTextMagnificationEnabled(Z)V

    .line 126
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 129
    :cond_4
    :goto_2
    invoke-direct {p0, p1}, Lcom/amazon/android/docviewer/pdf/PdfTileView;->drawAnnotations(Landroid/graphics/Canvas;)V

    .line 130
    iget-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_view:Lcom/amazon/android/docviewer/pdf/PdfView;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/pdf/PdfView;->notifyPageDrawingComplete()V

    :cond_5
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    .line 169
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string/jumbo v1, "onLayoutTimer"

    .line 170
    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->startMetricTimer(Ljava/lang/String;)V

    .line 171
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 173
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    .line 174
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p2

    .line 175
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    iget p3, p3, Landroid/content/res/Configuration;->orientation:I

    .line 177
    iget-object p4, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_pdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    if-eqz p4, :cond_f

    if-eqz p1, :cond_f

    if-nez p2, :cond_0

    goto/16 :goto_7

    .line 181
    :cond_0
    iget p4, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_prevOrientation:I

    const/4 p5, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_1

    if-eq p4, p3, :cond_1

    const/4 p4, 0x1

    goto :goto_0

    :cond_1
    const/4 p4, 0x0

    .line 183
    :goto_0
    iget v1, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_prevWidth:I

    if-ne p1, v1, :cond_3

    iget v1, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_prevHeight:I

    if-eq p2, v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v1, 0x1

    .line 185
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onLayout: page="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_pdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    invoke-virtual {v3}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getPageIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " width="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " height="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " orientation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " prevOrientation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_prevOrientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-nez v1, :cond_4

    .line 189
    iget v2, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_prevOrientation:I

    if-ne p3, v2, :cond_4

    return-void

    .line 196
    :cond_4
    iget-object v2, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_tileManager:Lcom/amazon/android/docviewer/pdf/PdfTileManager;

    const/4 v3, 0x0

    if-eqz v2, :cond_8

    if-nez p4, :cond_5

    if-eqz v1, :cond_8

    .line 197
    :cond_5
    iget-object v2, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_pdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getViewport()Landroid/graphics/RectF;

    move-result-object v2

    .line 198
    iget-object v4, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_tileManager:Lcom/amazon/android/docviewer/pdf/PdfTileManager;

    invoke-virtual {v4, v0}, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->setAcceptingNewRequests(Z)V

    .line 199
    iget-object v4, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_tileManager:Lcom/amazon/android/docviewer/pdf/PdfTileManager;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v0, v0, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    if-nez p4, :cond_7

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    const/4 v6, 0x0

    goto :goto_4

    :cond_7
    :goto_3
    const/4 v6, 0x1

    :goto_4
    invoke-virtual {v4, v5, v6}, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->setDrawingArea(Landroid/graphics/Rect;Z)V

    .line 200
    iget-object v4, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_pdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    invoke-virtual {v4}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getViewport()Landroid/graphics/RectF;

    move-result-object v4

    .line 202
    invoke-direct {p0, v2, v4}, Lcom/amazon/android/docviewer/pdf/PdfTileView;->updateVerticalPosition(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 203
    iget-object v4, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_pdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    invoke-virtual {v4}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getViewport()Landroid/graphics/RectF;

    move-result-object v4

    .line 205
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Viewport to apply for onLayout: before="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " after="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_5

    :cond_8
    move-object v4, v3

    .line 212
    :goto_5
    iget-object v2, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_tileManager:Lcom/amazon/android/docviewer/pdf/PdfTileManager;

    if-eqz v2, :cond_9

    if-nez p4, :cond_9

    if-eqz v1, :cond_c

    .line 213
    :cond_9
    iget-object v2, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_tileManager:Lcom/amazon/android/docviewer/pdf/PdfTileManager;

    if-nez v2, :cond_a

    goto :goto_6

    :cond_a
    const/4 p5, 0x0

    :goto_6
    if-nez p5, :cond_b

    .line 219
    iget-object p5, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_tileManager:Lcom/amazon/android/docviewer/pdf/PdfTileManager;

    invoke-virtual {p5}, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->close()V

    .line 220
    iput-object v3, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_tileManager:Lcom/amazon/android/docviewer/pdf/PdfTileManager;

    .line 221
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 224
    :cond_b
    invoke-virtual {p0, p1, p2, v4}, Lcom/amazon/android/docviewer/pdf/PdfTileView;->preRenderCurrentView(IILandroid/graphics/RectF;)V

    :cond_c
    if-nez p4, :cond_d

    if-eqz v1, :cond_e

    .line 228
    :cond_d
    invoke-direct {p0}, Lcom/amazon/android/docviewer/pdf/PdfTileView;->isCurrentPage()Z

    move-result p4

    if-eqz p4, :cond_e

    .line 229
    iget-object p4, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_viewer:Lcom/amazon/android/docviewer/pdf/PdfDocViewer;

    invoke-virtual {p4}, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->getAnnotationAreaManager()Lcom/amazon/android/docviewer/pdf/PdfAnnotationAreaManager;

    move-result-object p4

    invoke-virtual {p4}, Lcom/amazon/android/docviewer/pdf/PdfAnnotationAreaManager;->rebuildNoteAreas()V

    .line 230
    iget-object p4, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_viewer:Lcom/amazon/android/docviewer/pdf/PdfDocViewer;

    invoke-virtual {p4}, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->onRefresh()V

    .line 233
    :cond_e
    iput p3, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_prevOrientation:I

    .line 234
    iput p1, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_prevWidth:I

    .line 235
    iput p2, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_prevHeight:I

    :cond_f
    :goto_7
    return-void
.end method

.method public preRender()V
    .locals 1

    .line 516
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_preRendered:Z

    if-eqz v0, :cond_0

    return-void

    .line 519
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_tileManager:Lcom/amazon/android/docviewer/pdf/PdfTileManager;

    if-eqz v0, :cond_1

    .line 520
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->requestRenderTiles()V

    const/4 v0, 0x1

    .line 521
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_preRendered:Z

    :cond_1
    return-void
.end method

.method public preRenderCurrentView(IILandroid/graphics/RectF;)V
    .locals 12

    mul-int v0, p1, p2

    .line 240
    sget-object v1, Lcom/amazon/android/docviewer/pdf/PdfTileView;->pdfTileViewResource:Lcom/amazon/android/docviewer/pdf/PdfTileView$PdfTileViewResource;

    invoke-static {v1}, Lcom/amazon/android/docviewer/pdf/PdfTileView$PdfTileViewResource;->access$100(Lcom/amazon/android/docviewer/pdf/PdfTileView$PdfTileViewResource;)I

    move-result v1

    mul-int v0, v0, v1

    sget-object v1, Lcom/amazon/android/docviewer/pdf/PdfTileView;->pdfTileViewResource:Lcom/amazon/android/docviewer/pdf/PdfTileView$PdfTileViewResource;

    invoke-static {v1}, Lcom/amazon/android/docviewer/pdf/PdfTileView$PdfTileViewResource;->access$200(Lcom/amazon/android/docviewer/pdf/PdfTileView$PdfTileViewResource;)I

    move-result v1

    mul-int v0, v0, v1

    int-to-long v7, v0

    .line 242
    new-instance v0, Lcom/amazon/android/docviewer/pdf/PdfTileManager;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v1, Lcom/amazon/android/docviewer/pdf/PdfTileView;->pdfTileViewResource:Lcom/amazon/android/docviewer/pdf/PdfTileView$PdfTileViewResource;

    .line 243
    invoke-static {v1}, Lcom/amazon/android/docviewer/pdf/PdfTileView$PdfTileViewResource;->access$300(Lcom/amazon/android/docviewer/pdf/PdfTileView$PdfTileViewResource;)I

    move-result v6

    iget-object v10, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_pdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_pdfDoc:Lcom/amazon/android/docviewer/pdf/PdfDoc;

    .line 244
    invoke-virtual {v1}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->getPdfRenderer()Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation;

    move-result-object v11

    move-object v1, v0

    move-object v3, p0

    move v4, p1

    move v5, p2

    move-object v9, p0

    invoke-direct/range {v1 .. v11}, Lcom/amazon/android/docviewer/pdf/PdfTileManager;-><init>(Landroid/content/Context;Lcom/amazon/android/docviewer/pdf/PdfTileView;IIIJLcom/amazon/android/docviewer/pdf/PdfTileManager$PdfTileManagerCallback;Lcom/amazon/android/docviewer/pdf/PdfPage;Lcom/amazon/android/docviewer/pdf/IPdfRenderer;)V

    iput-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_tileManager:Lcom/amazon/android/docviewer/pdf/PdfTileManager;

    const/4 v1, 0x0

    .line 247
    iput-boolean v1, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_preRendered:Z

    if-eqz p3, :cond_0

    .line 250
    invoke-virtual {v0, p3}, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->applyViewport(Landroid/graphics/RectF;)V

    .line 252
    :cond_0
    invoke-direct {p0}, Lcom/amazon/android/docviewer/pdf/PdfTileView;->isCurrentPage()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 253
    iget-object p3, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_view:Lcom/amazon/android/docviewer/pdf/PdfView;

    invoke-virtual {p3}, Lcom/amazon/android/docviewer/pdf/PdfView;->notifyCurrentPageDrawInProgress()V

    .line 254
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfTileView;->preRender()V

    .line 255
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 258
    :cond_1
    iput p1, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_prevWidth:I

    .line 259
    iput p2, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_prevHeight:I

    return-void
.end method

.method public setScaleX(F)V
    .locals 0

    .line 512
    iput p1, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_scaleX:F

    return-void
.end method

.method public setScaleY(F)V
    .locals 0

    .line 507
    iput p1, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_scaleY:F

    return-void
.end method

.method setViewer(Lcom/amazon/android/docviewer/pdf/PdfView;Lcom/amazon/android/docviewer/pdf/PdfDocViewer;)V
    .locals 0

    .line 410
    iput-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_view:Lcom/amazon/android/docviewer/pdf/PdfView;

    .line 411
    iput-object p2, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_viewer:Lcom/amazon/android/docviewer/pdf/PdfDocViewer;

    return-void
.end method

.method setWaitTimeForFirstRender(I)V
    .locals 0

    .line 422
    iput p1, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_renderWaitTime:I

    return-void
.end method

.method shouldShowPageLoadProgress()Z
    .locals 1

    .line 431
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_viewer:Lcom/amazon/android/docviewer/pdf/PdfDocViewer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->isBookOpenSpinnerInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method startFling()V
    .locals 1

    .line 527
    invoke-direct {p0}, Lcom/amazon/android/docviewer/pdf/PdfTileView;->startFramesPerSecondCounter()V

    .line 529
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_tileManager:Lcom/amazon/android/docviewer/pdf/PdfTileManager;

    if-eqz v0, :cond_0

    .line 530
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->startFling()V

    :cond_0
    return-void
.end method

.method startPan()V
    .locals 1

    .line 545
    invoke-direct {p0}, Lcom/amazon/android/docviewer/pdf/PdfTileView;->startFramesPerSecondCounter()V

    .line 547
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_tileManager:Lcom/amazon/android/docviewer/pdf/PdfTileManager;

    if-eqz v0, :cond_0

    .line 548
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->startPan()V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 581
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/amazon/android/docviewer/pdf/PdfTileView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[page="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_pdfPage:Lcom/amazon/android/docviewer/pdf/PdfPage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " scale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_scaleX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView;->m_scaleY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
