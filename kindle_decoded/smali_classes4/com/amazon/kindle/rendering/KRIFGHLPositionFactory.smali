.class public Lcom/amazon/kindle/rendering/KRIFGHLPositionFactory;
.super Ljava/lang/Object;
.source "KRIFGHLPositionFactory.java"

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


# instance fields
.field private docViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/rendering/KRIFDocViewer;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/amazon/kindle/rendering/KRIFGHLPositionFactory;->docViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromIndexAndOffset(ILandroid/graphics/PointF;)Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 0

    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/rendering/KRIFGHLPositionFactory;->createFromIndexAndOffset(ILandroid/graphics/PointF;)Lcom/amazon/kindle/rendering/KRIFGeometricPosition;

    move-result-object p1

    return-object p1
.end method

.method public createFromIndexAndOffset(ILandroid/graphics/PointF;)Lcom/amazon/kindle/rendering/KRIFGeometricPosition;
    .locals 2

    .line 23
    iget v0, p2, Landroid/graphics/PointF;->y:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/PointF;->y:F

    .line 25
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFGHLPositionFactory;->docViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->createPositionObject(ILandroid/graphics/PointF;)Lcom/amazon/krf/platform/Position;

    move-result-object p1

    .line 26
    new-instance p2, Lcom/amazon/kindle/rendering/KRIFGeometricPosition;

    invoke-direct {p2, p1}, Lcom/amazon/kindle/rendering/KRIFGeometricPosition;-><init>(Lcom/amazon/krf/platform/Position;)V

    return-object p2
.end method

.method public extractOffsetFromPosition(Lcom/amazon/kindle/krx/reader/IPosition;)Landroid/graphics/PointF;
    .locals 2

    .line 32
    instance-of v0, p1, Lcom/amazon/kindle/rendering/IKRIFPlatformPosition;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 33
    check-cast p1, Lcom/amazon/kindle/rendering/IKRIFPlatformPosition;

    .line 34
    invoke-interface {p1}, Lcom/amazon/kindle/rendering/IKRIFPlatformPosition;->getPlatformPosition()Lcom/amazon/krf/platform/Position;

    move-result-object p1

    goto :goto_0

    .line 36
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getLongPosition()Ljava/lang/String;

    move-result-object p1

    .line 37
    invoke-static {p1}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 38
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFGHLPositionFactory;->docViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->createPositionObject(Ljava/lang/String;)Lcom/amazon/krf/platform/Position;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_2

    .line 42
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFGHLPositionFactory;->docViewer:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->extractPointFromKRFPosition(Lcom/amazon/krf/platform/Position;)Landroid/graphics/PointF;

    move-result-object p1

    if-eqz p1, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    .line 48
    iget v1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/PointF;->y:F

    return-object p1

    :cond_2
    return-object v1
.end method
