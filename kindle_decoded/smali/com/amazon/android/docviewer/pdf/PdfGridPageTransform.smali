.class public Lcom/amazon/android/docviewer/pdf/PdfGridPageTransform;
.super Ljava/lang/Object;
.source "PdfGridPageTransform.java"

# interfaces
.implements Lcom/amazon/android/docviewer/grid/IGridPageTransform;


# static fields
.field public static final GEOMETRIC_POS_BITS_PAGE:I = 0xd

.field public static final GEOMETRIC_POS_BITS_X:I = 0x9

.field public static final GEOMETRIC_POS_BITS_Y:I = 0xa

.field public static final GEOMETRIC_POS_MAX_PAGE:I = 0x1fff

.field public static final GEOMETRIC_POS_MAX_X:I = 0x1ff

.field public static final GEOMETRIC_POS_MAX_Y:I = 0x3ff

.field public static final GEOMETRIC_POS_PAGE_OFFSET:I = 0x13


# instance fields
.field private final m_page:Lcom/amazon/android/docviewer/pdf/PdfPage;


# direct methods
.method public constructor <init>(Lcom/amazon/android/docviewer/pdf/PdfPage;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfGridPageTransform;->m_page:Lcom/amazon/android/docviewer/pdf/PdfPage;

    return-void
.end method

.method public static createGridPositionFromPosition(I)Lcom/amazon/android/docviewer/grid/GridPosition;
    .locals 3

    .line 149
    new-instance v0, Lcom/amazon/android/docviewer/grid/GridPosition;

    invoke-static {p0}, Lcom/amazon/android/docviewer/pdf/PdfGridPageTransform;->getPageIndexFromGeometricPosition(I)I

    move-result v1

    .line 150
    invoke-static {p0}, Lcom/amazon/android/docviewer/pdf/PdfGridPageTransform;->getUnscaledXCoordinateFromGeometricPosition(I)I

    move-result v2

    .line 151
    invoke-static {p0}, Lcom/amazon/android/docviewer/pdf/PdfGridPageTransform;->getUnscaledYCoordinateFromGeometricPosition(I)I

    move-result p0

    invoke-direct {v0, v1, v2, p0}, Lcom/amazon/android/docviewer/grid/GridPosition;-><init>(III)V

    return-object v0
.end method

.method public static getFirstGeometricPositionFromPageIndex(I)I
    .locals 0

    add-int/lit8 p0, p0, 0x1

    shl-int/lit8 p0, p0, 0x13

    return p0
.end method

.method public static getGeometricEndPosition(I)I
    .locals 0

    add-int/lit8 p0, p0, 0x2

    shl-int/lit8 p0, p0, 0x13

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public static getGeometricPositionFromPageCoordinates(III)I
    .locals 0

    .line 137
    invoke-static {p0}, Lcom/amazon/android/docviewer/pdf/PdfGridPageTransform;->getFirstGeometricPositionFromPageIndex(I)I

    move-result p0

    and-int/lit16 p1, p1, 0x1ff

    shl-int/lit8 p1, p1, 0xa

    or-int/2addr p0, p1

    and-int/lit16 p1, p2, 0x3ff

    or-int/2addr p0, p1

    return p0
.end method

.method public static getGeometricStartPosition(I)I
    .locals 0

    add-int/lit8 p0, p0, 0x1

    shl-int/lit8 p0, p0, 0x13

    return p0
.end method

.method public static getLastGeometricPositionFromPageIndex(I)I
    .locals 1

    add-int/lit8 p0, p0, 0x1

    shl-int/lit8 p0, p0, 0x13

    const v0, 0x7fc00

    or-int/2addr p0, v0

    or-int/lit16 p0, p0, 0x3ff

    return p0
.end method

.method public static getPageIndexFromGeometricPosition(I)I
    .locals 0

    ushr-int/lit8 p0, p0, 0x13

    and-int/lit16 p0, p0, 0x1fff

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public static getUnscaledXCoordinateFromGeometricPosition(I)I
    .locals 0

    shr-int/lit8 p0, p0, 0xa

    and-int/lit16 p0, p0, 0x1ff

    return p0
.end method

.method public static getUnscaledYCoordinateFromGeometricPosition(I)I
    .locals 0

    and-int/lit16 p0, p0, 0x3ff

    return p0
.end method


# virtual methods
.method public generateGeometricPosition(III)I
    .locals 0

    .line 172
    invoke-static {p1, p2, p3}, Lcom/amazon/android/docviewer/pdf/PdfGridPageTransform;->getGeometricPositionFromPageCoordinates(III)I

    move-result p1

    return p1
.end method

.method public generateRects(Landroid/graphics/Rect;I)Ljava/util/Vector;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "I)",
            "Ljava/util/Vector<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 231
    invoke-virtual {p1}, Landroid/graphics/Rect;->sort()V

    .line 232
    div-int/lit8 v0, p2, 0x2

    .line 233
    iget v1, p1, Landroid/graphics/Rect;->top:I

    sub-int v2, v1, v0

    add-int/2addr v1, v0

    .line 235
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v0

    if-ge v3, v1, :cond_0

    sub-int v3, v1, v3

    sub-int v3, p2, v3

    move v4, v3

    move v3, v1

    goto :goto_0

    :cond_0
    move v4, p2

    .line 242
    :goto_0
    iget v5, p1, Landroid/graphics/Rect;->left:I

    sub-int v6, v5, v0

    .line 243
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    add-int/2addr v5, v7

    sub-int/2addr v5, v0

    add-int v7, v6, p2

    if-ge v5, v7, :cond_1

    sub-int v5, v7, v5

    sub-int/2addr p2, v5

    move v5, v7

    .line 250
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v7, v0

    .line 251
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    sub-int/2addr p1, v0

    .line 253
    new-instance v8, Ljava/util/Vector;

    const/4 v9, 0x4

    invoke-direct {v8, v9}, Ljava/util/Vector;-><init>(I)V

    .line 254
    new-instance v9, Landroid/graphics/Rect;

    add-int/2addr v7, v6

    add-int v10, v2, v0

    invoke-direct {v9, v6, v2, v7, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v8, v9}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 255
    new-instance v2, Landroid/graphics/Rect;

    add-int/2addr v4, v3

    invoke-direct {v2, v6, v3, v7, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v8, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 256
    new-instance v2, Landroid/graphics/Rect;

    add-int/2addr v0, v6

    add-int/2addr p1, v1

    invoke-direct {v2, v6, v1, v0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v8, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 257
    new-instance v0, Landroid/graphics/Rect;

    add-int/2addr p2, v5

    invoke-direct {v0, v5, v1, p2, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v8, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-object v8
.end method

.method public getDevicePointFromGridPoint(Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 5

    .line 287
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfGridPageTransform;->m_page:Lcom/amazon/android/docviewer/pdf/PdfPage;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getRenderedPageRect()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 291
    :cond_0
    new-instance v1, Landroid/graphics/Point;

    iget v2, p1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    const v3, 0x43ff8000    # 511.0f

    div-float/2addr v2, v3

    .line 292
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    mul-float v2, v2, v3

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 293
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    const v4, 0x447fc000    # 1023.0f

    div-float/2addr p1, v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float p1, p1, v4

    sub-float/2addr v3, p1

    iget p1, v0, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    add-float/2addr v3, p1

    float-to-int p1, v3

    invoke-direct {v1, v2, p1}, Landroid/graphics/Point;-><init>(II)V

    return-object v1
.end method

.method public getFirstGeometricPositionFromPosition(I)I
    .locals 0

    .line 87
    invoke-static {p1}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getPageIndexFromPosition(I)I

    move-result p1

    .line 88
    invoke-static {p1}, Lcom/amazon/android/docviewer/pdf/PdfGridPageTransform;->getFirstGeometricPositionFromPageIndex(I)I

    move-result p1

    return p1
.end method

.method public getGeometricEndPosition()I
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfGridPageTransform;->m_page:Lcom/amazon/android/docviewer/pdf/PdfPage;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getPageIndex()I

    move-result v0

    invoke-static {v0}, Lcom/amazon/android/docviewer/pdf/PdfGridPageTransform;->getGeometricEndPosition(I)I

    move-result v0

    return v0
.end method

.method public getGeometricPositionFromDevicePoint(Landroid/graphics/Point;)I
    .locals 2

    .line 279
    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/pdf/PdfGridPageTransform;->getGridPointFromDevicePoint(Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfGridPageTransform;->m_page:Lcom/amazon/android/docviewer/pdf/PdfPage;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getPageIndex()I

    move-result v0

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-static {v0, v1, p1}, Lcom/amazon/android/docviewer/pdf/PdfGridPageTransform;->getGeometricPositionFromPageCoordinates(III)I

    move-result p1

    return p1
.end method

.method public getGeometricStartPosition()I
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfGridPageTransform;->m_page:Lcom/amazon/android/docviewer/pdf/PdfPage;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getPageIndex()I

    move-result v0

    invoke-static {v0}, Lcom/amazon/android/docviewer/pdf/PdfGridPageTransform;->getGeometricStartPosition(I)I

    move-result v0

    return v0
.end method

.method public getGridCoordFromPositionPair(II)Landroid/graphics/Rect;
    .locals 3

    .line 272
    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/pdf/PdfGridPageTransform;->getGridPositionFromPosition(I)Lcom/amazon/android/docviewer/grid/GridPosition;

    move-result-object p1

    .line 273
    invoke-virtual {p0, p2}, Lcom/amazon/android/docviewer/pdf/PdfGridPageTransform;->getGridPositionFromPosition(I)Lcom/amazon/android/docviewer/grid/GridPosition;

    move-result-object p2

    .line 274
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/grid/GridPosition;->getX()I

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/grid/GridPosition;->getY()I

    move-result p1

    invoke-virtual {p2}, Lcom/amazon/android/docviewer/grid/GridPosition;->getX()I

    move-result v2

    invoke-virtual {p2}, Lcom/amazon/android/docviewer/grid/GridPosition;->getY()I

    move-result p2

    invoke-direct {v0, v1, p1, v2, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public getGridPointFromDevicePoint(Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 4

    .line 298
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfGridPageTransform;->m_page:Lcom/amazon/android/docviewer/pdf/PdfPage;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getRenderedPageRect()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 302
    :cond_0
    new-instance v1, Landroid/graphics/Point;

    iget v2, p1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    .line 303
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    const v3, 0x43ff8000    # 511.0f

    mul-float v2, v2, v3

    float-to-int v2, v2

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr p1, v3

    .line 304
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    const v0, 0x447fc000    # 1023.0f

    mul-float p1, p1, v0

    sub-float/2addr v0, p1

    float-to-int p1, v0

    invoke-direct {v1, v2, p1}, Landroid/graphics/Point;-><init>(II)V

    return-object v1
.end method

.method public getGridPositionFromPosition(I)Lcom/amazon/android/docviewer/grid/GridPosition;
    .locals 0

    .line 161
    invoke-static {p1}, Lcom/amazon/android/docviewer/pdf/PdfGridPageTransform;->createGridPositionFromPosition(I)Lcom/amazon/android/docviewer/grid/GridPosition;

    move-result-object p1

    return-object p1
.end method

.method public getLastGeometricPositionFromPosition(I)I
    .locals 0

    .line 92
    invoke-static {p1}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getPageIndexFromPosition(I)I

    move-result p1

    .line 93
    invoke-static {p1}, Lcom/amazon/android/docviewer/pdf/PdfGridPageTransform;->getLastGeometricPositionFromPageIndex(I)I

    move-result p1

    return p1
.end method

.method public getPageRectOffset(Landroid/graphics/Rect;)Landroid/graphics/Point;
    .locals 4

    .line 184
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfGridPageTransform;->m_page:Lcom/amazon/android/docviewer/pdf/PdfPage;

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/amazon/android/docviewer/pdf/PdfGridPageTransform;->m_page:Lcom/amazon/android/docviewer/pdf/PdfPage;

    .line 186
    invoke-virtual {v2}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getPageHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 184
    invoke-virtual {v0, p1, v1}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getDeviceRectFromLayoutRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 188
    new-instance v1, Landroid/graphics/Point;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget p1, p1, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, v0

    invoke-direct {v1, v2, p1}, Landroid/graphics/Point;-><init>(II)V

    return-object v1
.end method

.method public getPositionEquivalentFromGeometricPosition(I)I
    .locals 0

    .line 72
    invoke-static {p1}, Lcom/amazon/android/docviewer/pdf/PdfGridPageTransform;->getPageIndexFromGeometricPosition(I)I

    move-result p1

    invoke-static {p1}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getPositionFromPageIndex(I)I

    move-result p1

    return p1
.end method

.method public getScale()F
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfGridPageTransform;->m_page:Lcom/amazon/android/docviewer/pdf/PdfPage;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getScale()F

    move-result v0

    return v0
.end method
