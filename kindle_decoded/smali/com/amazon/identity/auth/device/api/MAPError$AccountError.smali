.class public final Lcom/amazon/identity/auth/device/api/MAPError$AccountError;
.super Lcom/amazon/identity/auth/device/api/MAPError;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/api/MAPError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AccountError"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;
    }
.end annotation


# static fields
.field public static final ACCOUNT_ALREADY_DEREGISTERED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final ACCOUNT_ALREADY_REGISTERED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final ACCOUNT_ENCRYPTION_KEY_NOT_FOUND:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final AUTHENTICATION_CHALLENGED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final AUTHENTICATION_FAILED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final CORRUPTED_ACCOUNT:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final CUSTOMER_NOT_FOUND:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final DELEGATEE_ACCOUNT_ALREADY_DEREGISTERED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final DEREGISTER_FAILED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final DEVICE_ALREADY_DEREGISTERED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final DEVICE_ALREADY_REGISTERED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final DEVICE_TYPE_UPGRADE_FAILED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final DUPLICATE_DEVICE_NAME:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final INVALID_HTTP_METHOD:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final MISSING_CHALLENGE_EXCEPTION:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final MISSING_DEVICE_SECRET:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final MISSING_PACKAGE:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final REGISTER_FAILED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final REPLACE_ACCOUNTS_FAILED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final REQUIRES_3P_AUTHENTICATION:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final SETTING_CREDENTIALS_FAILED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final UNSUPPORTED_PROTOCOL:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 181
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;->CUSTOMER_NOT_FOUND:Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

    invoke-direct {v0, v1}, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;-><init>(Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;->CUSTOMER_NOT_FOUND:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    .line 187
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;->DELEGATEE_ACCOUNT_ALREADY_DEREGISTERED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

    invoke-direct {v0, v1}, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;-><init>(Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;->DELEGATEE_ACCOUNT_ALREADY_DEREGISTERED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    .line 193
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;->ACCOUNT_ALREADY_REGISTERED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

    invoke-direct {v0, v1}, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;-><init>(Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;->ACCOUNT_ALREADY_REGISTERED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    .line 199
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;->REGISTER_FAILED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

    invoke-direct {v0, v1}, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;-><init>(Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;->REGISTER_FAILED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    .line 205
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;->ACCOUNT_ALREADY_DEREGISTERED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

    invoke-direct {v0, v1}, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;-><init>(Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;->ACCOUNT_ALREADY_DEREGISTERED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    .line 211
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;->DEREGISTER_FAILED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

    invoke-direct {v0, v1}, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;-><init>(Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;->DEREGISTER_FAILED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    .line 217
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;->AUTHENTICATION_FAILED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

    invoke-direct {v0, v1}, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;-><init>(Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;->AUTHENTICATION_FAILED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    .line 223
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;->DEVICE_ALREADY_DEREGISTERED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

    invoke-direct {v0, v1}, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;-><init>(Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;->DEVICE_ALREADY_DEREGISTERED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    .line 229
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;->DUPLICATE_DEVICE_NAME:Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

    invoke-direct {v0, v1}, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;-><init>(Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;->DUPLICATE_DEVICE_NAME:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    .line 235
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;->AUTHENTICATION_CHALLENGED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

    invoke-direct {v0, v1}, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;-><init>(Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;->AUTHENTICATION_CHALLENGED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    .line 241
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;->MISSING_DEVICE_SECRET:Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

    invoke-direct {v0, v1}, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;-><init>(Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;->MISSING_DEVICE_SECRET:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    .line 247
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;->MISSING_PACKAGE:Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

    invoke-direct {v0, v1}, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;-><init>(Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;->MISSING_PACKAGE:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    .line 253
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;->DEVICE_TYPE_UPGRADE_FAILED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

    invoke-direct {v0, v1}, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;-><init>(Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;->DEVICE_TYPE_UPGRADE_FAILED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    .line 259
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;->DEVICE_ALREADY_REGISTERED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

    invoke-direct {v0, v1}, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;-><init>(Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;->DEVICE_ALREADY_REGISTERED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    .line 265
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;->MISSING_CHALLENGE_EXCEPTION:Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

    invoke-direct {v0, v1}, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;-><init>(Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;->MISSING_CHALLENGE_EXCEPTION:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    .line 271
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;->UNSUPPORTED_PROTOCOL:Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

    invoke-direct {v0, v1}, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;-><init>(Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;->UNSUPPORTED_PROTOCOL:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    .line 277
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;->INVALID_HTTP_METHOD:Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

    invoke-direct {v0, v1}, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;-><init>(Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;->INVALID_HTTP_METHOD:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    .line 283
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;->SETTING_CREDENTIALS_FAILED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

    invoke-direct {v0, v1}, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;-><init>(Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;->SETTING_CREDENTIALS_FAILED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    .line 289
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;->CORRUPTED_ACCOUNT:Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

    invoke-direct {v0, v1}, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;-><init>(Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;->CORRUPTED_ACCOUNT:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    .line 295
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;->REPLACE_ACCOUNTS_FAILED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

    invoke-direct {v0, v1}, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;-><init>(Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;->REPLACE_ACCOUNTS_FAILED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    .line 301
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;->REQUIRES_3P_AUTHENTICATION:Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

    invoke-direct {v0, v1}, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;-><init>(Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;->REQUIRES_3P_AUTHENTICATION:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    .line 307
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;->ACCOUNT_ENCRYPTION_KEY_NOT_FOUND:Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;

    invoke-direct {v0, v1}, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;-><init>(Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;->ACCOUNT_ENCRYPTION_KEY_NOT_FOUND:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    return-void
.end method

.method private constructor <init>(Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;)V
    .locals 2

    .line 311
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;->getErrorCode()I

    move-result v0

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;->getErrorType()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/identity/auth/device/api/MAPError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;B)V
    .locals 0

    .line 123
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;-><init>(Lcom/amazon/identity/auth/device/api/MAPError$AccountError$AccountErrorEnum;)V

    return-void
.end method
