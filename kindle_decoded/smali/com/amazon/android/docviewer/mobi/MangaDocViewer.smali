.class public Lcom/amazon/android/docviewer/mobi/MangaDocViewer;
.super Lcom/amazon/android/docviewer/mobi/MobiDocViewer;
.source "MangaDocViewer.java"

# interfaces
.implements Lcom/amazon/android/docviewer/mobi/RenderedDocFactory;


# static fields
.field private static final LANDSCAPE_SCALE:F = 1.5f

.field private static final PORTRAIT_SCALE:F = 1.5f

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private glMaxTextureSize:I

.field private isNavigating:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private isTapToTurnPage:Z

.field private landscapePageTurns:I

.field private lastPageTurnDir:Ljava/lang/String;

.field private metricsData:Lcom/amazon/kindle/krx/metrics/MetricsData;

.field private portraitPageTurns:I

.field private wasViewingSecondPage:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const-class v0, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;Lcom/amazon/android/docviewer/mobi/KRFExecutorService;)V
    .locals 1

    .line 89
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;-><init>(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;Lcom/amazon/android/docviewer/mobi/KRFExecutorService;)V

    const/4 p1, 0x0

    .line 56
    iput p1, p0, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->glMaxTextureSize:I

    .line 63
    iput-boolean p1, p0, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->wasViewingSecondPage:Z

    .line 69
    iput-boolean p1, p0, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->isTapToTurnPage:Z

    .line 72
    iput p1, p0, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->portraitPageTurns:I

    .line 73
    iput p1, p0, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->landscapePageTurns:I

    .line 80
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->isNavigating:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    new-array p3, p2, [I

    const/16 v0, 0xd33

    .line 92
    invoke-static {v0, p3, p1}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 95
    aget v0, p3, p1

    if-lez v0, :cond_0

    new-array p2, p2, [Ljava/lang/Object;

    .line 96
    aget v0, p3, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, p1

    const-string v0, "GL Max Texture Size: %d"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 97
    aget p2, p3, p1

    iput p2, p0, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->glMaxTextureSize:I

    .line 102
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 103
    sget p3, Lcom/amazon/kindle/kmv/R$bool;->enable_readingprogress_waypoints_for_fixedformat:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x0

    .line 104
    iput-object p2, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_waypointsModel:Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;

    .line 107
    :cond_1
    new-instance p2, Lcom/amazon/kindle/krx/metrics/MetricsData;

    const-string p3, "AmazonKindle"

    const-string v0, "MangaDocViewer"

    invoke-direct {p2, p3, v0}, Lcom/amazon/kindle/krx/metrics/MetricsData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2, p1}, Lcom/amazon/kindle/krx/metrics/MetricsData;->setWithAppVersion(Z)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->metricsData:Lcom/amazon/kindle/krx/metrics/MetricsData;

    return-void
.end method

.method private calculateTargetRenderDimensions(IIII)Lcom/amazon/kindle/util/drawing/Dimension;
    .locals 6

    const/4 v0, -0x1

    if-eq p3, v0, :cond_6

    if-ne p4, v0, :cond_0

    goto/16 :goto_2

    :cond_0
    int-to-float v0, p1

    int-to-float v1, p3

    div-float/2addr v0, v1

    int-to-float v1, p2

    int-to-float v2, p4

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v0, v2

    if-lez v3, :cond_2

    cmpl-float v2, v1, v2

    if-lez v2, :cond_2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 547
    invoke-direct {p0, p2, p1, p3}, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->matchShorterToScaledLongerDimension(III)I

    move-result p2

    move p1, p3

    goto :goto_0

    .line 551
    :cond_1
    invoke-direct {p0, p1, p2, p4}, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->matchShorterToScaledLongerDimension(III)I

    move-result p1

    move p2, p4

    .line 559
    :cond_2
    :goto_0
    iget p3, p0, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->glMaxTextureSize:I

    if-lez p3, :cond_5

    if-gt p1, p3, :cond_3

    if-le p2, p3, :cond_5

    .line 560
    :cond_3
    sget-object p3, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->TAG:Ljava/lang/String;

    const/4 p4, 0x4

    new-array p4, p4, [Ljava/lang/Object;

    .line 561
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p4, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, p4, v2

    iget v0, p0, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->glMaxTextureSize:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x2

    aput-object v0, p4, v3

    const/4 v0, 0x3

    iget v4, p0, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->glMaxTextureSize:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, p4, v0

    const-string v0, "Target render dimensions of %dx%d exceed max GL texture size of %dx%d, rescaling."

    .line 560
    invoke-static {v0, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    if-le p1, p2, :cond_4

    .line 563
    iget p3, p0, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->glMaxTextureSize:I

    invoke-direct {p0, p2, p1, p3}, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->matchShorterToScaledLongerDimension(III)I

    move-result p1

    .line 564
    iget p2, p0, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->glMaxTextureSize:I

    move v5, p2

    move p2, p1

    move p1, v5

    goto :goto_1

    .line 566
    :cond_4
    iget p3, p0, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->glMaxTextureSize:I

    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->matchShorterToScaledLongerDimension(III)I

    move-result p1

    .line 567
    iget p2, p0, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->glMaxTextureSize:I

    .line 569
    :goto_1
    sget-object p3, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->TAG:Ljava/lang/String;

    new-array p4, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p4, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p4, v2

    const-string v0, "New target render dimensions: %dx%d"

    invoke-static {v0, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    :cond_5
    new-instance p3, Lcom/amazon/kindle/util/drawing/Dimension;

    invoke-direct {p3, p1, p2}, Lcom/amazon/kindle/util/drawing/Dimension;-><init>(II)V

    return-object p3

    .line 536
    :cond_6
    :goto_2
    new-instance p3, Lcom/amazon/kindle/util/drawing/Dimension;

    invoke-direct {p3, p1, p2}, Lcom/amazon/kindle/util/drawing/Dimension;-><init>(II)V

    return-object p3
.end method

.method private hasFirstPageType(J)Z
    .locals 3

    .line 486
    invoke-static {}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;->getKPageTypeFixedLayoutFirstPage()I

    move-result v0

    int-to-long v0, v0

    and-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private hasSecondPageType(J)Z
    .locals 3

    .line 490
    invoke-static {}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;->getKPageTypeFixedLayoutSecondPage()I

    move-result v0

    int-to-long v0, v0

    and-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isSecondPageType(J)Z
    .locals 1

    .line 494
    invoke-direct {p0, p1, p2}, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->hasSecondPageType(J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->hasFirstPageType(J)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private matchShorterToScaledLongerDimension(III)I
    .locals 1

    int-to-float v0, p3

    int-to-float p2, p2

    div-float/2addr v0, p2

    int-to-float p1, p1

    mul-float v0, v0, p1

    float-to-int p1, v0

    if-ge p1, p3, :cond_0

    add-int/lit8 p1, p1, 0x1

    :cond_0
    return p1
.end method

.method private reportPageTurnStartMetric()V
    .locals 3

    .line 627
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 628
    sget-object v0, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->TAP_TO_TURN_PAGE:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {v0}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 630
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/PerfMetricsCollector;->getInstance()Lcom/amazon/kindle/krx/metrics/IBatchMetricCollector;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->TAP_TO_TURN_PAGE:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {v1}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v1

    .line 631
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/kindle/content/KindleContentFormat;->getFormat(Lcom/amazon/kindle/model/content/ILocalBookItem;)Lcom/amazon/kindle/content/KindleContentFormat;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    .line 630
    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/metrics/IBatchMetricCollector;->collectStartTimerMetric(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private reportPageTurnStopMetric()V
    .locals 3

    .line 635
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 636
    sget-object v0, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->TAP_TO_TURN_PAGE:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {v0}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 638
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/PerfMetricsCollector;->getInstance()Lcom/amazon/kindle/krx/metrics/IBatchMetricCollector;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->TAP_TO_TURN_PAGE:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {v1}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->lastPageTurnDir:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/metrics/IBatchMetricCollector;->collectEndTimerMetric(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setDimensions(II)V
    .locals 1

    .line 242
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getRenderingSettings()Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->setWidth(I)V

    .line 243
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getRenderingSettings()Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->setHeight(I)V

    return-void
.end method


# virtual methods
.method public declared-synchronized closeDocument()V
    .locals 4

    monitor-enter p0

    .line 416
    :try_start_0
    iget v0, p0, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->landscapePageTurns:I

    iget v1, p0, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->portraitPageTurns:I

    add-int/2addr v0, v1

    const/16 v1, 0xa

    const/4 v2, 0x0

    if-le v0, v1, :cond_4

    .line 419
    iget v0, p0, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->landscapePageTurns:I

    iget v1, p0, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->portraitPageTurns:I

    if-le v0, v1, :cond_0

    const-string v0, "MoreLandscapePageTurns"

    goto :goto_0

    .line 421
    :cond_0
    iget v0, p0, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->portraitPageTurns:I

    iget v1, p0, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->landscapePageTurns:I

    if-le v0, v1, :cond_1

    const-string v0, "MorePortraitPageTurns"

    goto :goto_0

    :cond_1
    const-string v0, "EqualPortraitLandscapePageTurns"

    .line 427
    :goto_0
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->metricsData:Lcom/amazon/kindle/krx/metrics/MetricsData;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addCountingMetric(Ljava/lang/String;I)Lcom/amazon/kindle/krx/metrics/MetricsData;

    .line 429
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v2

    .line 430
    :goto_1
    invoke-static {v0}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 431
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->metricsData:Lcom/amazon/kindle/krx/metrics/MetricsData;

    const-string v3, "ASIN"

    invoke-virtual {v1, v3, v0}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    .line 436
    :cond_3
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->metricsData:Lcom/amazon/kindle/krx/metrics/MetricsData;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetrics(Lcom/amazon/kindle/krx/metrics/MetricsData;)V

    .line 439
    :cond_4
    iput-object v2, p0, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->metricsData:Lcom/amazon/kindle/krx/metrics/MetricsData;

    const/4 v0, 0x0

    .line 440
    iput v0, p0, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->portraitPageTurns:I

    .line 441
    iput v0, p0, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->landscapePageTurns:I

    .line 443
    invoke-super {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->closeDocument()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 444
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public createWordIterator()Lcom/amazon/kindle/search/IKindleWordTokenIterator;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public endPageTurn()V
    .locals 4

    .line 582
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->isTapToTurnPage:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 583
    sget-object v0, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->TAP_TO_TURN_PAGE:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {v0}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v2}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 584
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/PerfMetricsCollector;->getInstance()Lcom/amazon/kindle/krx/metrics/IBatchMetricCollector;

    move-result-object v0

    sget-object v2, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->TAP_TO_TURN_PAGE:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {v2}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->lastPageTurnDir:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Lcom/amazon/kindle/krx/metrics/IBatchMetricCollector;->collectEndTimerMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    iput-boolean v1, p0, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->isTapToTurnPage:Z

    .line 587
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->isNavigating:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 588
    invoke-direct {p0}, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->reportPageTurnStopMetric()V

    :cond_1
    return-void
.end method

.method public getCurrentPageRenderDrawable()Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;
    .locals 3

    .line 148
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getTextNavigator()Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->getDocumentPageRenderDrawable(I)Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;

    move-result-object v0
    :try_end_0
    .catch Lcom/amazon/android/docviewer/mobi/KRFError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 150
    sget-object v1, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->TAG:Ljava/lang/String;

    const-string v2, "Unable to retrieve document page bitmap for current page."

    invoke-static {v1, v2, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getDefaultColorMode()Lcom/amazon/android/docviewer/KindleDocColorMode;
    .locals 1

    .line 618
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/android/docviewer/MangaColorModeFactory;->getColorMode(Landroid/content/res/Resources;)Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object v0

    return-object v0
.end method

.method public getNextPageRenderDrawable()Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;
    .locals 3

    .line 134
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getTextNavigator()Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->getDocumentPageRenderDrawable(I)Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;

    move-result-object v0
    :try_end_0
    .catch Lcom/amazon/android/docviewer/mobi/KRFError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 136
    sget-object v1, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->TAG:Ljava/lang/String;

    const-string v2, "Unable to retrieve document page bitmap for next page."

    invoke-static {v1, v2, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPreviousPageRenderDrawable()Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;
    .locals 3

    .line 119
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getTextNavigator()Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->getDocumentPageRenderDrawable(I)Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;

    move-result-object v0
    :try_end_0
    .catch Lcom/amazon/android/docviewer/mobi/KRFError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 121
    sget-object v1, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->TAG:Ljava/lang/String;

    const-string v2, "Unable to retrieve document page bitmap for previous page."

    invoke-static {v1, v2, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPrimaryWritingMode()Lcom/amazon/kindle/model/content/PrimaryWritingMode;
    .locals 1

    .line 498
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getPrimaryWritingMode()Lcom/amazon/kindle/model/content/PrimaryWritingMode;

    move-result-object v0

    return-object v0
.end method

.method public getReadingDirection()Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getReadingDirection()Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

    move-result-object v0

    return-object v0
.end method

.method protected initializeRenderDimensions(IILandroid/content/Context;)V
    .locals 0

    const/4 p3, 0x0

    if-lt p1, p2, :cond_0

    .line 609
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->rotateLandscape(IIZ)V

    goto :goto_0

    .line 611
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->rotatePortrait(IIZ)V

    :goto_0
    return-void
.end method

.method public isLeftPageAvailable()Z
    .locals 2

    .line 647
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->getReadingDirection()Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;->LEFT_TO_RIGHT:Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

    if-ne v0, v1, :cond_0

    .line 648
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->isPrevPageAvailable()Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->isNextPageAvailable()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public isRightPageAvailable()Z
    .locals 2

    .line 657
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->getReadingDirection()Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;->LEFT_TO_RIGHT:Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

    if-ne v0, v1, :cond_0

    .line 658
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->isNextPageAvailable()Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->isPrevPageAvailable()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public isSingleCenteredPage()Z
    .locals 1

    .line 374
    sget-object v0, Lcom/amazon/android/docviewer/mobi/IPageProvider$PagePosition;->CURRENT:Lcom/amazon/android/docviewer/mobi/IPageProvider$PagePosition;

    invoke-virtual {p0, v0}, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->isSingleCenteredPage(Lcom/amazon/android/docviewer/mobi/IPageProvider$PagePosition;)Z

    move-result v0

    return v0
.end method

.method public isSingleCenteredPage(Lcom/amazon/android/docviewer/mobi/IPageProvider$PagePosition;)Z
    .locals 5

    .line 382
    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getPage(Lcom/amazon/android/docviewer/mobi/IPageProvider$PagePosition;)Lcom/amazon/android/docviewer/mobi/MobiPage;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 385
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mobi/MobiPage;->getElements()Ljava/util/Vector;

    move-result-object p1

    .line 387
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 388
    invoke-virtual {p1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/android/docviewer/IPageElement;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/IPageElement;->getCoveringRectangles()Ljava/util/Vector;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 389
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 392
    invoke-virtual {p1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/system/drawing/Rectangle;

    .line 393
    iget v1, p1, Lcom/amazon/system/drawing/Rectangle;->x:I

    iget p1, p1, Lcom/amazon/system/drawing/Rectangle;->width:I

    div-int/lit8 p1, p1, 0x2

    add-int/2addr v1, p1

    .line 394
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getRenderingSettings()Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    .line 403
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getRenderingSettings()Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0xc

    sub-int v4, p1, v3

    if-lt v1, v4, :cond_0

    add-int/2addr p1, v3

    if-gt v1, p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public navigateBack()V
    .locals 2

    .line 192
    iget v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 193
    invoke-virtual {p0, v0}, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->setWasViewingSecondPage(Z)V

    .line 195
    :cond_0
    invoke-super {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->navigateBack()V

    return-void
.end method

.method public navigateToBeginning()V
    .locals 2

    .line 217
    iget v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 218
    invoke-virtual {p0, v0}, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->setWasViewingSecondPage(Z)V

    .line 220
    :cond_0
    invoke-super {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->navigateToBeginning()V

    return-void
.end method

.method public navigateToCover()V
    .locals 2

    .line 201
    iget v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 202
    invoke-virtual {p0, v0}, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->setWasViewingSecondPage(Z)V

    .line 204
    :cond_0
    invoke-super {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->navigateToCover()V

    return-void
.end method

.method public navigateToLocation(I)V
    .locals 2

    .line 234
    iget v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 235
    invoke-virtual {p0, v0}, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->setWasViewingSecondPage(Z)V

    .line 237
    :cond_0
    invoke-super {p0, p1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->navigateToLocation(I)V

    return-void
.end method

.method public navigateToNextPage()V
    .locals 3

    .line 165
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->isNavigating:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 166
    invoke-direct {p0}, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->reportPageTurnStartMetric()V

    .line 167
    iget v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->orientation:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 168
    invoke-virtual {p0, v1}, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->setWasViewingSecondPage(Z)V

    .line 169
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->metricsData:Lcom/amazon/kindle/krx/metrics/MetricsData;

    const-string v2, "LandscapePageTurn"

    invoke-virtual {v0, v2}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addCountingMetric(Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    .line 170
    iget v0, p0, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->landscapePageTurns:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->landscapePageTurns:I

    goto :goto_0

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->metricsData:Lcom/amazon/kindle/krx/metrics/MetricsData;

    const-string v2, "PortraitPageTurn"

    invoke-virtual {v0, v2}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addCountingMetric(Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    .line 173
    iget v0, p0, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->portraitPageTurns:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->portraitPageTurns:I

    :goto_0
    const-string/jumbo v0, "next"

    .line 175
    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->lastPageTurnDir:Ljava/lang/String;

    .line 176
    invoke-super {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->navigateToNextPage()V

    return-void
.end method

.method public navigateToPosition(I)V
    .locals 2

    .line 225
    iget v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 226
    invoke-virtual {p0, v0}, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->setWasViewingSecondPage(Z)V

    .line 228
    :cond_0
    invoke-super {p0, p1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->navigateToPosition(I)V

    return-void
.end method

.method public navigateToPrevPage()V
    .locals 3

    .line 181
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->isNavigating:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 182
    invoke-direct {p0}, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->reportPageTurnStartMetric()V

    .line 183
    iget v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->orientation:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 184
    invoke-virtual {p0, v1}, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->setWasViewingSecondPage(Z)V

    :cond_0
    const-string/jumbo v0, "prev"

    .line 186
    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->lastPageTurnDir:Ljava/lang/String;

    .line 187
    invoke-super {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->navigateToPrevPage()V

    return-void
.end method

.method public navigateToTOC()V
    .locals 2

    .line 209
    iget v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 210
    invoke-virtual {p0, v0}, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->setWasViewingSecondPage(Z)V

    .line 212
    :cond_0
    invoke-super {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->navigateToTOC()V

    return-void
.end method

.method public repushLastCanceledNavigationRequest()V
    .locals 1

    .line 597
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getTextNavigator()Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->repushLastCanceledNavigationRequest()V

    return-void
.end method

.method public rotateLandscape(IIZ)V
    .locals 7

    const/4 v0, 0x2

    if-eqz p3, :cond_0

    .line 308
    iget v1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->orientation:I

    if-eq v1, v0, :cond_5

    .line 314
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 315
    invoke-interface {v1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getContentClass()Lcom/amazon/kindle/model/content/ContentClass;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 322
    sget-object v3, Lcom/amazon/kindle/model/content/ContentClass;->MANGA:Lcom/amazon/kindle/model/content/ContentClass;

    if-ne v1, v3, :cond_2

    int-to-float v1, p1

    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float v1, v1, v3

    float-to-int v1, v1

    int-to-float v4, p2

    mul-float v4, v4, v3

    float-to-int v3, v4

    goto :goto_1

    .line 325
    :cond_2
    sget-object v3, Lcom/amazon/kindle/model/content/ContentClass;->COMIC:Lcom/amazon/kindle/model/content/ContentClass;

    if-ne v1, v3, :cond_3

    move v1, p1

    move v3, p2

    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    move v1, p1

    move v3, p2

    :goto_1
    const/4 v4, 0x2

    .line 330
    :goto_2
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getTextNavigator()Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 332
    invoke-super {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getPage()Lcom/amazon/android/docviewer/mobi/MobiPage;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 334
    invoke-virtual {v5}, Lcom/amazon/android/docviewer/mobi/MobiPage;->getPageType()J

    move-result-wide v5

    .line 335
    invoke-direct {p0, v5, v6}, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->isSecondPageType(J)Z

    move-result v5

    if-nez v5, :cond_4

    const/4 v2, 0x0

    .line 340
    :cond_4
    invoke-virtual {p0, v2}, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->setWasViewingSecondPage(Z)V

    .line 345
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getInternalDocument()Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;->getDocumentInfo()Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->getNaturalWidth()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getRenderingSettings()Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->getSpaceBetweenColumns()I

    move-result v5

    add-int/2addr v2, v5

    .line 346
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getInternalDocument()Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;->getDocumentInfo()Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->getNaturalHeight()I

    move-result v5

    .line 342
    invoke-direct {p0, v1, v3, v2, v5}, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->calculateTargetRenderDimensions(IIII)Lcom/amazon/kindle/util/drawing/Dimension;

    move-result-object v1

    .line 347
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getRenderingSettings()Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->setColumnCount(I)V

    .line 348
    iget v2, v1, Lcom/amazon/kindle/util/drawing/Dimension;->width:I

    iget v3, v1, Lcom/amazon/kindle/util/drawing/Dimension;->height:I

    invoke-direct {p0, v2, v3}, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->setDimensions(II)V

    .line 349
    invoke-virtual {p0, v0, p3}, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->setOrientationConfiguration(IZ)V

    .line 350
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result p3

    if-eqz p3, :cond_5

    .line 351
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ManagDocViewer Init: Screen size is "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "x"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", render size is "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, v1, Lcom/amazon/kindle/util/drawing/Dimension;->width:I

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v1, Lcom/amazon/kindle/util/drawing/Dimension;->height:I

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", orientation is "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->orientation:I

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_5
    return-void
.end method

.method public rotatePortrait(IIZ)V
    .locals 5

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    .line 263
    iget v1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->orientation:I

    if-eq v1, v0, :cond_4

    .line 268
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 269
    invoke-interface {v1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getContentClass()Lcom/amazon/kindle/model/content/ContentClass;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 273
    sget-object v2, Lcom/amazon/kindle/model/content/ContentClass;->MANGA:Lcom/amazon/kindle/model/content/ContentClass;

    if-ne v1, v2, :cond_2

    int-to-float v1, p1

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float v1, v1, v2

    float-to-int v1, v1

    int-to-float v3, p2

    mul-float v3, v3, v2

    float-to-int v2, v3

    goto :goto_1

    :cond_2
    move v1, p1

    move v2, p2

    .line 281
    :goto_1
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getInternalDocument()Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;->getDocumentInfo()Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->getNaturalWidth()I

    move-result v3

    .line 282
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getInternalDocument()Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;->getDocumentInfo()Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->getNaturalHeight()I

    move-result v4

    .line 278
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->calculateTargetRenderDimensions(IIII)Lcom/amazon/kindle/util/drawing/Dimension;

    move-result-object v1

    .line 284
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getRenderingSettings()Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->setColumnCount(I)V

    .line 286
    iget v2, v1, Lcom/amazon/kindle/util/drawing/Dimension;->width:I

    iget v3, v1, Lcom/amazon/kindle/util/drawing/Dimension;->height:I

    invoke-direct {p0, v2, v3}, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->setDimensions(II)V

    .line 290
    invoke-virtual {p0, v0, p3}, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->setOrientationConfiguration(IZ)V

    .line 292
    iget-boolean p3, p0, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->wasViewingSecondPage:Z

    if-eqz p3, :cond_3

    .line 293
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->navigateToNextPage()V

    .line 295
    :cond_3
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 296
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ManagDocViewer Init: Screen size is "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "x"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", render size is "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, v1, Lcom/amazon/kindle/util/drawing/Dimension;->width:I

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v1, Lcom/amazon/kindle/util/drawing/Dimension;->height:I

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", orientation is "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->orientation:I

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_4
    return-void
.end method

.method public setColumnCount(IZ)V
    .locals 0

    return-void
.end method

.method public setOrientationConfiguration(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    .line 363
    iget p2, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->orientation:I

    if-eq p2, p1, :cond_2

    .line 364
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->setOrientation(I)V

    .line 366
    iget p2, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->orientation:I

    if-ltz p2, :cond_1

    .line 367
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->applySettings()V

    .line 369
    :cond_1
    iput p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->orientation:I

    :cond_2
    return-void
.end method

.method public setWasViewingSecondPage(Z)V
    .locals 0

    .line 502
    iput-boolean p1, p0, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->wasViewingSecondPage:Z

    return-void
.end method

.method public startTapToTurnPage()V
    .locals 3

    const/4 v0, 0x1

    .line 576
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->isTapToTurnPage:Z

    .line 577
    sget-object v1, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->TAP_TO_TURN_PAGE:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {v1}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v2}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 578
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/PerfMetricsCollector;->getInstance()Lcom/amazon/kindle/krx/metrics/IBatchMetricCollector;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->TAP_TO_TURN_PAGE:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {v1}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-static {v2}, Lcom/amazon/kindle/content/KindleContentFormat;->getFormat(Lcom/amazon/kindle/model/content/ILocalBookItem;)Lcom/amazon/kindle/content/KindleContentFormat;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/metrics/IBatchMetricCollector;->collectStartTimerMetric(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
