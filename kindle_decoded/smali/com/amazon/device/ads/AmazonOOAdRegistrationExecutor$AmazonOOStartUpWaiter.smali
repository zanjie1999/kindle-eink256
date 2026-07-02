.class Lcom/amazon/device/ads/AmazonOOAdRegistrationExecutor$AmazonOOStartUpWaiter;
.super Lcom/amazon/device/ads/StartUpWaiter;
.source "AmazonOOAdRegistrationExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/AmazonOOAdRegistrationExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AmazonOOStartUpWaiter"
.end annotation


# instance fields
.field private final advertisingIdentifier:Lcom/amazon/device/ads/AdvertisingIdentifier;

.field private final executor:Lcom/amazon/device/ads/AmazonOOAdRegistrationExecutor;

.field private final infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

.field private final listener:Lcom/amazon/device/ads/AmazonOOAdRegistrationListener;

.field private final systemTime:Lcom/amazon/device/ads/SystemTime;


# direct methods
.method public constructor <init>(Lcom/amazon/device/ads/AmazonOOAdRegistrationListener;Lcom/amazon/device/ads/AdvertisingIdentifier;Lcom/amazon/device/ads/MobileAdsInfoStore;Lcom/amazon/device/ads/Settings;Lcom/amazon/device/ads/Configuration;Lcom/amazon/device/ads/SystemTime;Lcom/amazon/device/ads/AmazonOOAdRegistrationExecutor;)V
    .locals 0

    .line 563
    invoke-direct {p0, p4, p5}, Lcom/amazon/device/ads/StartUpWaiter;-><init>(Lcom/amazon/device/ads/Settings;Lcom/amazon/device/ads/Configuration;)V

    .line 564
    iput-object p1, p0, Lcom/amazon/device/ads/AmazonOOAdRegistrationExecutor$AmazonOOStartUpWaiter;->listener:Lcom/amazon/device/ads/AmazonOOAdRegistrationListener;

    .line 565
    iput-object p2, p0, Lcom/amazon/device/ads/AmazonOOAdRegistrationExecutor$AmazonOOStartUpWaiter;->advertisingIdentifier:Lcom/amazon/device/ads/AdvertisingIdentifier;

    .line 566
    iput-object p3, p0, Lcom/amazon/device/ads/AmazonOOAdRegistrationExecutor$AmazonOOStartUpWaiter;->infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    .line 567
    iput-object p6, p0, Lcom/amazon/device/ads/AmazonOOAdRegistrationExecutor$AmazonOOStartUpWaiter;->systemTime:Lcom/amazon/device/ads/SystemTime;

    .line 568
    iput-object p7, p0, Lcom/amazon/device/ads/AmazonOOAdRegistrationExecutor$AmazonOOStartUpWaiter;->executor:Lcom/amazon/device/ads/AmazonOOAdRegistrationExecutor;

    return-void
.end method

.method private getAmazonOOAdRegistrationInfo()Lcom/amazon/device/ads/AmazonOOAdRegistration$AmazonOOAdRegistrationInfo;
    .locals 8

    .line 585
    new-instance v7, Lcom/amazon/device/ads/AmazonOOAdRegistration$AmazonOOAdRegistrationInfo;

    iget-object v1, p0, Lcom/amazon/device/ads/AmazonOOAdRegistrationExecutor$AmazonOOStartUpWaiter;->advertisingIdentifier:Lcom/amazon/device/ads/AdvertisingIdentifier;

    iget-object v2, p0, Lcom/amazon/device/ads/AmazonOOAdRegistrationExecutor$AmazonOOStartUpWaiter;->infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    invoke-virtual {p0}, Lcom/amazon/device/ads/StartUpWaiter;->getSettings()Lcom/amazon/device/ads/Settings;

    move-result-object v3

    invoke-virtual {p0}, Lcom/amazon/device/ads/StartUpWaiter;->getConfiguration()Lcom/amazon/device/ads/Configuration;

    move-result-object v4

    iget-object v5, p0, Lcom/amazon/device/ads/AmazonOOAdRegistrationExecutor$AmazonOOStartUpWaiter;->systemTime:Lcom/amazon/device/ads/SystemTime;

    iget-object v6, p0, Lcom/amazon/device/ads/AmazonOOAdRegistrationExecutor$AmazonOOStartUpWaiter;->executor:Lcom/amazon/device/ads/AmazonOOAdRegistrationExecutor;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/amazon/device/ads/AmazonOOAdRegistration$AmazonOOAdRegistrationInfo;-><init>(Lcom/amazon/device/ads/AdvertisingIdentifier;Lcom/amazon/device/ads/MobileAdsInfoStore;Lcom/amazon/device/ads/Settings;Lcom/amazon/device/ads/Configuration;Lcom/amazon/device/ads/SystemTime;Lcom/amazon/device/ads/AmazonOOAdRegistrationExecutor;)V

    return-object v7
.end method


# virtual methods
.method protected startUpFailed()V
    .locals 2

    .line 580
    iget-object v0, p0, Lcom/amazon/device/ads/AmazonOOAdRegistrationExecutor$AmazonOOStartUpWaiter;->listener:Lcom/amazon/device/ads/AmazonOOAdRegistrationListener;

    invoke-direct {p0}, Lcom/amazon/device/ads/AmazonOOAdRegistrationExecutor$AmazonOOStartUpWaiter;->getAmazonOOAdRegistrationInfo()Lcom/amazon/device/ads/AmazonOOAdRegistration$AmazonOOAdRegistrationInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/device/ads/AmazonOOAdRegistrationListener;->onRegistrationInfoReady(Lcom/amazon/device/ads/AmazonOOAdRegistration$AmazonOOAdRegistrationInfo;)V

    return-void
.end method

.method protected startUpReady()V
    .locals 2

    .line 574
    iget-object v0, p0, Lcom/amazon/device/ads/AmazonOOAdRegistrationExecutor$AmazonOOStartUpWaiter;->listener:Lcom/amazon/device/ads/AmazonOOAdRegistrationListener;

    invoke-direct {p0}, Lcom/amazon/device/ads/AmazonOOAdRegistrationExecutor$AmazonOOStartUpWaiter;->getAmazonOOAdRegistrationInfo()Lcom/amazon/device/ads/AmazonOOAdRegistration$AmazonOOAdRegistrationInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/device/ads/AmazonOOAdRegistrationListener;->onRegistrationInfoReady(Lcom/amazon/device/ads/AmazonOOAdRegistration$AmazonOOAdRegistrationInfo;)V

    return-void
.end method
