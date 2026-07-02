.class Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;
.super Ljava/lang/Object;
.source "GooglePlayServices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/GooglePlayServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AdvertisingInfo"
.end annotation


# instance fields
.field private advertisingIdentifier:Ljava/lang/String;

.field private gpsAvailable:Z

.field private limitAdTrackingEnabled:Z


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 129
    iput-boolean v0, p0, Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;->gpsAvailable:Z

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;)Z
    .locals 0

    .line 117
    iget-boolean p0, p0, Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;->gpsAvailable:Z

    return p0
.end method

.method static createNotAvailable()Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;
    .locals 2

    .line 133
    new-instance v0, Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;

    invoke-direct {v0}, Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;-><init>()V

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;->setGPSAvailable(Z)Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;

    return-object v0
.end method

.method private setGPSAvailable(Z)Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;
    .locals 0

    .line 142
    iput-boolean p1, p0, Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;->gpsAvailable:Z

    return-object p0
.end method


# virtual methods
.method getAdvertisingIdentifier()Ljava/lang/String;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;->advertisingIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method hasAdvertisingIdentifier()Z
    .locals 1

    .line 157
    invoke-virtual {p0}, Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;->getAdvertisingIdentifier()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isGPSAvailable()Z
    .locals 1

    .line 138
    iget-boolean v0, p0, Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;->gpsAvailable:Z

    return v0
.end method

.method isLimitAdTrackingEnabled()Z
    .locals 1

    .line 162
    iget-boolean v0, p0, Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;->limitAdTrackingEnabled:Z

    return v0
.end method

.method setAdvertisingIdentifier(Ljava/lang/String;)Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;->advertisingIdentifier:Ljava/lang/String;

    return-object p0
.end method

.method setLimitAdTrackingEnabled(Z)Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;
    .locals 0

    .line 166
    iput-boolean p1, p0, Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;->limitAdTrackingEnabled:Z

    return-object p0
.end method
