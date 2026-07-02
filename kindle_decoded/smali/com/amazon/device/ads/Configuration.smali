.class Lcom/amazon/device/ads/Configuration;
.super Ljava/lang/Object;
.source "Configuration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/ads/Configuration$ConfigurationListener;,
        Lcom/amazon/device/ads/Configuration$ConfigOption;
    }
.end annotation


# static fields
.field private static final AAX_MSDK_CONFIG_ENDPOINT:Ljava/lang/String; = "/msdk/getConfig"

.field private static final AAX_PROD_US_HOSTNAME:Ljava/lang/String; = "mads.amazon-adsystem.com"

.field private static final LOGTAG:Ljava/lang/String; = "Configuration"

.field private static instance:Lcom/amazon/device/ads/Configuration;


# instance fields
.field private appDefinedMarketplace:Ljava/lang/String;

.field private final debugProperties:Lcom/amazon/device/ads/DebugProperties;

.field private final infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

.field private isAppDefinedMarketplaceSet:Z

.field private final isFetching:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private isFirstParty:Z

.field private lastTestModeValue:Ljava/lang/Boolean;

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/device/ads/Configuration$ConfigurationListener;",
            ">;"
        }
    .end annotation
.end field

.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;

.field private final metrics:Lcom/amazon/device/ads/Metrics;

.field private final permissionChecker:Lcom/amazon/device/ads/PermissionChecker;

.field private pfmRetriever:Lcom/amazon/device/ads/PreferredMarketplaceRetriever;

.field private final settings:Lcom/amazon/device/ads/Settings;

.field private final systemTime:Lcom/amazon/device/ads/SystemTime;

.field private final threadRunner:Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

.field private final webRequestFactory:Lcom/amazon/device/ads/WebRequest$WebRequestFactory;

.field private final webRequestUserId:Lcom/amazon/device/ads/WebRequestUserId;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Lcom/amazon/device/ads/Configuration;

    invoke-direct {v0}, Lcom/amazon/device/ads/Configuration;-><init>()V

    sput-object v0, Lcom/amazon/device/ads/Configuration;->instance:Lcom/amazon/device/ads/Configuration;

    return-void
.end method

.method protected constructor <init>()V
    .locals 11

    .line 173
    new-instance v1, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v1}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    new-instance v2, Lcom/amazon/device/ads/PermissionChecker;

    invoke-direct {v2}, Lcom/amazon/device/ads/PermissionChecker;-><init>()V

    new-instance v3, Lcom/amazon/device/ads/WebRequest$WebRequestFactory;

    invoke-direct {v3}, Lcom/amazon/device/ads/WebRequest$WebRequestFactory;-><init>()V

    .line 176
    invoke-static {}, Lcom/amazon/device/ads/DebugProperties;->getInstance()Lcom/amazon/device/ads/DebugProperties;

    move-result-object v4

    .line 177
    invoke-static {}, Lcom/amazon/device/ads/Settings;->getInstance()Lcom/amazon/device/ads/Settings;

    move-result-object v5

    .line 178
    invoke-static {}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getInstance()Lcom/amazon/device/ads/MobileAdsInfoStore;

    move-result-object v6

    new-instance v7, Lcom/amazon/device/ads/SystemTime;

    invoke-direct {v7}, Lcom/amazon/device/ads/SystemTime;-><init>()V

    .line 180
    invoke-static {}, Lcom/amazon/device/ads/Metrics;->getInstance()Lcom/amazon/device/ads/Metrics;

    move-result-object v8

    .line 181
    invoke-static {}, Lcom/amazon/device/ads/ThreadUtils;->getThreadRunner()Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    move-result-object v9

    new-instance v10, Lcom/amazon/device/ads/WebRequestUserId;

    invoke-direct {v10}, Lcom/amazon/device/ads/WebRequestUserId;-><init>()V

    move-object v0, p0

    .line 173
    invoke-direct/range {v0 .. v10}, Lcom/amazon/device/ads/Configuration;-><init>(Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/PermissionChecker;Lcom/amazon/device/ads/WebRequest$WebRequestFactory;Lcom/amazon/device/ads/DebugProperties;Lcom/amazon/device/ads/Settings;Lcom/amazon/device/ads/MobileAdsInfoStore;Lcom/amazon/device/ads/SystemTime;Lcom/amazon/device/ads/Metrics;Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;Lcom/amazon/device/ads/WebRequestUserId;)V

    return-void
.end method

.method constructor <init>(Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/PermissionChecker;Lcom/amazon/device/ads/WebRequest$WebRequestFactory;Lcom/amazon/device/ads/DebugProperties;Lcom/amazon/device/ads/Settings;Lcom/amazon/device/ads/MobileAdsInfoStore;Lcom/amazon/device/ads/SystemTime;Lcom/amazon/device/ads/Metrics;Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;Lcom/amazon/device/ads/WebRequestUserId;)V
    .locals 4

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/amazon/device/ads/Configuration;->appDefinedMarketplace:Ljava/lang/String;

    const/4 v1, 0x0

    .line 49
    iput-boolean v1, p0, Lcom/amazon/device/ads/Configuration;->isAppDefinedMarketplaceSet:Z

    .line 50
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/amazon/device/ads/Configuration;->listeners:Ljava/util/List;

    .line 51
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/amazon/device/ads/Configuration;->isFetching:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 52
    iput-object v0, p0, Lcom/amazon/device/ads/Configuration;->lastTestModeValue:Ljava/lang/Boolean;

    .line 53
    iput-boolean v1, p0, Lcom/amazon/device/ads/Configuration;->isFirstParty:Z

    .line 54
    new-instance v0, Lcom/amazon/device/ads/PreferredMarketplaceRetriever$NullPreferredMarketplaceRetriever;

    invoke-direct {v0}, Lcom/amazon/device/ads/PreferredMarketplaceRetriever$NullPreferredMarketplaceRetriever;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/Configuration;->pfmRetriever:Lcom/amazon/device/ads/PreferredMarketplaceRetriever;

    .line 196
    sget-object v0, Lcom/amazon/device/ads/Configuration;->LOGTAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/device/ads/Configuration;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    .line 197
    iput-object p2, p0, Lcom/amazon/device/ads/Configuration;->permissionChecker:Lcom/amazon/device/ads/PermissionChecker;

    .line 198
    iput-object p3, p0, Lcom/amazon/device/ads/Configuration;->webRequestFactory:Lcom/amazon/device/ads/WebRequest$WebRequestFactory;

    .line 199
    iput-object p4, p0, Lcom/amazon/device/ads/Configuration;->debugProperties:Lcom/amazon/device/ads/DebugProperties;

    .line 200
    iput-object p5, p0, Lcom/amazon/device/ads/Configuration;->settings:Lcom/amazon/device/ads/Settings;

    .line 201
    iput-object p6, p0, Lcom/amazon/device/ads/Configuration;->infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    .line 202
    iput-object p7, p0, Lcom/amazon/device/ads/Configuration;->systemTime:Lcom/amazon/device/ads/SystemTime;

    .line 203
    iput-object p8, p0, Lcom/amazon/device/ads/Configuration;->metrics:Lcom/amazon/device/ads/Metrics;

    .line 204
    iput-object p9, p0, Lcom/amazon/device/ads/Configuration;->threadRunner:Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    .line 205
    iput-object p10, p0, Lcom/amazon/device/ads/Configuration;->webRequestUserId:Lcom/amazon/device/ads/WebRequestUserId;

    return-void
.end method

.method public static final getInstance()Lcom/amazon/device/ads/Configuration;
    .locals 1

    .line 214
    sget-object v0, Lcom/amazon/device/ads/Configuration;->instance:Lcom/amazon/device/ads/Configuration;

    return-object v0
.end method

.method private getPreferredMarketplace()Ljava/lang/String;
    .locals 2

    .line 744
    iget-object v0, p0, Lcom/amazon/device/ads/Configuration;->pfmRetriever:Lcom/amazon/device/ads/PreferredMarketplaceRetriever;

    invoke-static {}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getInstance()Lcom/amazon/device/ads/MobileAdsInfoStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/device/ads/PreferredMarketplaceRetriever;->retrievePreferredMarketplace(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private hasAppDefinedMarketplaceChanged()Z
    .locals 6

    .line 410
    iget-object v0, p0, Lcom/amazon/device/ads/Configuration;->settings:Lcom/amazon/device/ads/Settings;

    const-string v1, "config-appDefinedMarketplace"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 413
    iget-boolean v2, p0, Lcom/amazon/device/ads/Configuration;->isAppDefinedMarketplaceSet:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 415
    iput-boolean v4, p0, Lcom/amazon/device/ads/Configuration;->isAppDefinedMarketplaceSet:Z

    .line 417
    iget-object v2, p0, Lcom/amazon/device/ads/Configuration;->appDefinedMarketplace:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 419
    iget-object v0, p0, Lcom/amazon/device/ads/Configuration;->settings:Lcom/amazon/device/ads/Settings;

    const-wide/16 v4, 0x0

    const-string v2, "config-lastFetchTime"

    invoke-virtual {v0, v2, v4, v5}, Lcom/amazon/device/ads/Settings;->putLongWithNoFlush(Ljava/lang/String;J)V

    .line 420
    iget-object v0, p0, Lcom/amazon/device/ads/Configuration;->settings:Lcom/amazon/device/ads/Settings;

    iget-object v2, p0, Lcom/amazon/device/ads/Configuration;->appDefinedMarketplace:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/Settings;->putStringWithNoFlush(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    iget-object v0, p0, Lcom/amazon/device/ads/Configuration;->settings:Lcom/amazon/device/ads/Settings;

    invoke-virtual {v0}, Lcom/amazon/device/ads/Settings;->flush()V

    .line 424
    iget-object v0, p0, Lcom/amazon/device/ads/Configuration;->infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    invoke-virtual {v0}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getRegistrationInfo()Lcom/amazon/device/ads/RegistrationInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/RegistrationInfo;->requestNewSISDeviceIdentifier()V

    .line 425
    iget-object v0, p0, Lcom/amazon/device/ads/Configuration;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "New application-defined marketplace set. A new configuration will be retrieved."

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 428
    iget-object v0, p0, Lcom/amazon/device/ads/Configuration;->appDefinedMarketplace:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 430
    iget-object v0, p0, Lcom/amazon/device/ads/Configuration;->settings:Lcom/amazon/device/ads/Settings;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/Settings;->remove(Ljava/lang/String;)V

    .line 433
    iget-object v0, p0, Lcom/amazon/device/ads/Configuration;->infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    invoke-virtual {v0}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getRegistrationInfo()Lcom/amazon/device/ads/RegistrationInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/RegistrationInfo;->requestNewSISDeviceIdentifier()V

    .line 434
    iget-object v0, p0, Lcom/amazon/device/ads/Configuration;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "Application-defined marketplace removed. A new configuration will be retrieved."

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method private writeSettingFromConfigOption(Lcom/amazon/device/ads/Configuration$ConfigOption;Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 652
    invoke-virtual {p1}, Lcom/amazon/device/ads/Configuration$ConfigOption;->getDataType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 654
    invoke-virtual {p1}, Lcom/amazon/device/ads/Configuration$ConfigOption;->getResponseKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 655
    invoke-virtual {p1}, Lcom/amazon/device/ads/Configuration$ConfigOption;->getAllowEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Lcom/amazon/device/ads/StringUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 657
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The configuration value must not be empty or contain only white spaces."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 659
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/device/ads/Configuration;->settings:Lcom/amazon/device/ads/Settings;

    invoke-static {p1}, Lcom/amazon/device/ads/Configuration$ConfigOption;->access$000(Lcom/amazon/device/ads/Configuration$ConfigOption;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/amazon/device/ads/Settings;->putStringWithNoFlush(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 661
    :cond_2
    invoke-virtual {p1}, Lcom/amazon/device/ads/Configuration$ConfigOption;->getDataType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 663
    invoke-virtual {p1}, Lcom/amazon/device/ads/Configuration$ConfigOption;->getResponseKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    .line 664
    iget-object v0, p0, Lcom/amazon/device/ads/Configuration;->settings:Lcom/amazon/device/ads/Settings;

    invoke-static {p1}, Lcom/amazon/device/ads/Configuration$ConfigOption;->access$000(Lcom/amazon/device/ads/Configuration$ConfigOption;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/amazon/device/ads/Settings;->putBooleanWithNoFlush(Ljava/lang/String;Z)V

    goto :goto_1

    .line 666
    :cond_3
    invoke-virtual {p1}, Lcom/amazon/device/ads/Configuration$ConfigOption;->getDataType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 668
    invoke-virtual {p1}, Lcom/amazon/device/ads/Configuration$ConfigOption;->getResponseKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 669
    iget-object v0, p0, Lcom/amazon/device/ads/Configuration;->settings:Lcom/amazon/device/ads/Settings;

    invoke-static {p1}, Lcom/amazon/device/ads/Configuration$ConfigOption;->access$000(Lcom/amazon/device/ads/Configuration$ConfigOption;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/amazon/device/ads/Settings;->putIntWithNoFlush(Ljava/lang/String;I)V

    goto :goto_1

    .line 671
    :cond_4
    invoke-virtual {p1}, Lcom/amazon/device/ads/Configuration$ConfigOption;->getDataType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 673
    invoke-virtual {p1}, Lcom/amazon/device/ads/Configuration$ConfigOption;->getResponseKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 674
    iget-object p2, p0, Lcom/amazon/device/ads/Configuration;->settings:Lcom/amazon/device/ads/Settings;

    invoke-static {p1}, Lcom/amazon/device/ads/Configuration$ConfigOption;->access$000(Lcom/amazon/device/ads/Configuration$ConfigOption;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, v0, v1}, Lcom/amazon/device/ads/Settings;->putLongWithNoFlush(Ljava/lang/String;J)V

    goto :goto_1

    .line 676
    :cond_5
    invoke-virtual {p1}, Lcom/amazon/device/ads/Configuration$ConfigOption;->getDataType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 678
    invoke-virtual {p1}, Lcom/amazon/device/ads/Configuration$ConfigOption;->getResponseKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    .line 679
    iget-object v0, p0, Lcom/amazon/device/ads/Configuration;->settings:Lcom/amazon/device/ads/Settings;

    invoke-static {p1}, Lcom/amazon/device/ads/Configuration$ConfigOption;->access$000(Lcom/amazon/device/ads/Configuration$ConfigOption;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/amazon/device/ads/Settings;->putJSONObjectWithNoFlush(Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_1
    return-void

    .line 685
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Undefined configuration option type."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected beginFetch()V
    .locals 4

    .line 493
    iget-object v0, p0, Lcom/amazon/device/ads/Configuration;->threadRunner:Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    new-instance v1, Lcom/amazon/device/ads/Configuration$1;

    invoke-direct {v1, p0}, Lcom/amazon/device/ads/Configuration$1;-><init>(Lcom/amazon/device/ads/Configuration;)V

    sget-object v2, Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;->SCHEDULE:Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;

    sget-object v3, Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;->BACKGROUND_THREAD:Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;->execute(Ljava/lang/Runnable;Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;)V

    return-void
.end method

.method protected createWebRequest()Lcom/amazon/device/ads/WebRequest;
    .locals 5

    .line 695
    iget-object v0, p0, Lcom/amazon/device/ads/Configuration;->webRequestFactory:Lcom/amazon/device/ads/WebRequest$WebRequestFactory;

    invoke-virtual {v0}, Lcom/amazon/device/ads/WebRequest$WebRequestFactory;->createJSONGetWebRequest()Lcom/amazon/device/ads/WebRequest;

    move-result-object v0

    .line 696
    sget-object v1, Lcom/amazon/device/ads/Configuration;->LOGTAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/WebRequest;->setExternalLogTag(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 697
    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/WebRequest;->enableLog(Z)V

    .line 698
    iget-object v2, p0, Lcom/amazon/device/ads/Configuration;->debugProperties:Lcom/amazon/device/ads/DebugProperties;

    const-string v3, "debug.aaxConfigHostname"

    const-string/jumbo v4, "mads.amazon-adsystem.com"

    invoke-virtual {v2, v3, v4}, Lcom/amazon/device/ads/DebugProperties;->getDebugPropertyAsString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amazon/device/ads/WebRequest;->setHost(Ljava/lang/String;)V

    const-string v2, "/msdk/getConfig"

    .line 699
    invoke-virtual {v0, v2}, Lcom/amazon/device/ads/WebRequest;->setPath(Ljava/lang/String;)V

    .line 700
    iget-object v2, p0, Lcom/amazon/device/ads/Configuration;->metrics:Lcom/amazon/device/ads/Metrics;

    invoke-virtual {v2}, Lcom/amazon/device/ads/Metrics;->getMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amazon/device/ads/WebRequest;->setMetricsCollector(Lcom/amazon/device/ads/MetricsCollector;)V

    .line 701
    sget-object v2, Lcom/amazon/device/ads/Metrics$MetricType;->AAX_CONFIG_DOWNLOAD_LATENCY:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v0, v2}, Lcom/amazon/device/ads/WebRequest;->setServiceCallLatencyMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V

    .line 703
    iget-object v2, p0, Lcom/amazon/device/ads/Configuration;->debugProperties:Lcom/amazon/device/ads/DebugProperties;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v3, "debug.aaxConfigUseSecure"

    invoke-virtual {v2, v3, v1}, Lcom/amazon/device/ads/DebugProperties;->getDebugPropertyAsBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/WebRequest;->setUseSecure(Z)V

    .line 705
    iget-object v1, p0, Lcom/amazon/device/ads/Configuration;->infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    invoke-virtual {v1}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getRegistrationInfo()Lcom/amazon/device/ads/RegistrationInfo;

    move-result-object v1

    .line 706
    iget-object v2, p0, Lcom/amazon/device/ads/Configuration;->infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    invoke-virtual {v2}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getDeviceInfo()Lcom/amazon/device/ads/DeviceInfo;

    move-result-object v2

    .line 707
    invoke-virtual {v1}, Lcom/amazon/device/ads/RegistrationInfo;->getAppKey()Ljava/lang/String;

    move-result-object v1

    const-string v3, "appId"

    invoke-virtual {v0, v3, v1}, Lcom/amazon/device/ads/WebRequest;->putUnencodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 708
    invoke-virtual {v2}, Lcom/amazon/device/ads/DeviceInfo;->getDInfoProperty()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dinfo"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/device/ads/WebRequest;->putUnencodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 709
    invoke-static {}, Lcom/amazon/device/ads/Version;->getSDKVersion()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "sdkVer"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/device/ads/WebRequest;->putUnencodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 710
    iget-boolean v1, p0, Lcom/amazon/device/ads/Configuration;->isFirstParty:Z

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "fp"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/device/ads/WebRequest;->putUnencodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 711
    iget-object v1, p0, Lcom/amazon/device/ads/Configuration;->settings:Lcom/amazon/device/ads/Settings;

    const/4 v2, 0x0

    const-string v3, "config-appDefinedMarketplace"

    invoke-virtual {v1, v3, v2}, Lcom/amazon/device/ads/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "mkt"

    invoke-virtual {v0, v3, v1}, Lcom/amazon/device/ads/WebRequest;->putUnencodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 712
    invoke-direct {p0}, Lcom/amazon/device/ads/Configuration;->getPreferredMarketplace()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "pfm"

    invoke-virtual {v0, v3, v1}, Lcom/amazon/device/ads/WebRequest;->putUnencodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 713
    iget-object v1, p0, Lcom/amazon/device/ads/Configuration;->settings:Lcom/amazon/device/ads/Settings;

    const-string/jumbo v3, "testingEnabled"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/amazon/device/ads/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 714
    invoke-virtual {p0, v1}, Lcom/amazon/device/ads/Configuration;->setLastTestModeValue(Z)V

    if-eqz v1, :cond_0

    const-string/jumbo v1, "testMode"

    const-string/jumbo v3, "true"

    .line 717
    invoke-virtual {v0, v1, v3}, Lcom/amazon/device/ads/WebRequest;->putUnencodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 719
    :cond_0
    iget-object v1, p0, Lcom/amazon/device/ads/Configuration;->debugProperties:Lcom/amazon/device/ads/DebugProperties;

    const-string v3, "debug.aaxConfigParams"

    invoke-virtual {v1, v3, v2}, Lcom/amazon/device/ads/DebugProperties;->getDebugPropertyAsString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/WebRequest;->setAdditionalQueryParamsString(Ljava/lang/String;)V

    .line 720
    iget-object v1, p0, Lcom/amazon/device/ads/Configuration;->webRequestUserId:Lcom/amazon/device/ads/WebRequestUserId;

    invoke-virtual {v1, v0}, Lcom/amazon/device/ads/WebRequestUserId;->populateWebRequestUserId(Lcom/amazon/device/ads/WebRequest;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v2

    :cond_1
    return-object v0
.end method

.method protected fetchConfigurationOnBackgroundThread()V
    .locals 9

    const-string/jumbo v0, "ttl"

    .line 554
    iget-object v1, p0, Lcom/amazon/device/ads/Configuration;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v2, "In configuration fetcher background thread."

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 555
    iget-object v1, p0, Lcom/amazon/device/ads/Configuration;->permissionChecker:Lcom/amazon/device/ads/PermissionChecker;

    iget-object v2, p0, Lcom/amazon/device/ads/Configuration;->infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    .line 556
    invoke-virtual {v2}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 555
    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/PermissionChecker;->hasInternetPermission(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 559
    iget-object v0, p0, Lcom/amazon/device/ads/Configuration;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "Network task cannot commence because the INTERNET permission is missing from the app\'s manifest."

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    .line 560
    invoke-virtual {p0}, Lcom/amazon/device/ads/Configuration;->onFetchFailure()V

    return-void

    .line 564
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/device/ads/Configuration;->createWebRequest()Lcom/amazon/device/ads/WebRequest;

    move-result-object v1

    if-nez v1, :cond_1

    .line 567
    invoke-virtual {p0}, Lcom/amazon/device/ads/Configuration;->onFetchFailure()V

    return-void

    .line 574
    :cond_1
    :try_start_0
    invoke-virtual {v1}, Lcom/amazon/device/ads/WebRequest;->makeCall()Lcom/amazon/device/ads/WebRequest$WebResponse;

    move-result-object v1
    :try_end_0
    .catch Lcom/amazon/device/ads/WebRequest$WebRequestException; {:try_start_0 .. :try_end_0} :catch_2

    .line 582
    invoke-virtual {v1}, Lcom/amazon/device/ads/WebRequest$WebResponse;->getResponseReader()Lcom/amazon/device/ads/ResponseReader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/device/ads/ResponseReader;->readAsJSON()Lorg/json/JSONObject;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 594
    :try_start_1
    invoke-virtual {p0}, Lcom/amazon/device/ads/Configuration;->getConfigOptions()[Lcom/amazon/device/ads/Configuration$ConfigOption;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_4

    aget-object v7, v4, v6

    .line 596
    invoke-virtual {v7}, Lcom/amazon/device/ads/Configuration$ConfigOption;->getResponseKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 598
    invoke-virtual {v7}, Lcom/amazon/device/ads/Configuration$ConfigOption;->getAllowEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 604
    iget-object v8, p0, Lcom/amazon/device/ads/Configuration;->settings:Lcom/amazon/device/ads/Settings;

    invoke-static {v7}, Lcom/amazon/device/ads/Configuration$ConfigOption;->access$000(Lcom/amazon/device/ads/Configuration$ConfigOption;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Lcom/amazon/device/ads/Settings;->removeWithNoFlush(Ljava/lang/String;)V

    goto :goto_1

    .line 600
    :cond_2
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The configuration value for "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/amazon/device/ads/Configuration$ConfigOption;->getResponseKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " must be present and not null."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 608
    :cond_3
    invoke-direct {p0, v7, v1}, Lcom/amazon/device/ads/Configuration;->writeSettingFromConfigOption(Lcom/amazon/device/ads/Configuration$ConfigOption;Lorg/json/JSONObject;)V

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 611
    :cond_4
    sget-object v4, Lcom/amazon/device/ads/Configuration$ConfigOption;->DEBUG_PROPERTIES:Lcom/amazon/device/ads/Configuration$ConfigOption;

    invoke-virtual {v4}, Lcom/amazon/device/ads/Configuration$ConfigOption;->getResponseKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 613
    iget-object v4, p0, Lcom/amazon/device/ads/Configuration;->debugProperties:Lcom/amazon/device/ads/DebugProperties;

    sget-object v5, Lcom/amazon/device/ads/Configuration$ConfigOption;->DEBUG_PROPERTIES:Lcom/amazon/device/ads/Configuration$ConfigOption;

    invoke-virtual {v5}, Lcom/amazon/device/ads/Configuration$ConfigOption;->getResponseKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amazon/device/ads/DebugProperties;->overwriteDebugProperties(Lorg/json/JSONObject;)V

    goto :goto_2

    .line 617
    :cond_5
    iget-object v4, p0, Lcom/amazon/device/ads/Configuration;->settings:Lcom/amazon/device/ads/Settings;

    sget-object v5, Lcom/amazon/device/ads/Configuration$ConfigOption;->DEBUG_PROPERTIES:Lcom/amazon/device/ads/Configuration$ConfigOption;

    invoke-static {v5}, Lcom/amazon/device/ads/Configuration$ConfigOption;->access$000(Lcom/amazon/device/ads/Configuration$ConfigOption;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amazon/device/ads/Settings;->removeWithNoFlush(Ljava/lang/String;)V

    .line 618
    iget-object v4, p0, Lcom/amazon/device/ads/Configuration;->debugProperties:Lcom/amazon/device/ads/DebugProperties;

    invoke-virtual {v4}, Lcom/amazon/device/ads/DebugProperties;->clearDebugProperties()V

    .line 621
    :goto_2
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 625
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/amazon/device/ads/NumberUtils;->convertToMillisecondsFromSeconds(J)J

    move-result-wide v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-wide/32 v2, 0xa4cb800

    cmp-long v4, v0, v2

    if-lez v4, :cond_6

    move-wide v0, v2

    .line 641
    :cond_6
    iget-object v2, p0, Lcom/amazon/device/ads/Configuration;->settings:Lcom/amazon/device/ads/Settings;

    const-string v3, "config-ttl"

    invoke-virtual {v2, v3, v0, v1}, Lcom/amazon/device/ads/Settings;->putLongWithNoFlush(Ljava/lang/String;J)V

    .line 642
    iget-object v0, p0, Lcom/amazon/device/ads/Configuration;->settings:Lcom/amazon/device/ads/Settings;

    iget-object v1, p0, Lcom/amazon/device/ads/Configuration;->systemTime:Lcom/amazon/device/ads/SystemTime;

    invoke-virtual {v1}, Lcom/amazon/device/ads/SystemTime;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "config-lastFetchTime"

    invoke-virtual {v0, v3, v1, v2}, Lcom/amazon/device/ads/Settings;->putLongWithNoFlush(Ljava/lang/String;J)V

    .line 643
    iget-object v0, p0, Lcom/amazon/device/ads/Configuration;->settings:Lcom/amazon/device/ads/Settings;

    const/4 v1, 0x4

    const-string v2, "configVersion"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/device/ads/Settings;->putIntWithNoFlush(Ljava/lang/String;I)V

    .line 644
    iget-object v0, p0, Lcom/amazon/device/ads/Configuration;->settings:Lcom/amazon/device/ads/Settings;

    invoke-virtual {v0}, Lcom/amazon/device/ads/Settings;->flush()V

    .line 645
    iget-object v0, p0, Lcom/amazon/device/ads/Configuration;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "Configuration fetched and saved."

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 646
    invoke-virtual {p0}, Lcom/amazon/device/ads/Configuration;->onFetchSuccess()V

    return-void

    .line 623
    :cond_7
    :try_start_2
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "The configuration value must be present and not null."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 635
    iget-object v1, p0, Lcom/amazon/device/ads/Configuration;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    const-string v0, "Unexpected error during parsing: %s"

    invoke-virtual {v1, v0, v3}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 636
    invoke-virtual {p0}, Lcom/amazon/device/ads/Configuration;->onFetchFailure()V

    return-void

    :catch_1
    move-exception v0

    .line 629
    iget-object v1, p0, Lcom/amazon/device/ads/Configuration;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    const-string v0, "Unable to parse JSON response: %s"

    invoke-virtual {v1, v0, v3}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 630
    invoke-virtual {p0}, Lcom/amazon/device/ads/Configuration;->onFetchFailure()V

    return-void

    .line 578
    :catch_2
    invoke-virtual {p0}, Lcom/amazon/device/ads/Configuration;->onFetchFailure()V

    return-void
.end method

.method protected declared-synchronized getAndClearListeners()[Lcom/amazon/device/ads/Configuration$ConfigurationListener;
    .locals 2

    monitor-enter p0

    .line 536
    :try_start_0
    iget-object v0, p0, Lcom/amazon/device/ads/Configuration;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/amazon/device/ads/Configuration$ConfigurationListener;

    .line 537
    iget-object v1, p0, Lcom/amazon/device/ads/Configuration;->listeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/device/ads/Configuration$ConfigurationListener;

    .line 538
    iget-object v1, p0, Lcom/amazon/device/ads/Configuration;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 539
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getBoolean(Lcom/amazon/device/ads/Configuration$ConfigOption;)Z
    .locals 1

    const/4 v0, 0x0

    .line 281
    invoke-virtual {p0, p1, v0}, Lcom/amazon/device/ads/Configuration;->getBooleanWithDefault(Lcom/amazon/device/ads/Configuration$ConfigOption;Z)Z

    move-result p1

    return p1
.end method

.method public getBooleanWithDefault(Lcom/amazon/device/ads/Configuration$ConfigOption;Z)Z
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/amazon/device/ads/Configuration;->settings:Lcom/amazon/device/ads/Settings;

    invoke-static {p1}, Lcom/amazon/device/ads/Configuration$ConfigOption;->access$000(Lcom/amazon/device/ads/Configuration$ConfigOption;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/amazon/device/ads/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method protected getConfigOptions()[Lcom/amazon/device/ads/Configuration$ConfigOption;
    .locals 1

    .line 544
    sget-object v0, Lcom/amazon/device/ads/Configuration$ConfigOption;->configOptions:[Lcom/amazon/device/ads/Configuration$ConfigOption;

    return-object v0
.end method

.method public getInt(Lcom/amazon/device/ads/Configuration$ConfigOption;)I
    .locals 1

    const/4 v0, 0x0

    .line 300
    invoke-virtual {p0, p1, v0}, Lcom/amazon/device/ads/Configuration;->getIntWithDefault(Lcom/amazon/device/ads/Configuration$ConfigOption;I)I

    move-result p1

    return p1
.end method

.method public getIntWithDefault(Lcom/amazon/device/ads/Configuration$ConfigOption;I)I
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/amazon/device/ads/Configuration;->settings:Lcom/amazon/device/ads/Settings;

    invoke-static {p1}, Lcom/amazon/device/ads/Configuration$ConfigOption;->access$000(Lcom/amazon/device/ads/Configuration$ConfigOption;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/amazon/device/ads/Settings;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getLong(Lcom/amazon/device/ads/Configuration$ConfigOption;)J
    .locals 2

    const-wide/16 v0, 0x0

    .line 319
    invoke-virtual {p0, p1, v0, v1}, Lcom/amazon/device/ads/Configuration;->getLongWithDefault(Lcom/amazon/device/ads/Configuration$ConfigOption;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLongWithDefault(Lcom/amazon/device/ads/Configuration$ConfigOption;J)J
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/amazon/device/ads/Configuration;->settings:Lcom/amazon/device/ads/Settings;

    invoke-static {p1}, Lcom/amazon/device/ads/Configuration$ConfigOption;->access$000(Lcom/amazon/device/ads/Configuration$ConfigOption;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/device/ads/Settings;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public getString(Lcom/amazon/device/ads/Configuration$ConfigOption;)Ljava/lang/String;
    .locals 2

    .line 260
    iget-object v0, p0, Lcom/amazon/device/ads/Configuration;->settings:Lcom/amazon/device/ads/Settings;

    invoke-static {p1}, Lcom/amazon/device/ads/Configuration$ConfigOption;->access$000(Lcom/amazon/device/ads/Configuration$ConfigOption;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/amazon/device/ads/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getStringWithDefault(Lcom/amazon/device/ads/Configuration$ConfigOption;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/amazon/device/ads/Configuration;->settings:Lcom/amazon/device/ads/Settings;

    invoke-static {p1}, Lcom/amazon/device/ads/Configuration$ConfigOption;->access$000(Lcom/amazon/device/ads/Configuration$ConfigOption;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/amazon/device/ads/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public hasValue(Lcom/amazon/device/ads/Configuration$ConfigOption;)Z
    .locals 0

    .line 250
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/Configuration;->getString(Lcom/amazon/device/ads/Configuration$ConfigOption;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/device/ads/StringUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method protected isFetching()Z
    .locals 1

    .line 443
    iget-object v0, p0, Lcom/amazon/device/ads/Configuration;->isFetching:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method protected declared-synchronized onFetchFailure()V
    .locals 4

    monitor-enter p0

    .line 522
    :try_start_0
    iget-object v0, p0, Lcom/amazon/device/ads/Configuration;->metrics:Lcom/amazon/device/ads/Metrics;

    invoke-virtual {v0}, Lcom/amazon/device/ads/Metrics;->getMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v0

    sget-object v1, Lcom/amazon/device/ads/Metrics$MetricType;->AAX_CONFIG_DOWNLOAD_FAILED:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MetricsCollector;->incrementMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V

    const/4 v0, 0x0

    .line 523
    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/Configuration;->setIsFetching(Z)V

    .line 524
    invoke-virtual {p0}, Lcom/amazon/device/ads/Configuration;->getAndClearListeners()[Lcom/amazon/device/ads/Configuration$ConfigurationListener;

    move-result-object v1

    .line 525
    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 527
    invoke-interface {v3}, Lcom/amazon/device/ads/Configuration$ConfigurationListener;->onConfigurationFailure()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 529
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized onFetchSuccess()V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    .line 510
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/Configuration;->setIsFetching(Z)V

    .line 511
    invoke-virtual {p0}, Lcom/amazon/device/ads/Configuration;->getAndClearListeners()[Lcom/amazon/device/ads/Configuration$ConfigurationListener;

    move-result-object v1

    .line 512
    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 514
    invoke-interface {v3}, Lcom/amazon/device/ads/Configuration$ConfigurationListener;->onConfigurationReady()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 516
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized queueConfigurationListener(Lcom/amazon/device/ads/Configuration$ConfigurationListener;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 458
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/amazon/device/ads/Configuration;->queueConfigurationListener(Lcom/amazon/device/ads/Configuration$ConfigurationListener;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 459
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized queueConfigurationListener(Lcom/amazon/device/ads/Configuration$ConfigurationListener;Z)V
    .locals 1

    monitor-enter p0

    .line 469
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/device/ads/Configuration;->isFetching()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 472
    iget-object p2, p0, Lcom/amazon/device/ads/Configuration;->listeners:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 474
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/device/ads/Configuration;->shouldFetch()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 477
    iget-object v0, p0, Lcom/amazon/device/ads/Configuration;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_2

    .line 481
    iget-object p1, p0, Lcom/amazon/device/ads/Configuration;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string p2, "Starting configuration fetching..."

    invoke-virtual {p1, p2}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 482
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/Configuration;->setIsFetching(Z)V

    .line 483
    invoke-virtual {p0}, Lcom/amazon/device/ads/Configuration;->beginFetch()V

    goto :goto_0

    .line 488
    :cond_1
    invoke-interface {p1}, Lcom/amazon/device/ads/Configuration$ConfigurationListener;->onConfigurationReady()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 490
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected setIsFetching(Z)V
    .locals 1

    .line 447
    iget-object v0, p0, Lcom/amazon/device/ads/Configuration;->isFetching:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public setIsFirstParty(Z)V
    .locals 0

    .line 234
    iput-boolean p1, p0, Lcom/amazon/device/ads/Configuration;->isFirstParty:Z

    return-void
.end method

.method protected setLastTestModeValue(Z)V
    .locals 0

    .line 549
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/device/ads/Configuration;->lastTestModeValue:Ljava/lang/Boolean;

    return-void
.end method

.method public setPreferredMarketplaceRetriever(Lcom/amazon/device/ads/PreferredMarketplaceRetriever;)V
    .locals 0

    .line 732
    iput-object p1, p0, Lcom/amazon/device/ads/Configuration;->pfmRetriever:Lcom/amazon/device/ads/PreferredMarketplaceRetriever;

    return-void
.end method

.method protected shouldFetch()Z
    .locals 12

    .line 361
    invoke-direct {p0}, Lcom/amazon/device/ads/Configuration;->hasAppDefinedMarketplaceChanged()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/Configuration;->settings:Lcom/amazon/device/ads/Settings;

    const/4 v2, 0x0

    const-string v3, "configVersion"

    invoke-virtual {v0, v3, v2}, Lcom/amazon/device/ads/Settings;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    return v1

    .line 371
    :cond_1
    iget-object v0, p0, Lcom/amazon/device/ads/Configuration;->settings:Lcom/amazon/device/ads/Settings;

    const-wide/16 v3, 0x0

    const-string v5, "config-lastFetchTime"

    invoke-virtual {v0, v5, v3, v4}, Lcom/amazon/device/ads/Settings;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-nez v0, :cond_2

    .line 375
    iget-object v0, p0, Lcom/amazon/device/ads/Configuration;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v2, "No configuration found. A new configuration will be retrieved."

    invoke-virtual {v0, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    return v1

    .line 379
    :cond_2
    iget-object v0, p0, Lcom/amazon/device/ads/Configuration;->systemTime:Lcom/amazon/device/ads/SystemTime;

    invoke-virtual {v0}, Lcom/amazon/device/ads/SystemTime;->currentTimeMillis()J

    move-result-wide v7

    .line 380
    iget-object v0, p0, Lcom/amazon/device/ads/Configuration;->settings:Lcom/amazon/device/ads/Settings;

    const-wide/32 v9, 0xa4cb800

    const-string v11, "config-ttl"

    invoke-virtual {v0, v11, v9, v10}, Lcom/amazon/device/ads/Settings;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    sub-long/2addr v7, v5

    cmp-long v0, v7, v9

    if-lez v0, :cond_3

    .line 383
    iget-object v0, p0, Lcom/amazon/device/ads/Configuration;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v2, "The configuration has expired. A new configuration will be retrieved."

    invoke-virtual {v0, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    return v1

    .line 387
    :cond_3
    iget-object v0, p0, Lcom/amazon/device/ads/Configuration;->settings:Lcom/amazon/device/ads/Settings;

    const-string v7, "amzn-ad-iu-last-checkin"

    invoke-virtual {v0, v7, v3, v4}, Lcom/amazon/device/ads/Settings;->getWrittenLong(Ljava/lang/String;J)J

    move-result-wide v7

    sub-long/2addr v7, v5

    cmp-long v0, v7, v3

    if-lez v0, :cond_4

    .line 390
    iget-object v0, p0, Lcom/amazon/device/ads/Configuration;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v2, "A new user has been identified. A new configuration will be retrieved."

    invoke-virtual {v0, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    return v1

    .line 394
    :cond_4
    iget-object v0, p0, Lcom/amazon/device/ads/Configuration;->lastTestModeValue:Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    .line 395
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v3, p0, Lcom/amazon/device/ads/Configuration;->settings:Lcom/amazon/device/ads/Settings;

    const-string/jumbo v4, "testingEnabled"

    invoke-virtual {v3, v4, v2}, Lcom/amazon/device/ads/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eq v0, v3, :cond_5

    .line 397
    iget-object v0, p0, Lcom/amazon/device/ads/Configuration;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v2, "The testing mode has changed. A new configuration will be retrieved."

    invoke-virtual {v0, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    return v1

    .line 401
    :cond_5
    iget-object v0, p0, Lcom/amazon/device/ads/Configuration;->debugProperties:Lcom/amazon/device/ads/DebugProperties;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "debug.shouldFetchConfig"

    invoke-virtual {v0, v4, v3}, Lcom/amazon/device/ads/DebugProperties;->getDebugPropertyAsBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    return v1

    :cond_6
    return v2
.end method
