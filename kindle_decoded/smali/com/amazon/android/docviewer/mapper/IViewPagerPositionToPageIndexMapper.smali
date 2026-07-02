.class public interface abstract Lcom/amazon/android/docviewer/mapper/IViewPagerPositionToPageIndexMapper;
.super Ljava/lang/Object;
.source "IViewPagerPositionToPageIndexMapper.java"


# virtual methods
.method public abstract getContentPageIndexFromDisplayedPosition(II)Lcom/amazon/android/docviewer/mapper/PageIndex;
.end method

.method public abstract getContentPageIndexFromViewPagerPosition(II)Lcom/amazon/android/docviewer/mapper/PageIndex;
.end method

.method public abstract getContentPageIndexOfNextPage(Lcom/amazon/android/docviewer/mapper/PageIndex;I)Lcom/amazon/android/docviewer/mapper/PageIndex;
.end method

.method public abstract getDisplayedPageCount(I)I
.end method

.method public abstract getDisplayedPositionFromContentPageIndex(Lcom/amazon/android/docviewer/mapper/PageIndex;I)I
.end method

.method public abstract getDisplayedPositionFromViewPagerPosition(II)I
.end method

.method public abstract getViewPagerPositionFromContentPageIndex(Lcom/amazon/android/docviewer/mapper/PageIndex;I)I
.end method

.method public abstract getViewPagerScreensCount(I)I
.end method

.method public abstract isFirstPage(Lcom/amazon/android/docviewer/mapper/PageIndex;I)Z
.end method

.method public abstract isLastPage(Lcom/amazon/android/docviewer/mapper/PageIndex;I)Z
.end method
