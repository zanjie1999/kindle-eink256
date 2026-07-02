.class abstract Lcom/amazon/device/ads/AdsIdentityUserIdentifier;
.super Lcom/amazon/device/ads/UserIdentifier;
.source "AdsIdentityUserIdentifier.java"


# instance fields
.field private calledFromIdModule:Z


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/AdvertisingIdentifier;Lcom/amazon/device/ads/Configuration;Lcom/amazon/device/ads/Settings;Lcom/amazon/device/ads/TrustedPackageManager;Lcom/amazon/device/ads/SystemTime;Lcom/amazon/device/ads/DebugProperties;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/device/ads/WebRequest$WebRequestFactory;Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V
    .locals 0

    .line 17
    invoke-direct/range {p0 .. p10}, Lcom/amazon/device/ads/UserIdentifier;-><init>(Lcom/amazon/device/ads/AdvertisingIdentifier;Lcom/amazon/device/ads/Configuration;Lcom/amazon/device/ads/Settings;Lcom/amazon/device/ads/TrustedPackageManager;Lcom/amazon/device/ads/SystemTime;Lcom/amazon/device/ads/DebugProperties;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/device/ads/WebRequest$WebRequestFactory;Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V

    const/4 p1, 0x0

    .line 21
    iput-boolean p1, p0, Lcom/amazon/device/ads/AdsIdentityUserIdentifier;->calledFromIdModule:Z

    return-void
.end method


# virtual methods
.method public abstract getAccount()Ljava/lang/String;
.end method

.method public identifyUserFromIdModule()V
    .locals 1

    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Lcom/amazon/device/ads/AdsIdentityUserIdentifier;->calledFromIdModule:Z

    .line 28
    invoke-virtual {p0}, Lcom/amazon/device/ads/UserIdentifier;->startUpReady()V

    return-void
.end method

.method processExtraParameters(Lorg/json/JSONObject;)V
    .locals 2

    .line 33
    iget-boolean v0, p0, Lcom/amazon/device/ads/AdsIdentityUserIdentifier;->calledFromIdModule:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const-string v1, "idModule"

    .line 35
    invoke-static {p1, v1, v0}, Lcom/amazon/device/ads/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
