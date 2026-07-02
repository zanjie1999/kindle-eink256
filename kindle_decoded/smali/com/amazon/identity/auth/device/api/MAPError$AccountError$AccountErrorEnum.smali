.class final enum Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;
.super Ljava/lang/Enum;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/api/MAPError$MAPErrorMethods;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/api/MAPError$AccountError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "AccountErrorEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;",
        ">;",
        "Lcom/amazon/identity/auth/device/api/MAPError$MAPErrorMethods;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

.field public static final enum ACCOUNT_ALREADY_DEREGISTERED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

.field public static final enum ACCOUNT_ALREADY_REGISTERED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

.field public static final enum ACCOUNT_ENCRYPTION_KEY_NOT_FOUND:Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

.field public static final enum AUTHENTICATION_CHALLENGED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

.field public static final enum AUTHENTICATION_FAILED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

.field public static final enum CORRUPTED_ACCOUNT:Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

.field public static final enum CUSTOMER_NOT_FOUND:Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

.field public static final enum DELEGATEE_ACCOUNT_ALREADY_DEREGISTERED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

.field public static final enum DEREGISTER_FAILED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

.field public static final enum DEVICE_ALREADY_DEREGISTERED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

.field public static final enum DEVICE_ALREADY_REGISTERED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

.field public static final enum DEVICE_TYPE_UPGRADE_FAILED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

.field public static final enum DUPLICATE_DEVICE_NAME:Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

.field public static final enum INVALID_HTTP_METHOD:Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

.field public static final enum MISSING_CHALLENGE_EXCEPTION:Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

.field public static final enum MISSING_DEVICE_SECRET:Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

.field public static final enum MISSING_PACKAGE:Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

.field public static final enum REGISTER_FAILED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

.field public static final enum REPLACE_ACCOUNTS_FAILED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

.field public static final enum REQUIRES_3P_AUTHENTICATION:Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

.field public static final enum SETTING_CREDENTIALS_FAILED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

.field public static final enum UNSUPPORTED_PROTOCOL:Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;


# instance fields
.field private mErrorCode:I

.field private mErrorMessage:Ljava/lang/String;

.field private mErrorType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 127
    new-instance v6, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

    const-string v1, "CUSTOMER_NOT_FOUND"

    const/4 v2, 0x0

    const/16 v3, 0x64

    const-string v4, "CustomerNotFound"

    const-string v5, "Customer account does not exist"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;->CUSTOMER_NOT_FOUND:Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

    .line 128
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

    const-string v8, "REQUIRES_3P_AUTHENTICATION"

    const/4 v9, 0x1

    const/16 v10, 0x65

    const-string v11, "Requires3PAuthentication"

    const-string v12, "Authentication via a 3P identity provider is required"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;->REQUIRES_3P_AUTHENTICATION:Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

    .line 129
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

    const-string v2, "DELEGATEE_ACCOUNT_ALREADY_DEREGISTERED"

    const/4 v3, 0x2

    const/16 v4, 0x66

    const-string v5, "DelegateeAccountAlreadyDeregistered"

    const-string v6, "The delegatee account is already deregistered on this device"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;->DELEGATEE_ACCOUNT_ALREADY_DEREGISTERED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

    .line 130
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

    const-string v8, "ACCOUNT_ALREADY_REGISTERED"

    const/4 v9, 0x3

    const/16 v10, 0x67

    const-string v11, "AccountAlreadyRegistered"

    const-string v12, "Account has already been registered on this device"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;->ACCOUNT_ALREADY_REGISTERED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

    .line 131
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

    const-string v2, "REGISTER_FAILED"

    const/4 v3, 0x4

    const/16 v4, 0x68

    const-string v5, "RegisterFailed"

    const-string v6, "An error occurred during registration"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;->REGISTER_FAILED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

    .line 132
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

    const-string v8, "ACCOUNT_ALREADY_DEREGISTERED"

    const/4 v9, 0x5

    const/16 v10, 0x69

    const-string v11, "AccountAlreadyDeregistered"

    const-string v12, "Given account has already been deregistered"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;->ACCOUNT_ALREADY_DEREGISTERED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

    .line 133
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

    const-string v2, "DEREGISTER_FAILED"

    const/4 v3, 0x6

    const/16 v4, 0x6a

    const-string v5, "DeregisterFailed"

    const-string v6, "An error occurred during deregistration"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;->DEREGISTER_FAILED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

    .line 134
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

    const-string v8, "REPLACE_ACCOUNTS_FAILED"

    const/4 v9, 0x7

    const/16 v10, 0x6b

    const-string v11, "ReplaceAccounts"

    const-string v12, "Failed to replace accounts on device"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;->REPLACE_ACCOUNTS_FAILED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

    .line 135
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

    const-string v2, "AUTHENTICATION_FAILED"

    const/16 v3, 0x8

    const/16 v4, 0x6c

    const-string v5, "AuthenticationFailed"

    const-string v6, "An error occurred during authentication"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;->AUTHENTICATION_FAILED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

    .line 136
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

    const-string v8, "DEVICE_ALREADY_DEREGISTERED"

    const/16 v9, 0x9

    const/16 v10, 0x6d

    const-string v11, "DeviceAlreadyDeregistered"

    const-string v12, "Device already deregistered"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;->DEVICE_ALREADY_DEREGISTERED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

    .line 137
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

    const-string v2, "DUPLICATE_DEVICE_NAME"

    const/16 v3, 0xa

    const/16 v4, 0x6e

    const-string v5, "DuplicateDeviceName"

    const-string v6, "Cannot duplicate the device name"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;->DUPLICATE_DEVICE_NAME:Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

    .line 138
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

    const-string v8, "AUTHENTICATION_CHALLENGED"

    const/16 v9, 0xb

    const/16 v10, 0x6f

    const-string v11, "AuthenticationChallenged"

    const-string v12, "Authentication was challenged"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;->AUTHENTICATION_CHALLENGED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

    .line 139
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

    const-string v2, "MISSING_DEVICE_SECRET"

    const/16 v3, 0xc

    const/16 v4, 0x70

    const-string v5, "MissingDeviceSecret"

    const-string v6, "Missing the device secret"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;->MISSING_DEVICE_SECRET:Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

    .line 140
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

    const-string v8, "CORRUPTED_ACCOUNT"

    const/16 v9, 0xd

    const/16 v10, 0x71

    const-string v11, "CorruptedAccount"

    const-string v12, "This account has been corrupted"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;->CORRUPTED_ACCOUNT:Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

    .line 141
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

    const-string v2, "MISSING_PACKAGE"

    const/16 v3, 0xe

    const/16 v4, 0x72

    const-string v5, "MissingPackage"

    const-string v6, "Could not find a package to register the device type"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;->MISSING_PACKAGE:Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

    .line 142
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

    const-string v8, "DEVICE_TYPE_UPGRADE_FAILED"

    const/16 v9, 0xf

    const/16 v10, 0x73

    const-string v11, "DeviceTypeUpgradeFailed"

    const-string v12, "Cannot upgrade a legacy child device type to a different device type. Deregistering the device to clean up the bad state."

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;->DEVICE_TYPE_UPGRADE_FAILED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

    .line 143
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

    const-string v2, "DEVICE_ALREADY_REGISTERED"

    const/16 v3, 0x10

    const/16 v4, 0x74

    const-string v5, "DeviceAlreadyRegistered"

    const-string v6, "Device already registered"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;->DEVICE_ALREADY_REGISTERED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

    .line 144
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

    const-string v8, "MISSING_CHALLENGE_EXCEPTION"

    const/16 v9, 0x11

    const/16 v10, 0x75

    const-string v11, "MissingChallengeException"

    const-string v12, "Challenge exception is missing"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;->MISSING_CHALLENGE_EXCEPTION:Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

    .line 145
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

    const-string v2, "UNSUPPORTED_PROTOCOL"

    const/16 v3, 0x12

    const/16 v4, 0x76

    const-string v5, "UnsupportedProtocol"

    const-string v6, "Attempting to use an unsupported protocol"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;->UNSUPPORTED_PROTOCOL:Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

    .line 146
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

    const-string v8, "INVALID_HTTP_METHOD"

    const/16 v9, 0x13

    const/16 v10, 0x77

    const-string v11, "InvalidHTTPMethod"

    const-string v12, "Attempting to use an invalid HTTP method"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;->INVALID_HTTP_METHOD:Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

    .line 147
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

    const-string v2, "SETTING_CREDENTIALS_FAILED"

    const/16 v3, 0x14

    const/16 v4, 0x78

    const-string v5, "SettingCredentialsFailed"

    const-string v6, "An error occurred while setting the credentials"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;->SETTING_CREDENTIALS_FAILED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

    .line 148
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

    const-string v8, "ACCOUNT_ENCRYPTION_KEY_NOT_FOUND"

    const/16 v9, 0x15

    const/16 v10, 0x79

    const-string v11, "AccountEncryptionKeyNotFound"

    const-string v12, "Null/Invalid encryption key or key identifier received."

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;->ACCOUNT_ENCRYPTION_KEY_NOT_FOUND:Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

    const/16 v1, 0x16

    new-array v1, v1, [Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

    .line 125
    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;->CUSTOMER_NOT_FOUND:Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;->REQUIRES_3P_AUTHENTICATION:Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;->DELEGATEE_ACCOUNT_ALREADY_DEREGISTERED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;->ACCOUNT_ALREADY_REGISTERED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;->REGISTER_FAILED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;->ACCOUNT_ALREADY_DEREGISTERED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;->DEREGISTER_FAILED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;->REPLACE_ACCOUNTS_FAILED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

    const/4 v3, 0x7

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;->AUTHENTICATION_FAILED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

    const/16 v3, 0x8

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;->DEVICE_ALREADY_DEREGISTERED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

    const/16 v3, 0x9

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;->DUPLICATE_DEVICE_NAME:Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

    const/16 v3, 0xa

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;->AUTHENTICATION_CHALLENGED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

    const/16 v3, 0xb

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;->MISSING_DEVICE_SECRET:Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

    const/16 v3, 0xc

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;->CORRUPTED_ACCOUNT:Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;->MISSING_PACKAGE:Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;->DEVICE_TYPE_UPGRADE_FAILED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

    const/16 v3, 0xf

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;->DEVICE_ALREADY_REGISTERED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

    const/16 v3, 0x10

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;->MISSING_CHALLENGE_EXCEPTION:Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

    const/16 v3, 0x11

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;->UNSUPPORTED_PROTOCOL:Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

    const/16 v3, 0x12

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;->INVALID_HTTP_METHOD:Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

    const/16 v3, 0x13

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;->SETTING_CREDENTIALS_FAILED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

    const/16 v3, 0x14

    aput-object v2, v1, v3

    const/16 v2, 0x15

    aput-object v0, v1, v2

    sput-object v1, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;->$VALUES:[Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

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

    .line 155
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 156
    iput p3, p0, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;->mErrorCode:I

    .line 157
    iput-object p4, p0, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;->mErrorType:Ljava/lang/String;

    .line 158
    iput-object p5, p0, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;->mErrorMessage:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;
    .locals 1

    .line 125
    const-class v0, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

    return-object p0
.end method

.method public static values()[Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;
    .locals 1

    .line 125
    sget-object v0, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;->$VALUES:[Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

    invoke-virtual {v0}, [Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

    return-object v0
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .line 163
    iget v0, p0, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;->mErrorCode:I

    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;->mErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorType()Ljava/lang/String;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;->mErrorType:Ljava/lang/String;

    return-object v0
.end method
