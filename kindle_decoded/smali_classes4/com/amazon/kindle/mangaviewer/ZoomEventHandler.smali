.class public Lcom/amazon/kindle/mangaviewer/ZoomEventHandler;
.super Lcom/amazon/kindle/mangaviewer/SimpleTouchEventHandler;
.source "ZoomEventHandler.java"


# static fields
.field private static final MIN_MOVE_TO_ACKNOWLEDGE:I = 0xa

.field private static final TAG:Ljava/lang/String;

.field private static final ZOOM_EVENT_HANDLER:Ljava/lang/String; = "ZoomEventHandler"


# instance fields
.field private initialClickSpacing:F

.field private m_layout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

.field private tapMidPointX:F

.field private tapMidPointY:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const-class v0, Lcom/amazon/kindle/mangaviewer/ZoomEventHandler;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/mangaviewer/ZoomEventHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/reader/ui/ReaderLayout;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/amazon/kindle/mangaviewer/SimpleTouchEventHandler;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lcom/amazon/kindle/mangaviewer/ZoomEventHandler;->initialClickSpacing:F

    .line 43
    iput v0, p0, Lcom/amazon/kindle/mangaviewer/ZoomEventHandler;->tapMidPointX:F

    .line 44
    iput v0, p0, Lcom/amazon/kindle/mangaviewer/ZoomEventHandler;->tapMidPointY:F

    .line 28
    iput-object p1, p0, Lcom/amazon/kindle/mangaviewer/ZoomEventHandler;->m_layout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    return-void
.end method

.method private canZoomView(FLcom/amazon/kindle/mangaviewer/BoundImageView;)Z
    .locals 4

    .line 125
    invoke-virtual {p2}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->getCurrentScale()F

    move-result v0

    .line 126
    invoke-virtual {p2}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->getMinScale()F

    move-result v1

    .line 127
    invoke-virtual {p2}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->getMaxScale()F

    move-result p2

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, p1, v2

    if-lez v3, :cond_0

    cmpg-float p2, v0, p2

    if-ltz p2, :cond_1

    :cond_0
    cmpg-float p1, p1, v2

    if-gez p1, :cond_2

    cmpl-float p1, v0, v1

    if-lez p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private getSpacing(Landroid/view/MotionEvent;)F
    .locals 5

    const/4 v0, 0x0

    .line 159
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float/2addr v1, v3

    .line 160
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    sub-float/2addr v0, p1

    float-to-double v1, v1

    mul-double v1, v1, v1

    mul-float v0, v0, v0

    float-to-double v3, v0

    add-double/2addr v1, v3

    .line 161
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method private initializeVirtualPanelMode(Lcom/amazon/kindle/mangaviewer/IMangaViewPager;FF)V
    .locals 4

    .line 132
    invoke-interface {p1}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->getDocViewer()Lcom/amazon/android/docviewer/mobi/MangaDocViewer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->isSingleCenteredPage()Z

    move-result v0

    .line 133
    invoke-interface {p1}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->getVirtualPanelGrid()Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;

    move-result-object v1

    const/4 v2, 0x1

    .line 134
    invoke-virtual {v1, p1, v2, v0}, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->setUpGrid(Lcom/amazon/kindle/mangaviewer/IMangaViewPager;ZZ)V

    .line 135
    invoke-interface {p1}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->getCurrentImageView()Lcom/amazon/kindle/mangaviewer/BoundImageView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 137
    sget-object p1, Lcom/amazon/kindle/mangaviewer/ZoomEventHandler;->TAG:Ljava/lang/String;

    const-string p2, "Current bound image view is null when trying to initialize VirtualPanelMode"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 141
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    float-to-int p2, p2

    float-to-int p3, p3

    invoke-virtual {v1, v2, v3, p2, p3}, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->isValidLocationForGrid(IIII)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 143
    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    invoke-virtual {v1, v2, v0, p2, p3}, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->setGridLocation(IIII)V

    .line 145
    sget-object p2, Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;->VIRTUAL_PANEL:Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;

    invoke-interface {p1, p2}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->setViewMode(Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;)V

    .line 146
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    sget-object p2, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string p3, "ZoomEventHandler"

    const-string v0, "EnteringVirtualPanelMode"

    invoke-virtual {p1, p3, v0, p2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public move(Landroid/view/MotionEvent;Lcom/amazon/kindle/mangaviewer/IMangaViewPager;)Z
    .locals 6

    .line 69
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    return v1

    .line 73
    :cond_0
    invoke-interface {p2}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->getCurrentImageView()Lcom/amazon/kindle/mangaviewer/BoundImageView;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 75
    invoke-virtual {v0}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->hasRenderDrawable()Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    .line 80
    :cond_1
    invoke-direct {p0, p1}, Lcom/amazon/kindle/mangaviewer/ZoomEventHandler;->getSpacing(Landroid/view/MotionEvent;)F

    move-result p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    cmpl-float v3, p1, v2

    if-lez v3, :cond_4

    .line 83
    iget v3, p0, Lcom/amazon/kindle/mangaviewer/ZoomEventHandler;->initialClickSpacing:F

    cmpl-float v2, v3, v2

    if-lez v2, :cond_3

    sub-float v2, p1, v3

    .line 86
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x41200000    # 10.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    return v1

    .line 90
    :cond_2
    iget v2, p0, Lcom/amazon/kindle/mangaviewer/ZoomEventHandler;->initialClickSpacing:F

    div-float v2, p1, v2

    .line 93
    invoke-direct {p0, v2, v0}, Lcom/amazon/kindle/mangaviewer/ZoomEventHandler;->canZoomView(FLcom/amazon/kindle/mangaviewer/BoundImageView;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 96
    invoke-virtual {v0}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->getCurrentScale()F

    move-result v3

    mul-float v2, v2, v3

    .line 97
    invoke-virtual {v0}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->getMaxScale()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 98
    invoke-virtual {v0}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->getMinScale()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 100
    iget v3, p0, Lcom/amazon/kindle/mangaviewer/ZoomEventHandler;->tapMidPointX:F

    .line 101
    iget v4, p0, Lcom/amazon/kindle/mangaviewer/ZoomEventHandler;->tapMidPointY:F

    .line 102
    invoke-virtual {v0}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->getCurrentScale()F

    move-result v5

    div-float/2addr v2, v5

    invoke-virtual {v0, v2, v3, v4}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->scale(FFF)V

    .line 103
    invoke-virtual {v0}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->bindImageToView()Z

    .line 104
    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 107
    iget-object v2, p0, Lcom/amazon/kindle/mangaviewer/ZoomEventHandler;->m_layout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->areOverlaysVisible()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 108
    iget-object v2, p0, Lcom/amazon/kindle/mangaviewer/ZoomEventHandler;->m_layout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v2, v3, v4}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->hideOverlaysAfterDelay(J)V

    .line 112
    :cond_3
    iput p1, p0, Lcom/amazon/kindle/mangaviewer/ZoomEventHandler;->initialClickSpacing:F

    .line 114
    :cond_4
    invoke-virtual {v0}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->getCurrentScale()F

    move-result p1

    invoke-virtual {v0}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->getMinScale()F

    move-result v2

    cmpl-float p1, p1, v2

    if-lez p1, :cond_5

    .line 115
    invoke-interface {p2}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->getViewMode()Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;

    move-result-object p1

    sget-object v2, Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;->VIRTUAL_PANEL:Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;

    if-eq p1, v2, :cond_5

    .line 116
    iget p1, p0, Lcom/amazon/kindle/mangaviewer/ZoomEventHandler;->tapMidPointX:F

    iget v0, p0, Lcom/amazon/kindle/mangaviewer/ZoomEventHandler;->tapMidPointY:F

    invoke-direct {p0, p2, p1, v0}, Lcom/amazon/kindle/mangaviewer/ZoomEventHandler;->initializeVirtualPanelMode(Lcom/amazon/kindle/mangaviewer/IMangaViewPager;FF)V

    goto :goto_0

    .line 117
    :cond_5
    invoke-virtual {v0}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->getCurrentScale()F

    move-result p1

    invoke-virtual {v0}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->getMinScale()F

    move-result v0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_6

    .line 118
    sget-object p1, Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;->FULL_SCREEN:Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;

    invoke-interface {p2, p1}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->setViewMode(Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;)V

    .line 119
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    sget-object p2, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v0, "ZoomEventHandler"

    const-string v2, "ExitingVirtualPanelMode"

    invoke-virtual {p1, v0, v2, p2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    :cond_6
    :goto_0
    return v1
.end method

.method public secondPointerDown(Landroid/view/MotionEvent;Lcom/amazon/kindle/mangaviewer/IMangaViewPager;)Z
    .locals 2

    .line 172
    invoke-interface {p2}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->getCurrentChild()Lcom/amazon/kindle/mangaviewer/MangaPageLayout;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p2

    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    goto :goto_0

    .line 176
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/mangaviewer/ZoomEventHandler;->setInitialSpacing(Landroid/view/MotionEvent;)V

    .line 177
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/mangaviewer/ZoomEventHandler;->setMidPoint(Landroid/view/MotionEvent;)V

    :cond_1
    :goto_0
    return v0
.end method

.method public setInitialSpacing(Landroid/view/MotionEvent;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/amazon/kindle/mangaviewer/ZoomEventHandler;->getSpacing(Landroid/view/MotionEvent;)F

    move-result p1

    iput p1, p0, Lcom/amazon/kindle/mangaviewer/ZoomEventHandler;->initialClickSpacing:F

    return-void
.end method

.method public setMidPoint(Landroid/view/MotionEvent;)V
    .locals 4

    const/4 v0, 0x0

    .line 55
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    add-float/2addr v1, v3

    .line 56
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr v0, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr v1, p1

    .line 57
    iput v1, p0, Lcom/amazon/kindle/mangaviewer/ZoomEventHandler;->tapMidPointX:F

    div-float/2addr v0, p1

    .line 58
    iput v0, p0, Lcom/amazon/kindle/mangaviewer/ZoomEventHandler;->tapMidPointY:F

    return-void
.end method
