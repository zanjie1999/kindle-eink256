.class public Lcom/amazon/android/docviewer/MopGHLPositionFactory;
.super Ljava/lang/Object;
.source "MopGHLPositionFactory.java"

# interfaces
.implements Lcom/amazon/kindle/krx/reader/IGHLPositionFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/krx/reader/IGHLPositionFactory<",
        "Lcom/amazon/kindle/krx/reader/IPosition;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromIndexAndOffset(ILandroid/graphics/PointF;)Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 0

    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/amazon/android/docviewer/MopGHLPositionFactory;->createFromIndexAndOffset(ILandroid/graphics/PointF;)Lcom/amazon/kindle/model/Annotations/IntPosition;

    move-result-object p1

    return-object p1
.end method

.method public createFromIndexAndOffset(ILandroid/graphics/PointF;)Lcom/amazon/kindle/model/Annotations/IntPosition;
    .locals 2

    .line 17
    iget v0, p2, Landroid/graphics/PointF;->x:F

    const v1, 0x43ff8000    # 511.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 18
    iget p2, p2, Landroid/graphics/PointF;->y:F

    const v1, 0x447fc000    # 1023.0f

    mul-float p2, p2, v1

    float-to-int p2, p2

    .line 20
    new-instance v1, Lcom/amazon/android/docviewer/grid/GridPosition;

    invoke-direct {v1, p1, v0, p2}, Lcom/amazon/android/docviewer/grid/GridPosition;-><init>(III)V

    return-object v1
.end method

.method public extractOffsetFromPosition(Lcom/amazon/kindle/krx/reader/IPosition;)Landroid/graphics/PointF;
    .locals 3

    .line 25
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    ushr-int/lit8 v0, v0, 0xa

    and-int/lit16 v0, v0, 0x1ff

    int-to-float v0, v0

    .line 26
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p1

    and-int/lit16 p1, p1, 0x3ff

    int-to-float p1, p1

    .line 28
    new-instance v1, Landroid/graphics/PointF;

    const v2, 0x43ff8000    # 511.0f

    div-float/2addr v0, v2

    const v2, 0x447fc000    # 1023.0f

    div-float/2addr p1, v2

    invoke-direct {v1, v0, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v1
.end method
