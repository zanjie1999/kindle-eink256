.class public abstract Lcom/amazon/android/docviewer/grid/GridPageUtility;
.super Ljava/lang/Object;
.source "GridPageUtility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/android/docviewer/grid/GridPageUtility$CoordinateSystems;
    }
.end annotation


# direct methods
.method public static createCoveringGeometricRectangles(IILandroid/graphics/Rect;Lcom/amazon/android/docviewer/grid/IGridPage;Lcom/amazon/android/docviewer/grid/IGridPageTransform;)Ljava/util/Vector;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/graphics/Rect;",
            "Lcom/amazon/android/docviewer/grid/IGridPage;",
            "Lcom/amazon/android/docviewer/grid/IGridPageTransform;",
            ")",
            "Ljava/util/Vector<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 57
    sget-object p2, Lcom/amazon/android/docviewer/grid/GridPageUtility$CoordinateSystems;->DEVICE_COORD:Lcom/amazon/android/docviewer/grid/GridPageUtility$CoordinateSystems;

    invoke-static {p0, p1, p3, p2}, Lcom/amazon/android/docviewer/grid/GridPageUtility;->getRectFromPositionPair(IILcom/amazon/android/docviewer/grid/IGridPage;Lcom/amazon/android/docviewer/grid/GridPageUtility$CoordinateSystems;)Landroid/graphics/Rect;

    move-result-object p0

    if-nez p0, :cond_0

    .line 59
    new-instance p0, Ljava/util/Vector;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ljava/util/Vector;-><init>(I)V

    return-object p0

    .line 63
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/krl/R$dimen;->graphical_highlight_border_width:I

    .line 65
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    .line 68
    invoke-interface {p4}, Lcom/amazon/android/docviewer/grid/IGridPageTransform;->getScale()F

    move-result p2

    mul-float p1, p1, p2

    float-to-int p1, p1

    invoke-interface {p4, p0, p1}, Lcom/amazon/android/docviewer/grid/IGridPageTransform;->generateRects(Landroid/graphics/Rect;I)Ljava/util/Vector;

    move-result-object p0

    return-object p0
.end method

.method public static getDeviceRectFromGridRect(Landroid/graphics/Rect;Lcom/amazon/android/docviewer/grid/IGridPage;)Landroid/graphics/Rect;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 83
    :cond_0
    invoke-interface {p1}, Lcom/amazon/android/docviewer/grid/IGridPage;->getGridPageTransform()Lcom/amazon/android/docviewer/grid/IGridPageTransform;

    move-result-object p1

    .line 84
    new-instance v1, Landroid/graphics/Point;

    iget v2, p0, Landroid/graphics/Rect;->left:I

    iget v3, p0, Landroid/graphics/Rect;->top:I

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {p1, v1}, Lcom/amazon/android/docviewer/grid/IGridPageTransform;->getDevicePointFromGridPoint(Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v1

    .line 85
    new-instance v2, Landroid/graphics/Point;

    iget v3, p0, Landroid/graphics/Rect;->right:I

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v2, v3, p0}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {p1, v2}, Lcom/amazon/android/docviewer/grid/IGridPageTransform;->getDevicePointFromGridPoint(Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object p0

    if-eqz v1, :cond_2

    if-nez p0, :cond_1

    goto :goto_0

    .line 89
    :cond_1
    new-instance p1, Landroid/graphics/Rect;

    iget v0, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget v2, p0, Landroid/graphics/Point;->x:I

    iget p0, p0, Landroid/graphics/Point;->y:I

    invoke-direct {p1, v0, v1, v2, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static getGridRectFromDeviceRect(Landroid/graphics/Rect;Lcom/amazon/android/docviewer/grid/IGridPage;)Landroid/graphics/Rect;
    .locals 3

    .line 162
    invoke-interface {p1}, Lcom/amazon/android/docviewer/grid/IGridPage;->getGridPageTransform()Lcom/amazon/android/docviewer/grid/IGridPageTransform;

    move-result-object p1

    .line 163
    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/graphics/Rect;->top:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {p1, v0}, Lcom/amazon/android/docviewer/grid/IGridPageTransform;->getGridPointFromDevicePoint(Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    .line 164
    new-instance v1, Landroid/graphics/Point;

    iget v2, p0, Landroid/graphics/Rect;->right:I

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v1, v2, p0}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {p1, v1}, Lcom/amazon/android/docviewer/grid/IGridPageTransform;->getGridPointFromDevicePoint(Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object p0

    .line 165
    new-instance p1, Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v2, p0, Landroid/graphics/Point;->x:I

    iget p0, p0, Landroid/graphics/Point;->y:I

    invoke-direct {p1, v1, v0, v2, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1
.end method

.method public static getPositionEquivalentFromGeometricPosition(Lcom/amazon/android/docviewer/KindleDocViewer;I)I
    .locals 2

    .line 179
    const-class v0, Lcom/amazon/android/docviewer/grid/IGridPage;

    invoke-interface {p0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDoc;->getCurrentPage()Lcom/amazon/android/docviewer/IDocumentPage;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    .line 183
    :cond_0
    invoke-interface {p0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object p0

    invoke-interface {p0}, Lcom/amazon/android/docviewer/KindleDoc;->getCurrentPage()Lcom/amazon/android/docviewer/IDocumentPage;

    move-result-object p0

    check-cast p0, Lcom/amazon/android/docviewer/grid/IGridPage;

    if-nez p0, :cond_1

    return p1

    .line 188
    :cond_1
    invoke-interface {p0}, Lcom/amazon/android/docviewer/grid/IGridPage;->getGridPageTransform()Lcom/amazon/android/docviewer/grid/IGridPageTransform;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/amazon/android/docviewer/grid/IGridPageTransform;->getPositionEquivalentFromGeometricPosition(I)I

    move-result p0

    return p0
.end method

.method public static getRectFromPositionPair(IILcom/amazon/android/docviewer/grid/IGridPage;Lcom/amazon/android/docviewer/grid/GridPageUtility$CoordinateSystems;)Landroid/graphics/Rect;
    .locals 1

    .line 142
    invoke-interface {p2}, Lcom/amazon/android/docviewer/grid/IGridPage;->getGridPageTransform()Lcom/amazon/android/docviewer/grid/IGridPageTransform;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/amazon/android/docviewer/grid/IGridPageTransform;->getGridCoordFromPositionPair(II)Landroid/graphics/Rect;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 146
    :cond_0
    sget-object p1, Lcom/amazon/android/docviewer/grid/GridPageUtility$CoordinateSystems;->GRID_COORD:Lcom/amazon/android/docviewer/grid/GridPageUtility$CoordinateSystems;

    if-ne p3, p1, :cond_1

    return-object p0

    .line 150
    :cond_1
    invoke-static {p0, p2}, Lcom/amazon/android/docviewer/grid/GridPageUtility;->getDeviceRectFromGridRect(Landroid/graphics/Rect;Lcom/amazon/android/docviewer/grid/IGridPage;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method
