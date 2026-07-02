.class public interface abstract Lcom/amazon/kindle/mangaviewer/IMangaPagerAdapter;
.super Ljava/lang/Object;
.source "IMangaPagerAdapter.java"


# virtual methods
.method public abstract getCurrentPosition()I
.end method

.method public abstract getDocViewer()Lcom/amazon/android/docviewer/mobi/MangaDocViewer;
.end method

.method public abstract getRenderDrawableForPosition(I)Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;
.end method

.method public abstract isLeftPageAvailable()Z
.end method

.method public abstract isRightPageAvailable()Z
.end method

.method public abstract navigateAndStartPrerender(Lcom/amazon/kindle/mangaviewer/IMangaViewPager;)Z
.end method

.method public abstract startCurrentPageInVirtualPanelMode(Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;)V
.end method
