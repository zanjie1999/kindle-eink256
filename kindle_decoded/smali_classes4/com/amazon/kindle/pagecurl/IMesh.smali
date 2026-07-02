.class public interface abstract Lcom/amazon/kindle/pagecurl/IMesh;
.super Ljava/lang/Object;
.source "IMesh.java"


# virtual methods
.method public abstract drawOpenGLES20(Ljavax/microedition/khronos/opengles/GL10;I)V
.end method

.method public abstract drawOpenGLES20DropShadow(Ljavax/microedition/khronos/opengles/GL10;I)V
.end method

.method public abstract drawOpenGLES20SelfShadow(Ljavax/microedition/khronos/opengles/GL10;I)V
.end method

.method public abstract getBackImageIndex()I
.end method

.method public abstract getFrontImageIndex()I
.end method

.method public abstract invertBackFrontBitmap()V
.end method

.method public abstract isBackVisible()Z
.end method

.method public abstract isFrontVisible()Z
.end method

.method public abstract isTouchingTheMesh(Landroid/graphics/PointF;)Z
.end method

.method public abstract releaseBitmap()V
.end method

.method public abstract reset()V
.end method

.method public abstract setBackBitmap(ILcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoader;IILcom/amazon/kindle/pagecurl/CurlView;Z)V
.end method

.method public abstract setBackVisiblity(Z)V
.end method

.method public abstract setBackgroundColor(I)V
.end method

.method public abstract setBitmap(ILcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoader;IILcom/amazon/kindle/pagecurl/CurlView;Z)V
.end method

.method public abstract setDisplayFrontImageOnBack(Z)V
.end method

.method public abstract setFrontVisiblity(Z)V
.end method

.method public abstract setRect(Landroid/graphics/RectF;I)V
.end method

.method public abstract setShadowProvider(Lcom/amazon/kindle/pagecurl/opengles20/IShadowProvider;)V
.end method

.method public abstract updateCurlPos(Lcom/amazon/kindle/pagecurl/CurlView$PointerPosition;Landroid/graphics/PointF;Lcom/amazon/kindle/pagecurl/CurlStartPosition;Lcom/amazon/kindle/pagecurl/ViewMode;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
.end method
