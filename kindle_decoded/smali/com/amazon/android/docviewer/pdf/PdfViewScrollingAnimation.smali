.class public Lcom/amazon/android/docviewer/pdf/PdfViewScrollingAnimation;
.super Landroid/view/animation/Animation;
.source "PdfViewScrollingAnimation.java"


# instance fields
.field private lastX:I

.field private lastY:I

.field private final matrix:Landroid/graphics/Matrix;

.field private final pdfView:Lcom/amazon/android/docviewer/pdf/PdfView;

.field private final scroller:Landroid/widget/Scroller;


# direct methods
.method public constructor <init>(Lcom/amazon/android/docviewer/pdf/PdfView;Landroid/widget/Scroller;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 21
    iput-object p2, p0, Lcom/amazon/android/docviewer/pdf/PdfViewScrollingAnimation;->scroller:Landroid/widget/Scroller;

    .line 22
    iput-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfViewScrollingAnimation;->pdfView:Lcom/amazon/android/docviewer/pdf/PdfView;

    .line 23
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfViewScrollingAnimation;->matrix:Landroid/graphics/Matrix;

    .line 24
    invoke-virtual {p2}, Landroid/widget/Scroller;->getStartX()I

    move-result p1

    iput p1, p0, Lcom/amazon/android/docviewer/pdf/PdfViewScrollingAnimation;->lastX:I

    .line 25
    invoke-virtual {p2}, Landroid/widget/Scroller;->getStartX()I

    move-result p1

    iput p1, p0, Lcom/amazon/android/docviewer/pdf/PdfViewScrollingAnimation;->lastY:I

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 5

    .line 40
    iget-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfViewScrollingAnimation;->scroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 41
    iget-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfViewScrollingAnimation;->scroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->getCurrX()I

    move-result p1

    .line 42
    iget-object p2, p0, Lcom/amazon/android/docviewer/pdf/PdfViewScrollingAnimation;->scroller:Landroid/widget/Scroller;

    invoke-virtual {p2}, Landroid/widget/Scroller;->getCurrY()I

    move-result p2

    .line 44
    iget v0, p0, Lcom/amazon/android/docviewer/pdf/PdfViewScrollingAnimation;->lastX:I

    sub-int v0, p1, v0

    .line 45
    iget v1, p0, Lcom/amazon/android/docviewer/pdf/PdfViewScrollingAnimation;->lastY:I

    sub-int v1, p2, v1

    .line 46
    invoke-virtual {p0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v2

    if-nez v2, :cond_1

    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    .line 48
    :cond_0
    iget-object v2, p0, Lcom/amazon/android/docviewer/pdf/PdfViewScrollingAnimation;->pdfView:Lcom/amazon/android/docviewer/pdf/PdfView;

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/pdf/PdfView;->getCurrentTileView()Lcom/amazon/android/docviewer/pdf/PdfTileView;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 50
    invoke-virtual {v2}, Lcom/amazon/android/docviewer/pdf/PdfTileView;->getPdfTileManager()Lcom/amazon/android/docviewer/pdf/PdfTileManager;

    move-result-object v3

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 51
    invoke-virtual {v3, v4}, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->mapScreenToWorldOffset(Landroid/graphics/Point;)Landroid/graphics/PointF;

    move-result-object v0

    .line 52
    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfViewScrollingAnimation;->matrix:Landroid/graphics/Matrix;

    iget v3, v0, Landroid/graphics/PointF;->x:F

    neg-float v3, v3

    iget v0, v0, Landroid/graphics/PointF;->y:F

    neg-float v0, v0

    invoke-virtual {v1, v3, v0}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 53
    invoke-virtual {v2}, Lcom/amazon/android/docviewer/pdf/PdfTileView;->getPdfTileManager()Lcom/amazon/android/docviewer/pdf/PdfTileManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfViewScrollingAnimation;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->applyMatrix(Landroid/graphics/Matrix;)V

    .line 54
    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 58
    :cond_1
    iput p1, p0, Lcom/amazon/android/docviewer/pdf/PdfViewScrollingAnimation;->lastX:I

    .line 59
    iput p2, p0, Lcom/amazon/android/docviewer/pdf/PdfViewScrollingAnimation;->lastY:I

    return-void
.end method

.method public willChangeBounds()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public willChangeTransformationMatrix()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
