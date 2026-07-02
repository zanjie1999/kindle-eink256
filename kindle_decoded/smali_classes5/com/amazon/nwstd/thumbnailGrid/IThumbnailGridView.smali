.class public interface abstract Lcom/amazon/nwstd/thumbnailGrid/IThumbnailGridView;
.super Ljava/lang/Object;
.source "IThumbnailGridView.java"


# virtual methods
.method public abstract computeThumbnailGridViewImageDimension(FF)Lcom/amazon/kindle/util/drawing/Dimension;
.end method

.method public abstract getCoordinateOfPage(I)Landroid/graphics/Point;
.end method

.method public abstract getVisibility()I
.end method

.method public abstract highlight(I)V
.end method

.method public abstract initSystemWindowsInsets(Landroid/graphics/Rect;)V
.end method

.method public abstract onOrientationChanged(IFF)V
.end method

.method public abstract setAdapter(Lcom/amazon/kcp/periodicals/model/ThumbnailItemAdapter;)V
.end method

.method public abstract setCurrentPage(I)V
.end method

.method public abstract setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
.end method

.method public abstract setTopMargin(I)V
.end method

.method public abstract setVisibility(I)V
.end method

.method public abstract updateLayout()V
.end method
