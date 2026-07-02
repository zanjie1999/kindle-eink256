.class public final enum Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;
.super Ljava/lang/Enum;
.source "ErrorCodes.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

.field public static final enum NO_ASSOCIATED_DEVICE_CREDENTIALS:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

.field public static final enum NO_CONFIGURED_NETWORKS:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

.field public static final enum PROVISIONING_DONE_FAILURE:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

.field public static final enum PROVISIONING_FAILURE_NETWORK_SYNC_TOKEN_INVALID:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

.field public static final enum PROVISIONING_FAILURE_NETWORK_SYNC_TOKEN_NOT_FOUND:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

.field public static final enum PROVISIONING_FAILURE_REGISTRATION_ERROR_FAILED_DESERIALIZATION:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

.field public static final enum PROVISIONING_FAILURE_WIFI_ERROR_FAILED_DESERIALIZATION:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

.field public static final enum PROVISIONING_VERIFICATION_TIMEOUT:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

.field public static final enum REG_ERROR_FAILED_OTHER:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

.field public static final enum REG_ERROR_FAILED_TO_GET_TOKEN_FROM_MAP:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

.field public static final enum REG_ERROR_SERVER_ERROR:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

.field public static final enum REG_ERROR_SERVER_NOT_REACHABLE:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

.field public static final enum REG_ERROR_TOKEN_EXPIRED:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

.field public static final enum REG_ERROR_TOKEN_INVALID:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

.field public static final enum REG_ERROR_UNKNOWN_ERROR:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

.field public static final enum UNKNOWN_PROVISIONING_ERROR:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

.field private static final VALUES:[Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

.field public static final enum WIFI_CONN_ERROR_AP_NOT_FOUND:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

.field public static final enum WIFI_CONN_ERROR_BAD_PSK:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

.field public static final enum WIFI_CONN_ERROR_CAPTIVE_PORTAL:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

.field public static final enum WIFI_CONN_ERROR_INTERNAL_ERROR:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

.field public static final enum WIFI_CONN_ERROR_LIMITED_CONNECTIVITY:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

.field public static final enum WIFI_CONN_UNKNOWN_ERROR:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 642
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN_PROVISIONING_ERROR"

    invoke-direct {v0, v2, v1, v1}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;->UNKNOWN_PROVISIONING_ERROR:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

    .line 646
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

    const/4 v2, 0x1

    const-string v3, "NO_CONFIGURED_NETWORKS"

    invoke-direct {v0, v3, v2, v2}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;->NO_CONFIGURED_NETWORKS:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

    .line 650
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

    const/4 v3, 0x2

    const-string v4, "WIFI_CONN_ERROR_BAD_PSK"

    invoke-direct {v0, v4, v3, v3}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;->WIFI_CONN_ERROR_BAD_PSK:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

    .line 654
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

    const/4 v4, 0x3

    const-string v5, "WIFI_CONN_ERROR_INTERNAL_ERROR"

    invoke-direct {v0, v5, v4, v4}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;->WIFI_CONN_ERROR_INTERNAL_ERROR:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

    .line 658
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

    const/4 v5, 0x4

    const-string v6, "WIFI_CONN_ERROR_CAPTIVE_PORTAL"

    invoke-direct {v0, v6, v5, v5}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;->WIFI_CONN_ERROR_CAPTIVE_PORTAL:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

    .line 662
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

    const/4 v6, 0x5

    const-string v7, "WIFI_CONN_ERROR_LIMITED_CONNECTIVITY"

    invoke-direct {v0, v7, v6, v6}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;->WIFI_CONN_ERROR_LIMITED_CONNECTIVITY:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

    .line 666
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

    const/4 v7, 0x6

    const-string v8, "WIFI_CONN_UNKNOWN_ERROR"

    invoke-direct {v0, v8, v7, v7}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;->WIFI_CONN_UNKNOWN_ERROR:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

    .line 670
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

    const/4 v8, 0x7

    const-string v9, "REG_ERROR_FAILED_TO_GET_TOKEN_FROM_MAP"

    invoke-direct {v0, v9, v8, v8}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;->REG_ERROR_FAILED_TO_GET_TOKEN_FROM_MAP:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

    .line 674
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

    const/16 v9, 0x8

    const-string v10, "REG_ERROR_TOKEN_INVALID"

    invoke-direct {v0, v10, v9, v9}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;->REG_ERROR_TOKEN_INVALID:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

    .line 678
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

    const/16 v10, 0x9

    const-string v11, "REG_ERROR_TOKEN_EXPIRED"

    invoke-direct {v0, v11, v10, v10}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;->REG_ERROR_TOKEN_EXPIRED:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

    .line 682
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

    const/16 v11, 0xa

    const-string v12, "REG_ERROR_SERVER_NOT_REACHABLE"

    invoke-direct {v0, v12, v11, v11}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;->REG_ERROR_SERVER_NOT_REACHABLE:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

    .line 686
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

    const/16 v12, 0xb

    const-string v13, "REG_ERROR_SERVER_ERROR"

    invoke-direct {v0, v13, v12, v12}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;->REG_ERROR_SERVER_ERROR:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

    .line 690
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

    const/16 v13, 0xc

    const-string v14, "REG_ERROR_FAILED_OTHER"

    invoke-direct {v0, v14, v13, v13}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;->REG_ERROR_FAILED_OTHER:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

    .line 694
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

    const/16 v14, 0xd

    const-string v15, "REG_ERROR_UNKNOWN_ERROR"

    invoke-direct {v0, v15, v14, v14}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;->REG_ERROR_UNKNOWN_ERROR:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

    .line 698
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

    const/16 v15, 0xe

    const-string v14, "PROVISIONING_DONE_FAILURE"

    invoke-direct {v0, v14, v15, v15}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;->PROVISIONING_DONE_FAILURE:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

    .line 702
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

    const/16 v14, 0xf

    const-string v15, "PROVISIONING_VERIFICATION_TIMEOUT"

    invoke-direct {v0, v15, v14, v14}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;->PROVISIONING_VERIFICATION_TIMEOUT:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

    .line 706
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

    const/16 v15, 0x10

    const-string v14, "WIFI_CONN_ERROR_AP_NOT_FOUND"

    invoke-direct {v0, v14, v15, v15}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;->WIFI_CONN_ERROR_AP_NOT_FOUND:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

    .line 710
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

    const/16 v14, 0x11

    const-string v15, "NO_ASSOCIATED_DEVICE_CREDENTIALS"

    invoke-direct {v0, v15, v14, v14}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;->NO_ASSOCIATED_DEVICE_CREDENTIALS:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

    .line 714
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

    const/16 v15, 0x12

    const-string v14, "PROVISIONING_FAILURE_REGISTRATION_ERROR_FAILED_DESERIALIZATION"

    invoke-direct {v0, v14, v15, v15}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;->PROVISIONING_FAILURE_REGISTRATION_ERROR_FAILED_DESERIALIZATION:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

    .line 718
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

    const/16 v14, 0x13

    const-string v15, "PROVISIONING_FAILURE_WIFI_ERROR_FAILED_DESERIALIZATION"

    invoke-direct {v0, v15, v14, v14}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;->PROVISIONING_FAILURE_WIFI_ERROR_FAILED_DESERIALIZATION:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

    .line 722
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

    const/16 v15, 0x14

    const-string v14, "PROVISIONING_FAILURE_NETWORK_SYNC_TOKEN_INVALID"

    const/16 v13, 0x18

    invoke-direct {v0, v14, v15, v13}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;->PROVISIONING_FAILURE_NETWORK_SYNC_TOKEN_INVALID:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

    .line 726
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

    const/16 v13, 0x15

    const-string v14, "PROVISIONING_FAILURE_NETWORK_SYNC_TOKEN_NOT_FOUND"

    const/16 v15, 0x19

    invoke-direct {v0, v14, v13, v15}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;->PROVISIONING_FAILURE_NETWORK_SYNC_TOKEN_NOT_FOUND:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

    const/16 v14, 0x16

    new-array v14, v14, [Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

    .line 637
    sget-object v15, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;->UNKNOWN_PROVISIONING_ERROR:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

    aput-object v15, v14, v1

    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;->NO_CONFIGURED_NETWORKS:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;->WIFI_CONN_ERROR_BAD_PSK:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

    aput-object v1, v14, v3

    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;->WIFI_CONN_ERROR_INTERNAL_ERROR:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

    aput-object v1, v14, v4

    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;->WIFI_CONN_ERROR_CAPTIVE_PORTAL:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

    aput-object v1, v14, v5

    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;->WIFI_CONN_ERROR_LIMITED_CONNECTIVITY:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

    aput-object v1, v14, v6

    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;->WIFI_CONN_UNKNOWN_ERROR:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

    aput-object v1, v14, v7

    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;->REG_ERROR_FAILED_TO_GET_TOKEN_FROM_MAP:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

    aput-object v1, v14, v8

    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;->REG_ERROR_TOKEN_INVALID:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

    aput-object v1, v14, v9

    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;->REG_ERROR_TOKEN_EXPIRED:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

    aput-object v1, v14, v10

    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;->REG_ERROR_SERVER_NOT_REACHABLE:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

    aput-object v1, v14, v11

    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;->REG_ERROR_SERVER_ERROR:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

    aput-object v1, v14, v12

    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;->REG_ERROR_FAILED_OTHER:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

    const/16 v2, 0xc

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;->REG_ERROR_UNKNOWN_ERROR:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

    const/16 v2, 0xd

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;->PROVISIONING_DONE_FAILURE:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

    const/16 v2, 0xe

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;->PROVISIONING_VERIFICATION_TIMEOUT:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

    const/16 v2, 0xf

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;->WIFI_CONN_ERROR_AP_NOT_FOUND:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

    const/16 v2, 0x10

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;->NO_ASSOCIATED_DEVICE_CREDENTIALS:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

    const/16 v2, 0x11

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;->PROVISIONING_FAILURE_REGISTRATION_ERROR_FAILED_DESERIALIZATION:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

    const/16 v2, 0x12

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;->PROVISIONING_FAILURE_WIFI_ERROR_FAILED_DESERIALIZATION:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

    const/16 v2, 0x13

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;->PROVISIONING_FAILURE_NETWORK_SYNC_TOKEN_INVALID:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

    const/16 v2, 0x14

    aput-object v1, v14, v2

    aput-object v0, v14, v13

    sput-object v14, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;->$VALUES:[Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

    .line 864
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType$1;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType$1;-><init>()V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 884
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;->values()[Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

    move-result-object v0

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;->VALUES:[Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 897
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 898
    iput p3, p0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;
    .locals 1

    .line 637
    const-class v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;
    .locals 1

    .line 637
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;->$VALUES:[Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

    invoke-virtual {v0}, [Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 820
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ProvisioningErrorType;->value:I

    return v0
.end method
