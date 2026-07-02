.class final enum Lcom/amazon/device/ads/SISRequest$SISDeviceRequestType;
.super Ljava/lang/Enum;
.source "SISRequests.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/SISRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "SISDeviceRequestType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/device/ads/SISRequest$SISDeviceRequestType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/device/ads/SISRequest$SISDeviceRequestType;

.field public static final enum GENERATE_DID:Lcom/amazon/device/ads/SISRequest$SISDeviceRequestType;

.field public static final enum UPDATE_DEVICE_INFO:Lcom/amazon/device/ads/SISRequest$SISDeviceRequestType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 91
    new-instance v0, Lcom/amazon/device/ads/SISRequest$SISDeviceRequestType;

    const/4 v1, 0x0

    const-string v2, "GENERATE_DID"

    invoke-direct {v0, v2, v1}, Lcom/amazon/device/ads/SISRequest$SISDeviceRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/ads/SISRequest$SISDeviceRequestType;->GENERATE_DID:Lcom/amazon/device/ads/SISRequest$SISDeviceRequestType;

    .line 92
    new-instance v0, Lcom/amazon/device/ads/SISRequest$SISDeviceRequestType;

    const/4 v2, 0x1

    const-string v3, "UPDATE_DEVICE_INFO"

    invoke-direct {v0, v3, v2}, Lcom/amazon/device/ads/SISRequest$SISDeviceRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/ads/SISRequest$SISDeviceRequestType;->UPDATE_DEVICE_INFO:Lcom/amazon/device/ads/SISRequest$SISDeviceRequestType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/device/ads/SISRequest$SISDeviceRequestType;

    .line 89
    sget-object v4, Lcom/amazon/device/ads/SISRequest$SISDeviceRequestType;->GENERATE_DID:Lcom/amazon/device/ads/SISRequest$SISDeviceRequestType;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/device/ads/SISRequest$SISDeviceRequestType;->$VALUES:[Lcom/amazon/device/ads/SISRequest$SISDeviceRequestType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 89
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/device/ads/SISRequest$SISDeviceRequestType;
    .locals 1

    .line 89
    const-class v0, Lcom/amazon/device/ads/SISRequest$SISDeviceRequestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/device/ads/SISRequest$SISDeviceRequestType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/device/ads/SISRequest$SISDeviceRequestType;
    .locals 1

    .line 89
    sget-object v0, Lcom/amazon/device/ads/SISRequest$SISDeviceRequestType;->$VALUES:[Lcom/amazon/device/ads/SISRequest$SISDeviceRequestType;

    invoke-virtual {v0}, [Lcom/amazon/device/ads/SISRequest$SISDeviceRequestType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/device/ads/SISRequest$SISDeviceRequestType;

    return-object v0
.end method
