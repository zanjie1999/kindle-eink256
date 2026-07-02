.class public interface abstract Lcom/amazon/krf/platform/ThumbnailRenderer;
.super Ljava/lang/Object;
.source "ThumbnailRenderer.java"

# interfaces
.implements Lcom/amazon/krf/platform/Disposable;
.implements Landroid/content/ComponentCallbacks2;


# virtual methods
.method public abstract applySettings(Lcom/amazon/krf/platform/ViewSettings;)V
.end method

.method public abstract getBook()Lcom/amazon/krf/platform/KRFBook;
.end method

.method public abstract getPageCount()I
.end method

.method public abstract getSettings()Lcom/amazon/krf/platform/ViewSettings;
.end method

.method public abstract setWrapsContent(Z)V
.end method

.method public abstract thumbnailImageAtPage(III)Landroid/graphics/Bitmap;
.end method

.method public abstract thumbnailImageAtPagePercent(IIF)Landroid/graphics/Bitmap;
.end method

.method public abstract thumbnailImageInRange(Lcom/amazon/krf/platform/PositionRange;II)Landroid/graphics/Bitmap;
.end method

.method public abstract wrapsContent()Z
.end method
