.class public Lcom/amazon/android/docviewer/pdf/PdfTextMagnification;
.super Ljava/lang/Object;
.source "PdfTextMagnification.java"


# static fields
.field private static final INCH_TO_POINT_CONVERT_RATE:F = 72.0f

.field private static final SAMPLE_FOLDER_PATH:Ljava/lang/String; = "/sdcard/kindle/metadata/"


# instance fields
.field private m_activeArea:Landroid/graphics/RectF;

.field private m_image:Landroid/graphics/Bitmap;

.field private m_magnificationDisplay:Landroid/graphics/PointF;

.field private m_ordinal:I

.field private m_pageIndex:I

.field private m_resourceID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfTextMagnification;->recycleImage()V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTextMagnification;->m_activeArea:Landroid/graphics/RectF;

    .line 36
    iput-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTextMagnification;->m_magnificationDisplay:Landroid/graphics/PointF;

    return-void
.end method

.method public getActiveArea()Landroid/graphics/RectF;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTextMagnification;->m_activeArea:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getDisplayPosition()Landroid/graphics/PointF;
    .locals 4

    .line 58
    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfTextMagnification;->m_magnificationDisplay:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    const/high16 v3, 0x42900000    # 72.0f

    mul-float v2, v2, v3

    iget v1, v1, Landroid/graphics/PointF;->y:F

    mul-float v1, v1, v3

    invoke-direct {v0, v2, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public getImage()Landroid/graphics/Bitmap;
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTextMagnification;->m_image:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/sdcard/kindle/metadata/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfTextMagnification;->getResourceID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/zyyme/eink256/Eink256Patch;->process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTextMagnification;->m_image:Landroid/graphics/Bitmap;

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTextMagnification;->m_image:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getOrdinal()I
    .locals 1

    .line 64
    iget v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTextMagnification;->m_ordinal:I

    return v0
.end method

.method public getPageIndex()I
    .locals 1

    .line 68
    iget v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTextMagnification;->m_pageIndex:I

    return v0
.end method

.method public getResourceID()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTextMagnification;->m_resourceID:Ljava/lang/String;

    return-object v0
.end method

.method public isClickOnImage(Landroid/graphics/PointF;)Z
    .locals 3

    .line 86
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 87
    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfTextMagnification;->m_magnificationDisplay:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 88
    iget v1, v1, Landroid/graphics/PointF;->y:F

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 89
    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfTextMagnification;->m_image:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v2, v1

    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 90
    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfTextMagnification;->m_magnificationDisplay:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/amazon/android/docviewer/pdf/PdfTextMagnification;->m_image:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 92
    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    return p1
.end method

.method public isClicked(Landroid/graphics/PointF;)Z
    .locals 6

    .line 76
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfTextMagnification;->m_activeArea:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    const/high16 v3, 0x42900000    # 72.0f

    mul-float v2, v2, v3

    iget v4, v1, Landroid/graphics/RectF;->top:F

    mul-float v4, v4, v3

    iget v5, v1, Landroid/graphics/RectF;->right:F

    mul-float v5, v5, v3

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    mul-float v1, v1, v3

    invoke-direct {v0, v2, v4, v5, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 82
    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    return p1
.end method

.method public recycleImage()V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTextMagnification;->m_image:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 98
    iput-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTextMagnification;->m_image:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method public setActiveArea(Landroid/graphics/RectF;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfTextMagnification;->m_activeArea:Landroid/graphics/RectF;

    return-void
.end method

.method public setImage(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfTextMagnification;->m_image:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setMagnificationDisplayPosition(Landroid/graphics/PointF;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfTextMagnification;->m_magnificationDisplay:Landroid/graphics/PointF;

    return-void
.end method

.method public setOrdinal(I)V
    .locals 0

    .line 115
    iput p1, p0, Lcom/amazon/android/docviewer/pdf/PdfTextMagnification;->m_ordinal:I

    return-void
.end method

.method public setPageIndex(I)V
    .locals 0

    .line 119
    iput p1, p0, Lcom/amazon/android/docviewer/pdf/PdfTextMagnification;->m_pageIndex:I

    return-void
.end method

.method public setResourceID(Ljava/lang/String;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfTextMagnification;->m_resourceID:Ljava/lang/String;

    return-void
.end method
