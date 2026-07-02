.class Lcom/amazon/device/ads/AmazonOOMAPUserIdentifier;
.super Lcom/amazon/device/ads/AdsIdentityUserIdentifier;
.source "AmazonOOMAPUserIdentifier.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "AmazonOOMAPUserIdentifier"

.field private static final PATH:Ljava/lang/String; = "/RegisterOAuth"


# instance fields
.field private final authenticationPlatform:Lcom/amazon/device/ads/AuthenticationPlatformAdapter;

.field private final sessionId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/device/ads/AuthenticationPlatformAdapter;Lcom/amazon/device/ads/AdvertisingIdentifier;Lcom/amazon/device/ads/Configuration;Lcom/amazon/device/ads/Settings;Lcom/amazon/device/ads/TrustedPackageManager;Lcom/amazon/device/ads/SystemTime;Lcom/amazon/device/ads/DebugProperties;Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V
    .locals 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object v11, p0

    .line 35
    sget-object v7, Lcom/amazon/device/ads/AmazonOOMAPUserIdentifier;->LOGTAG:Ljava/lang/String;

    const-string v8, "/RegisterOAuth"

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Lcom/amazon/device/ads/AdsIdentityUserIdentifier;-><init>(Lcom/amazon/device/ads/AdvertisingIdentifier;Lcom/amazon/device/ads/Configuration;Lcom/amazon/device/ads/Settings;Lcom/amazon/device/ads/TrustedPackageManager;Lcom/amazon/device/ads/SystemTime;Lcom/amazon/device/ads/DebugProperties;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/device/ads/WebRequest$WebRequestFactory;Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V

    move-object v0, p1

    .line 36
    iput-object v0, v11, Lcom/amazon/device/ads/AmazonOOMAPUserIdentifier;->authenticationPlatform:Lcom/amazon/device/ads/AuthenticationPlatformAdapter;

    const/4 v0, 0x0

    .line 37
    iput-object v0, v11, Lcom/amazon/device/ads/AmazonOOMAPUserIdentifier;->sessionId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAccount()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/amazon/device/ads/AmazonOOMAPUserIdentifier;->authenticationPlatform:Lcom/amazon/device/ads/AuthenticationPlatformAdapter;

    invoke-interface {v0}, Lcom/amazon/device/ads/AuthenticationPlatformAdapter;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method initializeWebRequest()Lcom/amazon/device/ads/WebRequest;
    .locals 1

    .line 78
    invoke-virtual {p0}, Lcom/amazon/device/ads/AmazonOOMAPUserIdentifier;->getAccount()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 83
    :cond_0
    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/AmazonOOMAPUserIdentifier;->makeAuthenticatedWebRequest(Ljava/lang/String;)Lcom/amazon/device/ads/WebRequest;

    move-result-object v0

    return-object v0
.end method

.method protected makeAuthenticatedWebRequest(Ljava/lang/String;)Lcom/amazon/device/ads/WebRequest;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/amazon/device/ads/AmazonOOMAPUserIdentifier;->authenticationPlatform:Lcom/amazon/device/ads/AuthenticationPlatformAdapter;

    invoke-interface {v0, p1}, Lcom/amazon/device/ads/AuthenticationPlatformAdapter;->makeAuthenticatedWebRequest(Ljava/lang/String;)Lcom/amazon/device/ads/WebRequest;

    move-result-object p1

    return-object p1
.end method

.method processExtraParameters(Lorg/json/JSONObject;)V
    .locals 2

    .line 61
    invoke-super {p0, p1}, Lcom/amazon/device/ads/AdsIdentityUserIdentifier;->processExtraParameters(Lorg/json/JSONObject;)V

    .line 62
    iget-object v0, p0, Lcom/amazon/device/ads/AmazonOOMAPUserIdentifier;->sessionId:Ljava/lang/String;

    const-string/jumbo v1, "sessionId"

    invoke-static {p1, v1, v0}, Lcom/amazon/device/ads/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
