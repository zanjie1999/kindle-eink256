.class public interface abstract Lcom/amazon/kindle/krx/content/IBookContent;
.super Ljava/lang/Object;
.source "IBookContent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/amazon/kindle/krx/reader/IPosition;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getCoveringRectangle(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/reader/Rectangle;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getElement(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/content/IBookElement$BookElementType;)Lcom/amazon/kindle/krx/content/IBookElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/amazon/kindle/krx/content/IBookElement$BookElementType;",
            ")",
            "Lcom/amazon/kindle/krx/content/IBookElement;"
        }
    .end annotation
.end method

.method public abstract getElements(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/content/IBookElement$BookElementType;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;",
            "Lcom/amazon/kindle/krx/content/IBookElement$BookElementType;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/content/IBookElement;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getGraphicForRange(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;II)Landroid/graphics/Bitmap;
.end method

.method public abstract getImageFromImageId(Ljava/lang/String;Lcom/amazon/kindle/krx/content/images/ImageScaling;)Landroid/graphics/Bitmap;
.end method

.method public abstract getLocationFromPosition(Lcom/amazon/kindle/krx/reader/IPosition;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method

.method public abstract getPageIndexFromPosition(Lcom/amazon/kindle/krx/reader/IPosition;)I
.end method

.method public abstract getPageThumbnail(Lcom/amazon/kindle/krx/reader/IPosition;)Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation
.end method

.method public abstract getPageThumbnail(Lcom/amazon/kindle/krx/reader/IPosition;II)Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation
.end method

.method public abstract getPageThumbnailView(Lcom/amazon/kindle/krx/reader/IPosition;II)Lcom/amazon/kindle/krx/content/images/KRXDisposableObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)",
            "Lcom/amazon/kindle/krx/content/images/KRXDisposableObject<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getScribbleAsBitmap(Lcom/amazon/kindle/krx/content/KRXIAnnotation;II)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/content/KRXIAnnotation;",
            "II)",
            "Ljava/util/concurrent/Future<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWords(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract getWordsAroundPosition(Lcom/amazon/kindle/krx/reader/IPosition;II)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getWordsAroundPosition(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;II)[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;II)[",
            "Ljava/lang/String;"
        }
    .end annotation
.end method
