.class public Lcom/amazon/kindle/rendering/KRIFPinchGestureHandler;
.super Ljava/lang/Object;
.source "KRIFPinchGestureHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final BEV_ZOOM_DISTANCE_THRESHOLD:F

.field private final BRIGHTNESS_DELTA_SPAN_THRESHOLD:F

.field private final BRIGHTNESS_DELTA_Y_THRESHOLD:F

.field private final DEFAULT_BRIGHTNESS_CHANGE_SPAN:F

.field private final DEFAULT_BRIGHTNESS_CHANGE_Y:F

.field private final DEFAULT_ZOOM_DISTANCE:F

.field private final FONT_SIZE_ZOOM_DISTANCE_THRESHOLD:F

.field private brightnessManager:Lcom/amazon/kindle/brightness/IBrightnessManager;

.field private fontSizeMessageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

.field private hasChangedBrightness:Z

.field private initialBrightnessPercentage:I

.field private isRenderingFontSizeChange:Z

.field private lastBrightnessChangeSpan:F

.field private lastBrightnessChangeY:F

.field private lastZoomDistance:F

.field private settingsController:Lcom/amazon/kcp/application/UserSettingsController;

.field private wasBrightnessGestureUsed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-class v0, Lcom/amazon/kindle/rendering/KRIFPinchGestureHandler;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/rendering/KRIFPinchGestureHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 33
    iput v0, p0, Lcom/amazon/kindle/rendering/KRIFPinchGestureHandler;->DEFAULT_ZOOM_DISTANCE:F

    const/high16 v1, -0x40800000    # -1.0f

    .line 34
    iput v1, p0, Lcom/amazon/kindle/rendering/KRIFPinchGestureHandler;->DEFAULT_BRIGHTNESS_CHANGE_Y:F

    .line 35
    iput v1, p0, Lcom/amazon/kindle/rendering/KRIFPinchGestureHandler;->DEFAULT_BRIGHTNESS_CHANGE_SPAN:F

    const/high16 v2, 0x43160000    # 150.0f

    .line 36
    iput v2, p0, Lcom/amazon/kindle/rendering/KRIFPinchGestureHandler;->FONT_SIZE_ZOOM_DISTANCE_THRESHOLD:F

    const/high16 v2, 0x41c80000    # 25.0f

    .line 38
    iput v2, p0, Lcom/amazon/kindle/rendering/KRIFPinchGestureHandler;->BRIGHTNESS_DELTA_Y_THRESHOLD:F

    const/high16 v2, 0x41700000    # 15.0f

    .line 39
    iput v2, p0, Lcom/amazon/kindle/rendering/KRIFPinchGestureHandler;->BRIGHTNESS_DELTA_SPAN_THRESHOLD:F

    const/4 v2, 0x0

    .line 42
    iput-boolean v2, p0, Lcom/amazon/kindle/rendering/KRIFPinchGestureHandler;->isRenderingFontSizeChange:Z

    const/4 v3, -0x1

    .line 47
    iput v3, p0, Lcom/amazon/kindle/rendering/KRIFPinchGestureHandler;->initialBrightnessPercentage:I

    .line 48
    iput-boolean v2, p0, Lcom/amazon/kindle/rendering/KRIFPinchGestureHandler;->wasBrightnessGestureUsed:Z

    .line 52
    iput-boolean v2, p0, Lcom/amazon/kindle/rendering/KRIFPinchGestureHandler;->hasChangedBrightness:Z

    .line 56
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v2

    invoke-interface {v2, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 57
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getBrightnessManager()Lcom/amazon/kindle/brightness/IBrightnessManager;

    move-result-object v2

    iput-object v2, p0, Lcom/amazon/kindle/rendering/KRIFPinchGestureHandler;->brightnessManager:Lcom/amazon/kindle/brightness/IBrightnessManager;

    .line 58
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v2

    iput-object v2, p0, Lcom/amazon/kindle/rendering/KRIFPinchGestureHandler;->settingsController:Lcom/amazon/kcp/application/UserSettingsController;

    .line 59
    iput v0, p0, Lcom/amazon/kindle/rendering/KRIFPinchGestureHandler;->lastZoomDistance:F

    .line 60
    iput v1, p0, Lcom/amazon/kindle/rendering/KRIFPinchGestureHandler;->lastBrightnessChangeY:F

    .line 61
    iput v1, p0, Lcom/amazon/kindle/rendering/KRIFPinchGestureHandler;->lastBrightnessChangeSpan:F

    .line 62
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/renderingmodule/R$dimen;->nln_pinch_dist:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/amazon/kindle/rendering/KRIFPinchGestureHandler;->BEV_ZOOM_DISTANCE_THRESHOLD:F

    return-void
.end method

.method private adjustBrightness(Lcom/amazon/krf/platform/UIData;)Z
    .locals 6

    .line 133
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 134
    invoke-virtual {v0}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->supportsTwoFingerSwipeForBrightness()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 139
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/krf/platform/UIData;->getY()F

    move-result v0

    .line 140
    invoke-virtual {p1}, Lcom/amazon/krf/platform/UIData;->getSpan()F

    move-result p1

    .line 142
    iget v2, p0, Lcom/amazon/kindle/rendering/KRIFPinchGestureHandler;->lastBrightnessChangeY:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    .line 143
    iput v0, p0, Lcom/amazon/kindle/rendering/KRIFPinchGestureHandler;->lastBrightnessChangeY:F

    .line 145
    :cond_1
    iget v2, p0, Lcom/amazon/kindle/rendering/KRIFPinchGestureHandler;->lastBrightnessChangeSpan:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    .line 146
    iput p1, p0, Lcom/amazon/kindle/rendering/KRIFPinchGestureHandler;->lastBrightnessChangeSpan:F

    .line 149
    :cond_2
    iget v2, p0, Lcom/amazon/kindle/rendering/KRIFPinchGestureHandler;->lastBrightnessChangeY:F

    sub-float v2, v0, v2

    .line 150
    iget v3, p0, Lcom/amazon/kindle/rendering/KRIFPinchGestureHandler;->lastBrightnessChangeSpan:F

    sub-float v3, p1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 152
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x41c80000    # 25.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_6

    const/high16 v4, 0x41700000    # 15.0f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_6

    const/4 v3, 0x1

    .line 154
    iput-boolean v3, p0, Lcom/amazon/kindle/rendering/KRIFPinchGestureHandler;->wasBrightnessGestureUsed:Z

    .line 155
    iget-object v4, p0, Lcom/amazon/kindle/rendering/KRIFPinchGestureHandler;->settingsController:Lcom/amazon/kcp/application/UserSettingsController;

    invoke-virtual {v4}, Lcom/amazon/kcp/application/UserSettingsController;->getBrightnessMode()Lcom/amazon/kcp/reader/ui/BrightnessMode;

    move-result-object v4

    sget-object v5, Lcom/amazon/kcp/reader/ui/BrightnessMode;->SYSTEM:Lcom/amazon/kcp/reader/ui/BrightnessMode;

    if-ne v4, v5, :cond_3

    return v1

    .line 161
    :cond_3
    iget-boolean v1, p0, Lcom/amazon/kindle/rendering/KRIFPinchGestureHandler;->hasChangedBrightness:Z

    if-nez v1, :cond_4

    .line 162
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFPinchGestureHandler;->brightnessManager:Lcom/amazon/kindle/brightness/IBrightnessManager;

    invoke-interface {v1}, Lcom/amazon/kindle/brightness/IBrightnessManager;->getScreenBrightnessPercentage()I

    move-result v1

    iput v1, p0, Lcom/amazon/kindle/rendering/KRIFPinchGestureHandler;->initialBrightnessPercentage:I

    .line 164
    :cond_4
    iput-boolean v3, p0, Lcom/amazon/kindle/rendering/KRIFPinchGestureHandler;->hasChangedBrightness:Z

    .line 165
    iput v0, p0, Lcom/amazon/kindle/rendering/KRIFPinchGestureHandler;->lastBrightnessChangeY:F

    .line 166
    iput p1, p0, Lcom/amazon/kindle/rendering/KRIFPinchGestureHandler;->lastBrightnessChangeSpan:F

    .line 167
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFPinchGestureHandler;->brightnessManager:Lcom/amazon/kindle/brightness/IBrightnessManager;

    invoke-interface {p1}, Lcom/amazon/kindle/brightness/IBrightnessManager;->getScreenBrightness()F

    move-result p1

    .line 170
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFPinchGestureHandler;->getReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    neg-float v2, v2

    const v3, 0x3f666666    # 0.9f

    .line 172
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, v3

    div-float/2addr v2, v0

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    :goto_0
    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p1, v2

    .line 175
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 176
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFPinchGestureHandler;->brightnessManager:Lcom/amazon/kindle/brightness/IBrightnessManager;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/brightness/IBrightnessManager;->setScreenBrightness(F)V

    .line 179
    :cond_6
    iget-boolean p1, p0, Lcom/amazon/kindle/rendering/KRIFPinchGestureHandler;->hasChangedBrightness:Z

    return p1

    :cond_7
    :goto_1
    return v1
.end method

.method private adjustFontSize(Lcom/amazon/krf/platform/UIData;)Z
    .locals 7

    .line 89
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 90
    invoke-virtual {v0}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->supportsPinchToChangeFontSize()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 95
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/krf/platform/UIData;->getSpan()F

    move-result v0

    .line 96
    iget v2, p0, Lcom/amazon/kindle/rendering/KRIFPinchGestureHandler;->lastZoomDistance:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    .line 97
    iput v0, p0, Lcom/amazon/kindle/rendering/KRIFPinchGestureHandler;->lastZoomDistance:F

    .line 101
    :cond_1
    iget v2, p0, Lcom/amazon/kindle/rendering/KRIFPinchGestureHandler;->lastZoomDistance:F

    sub-float v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v4, 0x43160000    # 150.0f

    const/4 v5, 0x1

    cmpl-float v2, v2, v4

    if-lez v2, :cond_4

    .line 102
    iget-boolean v2, p0, Lcom/amazon/kindle/rendering/KRIFPinchGestureHandler;->isRenderingFontSizeChange:Z

    if-nez v2, :cond_4

    .line 105
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v1

    .line 106
    invoke-virtual {v1}, Lcom/amazon/kcp/application/UserSettingsController;->getFontSizeIndex()I

    move-result v2

    .line 107
    invoke-static {}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->getFontSizes()[I

    move-result-object v4

    array-length v4, v4

    .line 108
    iput v0, p0, Lcom/amazon/kindle/rendering/KRIFPinchGestureHandler;->lastZoomDistance:F

    .line 109
    invoke-virtual {p1}, Lcom/amazon/krf/platform/UIData;->getZoom()F

    move-result p1

    const-string v0, "ReaderGestureDetector"

    cmpl-float v6, p1, v3

    if-lez v6, :cond_2

    sub-int/2addr v4, v5

    if-ge v2, v4, :cond_2

    .line 113
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    const-string v3, "ReaderFontSizeIncreasedWithPinchToZoom"

    invoke-virtual {p1, v0, v3}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iput-boolean v5, p0, Lcom/amazon/kindle/rendering/KRIFPinchGestureHandler;->isRenderingFontSizeChange:Z

    add-int/2addr v2, v5

    .line 116
    invoke-virtual {v1, v2}, Lcom/amazon/kcp/application/UserSettingsController;->setFontSizeIndex(I)V

    .line 117
    new-instance p1, Lcom/amazon/kcp/reader/FontSizeChangeEvent;

    sget-object v0, Lcom/amazon/kcp/reader/FontSizeChangeEvent$Type;->INCREASE:Lcom/amazon/kcp/reader/FontSizeChangeEvent$Type;

    invoke-direct {p1, v0}, Lcom/amazon/kcp/reader/FontSizeChangeEvent;-><init>(Lcom/amazon/kcp/reader/FontSizeChangeEvent$Type;)V

    invoke-direct {p0, p1}, Lcom/amazon/kindle/rendering/KRIFPinchGestureHandler;->publishFontSizeChangedEvent(Lcom/amazon/kcp/reader/FontSizeChangeEvent;)V

    goto :goto_0

    :cond_2
    cmpg-float p1, p1, v3

    if-gez p1, :cond_3

    if-lez v2, :cond_3

    .line 120
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    const-string v3, "ReaderFontSizeDecreasedWithPinchToZoom"

    invoke-virtual {p1, v0, v3}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iput-boolean v5, p0, Lcom/amazon/kindle/rendering/KRIFPinchGestureHandler;->isRenderingFontSizeChange:Z

    sub-int/2addr v2, v5

    .line 123
    invoke-virtual {v1, v2}, Lcom/amazon/kcp/application/UserSettingsController;->setFontSizeIndex(I)V

    .line 124
    new-instance p1, Lcom/amazon/kcp/reader/FontSizeChangeEvent;

    sget-object v0, Lcom/amazon/kcp/reader/FontSizeChangeEvent$Type;->DECREASE:Lcom/amazon/kcp/reader/FontSizeChangeEvent$Type;

    invoke-direct {p1, v0}, Lcom/amazon/kcp/reader/FontSizeChangeEvent;-><init>(Lcom/amazon/kcp/reader/FontSizeChangeEvent$Type;)V

    invoke-direct {p0, p1}, Lcom/amazon/kindle/rendering/KRIFPinchGestureHandler;->publishFontSizeChangedEvent(Lcom/amazon/kcp/reader/FontSizeChangeEvent;)V

    :cond_3
    :goto_0
    const/4 v1, 0x1

    :cond_4
    :goto_1
    return v1
.end method

.method private getReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;
    .locals 1

    .line 188
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private publishFontSizeChangedEvent(Lcom/amazon/kcp/reader/FontSizeChangeEvent;)V
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFPinchGestureHandler;->fontSizeMessageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    if-nez v0, :cond_0

    .line 209
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    .line 210
    const-class v1, Lcom/amazon/kindle/rendering/KRIFPinchGestureHandler;

    .line 211
    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/rendering/KRIFPinchGestureHandler;->fontSizeMessageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFPinchGestureHandler;->fontSizeMessageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method

.method private reportBrightnessGestureUsage()V
    .locals 3

    .line 231
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFPinchGestureHandler;->brightnessManager:Lcom/amazon/kindle/brightness/IBrightnessManager;

    invoke-interface {v0}, Lcom/amazon/kindle/brightness/IBrightnessManager;->getScreenBrightnessPercentage()I

    move-result v0

    .line 232
    iget-boolean v1, p0, Lcom/amazon/kindle/rendering/KRIFPinchGestureHandler;->hasChangedBrightness:Z

    if-eqz v1, :cond_0

    .line 233
    iget v1, p0, Lcom/amazon/kindle/rendering/KRIFPinchGestureHandler;->initialBrightnessPercentage:I

    invoke-static {v1, v0}, Lcom/amazon/kcp/reader/ui/BrightnessMetricUsageUtils;->reportBrightnessGestureMetricsUserDefinedMode(II)V

    .line 235
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "ReaderGestureDetector"

    const-string v2, "ScreenBrightnessChanged"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public handlePinchEvent(Lcom/amazon/krf/platform/UIData;)V
    .locals 3

    if-eqz p1, :cond_3

    .line 70
    invoke-virtual {p1}, Lcom/amazon/krf/platform/UIData;->getType()Lcom/amazon/krf/platform/UIData$Type;

    move-result-object v0

    sget-object v1, Lcom/amazon/krf/platform/UIData$Type;->PINCH:Lcom/amazon/krf/platform/UIData$Type;

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 76
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    move-result-object v1

    .line 78
    invoke-virtual {v1}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->supportsPinchToChangeFontSize()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 79
    invoke-direct {p0, p1}, Lcom/amazon/kindle/rendering/KRIFPinchGestureHandler;->adjustFontSize(Lcom/amazon/krf/platform/UIData;)Z

    move-result v0

    :cond_1
    if-nez v0, :cond_2

    .line 83
    invoke-virtual {v1}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->supportsTwoFingerSwipeForBrightness()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 84
    invoke-direct {p0, p1}, Lcom/amazon/kindle/rendering/KRIFPinchGestureHandler;->adjustBrightness(Lcom/amazon/krf/platform/UIData;)Z

    :cond_2
    return-void

    .line 71
    :cond_3
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The event being handled is null or not of type "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/amazon/krf/platform/UIData$Type;->PINCH:Lcom/amazon/krf/platform/UIData$Type;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method

.method public onDocViewerSettingsChangeEvent(Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 202
    iget-boolean v0, p0, Lcom/amazon/kindle/rendering/KRIFPinchGestureHandler;->isRenderingFontSizeChange:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent;->getChangeType()Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$ChangeType;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$ChangeType;->POST_CHANGE:Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$ChangeType;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 203
    iput-boolean p1, p0, Lcom/amazon/kindle/rendering/KRIFPinchGestureHandler;->isRenderingFontSizeChange:Z

    :cond_0
    return-void
.end method

.method public onEndTransaction(Lcom/amazon/kindle/rendering/KRIFUIEventHandler$KRIFUIHandle;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 217
    invoke-virtual {p1}, Lcom/amazon/kindle/rendering/KRIFUIEventHandler$KRIFUIHandle;->getType()Lcom/amazon/krf/platform/UIData$Type;

    move-result-object p1

    sget-object v0, Lcom/amazon/krf/platform/UIData$Type;->PINCH_FLING:Lcom/amazon/krf/platform/UIData$Type;

    if-ne p1, v0, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 218
    iput p1, p0, Lcom/amazon/kindle/rendering/KRIFPinchGestureHandler;->lastZoomDistance:F

    const/high16 p1, -0x40800000    # -1.0f

    .line 219
    iput p1, p0, Lcom/amazon/kindle/rendering/KRIFPinchGestureHandler;->lastBrightnessChangeY:F

    .line 220
    iput p1, p0, Lcom/amazon/kindle/rendering/KRIFPinchGestureHandler;->lastBrightnessChangeSpan:F

    .line 222
    :cond_0
    iget-boolean p1, p0, Lcom/amazon/kindle/rendering/KRIFPinchGestureHandler;->wasBrightnessGestureUsed:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 223
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFPinchGestureHandler;->reportBrightnessGestureUsage()V

    .line 224
    iput-boolean v0, p0, Lcom/amazon/kindle/rendering/KRIFPinchGestureHandler;->wasBrightnessGestureUsed:Z

    :cond_1
    const/4 p1, -0x1

    .line 226
    iput p1, p0, Lcom/amazon/kindle/rendering/KRIFPinchGestureHandler;->initialBrightnessPercentage:I

    .line 227
    iput-boolean v0, p0, Lcom/amazon/kindle/rendering/KRIFPinchGestureHandler;->hasChangedBrightness:Z

    return-void
.end method
