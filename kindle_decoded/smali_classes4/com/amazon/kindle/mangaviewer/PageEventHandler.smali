.class public Lcom/amazon/kindle/mangaviewer/PageEventHandler;
.super Lcom/amazon/kindle/mangaviewer/SimpleTouchEventHandler;
.source "PageEventHandler.java"


# static fields
.field private static final PAGE_EVENT_HANDLER:Ljava/lang/String; = "PageEventHandler"


# instance fields
.field private animationDisabled:Z

.field private m_layout:Lcom/amazon/kcp/reader/ui/BookLayout;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/reader/ui/BookLayout;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/amazon/kindle/mangaviewer/SimpleTouchEventHandler;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/amazon/kindle/mangaviewer/PageEventHandler;->m_layout:Lcom/amazon/kcp/reader/ui/BookLayout;

    .line 28
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kcp/util/DeviceUtils;->isEinkScreen(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazon/kindle/mangaviewer/PageEventHandler;->animationDisabled:Z

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/mangaviewer/PageEventHandler;)Lcom/amazon/kcp/reader/ui/BookLayout;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/amazon/kindle/mangaviewer/PageEventHandler;->m_layout:Lcom/amazon/kcp/reader/ui/BookLayout;

    return-object p0
.end method

.method private backwardOneItem(Lcom/amazon/kindle/mangaviewer/IMangaViewPager;)Z
    .locals 3

    .line 245
    invoke-interface {p1}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->getAdapter()Lcom/amazon/kindle/mangaviewer/IMangaPagerAdapter;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/mangaviewer/IMangaPagerAdapter;->getDocViewer()Lcom/amazon/android/docviewer/mobi/MangaDocViewer;

    move-result-object v0

    .line 246
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->isNavigatingWithinPage()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->hasPrevNavigationStop()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 247
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->navigateToPrevNavigationStop()V

    goto :goto_0

    .line 248
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->isPrevPageAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 249
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->navigateToPrevPage()V

    .line 250
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v1, "PageEventHandler"

    const-string v2, "PageTurnVolumeButtons"

    invoke-virtual {p1, v1, v2, v0}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 252
    invoke-interface {p1, v0}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->publishPageTurnAbortedEvent(Z)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private forwardOneItem(Lcom/amazon/kindle/mangaviewer/IMangaViewPager;)Z
    .locals 3

    .line 232
    invoke-interface {p1}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->getAdapter()Lcom/amazon/kindle/mangaviewer/IMangaPagerAdapter;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/mangaviewer/IMangaPagerAdapter;->getDocViewer()Lcom/amazon/android/docviewer/mobi/MangaDocViewer;

    move-result-object v0

    .line 233
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->isNavigatingWithinPage()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->hasNextNavigationStop()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 234
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->navigateToNextNavigationStop()V

    goto :goto_0

    .line 235
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->isNextPageAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 236
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->navigateToNextPage()V

    .line 237
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v1, "PageEventHandler"

    const-string v2, "PageTurnVolumeButtons"

    invoke-virtual {p1, v1, v2, v0}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    goto :goto_0

    .line 239
    :cond_1
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->isBookNavigatorInitialized()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->publishPageTurnAbortedEvent(Z)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private reportPageTurnMetrics(Landroid/view/MotionEvent;Lcom/amazon/kcp/reader/gestures/PageTurnGestureMetrics$MetricsGestureType;)V
    .locals 2

    .line 258
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/mangaviewer/PageEventHandler$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/amazon/kindle/mangaviewer/PageEventHandler$1;-><init>(Lcom/amazon/kindle/mangaviewer/PageEventHandler;Lcom/amazon/kcp/reader/gestures/PageTurnGestureMetrics$MetricsGestureType;Landroid/view/MotionEvent;)V

    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/IThreadPoolManager;->submitSingleThreadTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method


# virtual methods
.method public keyDown(Landroid/view/KeyEvent;Lcom/amazon/kindle/mangaviewer/IMangaViewPager;)Z
    .locals 2

    .line 181
    invoke-interface {p2}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->getCurrentImageView()Lcom/amazon/kindle/mangaviewer/BoundImageView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 182
    invoke-virtual {v0}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->hasRenderDrawable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 183
    invoke-interface {p2}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->getViewMode()Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;->FULL_SCREEN:Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 187
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->areVolumeKeysPageControls()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 189
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x18

    if-eq v0, v1, :cond_1

    const/16 v1, 0x19

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1

    .line 198
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/amazon/kindle/mangaviewer/SimpleTouchEventHandler;->keyDown(Landroid/view/KeyEvent;Lcom/amazon/kindle/mangaviewer/IMangaViewPager;)Z

    move-result p1

    return p1

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public keyUp(Landroid/view/KeyEvent;Lcom/amazon/kindle/mangaviewer/IMangaViewPager;)Z
    .locals 2

    .line 203
    invoke-interface {p2}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->getCurrentImageView()Lcom/amazon/kindle/mangaviewer/BoundImageView;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 204
    invoke-virtual {v0}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->hasRenderDrawable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 205
    invoke-interface {p2}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->getViewMode()Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;->FULL_SCREEN:Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 209
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->areVolumeKeysPageControls()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 215
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x18

    if-eq v0, v1, :cond_2

    const/16 v1, 0x19

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 217
    :cond_1
    iget-object p1, p0, Lcom/amazon/kindle/mangaviewer/PageEventHandler;->m_layout:Lcom/amazon/kcp/reader/ui/BookLayout;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/mangaviewer/SimpleTouchEventHandler;->hideViewOptions(Lcom/amazon/kcp/reader/ui/ReaderLayout;)V

    .line 218
    invoke-direct {p0, p2}, Lcom/amazon/kindle/mangaviewer/PageEventHandler;->forwardOneItem(Lcom/amazon/kindle/mangaviewer/IMangaViewPager;)Z

    move-result p1

    return p1

    .line 221
    :cond_2
    iget-object p1, p0, Lcom/amazon/kindle/mangaviewer/PageEventHandler;->m_layout:Lcom/amazon/kcp/reader/ui/BookLayout;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/mangaviewer/SimpleTouchEventHandler;->hideViewOptions(Lcom/amazon/kcp/reader/ui/ReaderLayout;)V

    .line 222
    invoke-direct {p0, p2}, Lcom/amazon/kindle/mangaviewer/PageEventHandler;->backwardOneItem(Lcom/amazon/kindle/mangaviewer/IMangaViewPager;)Z

    move-result p1

    return p1

    .line 228
    :cond_3
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/amazon/kindle/mangaviewer/SimpleTouchEventHandler;->keyDown(Landroid/view/KeyEvent;Lcom/amazon/kindle/mangaviewer/IMangaViewPager;)Z

    move-result p1

    return p1

    :cond_4
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public singleTap(Landroid/view/MotionEvent;Lcom/amazon/kindle/mangaviewer/IMangaViewPager;)Z
    .locals 6

    .line 85
    invoke-interface {p2}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->getAdapter()Lcom/amazon/kindle/mangaviewer/IMangaPagerAdapter;

    move-result-object v0

    .line 87
    invoke-interface {p2}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->getCurrentImageView()Lcom/amazon/kindle/mangaviewer/BoundImageView;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    .line 88
    invoke-virtual {v1}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->hasRenderDrawable()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 89
    invoke-interface {p2}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->getViewMode()Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;

    move-result-object v1

    sget-object v3, Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;->FULL_SCREEN:Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;

    if-eq v1, v3, :cond_0

    goto/16 :goto_1

    .line 95
    :cond_0
    iget-object v1, p0, Lcom/amazon/kindle/mangaviewer/PageEventHandler;->m_layout:Lcom/amazon/kcp/reader/ui/BookLayout;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/BookLayout;->areOverlaysVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    .line 100
    :cond_1
    invoke-interface {p2, p1}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->isTopMarginTap(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    .line 104
    :cond_2
    invoke-interface {p2, p1}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->isLeftSideTap(Landroid/view/MotionEvent;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_7

    .line 105
    invoke-interface {p2}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->getAdapter()Lcom/amazon/kindle/mangaviewer/IMangaPagerAdapter;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/mangaviewer/IMangaPagerAdapter;->getDocViewer()Lcom/amazon/android/docviewer/mobi/MangaDocViewer;

    move-result-object v1

    .line 106
    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->isNavigatingWithinPage()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 107
    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->getReadingDirection()Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

    move-result-object v4

    sget-object v5, Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;->LEFT_TO_RIGHT:Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

    if-ne v4, v5, :cond_3

    .line 108
    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->hasPrevNavigationStop()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 109
    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->navigateToPrevNavigationStop()V

    .line 110
    sget-object p2, Lcom/amazon/kcp/reader/gestures/PageTurnGestureMetrics$MetricsGestureType;->TAP:Lcom/amazon/kcp/reader/gestures/PageTurnGestureMetrics$MetricsGestureType;

    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/mangaviewer/PageEventHandler;->reportPageTurnMetrics(Landroid/view/MotionEvent;Lcom/amazon/kcp/reader/gestures/PageTurnGestureMetrics$MetricsGestureType;)V

    return v3

    .line 114
    :cond_3
    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->hasNextNavigationStop()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 115
    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->navigateToNextNavigationStop()V

    .line 116
    sget-object p2, Lcom/amazon/kcp/reader/gestures/PageTurnGestureMetrics$MetricsGestureType;->TAP:Lcom/amazon/kcp/reader/gestures/PageTurnGestureMetrics$MetricsGestureType;

    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/mangaviewer/PageEventHandler;->reportPageTurnMetrics(Landroid/view/MotionEvent;Lcom/amazon/kcp/reader/gestures/PageTurnGestureMetrics$MetricsGestureType;)V

    return v3

    .line 121
    :cond_4
    invoke-interface {v0}, Lcom/amazon/kindle/mangaviewer/IMangaPagerAdapter;->isLeftPageAvailable()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 122
    invoke-interface {v0}, Lcom/amazon/kindle/mangaviewer/IMangaPagerAdapter;->getDocViewer()Lcom/amazon/android/docviewer/mobi/MangaDocViewer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->startTapToTurnPage()V

    .line 123
    invoke-interface {p2}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->getCurrentItem()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-interface {p2, v0}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->setCurrentItem(I)V

    .line 124
    sget-object p2, Lcom/amazon/kcp/reader/gestures/PageTurnGestureMetrics$MetricsGestureType;->TAP:Lcom/amazon/kcp/reader/gestures/PageTurnGestureMetrics$MetricsGestureType;

    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/mangaviewer/PageEventHandler;->reportPageTurnMetrics(Landroid/view/MotionEvent;Lcom/amazon/kcp/reader/gestures/PageTurnGestureMetrics$MetricsGestureType;)V

    return v3

    .line 129
    :cond_5
    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->isBookNavigatorInitialized()Z

    move-result p1

    .line 130
    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->getReadingDirection()Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;->LEFT_TO_RIGHT:Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

    if-ne v0, v1, :cond_6

    goto :goto_0

    :cond_6
    move v2, p1

    .line 136
    :goto_0
    invoke-interface {p2, v2}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->publishPageTurnAbortedEvent(Z)V

    return v3

    .line 139
    :cond_7
    invoke-interface {p2, p1}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->isRightSideTap(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 140
    invoke-interface {p2}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->getAdapter()Lcom/amazon/kindle/mangaviewer/IMangaPagerAdapter;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/mangaviewer/IMangaPagerAdapter;->getDocViewer()Lcom/amazon/android/docviewer/mobi/MangaDocViewer;

    move-result-object v1

    .line 141
    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->isNavigatingWithinPage()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 142
    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->getReadingDirection()Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

    move-result-object v4

    sget-object v5, Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;->LEFT_TO_RIGHT:Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

    if-eq v4, v5, :cond_8

    .line 143
    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->hasPrevNavigationStop()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 144
    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->navigateToPrevNavigationStop()V

    .line 145
    sget-object p2, Lcom/amazon/kcp/reader/gestures/PageTurnGestureMetrics$MetricsGestureType;->TAP:Lcom/amazon/kcp/reader/gestures/PageTurnGestureMetrics$MetricsGestureType;

    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/mangaviewer/PageEventHandler;->reportPageTurnMetrics(Landroid/view/MotionEvent;Lcom/amazon/kcp/reader/gestures/PageTurnGestureMetrics$MetricsGestureType;)V

    return v3

    .line 149
    :cond_8
    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->hasNextNavigationStop()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 150
    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->navigateToNextNavigationStop()V

    .line 151
    sget-object p2, Lcom/amazon/kcp/reader/gestures/PageTurnGestureMetrics$MetricsGestureType;->TAP:Lcom/amazon/kcp/reader/gestures/PageTurnGestureMetrics$MetricsGestureType;

    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/mangaviewer/PageEventHandler;->reportPageTurnMetrics(Landroid/view/MotionEvent;Lcom/amazon/kcp/reader/gestures/PageTurnGestureMetrics$MetricsGestureType;)V

    return v3

    .line 156
    :cond_9
    invoke-interface {v0}, Lcom/amazon/kindle/mangaviewer/IMangaPagerAdapter;->isRightPageAvailable()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 157
    invoke-interface {v0}, Lcom/amazon/kindle/mangaviewer/IMangaPagerAdapter;->getDocViewer()Lcom/amazon/android/docviewer/mobi/MangaDocViewer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->startTapToTurnPage()V

    .line 158
    invoke-interface {p2}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->getCurrentItem()I

    move-result v0

    add-int/2addr v0, v3

    invoke-interface {p2, v0}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->setCurrentItem(I)V

    .line 159
    sget-object p2, Lcom/amazon/kcp/reader/gestures/PageTurnGestureMetrics$MetricsGestureType;->TAP:Lcom/amazon/kcp/reader/gestures/PageTurnGestureMetrics$MetricsGestureType;

    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/mangaviewer/PageEventHandler;->reportPageTurnMetrics(Landroid/view/MotionEvent;Lcom/amazon/kcp/reader/gestures/PageTurnGestureMetrics$MetricsGestureType;)V

    return v3

    .line 166
    :cond_a
    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->getReadingDirection()Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;->LEFT_TO_RIGHT:Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

    if-ne p1, v0, :cond_b

    .line 168
    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->isBookNavigatorInitialized()Z

    move-result v2

    .line 172
    :cond_b
    invoke-interface {p2, v2}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->publishPageTurnAbortedEvent(Z)V

    return v3

    :cond_c
    :goto_1
    return v2
.end method

.method public swipe(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FFLcom/amazon/kindle/mangaviewer/IMangaViewPager;)Z
    .locals 3

    .line 33
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p4

    const/4 v0, 0x0

    cmpg-float p2, p2, p4

    if-gtz p2, :cond_0

    return v0

    .line 37
    :cond_0
    invoke-interface {p5}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->getAdapter()Lcom/amazon/kindle/mangaviewer/IMangaPagerAdapter;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kindle/mangaviewer/IMangaPagerAdapter;->getDocViewer()Lcom/amazon/android/docviewer/mobi/MangaDocViewer;

    move-result-object p2

    const/4 p4, 0x0

    const/4 v1, 0x1

    cmpg-float p3, p3, p4

    if-gez p3, :cond_1

    const/4 p3, 0x1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    .line 39
    :goto_0
    invoke-virtual {p2}, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->getReadingDirection()Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

    move-result-object p4

    sget-object v2, Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;->LEFT_TO_RIGHT:Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

    if-ne p4, v2, :cond_2

    const/4 p4, 0x1

    goto :goto_1

    :cond_2
    const/4 p4, 0x0

    :goto_1
    if-ne p3, p4, :cond_3

    const/4 p3, 0x1

    goto :goto_2

    :cond_3
    const/4 p3, 0x0

    .line 42
    :goto_2
    invoke-virtual {p2}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->isNavigatingWithinPage()Z

    move-result p4

    if-eqz p4, :cond_5

    if-eqz p3, :cond_4

    .line 44
    invoke-virtual {p2}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->hasNextNavigationStop()Z

    move-result p4

    if-eqz p4, :cond_7

    .line 45
    invoke-virtual {p2}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->navigateToNextNavigationStop()V

    .line 46
    sget-object p2, Lcom/amazon/kcp/reader/gestures/PageTurnGestureMetrics$MetricsGestureType;->SWIPE:Lcom/amazon/kcp/reader/gestures/PageTurnGestureMetrics$MetricsGestureType;

    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/mangaviewer/PageEventHandler;->reportPageTurnMetrics(Landroid/view/MotionEvent;Lcom/amazon/kcp/reader/gestures/PageTurnGestureMetrics$MetricsGestureType;)V

    return v1

    .line 50
    :cond_4
    invoke-virtual {p2}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->hasPrevNavigationStop()Z

    move-result p4

    if-eqz p4, :cond_7

    .line 51
    invoke-virtual {p2}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->navigateToPrevNavigationStop()V

    .line 52
    sget-object p2, Lcom/amazon/kcp/reader/gestures/PageTurnGestureMetrics$MetricsGestureType;->SWIPE:Lcom/amazon/kcp/reader/gestures/PageTurnGestureMetrics$MetricsGestureType;

    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/mangaviewer/PageEventHandler;->reportPageTurnMetrics(Landroid/view/MotionEvent;Lcom/amazon/kcp/reader/gestures/PageTurnGestureMetrics$MetricsGestureType;)V

    return v1

    .line 56
    :cond_5
    invoke-virtual {p2}, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->isLeftPageAvailable()Z

    move-result p4

    if-nez p4, :cond_6

    invoke-virtual {p2}, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->isRightPageAvailable()Z

    move-result p4

    if-eqz p4, :cond_7

    .line 57
    :cond_6
    sget-object p4, Lcom/amazon/kcp/reader/gestures/PageTurnGestureMetrics$MetricsGestureType;->SWIPE:Lcom/amazon/kcp/reader/gestures/PageTurnGestureMetrics$MetricsGestureType;

    invoke-direct {p0, p1, p4}, Lcom/amazon/kindle/mangaviewer/PageEventHandler;->reportPageTurnMetrics(Landroid/view/MotionEvent;Lcom/amazon/kcp/reader/gestures/PageTurnGestureMetrics$MetricsGestureType;)V

    .line 62
    :cond_7
    iget-boolean p1, p0, Lcom/amazon/kindle/mangaviewer/PageEventHandler;->animationDisabled:Z

    if-eqz p1, :cond_b

    if-eqz p3, :cond_9

    .line 64
    invoke-virtual {p2}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->isNextPageAvailable()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 65
    invoke-virtual {p2}, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->navigateToNextPage()V

    goto :goto_3

    .line 67
    :cond_8
    invoke-virtual {p2}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->isBookNavigatorInitialized()Z

    move-result p1

    invoke-interface {p5, p1}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->publishPageTurnAbortedEvent(Z)V

    goto :goto_3

    .line 70
    :cond_9
    invoke-virtual {p2}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->isPrevPageAvailable()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 71
    invoke-virtual {p2}, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->navigateToPrevPage()V

    :cond_a
    :goto_3
    return v1

    :cond_b
    return v0
.end method
