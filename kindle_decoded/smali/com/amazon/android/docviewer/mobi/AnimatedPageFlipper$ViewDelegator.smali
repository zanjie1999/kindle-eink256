.class public interface abstract Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$ViewDelegator;
.super Ljava/lang/Object;
.source "AnimatedPageFlipper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ViewDelegator"
.end annotation


# virtual methods
.method public abstract finishPan()V
.end method

.method public abstract finishZoom()V
.end method

.method public abstract getCurrentPageDrawable()Lcom/amazon/android/docviewer/mobi/PageDrawable;
.end method

.method public abstract getFooterRect()Landroid/graphics/Rect;
.end method

.method public abstract getHeaderRect()Landroid/graphics/Rect;
.end method

.method public abstract getPageMargins()Landroid/view/ViewGroup$MarginLayoutParams;
.end method

.method public abstract getPageTurnDefaultDuration()J
.end method

.method public abstract getPageTurnMargin()I
.end method

.method public abstract getViewPort()Landroid/graphics/RectF;
.end method

.method public abstract isImageCornerInZoom()Z
.end method

.method public abstract isZoomed()Z
.end method

.method public abstract onRemoveFromDocViewer()V
.end method

.method public abstract paintCurrentView(Landroid/graphics/Canvas;)V
.end method

.method public abstract paintTransientView(Landroid/graphics/Canvas;)V
.end method

.method public abstract panPage(FF)V
.end method

.method public abstract preparePage()V
.end method

.method public abstract prepareTransientPage(I)V
.end method

.method public abstract refresh()V
.end method

.method public abstract resetZoom(FF)V
.end method

.method public abstract setColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode;)V
.end method

.method public abstract setCurrentViewBounds(IIII)V
.end method

.method public abstract setDefaultFontFace(Ljava/lang/String;)V
.end method

.method public abstract setFontSize(I)V
.end method

.method public abstract setLineSpacing(I)V
.end method

.method public abstract setMargin(Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;)V
.end method

.method public abstract setMarginColor(I)V
.end method

.method public abstract setTitleVisibility(ZZ)V
.end method

.method public abstract setTransientViewBounds(IIII)V
.end method

.method public abstract startPan()V
.end method

.method public abstract startZoom()V
.end method

.method public abstract zoom(FFF)V
.end method
