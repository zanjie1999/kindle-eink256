.class public final enum Lcom/amazon/messaging/odot/webservices/transportdto/FIRSErrorType;
.super Ljava/lang/Enum;
.source "FIRSErrorType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/messaging/odot/webservices/transportdto/FIRSErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/messaging/odot/webservices/transportdto/FIRSErrorType;

.field public static final enum FIRSErrorTypeCustomerNotFound:Lcom/amazon/messaging/odot/webservices/transportdto/FIRSErrorType;

.field public static final enum FIRSErrorTypeDeviceAlreadyRegistered:Lcom/amazon/messaging/odot/webservices/transportdto/FIRSErrorType;

.field public static final enum FIRSErrorTypeDuplicateAccountName:Lcom/amazon/messaging/odot/webservices/transportdto/FIRSErrorType;

.field public static final enum FIRSErrorTypeInternalError:Lcom/amazon/messaging/odot/webservices/transportdto/FIRSErrorType;

.field public static final enum FIRSErrorTypeUnrecognized:Lcom/amazon/messaging/odot/webservices/transportdto/FIRSErrorType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 7
    new-instance v0, Lcom/amazon/messaging/odot/webservices/transportdto/FIRSErrorType;

    const/4 v1, 0x0

    const-string v2, "FIRSErrorTypeCustomerNotFound"

    invoke-direct {v0, v2, v1}, Lcom/amazon/messaging/odot/webservices/transportdto/FIRSErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/messaging/odot/webservices/transportdto/FIRSErrorType;->FIRSErrorTypeCustomerNotFound:Lcom/amazon/messaging/odot/webservices/transportdto/FIRSErrorType;

    .line 8
    new-instance v0, Lcom/amazon/messaging/odot/webservices/transportdto/FIRSErrorType;

    const/4 v2, 0x1

    const-string v3, "FIRSErrorTypeDeviceAlreadyRegistered"

    invoke-direct {v0, v3, v2}, Lcom/amazon/messaging/odot/webservices/transportdto/FIRSErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/messaging/odot/webservices/transportdto/FIRSErrorType;->FIRSErrorTypeDeviceAlreadyRegistered:Lcom/amazon/messaging/odot/webservices/transportdto/FIRSErrorType;

    .line 9
    new-instance v0, Lcom/amazon/messaging/odot/webservices/transportdto/FIRSErrorType;

    const/4 v3, 0x2

    const-string v4, "FIRSErrorTypeDuplicateAccountName"

    invoke-direct {v0, v4, v3}, Lcom/amazon/messaging/odot/webservices/transportdto/FIRSErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/messaging/odot/webservices/transportdto/FIRSErrorType;->FIRSErrorTypeDuplicateAccountName:Lcom/amazon/messaging/odot/webservices/transportdto/FIRSErrorType;

    .line 10
    new-instance v0, Lcom/amazon/messaging/odot/webservices/transportdto/FIRSErrorType;

    const/4 v4, 0x3

    const-string v5, "FIRSErrorTypeInternalError"

    invoke-direct {v0, v5, v4}, Lcom/amazon/messaging/odot/webservices/transportdto/FIRSErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/messaging/odot/webservices/transportdto/FIRSErrorType;->FIRSErrorTypeInternalError:Lcom/amazon/messaging/odot/webservices/transportdto/FIRSErrorType;

    .line 11
    new-instance v0, Lcom/amazon/messaging/odot/webservices/transportdto/FIRSErrorType;

    const/4 v5, 0x4

    const-string v6, "FIRSErrorTypeUnrecognized"

    invoke-direct {v0, v6, v5}, Lcom/amazon/messaging/odot/webservices/transportdto/FIRSErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/messaging/odot/webservices/transportdto/FIRSErrorType;->FIRSErrorTypeUnrecognized:Lcom/amazon/messaging/odot/webservices/transportdto/FIRSErrorType;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/amazon/messaging/odot/webservices/transportdto/FIRSErrorType;

    .line 6
    sget-object v7, Lcom/amazon/messaging/odot/webservices/transportdto/FIRSErrorType;->FIRSErrorTypeCustomerNotFound:Lcom/amazon/messaging/odot/webservices/transportdto/FIRSErrorType;

    aput-object v7, v6, v1

    sget-object v1, Lcom/amazon/messaging/odot/webservices/transportdto/FIRSErrorType;->FIRSErrorTypeDeviceAlreadyRegistered:Lcom/amazon/messaging/odot/webservices/transportdto/FIRSErrorType;

    aput-object v1, v6, v2

    sget-object v1, Lcom/amazon/messaging/odot/webservices/transportdto/FIRSErrorType;->FIRSErrorTypeDuplicateAccountName:Lcom/amazon/messaging/odot/webservices/transportdto/FIRSErrorType;

    aput-object v1, v6, v3

    sget-object v1, Lcom/amazon/messaging/odot/webservices/transportdto/FIRSErrorType;->FIRSErrorTypeInternalError:Lcom/amazon/messaging/odot/webservices/transportdto/FIRSErrorType;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/amazon/messaging/odot/webservices/transportdto/FIRSErrorType;->$VALUES:[Lcom/amazon/messaging/odot/webservices/transportdto/FIRSErrorType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/messaging/odot/webservices/transportdto/FIRSErrorType;
    .locals 1

    .line 6
    const-class v0, Lcom/amazon/messaging/odot/webservices/transportdto/FIRSErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/messaging/odot/webservices/transportdto/FIRSErrorType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/messaging/odot/webservices/transportdto/FIRSErrorType;
    .locals 1

    .line 6
    sget-object v0, Lcom/amazon/messaging/odot/webservices/transportdto/FIRSErrorType;->$VALUES:[Lcom/amazon/messaging/odot/webservices/transportdto/FIRSErrorType;

    invoke-virtual {v0}, [Lcom/amazon/messaging/odot/webservices/transportdto/FIRSErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/messaging/odot/webservices/transportdto/FIRSErrorType;

    return-object v0
.end method
