.class public interface abstract Lcom/amazon/android/docviewer/grid/IGridPage;
.super Ljava/lang/Object;
.source "IGridPage.java"


# virtual methods
.method public abstract createBorderRectangles(II)Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/Vector<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDeviceRectFromLayoutRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
.end method

.method public abstract getGeometricEndPosition()I
.end method

.method public abstract getGeometricStartPosition()I
.end method

.method public abstract getGridPageTransform()Lcom/amazon/android/docviewer/grid/IGridPageTransform;
.end method

.method public abstract getPageIndex()I
.end method

.method public abstract getRenderedPageRect()Landroid/graphics/Rect;
.end method
