.class Lcom/amazon/device/ads/MobileAdsLoggerFactory;
.super Ljava/lang/Object;
.source "MobileAdsLoggerFactory.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;
    .locals 2

    .line 18
    new-instance v0, Lcom/amazon/device/ads/MobileAdsLogger;

    new-instance v1, Lcom/amazon/device/ads/LogcatLogger;

    invoke-direct {v1}, Lcom/amazon/device/ads/LogcatLogger;-><init>()V

    invoke-direct {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;-><init>(Lcom/amazon/device/ads/Logger;)V

    invoke-virtual {v0, p0}, Lcom/amazon/device/ads/MobileAdsLogger;->withLogTag(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    return-object v0
.end method


# virtual methods
.method public createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;
    .locals 2

    .line 13
    new-instance v0, Lcom/amazon/device/ads/MobileAdsLogger;

    new-instance v1, Lcom/amazon/device/ads/LogcatLogger;

    invoke-direct {v1}, Lcom/amazon/device/ads/LogcatLogger;-><init>()V

    invoke-direct {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;-><init>(Lcom/amazon/device/ads/Logger;)V

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/MobileAdsLogger;->withLogTag(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    return-object v0
.end method
