.class Lcom/amazon/device/ads/AAXParameter$PackageInfoParameter;
.super Lcom/amazon/device/ads/AAXParameter$JSONObjectParameter;
.source "AAXParameter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/AAXParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PackageInfoParameter"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    const-string/jumbo v0, "pkg"

    const-string v1, "debug.pkg"

    .line 498
    invoke-direct {p0, v0, v1}, Lcom/amazon/device/ads/AAXParameter$JSONObjectParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic getDerivedValue(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Ljava/lang/Object;
    .locals 0

    .line 494
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/AAXParameter$PackageInfoParameter;->getDerivedValue(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method protected getDerivedValue(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Lorg/json/JSONObject;
    .locals 0

    .line 504
    invoke-static {}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getInstance()Lcom/amazon/device/ads/MobileAdsInfoStore;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getAppInfo()Lcom/amazon/device/ads/AppInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/device/ads/AppInfo;->getPackageInfoJSON()Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method
