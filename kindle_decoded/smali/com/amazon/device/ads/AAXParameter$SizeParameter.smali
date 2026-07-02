.class Lcom/amazon/device/ads/AAXParameter$SizeParameter;
.super Lcom/amazon/device/ads/AAXParameter$StringParameter;
.source "AAXParameter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/AAXParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SizeParameter"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    const-string/jumbo v0, "sz"

    const-string v1, "debug.size"

    .line 542
    invoke-direct {p0, v0, v1}, Lcom/amazon/device/ads/AAXParameter$StringParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic getDerivedValue(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Ljava/lang/Object;
    .locals 0

    .line 538
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/AAXParameter$SizeParameter;->getDerivedValue(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getDerivedValue(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Ljava/lang/String;
    .locals 0

    .line 548
    invoke-static {p1}, Lcom/amazon/device/ads/AAXParameter$ParameterData;->access$400(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Lcom/amazon/device/ads/AdRequest$LOISlot;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/device/ads/AdRequest$LOISlot;->getAdSlot()Lcom/amazon/device/ads/AdSlot;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/device/ads/AdSlot;->getRequestedAdSize()Lcom/amazon/device/ads/AdSize;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/device/ads/AdSize;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
