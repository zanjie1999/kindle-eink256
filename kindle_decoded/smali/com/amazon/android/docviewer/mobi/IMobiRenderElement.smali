.class public interface abstract Lcom/amazon/android/docviewer/mobi/IMobiRenderElement;
.super Ljava/lang/Object;
.source "IMobiRenderElement.java"


# virtual methods
.method public abstract createPageBitmap(IIII)Landroid/graphics/Bitmap;
.end method

.method public abstract dispose()V
.end method

.method public abstract draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
.end method

.method public abstract getHeight()I
.end method

.method public abstract getWidth()I
.end method

.method public abstract readyToDraw()Z
.end method

.method public abstract recycle()V
.end method

.method public abstract render(IIILcom/amazon/android/docviewer/mobi/IPageProvider;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lcom/amazon/android/docviewer/mobi/IPageProvider<",
            "Lcom/amazon/android/docviewer/mobi/MobiPage;",
            ">;)Z"
        }
    .end annotation
.end method
