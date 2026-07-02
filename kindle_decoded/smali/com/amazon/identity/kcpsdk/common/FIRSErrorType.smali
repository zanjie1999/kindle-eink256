.class public final enum Lcom/amazon/identity/kcpsdk/common/FIRSErrorType;
.super Ljava/lang/Enum;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/identity/kcpsdk/common/FIRSErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/identity/kcpsdk/common/FIRSErrorType;

.field public static final enum FIRSErrorTypeCustomerNotFound:Lcom/amazon/identity/kcpsdk/common/FIRSErrorType;

.field public static final enum FIRSErrorTypeDeviceAlreadyRegistered:Lcom/amazon/identity/kcpsdk/common/FIRSErrorType;

.field public static final enum FIRSErrorTypeDuplicateAccountName:Lcom/amazon/identity/kcpsdk/common/FIRSErrorType;

.field public static final enum FIRSErrorTypeInternalError:Lcom/amazon/identity/kcpsdk/common/FIRSErrorType;

.field public static final enum FIRSErrorTypeInvalidAccountFound:Lcom/amazon/identity/kcpsdk/common/FIRSErrorType;

.field public static final enum FIRSErrorTypeUnrecognized:Lcom/amazon/identity/kcpsdk/common/FIRSErrorType;


# instance fields
.field private final mErrorCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 6
    new-instance v0, Lcom/amazon/identity/kcpsdk/common/FIRSErrorType;

    const/4 v1, 0x0

    const-string v2, "FIRSErrorTypeCustomerNotFound"

    const-string v3, "customer_not_found"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/identity/kcpsdk/common/FIRSErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/kcpsdk/common/FIRSErrorType;->FIRSErrorTypeCustomerNotFound:Lcom/amazon/identity/kcpsdk/common/FIRSErrorType;

    .line 7
    new-instance v0, Lcom/amazon/identity/kcpsdk/common/FIRSErrorType;

    const/4 v2, 0x1

    const-string v3, "FIRSErrorTypeDeviceAlreadyRegistered"

    const-string v4, "device_already_registered"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/identity/kcpsdk/common/FIRSErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/kcpsdk/common/FIRSErrorType;->FIRSErrorTypeDeviceAlreadyRegistered:Lcom/amazon/identity/kcpsdk/common/FIRSErrorType;

    .line 8
    new-instance v0, Lcom/amazon/identity/kcpsdk/common/FIRSErrorType;

    const/4 v3, 0x2

    const-string v4, "FIRSErrorTypeDuplicateAccountName"

    const-string v5, "duplicate_account_name"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/identity/kcpsdk/common/FIRSErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/kcpsdk/common/FIRSErrorType;->FIRSErrorTypeDuplicateAccountName:Lcom/amazon/identity/kcpsdk/common/FIRSErrorType;

    .line 9
    new-instance v0, Lcom/amazon/identity/kcpsdk/common/FIRSErrorType;

    const/4 v4, 0x3

    const-string v5, "FIRSErrorTypeInternalError"

    const-string/jumbo v6, "message"

    invoke-direct {v0, v5, v4, v6}, Lcom/amazon/identity/kcpsdk/common/FIRSErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/kcpsdk/common/FIRSErrorType;->FIRSErrorTypeInternalError:Lcom/amazon/identity/kcpsdk/common/FIRSErrorType;

    .line 10
    new-instance v0, Lcom/amazon/identity/kcpsdk/common/FIRSErrorType;

    const/4 v5, 0x4

    const-string v6, "FIRSErrorTypeUnrecognized"

    const-string/jumbo v7, "unrecognized"

    invoke-direct {v0, v6, v5, v7}, Lcom/amazon/identity/kcpsdk/common/FIRSErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/kcpsdk/common/FIRSErrorType;->FIRSErrorTypeUnrecognized:Lcom/amazon/identity/kcpsdk/common/FIRSErrorType;

    .line 15
    new-instance v0, Lcom/amazon/identity/kcpsdk/common/FIRSErrorType;

    const/4 v6, 0x5

    const-string v7, "FIRSErrorTypeInvalidAccountFound"

    const-string v8, "invalid_account_found"

    invoke-direct {v0, v7, v6, v8}, Lcom/amazon/identity/kcpsdk/common/FIRSErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/kcpsdk/common/FIRSErrorType;->FIRSErrorTypeInvalidAccountFound:Lcom/amazon/identity/kcpsdk/common/FIRSErrorType;

    const/4 v7, 0x6

    new-array v7, v7, [Lcom/amazon/identity/kcpsdk/common/FIRSErrorType;

    .line 4
    sget-object v8, Lcom/amazon/identity/kcpsdk/common/FIRSErrorType;->FIRSErrorTypeCustomerNotFound:Lcom/amazon/identity/kcpsdk/common/FIRSErrorType;

    aput-object v8, v7, v1

    sget-object v1, Lcom/amazon/identity/kcpsdk/common/FIRSErrorType;->FIRSErrorTypeDeviceAlreadyRegistered:Lcom/amazon/identity/kcpsdk/common/FIRSErrorType;

    aput-object v1, v7, v2

    sget-object v1, Lcom/amazon/identity/kcpsdk/common/FIRSErrorType;->FIRSErrorTypeDuplicateAccountName:Lcom/amazon/identity/kcpsdk/common/FIRSErrorType;

    aput-object v1, v7, v3

    sget-object v1, Lcom/amazon/identity/kcpsdk/common/FIRSErrorType;->FIRSErrorTypeInternalError:Lcom/amazon/identity/kcpsdk/common/FIRSErrorType;

    aput-object v1, v7, v4

    sget-object v1, Lcom/amazon/identity/kcpsdk/common/FIRSErrorType;->FIRSErrorTypeUnrecognized:Lcom/amazon/identity/kcpsdk/common/FIRSErrorType;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lcom/amazon/identity/kcpsdk/common/FIRSErrorType;->$VALUES:[Lcom/amazon/identity/kcpsdk/common/FIRSErrorType;

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

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    iput-object p3, p0, Lcom/amazon/identity/kcpsdk/common/FIRSErrorType;->mErrorCode:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/identity/kcpsdk/common/FIRSErrorType;
    .locals 1

    .line 4
    const-class v0, Lcom/amazon/identity/kcpsdk/common/FIRSErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/identity/kcpsdk/common/FIRSErrorType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/identity/kcpsdk/common/FIRSErrorType;
    .locals 1

    .line 4
    sget-object v0, Lcom/amazon/identity/kcpsdk/common/FIRSErrorType;->$VALUES:[Lcom/amazon/identity/kcpsdk/common/FIRSErrorType;

    invoke-virtual {v0}, [Lcom/amazon/identity/kcpsdk/common/FIRSErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/identity/kcpsdk/common/FIRSErrorType;

    return-object v0
.end method


# virtual methods
.method public getErrorCode()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/amazon/identity/kcpsdk/common/FIRSErrorType;->mErrorCode:Ljava/lang/String;

    return-object v0
.end method
