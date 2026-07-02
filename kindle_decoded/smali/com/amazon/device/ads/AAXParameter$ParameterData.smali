.class Lcom/amazon/device/ads/AAXParameter$ParameterData;
.super Ljava/lang/Object;
.source "AAXParameter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/AAXParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ParameterData"
.end annotation


# instance fields
.field private adRequest:Lcom/amazon/device/ads/AdRequest;

.field private adTargetingOptions:Lcom/amazon/device/ads/AdTargetingOptions;

.field private advancedOptions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private loiSlot:Lcom/amazon/device/ads/AdRequest$LOISlot;

.field private temporaryOptions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/AAXParameter$ParameterData;->temporaryOptions:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Ljava/util/Map;
    .locals 0

    .line 141
    iget-object p0, p0, Lcom/amazon/device/ads/AAXParameter$ParameterData;->advancedOptions:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Lcom/amazon/device/ads/AdTargetingOptions;
    .locals 0

    .line 141
    iget-object p0, p0, Lcom/amazon/device/ads/AAXParameter$ParameterData;->adTargetingOptions:Lcom/amazon/device/ads/AdTargetingOptions;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Lcom/amazon/device/ads/AdRequest;
    .locals 0

    .line 141
    iget-object p0, p0, Lcom/amazon/device/ads/AAXParameter$ParameterData;->adRequest:Lcom/amazon/device/ads/AdRequest;

    return-object p0
.end method

.method static synthetic access$400(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Lcom/amazon/device/ads/AdRequest$LOISlot;
    .locals 0

    .line 141
    iget-object p0, p0, Lcom/amazon/device/ads/AAXParameter$ParameterData;->loiSlot:Lcom/amazon/device/ads/AdRequest$LOISlot;

    return-object p0
.end method

.method static synthetic access$500(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Ljava/util/Map;
    .locals 0

    .line 141
    iget-object p0, p0, Lcom/amazon/device/ads/AAXParameter$ParameterData;->temporaryOptions:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method getAdRequest()Lcom/amazon/device/ads/AdRequest;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/amazon/device/ads/AAXParameter$ParameterData;->adRequest:Lcom/amazon/device/ads/AdRequest;

    return-object v0
.end method

.method getInternalAdvancedOptions()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lcom/amazon/device/ads/AAXParameter$ParameterData;->advancedOptions:Ljava/util/Map;

    return-object v0
.end method

.method setAdRequest(Lcom/amazon/device/ads/AdRequest;)Lcom/amazon/device/ads/AAXParameter$ParameterData;
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/amazon/device/ads/AAXParameter$ParameterData;->adRequest:Lcom/amazon/device/ads/AdRequest;

    return-object p0
.end method

.method setAdTargetingOptions(Lcom/amazon/device/ads/AdTargetingOptions;)Lcom/amazon/device/ads/AAXParameter$ParameterData;
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/amazon/device/ads/AAXParameter$ParameterData;->adTargetingOptions:Lcom/amazon/device/ads/AdTargetingOptions;

    return-object p0
.end method

.method setAdvancedOptions(Ljava/util/Map;)Lcom/amazon/device/ads/AAXParameter$ParameterData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazon/device/ads/AAXParameter$ParameterData;"
        }
    .end annotation

    .line 165
    iput-object p1, p0, Lcom/amazon/device/ads/AAXParameter$ParameterData;->advancedOptions:Ljava/util/Map;

    return-object p0
.end method

.method setLOISlot(Lcom/amazon/device/ads/AdRequest$LOISlot;)Lcom/amazon/device/ads/AAXParameter$ParameterData;
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/amazon/device/ads/AAXParameter$ParameterData;->loiSlot:Lcom/amazon/device/ads/AdRequest$LOISlot;

    return-object p0
.end method
