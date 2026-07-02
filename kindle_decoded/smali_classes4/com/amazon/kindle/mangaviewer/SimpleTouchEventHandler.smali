.class public abstract Lcom/amazon/kindle/mangaviewer/SimpleTouchEventHandler;
.super Ljava/lang/Object;
.source "SimpleTouchEventHandler.java"

# interfaces
.implements Lcom/amazon/kindle/mangaviewer/ITouchEventHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doubleTap(Landroid/view/MotionEvent;Lcom/amazon/kindle/mangaviewer/IMangaViewPager;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public firstPointerDown(Landroid/view/MotionEvent;Lcom/amazon/kindle/mangaviewer/IMangaViewPager;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected hideViewOptions(Lcom/amazon/kcp/reader/ui/ReaderLayout;)V
    .locals 1

    .line 72
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderMenuContainer()Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->isViewOptionsVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderMenuContainer()Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->hideAllViewOptionOverlays()Z

    :cond_0
    return-void
.end method

.method public keyDown(Landroid/view/KeyEvent;Lcom/amazon/kindle/mangaviewer/IMangaViewPager;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public keyUp(Landroid/view/KeyEvent;Lcom/amazon/kindle/mangaviewer/IMangaViewPager;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public longPress(Landroid/view/MotionEvent;Lcom/amazon/kindle/mangaviewer/IMangaViewPager;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public move(Landroid/view/MotionEvent;Lcom/amazon/kindle/mangaviewer/IMangaViewPager;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public pointerUp(Landroid/view/MotionEvent;Lcom/amazon/kindle/mangaviewer/IMangaViewPager;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public secondPointerDown(Landroid/view/MotionEvent;Lcom/amazon/kindle/mangaviewer/IMangaViewPager;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public singleTap(Landroid/view/MotionEvent;Lcom/amazon/kindle/mangaviewer/IMangaViewPager;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public singleUp(Landroid/view/MotionEvent;Lcom/amazon/kindle/mangaviewer/IMangaViewPager;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public swipe(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FFLcom/amazon/kindle/mangaviewer/IMangaViewPager;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
