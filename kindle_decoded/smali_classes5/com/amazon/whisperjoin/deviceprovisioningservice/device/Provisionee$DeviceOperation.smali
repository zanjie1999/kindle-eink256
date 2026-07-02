.class public final enum Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;
.super Ljava/lang/Enum;
.source "Provisionee.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "DeviceOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;

.field public static final enum COMPLETE_PROVISIONING:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;

.field public static final enum CONNECT:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;

.field public static final enum GET_CONNECTION_INFO:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;

.field public static final enum GET_DEVICE_DETAILS:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;

.field public static final enum GET_REGISTRATION_STATUS:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;

.field public static final enum GET_VISIBLE_NETWORKS:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;

.field public static final enum INITIATE_WIFI_SCAN:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;

.field public static final enum SAVE_CONFIG_MAP:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;

.field public static final enum SAVE_NETWORK:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;

.field public static final enum SET_REGISTRATION_TOKEN:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;

.field public static final enum START_PROVISIONING:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;


# instance fields
.field private final mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 11
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;

    const/4 v1, 0x0

    const-string v2, "CONNECT"

    const-string v3, "Connect"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;->CONNECT:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;

    .line 12
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;

    const/4 v2, 0x1

    const-string v3, "START_PROVISIONING"

    const-string v4, "Start Provisioning"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;->START_PROVISIONING:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;

    .line 13
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;

    const/4 v3, 0x2

    const-string v4, "COMPLETE_PROVISIONING"

    const-string v5, "Complete Provisioning"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;->COMPLETE_PROVISIONING:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;

    .line 14
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;

    const/4 v4, 0x3

    const-string v5, "GET_DEVICE_DETAILS"

    const-string v6, "Get Device Details"

    invoke-direct {v0, v5, v4, v6}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;->GET_DEVICE_DETAILS:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;

    .line 15
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;

    const/4 v5, 0x4

    const-string v6, "GET_VISIBLE_NETWORKS"

    const-string v7, "Get Visible Networks"

    invoke-direct {v0, v6, v5, v7}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;->GET_VISIBLE_NETWORKS:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;

    .line 16
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;

    const/4 v6, 0x5

    const-string v7, "INITIATE_WIFI_SCAN"

    const-string v8, "Initiate Wifi Scan"

    invoke-direct {v0, v7, v6, v8}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;->INITIATE_WIFI_SCAN:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;

    .line 17
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;

    const/4 v7, 0x6

    const-string v8, "SAVE_NETWORK"

    const-string v9, "Save Networks"

    invoke-direct {v0, v8, v7, v9}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;->SAVE_NETWORK:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;

    .line 18
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;

    const/4 v8, 0x7

    const-string v9, "SET_REGISTRATION_TOKEN"

    const-string v10, "Save Registration Token"

    invoke-direct {v0, v9, v8, v10}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;->SET_REGISTRATION_TOKEN:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;

    .line 19
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;

    const/16 v9, 0x8

    const-string v10, "SAVE_CONFIG_MAP"

    const-string v11, "Save Configuration Map"

    invoke-direct {v0, v10, v9, v11}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;->SAVE_CONFIG_MAP:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;

    .line 20
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;

    const/16 v10, 0x9

    const-string v11, "GET_CONNECTION_INFO"

    const-string v12, "Get Connection Info"

    invoke-direct {v0, v11, v10, v12}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;->GET_CONNECTION_INFO:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;

    .line 21
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;

    const/16 v11, 0xa

    const-string v12, "GET_REGISTRATION_STATUS"

    const-string v13, "Get Registration Status"

    invoke-direct {v0, v12, v11, v13}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;->GET_REGISTRATION_STATUS:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;

    const/16 v12, 0xb

    new-array v12, v12, [Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;

    .line 10
    sget-object v13, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;->CONNECT:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;

    aput-object v13, v12, v1

    sget-object v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;->START_PROVISIONING:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;

    aput-object v1, v12, v2

    sget-object v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;->COMPLETE_PROVISIONING:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;

    aput-object v1, v12, v3

    sget-object v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;->GET_DEVICE_DETAILS:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;

    aput-object v1, v12, v4

    sget-object v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;->GET_VISIBLE_NETWORKS:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;

    aput-object v1, v12, v5

    sget-object v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;->INITIATE_WIFI_SCAN:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;

    aput-object v1, v12, v6

    sget-object v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;->SAVE_NETWORK:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;

    aput-object v1, v12, v7

    sget-object v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;->SET_REGISTRATION_TOKEN:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;

    aput-object v1, v12, v8

    sget-object v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;->SAVE_CONFIG_MAP:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;

    aput-object v1, v12, v9

    sget-object v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;->GET_CONNECTION_INFO:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;

    aput-object v1, v12, v10

    aput-object v0, v12, v11

    sput-object v12, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;->$VALUES:[Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26
    iput-object p3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;->mName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;
    .locals 1

    .line 10
    const-class v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;

    return-object p0
.end method

.method public static values()[Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;
    .locals 1

    .line 10
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;->$VALUES:[Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;

    invoke-virtual {v0}, [Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;

    return-object v0
.end method


# virtual methods
.method public getOpName()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;->mName:Ljava/lang/String;

    return-object v0
.end method
