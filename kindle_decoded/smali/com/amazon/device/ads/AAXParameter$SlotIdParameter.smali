.class Lcom/amazon/device/ads/AAXParameter$SlotIdParameter;
.super Lcom/amazon/device/ads/AAXParameter$IntegerParameter;
.source "AAXParameter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/AAXParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SlotIdParameter"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    const-string/jumbo v0, "slotId"

    const-string v1, "debug.slotId"

    .line 581
    invoke-direct {p0, v0, v1}, Lcom/amazon/device/ads/AAXParameter$IntegerParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getDerivedValue(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Ljava/lang/Integer;
    .locals 0

    .line 587
    invoke-static {p1}, Lcom/amazon/device/ads/AAXParameter$ParameterData;->access$400(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Lcom/amazon/device/ads/AdRequest$LOISlot;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/device/ads/AdRequest$LOISlot;->getAdSlot()Lcom/amazon/device/ads/AdSlot;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/device/ads/AdSlot;->getSlotNumber()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic getDerivedValue(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Ljava/lang/Object;
    .locals 0

    .line 577
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/AAXParameter$SlotIdParameter;->getDerivedValue(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
