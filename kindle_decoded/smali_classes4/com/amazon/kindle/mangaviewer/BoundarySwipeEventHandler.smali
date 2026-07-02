.class public Lcom/amazon/kindle/mangaviewer/BoundarySwipeEventHandler;
.super Lcom/amazon/kindle/mangaviewer/SimpleTouchEventHandler;
.source "BoundarySwipeEventHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/amazon/kindle/mangaviewer/SimpleTouchEventHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public swipe(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FFLcom/amazon/kindle/mangaviewer/IMangaViewPager;)Z
    .locals 1

    .line 18
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p2

    const/4 p4, 0x0

    cmpl-float p1, p1, p2

    if-lez p1, :cond_3

    .line 19
    invoke-interface {p5}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->getAdapter()Lcom/amazon/kindle/mangaviewer/IMangaPagerAdapter;

    move-result-object p1

    const/4 p2, 0x0

    cmpl-float v0, p3, p2

    if-lez v0, :cond_1

    .line 20
    invoke-interface {p1}, Lcom/amazon/kindle/mangaviewer/IMangaPagerAdapter;->isLeftPageAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 21
    invoke-interface {p5}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->getAdapter()Lcom/amazon/kindle/mangaviewer/IMangaPagerAdapter;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/mangaviewer/IMangaPagerAdapter;->getDocViewer()Lcom/amazon/android/docviewer/mobi/MangaDocViewer;

    move-result-object p1

    .line 24
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->isBookNavigatorInitialized()Z

    move-result p2

    .line 25
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->getReadingDirection()Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

    move-result-object p1

    sget-object p3, Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;->LEFT_TO_RIGHT:Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

    if-ne p1, p3, :cond_0

    const/4 p2, 0x0

    .line 30
    :cond_0
    invoke-interface {p5, p2}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->publishPageTurnAbortedEvent(Z)V

    goto :goto_1

    :cond_1
    cmpg-float p2, p3, p2

    if-gez p2, :cond_3

    .line 31
    invoke-interface {p1}, Lcom/amazon/kindle/mangaviewer/IMangaPagerAdapter;->isRightPageAvailable()Z

    move-result p1

    if-nez p1, :cond_3

    .line 32
    invoke-interface {p5}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->getAdapter()Lcom/amazon/kindle/mangaviewer/IMangaPagerAdapter;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/mangaviewer/IMangaPagerAdapter;->getDocViewer()Lcom/amazon/android/docviewer/mobi/MangaDocViewer;

    move-result-object p1

    .line 36
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->getReadingDirection()Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

    move-result-object p2

    sget-object p3, Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;->LEFT_TO_RIGHT:Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

    if-ne p2, p3, :cond_2

    .line 38
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->isBookNavigatorInitialized()Z

    move-result p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 41
    :goto_0
    invoke-interface {p5, p1}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->publishPageTurnAbortedEvent(Z)V

    :cond_3
    :goto_1
    return p4
.end method
