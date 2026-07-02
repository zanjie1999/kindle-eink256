.class public Lcom/amazon/kcp/application/MobileAdsRegistrationManager;
.super Ljava/lang/Object;
.source "MobileAdsRegistrationManager.java"


# static fields
.field private static final KINDLE_APP_KEY:Ljava/lang/String; = "91aef7ae911d49339f76ec6ddde5b247"

.field private static final KINDLE_APP_NAME:Ljava/lang/String; = "kindle"

.field private static final TAG:Ljava/lang/String;

.field private static instance:Lcom/amazon/kcp/application/MobileAdsRegistrationManager;


# instance fields
.field private final context:Landroid/content/Context;

.field private referer:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const-class v0, Lcom/amazon/kcp/application/MobileAdsRegistrationManager;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/application/MobileAdsRegistrationManager;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 29
    sput-object v0, Lcom/amazon/kcp/application/MobileAdsRegistrationManager;->instance:Lcom/amazon/kcp/application/MobileAdsRegistrationManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/application/MobileAdsRegistrationManager;->context:Landroid/content/Context;

    const-string v0, "kindle"

    .line 38
    invoke-static {v0}, Lcom/amazon/device/ads/AmazonOOAdRegistration;->setAppName(Ljava/lang/String;)V

    const-string v0, "91aef7ae911d49339f76ec6ddde5b247"

    .line 39
    invoke-static {v0}, Lcom/amazon/device/ads/AmazonOOAdRegistration;->setAppKey(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 40
    invoke-static {v0}, Lcom/amazon/device/ads/AmazonOOAdRegistration;->enableLogging(Z)V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/amazon/kcp/application/MobileAdsRegistrationManager;
    .locals 2

    const-class v0, Lcom/amazon/kcp/application/MobileAdsRegistrationManager;

    monitor-enter v0

    .line 45
    :try_start_0
    sget-object v1, Lcom/amazon/kcp/application/MobileAdsRegistrationManager;->instance:Lcom/amazon/kcp/application/MobileAdsRegistrationManager;

    if-nez v1, :cond_0

    .line 47
    new-instance v1, Lcom/amazon/kcp/application/MobileAdsRegistrationManager;

    invoke-direct {v1}, Lcom/amazon/kcp/application/MobileAdsRegistrationManager;-><init>()V

    sput-object v1, Lcom/amazon/kcp/application/MobileAdsRegistrationManager;->instance:Lcom/amazon/kcp/application/MobileAdsRegistrationManager;

    .line 49
    :cond_0
    sget-object v1, Lcom/amazon/kcp/application/MobileAdsRegistrationManager;->instance:Lcom/amazon/kcp/application/MobileAdsRegistrationManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getReferer()Ljava/lang/String;
    .locals 4

    .line 107
    iget-object v0, p0, Lcom/amazon/kcp/application/MobileAdsRegistrationManager;->referer:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 110
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/amazon/kcp/application/MobileAdsRegistrationManager;->context:Landroid/content/Context;

    const-string v3, "InstallReferralPrefs"

    invoke-interface {v0, v3, v1, v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAndroidSharedPreferences(Ljava/lang/String;ILandroid/content/Context;)Lcom/amazon/kindle/persistence/AndroidSharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "referrer"

    .line 111
    invoke-virtual {v0, v2, v1}, Lcom/amazon/kindle/persistence/AndroidSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/application/MobileAdsRegistrationManager;->referer:Ljava/lang/String;

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/application/MobileAdsRegistrationManager;->referer:Ljava/lang/String;

    return-object v0
.end method

.method private registerAppByMobileAds()V
    .locals 2

    .line 79
    invoke-direct {p0}, Lcom/amazon/kcp/application/MobileAdsRegistrationManager;->getReferer()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v1, p0, Lcom/amazon/kcp/application/MobileAdsRegistrationManager;->context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/amazon/device/ads/AmazonOOAdRegistration;->setReferrer(Landroid/content/Context;Ljava/lang/String;)V

    .line 85
    :cond_0
    sget-object v0, Lcom/amazon/kcp/application/MobileAdsRegistrationManager;->TAG:Ljava/lang/String;

    const-string v1, "Start calling AmazonMobileAds registerApp()"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/amazon/kcp/application/MobileAdsRegistrationManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/device/ads/AmazonOOAdRegistration;->registerApp(Landroid/content/Context;)V

    .line 87
    sget-object v0, Lcom/amazon/kcp/application/MobileAdsRegistrationManager;->TAG:Ljava/lang/String;

    const-string v1, "End calling AmazonMobileAds registerApp()"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private reportRegistrationMetrics()V
    .locals 4

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "AdsSdkAppName"

    const-string v2, "kindle"

    .line 93
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "AdsSdkAppKey"

    const-string v2, "91aef7ae911d49339f76ec6ddde5b247"

    .line 94
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    invoke-direct {p0}, Lcom/amazon/kcp/application/MobileAdsRegistrationManager;->getReferer()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "AdsSdkReferrer"

    .line 99
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    sget-object v2, Lcom/amazon/kcp/application/MobileAdsRegistrationManager;->TAG:Ljava/lang/String;

    const-string v3, "AdsSdkRegister"

    invoke-virtual {v1, v2, v3, v0}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public handleFirstLogin()V
    .locals 3

    .line 70
    sget-object v0, Lcom/amazon/kcp/application/MobileAdsRegistrationManager;->TAG:Ljava/lang/String;

    const-string v1, "Start calling AmazonMobileAds registerEvent(FIRST_LOGIN)"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/amazon/kcp/application/MobileAdsRegistrationManager;->context:Landroid/content/Context;

    sget-object v1, Lcom/amazon/device/ads/AmazonOOAppEvent;->FIRST_LOGIN:Lcom/amazon/device/ads/AmazonOOAppEvent;

    invoke-static {v0, v1}, Lcom/amazon/device/ads/AmazonOOAdRegistration;->registerEvent(Landroid/content/Context;Lcom/amazon/device/ads/AmazonOOAppEvent;)V

    .line 72
    sget-object v0, Lcom/amazon/kcp/application/MobileAdsRegistrationManager;->TAG:Ljava/lang/String;

    const-string v1, "End calling AmazonMobileAds registerEvent(FIRST_LOGIN)"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/application/MobileAdsRegistrationManager;->TAG:Ljava/lang/String;

    const-string v2, "AdsSdkFirstLogin"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public registerApp()V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/amazon/kcp/application/MobileAdsRegistrationManager;->registerAppByMobileAds()V

    .line 60
    invoke-direct {p0}, Lcom/amazon/kcp/application/MobileAdsRegistrationManager;->reportRegistrationMetrics()V

    return-void
.end method
