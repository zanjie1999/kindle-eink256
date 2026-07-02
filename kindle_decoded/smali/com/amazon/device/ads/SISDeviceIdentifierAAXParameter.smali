.class Lcom/amazon/device/ads/SISDeviceIdentifierAAXParameter;
.super Lcom/amazon/device/ads/AAXParameterGroupParameter;
.source "AAXParameterGroupParameter.java"


# direct methods
.method constructor <init>()V
    .locals 2

    .line 66
    invoke-static {}, Lcom/amazon/device/ads/DebugProperties;->getInstance()Lcom/amazon/device/ads/DebugProperties;

    move-result-object v0

    new-instance v1, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v1}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazon/device/ads/SISDeviceIdentifierAAXParameter;-><init>(Lcom/amazon/device/ads/DebugProperties;Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V

    return-void
.end method

.method constructor <init>(Lcom/amazon/device/ads/DebugProperties;Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V
    .locals 2

    const-string v0, "ad-id"

    const-string v1, "debug.adid"

    .line 71
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/amazon/device/ads/AAXParameterGroupParameter;-><init>(Lcom/amazon/device/ads/DebugProperties;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V

    return-void
.end method


# virtual methods
.method protected getDerivedValue(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Ljava/lang/String;
    .locals 0

    .line 77
    invoke-virtual {p1}, Lcom/amazon/device/ads/AAXParameter$ParameterData;->getAdRequest()Lcom/amazon/device/ads/AdRequest;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/device/ads/AdRequest;->getAdvertisingIdentifierInfo()Lcom/amazon/device/ads/AdvertisingIdentifier$Info;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/device/ads/AdvertisingIdentifier$Info;->getSISDeviceIdentifier()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
