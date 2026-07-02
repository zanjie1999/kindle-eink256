.class public final enum Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountManagerFailure;
.super Ljava/lang/Enum;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/metrics/SSOMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AccountManagerFailure"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountManagerFailure;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountManagerFailure;

.field public static final enum BAD_ARGUMENTS:Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountManagerFailure;

.field public static final enum BAD_REQUEST:Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountManagerFailure;

.field public static final enum CANCELED:Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountManagerFailure;

.field public static final enum INVALID_RESPONSE:Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountManagerFailure;

.field public static final enum NETWORK_ERROR:Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountManagerFailure;

.field public static final enum REMOTE_EXCEPTION:Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountManagerFailure;

.field public static final enum UNRECOGNIZED:Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountManagerFailure;

.field public static final enum UNSUPPORTED_OPERATION:Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountManagerFailure;


# instance fields
.field private final mErrorCode:I

.field private final mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 49
    new-instance v0, Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountManagerFailure;

    const/4 v1, 0x0

    const/4 v2, 0x7

    const-string v3, "BAD_ARGUMENTS"

    const-string v4, "BadArguments"

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountManagerFailure;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountManagerFailure;->BAD_ARGUMENTS:Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountManagerFailure;

    .line 50
    new-instance v0, Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountManagerFailure;

    const/16 v3, 0x8

    const/4 v4, 0x1

    const-string v5, "BAD_REQUEST"

    const-string v6, "BadRequest"

    invoke-direct {v0, v5, v4, v3, v6}, Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountManagerFailure;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountManagerFailure;->BAD_REQUEST:Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountManagerFailure;

    .line 51
    new-instance v0, Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountManagerFailure;

    const/4 v5, 0x2

    const/4 v6, 0x4

    const-string v7, "CANCELED"

    const-string v8, "Cancelled"

    invoke-direct {v0, v7, v5, v6, v8}, Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountManagerFailure;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountManagerFailure;->CANCELED:Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountManagerFailure;

    .line 52
    new-instance v0, Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountManagerFailure;

    const/4 v7, 0x5

    const/4 v8, 0x3

    const-string v9, "INVALID_RESPONSE"

    const-string v10, "InvalidResponse"

    invoke-direct {v0, v9, v8, v7, v10}, Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountManagerFailure;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountManagerFailure;->INVALID_RESPONSE:Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountManagerFailure;

    .line 53
    new-instance v0, Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountManagerFailure;

    const-string v9, "NETWORK_ERROR"

    const-string v10, "NetworkError"

    invoke-direct {v0, v9, v6, v8, v10}, Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountManagerFailure;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountManagerFailure;->NETWORK_ERROR:Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountManagerFailure;

    .line 54
    new-instance v0, Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountManagerFailure;

    const-string v9, "REMOTE_EXCEPTION"

    const-string v10, "RemoteException"

    invoke-direct {v0, v9, v7, v4, v10}, Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountManagerFailure;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountManagerFailure;->REMOTE_EXCEPTION:Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountManagerFailure;

    .line 55
    new-instance v0, Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountManagerFailure;

    const/4 v9, 0x6

    const-string v10, "UNSUPPORTED_OPERATION"

    const-string v11, "UnsupportedOperation"

    invoke-direct {v0, v10, v9, v9, v11}, Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountManagerFailure;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountManagerFailure;->UNSUPPORTED_OPERATION:Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountManagerFailure;

    .line 56
    new-instance v0, Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountManagerFailure;

    const-string v10, "UNRECOGNIZED"

    const/16 v11, 0x9

    const-string v12, "UnrecognizedExternalError"

    invoke-direct {v0, v10, v2, v11, v12}, Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountManagerFailure;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountManagerFailure;->UNRECOGNIZED:Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountManagerFailure;

    new-array v3, v3, [Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountManagerFailure;

    .line 47
    sget-object v10, Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountManagerFailure;->BAD_ARGUMENTS:Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountManagerFailure;

    aput-object v10, v3, v1

    sget-object v1, Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountManagerFailure;->BAD_REQUEST:Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountManagerFailure;

    aput-object v1, v3, v4

    sget-object v1, Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountManagerFailure;->CANCELED:Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountManagerFailure;

    aput-object v1, v3, v5

    sget-object v1, Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountManagerFailure;->INVALID_RESPONSE:Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountManagerFailure;

    aput-object v1, v3, v8

    sget-object v1, Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountManagerFailure;->NETWORK_ERROR:Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountManagerFailure;

    aput-object v1, v3, v6

    sget-object v1, Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountManagerFailure;->REMOTE_EXCEPTION:Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountManagerFailure;

    aput-object v1, v3, v7

    sget-object v1, Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountManagerFailure;->UNSUPPORTED_OPERATION:Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountManagerFailure;

    aput-object v1, v3, v9

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountManagerFailure;->$VALUES:[Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountManagerFailure;

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

    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 63
    iput p3, p0, Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountManagerFailure;->mErrorCode:I

    .line 64
    iput-object p4, p0, Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountManagerFailure;->mName:Ljava/lang/String;

    return-void
.end method

.method public static getFromAccountManagerErrorCode(I)Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountManagerFailure;
    .locals 5

    .line 79
    invoke-static {}, Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountManagerFailure;->values()[Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountManagerFailure;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 81
    invoke-virtual {v3}, Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountManagerFailure;->getAccountManagerErrorCode()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 87
    :cond_1
    sget-object p0, Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountManagerFailure;->UNRECOGNIZED:Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountManagerFailure;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountManagerFailure;
    .locals 1

    .line 47
    const-class v0, Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountManagerFailure;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountManagerFailure;

    return-object p0
.end method

.method public static values()[Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountManagerFailure;
    .locals 1

    .line 47
    sget-object v0, Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountManagerFailure;->$VALUES:[Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountManagerFailure;

    invoke-virtual {v0}, [Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountManagerFailure;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountManagerFailure;

    return-object v0
.end method


# virtual methods
.method public getAccountManagerErrorCode()I
    .locals 1

    .line 74
    iget v0, p0, Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountManagerFailure;->mErrorCode:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountManagerFailure;->mName:Ljava/lang/String;

    return-object v0
.end method
