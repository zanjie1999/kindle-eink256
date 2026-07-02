.class public final enum Lcom/amazon/whisperbridge/constants/Command;
.super Ljava/lang/Enum;
.source "Command.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/whisperbridge/constants/Command;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/whisperbridge/constants/Command;

.field public static final enum COMPLETE_PROVISIONING:Lcom/amazon/whisperbridge/constants/Command;

.field public static final enum CONNECT_AND_SAVE_PROVIDED_NETWORK:Lcom/amazon/whisperbridge/constants/Command;

.field public static final enum CONNECT_TO_PROVIDED_NETWORK:Lcom/amazon/whisperbridge/constants/Command;

.field public static final enum DATA:Lcom/amazon/whisperbridge/constants/Command;

.field public static final enum DELETE_ALL_NETWORKS:Lcom/amazon/whisperbridge/constants/Command;

.field public static final enum DELETE_CONFIGURATION:Lcom/amazon/whisperbridge/constants/Command;

.field public static final enum DELETE_CONFIGURATION_SET:Lcom/amazon/whisperbridge/constants/Command;

.field public static final enum DELETE_NETWORK:Lcom/amazon/whisperbridge/constants/Command;

.field public static final enum DELETE_REGISTRATION_CONFIGURATION:Lcom/amazon/whisperbridge/constants/Command;

.field public static final enum DELETE_REGISTRATION_CONFIGURATIONS:Lcom/amazon/whisperbridge/constants/Command;

.field public static final enum EXCHANGE_AUTHENTICATED_ECDHE_KEY:Lcom/amazon/whisperbridge/constants/Command;

.field public static final enum EXCHANGE_ECDHE_KEY:Lcom/amazon/whisperbridge/constants/Command;

.field public static final enum GET_CONFIGURATION:Lcom/amazon/whisperbridge/constants/Command;

.field public static final enum GET_CONNECTION_STATUS:Lcom/amazon/whisperbridge/constants/Command;

.field public static final enum GET_DEVICE_DETAILS:Lcom/amazon/whisperbridge/constants/Command;

.field public static final enum GET_NOTIFICATION_EVENT_DATA:Lcom/amazon/whisperbridge/constants/Command;

.field public static final enum GET_PROVISIONING_FAILURE_CAUSE:Lcom/amazon/whisperbridge/constants/Command;

.field public static final enum GET_REGISTRATION_INFORMATION:Lcom/amazon/whisperbridge/constants/Command;

.field public static final enum GET_SUPPORTED_NOTIFICATIONS:Lcom/amazon/whisperbridge/constants/Command;

.field public static final enum GET_VISIBLE_NETWORKS:Lcom/amazon/whisperbridge/constants/Command;

.field public static final enum JPAKE_CERT_VALIDATION:Lcom/amazon/whisperbridge/constants/Command;

.field public static final enum JPAKE_ROUND1:Lcom/amazon/whisperbridge/constants/Command;

.field public static final enum JPAKE_ROUND2:Lcom/amazon/whisperbridge/constants/Command;

.field public static final enum JPAKE_ROUND3:Lcom/amazon/whisperbridge/constants/Command;

.field public static final enum PING:Lcom/amazon/whisperbridge/constants/Command;

.field public static final enum SAVE_NETWORK:Lcom/amazon/whisperbridge/constants/Command;

.field public static final enum SET_CONFIGURATION:Lcom/amazon/whisperbridge/constants/Command;

.field public static final enum SET_REGISTRATION_CONFIGURATION:Lcom/amazon/whisperbridge/constants/Command;

.field public static final enum START_NETWORK_SCAN:Lcom/amazon/whisperbridge/constants/Command;

.field public static final enum STOP_PROVISIONING:Lcom/amazon/whisperbridge/constants/Command;

.field public static final enum WILL_SEND_EVENTS:Lcom/amazon/whisperbridge/constants/Command;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 8
    new-instance v0, Lcom/amazon/whisperbridge/constants/Command;

    const/4 v1, 0x0

    const-string v2, "EXCHANGE_ECDHE_KEY"

    invoke-direct {v0, v2, v1}, Lcom/amazon/whisperbridge/constants/Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperbridge/constants/Command;->EXCHANGE_ECDHE_KEY:Lcom/amazon/whisperbridge/constants/Command;

    .line 9
    new-instance v0, Lcom/amazon/whisperbridge/constants/Command;

    const/4 v2, 0x1

    const-string v3, "EXCHANGE_AUTHENTICATED_ECDHE_KEY"

    invoke-direct {v0, v3, v2}, Lcom/amazon/whisperbridge/constants/Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperbridge/constants/Command;->EXCHANGE_AUTHENTICATED_ECDHE_KEY:Lcom/amazon/whisperbridge/constants/Command;

    .line 10
    new-instance v0, Lcom/amazon/whisperbridge/constants/Command;

    const/4 v3, 0x2

    const-string v4, "GET_VISIBLE_NETWORKS"

    invoke-direct {v0, v4, v3}, Lcom/amazon/whisperbridge/constants/Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperbridge/constants/Command;->GET_VISIBLE_NETWORKS:Lcom/amazon/whisperbridge/constants/Command;

    .line 12
    new-instance v0, Lcom/amazon/whisperbridge/constants/Command;

    const/4 v4, 0x3

    const-string v5, "CONNECT_TO_PROVIDED_NETWORK"

    invoke-direct {v0, v5, v4}, Lcom/amazon/whisperbridge/constants/Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperbridge/constants/Command;->CONNECT_TO_PROVIDED_NETWORK:Lcom/amazon/whisperbridge/constants/Command;

    .line 14
    new-instance v0, Lcom/amazon/whisperbridge/constants/Command;

    const/4 v5, 0x4

    const-string v6, "DATA"

    invoke-direct {v0, v6, v5}, Lcom/amazon/whisperbridge/constants/Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperbridge/constants/Command;->DATA:Lcom/amazon/whisperbridge/constants/Command;

    .line 16
    new-instance v0, Lcom/amazon/whisperbridge/constants/Command;

    const/4 v6, 0x5

    const-string v7, "GET_DEVICE_DETAILS"

    invoke-direct {v0, v7, v6}, Lcom/amazon/whisperbridge/constants/Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperbridge/constants/Command;->GET_DEVICE_DETAILS:Lcom/amazon/whisperbridge/constants/Command;

    .line 18
    new-instance v0, Lcom/amazon/whisperbridge/constants/Command;

    const/4 v7, 0x6

    const-string v8, "PING"

    invoke-direct {v0, v8, v7}, Lcom/amazon/whisperbridge/constants/Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperbridge/constants/Command;->PING:Lcom/amazon/whisperbridge/constants/Command;

    .line 20
    new-instance v0, Lcom/amazon/whisperbridge/constants/Command;

    const/4 v8, 0x7

    const-string v9, "START_NETWORK_SCAN"

    invoke-direct {v0, v9, v8}, Lcom/amazon/whisperbridge/constants/Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperbridge/constants/Command;->START_NETWORK_SCAN:Lcom/amazon/whisperbridge/constants/Command;

    .line 22
    new-instance v0, Lcom/amazon/whisperbridge/constants/Command;

    const/16 v9, 0x8

    const-string v10, "SAVE_NETWORK"

    invoke-direct {v0, v10, v9}, Lcom/amazon/whisperbridge/constants/Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperbridge/constants/Command;->SAVE_NETWORK:Lcom/amazon/whisperbridge/constants/Command;

    .line 24
    new-instance v0, Lcom/amazon/whisperbridge/constants/Command;

    const/16 v10, 0x9

    const-string v11, "DELETE_NETWORK"

    invoke-direct {v0, v11, v10}, Lcom/amazon/whisperbridge/constants/Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperbridge/constants/Command;->DELETE_NETWORK:Lcom/amazon/whisperbridge/constants/Command;

    .line 26
    new-instance v0, Lcom/amazon/whisperbridge/constants/Command;

    const/16 v11, 0xa

    const-string v12, "DELETE_ALL_NETWORKS"

    invoke-direct {v0, v12, v11}, Lcom/amazon/whisperbridge/constants/Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperbridge/constants/Command;->DELETE_ALL_NETWORKS:Lcom/amazon/whisperbridge/constants/Command;

    .line 28
    new-instance v0, Lcom/amazon/whisperbridge/constants/Command;

    const/16 v12, 0xb

    const-string v13, "GET_CONNECTION_STATUS"

    invoke-direct {v0, v13, v12}, Lcom/amazon/whisperbridge/constants/Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperbridge/constants/Command;->GET_CONNECTION_STATUS:Lcom/amazon/whisperbridge/constants/Command;

    .line 30
    new-instance v0, Lcom/amazon/whisperbridge/constants/Command;

    const/16 v13, 0xc

    const-string v14, "SET_CONFIGURATION"

    invoke-direct {v0, v14, v13}, Lcom/amazon/whisperbridge/constants/Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperbridge/constants/Command;->SET_CONFIGURATION:Lcom/amazon/whisperbridge/constants/Command;

    .line 32
    new-instance v0, Lcom/amazon/whisperbridge/constants/Command;

    const/16 v14, 0xd

    const-string v15, "GET_CONFIGURATION"

    invoke-direct {v0, v15, v14}, Lcom/amazon/whisperbridge/constants/Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperbridge/constants/Command;->GET_CONFIGURATION:Lcom/amazon/whisperbridge/constants/Command;

    .line 34
    new-instance v0, Lcom/amazon/whisperbridge/constants/Command;

    const/16 v15, 0xe

    const-string v14, "DELETE_CONFIGURATION"

    invoke-direct {v0, v14, v15}, Lcom/amazon/whisperbridge/constants/Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperbridge/constants/Command;->DELETE_CONFIGURATION:Lcom/amazon/whisperbridge/constants/Command;

    .line 36
    new-instance v0, Lcom/amazon/whisperbridge/constants/Command;

    const/16 v14, 0xf

    const-string v15, "DELETE_CONFIGURATION_SET"

    invoke-direct {v0, v15, v14}, Lcom/amazon/whisperbridge/constants/Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperbridge/constants/Command;->DELETE_CONFIGURATION_SET:Lcom/amazon/whisperbridge/constants/Command;

    .line 38
    new-instance v0, Lcom/amazon/whisperbridge/constants/Command;

    const/16 v15, 0x10

    const-string v14, "SET_REGISTRATION_CONFIGURATION"

    invoke-direct {v0, v14, v15}, Lcom/amazon/whisperbridge/constants/Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperbridge/constants/Command;->SET_REGISTRATION_CONFIGURATION:Lcom/amazon/whisperbridge/constants/Command;

    .line 40
    new-instance v0, Lcom/amazon/whisperbridge/constants/Command;

    const/16 v14, 0x11

    const-string v15, "GET_REGISTRATION_INFORMATION"

    invoke-direct {v0, v15, v14}, Lcom/amazon/whisperbridge/constants/Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperbridge/constants/Command;->GET_REGISTRATION_INFORMATION:Lcom/amazon/whisperbridge/constants/Command;

    .line 42
    new-instance v0, Lcom/amazon/whisperbridge/constants/Command;

    const/16 v15, 0x12

    const-string v14, "DELETE_REGISTRATION_CONFIGURATION"

    invoke-direct {v0, v14, v15}, Lcom/amazon/whisperbridge/constants/Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperbridge/constants/Command;->DELETE_REGISTRATION_CONFIGURATION:Lcom/amazon/whisperbridge/constants/Command;

    .line 44
    new-instance v0, Lcom/amazon/whisperbridge/constants/Command;

    const/16 v14, 0x13

    const-string v15, "DELETE_REGISTRATION_CONFIGURATIONS"

    invoke-direct {v0, v15, v14}, Lcom/amazon/whisperbridge/constants/Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperbridge/constants/Command;->DELETE_REGISTRATION_CONFIGURATIONS:Lcom/amazon/whisperbridge/constants/Command;

    .line 46
    new-instance v0, Lcom/amazon/whisperbridge/constants/Command;

    const/16 v15, 0x14

    const-string v14, "WILL_SEND_EVENTS"

    invoke-direct {v0, v14, v15}, Lcom/amazon/whisperbridge/constants/Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperbridge/constants/Command;->WILL_SEND_EVENTS:Lcom/amazon/whisperbridge/constants/Command;

    .line 48
    new-instance v0, Lcom/amazon/whisperbridge/constants/Command;

    const/16 v14, 0x15

    const-string v15, "CONNECT_AND_SAVE_PROVIDED_NETWORK"

    invoke-direct {v0, v15, v14}, Lcom/amazon/whisperbridge/constants/Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperbridge/constants/Command;->CONNECT_AND_SAVE_PROVIDED_NETWORK:Lcom/amazon/whisperbridge/constants/Command;

    .line 50
    new-instance v0, Lcom/amazon/whisperbridge/constants/Command;

    const-string v15, "STOP_PROVISIONING"

    const/16 v14, 0x16

    invoke-direct {v0, v15, v14}, Lcom/amazon/whisperbridge/constants/Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperbridge/constants/Command;->STOP_PROVISIONING:Lcom/amazon/whisperbridge/constants/Command;

    .line 52
    new-instance v0, Lcom/amazon/whisperbridge/constants/Command;

    const-string v14, "COMPLETE_PROVISIONING"

    const/16 v15, 0x17

    invoke-direct {v0, v14, v15}, Lcom/amazon/whisperbridge/constants/Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperbridge/constants/Command;->COMPLETE_PROVISIONING:Lcom/amazon/whisperbridge/constants/Command;

    .line 54
    new-instance v0, Lcom/amazon/whisperbridge/constants/Command;

    const-string v14, "GET_SUPPORTED_NOTIFICATIONS"

    const/16 v15, 0x18

    invoke-direct {v0, v14, v15}, Lcom/amazon/whisperbridge/constants/Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperbridge/constants/Command;->GET_SUPPORTED_NOTIFICATIONS:Lcom/amazon/whisperbridge/constants/Command;

    .line 56
    new-instance v0, Lcom/amazon/whisperbridge/constants/Command;

    const-string v14, "GET_NOTIFICATION_EVENT_DATA"

    const/16 v15, 0x19

    invoke-direct {v0, v14, v15}, Lcom/amazon/whisperbridge/constants/Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperbridge/constants/Command;->GET_NOTIFICATION_EVENT_DATA:Lcom/amazon/whisperbridge/constants/Command;

    .line 58
    new-instance v0, Lcom/amazon/whisperbridge/constants/Command;

    const-string v14, "JPAKE_ROUND1"

    const/16 v15, 0x1a

    invoke-direct {v0, v14, v15}, Lcom/amazon/whisperbridge/constants/Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperbridge/constants/Command;->JPAKE_ROUND1:Lcom/amazon/whisperbridge/constants/Command;

    .line 59
    new-instance v0, Lcom/amazon/whisperbridge/constants/Command;

    const-string v14, "JPAKE_ROUND2"

    const/16 v15, 0x1b

    invoke-direct {v0, v14, v15}, Lcom/amazon/whisperbridge/constants/Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperbridge/constants/Command;->JPAKE_ROUND2:Lcom/amazon/whisperbridge/constants/Command;

    .line 60
    new-instance v0, Lcom/amazon/whisperbridge/constants/Command;

    const-string v14, "JPAKE_ROUND3"

    const/16 v15, 0x1c

    invoke-direct {v0, v14, v15}, Lcom/amazon/whisperbridge/constants/Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperbridge/constants/Command;->JPAKE_ROUND3:Lcom/amazon/whisperbridge/constants/Command;

    .line 61
    new-instance v0, Lcom/amazon/whisperbridge/constants/Command;

    const-string v14, "JPAKE_CERT_VALIDATION"

    const/16 v15, 0x1d

    invoke-direct {v0, v14, v15}, Lcom/amazon/whisperbridge/constants/Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperbridge/constants/Command;->JPAKE_CERT_VALIDATION:Lcom/amazon/whisperbridge/constants/Command;

    .line 63
    new-instance v0, Lcom/amazon/whisperbridge/constants/Command;

    const-string v14, "GET_PROVISIONING_FAILURE_CAUSE"

    const/16 v15, 0x1e

    invoke-direct {v0, v14, v15}, Lcom/amazon/whisperbridge/constants/Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperbridge/constants/Command;->GET_PROVISIONING_FAILURE_CAUSE:Lcom/amazon/whisperbridge/constants/Command;

    const/16 v14, 0x1f

    new-array v14, v14, [Lcom/amazon/whisperbridge/constants/Command;

    .line 6
    sget-object v15, Lcom/amazon/whisperbridge/constants/Command;->EXCHANGE_ECDHE_KEY:Lcom/amazon/whisperbridge/constants/Command;

    aput-object v15, v14, v1

    sget-object v1, Lcom/amazon/whisperbridge/constants/Command;->EXCHANGE_AUTHENTICATED_ECDHE_KEY:Lcom/amazon/whisperbridge/constants/Command;

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/whisperbridge/constants/Command;->GET_VISIBLE_NETWORKS:Lcom/amazon/whisperbridge/constants/Command;

    aput-object v1, v14, v3

    sget-object v1, Lcom/amazon/whisperbridge/constants/Command;->CONNECT_TO_PROVIDED_NETWORK:Lcom/amazon/whisperbridge/constants/Command;

    aput-object v1, v14, v4

    sget-object v1, Lcom/amazon/whisperbridge/constants/Command;->DATA:Lcom/amazon/whisperbridge/constants/Command;

    aput-object v1, v14, v5

    sget-object v1, Lcom/amazon/whisperbridge/constants/Command;->GET_DEVICE_DETAILS:Lcom/amazon/whisperbridge/constants/Command;

    aput-object v1, v14, v6

    sget-object v1, Lcom/amazon/whisperbridge/constants/Command;->PING:Lcom/amazon/whisperbridge/constants/Command;

    aput-object v1, v14, v7

    sget-object v1, Lcom/amazon/whisperbridge/constants/Command;->START_NETWORK_SCAN:Lcom/amazon/whisperbridge/constants/Command;

    aput-object v1, v14, v8

    sget-object v1, Lcom/amazon/whisperbridge/constants/Command;->SAVE_NETWORK:Lcom/amazon/whisperbridge/constants/Command;

    aput-object v1, v14, v9

    sget-object v1, Lcom/amazon/whisperbridge/constants/Command;->DELETE_NETWORK:Lcom/amazon/whisperbridge/constants/Command;

    aput-object v1, v14, v10

    sget-object v1, Lcom/amazon/whisperbridge/constants/Command;->DELETE_ALL_NETWORKS:Lcom/amazon/whisperbridge/constants/Command;

    aput-object v1, v14, v11

    sget-object v1, Lcom/amazon/whisperbridge/constants/Command;->GET_CONNECTION_STATUS:Lcom/amazon/whisperbridge/constants/Command;

    aput-object v1, v14, v12

    sget-object v1, Lcom/amazon/whisperbridge/constants/Command;->SET_CONFIGURATION:Lcom/amazon/whisperbridge/constants/Command;

    aput-object v1, v14, v13

    sget-object v1, Lcom/amazon/whisperbridge/constants/Command;->GET_CONFIGURATION:Lcom/amazon/whisperbridge/constants/Command;

    const/16 v2, 0xd

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/whisperbridge/constants/Command;->DELETE_CONFIGURATION:Lcom/amazon/whisperbridge/constants/Command;

    const/16 v2, 0xe

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/whisperbridge/constants/Command;->DELETE_CONFIGURATION_SET:Lcom/amazon/whisperbridge/constants/Command;

    const/16 v2, 0xf

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/whisperbridge/constants/Command;->SET_REGISTRATION_CONFIGURATION:Lcom/amazon/whisperbridge/constants/Command;

    const/16 v2, 0x10

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/whisperbridge/constants/Command;->GET_REGISTRATION_INFORMATION:Lcom/amazon/whisperbridge/constants/Command;

    const/16 v2, 0x11

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/whisperbridge/constants/Command;->DELETE_REGISTRATION_CONFIGURATION:Lcom/amazon/whisperbridge/constants/Command;

    const/16 v2, 0x12

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/whisperbridge/constants/Command;->DELETE_REGISTRATION_CONFIGURATIONS:Lcom/amazon/whisperbridge/constants/Command;

    const/16 v2, 0x13

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/whisperbridge/constants/Command;->WILL_SEND_EVENTS:Lcom/amazon/whisperbridge/constants/Command;

    const/16 v2, 0x14

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/whisperbridge/constants/Command;->CONNECT_AND_SAVE_PROVIDED_NETWORK:Lcom/amazon/whisperbridge/constants/Command;

    const/16 v2, 0x15

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/whisperbridge/constants/Command;->STOP_PROVISIONING:Lcom/amazon/whisperbridge/constants/Command;

    const/16 v2, 0x16

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/whisperbridge/constants/Command;->COMPLETE_PROVISIONING:Lcom/amazon/whisperbridge/constants/Command;

    const/16 v2, 0x17

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/whisperbridge/constants/Command;->GET_SUPPORTED_NOTIFICATIONS:Lcom/amazon/whisperbridge/constants/Command;

    const/16 v2, 0x18

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/whisperbridge/constants/Command;->GET_NOTIFICATION_EVENT_DATA:Lcom/amazon/whisperbridge/constants/Command;

    const/16 v2, 0x19

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/whisperbridge/constants/Command;->JPAKE_ROUND1:Lcom/amazon/whisperbridge/constants/Command;

    const/16 v2, 0x1a

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/whisperbridge/constants/Command;->JPAKE_ROUND2:Lcom/amazon/whisperbridge/constants/Command;

    const/16 v2, 0x1b

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/whisperbridge/constants/Command;->JPAKE_ROUND3:Lcom/amazon/whisperbridge/constants/Command;

    const/16 v2, 0x1c

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/whisperbridge/constants/Command;->JPAKE_CERT_VALIDATION:Lcom/amazon/whisperbridge/constants/Command;

    const/16 v2, 0x1d

    aput-object v1, v14, v2

    const/16 v1, 0x1e

    aput-object v0, v14, v1

    sput-object v14, Lcom/amazon/whisperbridge/constants/Command;->$VALUES:[Lcom/amazon/whisperbridge/constants/Command;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/whisperbridge/constants/Command;
    .locals 1

    .line 6
    const-class v0, Lcom/amazon/whisperbridge/constants/Command;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/whisperbridge/constants/Command;

    return-object p0
.end method

.method public static values()[Lcom/amazon/whisperbridge/constants/Command;
    .locals 1

    .line 6
    sget-object v0, Lcom/amazon/whisperbridge/constants/Command;->$VALUES:[Lcom/amazon/whisperbridge/constants/Command;

    invoke-virtual {v0}, [Lcom/amazon/whisperbridge/constants/Command;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/whisperbridge/constants/Command;

    return-object v0
.end method
