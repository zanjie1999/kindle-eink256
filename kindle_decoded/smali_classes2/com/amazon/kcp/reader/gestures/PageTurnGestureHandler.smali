.class public Lcom/amazon/kcp/reader/gestures/PageTurnGestureHandler;
.super Lcom/amazon/kcp/reader/gestures/SimpleGestureHandler;
.source "PageTurnGestureHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final MAX_FLING_TO_PAGE_VELOCITY:F

.field private final MAX_TURN_OFFSET_PERCENT:F

.field private final MIN_FLING_TO_NEXT_PAGE_VELOCITY:F

.field private final MIN_FLING_TO_PAGE_HORIZONTAL_DELTA:F

.field private final MIN_FLING_TO_PREVIOUS_PAGE_VELOCITY:F

.field private final VIEWPORT_EDGE_EPSILON:F

.field private final ZOOMED_ONFLING_SENSITIVITY_FACTOR:I

.field private attemptedPageTurnAfterUpEvent:Z

.field protected gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

.field private inMultitouchMode:Z

.field private lastSingleTapEventTime:J

.field protected layout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

.field private navigator:Lcom/amazon/kcp/reader/ReaderNavigator;

.field private savedDownEvent:Lcom/amazon/kindle/krx/gesture/GestureEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-class v0, Lcom/amazon/kcp/reader/gestures/PageTurnGestureHandler;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/gestures/PageTurnGestureHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/reader/gestures/GestureService;IFF)V
    .locals 2

    .line 59
    invoke-direct {p0}, Lcom/amazon/kcp/reader/gestures/SimpleGestureHandler;-><init>()V

    const v0, 0x3d4ccccd    # 0.05f

    .line 40
    iput v0, p0, Lcom/amazon/kcp/reader/gestures/PageTurnGestureHandler;->VIEWPORT_EDGE_EPSILON:F

    const/high16 v0, 0x3f000000    # 0.5f

    .line 41
    iput v0, p0, Lcom/amazon/kcp/reader/gestures/PageTurnGestureHandler;->MAX_TURN_OFFSET_PERCENT:F

    const/high16 v0, 0x452f0000    # 2800.0f

    .line 42
    iput v0, p0, Lcom/amazon/kcp/reader/gestures/PageTurnGestureHandler;->MAX_FLING_TO_PAGE_VELOCITY:F

    const-wide/16 v0, 0x0

    .line 54
    iput-wide v0, p0, Lcom/amazon/kcp/reader/gestures/PageTurnGestureHandler;->lastSingleTapEventTime:J

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/gestures/PageTurnGestureHandler;->inMultitouchMode:Z

    .line 56
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/gestures/PageTurnGestureHandler;->attemptedPageTurnAfterUpEvent:Z

    .line 60
    iput-object p1, p0, Lcom/amazon/kcp/reader/gestures/PageTurnGestureHandler;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    .line 61
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/gestures/GestureService;->getLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/reader/gestures/PageTurnGestureHandler;->layout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    .line 62
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getNavigator()Lcom/amazon/kcp/reader/ReaderNavigator;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/reader/gestures/PageTurnGestureHandler;->navigator:Lcom/amazon/kcp/reader/ReaderNavigator;

    .line 64
    iput p2, p0, Lcom/amazon/kcp/reader/gestures/PageTurnGestureHandler;->ZOOMED_ONFLING_SENSITIVITY_FACTOR:I

    .line 65
    iput p3, p0, Lcom/amazon/kcp/reader/gestures/PageTurnGestureHandler;->MIN_FLING_TO_PREVIOUS_PAGE_VELOCITY:F

    const/high16 p1, -0x40800000    # -1.0f

    mul-float p3, p3, p1

    .line 66
    iput p3, p0, Lcom/amazon/kcp/reader/gestures/PageTurnGestureHandler;->MIN_FLING_TO_NEXT_PAGE_VELOCITY:F

    .line 67
    iput p4, p0, Lcom/amazon/kcp/reader/gestures/PageTurnGestureHandler;->MIN_FLING_TO_PAGE_HORIZONTAL_DELTA:F

    return-void
.end method

.method private reportPageTurnMetric()V
    .locals 3

    .line 342
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    sget-object v0, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->TAP_TO_TURN_PAGE:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    .line 344
    invoke-virtual {v0}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/gestures/PageTurnGestureHandler;->layout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    .line 345
    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 343
    invoke-static {v0, v1, v2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 347
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/PerfMetricsCollector;->getInstance()Lcom/amazon/kindle/krx/metrics/IBatchMetricCollector;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->TAP_TO_TURN_PAGE:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    .line 348
    invoke-virtual {v1}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/reader/gestures/PageTurnGestureHandler;->layout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    .line 350
    invoke-virtual {v2}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v2

    .line 349
    invoke-static {v2}, Lcom/amazon/kindle/content/KindleContentFormat;->getFormat(Lcom/amazon/kindle/model/content/ILocalBookItem;)Lcom/amazon/kindle/content/KindleContentFormat;

    move-result-object v2

    .line 350
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    .line 347
    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/metrics/IBatchMetricCollector;->collectStartTimerMetric(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private reportPageTurnMetrics(Lcom/amazon/kindle/krx/gesture/GestureEvent;Lcom/amazon/kcp/reader/gestures/PageTurnGestureMetrics$MetricsGestureType;)V
    .locals 2

    .line 387
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/reader/gestures/PageTurnGestureHandler$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/amazon/kcp/reader/gestures/PageTurnGestureHandler$1;-><init>(Lcom/amazon/kcp/reader/gestures/PageTurnGestureHandler;Lcom/amazon/kcp/reader/gestures/PageTurnGestureMetrics$MetricsGestureType;Lcom/amazon/kindle/krx/gesture/GestureEvent;)V

    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/IThreadPoolManager;->submitSingleThreadTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private tryToTurnPage()Z
    .locals 4

    .line 316
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/PageTurnGestureHandler;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/gestures/GestureService;->getPageTurnOffset()I

    move-result v0

    .line 320
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/amazon/kcp/reader/gestures/PageTurnGestureHandler;->layout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v2, v2, v3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 321
    invoke-direct {p0}, Lcom/amazon/kcp/reader/gestures/PageTurnGestureHandler;->reportPageTurnMetric()V

    if-lez v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/PageTurnGestureHandler;->navigator:Lcom/amazon/kcp/reader/ReaderNavigator;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderNavigator;->pageLeft()Z

    goto :goto_0

    :cond_0
    if-gez v0, :cond_1

    .line 325
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/PageTurnGestureHandler;->navigator:Lcom/amazon/kcp/reader/ReaderNavigator;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderNavigator;->pageRight()Z

    :cond_1
    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 331
    iget-object v1, p0, Lcom/amazon/kcp/reader/gestures/PageTurnGestureHandler;->navigator:Lcom/amazon/kcp/reader/ReaderNavigator;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ReaderNavigator;->resetPage()Z

    :goto_1
    return v0
.end method


# virtual methods
.method protected getNavigationMarginLeft()F
    .locals 2

    .line 254
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/PageTurnGestureHandler;->layout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/gestures/PageTurnGestureHandler;->layout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getNavigationMarginPercent()F

    move-result v1

    mul-float v0, v0, v1

    return v0
.end method

.method protected getNavigationMarginRight()F
    .locals 1

    .line 258
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/gestures/PageTurnGestureHandler;->getNavigationMarginLeft()F

    move-result v0

    return v0
.end method

.method protected getNavigationMarginTop()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPriority()I
    .locals 1

    const/16 v0, 0x14

    return v0
.end method

.method public onFirstPointerDown(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z
    .locals 2

    const/4 v0, 0x0

    .line 72
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/gestures/PageTurnGestureHandler;->attemptedPageTurnAfterUpEvent:Z

    .line 73
    new-instance v1, Lcom/amazon/kindle/krx/gesture/GestureEvent;

    invoke-direct {v1, p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;-><init>(Lcom/amazon/kindle/krx/gesture/GestureEvent;)V

    iput-object v1, p0, Lcom/amazon/kcp/reader/gestures/PageTurnGestureHandler;->savedDownEvent:Lcom/amazon/kindle/krx/gesture/GestureEvent;

    return v0
.end method

.method public onFirstPointerUp(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z
    .locals 6

    const/4 v0, 0x0

    .line 112
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/gestures/PageTurnGestureHandler;->inMultitouchMode:Z

    .line 114
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->hasBeenConsumed()Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    .line 120
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/reader/gestures/PageTurnGestureHandler;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/gestures/GestureService;->getPageTurnOffset()I

    move-result v1

    .line 121
    iget-object v2, p0, Lcom/amazon/kcp/reader/gestures/PageTurnGestureHandler;->savedDownEvent:Lcom/amazon/kindle/krx/gesture/GestureEvent;

    invoke-static {v2, p1}, Lcom/amazon/kcp/reader/gestures/GestureService;->checkUnconfirmedSingleTapFromUp(Lcom/amazon/kindle/krx/gesture/GestureEvent;Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 122
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/amazon/kcp/reader/gestures/PageTurnGestureHandler;->lastSingleTapEventTime:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x12c

    cmp-long v2, v0, v4

    if-gez v2, :cond_1

    return v3

    .line 125
    :cond_1
    iput-boolean v3, p0, Lcom/amazon/kcp/reader/gestures/PageTurnGestureHandler;->attemptedPageTurnAfterUpEvent:Z

    .line 126
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/gestures/PageTurnGestureHandler;->tapToTurnPage(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z

    move-result p1

    return p1

    :cond_2
    if-eqz v1, :cond_3

    .line 128
    iput-boolean v3, p0, Lcom/amazon/kcp/reader/gestures/PageTurnGestureHandler;->attemptedPageTurnAfterUpEvent:Z

    .line 129
    invoke-direct {p0}, Lcom/amazon/kcp/reader/gestures/PageTurnGestureHandler;->tryToTurnPage()Z

    return v3

    :cond_3
    return v0
.end method

.method public onScroll(Lcom/amazon/kindle/krx/gesture/GestureEvent;Lcom/amazon/kindle/krx/gesture/GestureEvent;FF)Z
    .locals 0

    const/4 p3, 0x0

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 94
    iget-object p4, p0, Lcom/amazon/kcp/reader/gestures/PageTurnGestureHandler;->savedDownEvent:Lcom/amazon/kindle/krx/gesture/GestureEvent;

    if-nez p4, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->hasBeenConsumed()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->hasBeenConsumed()Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    iget-boolean p1, p0, Lcom/amazon/kcp/reader/gestures/PageTurnGestureHandler;->inMultitouchMode:Z

    if-eqz p1, :cond_3

    :cond_2
    return p3

    .line 105
    :cond_3
    invoke-virtual {p2}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->getX()F

    move-result p1

    iget-object p2, p0, Lcom/amazon/kcp/reader/gestures/PageTurnGestureHandler;->savedDownEvent:Lcom/amazon/kindle/krx/gesture/GestureEvent;

    invoke-virtual {p2}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->getX()F

    move-result p2

    sub-float/2addr p1, p2

    float-to-int p1, p1

    .line 107
    iget-object p2, p0, Lcom/amazon/kcp/reader/gestures/PageTurnGestureHandler;->navigator:Lcom/amazon/kcp/reader/ReaderNavigator;

    invoke-virtual {p2, p1}, Lcom/amazon/kcp/reader/ReaderNavigator;->handlePageTurnOffset(I)Z

    move-result p1

    return p1

    :cond_4
    :goto_0
    return p3
.end method

.method public onSecondPointerDown(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z
    .locals 0

    const/4 p1, 0x1

    .line 80
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/gestures/PageTurnGestureHandler;->inMultitouchMode:Z

    const/4 p1, 0x0

    return p1
.end method

.method public onSecondPointerUp(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z
    .locals 0

    const/4 p1, 0x0

    .line 87
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/gestures/PageTurnGestureHandler;->inMultitouchMode:Z

    return p1
.end method

.method public onSingleTap(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z
    .locals 1

    .line 142
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->hasBeenConsumed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 144
    :cond_0
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/gestures/PageTurnGestureHandler;->attemptedPageTurnAfterUpEvent:Z

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 149
    :cond_1
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/gestures/PageTurnGestureHandler;->tapToTurnPage(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z

    move-result p1

    return p1
.end method

.method public onSwipe(Lcom/amazon/kindle/krx/gesture/GestureEvent;Lcom/amazon/kindle/krx/gesture/GestureEvent;FF)Z
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_b

    if-nez p2, :cond_0

    goto/16 :goto_3

    .line 161
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->hasBeenConsumed()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->hasBeenConsumed()Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 166
    :cond_1
    iget-boolean v1, p0, Lcom/amazon/kcp/reader/gestures/PageTurnGestureHandler;->inMultitouchMode:Z

    if-eqz v1, :cond_2

    return v0

    .line 170
    :cond_2
    invoke-virtual {p2}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 171
    invoke-virtual {p2}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->getY()F

    move-result v2

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v3, v1

    .line 172
    iget v4, p0, Lcom/amazon/kcp/reader/gestures/PageTurnGestureHandler;->MIN_FLING_TO_PAGE_HORIZONTAL_DELTA:F

    const/4 v5, 0x1

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_3

    if-lt v1, v2, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 177
    :goto_0
    iget-object v2, p0, Lcom/amazon/kcp/reader/gestures/PageTurnGestureHandler;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/gestures/GestureService;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_4

    .line 181
    invoke-virtual {v2}, Lcom/amazon/android/docviewer/KindleDocView;->getScaleX()F

    move-result v2

    div-float v2, v3, v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    goto :goto_1

    :cond_4
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_1
    const/high16 v4, 0x452f0000    # 2800.0f

    .line 188
    iget v6, p0, Lcom/amazon/kcp/reader/gestures/PageTurnGestureHandler;->MIN_FLING_TO_PREVIOUS_PAGE_VELOCITY:F

    mul-float v6, v6, v2

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    const/high16 v6, -0x3ad10000    # -2800.0f

    .line 190
    iget v7, p0, Lcom/amazon/kcp/reader/gestures/PageTurnGestureHandler;->MIN_FLING_TO_NEXT_PAGE_VELOCITY:F

    mul-float v7, v7, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    cmpl-float v2, v2, v3

    if-lez v2, :cond_5

    .line 194
    iget v2, p0, Lcom/amazon/kcp/reader/gestures/PageTurnGestureHandler;->ZOOMED_ONFLING_SENSITIVITY_FACTOR:I

    int-to-float v3, v2

    mul-float v4, v4, v3

    int-to-float v2, v2

    mul-float v6, v6, v2

    .line 200
    :cond_5
    invoke-virtual {p2}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->getX()F

    move-result p2

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->getX()F

    move-result v2

    sub-float/2addr p2, v2

    mul-float p2, p2, p3

    const/4 v2, 0x0

    cmpg-float p2, p2, v2

    if-gtz p2, :cond_6

    .line 201
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpl-float p2, p2, v4

    if-lez p2, :cond_6

    .line 204
    iget-object p2, p0, Lcom/amazon/kcp/reader/gestures/PageTurnGestureHandler;->navigator:Lcom/amazon/kcp/reader/ReaderNavigator;

    invoke-virtual {p2, p3}, Lcom/amazon/kcp/reader/ReaderNavigator;->resetPage(F)Z

    move-result p2

    goto/16 :goto_2

    :cond_6
    const-string p2, "PageTurnTouchFling"

    const-string v2, "ReaderGestureDetector"

    if-eqz v1, :cond_7

    cmpl-float v3, p3, v4

    if-lez v3, :cond_7

    .line 206
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p4

    invoke-virtual {p4, v2, p2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-direct {p0}, Lcom/amazon/kcp/reader/gestures/PageTurnGestureHandler;->reportPageTurnMetric()V

    .line 208
    iget-object p2, p0, Lcom/amazon/kcp/reader/gestures/PageTurnGestureHandler;->navigator:Lcom/amazon/kcp/reader/ReaderNavigator;

    invoke-virtual {p2, p3}, Lcom/amazon/kcp/reader/ReaderNavigator;->pageLeft(F)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 210
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isTouchExplorationEnabled()Z

    move-result p3

    if-eqz p3, :cond_a

    .line 211
    iget-object p3, p0, Lcom/amazon/kcp/reader/gestures/PageTurnGestureHandler;->layout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {p3}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object p3

    invoke-virtual {p3}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p3

    if-eqz p3, :cond_a

    .line 212
    invoke-interface {p3}, Lcom/amazon/android/docviewer/KindleDocViewer;->getPageSwipePlayer()Lcom/amazon/kcp/reader/accessibility/AccessiblePageSwipePlayer;

    move-result-object p4

    if-eqz p4, :cond_a

    .line 213
    invoke-interface {p3}, Lcom/amazon/android/docviewer/KindleDocViewer;->getPageSwipePlayer()Lcom/amazon/kcp/reader/accessibility/AccessiblePageSwipePlayer;

    move-result-object p3

    invoke-virtual {p3}, Lcom/amazon/kcp/reader/accessibility/AccessiblePageSwipePlayer;->startOrLoadAccessiblePageSwipePlayer()V

    goto :goto_2

    :cond_7
    if-eqz v1, :cond_8

    cmpg-float v1, p3, v6

    if-gez v1, :cond_8

    .line 217
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p4

    invoke-virtual {p4, v2, p2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-direct {p0}, Lcom/amazon/kcp/reader/gestures/PageTurnGestureHandler;->reportPageTurnMetric()V

    .line 219
    iget-object p2, p0, Lcom/amazon/kcp/reader/gestures/PageTurnGestureHandler;->navigator:Lcom/amazon/kcp/reader/ReaderNavigator;

    invoke-virtual {p2, p3}, Lcom/amazon/kcp/reader/ReaderNavigator;->pageRight(F)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 220
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isTouchExplorationEnabled()Z

    move-result p3

    if-eqz p3, :cond_a

    .line 221
    iget-object p3, p0, Lcom/amazon/kcp/reader/gestures/PageTurnGestureHandler;->layout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {p3}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object p3

    invoke-virtual {p3}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p3

    if-eqz p3, :cond_a

    .line 222
    invoke-interface {p3}, Lcom/amazon/android/docviewer/KindleDocViewer;->getPageSwipePlayer()Lcom/amazon/kcp/reader/accessibility/AccessiblePageSwipePlayer;

    move-result-object p4

    if-eqz p4, :cond_a

    .line 223
    invoke-interface {p3}, Lcom/amazon/android/docviewer/KindleDocViewer;->getPageSwipePlayer()Lcom/amazon/kcp/reader/accessibility/AccessiblePageSwipePlayer;

    move-result-object p3

    invoke-virtual {p3}, Lcom/amazon/kcp/reader/accessibility/AccessiblePageSwipePlayer;->startOrLoadAccessiblePageSwipePlayer()V

    goto :goto_2

    .line 227
    :cond_8
    iget-object p2, p0, Lcom/amazon/kcp/reader/gestures/PageTurnGestureHandler;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    invoke-virtual {p2}, Lcom/amazon/kcp/reader/gestures/GestureService;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object p2

    invoke-virtual {p2, p3, p4}, Lcom/amazon/android/docviewer/KindleDocView;->canFling(FF)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 228
    iget-object p2, p0, Lcom/amazon/kcp/reader/gestures/PageTurnGestureHandler;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    invoke-virtual {p2}, Lcom/amazon/kcp/reader/gestures/GestureService;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object p2

    invoke-virtual {p2, p3, p4}, Lcom/amazon/android/docviewer/KindleDocView;->startFling(FF)V

    const/4 p2, 0x1

    goto :goto_2

    .line 236
    :cond_9
    invoke-direct {p0}, Lcom/amazon/kcp/reader/gestures/PageTurnGestureHandler;->tryToTurnPage()Z

    move-result p2

    :cond_a
    :goto_2
    if-eqz p2, :cond_b

    .line 241
    iget-object p2, p0, Lcom/amazon/kcp/reader/gestures/PageTurnGestureHandler;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    new-instance p3, Lcom/amazon/kcp/reader/gestures/GestureService$GestureServiceEvent;

    sget-object p4, Lcom/amazon/kcp/events/ReaderEventTypes;->PAGETURN_REGULAR_EVENT:Lcom/amazon/kcp/events/ReaderEventTypes;

    invoke-direct {p3, p4}, Lcom/amazon/kcp/reader/gestures/GestureService$GestureServiceEvent;-><init>(Lcom/amazon/kcp/events/ReaderEventTypes;)V

    invoke-virtual {p2, p3}, Lcom/amazon/kcp/reader/gestures/GestureService;->publishEvent(Lcom/amazon/kcp/reader/gestures/GestureService$GestureServiceEvent;)V

    .line 242
    sget-object p2, Lcom/amazon/kcp/reader/gestures/PageTurnGestureMetrics$MetricsGestureType;->SWIPE:Lcom/amazon/kcp/reader/gestures/PageTurnGestureMetrics$MetricsGestureType;

    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/reader/gestures/PageTurnGestureHandler;->reportPageTurnMetrics(Lcom/amazon/kindle/krx/gesture/GestureEvent;Lcom/amazon/kcp/reader/gestures/PageTurnGestureMetrics$MetricsGestureType;)V

    return v5

    :cond_b
    :goto_3
    return v0
.end method

.method protected tapToTurnPage(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z
    .locals 7

    .line 262
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/PageTurnGestureHandler;->layout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->areOverlaysVisible()Z

    move-result v0

    .line 263
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isTouchExplorationEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_a

    if-eqz v0, :cond_0

    goto/16 :goto_5

    .line 268
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->getY()F

    move-result v0

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/gestures/PageTurnGestureHandler;->getNavigationMarginTop()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    return v2

    .line 272
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/kcp/reader/gestures/PageTurnGestureHandler;->lastSingleTapEventTime:J

    .line 277
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/PageTurnGestureHandler;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/gestures/GestureService;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object v0

    if-nez v0, :cond_2

    return v2

    .line 281
    :cond_2
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/KindleDocView;->getViewport()Landroid/graphics/RectF;

    move-result-object v0

    .line 282
    iget-object v1, p0, Lcom/amazon/kcp/reader/gestures/PageTurnGestureHandler;->layout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->supportsZoom()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_7

    if-eqz v0, :cond_7

    .line 283
    iget v1, v0, Landroid/graphics/RectF;->left:F

    const/4 v4, 0x0

    const v5, 0x3d4ccccd    # 0.05f

    cmpg-float v4, v1, v4

    if-ltz v4, :cond_4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v5

    if-gtz v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v1, 0x1

    .line 284
    :goto_1
    iget v0, v0, Landroid/graphics/RectF;->right:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v6, v0, v4

    if-gtz v6, :cond_6

    sub-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v5

    if-gtz v0, :cond_5

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v0, 0x1

    goto :goto_3

    :cond_7
    const/4 v0, 0x1

    const/4 v1, 0x1

    :goto_3
    if-eqz v1, :cond_8

    .line 288
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/gestures/PageTurnGestureHandler;->getNavigationMarginLeft()F

    move-result v4

    cmpg-float v1, v1, v4

    if-gez v1, :cond_8

    .line 289
    invoke-direct {p0}, Lcom/amazon/kcp/reader/gestures/PageTurnGestureHandler;->reportPageTurnMetric()V

    .line 290
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/PageTurnGestureHandler;->navigator:Lcom/amazon/kcp/reader/ReaderNavigator;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderNavigator;->pageLeft()Z

    move-result v0

    goto :goto_4

    :cond_8
    if-eqz v0, :cond_9

    .line 291
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/gestures/PageTurnGestureHandler;->layout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/gestures/PageTurnGestureHandler;->getNavigationMarginRight()F

    move-result v4

    sub-float/2addr v1, v4

    cmpl-float v0, v0, v1

    if-lez v0, :cond_9

    .line 292
    invoke-direct {p0}, Lcom/amazon/kcp/reader/gestures/PageTurnGestureHandler;->reportPageTurnMetric()V

    .line 293
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/PageTurnGestureHandler;->navigator:Lcom/amazon/kcp/reader/ReaderNavigator;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderNavigator;->pageRight()Z

    move-result v0

    goto :goto_4

    :cond_9
    const/4 v0, 0x0

    :goto_4
    if-eqz v0, :cond_a

    .line 297
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/PageTurnGestureHandler;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    new-instance v1, Lcom/amazon/kcp/reader/gestures/GestureService$GestureServiceEvent;

    sget-object v2, Lcom/amazon/kcp/events/ReaderEventTypes;->PAGETURN_REGULAR_EVENT:Lcom/amazon/kcp/events/ReaderEventTypes;

    invoke-direct {v1, v2}, Lcom/amazon/kcp/reader/gestures/GestureService$GestureServiceEvent;-><init>(Lcom/amazon/kcp/events/ReaderEventTypes;)V

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/gestures/GestureService;->publishEvent(Lcom/amazon/kcp/reader/gestures/GestureService$GestureServiceEvent;)V

    .line 298
    sget-object v0, Lcom/amazon/kcp/reader/gestures/PageTurnGestureMetrics$MetricsGestureType;->TAP:Lcom/amazon/kcp/reader/gestures/PageTurnGestureMetrics$MetricsGestureType;

    invoke-direct {p0, p1, v0}, Lcom/amazon/kcp/reader/gestures/PageTurnGestureHandler;->reportPageTurnMetrics(Lcom/amazon/kindle/krx/gesture/GestureEvent;Lcom/amazon/kcp/reader/gestures/PageTurnGestureMetrics$MetricsGestureType;)V

    return v3

    :cond_a
    :goto_5
    return v2
.end method
