.class public final enum Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;
.super Ljava/lang/Enum;
.source "DSSOperation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

.field public static final enum COMPUTE_CONFIGURATION_DATA:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

.field public static final enum CREATE_AP_FOR_WIFI_PROVISIONEE:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

.field public static final enum DISCOVERED_PROVISIONABLE_DEVICE:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

.field public static final enum DISCOVERED_PROVISIONEE:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

.field public static final enum FINALIZE_ECDHE_AUTHENTICATION_SESSION:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

.field public static final enum GENERATE_PROVISIONING_SESSION:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

.field public static final enum GET_CUSTOMER_DEVICES_CREDENTIALS:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

.field public static final enum GET_CUSTOMER_DEVICES_CREDENTIALS_V2:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

.field public static final enum GET_CUSTOMER_PROVISIONEES_SETUP_STATUS:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

.field public static final enum GET_DEVICE_REGISTRATION_STATUS:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

.field public static final enum GET_FFS_WHITELIST_POLICY:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

.field public static final enum GET_WIFI_NETWORKS:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

.field public static final enum GET_WIFI_SYNC_AUTH_TOKEN:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

.field public static final enum RECORD_DEVICE_POSSESSION_INTENT_WITH_INNER_BARCODE:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

.field public static final enum REPORT_EVENT:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

.field public static final enum REPORT_SMART_HOME_EVENT:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

.field public static final enum SAVE_WIFI_NETWORK:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

.field public static final enum START_ECDHE_AUTHENTICATION_SESSION:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

.field public static final enum VALIDATE_WIFI_SYNC_AUTH_TOKEN:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 7
    new-instance v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

    const/4 v1, 0x0

    const-string v2, "DISCOVERED_PROVISIONABLE_DEVICE"

    invoke-direct {v0, v2, v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;->DISCOVERED_PROVISIONABLE_DEVICE:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

    .line 8
    new-instance v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

    const/4 v2, 0x1

    const-string v3, "DISCOVERED_PROVISIONEE"

    invoke-direct {v0, v3, v2}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;->DISCOVERED_PROVISIONEE:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

    .line 9
    new-instance v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

    const/4 v3, 0x2

    const-string v4, "START_ECDHE_AUTHENTICATION_SESSION"

    invoke-direct {v0, v4, v3}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;->START_ECDHE_AUTHENTICATION_SESSION:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

    .line 10
    new-instance v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

    const/4 v4, 0x3

    const-string v5, "FINALIZE_ECDHE_AUTHENTICATION_SESSION"

    invoke-direct {v0, v5, v4}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;->FINALIZE_ECDHE_AUTHENTICATION_SESSION:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

    .line 11
    new-instance v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

    const/4 v5, 0x4

    const-string v6, "GENERATE_PROVISIONING_SESSION"

    invoke-direct {v0, v6, v5}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;->GENERATE_PROVISIONING_SESSION:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

    .line 12
    new-instance v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

    const/4 v6, 0x5

    const-string v7, "REPORT_EVENT"

    invoke-direct {v0, v7, v6}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;->REPORT_EVENT:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

    .line 13
    new-instance v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

    const/4 v7, 0x6

    const-string v8, "GET_FFS_WHITELIST_POLICY"

    invoke-direct {v0, v8, v7}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;->GET_FFS_WHITELIST_POLICY:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

    .line 14
    new-instance v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

    const/4 v8, 0x7

    const-string v9, "RECORD_DEVICE_POSSESSION_INTENT_WITH_INNER_BARCODE"

    invoke-direct {v0, v9, v8}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;->RECORD_DEVICE_POSSESSION_INTENT_WITH_INNER_BARCODE:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

    .line 15
    new-instance v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

    const/16 v9, 0x8

    const-string v10, "COMPUTE_CONFIGURATION_DATA"

    invoke-direct {v0, v10, v9}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;->COMPUTE_CONFIGURATION_DATA:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

    .line 16
    new-instance v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

    const/16 v10, 0x9

    const-string v11, "GET_DEVICE_REGISTRATION_STATUS"

    invoke-direct {v0, v11, v10}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;->GET_DEVICE_REGISTRATION_STATUS:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

    .line 17
    new-instance v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

    const/16 v11, 0xa

    const-string v12, "GET_WIFI_NETWORKS"

    invoke-direct {v0, v12, v11}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;->GET_WIFI_NETWORKS:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

    .line 18
    new-instance v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

    const/16 v12, 0xb

    const-string v13, "SAVE_WIFI_NETWORK"

    invoke-direct {v0, v13, v12}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;->SAVE_WIFI_NETWORK:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

    .line 19
    new-instance v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

    const/16 v13, 0xc

    const-string v14, "CREATE_AP_FOR_WIFI_PROVISIONEE"

    invoke-direct {v0, v14, v13}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;->CREATE_AP_FOR_WIFI_PROVISIONEE:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

    .line 20
    new-instance v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

    const/16 v14, 0xd

    const-string v15, "GET_CUSTOMER_DEVICES_CREDENTIALS"

    invoke-direct {v0, v15, v14}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;->GET_CUSTOMER_DEVICES_CREDENTIALS:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

    .line 21
    new-instance v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

    const/16 v15, 0xe

    const-string v14, "GET_CUSTOMER_DEVICES_CREDENTIALS_V2"

    invoke-direct {v0, v14, v15}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;->GET_CUSTOMER_DEVICES_CREDENTIALS_V2:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

    .line 22
    new-instance v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

    const/16 v14, 0xf

    const-string v15, "REPORT_SMART_HOME_EVENT"

    invoke-direct {v0, v15, v14}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;->REPORT_SMART_HOME_EVENT:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

    .line 23
    new-instance v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

    const/16 v15, 0x10

    const-string v14, "GET_CUSTOMER_PROVISIONEES_SETUP_STATUS"

    invoke-direct {v0, v14, v15}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;->GET_CUSTOMER_PROVISIONEES_SETUP_STATUS:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

    .line 24
    new-instance v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

    const/16 v14, 0x11

    const-string v15, "GET_WIFI_SYNC_AUTH_TOKEN"

    invoke-direct {v0, v15, v14}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;->GET_WIFI_SYNC_AUTH_TOKEN:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

    .line 25
    new-instance v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

    const/16 v15, 0x12

    const-string v14, "VALIDATE_WIFI_SYNC_AUTH_TOKEN"

    invoke-direct {v0, v14, v15}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;->VALIDATE_WIFI_SYNC_AUTH_TOKEN:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

    const/16 v14, 0x13

    new-array v14, v14, [Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

    .line 6
    sget-object v16, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;->DISCOVERED_PROVISIONABLE_DEVICE:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

    aput-object v16, v14, v1

    sget-object v1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;->DISCOVERED_PROVISIONEE:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;->START_ECDHE_AUTHENTICATION_SESSION:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

    aput-object v1, v14, v3

    sget-object v1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;->FINALIZE_ECDHE_AUTHENTICATION_SESSION:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

    aput-object v1, v14, v4

    sget-object v1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;->GENERATE_PROVISIONING_SESSION:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

    aput-object v1, v14, v5

    sget-object v1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;->REPORT_EVENT:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

    aput-object v1, v14, v6

    sget-object v1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;->GET_FFS_WHITELIST_POLICY:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

    aput-object v1, v14, v7

    sget-object v1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;->RECORD_DEVICE_POSSESSION_INTENT_WITH_INNER_BARCODE:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

    aput-object v1, v14, v8

    sget-object v1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;->COMPUTE_CONFIGURATION_DATA:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

    aput-object v1, v14, v9

    sget-object v1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;->GET_DEVICE_REGISTRATION_STATUS:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

    aput-object v1, v14, v10

    sget-object v1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;->GET_WIFI_NETWORKS:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

    aput-object v1, v14, v11

    sget-object v1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;->SAVE_WIFI_NETWORK:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

    aput-object v1, v14, v12

    sget-object v1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;->CREATE_AP_FOR_WIFI_PROVISIONEE:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

    aput-object v1, v14, v13

    sget-object v1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;->GET_CUSTOMER_DEVICES_CREDENTIALS:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

    const/16 v2, 0xd

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;->GET_CUSTOMER_DEVICES_CREDENTIALS_V2:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

    const/16 v2, 0xe

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;->REPORT_SMART_HOME_EVENT:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

    const/16 v2, 0xf

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;->GET_CUSTOMER_PROVISIONEES_SETUP_STATUS:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

    const/16 v2, 0x10

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;->GET_WIFI_SYNC_AUTH_TOKEN:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

    const/16 v2, 0x11

    aput-object v1, v14, v2

    aput-object v0, v14, v15

    sput-object v14, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;->$VALUES:[Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

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

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;
    .locals 1

    .line 6
    const-class v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

    return-object p0
.end method

.method public static values()[Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;
    .locals 1

    .line 6
    sget-object v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;->$VALUES:[Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

    invoke-virtual {v0}, [Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSOperation;

    return-object v0
.end method
