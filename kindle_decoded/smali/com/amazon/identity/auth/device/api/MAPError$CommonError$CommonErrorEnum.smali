.class final enum Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;
.super Ljava/lang/Enum;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/api/MAPError$MAPErrorMethods;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/api/MAPError$CommonError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "CommonErrorEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;",
        ">;",
        "Lcom/amazon/identity/auth/device/api/MAPError$MAPErrorMethods;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;

.field public static final enum BACKWARDS_INCOMPATIBILITY:Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;

.field public static final enum BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;

.field public static final enum CORRUPTED_DATABASE:Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;

.field public static final enum FEATURE_NOT_IMPLEMENTED:Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;

.field public static final enum INTERNAL_ERROR:Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;

.field public static final enum INVALID_RESPONSE:Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;

.field public static final enum NETWORK_ERROR:Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;

.field public static final enum OPERATION_CANCELLED:Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;

.field public static final enum PARSE_ERROR:Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;

.field public static final enum SERVER_ERROR:Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;

.field public static final enum SERVICE_UNAVAILABLE:Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;

.field public static final enum UI_NOT_FOUND:Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;

.field public static final enum UNKNOWN_IPC_ERROR:Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;

.field public static final enum UNSUPPORTED_OPERATION:Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;


# instance fields
.field private mErrorCode:I

.field private mErrorMessage:Ljava/lang/String;

.field private mErrorType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 481
    new-instance v6, Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;

    const-string v1, "FEATURE_NOT_IMPLEMENTED"

    const/4 v2, 0x0

    const/16 v3, 0x190

    const-string v4, "FeatureNotImplemented"

    const-string v5, "The feature has not been implemented yet"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;->FEATURE_NOT_IMPLEMENTED:Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;

    .line 482
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;

    const-string v8, "NETWORK_ERROR"

    const/4 v9, 0x1

    const/16 v10, 0x191

    const-string v11, "NetworkError"

    const-string v12, "A network error occurred"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;->NETWORK_ERROR:Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;

    .line 483
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;

    const-string v2, "UI_NOT_FOUND"

    const/4 v3, 0x2

    const/16 v4, 0x192

    const-string v5, "UINotFound"

    const-string v6, "The UI could not be found"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;->UI_NOT_FOUND:Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;

    .line 484
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;

    const-string v8, "SERVICE_UNAVAILABLE"

    const/4 v9, 0x3

    const/16 v10, 0x193

    const-string v11, "ServiceUnavailable"

    const-string v12, "The service is temporarily unavailable"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;->SERVICE_UNAVAILABLE:Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;

    .line 485
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;

    const-string v2, "INTERNAL_ERROR"

    const/4 v3, 0x4

    const/16 v4, 0x194

    const-string v5, "InternalError"

    const-string v6, "An internal error occurred"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;->INTERNAL_ERROR:Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;

    .line 486
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;

    const-string v8, "OPERATION_CANCELLED"

    const/4 v9, 0x5

    const/16 v10, 0x195

    const-string v11, "OperationCancelled"

    const-string v12, "The operation was cancelled before completing"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;->OPERATION_CANCELLED:Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;

    .line 487
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;

    const-string v2, "BAD_REQUEST"

    const/4 v3, 0x6

    const/16 v4, 0x196

    const-string v5, "BadRequest"

    const-string v6, "The request was invalid"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;

    .line 488
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;

    const-string v8, "PARSE_ERROR"

    const/4 v9, 0x7

    const/16 v10, 0x197

    const-string v11, "ParseError"

    const-string v12, "An error occurred while parsing the server response"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;->PARSE_ERROR:Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;

    .line 489
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;

    const-string v2, "INVALID_RESPONSE"

    const/16 v3, 0x8

    const/16 v4, 0x198

    const-string v5, "InvalidResponse"

    const-string v6, "An invalid response was received from the server"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;->INVALID_RESPONSE:Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;

    .line 490
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;

    const-string v8, "BACKWARDS_INCOMPATIBILITY"

    const/16 v9, 0x9

    const/16 v10, 0x199

    const-string v11, "BackwardsIncompatibility"

    const-string v12, "An error occurred due to a backwards incompatibility issue"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;->BACKWARDS_INCOMPATIBILITY:Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;

    .line 491
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;

    const-string v2, "CORRUPTED_DATABASE"

    const/16 v3, 0xa

    const/16 v4, 0x19a

    const-string v5, "CorruptedDatabase"

    const-string v6, "The MAP database is corrupted"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;->CORRUPTED_DATABASE:Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;

    .line 492
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;

    const-string v8, "UNSUPPORTED_OPERATION"

    const/16 v9, 0xb

    const/16 v10, 0x19b

    const-string v11, "UnsupportedOperation"

    const-string v12, "Attempted to perform an operation that is not supported"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;->UNSUPPORTED_OPERATION:Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;

    .line 493
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;

    const-string v2, "SERVER_ERROR"

    const/16 v3, 0xc

    const/16 v4, 0x19c

    const-string v5, "ServerError"

    const-string v6, "An error occurred on the server side"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;->SERVER_ERROR:Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;

    .line 494
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;

    const-string v8, "UNKNOWN_IPC_ERROR"

    const/16 v9, 0xd

    const/16 v10, 0x19d

    const-string v11, "UnknownIPCError"

    const-string v12, "Something went wrong communicating with imp apk. Usually due to IPC command not being recognized"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;->UNKNOWN_IPC_ERROR:Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;

    const/16 v1, 0xe

    new-array v1, v1, [Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;

    .line 479
    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;->FEATURE_NOT_IMPLEMENTED:Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;->NETWORK_ERROR:Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;->UI_NOT_FOUND:Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;->SERVICE_UNAVAILABLE:Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;->INTERNAL_ERROR:Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;->OPERATION_CANCELLED:Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;->PARSE_ERROR:Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;

    const/4 v3, 0x7

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;->INVALID_RESPONSE:Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;

    const/16 v3, 0x8

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;->BACKWARDS_INCOMPATIBILITY:Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;

    const/16 v3, 0x9

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;->CORRUPTED_DATABASE:Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;

    const/16 v3, 0xa

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;->UNSUPPORTED_OPERATION:Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;

    const/16 v3, 0xb

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;->SERVER_ERROR:Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;

    const/16 v3, 0xc

    aput-object v2, v1, v3

    const/16 v2, 0xd

    aput-object v0, v1, v2

    sput-object v1, Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;->$VALUES:[Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 501
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 502
    iput p3, p0, Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;->mErrorCode:I

    .line 503
    iput-object p4, p0, Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;->mErrorType:Ljava/lang/String;

    .line 504
    iput-object p5, p0, Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;->mErrorMessage:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;
    .locals 1

    .line 479
    const-class v0, Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;

    return-object p0
.end method

.method public static values()[Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;
    .locals 1

    .line 479
    sget-object v0, Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;->$VALUES:[Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;

    invoke-virtual {v0}, [Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;

    return-object v0
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .line 509
    iget v0, p0, Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;->mErrorCode:I

    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 514
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;->mErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorType()Ljava/lang/String;
    .locals 1

    .line 519
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/MAPError$CommonError$CommonErrorEnum;->mErrorType:Ljava/lang/String;

    return-object v0
.end method
