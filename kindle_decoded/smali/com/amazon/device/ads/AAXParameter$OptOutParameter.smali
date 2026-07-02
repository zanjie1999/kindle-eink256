.class Lcom/amazon/device/ads/AAXParameter$OptOutParameter;
.super Lcom/amazon/device/ads/AAXParameter$BooleanParameter;
.source "AAXParameter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/AAXParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OptOutParameter"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    const-string/jumbo v0, "oo"

    const-string v1, "debug.optOut"

    .line 525
    invoke-direct {p0, v0, v1}, Lcom/amazon/device/ads/AAXParameter$BooleanParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getDerivedValue(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Ljava/lang/Boolean;
    .locals 1

    .line 531
    invoke-static {p1}, Lcom/amazon/device/ads/AAXParameter$ParameterData;->access$300(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Lcom/amazon/device/ads/AdRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdRequest;->getAdvertisingIdentifierInfo()Lcom/amazon/device/ads/AdvertisingIdentifier$Info;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdvertisingIdentifier$Info;->hasAdvertisingIdentifier()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 533
    invoke-static {p1}, Lcom/amazon/device/ads/AAXParameter$ParameterData;->access$300(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Lcom/amazon/device/ads/AdRequest;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/device/ads/AdRequest;->getAdvertisingIdentifierInfo()Lcom/amazon/device/ads/AdvertisingIdentifier$Info;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/device/ads/AdvertisingIdentifier$Info;->isLimitAdTrackingEnabled()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic getDerivedValue(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Ljava/lang/Object;
    .locals 0

    .line 521
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/AAXParameter$OptOutParameter;->getDerivedValue(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
