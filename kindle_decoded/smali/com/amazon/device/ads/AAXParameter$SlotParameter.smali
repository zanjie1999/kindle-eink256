.class Lcom/amazon/device/ads/AAXParameter$SlotParameter;
.super Lcom/amazon/device/ads/AAXParameter$StringParameter;
.source "AAXParameter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/AAXParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SlotParameter"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    const-string/jumbo v0, "slot"

    const-string v1, "debug.slot"

    .line 555
    invoke-direct {p0, v0, v1}, Lcom/amazon/device/ads/AAXParameter$StringParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic getDerivedValue(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Ljava/lang/Object;
    .locals 0

    .line 551
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/AAXParameter$SlotParameter;->getDerivedValue(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getDerivedValue(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Ljava/lang/String;
    .locals 0

    .line 561
    invoke-static {p1}, Lcom/amazon/device/ads/AAXParameter$ParameterData;->access$300(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Lcom/amazon/device/ads/AdRequest;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/device/ads/AdRequest;->getOrientation()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
