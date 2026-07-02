.class public interface abstract Lcom/amazon/android/docviewer/grid/IGridPageTransform;
.super Ljava/lang/Object;
.source "IGridPageTransform.java"


# virtual methods
.method public abstract generateRects(Landroid/graphics/Rect;I)Ljava/util/Vector;
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
.end method

.method public abstract getDevicePointFromGridPoint(Landroid/graphics/Point;)Landroid/graphics/Point;
.end method

.method public abstract getGeometricPositionFromDevicePoint(Landroid/graphics/Point;)I
.end method

.method public abstract getGridCoordFromPositionPair(II)Landroid/graphics/Rect;
.end method

.method public abstract getGridPointFromDevicePoint(Landroid/graphics/Point;)Landroid/graphics/Point;
.end method

.method public abstract getPositionEquivalentFromGeometricPosition(I)I
.end method

.method public abstract getScale()F
.end method
