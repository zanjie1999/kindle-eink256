.class public Lcom/amazon/kcp/reader/gestures/BrightnessGestureHandler;
.super Lcom/amazon/kcp/reader/gestures/SimpleGestureHandler;
.source "BrightnessGestureHandler.java"


# static fields
.field private static final BRIGHTNESS_GESTURE_THRESHOLD:F = 1.5f


# instance fields
.field private brightnessManager:Lcom/amazon/kindle/brightness/IBrightnessManager;

.field private firstFingerLastY:F

.field private fontSizeGestureHandler:Lcom/amazon/kcp/reader/gestures/FontSizeGestureHandler;

.field private gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

.field private hasChangedBrightness:Z

.field private initialBrightnessPercentage:I

.field private secondFingerLastY:F

.field private settingsController:Lcom/amazon/kcp/application/UserSettingsController;

.field private wasBrightnessGestureUsed:Z


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/reader/gestures/GestureService;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Lcom/amazon/kcp/reader/gestures/SimpleGestureHandler;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 22
    iput v0, p0, Lcom/amazon/kcp/reader/gestures/BrightnessGestureHandler;->firstFingerLastY:F

    .line 23
    iput v0, p0, Lcom/amazon/kcp/reader/gestures/BrightnessGestureHandler;->secondFingerLastY:F

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/gestures/BrightnessGestureHandler;->hasChangedBrightness:Z

    .line 32
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/gestures/BrightnessGestureHandler;->wasBrightnessGestureUsed:Z

    const/4 v0, -0x1

    .line 33
    iput v0, p0, Lcom/amazon/kcp/reader/gestures/BrightnessGestureHandler;->initialBrightnessPercentage:I

    .line 39
    iput-object p1, p0, Lcom/amazon/kcp/reader/gestures/BrightnessGestureHandler;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    .line 40
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getBrightnessManager()Lcom/amazon/kindle/brightness/IBrightnessManager;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/reader/gestures/BrightnessGestureHandler;->brightnessManager:Lcom/amazon/kindle/brightness/IBrightnessManager;

    .line 41
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/reader/gestures/BrightnessGestureHandler;->settingsController:Lcom/amazon/kcp/application/UserSettingsController;

    return-void
.end method

.method private reportBrightnessGestureUsage()V
    .locals 3

    .line 149
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/BrightnessGestureHandler;->brightnessManager:Lcom/amazon/kindle/brightness/IBrightnessManager;

    invoke-interface {v0}, Lcom/amazon/kindle/brightness/IBrightnessManager;->getScreenBrightnessPercentage()I

    move-result v0

    .line 150
    iget-boolean v1, p0, Lcom/amazon/kcp/reader/gestures/BrightnessGestureHandler;->hasChangedBrightness:Z

    if-eqz v1, :cond_0

    .line 151
    iget v1, p0, Lcom/amazon/kcp/reader/gestures/BrightnessGestureHandler;->initialBrightnessPercentage:I

    invoke-static {v1, v0}, Lcom/amazon/kcp/reader/ui/BrightnessMetricUsageUtils;->reportBrightnessGestureMetricsUserDefinedMode(II)V

    .line 153
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "ReaderGestureDetector"

    const-string v2, "ScreenBrightnessChanged"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getPriority()I
    .locals 1

    const/16 v0, 0xd

    return v0
.end method

.method public onFirstPointerDown(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z
    .locals 1

    const/4 v0, 0x0

    .line 101
    invoke-virtual {p1, v0}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->getY(I)F

    move-result p1

    iput p1, p0, Lcom/amazon/kcp/reader/gestures/BrightnessGestureHandler;->firstFingerLastY:F

    return v0
.end method

.method public onFirstPointerUp(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z
    .locals 1

    const/high16 p1, -0x40800000    # -1.0f

    .line 115
    iput p1, p0, Lcom/amazon/kcp/reader/gestures/BrightnessGestureHandler;->firstFingerLastY:F

    .line 116
    iget-boolean p1, p0, Lcom/amazon/kcp/reader/gestures/BrightnessGestureHandler;->wasBrightnessGestureUsed:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 117
    invoke-direct {p0}, Lcom/amazon/kcp/reader/gestures/BrightnessGestureHandler;->reportBrightnessGestureUsage()V

    .line 118
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/gestures/BrightnessGestureHandler;->wasBrightnessGestureUsed:Z

    .line 120
    :cond_0
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/gestures/BrightnessGestureHandler;->hasChangedBrightness:Z

    const/4 p1, -0x1

    .line 121
    iput p1, p0, Lcom/amazon/kcp/reader/gestures/BrightnessGestureHandler;->initialBrightnessPercentage:I

    return v0
.end method

.method public onMove(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z
    .locals 9

    .line 52
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/BrightnessGestureHandler;->fontSizeGestureHandler:Lcom/amazon/kcp/reader/gestures/FontSizeGestureHandler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/gestures/FontSizeGestureHandler;->getHasChangedFontSize()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 56
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->hasBeenConsumed()Z

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v2, :cond_5

    .line 57
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/gestures/BrightnessGestureHandler;->hasChangedBrightness:Z

    .line 61
    invoke-virtual {p1, v1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->getY(I)F

    move-result v4

    iget v5, p0, Lcom/amazon/kcp/reader/gestures/BrightnessGestureHandler;->firstFingerLastY:F

    sub-float/2addr v4, v5

    .line 62
    invoke-virtual {p1, v3}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->getY(I)F

    move-result v5

    iget v6, p0, Lcom/amazon/kcp/reader/gestures/BrightnessGestureHandler;->secondFingerLastY:F

    sub-float/2addr v5, v6

    const/high16 v6, 0x3fc00000    # 1.5f

    cmpl-float v7, v4, v6

    if-lez v7, :cond_1

    cmpl-float v6, v5, v6

    if-gtz v6, :cond_2

    :cond_1
    const/high16 v6, -0x40400000    # -1.5f

    cmpg-float v7, v4, v6

    if-gez v7, :cond_6

    cmpg-float v6, v5, v6

    if-gez v6, :cond_6

    .line 67
    :cond_2
    iput-boolean v3, p0, Lcom/amazon/kcp/reader/gestures/BrightnessGestureHandler;->wasBrightnessGestureUsed:Z

    .line 68
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/BrightnessGestureHandler;->settingsController:Lcom/amazon/kcp/application/UserSettingsController;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getBrightnessMode()Lcom/amazon/kcp/reader/ui/BrightnessMode;

    move-result-object v0

    sget-object v6, Lcom/amazon/kcp/reader/ui/BrightnessMode;->SYSTEM:Lcom/amazon/kcp/reader/ui/BrightnessMode;

    if-ne v0, v6, :cond_3

    return v1

    .line 74
    :cond_3
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/gestures/BrightnessGestureHandler;->hasChangedBrightness:Z

    if-nez v0, :cond_4

    .line 75
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/BrightnessGestureHandler;->brightnessManager:Lcom/amazon/kindle/brightness/IBrightnessManager;

    invoke-interface {v0}, Lcom/amazon/kindle/brightness/IBrightnessManager;->getScreenBrightnessPercentage()I

    move-result v0

    iput v0, p0, Lcom/amazon/kcp/reader/gestures/BrightnessGestureHandler;->initialBrightnessPercentage:I

    .line 77
    :cond_4
    iput-boolean v3, p0, Lcom/amazon/kcp/reader/gestures/BrightnessGestureHandler;->hasChangedBrightness:Z

    add-float/2addr v4, v5

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v4, v0

    .line 80
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/BrightnessGestureHandler;->brightnessManager:Lcom/amazon/kindle/brightness/IBrightnessManager;

    invoke-interface {v0}, Lcom/amazon/kindle/brightness/IBrightnessManager;->getScreenBrightness()F

    move-result v0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    neg-float v4, v4

    const v7, 0x3f666666    # 0.9f

    .line 82
    iget-object v8, p0, Lcom/amazon/kcp/reader/gestures/BrightnessGestureHandler;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    .line 83
    invoke-virtual {v8}, Lcom/amazon/kcp/reader/gestures/GestureService;->getLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v8

    int-to-float v8, v8

    mul-float v8, v8, v7

    div-float/2addr v4, v8

    add-float/2addr v0, v4

    .line 82
    invoke-static {v6, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 85
    iget-object v4, p0, Lcom/amazon/kcp/reader/gestures/BrightnessGestureHandler;->brightnessManager:Lcom/amazon/kindle/brightness/IBrightnessManager;

    invoke-interface {v4, v0}, Lcom/amazon/kindle/brightness/IBrightnessManager;->setScreenBrightness(F)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    .line 91
    :cond_6
    :goto_0
    invoke-virtual {p1, v1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->getY(I)F

    move-result v1

    iput v1, p0, Lcom/amazon/kcp/reader/gestures/BrightnessGestureHandler;->firstFingerLastY:F

    .line 92
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->getPointerCount()I

    move-result v1

    if-ne v1, v2, :cond_7

    .line 93
    invoke-virtual {p1, v3}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->getY(I)F

    move-result p1

    iput p1, p0, Lcom/amazon/kcp/reader/gestures/BrightnessGestureHandler;->secondFingerLastY:F

    :cond_7
    return v0
.end method

.method public onSecondPointerDown(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z
    .locals 1

    const/4 v0, 0x1

    .line 108
    invoke-virtual {p1, v0}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->getY(I)F

    move-result p1

    iput p1, p0, Lcom/amazon/kcp/reader/gestures/BrightnessGestureHandler;->secondFingerLastY:F

    const/4 p1, 0x0

    return p1
.end method

.method public onSecondPointerUp(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z
    .locals 1

    const/high16 p1, -0x40800000    # -1.0f

    .line 128
    iput p1, p0, Lcom/amazon/kcp/reader/gestures/BrightnessGestureHandler;->secondFingerLastY:F

    .line 129
    iget-boolean p1, p0, Lcom/amazon/kcp/reader/gestures/BrightnessGestureHandler;->wasBrightnessGestureUsed:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 130
    invoke-direct {p0}, Lcom/amazon/kcp/reader/gestures/BrightnessGestureHandler;->reportBrightnessGestureUsage()V

    .line 131
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/gestures/BrightnessGestureHandler;->wasBrightnessGestureUsed:Z

    .line 133
    :cond_0
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/gestures/BrightnessGestureHandler;->hasChangedBrightness:Z

    const/4 p1, -0x1

    .line 134
    iput p1, p0, Lcom/amazon/kcp/reader/gestures/BrightnessGestureHandler;->initialBrightnessPercentage:I

    return v0
.end method

.method public setFontSizeGestureHandler(Lcom/amazon/kcp/reader/gestures/FontSizeGestureHandler;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/amazon/kcp/reader/gestures/BrightnessGestureHandler;->fontSizeGestureHandler:Lcom/amazon/kcp/reader/gestures/FontSizeGestureHandler;

    return-void
.end method
