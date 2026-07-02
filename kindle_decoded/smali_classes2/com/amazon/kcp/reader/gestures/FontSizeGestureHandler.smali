.class public Lcom/amazon/kcp/reader/gestures/FontSizeGestureHandler;
.super Lcom/amazon/kcp/reader/gestures/SimpleGestureHandler;
.source "FontSizeGestureHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/reader/gestures/FontSizeGestureHandler$PageDrawnListener;
    }
.end annotation


# instance fields
.field private final ZOOMPAN_ZOOM_DISTANCE_THRESHOLD_FONT_SIZE:F

.field private fontSizeMessageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

.field private gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

.field private hasChangedFontSize:Z

.field private isRenderingFontSizeChange:Z

.field private lastZoomDistance:F

.field private settings:Lcom/amazon/kcp/application/UserSettingsController;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/reader/gestures/GestureService;F)V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/amazon/kcp/reader/gestures/SimpleGestureHandler;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcom/amazon/kcp/reader/gestures/FontSizeGestureHandler;->lastZoomDistance:F

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/gestures/FontSizeGestureHandler;->isRenderingFontSizeChange:Z

    .line 31
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/gestures/FontSizeGestureHandler;->hasChangedFontSize:Z

    .line 35
    iput-object p1, p0, Lcom/amazon/kcp/reader/gestures/FontSizeGestureHandler;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    .line 36
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/gestures/GestureService;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/reader/gestures/FontSizeGestureHandler;->settings:Lcom/amazon/kcp/application/UserSettingsController;

    .line 37
    iput p2, p0, Lcom/amazon/kcp/reader/gestures/FontSizeGestureHandler;->ZOOMPAN_ZOOM_DISTANCE_THRESHOLD_FONT_SIZE:F

    .line 39
    iget-object p1, p0, Lcom/amazon/kcp/reader/gestures/FontSizeGestureHandler;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/gestures/GestureService;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    new-instance p2, Lcom/amazon/kcp/reader/gestures/FontSizeGestureHandler$PageDrawnListener;

    invoke-direct {p2, p0}, Lcom/amazon/kcp/reader/gestures/FontSizeGestureHandler$PageDrawnListener;-><init>(Lcom/amazon/kcp/reader/gestures/FontSizeGestureHandler;)V

    invoke-interface {p1, p2}, Lcom/amazon/android/docviewer/KindleDocViewer;->addEventHandler(Lcom/amazon/android/docviewer/IKindleDocViewerEvents;)V

    return-void
.end method

.method static synthetic access$002(Lcom/amazon/kcp/reader/gestures/FontSizeGestureHandler;Z)Z
    .locals 0

    .line 16
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/gestures/FontSizeGestureHandler;->isRenderingFontSizeChange:Z

    return p1
.end method

.method private getSpacing(Lcom/amazon/kindle/krx/gesture/GestureEvent;)F
    .locals 4

    const/4 v0, 0x0

    .line 120
    invoke-virtual {p1, v0}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->getX(I)F

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->getX(I)F

    move-result v3

    sub-float/2addr v1, v3

    .line 121
    invoke-virtual {p1, v0}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->getY(I)F

    move-result v0

    invoke-virtual {p1, v2}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->getY(I)F

    move-result p1

    sub-float/2addr v0, p1

    mul-float v1, v1, v1

    mul-float v0, v0, v0

    add-float/2addr v1, v0

    float-to-double v0, v1

    .line 122
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method private publishEvent(Lcom/amazon/kcp/reader/FontSizeChangeEvent;)V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/FontSizeGestureHandler;->fontSizeMessageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    if-nez v0, :cond_0

    .line 88
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    .line 89
    const-class v1, Lcom/amazon/kcp/reader/gestures/FontSizeGestureHandler;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/gestures/FontSizeGestureHandler;->fontSizeMessageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/FontSizeGestureHandler;->fontSizeMessageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method


# virtual methods
.method protected getHasChangedFontSize()Z
    .locals 1

    .line 130
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/gestures/FontSizeGestureHandler;->hasChangedFontSize:Z

    return v0
.end method

.method public getPriority()I
    .locals 1

    const/16 v0, 0xf

    return v0
.end method

.method protected isRenderingFontSizeChange()Z
    .locals 1

    .line 126
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/gestures/FontSizeGestureHandler;->isRenderingFontSizeChange:Z

    return v0
.end method

.method public onFirstPointerUp(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z
    .locals 0

    const/4 p1, 0x0

    .line 111
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/gestures/FontSizeGestureHandler;->hasChangedFontSize:Z

    return p1
.end method

.method public onMove(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z
    .locals 6

    .line 44
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/FontSizeGestureHandler;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/gestures/GestureService;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object v0

    .line 45
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->hasBeenConsumed()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_4

    if-eqz v0, :cond_4

    .line 47
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/KindleDocView;->getPageTurnOffset()I

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 50
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    .line 52
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/gestures/FontSizeGestureHandler;->getSpacing(Lcom/amazon/kindle/krx/gesture/GestureEvent;)F

    move-result p1

    .line 54
    iget v0, p0, Lcom/amazon/kcp/reader/gestures/FontSizeGestureHandler;->lastZoomDistance:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Lcom/amazon/kcp/reader/gestures/FontSizeGestureHandler;->ZOOMPAN_ZOOM_DISTANCE_THRESHOLD_FONT_SIZE:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_3

    .line 57
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/gestures/FontSizeGestureHandler;->isRenderingFontSizeChange()Z

    move-result v0

    if-nez v0, :cond_3

    .line 58
    iput-boolean v1, p0, Lcom/amazon/kcp/reader/gestures/FontSizeGestureHandler;->hasChangedFontSize:Z

    .line 60
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/FontSizeGestureHandler;->settings:Lcom/amazon/kcp/application/UserSettingsController;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getFontSizeIndex()I

    move-result v0

    .line 61
    invoke-static {}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->getFontSizes()[I

    move-result-object v2

    array-length v2, v2

    .line 62
    iget v3, p0, Lcom/amazon/kcp/reader/gestures/FontSizeGestureHandler;->lastZoomDistance:F

    div-float v3, p1, v3

    .line 63
    iput p1, p0, Lcom/amazon/kcp/reader/gestures/FontSizeGestureHandler;->lastZoomDistance:F

    const-string p1, "ReaderGestureDetector"

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v5, v3, v4

    if-lez v5, :cond_1

    if-ge v0, v2, :cond_1

    .line 67
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v2

    const-string v3, "ReaderFontSizeIncreasedWithPinchToZoom"

    invoke-virtual {v2, p1, v3}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iput-boolean v1, p0, Lcom/amazon/kcp/reader/gestures/FontSizeGestureHandler;->isRenderingFontSizeChange:Z

    .line 69
    iget-object p1, p0, Lcom/amazon/kcp/reader/gestures/FontSizeGestureHandler;->settings:Lcom/amazon/kcp/application/UserSettingsController;

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/application/UserSettingsController;->setFontSizeIndex(I)V

    .line 70
    new-instance p1, Lcom/amazon/kcp/reader/FontSizeChangeEvent;

    sget-object v0, Lcom/amazon/kcp/reader/FontSizeChangeEvent$Type;->INCREASE:Lcom/amazon/kcp/reader/FontSizeChangeEvent$Type;

    invoke-direct {p1, v0}, Lcom/amazon/kcp/reader/FontSizeChangeEvent;-><init>(Lcom/amazon/kcp/reader/FontSizeChangeEvent$Type;)V

    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/gestures/FontSizeGestureHandler;->publishEvent(Lcom/amazon/kcp/reader/FontSizeChangeEvent;)V

    goto :goto_0

    :cond_1
    cmpg-float v2, v3, v4

    if-gez v2, :cond_2

    if-lez v0, :cond_2

    .line 72
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v2

    const-string v3, "ReaderFontSizeDecreasedWithPinchToZoom"

    invoke-virtual {v2, p1, v3}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iput-boolean v1, p0, Lcom/amazon/kcp/reader/gestures/FontSizeGestureHandler;->isRenderingFontSizeChange:Z

    .line 74
    iget-object p1, p0, Lcom/amazon/kcp/reader/gestures/FontSizeGestureHandler;->settings:Lcom/amazon/kcp/application/UserSettingsController;

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/application/UserSettingsController;->setFontSizeIndex(I)V

    .line 75
    new-instance p1, Lcom/amazon/kcp/reader/FontSizeChangeEvent;

    sget-object v0, Lcom/amazon/kcp/reader/FontSizeChangeEvent$Type;->DECREASE:Lcom/amazon/kcp/reader/FontSizeChangeEvent$Type;

    invoke-direct {p1, v0}, Lcom/amazon/kcp/reader/FontSizeChangeEvent;-><init>(Lcom/amazon/kcp/reader/FontSizeChangeEvent$Type;)V

    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/gestures/FontSizeGestureHandler;->publishEvent(Lcom/amazon/kcp/reader/FontSizeChangeEvent;)V

    :cond_2
    :goto_0
    return v1

    :cond_3
    return v2

    .line 48
    :cond_4
    :goto_1
    iput-boolean v2, p0, Lcom/amazon/kcp/reader/gestures/FontSizeGestureHandler;->hasChangedFontSize:Z

    return v2
.end method

.method public onSecondPointerDown(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z
    .locals 0

    .line 96
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/gestures/FontSizeGestureHandler;->getSpacing(Lcom/amazon/kindle/krx/gesture/GestureEvent;)F

    move-result p1

    iput p1, p0, Lcom/amazon/kcp/reader/gestures/FontSizeGestureHandler;->lastZoomDistance:F

    const/4 p1, 0x0

    return p1
.end method

.method public onSecondPointerUp(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z
    .locals 0

    const/4 p1, 0x0

    .line 103
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/gestures/FontSizeGestureHandler;->isRenderingFontSizeChange:Z

    .line 104
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/gestures/FontSizeGestureHandler;->hasChangedFontSize:Z

    return p1
.end method
