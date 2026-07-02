.class public Lcom/amazon/kcp/application/SettingsController;
.super Lcom/amazon/kindle/persistence/AbstractSettingsController;
.source "SettingsController.java"


# static fields
.field private static final APP_PREFS:Ljava/lang/String; = "ApplicationSettings"

.field private static final TAG:Ljava/lang/String;

.field private static volatile instance:Lcom/amazon/kcp/application/SettingsController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lcom/amazon/kcp/application/SettingsController;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/application/SettingsController;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "ApplicationSettings"

    const/4 v1, 0x0

    .line 41
    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;-><init>(Ljava/lang/String;ILandroid/content/Context;)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/SettingsController;
    .locals 2

    .line 45
    sget-object v0, Lcom/amazon/kcp/application/SettingsController;->instance:Lcom/amazon/kcp/application/SettingsController;

    if-nez v0, :cond_1

    .line 46
    const-class v0, Lcom/amazon/kcp/application/SettingsController;

    monitor-enter v0

    .line 47
    :try_start_0
    sget-object v1, Lcom/amazon/kcp/application/SettingsController;->instance:Lcom/amazon/kcp/application/SettingsController;

    if-nez v1, :cond_0

    .line 48
    new-instance v1, Lcom/amazon/kcp/application/SettingsController;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/application/SettingsController;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/amazon/kcp/application/SettingsController;->instance:Lcom/amazon/kcp/application/SettingsController;

    .line 50
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 52
    :cond_1
    :goto_0
    sget-object p0, Lcom/amazon/kcp/application/SettingsController;->instance:Lcom/amazon/kcp/application/SettingsController;

    return-object p0
.end method

.method private isSystemUsingAutoBrightness()Z
    .locals 8

    const/4 v0, 0x0

    .line 79
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/persistence/AbstractSettingsController;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_brightness_mode"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 90
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v2

    sget-object v5, Lcom/amazon/kindle/krx/metrics/MetricType;->ERROR:Lcom/amazon/kindle/krx/metrics/MetricType;

    const/4 v6, 0x0

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    const-string v3, "BookSettingsController"

    const-string v4, "BrightnessModeException"

    invoke-virtual/range {v2 .. v7}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;Ljava/util/Map;Ljava/lang/String;)V

    :goto_0
    return v0
.end method


# virtual methods
.method public applyScreenBrightness(Landroid/view/Window;)Z
    .locals 2

    const-string/jumbo v0, "screenBrightness"

    const/high16 v1, -0x40800000    # -1.0f

    .line 103
    invoke-virtual {p0, v0, v1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->getFloat(Ljava/lang/String;F)F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_1

    .line 105
    invoke-direct {p0}, Lcom/amazon/kcp/application/SettingsController;->isSystemUsingAutoBrightness()Z

    move-result v0

    if-nez v0, :cond_1

    .line 106
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getDeviceContext()Lcom/amazon/kcp/application/IDeviceContext;

    move-result-object v0

    .line 107
    invoke-interface {v0}, Lcom/amazon/kcp/application/IDeviceContext;->supportsBrightnessChanges()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 111
    :cond_0
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 112
    invoke-virtual {p0}, Lcom/amazon/kcp/application/SettingsController;->getScreenBrightness()F

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 113
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getOrientation()I
    .locals 2

    const-string/jumbo v0, "readerOrientation"

    const/4 v1, 0x0

    .line 122
    invoke-virtual {p0, v0, v1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getScreenBrightness()F
    .locals 3

    .line 64
    iget-object v0, p0, Lcom/amazon/kindle/persistence/AbstractSettingsController;->context:Landroid/content/Context;

    .line 65
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_brightness"

    const/16 v2, 0xff

    .line 64
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    const-string/jumbo v1, "screenBrightness"

    invoke-virtual {p0, v1, v0}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method
