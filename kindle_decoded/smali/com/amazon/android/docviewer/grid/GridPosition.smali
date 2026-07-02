.class public Lcom/amazon/android/docviewer/grid/GridPosition;
.super Lcom/amazon/kindle/model/Annotations/IntPosition;
.source "GridPosition.java"


# instance fields
.field private pageIndex:I

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>(III)V
    .locals 1

    .line 16
    invoke-static {p1, p2, p3}, Lcom/amazon/android/docviewer/pdf/PdfGridPageTransform;->getGeometricPositionFromPageCoordinates(III)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/amazon/kindle/model/Annotations/IntPosition;-><init>(I)V

    .line 18
    iput p1, p0, Lcom/amazon/android/docviewer/grid/GridPosition;->pageIndex:I

    .line 19
    iput p2, p0, Lcom/amazon/android/docviewer/grid/GridPosition;->x:I

    .line 20
    iput p3, p0, Lcom/amazon/android/docviewer/grid/GridPosition;->y:I

    return-void
.end method


# virtual methods
.method public getPageIndex()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/amazon/android/docviewer/grid/GridPosition;->pageIndex:I

    return v0
.end method

.method public getX()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/amazon/android/docviewer/grid/GridPosition;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/amazon/android/docviewer/grid/GridPosition;->y:I

    return v0
.end method
