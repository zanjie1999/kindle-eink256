.class Lcom/amazon/device/ads/AdUtils2;
.super Ljava/lang/Object;
.source "AdUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/ads/AdUtils2$AdUtilsStatic;
    }
.end annotation


# instance fields
.field private final adUtilsAdapter:Lcom/amazon/device/ads/AdUtils2$AdUtilsStatic;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/amazon/device/ads/AdUtils2$AdUtilsStatic;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/device/ads/AdUtils2$AdUtilsStatic;-><init>(Lcom/amazon/device/ads/AdUtils2$1;)V

    iput-object v0, p0, Lcom/amazon/device/ads/AdUtils2;->adUtilsAdapter:Lcom/amazon/device/ads/AdUtils2$AdUtilsStatic;

    return-void
.end method


# virtual methods
.method public calculateScalingMultiplier(IIII)D
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/amazon/device/ads/AdUtils2;->adUtilsAdapter:Lcom/amazon/device/ads/AdUtils2$AdUtilsStatic;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/amazon/device/ads/AdUtils2$AdUtilsStatic;->calculateScalingMultiplier(IIII)D

    move-result-wide p1

    return-wide p1
.end method

.method public checkDefinedActivities(Landroid/content/Context;)Z
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/amazon/device/ads/AdUtils2;->adUtilsAdapter:Lcom/amazon/device/ads/AdUtils2$AdUtilsStatic;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/AdUtils2$AdUtilsStatic;->checkDefinedActivities(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public deviceIndependentPixelToPixel(I)I
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/amazon/device/ads/AdUtils2;->adUtilsAdapter:Lcom/amazon/device/ads/AdUtils2$AdUtilsStatic;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/AdUtils2$AdUtilsStatic;->deviceIndependentPixelToPixel(I)I

    move-result p1

    return p1
.end method

.method public getScalingFactorAsFloat()F
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/amazon/device/ads/AdUtils2;->adUtilsAdapter:Lcom/amazon/device/ads/AdUtils2$AdUtilsStatic;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdUtils2$AdUtilsStatic;->getScalingFactorAsFloat()F

    move-result v0

    return v0
.end method

.method public getViewportInitialScale(D)D
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/amazon/device/ads/AdUtils2;->adUtilsAdapter:Lcom/amazon/device/ads/AdUtils2$AdUtilsStatic;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/device/ads/AdUtils2$AdUtilsStatic;->getViewportInitialScale(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public pixelToDeviceIndependentPixel(I)I
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/amazon/device/ads/AdUtils2;->adUtilsAdapter:Lcom/amazon/device/ads/AdUtils2$AdUtilsStatic;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/AdUtils2$AdUtilsStatic;->pixelToDeviceIndependentPixel(I)I

    move-result p1

    return p1
.end method

.method public setConnectionMetrics(Lcom/amazon/device/ads/ConnectionInfo;Lcom/amazon/device/ads/MetricsCollector;)V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/amazon/device/ads/AdUtils2;->adUtilsAdapter:Lcom/amazon/device/ads/AdUtils2$AdUtilsStatic;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/device/ads/AdUtils2$AdUtilsStatic;->setConnectionMetrics(Lcom/amazon/device/ads/ConnectionInfo;Lcom/amazon/device/ads/MetricsCollector;)V

    return-void
.end method
