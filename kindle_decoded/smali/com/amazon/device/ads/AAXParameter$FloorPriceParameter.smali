.class Lcom/amazon/device/ads/AAXParameter$FloorPriceParameter;
.super Lcom/amazon/device/ads/AAXParameter$LongParameter;
.source "AAXParameter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/AAXParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FloorPriceParameter"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    const-string v0, "ec"

    const-string v1, "debug.ec"

    .line 594
    invoke-direct {p0, v0, v1}, Lcom/amazon/device/ads/AAXParameter$LongParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getDerivedValue(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Ljava/lang/Long;
    .locals 2

    .line 600
    invoke-static {p1}, Lcom/amazon/device/ads/AAXParameter$ParameterData;->access$400(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Lcom/amazon/device/ads/AdRequest$LOISlot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdRequest$LOISlot;->getAdTargetingOptions()Lcom/amazon/device/ads/AdTargetingOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdTargetingOptions;->hasFloorPrice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 602
    invoke-static {p1}, Lcom/amazon/device/ads/AAXParameter$ParameterData;->access$400(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Lcom/amazon/device/ads/AdRequest$LOISlot;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/device/ads/AdRequest$LOISlot;->getAdTargetingOptions()Lcom/amazon/device/ads/AdTargetingOptions;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/device/ads/AdTargetingOptions;->getFloorPrice()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic getDerivedValue(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Ljava/lang/Object;
    .locals 0

    .line 590
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/AAXParameter$FloorPriceParameter;->getDerivedValue(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
