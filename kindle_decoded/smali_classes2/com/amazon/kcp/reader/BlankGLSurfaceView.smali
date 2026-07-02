.class public Lcom/amazon/kcp/reader/BlankGLSurfaceView;
.super Landroid/opengl/GLSurfaceView;
.source "BlankGLSurfaceView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x2

    .line 18
    invoke-virtual {p0, p1}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    .line 20
    new-instance p1, Lcom/amazon/kcp/reader/BlankGLRenderer;

    invoke-direct {p1}, Lcom/amazon/kcp/reader/BlankGLRenderer;-><init>()V

    invoke-virtual {p0, p1}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    const/4 p1, 0x0

    .line 22
    invoke-virtual {p0, p1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    return-void
.end method

.method private endMetric(Lcom/amazon/kindle/performance/KindlePerformanceConstants;)V
    .locals 2

    .line 51
    invoke-virtual {p1}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private startMetric(Lcom/amazon/kindle/performance/KindlePerformanceConstants;)V
    .locals 2

    .line 47
    invoke-virtual {p1}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 34
    sget-object v0, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->BLANK_SURFACE_VIEW_ON_DRAW:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/BlankGLSurfaceView;->startMetric(Lcom/amazon/kindle/performance/KindlePerformanceConstants;)V

    .line 35
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->onDraw(Landroid/graphics/Canvas;)V

    .line 36
    sget-object p1, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->BLANK_SURFACE_VIEW_ON_DRAW:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/BlankGLSurfaceView;->endMetric(Lcom/amazon/kindle/performance/KindlePerformanceConstants;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 41
    sget-object v0, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->BLANK_SURFACE_VIEW_ON_LAYOUT:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/BlankGLSurfaceView;->startMetric(Lcom/amazon/kindle/performance/KindlePerformanceConstants;)V

    .line 42
    invoke-super/range {p0 .. p5}, Landroid/opengl/GLSurfaceView;->onLayout(ZIIII)V

    .line 43
    sget-object p1, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->BLANK_SURFACE_VIEW_ON_LAYOUT:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/BlankGLSurfaceView;->endMetric(Lcom/amazon/kindle/performance/KindlePerformanceConstants;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 27
    sget-object v0, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->BLANK_SURFACE_VIEW_ON_MEASURE:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/BlankGLSurfaceView;->startMetric(Lcom/amazon/kindle/performance/KindlePerformanceConstants;)V

    .line 28
    invoke-super {p0, p1, p2}, Landroid/opengl/GLSurfaceView;->onMeasure(II)V

    .line 29
    sget-object p1, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->BLANK_SURFACE_VIEW_ON_MEASURE:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/BlankGLSurfaceView;->endMetric(Lcom/amazon/kindle/performance/KindlePerformanceConstants;)V

    return-void
.end method
