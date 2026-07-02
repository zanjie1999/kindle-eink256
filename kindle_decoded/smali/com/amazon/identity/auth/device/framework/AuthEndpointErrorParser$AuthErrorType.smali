.class public final enum Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;
.super Ljava/lang/Enum;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AuthErrorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

.field public static final enum ActorNotAssociated:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

.field public static final enum AuthenticationChallenged:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

.field public static final enum BuildRequestFailure:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

.field public static final enum CredentialError:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

.field public static final enum DeviceAlreadyRegistered:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

.field public static final enum DuplicateDeviceName:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

.field public static final enum Forbidden:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

.field public static final enum GenericError:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

.field public static final enum InvalidActorToken:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

.field public static final enum InvalidDirectedId:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

.field public static final enum InvalidRequest:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

.field public static final enum InvalidToken:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

.field public static final enum InvalidValue:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

.field public static final enum MethodNotAllowed:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

.field public static final enum MissingValue:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

.field public static final enum NetworkFailure:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

.field public static final enum NotImplemented:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

.field public static final enum ParseError:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

.field public static final enum ProtocolError:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

.field public static final enum ServerError:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

.field public static final enum ServiceUnavailable:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;


# instance fields
.field private final mCode:Ljava/lang/String;

.field private final mError:Lcom/amazon/identity/auth/device/api/MAPError;

.field private final mErrorMessage:Ljava/lang/String;

.field private final mLegacyError:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

.field private final mRetry:Z


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 18
    new-instance v8, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    sget-object v5, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    sget-object v6, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    const-string v1, "MissingValue"

    const/4 v2, 0x0

    const-string v3, "MissingValue"

    const/4 v4, 0x0

    const-string v7, "Missing value"

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;ZLcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;)V

    sput-object v8, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;->MissingValue:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    .line 19
    new-instance v0, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    sget-object v14, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    sget-object v15, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    const-string v10, "InvalidValue"

    const/4 v11, 0x1

    const-string v12, "InvalidValue"

    const/4 v13, 0x0

    const-string v16, "Invalid value"

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;ZLcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;->InvalidValue:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    .line 20
    new-instance v0, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    sget-object v6, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    sget-object v7, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    const-string v2, "InvalidToken"

    const/4 v3, 0x2

    const-string v4, "InvalidToken"

    const/4 v5, 0x0

    const-string v8, "Invalid token"

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;ZLcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;->InvalidToken:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    .line 21
    new-instance v0, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    sget-object v14, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    sget-object v15, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;->UNSUPPORTED_PROTOCOL:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    const-string v10, "ProtocolError"

    const/4 v11, 0x3

    const-string v12, "ProtocolError"

    const-string v16, "Protocol error"

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;ZLcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;->ProtocolError:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    .line 22
    new-instance v0, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    sget-object v6, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->CUSTOMER_NOT_FOUND:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    sget-object v7, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;->CUSTOMER_NOT_FOUND:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    const-string v2, "CredentialError"

    const/4 v3, 0x4

    const-string v4, "CredentialError"

    const-string v8, "Credential error"

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;ZLcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;->CredentialError:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    .line 23
    new-instance v0, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    sget-object v14, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    sget-object v15, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    const-string v10, "Forbidden"

    const/4 v11, 0x5

    const-string v12, "Forbidden"

    const-string v16, "Forbidden"

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;ZLcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;->Forbidden:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    .line 24
    new-instance v0, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    sget-object v6, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    sget-object v7, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->UNSUPPORTED_OPERATION:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    const-string v2, "MethodNotAllowed"

    const/4 v3, 0x6

    const-string v4, "MethodNotAllowed"

    const-string v8, "Method not allowed"

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;ZLcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;->MethodNotAllowed:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    .line 25
    new-instance v0, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    sget-object v14, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->UNRECOGNIZED:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    sget-object v15, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->SERVER_ERROR:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    const-string v10, "ServerError"

    const/4 v11, 0x7

    const-string v12, "ServerError"

    const/4 v13, 0x1

    const-string v16, "Server error"

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;ZLcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;->ServerError:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    .line 26
    new-instance v0, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    sget-object v6, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->UNRECOGNIZED:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    sget-object v7, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->SERVICE_UNAVAILABLE:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    invoke-virtual {v7}, Lcom/amazon/identity/auth/device/api/MAPError;->getErrorMessage()Ljava/lang/String;

    move-result-object v8

    const-string v2, "ServiceUnavailable"

    const/16 v3, 0x8

    const-string v4, "ServiceUnavailable"

    const/4 v5, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;ZLcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;->ServiceUnavailable:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    .line 27
    new-instance v0, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    sget-object v14, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    sget-object v15, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->FEATURE_NOT_IMPLEMENTED:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    invoke-virtual {v15}, Lcom/amazon/identity/auth/device/api/MAPError;->getErrorMessage()Ljava/lang/String;

    move-result-object v16

    const-string v10, "NotImplemented"

    const/16 v11, 0x9

    const-string v12, "NotImplemented"

    const/4 v13, 0x0

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;ZLcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;->NotImplemented:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    .line 28
    new-instance v0, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    sget-object v6, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    sget-object v7, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    const-string v2, "InvalidDirectedId"

    const/16 v3, 0xa

    const-string v4, "InvalidDirectedId"

    const/4 v5, 0x0

    const-string v8, "Invalid directedId"

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;ZLcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;->InvalidDirectedId:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    .line 29
    new-instance v0, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    sget-object v14, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->DEVICE_ALREADY_REGISTERED:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    sget-object v15, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;->DEVICE_ALREADY_REGISTERED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    invoke-virtual {v15}, Lcom/amazon/identity/auth/device/api/MAPError;->getErrorMessage()Ljava/lang/String;

    move-result-object v16

    const-string v10, "DeviceAlreadyRegistered"

    const/16 v11, 0xb

    const-string v12, "DeviceAlreadyRegistered"

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;ZLcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;->DeviceAlreadyRegistered:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    .line 30
    new-instance v0, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    sget-object v6, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->DUPLICATE_DEVICE_NAME:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    sget-object v7, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;->DUPLICATE_DEVICE_NAME:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    invoke-virtual {v7}, Lcom/amazon/identity/auth/device/api/MAPError;->getErrorMessage()Ljava/lang/String;

    move-result-object v8

    const-string v2, "DuplicateDeviceName"

    const/16 v3, 0xc

    const-string v4, "DuplicateDeviceName"

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;ZLcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;->DuplicateDeviceName:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    .line 31
    new-instance v0, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    const/16 v1, 0xd

    const-string v2, "GenericError"

    invoke-direct {v0, v2, v1}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;->GenericError:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    .line 32
    new-instance v0, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    sget-object v8, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->AUTHENTICATION_CHALLENGED:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    sget-object v9, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;->AUTHENTICATION_CHALLENGED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    invoke-virtual {v9}, Lcom/amazon/identity/auth/device/api/MAPError;->getErrorMessage()Ljava/lang/String;

    move-result-object v10

    const-string v4, "AuthenticationChallenged"

    const/16 v5, 0xe

    const-string v6, "AuthenticationChallenged"

    const/4 v7, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v10}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;ZLcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;->AuthenticationChallenged:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    .line 33
    new-instance v0, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    sget-object v16, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->PARSE_ERROR:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    sget-object v17, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->PARSE_ERROR:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    invoke-virtual/range {v17 .. v17}, Lcom/amazon/identity/auth/device/api/MAPError;->getErrorMessage()Ljava/lang/String;

    move-result-object v18

    const-string v12, "ParseError"

    const/16 v13, 0xf

    const-string v14, "ParseError"

    const/4 v15, 0x1

    move-object v11, v0

    invoke-direct/range {v11 .. v18}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;ZLcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;->ParseError:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    .line 34
    new-instance v0, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    sget-object v7, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    sget-object v8, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    const-string v3, "BuildRequestFailure"

    const/16 v4, 0x10

    const-string v5, "BuildRequestFailure"

    const/4 v6, 0x0

    const-string v9, "Build request failure"

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;ZLcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;->BuildRequestFailure:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    .line 35
    new-instance v0, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    sget-object v15, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->NETWORK_FAILURE:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    sget-object v16, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->NETWORK_ERROR:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    invoke-virtual/range {v16 .. v16}, Lcom/amazon/identity/auth/device/api/MAPError;->getErrorMessage()Ljava/lang/String;

    move-result-object v17

    const-string v11, "NetworkFailure"

    const/16 v12, 0x11

    const-string v13, "NetworkFailure"

    const/4 v14, 0x1

    move-object v10, v0

    invoke-direct/range {v10 .. v17}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;ZLcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;->NetworkFailure:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    .line 36
    new-instance v0, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    sget-object v7, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->ACTOR_NOT_ASSOCIATED:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    sget-object v8, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    const-string v3, "ActorNotAssociated"

    const/16 v4, 0x12

    const-string v5, "ActorNotAssociated"

    const-string v9, "Actor is not associated with account"

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;ZLcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;->ActorNotAssociated:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    .line 37
    new-instance v0, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    sget-object v15, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->INTERNAL_ERROR:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    sget-object v16, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->INTERNAL_ERROR:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    const-string v11, "InvalidActorToken"

    const/16 v12, 0x13

    const-string v13, "InvalidActorToken"

    const-string v17, "Actor token is invalid"

    move-object v10, v0

    invoke-direct/range {v10 .. v17}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;ZLcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;->InvalidActorToken:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    .line 38
    new-instance v0, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    sget-object v7, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    sget-object v8, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    const-string v3, "InvalidRequest"

    const/16 v4, 0x14

    const-string v5, "InvalidRequest"

    const-string v9, "The input is invalid"

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;ZLcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;->InvalidRequest:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    const/16 v2, 0x15

    new-array v2, v2, [Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    .line 16
    sget-object v3, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;->MissingValue:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;->InvalidValue:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    sget-object v3, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;->InvalidToken:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    const/4 v4, 0x2

    aput-object v3, v2, v4

    sget-object v3, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;->ProtocolError:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    const/4 v4, 0x3

    aput-object v3, v2, v4

    sget-object v3, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;->CredentialError:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    const/4 v4, 0x4

    aput-object v3, v2, v4

    sget-object v3, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;->Forbidden:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    const/4 v4, 0x5

    aput-object v3, v2, v4

    sget-object v3, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;->MethodNotAllowed:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    const/4 v4, 0x6

    aput-object v3, v2, v4

    sget-object v3, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;->ServerError:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    const/4 v4, 0x7

    aput-object v3, v2, v4

    sget-object v3, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;->ServiceUnavailable:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    const/16 v4, 0x8

    aput-object v3, v2, v4

    sget-object v3, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;->NotImplemented:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    const/16 v4, 0x9

    aput-object v3, v2, v4

    sget-object v3, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;->InvalidDirectedId:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    const/16 v4, 0xa

    aput-object v3, v2, v4

    sget-object v3, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;->DeviceAlreadyRegistered:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    const/16 v4, 0xb

    aput-object v3, v2, v4

    sget-object v3, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;->DuplicateDeviceName:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    const/16 v4, 0xc

    aput-object v3, v2, v4

    sget-object v3, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;->GenericError:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    aput-object v3, v2, v1

    sget-object v1, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;->AuthenticationChallenged:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    const/16 v3, 0xe

    aput-object v1, v2, v3

    sget-object v1, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;->ParseError:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    const/16 v3, 0xf

    aput-object v1, v2, v3

    sget-object v1, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;->BuildRequestFailure:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    const/16 v3, 0x10

    aput-object v1, v2, v3

    sget-object v1, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;->NetworkFailure:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    const/16 v3, 0x11

    aput-object v1, v2, v3

    sget-object v1, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;->ActorNotAssociated:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    const/16 v3, 0x12

    aput-object v1, v2, v3

    sget-object v1, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;->InvalidActorToken:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    const/16 v3, 0x13

    aput-object v1, v2, v3

    const/16 v1, 0x14

    aput-object v0, v2, v1

    sput-object v2, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;->$VALUES:[Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 49
    sget-object v5, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->UNRECOGNIZED:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    sget-object v6, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->INTERNAL_ERROR:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    invoke-virtual {v6}, Lcom/amazon/identity/auth/device/api/MAPError;->getErrorMessage()Ljava/lang/String;

    move-result-object v7

    const-string v3, "GenericError"

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v7}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;ZLcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;ZLcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;",
            "Lcom/amazon/identity/auth/device/api/MAPError;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 54
    iput-object p3, p0, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;->mCode:Ljava/lang/String;

    .line 55
    iput-boolean p4, p0, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;->mRetry:Z

    .line 56
    iput-object p5, p0, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;->mLegacyError:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 57
    iput-object p6, p0, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;->mError:Lcom/amazon/identity/auth/device/api/MAPError;

    .line 58
    iput-object p7, p0, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;->mErrorMessage:Ljava/lang/String;

    return-void
.end method

.method public static getAuthErrorTypeFromCode(Ljava/lang/String;)Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;
    .locals 5

    .line 88
    invoke-static {}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;->values()[Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 90
    invoke-virtual {v3}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;->getCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 96
    :cond_1
    sget-object p0, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;->GenericError:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;
    .locals 1

    .line 16
    const-class v0, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;
    .locals 1

    .line 16
    sget-object v0, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;->$VALUES:[Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    invoke-virtual {v0}, [Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    return-object v0
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;->mCode:Ljava/lang/String;

    return-object v0
.end method

.method public getError()Lcom/amazon/identity/auth/device/api/MAPError;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;->mError:Lcom/amazon/identity/auth/device/api/MAPError;

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;->mErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getRegistrationError()Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;->mLegacyError:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    return-object v0
.end method

.method public getRetry()Z
    .locals 1

    .line 68
    iget-boolean v0, p0, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;->mRetry:Z

    return v0
.end method
