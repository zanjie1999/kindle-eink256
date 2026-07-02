.class public final enum Lcom/amazon/identity/kcpsdk/auth/PandaError;
.super Ljava/lang/Enum;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/identity/kcpsdk/auth/PandaError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/identity/kcpsdk/auth/PandaError;

.field public static final enum PandaErrorChallengeException:Lcom/amazon/identity/kcpsdk/auth/PandaError;

.field public static final enum PandaErrorCredentialError:Lcom/amazon/identity/kcpsdk/auth/PandaError;

.field public static final enum PandaErrorForbidden:Lcom/amazon/identity/kcpsdk/auth/PandaError;

.field public static final enum PandaErrorInvalidValue:Lcom/amazon/identity/kcpsdk/auth/PandaError;

.field public static final enum PandaErrorMissingValue:Lcom/amazon/identity/kcpsdk/auth/PandaError;

.field public static final enum PandaErrorServerError:Lcom/amazon/identity/kcpsdk/auth/PandaError;

.field public static final enum PandaErrorServiceUnavailable:Lcom/amazon/identity/kcpsdk/auth/PandaError;

.field public static final enum PandaErrorUnknown:Lcom/amazon/identity/kcpsdk/auth/PandaError;


# instance fields
.field private final mErrorCode:Ljava/lang/String;

.field private final mErrorString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 10
    new-instance v0, Lcom/amazon/identity/kcpsdk/auth/PandaError;

    const/4 v1, 0x0

    const-string v2, "PandaErrorMissingValue"

    const-string v3, "MissingValue"

    const-string v4, "One or more required values are missing"

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/amazon/identity/kcpsdk/auth/PandaError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/kcpsdk/auth/PandaError;->PandaErrorMissingValue:Lcom/amazon/identity/kcpsdk/auth/PandaError;

    .line 11
    new-instance v0, Lcom/amazon/identity/kcpsdk/auth/PandaError;

    const/4 v2, 0x1

    const-string v3, "PandaErrorInvalidValue"

    const-string v4, "InvalidValue"

    const-string v5, "One or more required values are invalid"

    invoke-direct {v0, v3, v2, v4, v5}, Lcom/amazon/identity/kcpsdk/auth/PandaError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/kcpsdk/auth/PandaError;->PandaErrorInvalidValue:Lcom/amazon/identity/kcpsdk/auth/PandaError;

    .line 12
    new-instance v0, Lcom/amazon/identity/kcpsdk/auth/PandaError;

    const/4 v3, 0x2

    const-string v4, "PandaErrorCredentialError"

    const-string v5, "CredentialError"

    const-string v6, "Invalid credentials. The provided email or phone number and password did not match our records."

    invoke-direct {v0, v4, v3, v5, v6}, Lcom/amazon/identity/kcpsdk/auth/PandaError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/kcpsdk/auth/PandaError;->PandaErrorCredentialError:Lcom/amazon/identity/kcpsdk/auth/PandaError;

    .line 14
    new-instance v0, Lcom/amazon/identity/kcpsdk/auth/PandaError;

    const/4 v4, 0x3

    const-string v5, "PandaErrorServerError"

    const-string v6, "ServerError"

    const-string v7, "The server has encountered a runtime error"

    invoke-direct {v0, v5, v4, v6, v7}, Lcom/amazon/identity/kcpsdk/auth/PandaError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/kcpsdk/auth/PandaError;->PandaErrorServerError:Lcom/amazon/identity/kcpsdk/auth/PandaError;

    .line 15
    new-instance v0, Lcom/amazon/identity/kcpsdk/auth/PandaError;

    const/4 v5, 0x4

    const-string v6, "PandaErrorServiceUnavailable"

    const-string v7, "ServiceUnavailable"

    const-string v8, "The service is temporarily overloaded or unavailable, try again later"

    invoke-direct {v0, v6, v5, v7, v8}, Lcom/amazon/identity/kcpsdk/auth/PandaError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/kcpsdk/auth/PandaError;->PandaErrorServiceUnavailable:Lcom/amazon/identity/kcpsdk/auth/PandaError;

    .line 16
    new-instance v0, Lcom/amazon/identity/kcpsdk/auth/PandaError;

    const/4 v6, 0x5

    const-string v7, "PandaErrorForbidden"

    const-string v8, "Forbidden"

    const-string v9, "This application is not allowed to make this request."

    invoke-direct {v0, v7, v6, v8, v9}, Lcom/amazon/identity/kcpsdk/auth/PandaError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/kcpsdk/auth/PandaError;->PandaErrorForbidden:Lcom/amazon/identity/kcpsdk/auth/PandaError;

    .line 18
    new-instance v0, Lcom/amazon/identity/kcpsdk/auth/PandaError;

    const/4 v7, 0x6

    const-string v8, "PandaErrorUnknown"

    const-string v9, "UnknownError"

    const-string v10, "Unknown error"

    invoke-direct {v0, v8, v7, v9, v10}, Lcom/amazon/identity/kcpsdk/auth/PandaError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/kcpsdk/auth/PandaError;->PandaErrorUnknown:Lcom/amazon/identity/kcpsdk/auth/PandaError;

    .line 19
    new-instance v0, Lcom/amazon/identity/kcpsdk/auth/PandaError;

    const/4 v8, 0x7

    const-string v9, "PandaErrorChallengeException"

    const-string v10, "ChallengeException"

    const-string v11, "Additional credentials are required"

    invoke-direct {v0, v9, v8, v10, v11}, Lcom/amazon/identity/kcpsdk/auth/PandaError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/kcpsdk/auth/PandaError;->PandaErrorChallengeException:Lcom/amazon/identity/kcpsdk/auth/PandaError;

    const/16 v9, 0x8

    new-array v9, v9, [Lcom/amazon/identity/kcpsdk/auth/PandaError;

    .line 7
    sget-object v10, Lcom/amazon/identity/kcpsdk/auth/PandaError;->PandaErrorMissingValue:Lcom/amazon/identity/kcpsdk/auth/PandaError;

    aput-object v10, v9, v1

    sget-object v1, Lcom/amazon/identity/kcpsdk/auth/PandaError;->PandaErrorInvalidValue:Lcom/amazon/identity/kcpsdk/auth/PandaError;

    aput-object v1, v9, v2

    sget-object v1, Lcom/amazon/identity/kcpsdk/auth/PandaError;->PandaErrorCredentialError:Lcom/amazon/identity/kcpsdk/auth/PandaError;

    aput-object v1, v9, v3

    sget-object v1, Lcom/amazon/identity/kcpsdk/auth/PandaError;->PandaErrorServerError:Lcom/amazon/identity/kcpsdk/auth/PandaError;

    aput-object v1, v9, v4

    sget-object v1, Lcom/amazon/identity/kcpsdk/auth/PandaError;->PandaErrorServiceUnavailable:Lcom/amazon/identity/kcpsdk/auth/PandaError;

    aput-object v1, v9, v5

    sget-object v1, Lcom/amazon/identity/kcpsdk/auth/PandaError;->PandaErrorForbidden:Lcom/amazon/identity/kcpsdk/auth/PandaError;

    aput-object v1, v9, v6

    sget-object v1, Lcom/amazon/identity/kcpsdk/auth/PandaError;->PandaErrorUnknown:Lcom/amazon/identity/kcpsdk/auth/PandaError;

    aput-object v1, v9, v7

    aput-object v0, v9, v8

    sput-object v9, Lcom/amazon/identity/kcpsdk/auth/PandaError;->$VALUES:[Lcom/amazon/identity/kcpsdk/auth/PandaError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26
    iput-object p3, p0, Lcom/amazon/identity/kcpsdk/auth/PandaError;->mErrorCode:Ljava/lang/String;

    .line 27
    iput-object p4, p0, Lcom/amazon/identity/kcpsdk/auth/PandaError;->mErrorString:Ljava/lang/String;

    return-void
.end method

.method public static getPandaError(Ljava/lang/String;)Lcom/amazon/identity/kcpsdk/auth/PandaError;
    .locals 5

    .line 48
    invoke-static {}, Lcom/amazon/identity/kcpsdk/auth/PandaError;->values()[Lcom/amazon/identity/kcpsdk/auth/PandaError;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 50
    invoke-virtual {v3}, Lcom/amazon/identity/kcpsdk/auth/PandaError;->getErrorCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/identity/kcpsdk/auth/PandaError;
    .locals 1

    .line 7
    const-class v0, Lcom/amazon/identity/kcpsdk/auth/PandaError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/identity/kcpsdk/auth/PandaError;

    return-object p0
.end method

.method public static values()[Lcom/amazon/identity/kcpsdk/auth/PandaError;
    .locals 1

    .line 7
    sget-object v0, Lcom/amazon/identity/kcpsdk/auth/PandaError;->$VALUES:[Lcom/amazon/identity/kcpsdk/auth/PandaError;

    invoke-virtual {v0}, [Lcom/amazon/identity/kcpsdk/auth/PandaError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/identity/kcpsdk/auth/PandaError;

    return-object v0
.end method


# virtual methods
.method public getErrorCode()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/amazon/identity/kcpsdk/auth/PandaError;->mErrorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorString()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/amazon/identity/kcpsdk/auth/PandaError;->mErrorString:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/identity/kcpsdk/auth/PandaError;->mErrorString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
