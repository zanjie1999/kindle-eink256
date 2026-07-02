.class Lcom/amazon/device/ads/SISRequest$SISRequestFactory;
.super Ljava/lang/Object;
.source "SISRequests.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/SISRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SISRequestFactory"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createDeviceRequest(Lcom/amazon/device/ads/SISRequest$SISDeviceRequestType;Lcom/amazon/device/ads/AdvertisingIdentifier;)Lcom/amazon/device/ads/SISDeviceRequest;
    .locals 2

    .line 74
    sget-object v0, Lcom/amazon/device/ads/SISRequest$1;->$SwitchMap$com$amazon$device$ads$SISRequest$SISDeviceRequestType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 77
    new-instance p1, Lcom/amazon/device/ads/SISUpdateDeviceInfoRequest;

    invoke-direct {p1, p2}, Lcom/amazon/device/ads/SISUpdateDeviceInfoRequest;-><init>(Lcom/amazon/device/ads/AdvertisingIdentifier;)V

    return-object p1

    .line 79
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SISRequestType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not a SISDeviceRequest"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 76
    :cond_1
    new-instance p1, Lcom/amazon/device/ads/SISGenerateDIDRequest;

    invoke-direct {p1, p2}, Lcom/amazon/device/ads/SISGenerateDIDRequest;-><init>(Lcom/amazon/device/ads/AdvertisingIdentifier;)V

    return-object p1
.end method

.method public createRegisterEventRequest(Lcom/amazon/device/ads/AdvertisingIdentifier$Info;Lorg/json/JSONArray;)Lcom/amazon/device/ads/SISRegisterEventRequest;
    .locals 1

    .line 85
    new-instance v0, Lcom/amazon/device/ads/SISRegisterEventRequest;

    invoke-direct {v0, p1, p2}, Lcom/amazon/device/ads/SISRegisterEventRequest;-><init>(Lcom/amazon/device/ads/AdvertisingIdentifier$Info;Lorg/json/JSONArray;)V

    return-object v0
.end method
