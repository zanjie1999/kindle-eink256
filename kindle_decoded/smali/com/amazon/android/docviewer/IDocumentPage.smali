.class public interface abstract Lcom/amazon/android/docviewer/IDocumentPage;
.super Ljava/lang/Object;
.source "IDocumentPage.java"


# virtual methods
.method public abstract createCoveringRectangles(II)Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/Vector<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end method

.method public abstract createText(III)Ljava/lang/String;
.end method

.method public abstract getDecorativeRectangles()Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getElementAtPoint(IIIZ)Lcom/amazon/android/docviewer/IPageElement;
.end method

.method public abstract getElementClosestToPoint(IIIZ)Lcom/amazon/android/docviewer/IPageElement;
.end method

.method public abstract getElements()Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Lcom/amazon/android/docviewer/IPageElement;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getElements(I)Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Vector<",
            "Lcom/amazon/android/docviewer/IPageElement;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFirstElementPositionId()I
.end method

.method public abstract getLastElementPositionId()I
.end method

.method public abstract getPageState(I)[B
.end method
