.class Lcom/amazon/device/ads/AdUtils$AdUtilsExecutor;
.super Ljava/lang/Object;
.source "AdUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/AdUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AdUtilsExecutor"
.end annotation


# instance fields
.field private hasRequiredActivities:Z

.field private final requiredActivities:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/AdUtils$AdUtilsExecutor;->requiredActivities:Ljava/util/HashSet;

    const/4 v1, 0x0

    .line 209
    iput-boolean v1, p0, Lcom/amazon/device/ads/AdUtils$AdUtilsExecutor;->hasRequiredActivities:Z

    const-string v1, "com.amazon.device.ads.AdActivity"

    .line 213
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method calculateScalingMultiplier(IIII)D
    .locals 4

    int-to-double v0, p3

    int-to-double v2, p1

    div-double/2addr v0, v2

    int-to-double p3, p4

    int-to-double p1, p2

    div-double/2addr p3, p1

    const-wide/16 p1, 0x0

    cmpg-double v2, p3, v0

    if-ltz v2, :cond_0

    cmpl-double v2, v0, p1

    if-nez v2, :cond_1

    :cond_0
    cmpl-double v2, p3, p1

    if-eqz v2, :cond_1

    move-wide v0, p3

    :cond_1
    cmpl-double p3, v0, p1

    if-nez p3, :cond_2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    :cond_2
    return-wide v0
.end method

.method checkDefinedActivities(Landroid/content/Context;)Z
    .locals 5

    .line 224
    iget-boolean v0, p0, Lcom/amazon/device/ads/AdUtils$AdUtilsExecutor;->hasRequiredActivities:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 228
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 231
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object v2

    .line 233
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 234
    invoke-virtual {p1, v2, v1}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 235
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p1, v3

    .line 237
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 239
    :cond_1
    iget-object p1, p0, Lcom/amazon/device/ads/AdUtils$AdUtilsExecutor;->requiredActivities:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazon/device/ads/AdUtils$AdUtilsExecutor;->hasRequiredActivities:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 246
    :catch_0
    iput-boolean v1, p0, Lcom/amazon/device/ads/AdUtils$AdUtilsExecutor;->hasRequiredActivities:Z

    return v1
.end method

.method deviceIndependentPixelToPixel(I)I
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    int-to-float p1, p1

    goto :goto_0

    :cond_0
    int-to-float p1, p1

    .line 333
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdUtils$AdUtilsExecutor;->getScalingFactorAsFloat()F

    move-result v0

    mul-float p1, p1, v0

    :goto_0
    float-to-int p1, p1

    return p1
.end method

.method getScalingFactorAsFloat()F
    .locals 1

    .line 341
    invoke-static {}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getInstance()Lcom/amazon/device/ads/MobileAdsInfoStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getDeviceInfo()Lcom/amazon/device/ads/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/DeviceInfo;->getScalingFactorAsFloat()F

    move-result v0

    return v0
.end method

.method getViewportInitialScale(D)D
    .locals 1

    const/16 v0, 0x13

    .line 284
    invoke-static {v0}, Lcom/amazon/device/ads/AndroidTargetUtils;->isAtLeastAndroidAPI(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    :cond_0
    return-wide p1
.end method

.method pixelToDeviceIndependentPixel(I)I
    .locals 1

    int-to-float p1, p1

    .line 322
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdUtils$AdUtilsExecutor;->getScalingFactorAsFloat()F

    move-result v0

    div-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method setConnectionMetrics(Lcom/amazon/device/ads/ConnectionInfo;Lcom/amazon/device/ads/MetricsCollector;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 257
    invoke-virtual {p1}, Lcom/amazon/device/ads/ConnectionInfo;->isWiFi()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    sget-object p1, Lcom/amazon/device/ads/Metrics$MetricType;->WIFI_PRESENT:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {p2, p1}, Lcom/amazon/device/ads/MetricsCollector;->incrementMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V

    goto :goto_0

    .line 263
    :cond_0
    sget-object v0, Lcom/amazon/device/ads/Metrics$MetricType;->CONNECTION_TYPE:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {p1}, Lcom/amazon/device/ads/ConnectionInfo;->getConnectionType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/amazon/device/ads/MetricsCollector;->setMetricString(Lcom/amazon/device/ads/Metrics$MetricType;Ljava/lang/String;)V

    .line 267
    :cond_1
    :goto_0
    invoke-static {}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getInstance()Lcom/amazon/device/ads/MobileAdsInfoStore;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getDeviceInfo()Lcom/amazon/device/ads/DeviceInfo;

    move-result-object p1

    .line 268
    invoke-virtual {p1}, Lcom/amazon/device/ads/DeviceInfo;->getCarrier()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 270
    sget-object v0, Lcom/amazon/device/ads/Metrics$MetricType;->CARRIER_NAME:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {p1}, Lcom/amazon/device/ads/DeviceInfo;->getCarrier()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/amazon/device/ads/MetricsCollector;->setMetricString(Lcom/amazon/device/ads/Metrics$MetricType;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
