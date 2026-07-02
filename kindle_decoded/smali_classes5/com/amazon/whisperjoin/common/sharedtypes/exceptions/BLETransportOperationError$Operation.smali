.class public final enum Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;
.super Ljava/lang/Enum;
.source "BLETransportOperationError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Operation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;

.field public static final enum BIND_SERVICE_CLIENT:Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;

.field public static final enum CONFIRM_READ_CHARACTERISTIC:Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;

.field public static final enum CONFIRM_WRITE_CHARACTERISTIC:Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;

.field public static final enum CONFIRM_WRITE_CHARACTERISTIC_PROVISIONING_COMMAND:Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;

.field public static final enum CONFIRM_WRITE_CHARACTERISTIC_REQUEST_ADDITIONAL_COMMAND_RESPONSE_PACKET:Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;

.field public static final enum CONFIRM_WRITE_CHARACTERISTIC_START_PROVISIONING_REQUEST:Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;

.field public static final enum DISCOVER_GATT_SERVICES:Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;

.field public static final enum ENABLE_NOTIFICATIONS:Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;

.field public static final enum ENABLE_NOTIFICATION_PROVISIONING_COMMAND_RESPONSE:Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;

.field public static final enum ENABLE_NOTIFICATION_PROVISIONING_EVENTS:Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;

.field public static final enum ENABLE_NOTIFICATION_PROVISIONING_STATUS:Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;

.field public static final enum ENABLE_NOTIFICATION_START_PROVISIONING_REQUEST_RESPONSE:Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;

.field public static final enum INITIATE_READ_CHARACTERISTIC:Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;

.field public static final enum INITIATE_WRITE_CHARACTERISTIC:Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;

.field public static final enum INITIATE_WRITE_CHARACTERISTIC_PROVISIONING_COMMAND:Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;

.field public static final enum INITIATE_WRITE_CHARACTERISTIC_REQUEST_ADDITIONAL_COMMAND_RESPONSE_PACKET:Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;

.field public static final enum INITIATE_WRITE_CHARACTERISTIC_START_PROVISIONING_REQUEST:Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;

.field public static final enum READ_CHARACTERISTIC_COMMAND_RESPONSE:Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;

.field public static final enum READ_CHARACTERISTIC_START_PROVISIONING_REQUEST_RESPONSE:Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 23
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;

    const/4 v1, 0x0

    const-string v2, "DISCOVER_GATT_SERVICES"

    invoke-direct {v0, v2, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;->DISCOVER_GATT_SERVICES:Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;

    .line 24
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;

    const/4 v2, 0x1

    const-string v3, "BIND_SERVICE_CLIENT"

    invoke-direct {v0, v3, v2}, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;->BIND_SERVICE_CLIENT:Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;

    .line 27
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;

    const/4 v3, 0x2

    const-string v4, "ENABLE_NOTIFICATION_PROVISIONING_STATUS"

    invoke-direct {v0, v4, v3}, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;->ENABLE_NOTIFICATION_PROVISIONING_STATUS:Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;

    .line 28
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;

    const/4 v4, 0x3

    const-string v5, "ENABLE_NOTIFICATION_START_PROVISIONING_REQUEST_RESPONSE"

    invoke-direct {v0, v5, v4}, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;->ENABLE_NOTIFICATION_START_PROVISIONING_REQUEST_RESPONSE:Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;

    .line 29
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;

    const/4 v5, 0x4

    const-string v6, "ENABLE_NOTIFICATION_PROVISIONING_COMMAND_RESPONSE"

    invoke-direct {v0, v6, v5}, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;->ENABLE_NOTIFICATION_PROVISIONING_COMMAND_RESPONSE:Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;

    .line 30
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;

    const/4 v6, 0x5

    const-string v7, "ENABLE_NOTIFICATION_PROVISIONING_EVENTS"

    invoke-direct {v0, v7, v6}, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;->ENABLE_NOTIFICATION_PROVISIONING_EVENTS:Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;

    .line 33
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;

    const/4 v7, 0x6

    const-string v8, "INITIATE_WRITE_CHARACTERISTIC_START_PROVISIONING_REQUEST"

    invoke-direct {v0, v8, v7}, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;->INITIATE_WRITE_CHARACTERISTIC_START_PROVISIONING_REQUEST:Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;

    .line 34
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;

    const/4 v8, 0x7

    const-string v9, "CONFIRM_WRITE_CHARACTERISTIC_START_PROVISIONING_REQUEST"

    invoke-direct {v0, v9, v8}, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;->CONFIRM_WRITE_CHARACTERISTIC_START_PROVISIONING_REQUEST:Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;

    .line 35
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;

    const/16 v9, 0x8

    const-string v10, "READ_CHARACTERISTIC_START_PROVISIONING_REQUEST_RESPONSE"

    invoke-direct {v0, v10, v9}, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;->READ_CHARACTERISTIC_START_PROVISIONING_REQUEST_RESPONSE:Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;

    .line 38
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;

    const/16 v10, 0x9

    const-string v11, "INITIATE_WRITE_CHARACTERISTIC_PROVISIONING_COMMAND"

    invoke-direct {v0, v11, v10}, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;->INITIATE_WRITE_CHARACTERISTIC_PROVISIONING_COMMAND:Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;

    .line 39
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;

    const/16 v11, 0xa

    const-string v12, "CONFIRM_WRITE_CHARACTERISTIC_PROVISIONING_COMMAND"

    invoke-direct {v0, v12, v11}, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;->CONFIRM_WRITE_CHARACTERISTIC_PROVISIONING_COMMAND:Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;

    .line 40
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;

    const/16 v12, 0xb

    const-string v13, "READ_CHARACTERISTIC_COMMAND_RESPONSE"

    invoke-direct {v0, v13, v12}, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;->READ_CHARACTERISTIC_COMMAND_RESPONSE:Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;

    .line 41
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;

    const/16 v13, 0xc

    const-string v14, "INITIATE_WRITE_CHARACTERISTIC_REQUEST_ADDITIONAL_COMMAND_RESPONSE_PACKET"

    invoke-direct {v0, v14, v13}, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;->INITIATE_WRITE_CHARACTERISTIC_REQUEST_ADDITIONAL_COMMAND_RESPONSE_PACKET:Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;

    .line 42
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;

    const/16 v14, 0xd

    const-string v15, "CONFIRM_WRITE_CHARACTERISTIC_REQUEST_ADDITIONAL_COMMAND_RESPONSE_PACKET"

    invoke-direct {v0, v15, v14}, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;->CONFIRM_WRITE_CHARACTERISTIC_REQUEST_ADDITIONAL_COMMAND_RESPONSE_PACKET:Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;

    .line 45
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;

    const/16 v15, 0xe

    const-string v14, "INITIATE_READ_CHARACTERISTIC"

    invoke-direct {v0, v14, v15}, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;->INITIATE_READ_CHARACTERISTIC:Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;

    .line 46
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;

    const/16 v14, 0xf

    const-string v15, "CONFIRM_READ_CHARACTERISTIC"

    invoke-direct {v0, v15, v14}, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;->CONFIRM_READ_CHARACTERISTIC:Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;

    .line 47
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;

    const/16 v15, 0x10

    const-string v14, "INITIATE_WRITE_CHARACTERISTIC"

    invoke-direct {v0, v14, v15}, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;->INITIATE_WRITE_CHARACTERISTIC:Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;

    .line 48
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;

    const/16 v14, 0x11

    const-string v15, "CONFIRM_WRITE_CHARACTERISTIC"

    invoke-direct {v0, v15, v14}, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;->CONFIRM_WRITE_CHARACTERISTIC:Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;

    .line 49
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;

    const/16 v15, 0x12

    const-string v14, "ENABLE_NOTIFICATIONS"

    invoke-direct {v0, v14, v15}, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;->ENABLE_NOTIFICATIONS:Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;

    const/16 v14, 0x13

    new-array v14, v14, [Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;

    .line 21
    sget-object v16, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;->DISCOVER_GATT_SERVICES:Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;

    aput-object v16, v14, v1

    sget-object v1, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;->BIND_SERVICE_CLIENT:Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;->ENABLE_NOTIFICATION_PROVISIONING_STATUS:Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;

    aput-object v1, v14, v3

    sget-object v1, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;->ENABLE_NOTIFICATION_START_PROVISIONING_REQUEST_RESPONSE:Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;

    aput-object v1, v14, v4

    sget-object v1, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;->ENABLE_NOTIFICATION_PROVISIONING_COMMAND_RESPONSE:Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;

    aput-object v1, v14, v5

    sget-object v1, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;->ENABLE_NOTIFICATION_PROVISIONING_EVENTS:Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;

    aput-object v1, v14, v6

    sget-object v1, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;->INITIATE_WRITE_CHARACTERISTIC_START_PROVISIONING_REQUEST:Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;

    aput-object v1, v14, v7

    sget-object v1, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;->CONFIRM_WRITE_CHARACTERISTIC_START_PROVISIONING_REQUEST:Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;

    aput-object v1, v14, v8

    sget-object v1, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;->READ_CHARACTERISTIC_START_PROVISIONING_REQUEST_RESPONSE:Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;

    aput-object v1, v14, v9

    sget-object v1, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;->INITIATE_WRITE_CHARACTERISTIC_PROVISIONING_COMMAND:Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;

    aput-object v1, v14, v10

    sget-object v1, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;->CONFIRM_WRITE_CHARACTERISTIC_PROVISIONING_COMMAND:Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;

    aput-object v1, v14, v11

    sget-object v1, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;->READ_CHARACTERISTIC_COMMAND_RESPONSE:Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;

    aput-object v1, v14, v12

    sget-object v1, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;->INITIATE_WRITE_CHARACTERISTIC_REQUEST_ADDITIONAL_COMMAND_RESPONSE_PACKET:Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;

    aput-object v1, v14, v13

    sget-object v1, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;->CONFIRM_WRITE_CHARACTERISTIC_REQUEST_ADDITIONAL_COMMAND_RESPONSE_PACKET:Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;

    const/16 v2, 0xd

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;->INITIATE_READ_CHARACTERISTIC:Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;

    const/16 v2, 0xe

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;->CONFIRM_READ_CHARACTERISTIC:Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;

    const/16 v2, 0xf

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;->INITIATE_WRITE_CHARACTERISTIC:Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;

    const/16 v2, 0x10

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;->CONFIRM_WRITE_CHARACTERISTIC:Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;

    const/16 v2, 0x11

    aput-object v1, v14, v2

    aput-object v0, v14, v15

    sput-object v14, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;->$VALUES:[Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;
    .locals 1

    .line 21
    const-class v0, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;

    return-object p0
.end method

.method public static values()[Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;
    .locals 1

    .line 21
    sget-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;->$VALUES:[Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;

    invoke-virtual {v0}, [Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;

    return-object v0
.end method
