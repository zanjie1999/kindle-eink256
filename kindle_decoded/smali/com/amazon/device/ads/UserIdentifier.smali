.class abstract Lcom/amazon/device/ads/UserIdentifier;
.super Lcom/amazon/device/ads/StartUpWaiter;
.source "UserIdentifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/ads/UserIdentifier$IdentifyUserListener;,
        Lcom/amazon/device/ads/UserIdentifier$IdentifyUserStatus;
    }
.end annotation


# static fields
.field private static final DEFAULT_MADS_ENDPOINT:Ljava/lang/String; = "mads.amazon.com"

.field private static final serviceCallLock:Ljava/util/concurrent/locks/ReentrantLock;


# instance fields
.field private final advertisingIdentifier:Lcom/amazon/device/ads/AdvertisingIdentifier;

.field private advertisingIdentifierInfo:Lcom/amazon/device/ads/AdvertisingIdentifier$Info;

.field private allowEmptyIdfa:Z

.field private final configuration:Lcom/amazon/device/ads/Configuration;

.field private final debugProperties:Lcom/amazon/device/ads/DebugProperties;

.field private infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

.field private isTest:Z

.field private final listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/amazon/device/ads/UserIdentifier$IdentifyUserListener;",
            ">;"
        }
    .end annotation
.end field

.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;

.field private final logtag:Ljava/lang/String;

.field private final path:Ljava/lang/String;

.field protected final settings:Lcom/amazon/device/ads/Settings;

.field protected final systemTime:Lcom/amazon/device/ads/SystemTime;

.field private final trustedPackageManager:Lcom/amazon/device/ads/TrustedPackageManager;

.field private final webRequestFactory:Lcom/amazon/device/ads/WebRequest$WebRequestFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/amazon/device/ads/UserIdentifier;->serviceCallLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method constructor <init>(Lcom/amazon/device/ads/AdvertisingIdentifier;Lcom/amazon/device/ads/Configuration;Lcom/amazon/device/ads/Settings;Lcom/amazon/device/ads/TrustedPackageManager;Lcom/amazon/device/ads/SystemTime;Lcom/amazon/device/ads/DebugProperties;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/device/ads/WebRequest$WebRequestFactory;Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V
    .locals 1

    .line 78
    invoke-direct {p0, p3, p2}, Lcom/amazon/device/ads/StartUpWaiter;-><init>(Lcom/amazon/device/ads/Settings;Lcom/amazon/device/ads/Configuration;)V

    const/4 v0, 0x1

    .line 57
    iput-boolean v0, p0, Lcom/amazon/device/ads/UserIdentifier;->allowEmptyIdfa:Z

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lcom/amazon/device/ads/UserIdentifier;->isTest:Z

    .line 79
    iput-object p1, p0, Lcom/amazon/device/ads/UserIdentifier;->advertisingIdentifier:Lcom/amazon/device/ads/AdvertisingIdentifier;

    .line 80
    iput-object p2, p0, Lcom/amazon/device/ads/UserIdentifier;->configuration:Lcom/amazon/device/ads/Configuration;

    .line 81
    iput-object p3, p0, Lcom/amazon/device/ads/UserIdentifier;->settings:Lcom/amazon/device/ads/Settings;

    .line 82
    iput-object p4, p0, Lcom/amazon/device/ads/UserIdentifier;->trustedPackageManager:Lcom/amazon/device/ads/TrustedPackageManager;

    .line 83
    iput-object p5, p0, Lcom/amazon/device/ads/UserIdentifier;->systemTime:Lcom/amazon/device/ads/SystemTime;

    .line 84
    iput-object p6, p0, Lcom/amazon/device/ads/UserIdentifier;->debugProperties:Lcom/amazon/device/ads/DebugProperties;

    .line 85
    iput-object p7, p0, Lcom/amazon/device/ads/UserIdentifier;->logtag:Ljava/lang/String;

    .line 86
    iput-object p8, p0, Lcom/amazon/device/ads/UserIdentifier;->path:Ljava/lang/String;

    .line 87
    iput-object p9, p0, Lcom/amazon/device/ads/UserIdentifier;->webRequestFactory:Lcom/amazon/device/ads/WebRequest$WebRequestFactory;

    .line 88
    invoke-virtual {p10, p7}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/device/ads/UserIdentifier;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    .line 89
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/device/ads/UserIdentifier;->listeners:Ljava/util/ArrayList;

    .line 91
    iget-object p1, p0, Lcom/amazon/device/ads/UserIdentifier;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Mockito"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazon/device/ads/UserIdentifier;->isTest:Z

    return-void
.end method

.method private createWebRequest(Lorg/json/JSONObject;)Lcom/amazon/device/ads/WebRequest;
    .locals 4

    .line 144
    invoke-virtual {p0}, Lcom/amazon/device/ads/UserIdentifier;->initializeWebRequest()Lcom/amazon/device/ads/WebRequest;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 149
    :cond_0
    iget-object v1, p0, Lcom/amazon/device/ads/UserIdentifier;->logtag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/WebRequest;->setExternalLogTag(Ljava/lang/String;)V

    .line 150
    invoke-virtual {v0}, Lcom/amazon/device/ads/WebRequest;->convertToJSONPostRequest()V

    const/4 v1, 0x1

    .line 152
    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/WebRequest;->enableLog(Z)V

    .line 154
    iget-object v1, p0, Lcom/amazon/device/ads/UserIdentifier;->configuration:Lcom/amazon/device/ads/Configuration;

    sget-object v2, Lcom/amazon/device/ads/Configuration$ConfigOption;->WHITELISTED_CUSTOMER:Lcom/amazon/device/ads/Configuration$ConfigOption;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/amazon/device/ads/Configuration;->getBooleanWithDefault(Lcom/amazon/device/ads/Configuration$ConfigOption;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/WebRequest;->enableLogSessionID(Z)V

    .line 155
    iget-object v1, p0, Lcom/amazon/device/ads/UserIdentifier;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/WebRequest;->setPath(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0, v0, p1}, Lcom/amazon/device/ads/UserIdentifier;->setParametersAndHost(Lcom/amazon/device/ads/WebRequest;Lorg/json/JSONObject;)V

    return-object v0
.end method


# virtual methods
.method public addIdentifyUserListener(Lcom/amazon/device/ads/UserIdentifier$IdentifyUserListener;)V
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/amazon/device/ads/UserIdentifier;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected checkTimeThrottling(Ljava/lang/String;Lcom/amazon/device/ads/Configuration$ConfigOption;J)Z
    .locals 9

    .line 342
    iget-object v0, p0, Lcom/amazon/device/ads/UserIdentifier;->systemTime:Lcom/amazon/device/ads/SystemTime;

    invoke-virtual {v0}, Lcom/amazon/device/ads/SystemTime;->currentTimeMillis()J

    move-result-wide v0

    .line 343
    iget-object v2, p0, Lcom/amazon/device/ads/UserIdentifier;->settings:Lcom/amazon/device/ads/Settings;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, p1, v3, v4}, Lcom/amazon/device/ads/Settings;->getWrittenLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 344
    iget-object p1, p0, Lcom/amazon/device/ads/UserIdentifier;->configuration:Lcom/amazon/device/ads/Configuration;

    invoke-virtual {p1, p2}, Lcom/amazon/device/ads/Configuration;->getLong(Lcom/amazon/device/ads/Configuration$ConfigOption;)J

    move-result-wide v7

    cmp-long p1, v7, v3

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/amazon/device/ads/UserIdentifier;->configuration:Lcom/amazon/device/ads/Configuration;

    invoke-virtual {p1, p2}, Lcom/amazon/device/ads/Configuration;->getLong(Lcom/amazon/device/ads/Configuration$ConfigOption;)J

    move-result-wide p3

    :cond_0
    add-long/2addr v5, p3

    cmp-long p1, v0, v5

    if-lez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected final createParameters()Lorg/json/JSONObject;
    .locals 7

    .line 247
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 248
    iget-object v1, p0, Lcom/amazon/device/ads/UserIdentifier;->infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    invoke-virtual {v1}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getRegistrationInfo()Lcom/amazon/device/ads/RegistrationInfo;

    move-result-object v1

    .line 249
    iget-object v2, p0, Lcom/amazon/device/ads/UserIdentifier;->infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    invoke-virtual {v2}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getDeviceInfo()Lcom/amazon/device/ads/DeviceInfo;

    move-result-object v2

    .line 250
    iget-object v3, p0, Lcom/amazon/device/ads/UserIdentifier;->infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    invoke-virtual {v3}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getAppInfo()Lcom/amazon/device/ads/AppInfo;

    move-result-object v3

    const-string v4, "dt"

    const-string v5, "android"

    .line 252
    invoke-static {v0, v4, v5}, Lcom/amazon/device/ads/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    invoke-virtual {v1}, Lcom/amazon/device/ads/RegistrationInfo;->getAppName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "app"

    invoke-static {v0, v5, v4}, Lcom/amazon/device/ads/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    iget-object v4, p0, Lcom/amazon/device/ads/UserIdentifier;->configuration:Lcom/amazon/device/ads/Configuration;

    sget-object v5, Lcom/amazon/device/ads/Configuration$ConfigOption;->SIS_DOMAIN:Lcom/amazon/device/ads/Configuration$ConfigOption;

    invoke-virtual {v4, v5}, Lcom/amazon/device/ads/Configuration;->getString(Lcom/amazon/device/ads/Configuration$ConfigOption;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "aud"

    invoke-static {v0, v5, v4}, Lcom/amazon/device/ads/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    invoke-virtual {v1}, Lcom/amazon/device/ads/RegistrationInfo;->getAppKey()Ljava/lang/String;

    move-result-object v1

    const-string v4, "appId"

    invoke-static {v0, v4, v1}, Lcom/amazon/device/ads/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    invoke-static {}, Lcom/amazon/device/ads/Version;->getSDKVersion()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "sdkVer"

    invoke-static {v0, v4, v1}, Lcom/amazon/device/ads/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    invoke-virtual {p0}, Lcom/amazon/device/ads/UserIdentifier;->getAdvertisingIdentifierInfo()Lcom/amazon/device/ads/AdvertisingIdentifier$Info;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/device/ads/AdvertisingIdentifier$Info;->hasAdvertisingIdentifier()Z

    move-result v1

    const-string/jumbo v4, "oo"

    const-string v5, "idfa"

    if-eqz v1, :cond_0

    .line 260
    invoke-virtual {p0}, Lcom/amazon/device/ads/UserIdentifier;->getAdvertisingIdentifierInfo()Lcom/amazon/device/ads/AdvertisingIdentifier$Info;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/device/ads/AdvertisingIdentifier$Info;->getAdvertisingIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v5, v1}, Lcom/amazon/device/ads/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    invoke-virtual {p0}, Lcom/amazon/device/ads/UserIdentifier;->getAdvertisingIdentifierInfo()Lcom/amazon/device/ads/AdvertisingIdentifier$Info;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/device/ads/AdvertisingIdentifier$Info;->isLimitAdTrackingEnabled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v4, v1}, Lcom/amazon/device/ads/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 265
    :cond_0
    invoke-static {}, Lcom/amazon/device/ads/AdvertisingIdentifier;->getLastKnownIdfa()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 266
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 267
    invoke-static {v0, v5, v1}, Lcom/amazon/device/ads/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    invoke-virtual {p0}, Lcom/amazon/device/ads/UserIdentifier;->getAdvertisingIdentifierInfo()Lcom/amazon/device/ads/AdvertisingIdentifier$Info;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/device/ads/AdvertisingIdentifier$Info;->isLimitAdTrackingEnabled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v4, v1}, Lcom/amazon/device/ads/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 270
    :cond_1
    iget-boolean v1, p0, Lcom/amazon/device/ads/UserIdentifier;->allowEmptyIdfa:Z

    if-nez v1, :cond_2

    .line 282
    new-instance v1, Lcom/amazon/device/ads/GooglePlayServicesAdapter;

    invoke-direct {v1}, Lcom/amazon/device/ads/GooglePlayServicesAdapter;-><init>()V

    .line 283
    invoke-virtual {v1}, Lcom/amazon/device/ads/GooglePlayServicesAdapter;->getAdvertisingIdentifierInfo()Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;->isGPSAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    return-object v0

    .line 287
    :cond_2
    invoke-virtual {v2}, Lcom/amazon/device/ads/DeviceInfo;->getMacSha1()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "shamac"

    invoke-static {v0, v4, v1}, Lcom/amazon/device/ads/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    invoke-virtual {v2}, Lcom/amazon/device/ads/DeviceInfo;->getUdidSha1()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "shaudid"

    invoke-static {v0, v4, v1}, Lcom/amazon/device/ads/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    invoke-virtual {v2}, Lcom/amazon/device/ads/DeviceInfo;->getSerialSha1()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "shaserial"

    invoke-static {v0, v4, v1}, Lcom/amazon/device/ads/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    :goto_0
    invoke-virtual {v2}, Lcom/amazon/device/ads/DeviceInfo;->getUserAgentString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "ua"

    invoke-static {v0, v4, v1}, Lcom/amazon/device/ads/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    invoke-virtual {v2}, Lcom/amazon/device/ads/DeviceInfo;->getDInfoProperty()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dinfo"

    invoke-static {v0, v2, v1}, Lcom/amazon/device/ads/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    invoke-virtual {v3}, Lcom/amazon/device/ads/AppInfo;->getPackageInfoJSONString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "pkg"

    invoke-static {v0, v2, v1}, Lcom/amazon/device/ads/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    iget-object v1, p0, Lcom/amazon/device/ads/UserIdentifier;->trustedPackageManager:Lcom/amazon/device/ads/TrustedPackageManager;

    invoke-virtual {v1}, Lcom/amazon/device/ads/TrustedPackageManager;->getTrustedInstalledPackagesJSONArray()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "pkgs"

    invoke-static {v0, v2, v1}, Lcom/amazon/device/ads/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/UserIdentifier;->processExtraParameters(Lorg/json/JSONObject;)V

    return-object v0
.end method

.method protected getAdvertisingIdentifierInfo()Lcom/amazon/device/ads/AdvertisingIdentifier$Info;
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/amazon/device/ads/UserIdentifier;->advertisingIdentifierInfo:Lcom/amazon/device/ads/AdvertisingIdentifier$Info;

    if-nez v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/amazon/device/ads/UserIdentifier;->advertisingIdentifier:Lcom/amazon/device/ads/AdvertisingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdvertisingIdentifier;->getAdvertisingIdentifierInfo()Lcom/amazon/device/ads/AdvertisingIdentifier$Info;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/UserIdentifier;->advertisingIdentifierInfo:Lcom/amazon/device/ads/AdvertisingIdentifier$Info;

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/UserIdentifier;->advertisingIdentifierInfo:Lcom/amazon/device/ads/AdvertisingIdentifier$Info;

    return-object v0
.end method

.method public identifyUser()Z
    .locals 7

    .line 101
    invoke-virtual {p0}, Lcom/amazon/device/ads/UserIdentifier;->createParameters()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 105
    :cond_0
    invoke-direct {p0, v0}, Lcom/amazon/device/ads/UserIdentifier;->createWebRequest(Lorg/json/JSONObject;)Lcom/amazon/device/ads/WebRequest;

    move-result-object v2

    if-nez v2, :cond_1

    return v1

    .line 114
    :cond_1
    :try_start_0
    invoke-virtual {v2}, Lcom/amazon/device/ads/WebRequest;->makeCall()Lcom/amazon/device/ads/WebRequest$WebResponse;

    move-result-object v2
    :try_end_0
    .catch Lcom/amazon/device/ads/WebRequest$WebRequestException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    iget-object v3, p0, Lcom/amazon/device/ads/UserIdentifier;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/amazon/device/ads/WebRequest$WebResponse;->getHttpStatusCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    const-string v6, "Service call result: %d"

    invoke-virtual {v3, v6, v5}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    invoke-virtual {v2}, Lcom/amazon/device/ads/WebRequest$WebResponse;->isHttpStatusCodeOK()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 124
    invoke-virtual {v2}, Lcom/amazon/device/ads/WebRequest$WebResponse;->getResponseReader()Lcom/amazon/device/ads/ResponseReader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/device/ads/ResponseReader;->readAsJSON()Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    const/4 v3, 0x0

    const-string v5, "code"

    .line 129
    invoke-static {v2, v5, v3}, Lcom/amazon/device/ads/JSONUtils;->getStringFromJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "status"

    .line 130
    invoke-static {v2, v6, v3}, Lcom/amazon/device/ads/JSONUtils;->getStringFromJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 131
    iget-object v3, p0, Lcom/amazon/device/ads/UserIdentifier;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v5, v6, v1

    aput-object v2, v6, v4

    const-string v2, "Service result - code: %s, status: %s"

    invoke-virtual {v3, v2, v6}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v5, :cond_3

    const-string v2, "200"

    .line 133
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 135
    iget-object v1, p0, Lcom/amazon/device/ads/UserIdentifier;->settings:Lcom/amazon/device/ads/Settings;

    const-string v2, "IUParameters"

    invoke-virtual {v1, v2, v0}, Lcom/amazon/device/ads/Settings;->putJSONObject(Ljava/lang/String;Lorg/json/JSONObject;)V

    return v4

    :catch_0
    :cond_3
    return v1
.end method

.method initializeWebRequest()Lcom/amazon/device/ads/WebRequest;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/amazon/device/ads/UserIdentifier;->webRequestFactory:Lcom/amazon/device/ads/WebRequest$WebRequestFactory;

    invoke-virtual {v0}, Lcom/amazon/device/ads/WebRequest$WebRequestFactory;->createWebRequest()Lcom/amazon/device/ads/WebRequest;

    move-result-object v0

    return-object v0
.end method

.method protected notifyListeners(Lcom/amazon/device/ads/UserIdentifier$IdentifyUserStatus;)V
    .locals 1

    .line 326
    sget-object v0, Lcom/amazon/device/ads/UserIdentifier$IdentifyUserStatus;->SUCCESS:Lcom/amazon/device/ads/UserIdentifier$IdentifyUserStatus;

    if-ne p1, v0, :cond_0

    .line 328
    iget-object p1, p0, Lcom/amazon/device/ads/UserIdentifier;->listeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/ads/UserIdentifier$IdentifyUserListener;

    .line 330
    invoke-interface {v0}, Lcom/amazon/device/ads/UserIdentifier$IdentifyUserListener;->userIdentified()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method abstract processExtraParameters(Lorg/json/JSONObject;)V
.end method

.method public setMobileAdsInfoStore(Lcom/amazon/device/ads/MobileAdsInfoStore;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/amazon/device/ads/UserIdentifier;->infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    return-void
.end method

.method protected final setParametersAndHost(Lcom/amazon/device/ads/WebRequest;Lorg/json/JSONObject;)V
    .locals 3

    .line 302
    iget-object v0, p0, Lcom/amazon/device/ads/UserIdentifier;->configuration:Lcom/amazon/device/ads/Configuration;

    sget-object v1, Lcom/amazon/device/ads/Configuration$ConfigOption;->MADS_HOSTNAME:Lcom/amazon/device/ads/Configuration$ConfigOption;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/Configuration;->getString(Lcom/amazon/device/ads/Configuration$ConfigOption;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "mads.amazon.com"

    .line 305
    :goto_0
    invoke-virtual {p1, v0}, Lcom/amazon/device/ads/WebRequest;->setHost(Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lcom/amazon/device/ads/UserIdentifier;->debugProperties:Lcom/amazon/device/ads/DebugProperties;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "debug.madsUseSecure"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/device/ads/DebugProperties;->getDebugPropertyAsBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/amazon/device/ads/WebRequest;->setUseSecure(Z)V

    .line 307
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazon/device/ads/WebRequest;->setRequestBodyString(Ljava/lang/String;)V

    return-void
.end method

.method protected shouldIdentifyUser()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 337
    sget-object v0, Lcom/amazon/device/ads/Configuration$ConfigOption;->IDENTIFY_USER_INTERVAL:Lcom/amazon/device/ads/Configuration$ConfigOption;

    const-string v1, "amzn-ad-iu-last-checkin"

    const-wide/32 v2, 0x5265c00

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/amazon/device/ads/UserIdentifier;->checkTimeThrottling(Ljava/lang/String;Lcom/amazon/device/ads/Configuration$ConfigOption;J)Z

    move-result v0

    return v0
.end method

.method protected startUpFailed()V
    .locals 1

    .line 233
    sget-object v0, Lcom/amazon/device/ads/UserIdentifier$IdentifyUserStatus;->REQUESTFAILED:Lcom/amazon/device/ads/UserIdentifier$IdentifyUserStatus;

    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/UserIdentifier;->notifyListeners(Lcom/amazon/device/ads/UserIdentifier$IdentifyUserStatus;)V

    return-void
.end method

.method protected startUpReady()V
    .locals 3

    .line 178
    sget-object v0, Lcom/amazon/device/ads/UserIdentifier;->serviceCallLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 182
    :try_start_0
    iget-boolean v0, p0, Lcom/amazon/device/ads/UserIdentifier;->isTest:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "Advertising Info prevents executing identity call"

    if-eqz v0, :cond_1

    .line 183
    :try_start_1
    iget-object v0, p0, Lcom/amazon/device/ads/UserIdentifier;->configuration:Lcom/amazon/device/ads/Configuration;

    sget-object v2, Lcom/amazon/device/ads/Configuration$ConfigOption;->MADS_HOSTNAME:Lcom/amazon/device/ads/Configuration$ConfigOption;

    invoke-virtual {v0, v2}, Lcom/amazon/device/ads/Configuration;->hasValue(Lcom/amazon/device/ads/Configuration$ConfigOption;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/device/ads/UserIdentifier;->getAdvertisingIdentifierInfo()Lcom/amazon/device/ads/AdvertisingIdentifier$Info;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdvertisingIdentifier$Info;->canDo()Z

    move-result v0

    if-nez v0, :cond_2

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/UserIdentifier;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 185
    sget-object v0, Lcom/amazon/device/ads/UserIdentifier$IdentifyUserStatus;->REQUESTFAILED:Lcom/amazon/device/ads/UserIdentifier$IdentifyUserStatus;

    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/UserIdentifier;->notifyListeners(Lcom/amazon/device/ads/UserIdentifier$IdentifyUserStatus;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 226
    :goto_0
    sget-object v0, Lcom/amazon/device/ads/UserIdentifier;->serviceCallLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 191
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/amazon/device/ads/UserIdentifier;->getAdvertisingIdentifierInfo()Lcom/amazon/device/ads/AdvertisingIdentifier$Info;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdvertisingIdentifier$Info;->canDo()Z

    move-result v0

    if-nez v0, :cond_2

    .line 192
    iget-object v0, p0, Lcom/amazon/device/ads/UserIdentifier;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 193
    sget-object v0, Lcom/amazon/device/ads/UserIdentifier$IdentifyUserStatus;->REQUESTFAILED:Lcom/amazon/device/ads/UserIdentifier$IdentifyUserStatus;

    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/UserIdentifier;->notifyListeners(Lcom/amazon/device/ads/UserIdentifier$IdentifyUserStatus;)V

    goto :goto_0

    .line 198
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/device/ads/UserIdentifier;->shouldIdentifyUser()Z

    move-result v0

    .line 199
    iget-object v1, p0, Lcom/amazon/device/ads/UserIdentifier;->debugProperties:Lcom/amazon/device/ads/DebugProperties;

    const-string v2, "debug.shouldIdentifyUser"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/amazon/device/ads/DebugProperties;->getDebugPropertyAsBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 202
    invoke-virtual {p0}, Lcom/amazon/device/ads/UserIdentifier;->identifyUser()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 205
    invoke-virtual {p0}, Lcom/amazon/device/ads/UserIdentifier;->updateLastCheckInTime()V

    .line 206
    iget-object v0, p0, Lcom/amazon/device/ads/UserIdentifier;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "Identify user call succeeded"

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 207
    sget-object v0, Lcom/amazon/device/ads/UserIdentifier$IdentifyUserStatus;->SUCCESS:Lcom/amazon/device/ads/UserIdentifier$IdentifyUserStatus;

    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/UserIdentifier;->notifyListeners(Lcom/amazon/device/ads/UserIdentifier$IdentifyUserStatus;)V

    goto :goto_1

    .line 211
    :cond_3
    iget-object v0, p0, Lcom/amazon/device/ads/UserIdentifier;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "Identify user call failed"

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    .line 212
    sget-object v0, Lcom/amazon/device/ads/UserIdentifier$IdentifyUserStatus;->FAILURE:Lcom/amazon/device/ads/UserIdentifier$IdentifyUserStatus;

    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/UserIdentifier;->notifyListeners(Lcom/amazon/device/ads/UserIdentifier$IdentifyUserStatus;)V

    goto :goto_1

    .line 217
    :cond_4
    sget-object v0, Lcom/amazon/device/ads/UserIdentifier$IdentifyUserStatus;->REQUESTTHROTTLED:Lcom/amazon/device/ads/UserIdentifier$IdentifyUserStatus;

    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/UserIdentifier;->notifyListeners(Lcom/amazon/device/ads/UserIdentifier$IdentifyUserStatus;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 222
    :catch_0
    :try_start_3
    sget-object v0, Lcom/amazon/device/ads/UserIdentifier$IdentifyUserStatus;->REQUESTFAILED:Lcom/amazon/device/ads/UserIdentifier$IdentifyUserStatus;

    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/UserIdentifier;->notifyListeners(Lcom/amazon/device/ads/UserIdentifier$IdentifyUserStatus;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 226
    :goto_1
    sget-object v0, Lcom/amazon/device/ads/UserIdentifier;->serviceCallLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :goto_2
    sget-object v1, Lcom/amazon/device/ads/UserIdentifier;->serviceCallLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 227
    throw v0
.end method

.method protected updateLastCheckInTime()V
    .locals 4

    .line 351
    iget-object v0, p0, Lcom/amazon/device/ads/UserIdentifier;->systemTime:Lcom/amazon/device/ads/SystemTime;

    invoke-virtual {v0}, Lcom/amazon/device/ads/SystemTime;->currentTimeMillis()J

    move-result-wide v0

    .line 352
    iget-object v2, p0, Lcom/amazon/device/ads/UserIdentifier;->settings:Lcom/amazon/device/ads/Settings;

    const-string v3, "amzn-ad-iu-last-checkin"

    invoke-virtual {v2, v3, v0, v1}, Lcom/amazon/device/ads/Settings;->putLong(Ljava/lang/String;J)V

    return-void
.end method
