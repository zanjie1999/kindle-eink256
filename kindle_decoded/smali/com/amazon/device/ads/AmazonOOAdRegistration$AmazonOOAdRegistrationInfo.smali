.class public Lcom/amazon/device/ads/AmazonOOAdRegistration$AmazonOOAdRegistrationInfo;
.super Ljava/lang/Object;
.source "AmazonOOAdRegistration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/AmazonOOAdRegistration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AmazonOOAdRegistrationInfo"
.end annotation


# instance fields
.field private final advertisingIdentifierInfo:Lcom/amazon/device/ads/AdvertisingIdentifier$Info;

.field private final amazonOOAdRegistrationExecutor:Lcom/amazon/device/ads/AmazonOOAdRegistrationExecutor;

.field private final configuration:Lcom/amazon/device/ads/Configuration;

.field private final infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

.field private final settings:Lcom/amazon/device/ads/Settings;

.field private final systemTime:Lcom/amazon/device/ads/SystemTime;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/AdvertisingIdentifier;Lcom/amazon/device/ads/MobileAdsInfoStore;Lcom/amazon/device/ads/Settings;Lcom/amazon/device/ads/Configuration;Lcom/amazon/device/ads/SystemTime;Lcom/amazon/device/ads/AmazonOOAdRegistrationExecutor;)V
    .locals 0

    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 330
    invoke-virtual {p1}, Lcom/amazon/device/ads/AdvertisingIdentifier;->getAdvertisingIdentifierInfo()Lcom/amazon/device/ads/AdvertisingIdentifier$Info;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/device/ads/AmazonOOAdRegistration$AmazonOOAdRegistrationInfo;->advertisingIdentifierInfo:Lcom/amazon/device/ads/AdvertisingIdentifier$Info;

    .line 331
    iput-object p2, p0, Lcom/amazon/device/ads/AmazonOOAdRegistration$AmazonOOAdRegistrationInfo;->infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    .line 332
    iput-object p3, p0, Lcom/amazon/device/ads/AmazonOOAdRegistration$AmazonOOAdRegistrationInfo;->settings:Lcom/amazon/device/ads/Settings;

    .line 333
    iput-object p4, p0, Lcom/amazon/device/ads/AmazonOOAdRegistration$AmazonOOAdRegistrationInfo;->configuration:Lcom/amazon/device/ads/Configuration;

    .line 334
    iput-object p5, p0, Lcom/amazon/device/ads/AmazonOOAdRegistration$AmazonOOAdRegistrationInfo;->systemTime:Lcom/amazon/device/ads/SystemTime;

    .line 335
    iput-object p6, p0, Lcom/amazon/device/ads/AmazonOOAdRegistration$AmazonOOAdRegistrationInfo;->amazonOOAdRegistrationExecutor:Lcom/amazon/device/ads/AmazonOOAdRegistrationExecutor;

    return-void
.end method
