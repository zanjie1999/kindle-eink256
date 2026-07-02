.class Lcom/amazon/device/ads/AAXParameter$GeoLocationParameter;
.super Lcom/amazon/device/ads/AAXParameter$StringParameter;
.source "AAXParameter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/AAXParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GeoLocationParameter"
.end annotation


# instance fields
.field private final configuration:Lcom/amazon/device/ads/Configuration;

.field private final context:Landroid/content/Context;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 432
    invoke-static {}, Lcom/amazon/device/ads/Configuration;->getInstance()Lcom/amazon/device/ads/Configuration;

    move-result-object v0

    invoke-static {}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getInstance()Lcom/amazon/device/ads/MobileAdsInfoStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/amazon/device/ads/AAXParameter$GeoLocationParameter;-><init>(Lcom/amazon/device/ads/Configuration;Landroid/content/Context;)V

    return-void
.end method

.method constructor <init>(Lcom/amazon/device/ads/Configuration;Landroid/content/Context;)V
    .locals 2

    const-string v0, "geoloc"

    const-string v1, "debug.geoloc"

    .line 436
    invoke-direct {p0, v0, v1}, Lcom/amazon/device/ads/AAXParameter$StringParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    iput-object p1, p0, Lcom/amazon/device/ads/AAXParameter$GeoLocationParameter;->configuration:Lcom/amazon/device/ads/Configuration;

    .line 438
    iput-object p2, p0, Lcom/amazon/device/ads/AAXParameter$GeoLocationParameter;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected bridge synthetic getDerivedValue(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Ljava/lang/Object;
    .locals 0

    .line 426
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/AAXParameter$GeoLocationParameter;->getDerivedValue(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getDerivedValue(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Ljava/lang/String;
    .locals 3

    .line 444
    iget-object v0, p0, Lcom/amazon/device/ads/AAXParameter$GeoLocationParameter;->configuration:Lcom/amazon/device/ads/Configuration;

    sget-object v1, Lcom/amazon/device/ads/Configuration$ConfigOption;->SEND_GEO:Lcom/amazon/device/ads/Configuration$ConfigOption;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/Configuration;->getBoolean(Lcom/amazon/device/ads/Configuration$ConfigOption;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 445
    invoke-virtual {p1}, Lcom/amazon/device/ads/AAXParameter$ParameterData;->getAdRequest()Lcom/amazon/device/ads/AdRequest;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/device/ads/AdRequest;->getAdTargetingOptions()Lcom/amazon/device/ads/AdTargetingOptions;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/device/ads/AdTargetingOptions;->isGeoLocationEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 447
    new-instance p1, Lcom/amazon/device/ads/AdLocation;

    iget-object v0, p0, Lcom/amazon/device/ads/AAXParameter$GeoLocationParameter;->context:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/amazon/device/ads/AdLocation;-><init>(Landroid/content/Context;)V

    .line 448
    invoke-virtual {p1}, Lcom/amazon/device/ads/AdLocation;->getLocation()Landroid/location/Location;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 449
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    :goto_0
    return-object v1
.end method
