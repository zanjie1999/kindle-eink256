.class public interface abstract Lcom/amazon/kindle/rendering/IBookImageRenderer;
.super Ljava/lang/Object;
.source "IBookImageRenderer.java"


# virtual methods
.method public abstract getPageClip(Landroid/graphics/Rect;Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract getPageThumbnail(IIIZ)Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract getPageThumbnailView(Lcom/amazon/kindle/krx/reader/IPosition;II)Lcom/amazon/kindle/krx/content/images/KRXDisposableObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/reader/IPosition;",
            "II)",
            "Lcom/amazon/kindle/krx/content/images/KRXDisposableObject<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end method

.method public abstract reset()V
.end method
