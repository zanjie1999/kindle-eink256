.class Lcom/amazon/device/ads/AppInfo;
.super Ljava/lang/Object;
.source "AppInfo.java"


# instance fields
.field private final packageInfoUrlJSON:Lorg/json/JSONObject;

.field private final packageManager:Landroid/content/pm/PackageManager;

.field private final packageName:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lcom/amazon/device/ads/AppInfo;->packageName:Ljava/lang/String;

    .line 74
    iput-object v0, p0, Lcom/amazon/device/ads/AppInfo;->packageInfoUrlJSON:Lorg/json/JSONObject;

    .line 75
    iput-object v0, p0, Lcom/amazon/device/ads/AppInfo;->packageManager:Landroid/content/pm/PackageManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 28
    invoke-static {}, Lcom/amazon/device/ads/Metrics;->getInstance()Lcom/amazon/device/ads/Metrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/Metrics;->getMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lcom/amazon/device/ads/AppInfo;-><init>(Landroid/content/Context;Lcom/amazon/device/ads/MetricsCollector;Lorg/json/JSONObject;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/amazon/device/ads/MetricsCollector;Lorg/json/JSONObject;)V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p3, p0, Lcom/amazon/device/ads/AppInfo;->packageInfoUrlJSON:Lorg/json/JSONObject;

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/AppInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v1, "pn"

    .line 37
    invoke-static {p3, v1, v0}, Lcom/amazon/device/ads/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/AppInfo;->packageManager:Landroid/content/pm/PackageManager;

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    const/4 v0, 0x0

    .line 47
    :try_start_0
    iget-object v1, p0, Lcom/amazon/device/ads/AppInfo;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    const-string v1, "lbl"

    if-eqz p1, :cond_0

    .line 48
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    invoke-static {p3, v1, p1}, Lcom/amazon/device/ads/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 52
    :catch_0
    sget-object p1, Lcom/amazon/device/ads/Metrics$MetricType;->APP_INFO_LABEL_INDEX_OUT_OF_BOUNDS:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {p2, p1}, Lcom/amazon/device/ads/MetricsCollector;->incrementMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V

    .line 57
    :goto_1
    :try_start_1
    iget-object p1, p0, Lcom/amazon/device/ads/AppInfo;->packageManager:Landroid/content/pm/PackageManager;

    iget-object p2, p0, Lcom/amazon/device/ads/AppInfo;->packageName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 59
    iget-object p2, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    goto :goto_2

    :cond_1
    move-object p2, v0

    :goto_2
    const-string/jumbo v1, "vn"

    .line 60
    invoke-static {p3, v1, p2}, Lcom/amazon/device/ads/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 62
    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    const-string/jumbo p1, "v"

    .line 63
    invoke-static {p3, p1, v0}, Lcom/amazon/device/ads/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method


# virtual methods
.method public getPackageInfoJSON()Lorg/json/JSONObject;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/amazon/device/ads/AppInfo;->packageInfoUrlJSON:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getPackageInfoJSONString()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/amazon/device/ads/AppInfo;->packageInfoUrlJSON:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
