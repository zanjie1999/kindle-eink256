.class public final enum Lcom/amazon/identity/auth/device/framework/RetryLogic$RetryErrorMessageFromServerSide;
.super Ljava/lang/Enum;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/framework/RetryLogic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RetryErrorMessageFromServerSide"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/identity/auth/device/framework/RetryLogic$RetryErrorMessageFromServerSide;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/identity/auth/device/framework/RetryLogic$RetryErrorMessageFromServerSide;

.field public static final enum BackoffError:Lcom/amazon/identity/auth/device/framework/RetryLogic$RetryErrorMessageFromServerSide;

.field public static final enum InvalidJSON:Lcom/amazon/identity/auth/device/framework/RetryLogic$RetryErrorMessageFromServerSide;

.field public static final enum ServerInternalError:Lcom/amazon/identity/auth/device/framework/RetryLogic$RetryErrorMessageFromServerSide;


# instance fields
.field private mReason:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 71
    new-instance v0, Lcom/amazon/identity/auth/device/framework/RetryLogic$RetryErrorMessageFromServerSide;

    const/4 v1, 0x0

    const-string v2, "InvalidJSON"

    const-string v3, "Backend service returns invalid JSON"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/identity/auth/device/framework/RetryLogic$RetryErrorMessageFromServerSide;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/framework/RetryLogic$RetryErrorMessageFromServerSide;->InvalidJSON:Lcom/amazon/identity/auth/device/framework/RetryLogic$RetryErrorMessageFromServerSide;

    .line 72
    new-instance v0, Lcom/amazon/identity/auth/device/framework/RetryLogic$RetryErrorMessageFromServerSide;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const/16 v5, 0x1f4

    .line 73
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const/16 v5, 0x257

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const-string v5, "Backend service returns error code %d to %d"

    .line 72
    invoke-static {v2, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "ServerInternalError"

    invoke-direct {v0, v4, v6, v2}, Lcom/amazon/identity/auth/device/framework/RetryLogic$RetryErrorMessageFromServerSide;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/framework/RetryLogic$RetryErrorMessageFromServerSide;->ServerInternalError:Lcom/amazon/identity/auth/device/framework/RetryLogic$RetryErrorMessageFromServerSide;

    .line 74
    new-instance v0, Lcom/amazon/identity/auth/device/framework/RetryLogic$RetryErrorMessageFromServerSide;

    const-string v2, "BackoffError"

    const-string v4, "Request is within backoff interval"

    invoke-direct {v0, v2, v3, v4}, Lcom/amazon/identity/auth/device/framework/RetryLogic$RetryErrorMessageFromServerSide;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/framework/RetryLogic$RetryErrorMessageFromServerSide;->BackoffError:Lcom/amazon/identity/auth/device/framework/RetryLogic$RetryErrorMessageFromServerSide;

    const/4 v2, 0x3

    new-array v2, v2, [Lcom/amazon/identity/auth/device/framework/RetryLogic$RetryErrorMessageFromServerSide;

    .line 69
    sget-object v4, Lcom/amazon/identity/auth/device/framework/RetryLogic$RetryErrorMessageFromServerSide;->InvalidJSON:Lcom/amazon/identity/auth/device/framework/RetryLogic$RetryErrorMessageFromServerSide;

    aput-object v4, v2, v1

    sget-object v1, Lcom/amazon/identity/auth/device/framework/RetryLogic$RetryErrorMessageFromServerSide;->ServerInternalError:Lcom/amazon/identity/auth/device/framework/RetryLogic$RetryErrorMessageFromServerSide;

    aput-object v1, v2, v6

    aput-object v0, v2, v3

    sput-object v2, Lcom/amazon/identity/auth/device/framework/RetryLogic$RetryErrorMessageFromServerSide;->$VALUES:[Lcom/amazon/identity/auth/device/framework/RetryLogic$RetryErrorMessageFromServerSide;

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

    .line 78
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 79
    iput-object p3, p0, Lcom/amazon/identity/auth/device/framework/RetryLogic$RetryErrorMessageFromServerSide;->mReason:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/identity/auth/device/framework/RetryLogic$RetryErrorMessageFromServerSide;
    .locals 1

    .line 69
    const-class v0, Lcom/amazon/identity/auth/device/framework/RetryLogic$RetryErrorMessageFromServerSide;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/identity/auth/device/framework/RetryLogic$RetryErrorMessageFromServerSide;

    return-object p0
.end method

.method public static values()[Lcom/amazon/identity/auth/device/framework/RetryLogic$RetryErrorMessageFromServerSide;
    .locals 1

    .line 69
    sget-object v0, Lcom/amazon/identity/auth/device/framework/RetryLogic$RetryErrorMessageFromServerSide;->$VALUES:[Lcom/amazon/identity/auth/device/framework/RetryLogic$RetryErrorMessageFromServerSide;

    invoke-virtual {v0}, [Lcom/amazon/identity/auth/device/framework/RetryLogic$RetryErrorMessageFromServerSide;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/identity/auth/device/framework/RetryLogic$RetryErrorMessageFromServerSide;

    return-object v0
.end method


# virtual methods
.method public getReason()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/amazon/identity/auth/device/framework/RetryLogic$RetryErrorMessageFromServerSide;->mReason:Ljava/lang/String;

    return-object v0
.end method
