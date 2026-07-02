.class public final enum Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;
.super Ljava/lang/Enum;
.source "DeviceEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;

.field public static final enum CUSTOM_APPLICATION_UPDATE:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;

.field public static final enum DEVICE_PROVISIONING_ERROR:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;

.field public static final enum DISCONNECTED:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;

.field public static final enum MESSAGE_PROCESSING_EXCEPTION:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;

.field public static final enum NETWORK_SCAN_COMPLETE:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;

.field public static final enum NETWORK_STATE_UPDATED:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;

.field public static final enum PROVISIONING_DONE_FAILURE:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;

.field public static final enum PROVISIONING_DONE_SUCCESS:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;

.field public static final enum REGISTRATION_STATE_UPDATED:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;


# instance fields
.field private final mEventString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 6
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;

    const/4 v1, 0x0

    const-string v2, "NETWORK_STATE_UPDATED"

    invoke-direct {v0, v2, v1, v2}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;->NETWORK_STATE_UPDATED:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;

    .line 8
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;

    const/4 v2, 0x1

    const-string v3, "NETWORK_SCAN_COMPLETE"

    invoke-direct {v0, v3, v2, v3}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;->NETWORK_SCAN_COMPLETE:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;

    .line 10
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;

    const/4 v3, 0x2

    const-string v4, "REGISTRATION_STATE_UPDATED"

    invoke-direct {v0, v4, v3, v4}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;->REGISTRATION_STATE_UPDATED:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;

    .line 12
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;

    const/4 v4, 0x3

    const-string v5, "PROVISIONING_DONE_SUCCESS"

    invoke-direct {v0, v5, v4, v5}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;->PROVISIONING_DONE_SUCCESS:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;

    .line 14
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;

    const/4 v5, 0x4

    const-string v6, "PROVISIONING_DONE_FAILURE"

    invoke-direct {v0, v6, v5, v6}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;->PROVISIONING_DONE_FAILURE:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;

    .line 16
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;

    const/4 v6, 0x5

    const-string v7, "DISCONNECTED"

    invoke-direct {v0, v7, v6, v7}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;->DISCONNECTED:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;

    .line 18
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;

    const/4 v7, 0x6

    const-string v8, "CUSTOM_APPLICATION_UPDATE"

    invoke-direct {v0, v8, v7, v8}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;->CUSTOM_APPLICATION_UPDATE:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;

    .line 20
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;

    const/4 v8, 0x7

    const-string v9, "DEVICE_PROVISIONING_ERROR"

    invoke-direct {v0, v9, v8, v9}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;->DEVICE_PROVISIONING_ERROR:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;

    .line 22
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;

    const/16 v9, 0x8

    const-string v10, "MESSAGE_PROCESSING_EXCEPTION"

    invoke-direct {v0, v10, v9, v10}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;->MESSAGE_PROCESSING_EXCEPTION:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;

    const/16 v10, 0x9

    new-array v10, v10, [Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;

    .line 4
    sget-object v11, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;->NETWORK_STATE_UPDATED:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;

    aput-object v11, v10, v1

    sget-object v1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;->NETWORK_SCAN_COMPLETE:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;

    aput-object v1, v10, v2

    sget-object v1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;->REGISTRATION_STATE_UPDATED:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;

    aput-object v1, v10, v3

    sget-object v1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;->PROVISIONING_DONE_SUCCESS:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;

    aput-object v1, v10, v4

    sget-object v1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;->PROVISIONING_DONE_FAILURE:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;

    aput-object v1, v10, v5

    sget-object v1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;->DISCONNECTED:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;

    aput-object v1, v10, v6

    sget-object v1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;->CUSTOM_APPLICATION_UPDATE:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;

    aput-object v1, v10, v7

    sget-object v1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;->DEVICE_PROVISIONING_ERROR:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;

    aput-object v1, v10, v8

    aput-object v0, v10, v9

    sput-object v10, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;->$VALUES:[Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;

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

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    iput-object p3, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;->mEventString:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;
    .locals 1

    .line 4
    const-class v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;

    return-object p0
.end method

.method public static values()[Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;
    .locals 1

    .line 4
    sget-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;->$VALUES:[Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;

    invoke-virtual {v0}, [Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;

    return-object v0
.end method
