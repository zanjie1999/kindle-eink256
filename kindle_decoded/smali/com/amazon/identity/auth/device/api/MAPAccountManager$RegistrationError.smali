.class public final enum Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;
.super Ljava/lang/Enum;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/api/MAPAccountManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RegistrationError"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

.field public static final enum ACCOUNT_ALREADY_EXISTS:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final enum ACTOR_NOT_ASSOCIATED:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final enum ALREADY_DEREGISTERED:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final enum AUTHENTICATION_CHALLENGED:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final enum AUTHENTICATION_FAILED:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final enum BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final enum BAD_SECRET:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final enum CUSTOMER_NOT_FOUND:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final enum DELEGATEE_ACCOUNT_ALREADY_DEREGISTERED:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final enum DEREGISTER_FAILED:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final enum DEVICE_ALREADY_REGISTERED:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final enum DUPLICATE_DEVICE_NAME:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final enum INTERNAL_ERROR:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final enum LEGACY_ERROR_CODE_NOT_SUPPORTED_ERROR:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final enum NETWORK_FAILURE:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final enum NO_ACCOUNT:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final enum PARSE_ERROR:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final enum REGISTER_FAILED:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final enum REQUIRED_3P_AUTHENTICATION:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final enum UI_NOT_FOUND:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final enum UNRECOGNIZED:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field


# instance fields
.field private final mName:Ljava/lang/String;

.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 985
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    const/4 v1, 0x0

    const-string v2, "ACCOUNT_ALREADY_EXISTS"

    const-string v3, "AccountAlreadyExists"

    invoke-direct {v0, v2, v1, v1, v3}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->ACCOUNT_ALREADY_EXISTS:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 994
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    const/4 v2, 0x1

    const-string v3, "NETWORK_FAILURE"

    const-string v4, "NetworkFailure"

    invoke-direct {v0, v3, v2, v2, v4}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->NETWORK_FAILURE:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 1001
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    const/4 v3, 0x2

    const-string v4, "AUTHENTICATION_FAILED"

    const-string v5, "AuthenticationFailed"

    invoke-direct {v0, v4, v3, v3, v5}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->AUTHENTICATION_FAILED:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 1008
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    const/4 v4, 0x3

    const-string v5, "PARSE_ERROR"

    const-string v6, "ParseError"

    invoke-direct {v0, v5, v4, v4, v6}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->PARSE_ERROR:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 1022
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    const/4 v5, 0x4

    const-string v6, "CUSTOMER_NOT_FOUND"

    const-string v7, "CustomerNotFound"

    invoke-direct {v0, v6, v5, v5, v7}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->CUSTOMER_NOT_FOUND:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 1029
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    const/4 v6, 0x5

    const-string v7, "DEVICE_ALREADY_REGISTERED"

    const-string v8, "DeviceAlreadyRegistered"

    invoke-direct {v0, v7, v6, v6, v8}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->DEVICE_ALREADY_REGISTERED:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 1036
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    const/4 v7, 0x6

    const-string v8, "DUPLICATE_DEVICE_NAME"

    const-string v9, "DuplicateDeviceName"

    invoke-direct {v0, v8, v7, v7, v9}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->DUPLICATE_DEVICE_NAME:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 1043
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    const/4 v8, 0x7

    const-string v9, "DEREGISTER_FAILED"

    const-string v10, "DeregisterFailed"

    invoke-direct {v0, v9, v8, v8, v10}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->DEREGISTER_FAILED:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 1050
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    const/16 v9, 0x8

    const-string v10, "UNRECOGNIZED"

    const-string v11, "Unrecognized"

    invoke-direct {v0, v10, v9, v9, v11}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->UNRECOGNIZED:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 1062
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    const/16 v10, 0x9

    const-string v11, "REGISTER_FAILED"

    const-string v12, "RegisterFailed"

    invoke-direct {v0, v11, v10, v10, v12}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->REGISTER_FAILED:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 1074
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    const/16 v11, 0xa

    const-string v12, "BAD_REQUEST"

    const-string v13, "BadRequest"

    invoke-direct {v0, v12, v11, v11, v13}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 1082
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    const/16 v12, 0xb

    const-string v13, "ALREADY_DEREGISTERED"

    const-string v14, "AlreadyDeregistered"

    invoke-direct {v0, v13, v12, v12, v14}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->ALREADY_DEREGISTERED:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 1091
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    const/16 v13, 0xc

    const-string v14, "BAD_SECRET"

    const-string v15, "BadSecret"

    invoke-direct {v0, v14, v13, v13, v15}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->BAD_SECRET:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 1101
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    const/16 v14, 0xd

    const-string v15, "NO_ACCOUNT"

    const-string v13, "NoAccount"

    invoke-direct {v0, v15, v14, v14, v13}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->NO_ACCOUNT:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 1110
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    const/16 v13, 0xe

    const-string v15, "UI_NOT_FOUND"

    const-string v14, "UINotFound"

    invoke-direct {v0, v15, v13, v13, v14}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->UI_NOT_FOUND:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 1118
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    const/16 v14, 0xf

    const-string v15, "DELEGATEE_ACCOUNT_ALREADY_DEREGISTERED"

    const-string v13, "DelegateeAccountAlreadyDeregistered"

    invoke-direct {v0, v15, v14, v14, v13}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->DELEGATEE_ACCOUNT_ALREADY_DEREGISTERED:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 1138
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    const/16 v13, 0x10

    const-string v15, "AUTHENTICATION_CHALLENGED"

    const-string v14, "AuthenticationChallenged"

    invoke-direct {v0, v15, v13, v13, v14}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->AUTHENTICATION_CHALLENGED:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 1146
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    const/16 v14, 0x11

    const-string v15, "INTERNAL_ERROR"

    const-string v13, "InternalError"

    invoke-direct {v0, v15, v14, v14, v13}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->INTERNAL_ERROR:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 1152
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    const/16 v13, 0x12

    const-string v15, "REQUIRED_3P_AUTHENTICATION"

    const-string v14, "Required3PAuthentication"

    invoke-direct {v0, v15, v13, v13, v14}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->REQUIRED_3P_AUTHENTICATION:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 1158
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    const/16 v14, 0x13

    const-string v15, "ACTOR_NOT_ASSOCIATED"

    const-string v13, "ActorNotAssociated"

    invoke-direct {v0, v15, v14, v14, v13}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->ACTOR_NOT_ASSOCIATED:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 1165
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    const/16 v13, 0x14

    const-string v15, "LEGACY_ERROR_CODE_NOT_SUPPORTED_ERROR"

    const-string v14, "LegacyErrorCodeNotSupportedError"

    invoke-direct {v0, v15, v13, v13, v14}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->LEGACY_ERROR_CODE_NOT_SUPPORTED_ERROR:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    const/16 v14, 0x15

    new-array v14, v14, [Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 975
    sget-object v15, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->ACCOUNT_ALREADY_EXISTS:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    aput-object v15, v14, v1

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->NETWORK_FAILURE:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->AUTHENTICATION_FAILED:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    aput-object v1, v14, v3

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->PARSE_ERROR:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    aput-object v1, v14, v4

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->CUSTOMER_NOT_FOUND:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    aput-object v1, v14, v5

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->DEVICE_ALREADY_REGISTERED:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    aput-object v1, v14, v6

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->DUPLICATE_DEVICE_NAME:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    aput-object v1, v14, v7

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->DEREGISTER_FAILED:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    aput-object v1, v14, v8

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->UNRECOGNIZED:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    aput-object v1, v14, v9

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->REGISTER_FAILED:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    aput-object v1, v14, v10

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    aput-object v1, v14, v11

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->ALREADY_DEREGISTERED:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    aput-object v1, v14, v12

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->BAD_SECRET:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    const/16 v2, 0xc

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->NO_ACCOUNT:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    const/16 v2, 0xd

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->UI_NOT_FOUND:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    const/16 v2, 0xe

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->DELEGATEE_ACCOUNT_ALREADY_DEREGISTERED:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    const/16 v2, 0xf

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->AUTHENTICATION_CHALLENGED:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    const/16 v2, 0x10

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->INTERNAL_ERROR:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    const/16 v2, 0x11

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->REQUIRED_3P_AUTHENTICATION:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    const/16 v2, 0x12

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->ACTOR_NOT_ASSOCIATED:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    const/16 v2, 0x13

    aput-object v1, v14, v2

    aput-object v0, v14, v13

    sput-object v14, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->$VALUES:[Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1172
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1173
    iput p3, p0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->mValue:I

    .line 1174
    iput-object p4, p0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->mName:Ljava/lang/String;

    return-void
.end method

.method public static fromValue(I)Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;
    .locals 0
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 1192
    invoke-static {p0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->fromValueHelper(I)Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    .line 1200
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public static fromValue(ILcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;)Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;
    .locals 0
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 1207
    invoke-static {p0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->fromValueHelper(I)Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    return-object p1
.end method

.method private static fromValueHelper(I)Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;
    .locals 5

    .line 1214
    invoke-static {}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->values()[Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 1216
    invoke-virtual {v3}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->value()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;
    .locals 1

    .line 975
    const-class v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    return-object p0
.end method

.method public static values()[Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;
    .locals 1

    .line 975
    sget-object v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->$VALUES:[Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    invoke-virtual {v0}, [Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 1186
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public value()I
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 1180
    iget v0, p0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->mValue:I

    return v0
.end method
