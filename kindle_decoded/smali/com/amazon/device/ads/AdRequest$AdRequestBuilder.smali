.class Lcom/amazon/device/ads/AdRequest$AdRequestBuilder;
.super Ljava/lang/Object;
.source "AdRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/AdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AdRequestBuilder"
.end annotation


# instance fields
.field private adTargetingOptions:Lcom/amazon/device/ads/AdTargetingOptions;

.field private advertisingIdentifierInfo:Lcom/amazon/device/ads/AdvertisingIdentifier$Info;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/amazon/device/ads/AdRequest;
    .locals 2

    .line 437
    new-instance v0, Lcom/amazon/device/ads/AdRequest;

    iget-object v1, p0, Lcom/amazon/device/ads/AdRequest$AdRequestBuilder;->adTargetingOptions:Lcom/amazon/device/ads/AdTargetingOptions;

    invoke-direct {v0, v1}, Lcom/amazon/device/ads/AdRequest;-><init>(Lcom/amazon/device/ads/AdTargetingOptions;)V

    iget-object v1, p0, Lcom/amazon/device/ads/AdRequest$AdRequestBuilder;->advertisingIdentifierInfo:Lcom/amazon/device/ads/AdvertisingIdentifier$Info;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdRequest;->setAdvertisingIdentifierInfo(Lcom/amazon/device/ads/AdvertisingIdentifier$Info;)Lcom/amazon/device/ads/AdRequest;

    return-object v0
.end method

.method public withAdTargetingOptions(Lcom/amazon/device/ads/AdTargetingOptions;)Lcom/amazon/device/ads/AdRequest$AdRequestBuilder;
    .locals 0

    .line 423
    iput-object p1, p0, Lcom/amazon/device/ads/AdRequest$AdRequestBuilder;->adTargetingOptions:Lcom/amazon/device/ads/AdTargetingOptions;

    return-object p0
.end method

.method public withAdvertisingIdentifierInfo(Lcom/amazon/device/ads/AdvertisingIdentifier$Info;)Lcom/amazon/device/ads/AdRequest$AdRequestBuilder;
    .locals 0

    .line 429
    iput-object p1, p0, Lcom/amazon/device/ads/AdRequest$AdRequestBuilder;->advertisingIdentifierInfo:Lcom/amazon/device/ads/AdvertisingIdentifier$Info;

    return-object p0
.end method
