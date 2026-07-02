.class public final enum Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;
.super Ljava/lang/Enum;
.source "ErrorCodes.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;

.field public static final enum COMPLETE_PROVISIONING:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;

.field public static final enum EXCHANGE_AUTH_ECDHE_KEY:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;

.field public static final enum EXCHANGE_ECDHE_KEY:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;

.field public static final enum GET_CONNECTION_STATUS:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;

.field public static final enum GET_DEVICE_DETAILS:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;

.field public static final enum GET_NOTIFICATION_EVENT_DATA:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;

.field public static final enum GET_REGISTRATION_STATUS:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;

.field public static final enum GET_SUPPORTED_NOTIFICATIONS:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;

.field public static final enum GET_VISIBLE_NETWORKS:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;

.field public static final enum JPAKE_CERT_VALIDATION:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;

.field public static final enum JPAKE_ROUND_1:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;

.field public static final enum JPAKE_ROUND_2:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;

.field public static final enum JPAKE_ROUND_3:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;

.field public static final enum SAVE_NETWORK:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;

.field public static final enum SET_CONFIGURATION:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;

.field public static final enum SET_REGISTRATION_TOKEN:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;

.field public static final enum UNKNOWN:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;

.field private static final VALUES:[Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 174
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN"

    invoke-direct {v0, v2, v1, v1}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;->UNKNOWN:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;

    .line 178
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;

    const/4 v2, 0x1

    const-string v3, "EXCHANGE_ECDHE_KEY"

    invoke-direct {v0, v3, v2, v2}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;->EXCHANGE_ECDHE_KEY:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;

    .line 182
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;

    const/4 v3, 0x2

    const-string v4, "EXCHANGE_AUTH_ECDHE_KEY"

    invoke-direct {v0, v4, v3, v3}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;->EXCHANGE_AUTH_ECDHE_KEY:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;

    .line 186
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;

    const/4 v4, 0x3

    const-string v5, "JPAKE_ROUND_1"

    invoke-direct {v0, v5, v4, v4}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;->JPAKE_ROUND_1:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;

    .line 190
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;

    const/4 v5, 0x4

    const-string v6, "JPAKE_ROUND_2"

    invoke-direct {v0, v6, v5, v5}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;->JPAKE_ROUND_2:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;

    .line 194
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;

    const/4 v6, 0x5

    const-string v7, "JPAKE_ROUND_3"

    invoke-direct {v0, v7, v6, v6}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;->JPAKE_ROUND_3:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;

    .line 198
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;

    const/4 v7, 0x6

    const-string v8, "JPAKE_CERT_VALIDATION"

    invoke-direct {v0, v8, v7, v7}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;->JPAKE_CERT_VALIDATION:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;

    .line 202
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;

    const/4 v8, 0x7

    const-string v9, "GET_VISIBLE_NETWORKS"

    invoke-direct {v0, v9, v8, v8}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;->GET_VISIBLE_NETWORKS:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;

    .line 206
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;

    const/16 v9, 0x8

    const-string v10, "GET_DEVICE_DETAILS"

    invoke-direct {v0, v10, v9, v9}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;->GET_DEVICE_DETAILS:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;

    .line 210
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;

    const/16 v10, 0x9

    const-string v11, "SAVE_NETWORK"

    invoke-direct {v0, v11, v10, v10}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;->SAVE_NETWORK:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;

    .line 214
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;

    const/16 v11, 0xa

    const-string v12, "GET_CONNECTION_STATUS"

    invoke-direct {v0, v12, v11, v11}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;->GET_CONNECTION_STATUS:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;

    .line 218
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;

    const/16 v12, 0xb

    const-string v13, "SET_CONFIGURATION"

    invoke-direct {v0, v13, v12, v12}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;->SET_CONFIGURATION:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;

    .line 222
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;

    const/16 v13, 0xc

    const-string v14, "SET_REGISTRATION_TOKEN"

    invoke-direct {v0, v14, v13, v13}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;->SET_REGISTRATION_TOKEN:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;

    .line 226
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;

    const/16 v14, 0xd

    const-string v15, "GET_REGISTRATION_STATUS"

    invoke-direct {v0, v15, v14, v14}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;->GET_REGISTRATION_STATUS:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;

    .line 230
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;

    const/16 v15, 0xe

    const-string v14, "COMPLETE_PROVISIONING"

    invoke-direct {v0, v14, v15, v15}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;->COMPLETE_PROVISIONING:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;

    .line 234
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;

    const/16 v14, 0xf

    const-string v15, "GET_SUPPORTED_NOTIFICATIONS"

    invoke-direct {v0, v15, v14, v14}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;->GET_SUPPORTED_NOTIFICATIONS:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;

    .line 238
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;

    const/16 v15, 0x10

    const-string v14, "GET_NOTIFICATION_EVENT_DATA"

    invoke-direct {v0, v14, v15, v15}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;->GET_NOTIFICATION_EVENT_DATA:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;

    const/16 v14, 0x11

    new-array v14, v14, [Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;

    .line 169
    sget-object v16, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;->UNKNOWN:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;

    aput-object v16, v14, v1

    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;->EXCHANGE_ECDHE_KEY:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;->EXCHANGE_AUTH_ECDHE_KEY:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;

    aput-object v1, v14, v3

    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;->JPAKE_ROUND_1:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;

    aput-object v1, v14, v4

    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;->JPAKE_ROUND_2:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;

    aput-object v1, v14, v5

    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;->JPAKE_ROUND_3:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;

    aput-object v1, v14, v6

    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;->JPAKE_CERT_VALIDATION:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;

    aput-object v1, v14, v7

    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;->GET_VISIBLE_NETWORKS:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;

    aput-object v1, v14, v8

    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;->GET_DEVICE_DETAILS:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;

    aput-object v1, v14, v9

    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;->SAVE_NETWORK:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;

    aput-object v1, v14, v10

    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;->GET_CONNECTION_STATUS:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;

    aput-object v1, v14, v11

    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;->SET_CONFIGURATION:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;

    aput-object v1, v14, v12

    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;->SET_REGISTRATION_TOKEN:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;

    aput-object v1, v14, v13

    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;->GET_REGISTRATION_STATUS:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;

    const/16 v2, 0xd

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;->COMPLETE_PROVISIONING:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;

    const/16 v2, 0xe

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;->GET_SUPPORTED_NOTIFICATIONS:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;

    const/16 v2, 0xf

    aput-object v1, v14, v2

    aput-object v0, v14, v15

    sput-object v14, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;->$VALUES:[Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;

    .line 351
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType$1;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType$1;-><init>()V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 371
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;->values()[Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;

    move-result-object v0

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;->VALUES:[Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 384
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 385
    iput p3, p0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;
    .locals 1

    .line 169
    const-class v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;
    .locals 1

    .line 169
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;->$VALUES:[Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;

    invoke-virtual {v0}, [Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 312
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$BLECommandErrorType;->value:I

    return v0
.end method
