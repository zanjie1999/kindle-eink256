.class Lcom/amazon/device/ads/AdUtils2$AdUtilsStatic;
.super Ljava/lang/Object;
.source "AdUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/AdUtils2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AdUtilsStatic"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/device/ads/AdUtils2$1;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/amazon/device/ads/AdUtils2$AdUtilsStatic;-><init>()V

    return-void
.end method


# virtual methods
.method calculateScalingMultiplier(IIII)D
    .locals 0

    .line 98
    invoke-static {p1, p2, p3, p4}, Lcom/amazon/device/ads/AdUtils;->calculateScalingMultiplier(IIII)D

    move-result-wide p1

    return-wide p1
.end method

.method checkDefinedActivities(Landroid/content/Context;)Z
    .locals 0

    .line 80
    invoke-static {p1}, Lcom/amazon/device/ads/AdUtils;->checkDefinedActivities(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method deviceIndependentPixelToPixel(I)I
    .locals 0

    .line 108
    invoke-static {p1}, Lcom/amazon/device/ads/AdUtils;->deviceIndependentPixelToPixel(I)I

    move-result p1

    return p1
.end method

.method getScalingFactorAsFloat()F
    .locals 1

    .line 113
    invoke-static {}, Lcom/amazon/device/ads/AdUtils;->getScalingFactorAsFloat()F

    move-result v0

    return v0
.end method

.method getViewportInitialScale(D)D
    .locals 0

    .line 91
    invoke-static {p1, p2}, Lcom/amazon/device/ads/AdUtils;->getViewportInitialScale(D)D

    move-result-wide p1

    return-wide p1
.end method

.method pixelToDeviceIndependentPixel(I)I
    .locals 0

    .line 103
    invoke-static {p1}, Lcom/amazon/device/ads/AdUtils;->pixelToDeviceIndependentPixel(I)I

    move-result p1

    return p1
.end method

.method setConnectionMetrics(Lcom/amazon/device/ads/ConnectionInfo;Lcom/amazon/device/ads/MetricsCollector;)V
    .locals 0

    .line 86
    invoke-static {p1, p2}, Lcom/amazon/device/ads/AdUtils;->setConnectionMetrics(Lcom/amazon/device/ads/ConnectionInfo;Lcom/amazon/device/ads/MetricsCollector;)V

    return-void
.end method
