.class public Lcom/amazon/kcp/reader/ui/BrightnessMetricUsageUtils;
.super Ljava/lang/Object;
.source "BrightnessMetricUsageUtils.java"


# direct methods
.method public static reportBrightnessGestureMetricsUserDefinedMode(II)V
    .locals 1

    const-string v0, "BrightnessGestureUserDefined"

    .line 33
    invoke-static {v0, p0, p1}, Lcom/amazon/kcp/util/fastmetrics/RecordSettingsChangeFastMetrics;->sendSettingsChangeRange(Ljava/lang/String;II)V

    return-void
.end method

.method public static reportBrightnessSliderMetrics(II)V
    .locals 1

    const-string v0, "BrightnessSlider"

    .line 21
    invoke-static {v0, p0, p1}, Lcom/amazon/kcp/util/fastmetrics/RecordSettingsChangeFastMetrics;->sendSettingsChangeRange(Ljava/lang/String;II)V

    return-void
.end method
