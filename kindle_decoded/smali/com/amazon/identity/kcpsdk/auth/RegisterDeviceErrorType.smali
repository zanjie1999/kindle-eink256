.class public final enum Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;
.super Ljava/lang/Enum;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

.field public static final enum RegisterDeviceErrorTypeChallengeResponse:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

.field public static final enum RegisterDeviceErrorTypeCustomerNotFound:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

.field public static final enum RegisterDeviceErrorTypeDeviceAlreadyRegistered:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

.field public static final enum RegisterDeviceErrorTypeDeviceNotRegisteredPanda:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

.field public static final enum RegisterDeviceErrorTypeDuplicateDeviceName:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

.field public static final enum RegisterDeviceErrorTypeForbidden:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

.field public static final enum RegisterDeviceErrorTypeInternal:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

.field public static final enum RegisterDeviceErrorTypeInvalidDevice:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

.field public static final enum RegisterDeviceErrorTypeInvalidDirectedId:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

.field public static final enum RegisterDeviceErrorTypeInvalidTokenPanda:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

.field public static final enum RegisterDeviceErrorTypeInvalidValue:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

.field public static final enum RegisterDeviceErrorTypeMethodNotAllowed:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

.field public static final enum RegisterDeviceErrorTypeMissingValue:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

.field public static final enum RegisterDeviceErrorTypeNotImplemented:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

.field public static final enum RegisterDeviceErrorTypePrimaryAccountDeregisteredWhenRegisterSecondary:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

.field public static final enum RegisterDeviceErrorTypeProtocolError:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

.field public static final enum RegisterDeviceErrorTypeServerError:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

.field public static final enum RegisterDeviceErrorTypeServerUnavailable:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

.field public static final enum RegisterDeviceErrorTypeUnauthorizedPanda:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

.field public static final enum RegisterDeviceErrorTypeUnrecognized:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

.field public static final enum RegisterDeviceErrorTypeUnrecognizedFirs:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

.field public static final enum RegisterDeviceErrorTypeUnrecognizedKindle:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

.field public static final enum RegisterDeviceErrorTypeUnrecognizedPanda:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;


# instance fields
.field private mErrorString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 6
    new-instance v0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    const/4 v1, 0x0

    const-string v2, "RegisterDeviceErrorTypeCustomerNotFound"

    const-string v3, "Customer Not Found. Invalid credentials. The email or phone number and password did not match our records."

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;->RegisterDeviceErrorTypeCustomerNotFound:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    .line 8
    new-instance v0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    const/4 v2, 0x1

    const-string v3, "RegisterDeviceErrorTypeDeviceAlreadyRegistered"

    const-string v4, "Device Already Registered"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;->RegisterDeviceErrorTypeDeviceAlreadyRegistered:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    .line 9
    new-instance v0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    const/4 v3, 0x2

    const-string v4, "RegisterDeviceErrorTypeDeviceNotRegisteredPanda"

    const-string v5, "Primary account not registered to device"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;->RegisterDeviceErrorTypeDeviceNotRegisteredPanda:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    .line 10
    new-instance v0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    const/4 v4, 0x3

    const-string v5, "RegisterDeviceErrorTypeDuplicateDeviceName"

    const-string v6, "The device name is duplicate to an existing one"

    invoke-direct {v0, v5, v4, v6}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;->RegisterDeviceErrorTypeDuplicateDeviceName:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    .line 12
    new-instance v0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    const/4 v5, 0x4

    const-string v6, "RegisterDeviceErrorTypeUnrecognized"

    const-string v7, "Unrecognized"

    invoke-direct {v0, v6, v5, v7}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;->RegisterDeviceErrorTypeUnrecognized:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    .line 13
    new-instance v0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    const/4 v6, 0x5

    const-string v7, "RegisterDeviceErrorTypeChallengeResponse"

    const-string v8, "Challenge Response Received"

    invoke-direct {v0, v7, v6, v8}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;->RegisterDeviceErrorTypeChallengeResponse:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    .line 14
    new-instance v0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    const/4 v7, 0x6

    const-string v8, "RegisterDeviceErrorTypeMissingValue"

    const-string v9, "One or more required values are missing"

    invoke-direct {v0, v8, v7, v9}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;->RegisterDeviceErrorTypeMissingValue:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    .line 15
    new-instance v0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    const/4 v8, 0x7

    const-string v9, "RegisterDeviceErrorTypeInvalidValue"

    const-string v10, "One or more required values are invalid"

    invoke-direct {v0, v9, v8, v10}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;->RegisterDeviceErrorTypeInvalidValue:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    .line 16
    new-instance v0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    const/16 v9, 0x8

    const-string v10, "RegisterDeviceErrorTypeInvalidTokenPanda"

    const-string v11, "The token used for registration in Panda is invalid"

    invoke-direct {v0, v10, v9, v11}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;->RegisterDeviceErrorTypeInvalidTokenPanda:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    .line 17
    new-instance v0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    const/16 v10, 0x9

    const-string v11, "RegisterDeviceErrorTypeProtocolError"

    const-string v12, "The Protocol is not supported. SSL required"

    invoke-direct {v0, v11, v10, v12}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;->RegisterDeviceErrorTypeProtocolError:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    .line 18
    new-instance v0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    const/16 v11, 0xa

    const-string v12, "RegisterDeviceErrorTypeMethodNotAllowed"

    const-string v13, "The HTTP method is not valid. For example, using POST instead of GET"

    invoke-direct {v0, v12, v11, v13}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;->RegisterDeviceErrorTypeMethodNotAllowed:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    .line 19
    new-instance v0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    const/16 v12, 0xb

    const-string v13, "RegisterDeviceErrorTypeServerError"

    const-string v14, "The server has encountered a runtime error, try again later"

    invoke-direct {v0, v13, v12, v14}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;->RegisterDeviceErrorTypeServerError:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    .line 20
    new-instance v0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    const/16 v13, 0xc

    const-string v14, "RegisterDeviceErrorTypeNotImplemented"

    const-string v15, "The feature is not implemented"

    invoke-direct {v0, v14, v13, v15}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;->RegisterDeviceErrorTypeNotImplemented:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    .line 21
    new-instance v0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    const/16 v14, 0xd

    const-string v15, "RegisterDeviceErrorTypeInvalidDirectedId"

    const-string v13, "The directedId is invalid. e.g. The customer directedId is invalid. The device directedId is invalid"

    invoke-direct {v0, v15, v14, v13}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;->RegisterDeviceErrorTypeInvalidDirectedId:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    .line 23
    new-instance v0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    const/16 v13, 0xe

    const-string v15, "RegisterDeviceErrorTypeInvalidDevice"

    const-string v14, "The device information is invalid."

    invoke-direct {v0, v15, v13, v14}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;->RegisterDeviceErrorTypeInvalidDevice:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    .line 24
    new-instance v0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    const/16 v14, 0xf

    const-string v15, "RegisterDeviceErrorTypeUnauthorizedPanda"

    const-string v13, "Unauthorized error from Panda"

    invoke-direct {v0, v15, v14, v13}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;->RegisterDeviceErrorTypeUnauthorizedPanda:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    .line 26
    new-instance v0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    const/16 v13, 0x10

    const-string v15, "RegisterDeviceErrorTypeUnrecognizedFirs"

    const-string v14, "Unrecognized Firs"

    invoke-direct {v0, v15, v13, v14}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;->RegisterDeviceErrorTypeUnrecognizedFirs:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    .line 28
    new-instance v0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    const/16 v14, 0x11

    const-string v15, "RegisterDeviceErrorTypeUnrecognizedKindle"

    const-string v13, "Unrecognized Kindle"

    invoke-direct {v0, v15, v14, v13}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;->RegisterDeviceErrorTypeUnrecognizedKindle:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    .line 30
    new-instance v0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    const/16 v13, 0x12

    const-string v15, "RegisterDeviceErrorTypeUnrecognizedPanda"

    const-string v14, "Unrecognized Panda"

    invoke-direct {v0, v15, v13, v14}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;->RegisterDeviceErrorTypeUnrecognizedPanda:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    .line 31
    new-instance v0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    const/16 v14, 0x13

    const-string v15, "RegisterDeviceErrorTypeServerUnavailable"

    const-string v13, "The service temporarily overloaded or unavailable, try again later"

    invoke-direct {v0, v15, v14, v13}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;->RegisterDeviceErrorTypeServerUnavailable:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    .line 32
    new-instance v0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    const/16 v13, 0x14

    const-string v15, "RegisterDeviceErrorTypeInternal"

    const-string v14, "Internal Server error, try again later"

    invoke-direct {v0, v15, v13, v14}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;->RegisterDeviceErrorTypeInternal:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    .line 35
    new-instance v0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    const/16 v14, 0x15

    const-string v15, "RegisterDeviceErrorTypePrimaryAccountDeregisteredWhenRegisterSecondary"

    const-string v13, "Failed to register a secondary account because the primary account associated with it was deregistered or not valid any more on server side. The device is deregistered."

    invoke-direct {v0, v15, v14, v13}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;->RegisterDeviceErrorTypePrimaryAccountDeregisteredWhenRegisterSecondary:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    .line 38
    new-instance v0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    const-string v13, "RegisterDeviceErrorTypeForbidden"

    const/16 v15, 0x16

    const-string v14, "This application is not allowed to signin/register with Panda, please check the Panda onboarding documentation"

    invoke-direct {v0, v13, v15, v14}, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;->RegisterDeviceErrorTypeForbidden:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    const/16 v13, 0x17

    new-array v13, v13, [Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    .line 4
    sget-object v14, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;->RegisterDeviceErrorTypeCustomerNotFound:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    aput-object v14, v13, v1

    sget-object v1, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;->RegisterDeviceErrorTypeDeviceAlreadyRegistered:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;->RegisterDeviceErrorTypeDeviceNotRegisteredPanda:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    aput-object v1, v13, v3

    sget-object v1, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;->RegisterDeviceErrorTypeDuplicateDeviceName:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    aput-object v1, v13, v4

    sget-object v1, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;->RegisterDeviceErrorTypeUnrecognized:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    aput-object v1, v13, v5

    sget-object v1, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;->RegisterDeviceErrorTypeChallengeResponse:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    aput-object v1, v13, v6

    sget-object v1, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;->RegisterDeviceErrorTypeMissingValue:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    aput-object v1, v13, v7

    sget-object v1, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;->RegisterDeviceErrorTypeInvalidValue:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    aput-object v1, v13, v8

    sget-object v1, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;->RegisterDeviceErrorTypeInvalidTokenPanda:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    aput-object v1, v13, v9

    sget-object v1, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;->RegisterDeviceErrorTypeProtocolError:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    aput-object v1, v13, v10

    sget-object v1, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;->RegisterDeviceErrorTypeMethodNotAllowed:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    aput-object v1, v13, v11

    sget-object v1, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;->RegisterDeviceErrorTypeServerError:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    aput-object v1, v13, v12

    sget-object v1, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;->RegisterDeviceErrorTypeNotImplemented:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    const/16 v2, 0xc

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;->RegisterDeviceErrorTypeInvalidDirectedId:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    const/16 v2, 0xd

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;->RegisterDeviceErrorTypeInvalidDevice:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    const/16 v2, 0xe

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;->RegisterDeviceErrorTypeUnauthorizedPanda:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    const/16 v2, 0xf

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;->RegisterDeviceErrorTypeUnrecognizedFirs:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    const/16 v2, 0x10

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;->RegisterDeviceErrorTypeUnrecognizedKindle:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    const/16 v2, 0x11

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;->RegisterDeviceErrorTypeUnrecognizedPanda:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    const/16 v2, 0x12

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;->RegisterDeviceErrorTypeServerUnavailable:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    const/16 v2, 0x13

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;->RegisterDeviceErrorTypeInternal:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    const/16 v2, 0x14

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;->RegisterDeviceErrorTypePrimaryAccountDeregisteredWhenRegisterSecondary:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    const/16 v2, 0x15

    aput-object v1, v13, v2

    const/16 v1, 0x16

    aput-object v0, v13, v1

    sput-object v13, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;->$VALUES:[Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

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

    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 44
    iput-object p3, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;->mErrorString:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;
    .locals 1

    .line 4
    const-class v0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;
    .locals 1

    .line 4
    sget-object v0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;->$VALUES:[Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    invoke-virtual {v0}, [Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    return-object v0
.end method


# virtual methods
.method public getErrorString()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;->mErrorString:Ljava/lang/String;

    return-object v0
.end method
