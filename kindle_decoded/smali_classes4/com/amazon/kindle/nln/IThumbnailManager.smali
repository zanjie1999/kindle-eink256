.class public interface abstract Lcom/amazon/kindle/nln/IThumbnailManager;
.super Ljava/lang/Object;
.source "IThumbnailManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/nln/IThumbnailManager$IThumbnailsUpdatedListener;
    }
.end annotation


# virtual methods
.method public abstract addThumbnailUpdateListener(Lcom/amazon/kindle/nln/IThumbnailManager$IThumbnailsUpdatedListener;)V
.end method

.method public abstract disposeUnmanagedView(Landroid/view/View;)V
.end method

.method public abstract getHintPosition()Lcom/amazon/kindle/krx/reader/IPosition;
.end method

.method public abstract getIndexedChunkOfPagesAroundPosition(Lcom/amazon/kindle/krx/reader/IPosition;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/reader/IPosition;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/nln/IThumbnailPage;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPage(Lcom/amazon/kindle/krx/reader/IPosition;)Lcom/amazon/kindle/nln/IThumbnailPage;
.end method

.method public abstract getPage(Lcom/amazon/kindle/krx/reader/IPosition;Z)Lcom/amazon/kindle/nln/IThumbnailPage;
.end method

.method public abstract getThumbnailScale()F
.end method

.method public abstract getUnmanagedViewForPage(Lcom/amazon/kindle/nln/IThumbnailPage;Landroid/graphics/Rect;Z)Landroid/view/View;
.end method

.method public abstract getUnmanagedViewForPosition(Lcom/amazon/kindle/krx/reader/IPosition;Landroid/graphics/Rect;)Landroid/view/View;
.end method

.method public abstract getViewForPage(Lcom/amazon/kindle/nln/IThumbnailPage;)Landroid/view/View;
.end method

.method public abstract isDisposed()Z
.end method

.method public abstract isHintPageEqualsFocusPage(Lcom/amazon/kindle/nln/IThumbnailPage;)Z
.end method

.method public abstract isPageIndexingComplete()Z
.end method

.method public abstract pageHasAnnotation(Lcom/amazon/kindle/nln/IThumbnailPage;I)Z
.end method

.method public abstract removeThumbnailUpdateListener(Lcom/amazon/kindle/nln/IThumbnailManager$IThumbnailsUpdatedListener;)V
.end method

.method public abstract setFocusPositionHint(Lcom/amazon/kindle/krx/reader/IPosition;)V
.end method

.method public abstract setThumbnailScale(F)V
.end method

.method public abstract thumbnailViewNoLongerNeeded(Landroid/view/View;)V
.end method

.method public abstract updateHintPage(Lcom/amazon/kindle/krx/reader/IPosition;)V
.end method
