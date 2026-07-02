.class public Lcom/amazon/kcp/reader/ui/StandaloneBrightnessSlider;
.super Lcom/amazon/kcp/reader/ui/ReaderBrightnessSlider;
.source "StandaloneBrightnessSlider.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final BRIGHTNESS_INTERVAL:I = 0xa

.field private static final MAX_SLIDER_VALUE:I = 0x64

.field private static final METRICS_EVENT_DECREASE_BRIGHTNESS_ICON_CLICKED:Ljava/lang/String; = "DecreaseBrightnessIconClicked"

.field private static final METRICS_EVENT_INCREASE_BRIGHTNESS_ICON_CLICKED:Ljava/lang/String; = "IncreaseBrightnessIconClicked"

.field private static final METRICS_EVENT_SLIDER_VALUE_CHANGED:Ljava/lang/String; = "SliderValueChanged"

.field private static final METRICS_EVENT_SYSTEM_BRIGHTNESS_DISABLED:Ljava/lang/String; = "AutoBrightnessDisabled"

.field private static final METRICS_EVENT_SYSTEM_BRIGHTNESS_ENABLED:Ljava/lang/String; = "AutoBrightnessEnabled"


# instance fields
.field private brightnessManager:Lcom/amazon/kindle/brightness/IBrightnessManager;

.field private brightnessSlider:Landroid/widget/SeekBar;

.field private initialBrightnessPercentage:I

.field private settings:Lcom/amazon/kcp/application/UserSettingsController;

.field private systemBrightnessCheckbox:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/reader/ui/ReaderBrightnessSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 55
    iput p1, p0, Lcom/amazon/kcp/reader/ui/StandaloneBrightnessSlider;->initialBrightnessPercentage:I

    .line 66
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/StandaloneBrightnessSlider;->settings:Lcom/amazon/kcp/application/UserSettingsController;

    .line 67
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getBrightnessManager()Lcom/amazon/kindle/brightness/IBrightnessManager;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/StandaloneBrightnessSlider;->brightnessManager:Lcom/amazon/kindle/brightness/IBrightnessManager;

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 159
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 160
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    const-string p1, "ViewOptions"

    if-eqz p2, :cond_0

    .line 128
    sget-object p2, Lcom/amazon/kcp/reader/ui/BrightnessMode;->SYSTEM:Lcom/amazon/kcp/reader/ui/BrightnessMode;

    .line 129
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v2, "AutoBrightnessEnabled"

    invoke-virtual {v0, p1, v2, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    goto :goto_0

    .line 132
    :cond_0
    sget-object p2, Lcom/amazon/kcp/reader/ui/BrightnessMode;->USER_DEFINED:Lcom/amazon/kcp/reader/ui/BrightnessMode;

    .line 133
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v2, "AutoBrightnessDisabled"

    invoke-virtual {v0, p1, v2, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    .line 136
    :goto_0
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/StandaloneBrightnessSlider;->settings:Lcom/amazon/kcp/application/UserSettingsController;

    invoke-virtual {p1}, Lcom/amazon/kcp/application/UserSettingsController;->getBrightnessMode()Lcom/amazon/kcp/reader/ui/BrightnessMode;

    move-result-object p1

    if-eq p1, p2, :cond_1

    .line 137
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/StandaloneBrightnessSlider;->settings:Lcom/amazon/kcp/application/UserSettingsController;

    invoke-virtual {p1, p2}, Lcom/amazon/kcp/application/UserSettingsController;->setBrightnessMode(Lcom/amazon/kcp/reader/ui/BrightnessMode;)V

    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 87
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 88
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/StandaloneBrightnessSlider;->brightnessManager:Lcom/amazon/kindle/brightness/IBrightnessManager;

    invoke-interface {v0}, Lcom/amazon/kindle/brightness/IBrightnessManager;->getScreenBrightness()F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v0, v0, v1

    .line 89
    sget v2, Lcom/amazon/kindle/thirdparty/R$id;->increase_brightness_image:I

    const-string v3, "ViewOptions"

    const/high16 v4, 0x41200000    # 10.0f

    if-ne p1, v2, :cond_0

    add-float/2addr v0, v4

    .line 90
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 91
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    sget-object v2, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v4, "IncreaseBrightnessIconClicked"

    invoke-virtual {p1, v3, v4, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    goto :goto_0

    .line 93
    :cond_0
    sget v2, Lcom/amazon/kindle/thirdparty/R$id;->decrease_brightness_image:I

    if-ne p1, v2, :cond_1

    const/4 p1, 0x0

    sub-float/2addr v0, v4

    .line 94
    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 95
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    sget-object v2, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v4, "DecreaseBrightnessIconClicked"

    invoke-virtual {p1, v3, v4, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    .line 98
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/StandaloneBrightnessSlider;->brightnessManager:Lcom/amazon/kindle/brightness/IBrightnessManager;

    div-float/2addr v0, v1

    invoke-interface {p1, v0}, Lcom/amazon/kindle/brightness/IBrightnessManager;->setScreenBrightness(F)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 165
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 166
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 72
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 74
    sget v0, Lcom/amazon/kindle/thirdparty/R$id;->reader_brightness_slider:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/StandaloneBrightnessSlider;->brightnessSlider:Landroid/widget/SeekBar;

    const/16 v1, 0x64

    .line 75
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 76
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/StandaloneBrightnessSlider;->brightnessSlider:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 78
    sget v0, Lcom/amazon/kindle/thirdparty/R$id;->increase_brightness_image:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    sget v0, Lcom/amazon/kindle/thirdparty/R$id;->decrease_brightness_image:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    sget v0, Lcom/amazon/kindle/thirdparty/R$id;->system_brightness_checkbox:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/StandaloneBrightnessSlider;->systemBrightnessCheckbox:Landroid/widget/CheckBox;

    .line 82
    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    if-eqz p3, :cond_0

    .line 120
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/StandaloneBrightnessSlider;->brightnessManager:Lcom/amazon/kindle/brightness/IBrightnessManager;

    int-to-float p2, p2

    const/high16 p3, 0x42c80000    # 100.0f

    div-float/2addr p2, p3

    invoke-interface {p1, p2}, Lcom/amazon/kindle/brightness/IBrightnessManager;->setScreenBrightness(F)V

    :cond_0
    return-void
.end method

.method public onSettingsChangedEvent(Lcom/amazon/kindle/persistence/SettingsChangedEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 171
    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->BRIGHTNESS_MODE:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {p1}, Lcom/amazon/kindle/persistence/SettingsChangedEvent;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/UserSettingsController$Setting;->equals(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/amazon/kcp/application/UserSettingsController$Setting;->SCREEN_BRIGHTNESS:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {p1}, Lcom/amazon/kindle/persistence/SettingsChangedEvent;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/application/UserSettingsController$Setting;->equals(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 172
    :cond_0
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/amazon/kcp/reader/ui/StandaloneBrightnessSlider$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/ui/StandaloneBrightnessSlider$1;-><init>(Lcom/amazon/kcp/reader/ui/StandaloneBrightnessSlider;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 103
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/StandaloneBrightnessSlider;->brightnessManager:Lcom/amazon/kindle/brightness/IBrightnessManager;

    invoke-interface {p1}, Lcom/amazon/kindle/brightness/IBrightnessManager;->getScreenBrightnessPercentage()I

    move-result p1

    iput p1, p0, Lcom/amazon/kcp/reader/ui/StandaloneBrightnessSlider;->initialBrightnessPercentage:I

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    .line 108
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/StandaloneBrightnessSlider;->brightnessManager:Lcom/amazon/kindle/brightness/IBrightnessManager;

    invoke-interface {p1}, Lcom/amazon/kindle/brightness/IBrightnessManager;->getScreenBrightnessPercentage()I

    move-result p1

    .line 110
    iget v0, p0, Lcom/amazon/kcp/reader/ui/StandaloneBrightnessSlider;->initialBrightnessPercentage:I

    invoke-static {v0, p1}, Lcom/amazon/kcp/reader/ui/BrightnessMetricUsageUtils;->reportBrightnessSliderMetrics(II)V

    .line 112
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v1, "ViewOptions"

    const-string v2, "SliderValueChanged"

    invoke-virtual {p1, v1, v2, v0}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    const/4 p1, -0x1

    .line 114
    iput p1, p0, Lcom/amazon/kcp/reader/ui/StandaloneBrightnessSlider;->initialBrightnessPercentage:I

    return-void
.end method

.method public syncSelectedOptions()V
    .locals 3

    .line 148
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/StandaloneBrightnessSlider;->brightnessSlider:Landroid/widget/SeekBar;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_1

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/StandaloneBrightnessSlider;->brightnessSlider:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/StandaloneBrightnessSlider;->brightnessManager:Lcom/amazon/kindle/brightness/IBrightnessManager;

    invoke-interface {v1}, Lcom/amazon/kindle/brightness/IBrightnessManager;->getScreenBrightness()F

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 153
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/StandaloneBrightnessSlider;->systemBrightnessCheckbox:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/StandaloneBrightnessSlider;->settings:Lcom/amazon/kcp/application/UserSettingsController;

    invoke-virtual {v1}, Lcom/amazon/kcp/application/UserSettingsController;->getBrightnessMode()Lcom/amazon/kcp/reader/ui/BrightnessMode;

    move-result-object v1

    sget-object v2, Lcom/amazon/kcp/reader/ui/BrightnessMode;->SYSTEM:Lcom/amazon/kcp/reader/ui/BrightnessMode;

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_1
    return-void
.end method
