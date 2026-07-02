.class public final enum Lcom/amazon/identity/kcpsdk/auth/AuthenticateAccountError;
.super Ljava/lang/Enum;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/identity/kcpsdk/auth/AuthenticateAccountError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/identity/kcpsdk/auth/AuthenticateAccountError;

.field public static final enum AuthenticateAccountErrorChallengeException:Lcom/amazon/identity/kcpsdk/auth/AuthenticateAccountError;

.field public static final enum AuthenticateAccountErrorCredentialError:Lcom/amazon/identity/kcpsdk/auth/AuthenticateAccountError;

.field public static final enum AuthenticateAccountErrorForbidden:Lcom/amazon/identity/kcpsdk/auth/AuthenticateAccountError;

.field public static final enum AuthenticateAccountErrorInvalidValue:Lcom/amazon/identity/kcpsdk/auth/AuthenticateAccountError;

.field public static final enum AuthenticateAccountErrorMissingValue:Lcom/amazon/identity/kcpsdk/auth/AuthenticateAccountError;

.field public static final enum AuthenticateAccountErrorServerError:Lcom/amazon/identity/kcpsdk/auth/AuthenticateAccountError;

.field public static final enum AuthenticateAccountErrorServiceUnavailable:Lcom/amazon/identity/kcpsdk/auth/AuthenticateAccountError;

.field public static final enum AuthenticateAccountErrorUnknown:Lcom/amazon/identity/kcpsdk/auth/AuthenticateAccountError;


# instance fields
.field private final mBaseError:Lcom/amazon/identity/kcpsdk/auth/PandaError;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 13
    new-instance v0, Lcom/amazon/identity/kcpsdk/auth/AuthenticateAccountError;

    sget-object v1, Lcom/amazon/identity/kcpsdk/auth/PandaError;->PandaErrorMissingValue:Lcom/amazon/identity/kcpsdk/auth/PandaError;

    const/4 v2, 0x0

    const-string v3, "AuthenticateAccountErrorMissingValue"

    invoke-direct {v0, v3, v2, v1}, Lcom/amazon/identity/kcpsdk/auth/AuthenticateAccountError;-><init>(Ljava/lang/String;ILcom/amazon/identity/kcpsdk/auth/PandaError;)V

    sput-object v0, Lcom/amazon/identity/kcpsdk/auth/AuthenticateAccountError;->AuthenticateAccountErrorMissingValue:Lcom/amazon/identity/kcpsdk/auth/AuthenticateAccountError;

    .line 14
    new-instance v0, Lcom/amazon/identity/kcpsdk/auth/AuthenticateAccountError;

    sget-object v1, Lcom/amazon/identity/kcpsdk/auth/PandaError;->PandaErrorInvalidValue:Lcom/amazon/identity/kcpsdk/auth/PandaError;

    const/4 v3, 0x1

    const-string v4, "AuthenticateAccountErrorInvalidValue"

    invoke-direct {v0, v4, v3, v1}, Lcom/amazon/identity/kcpsdk/auth/AuthenticateAccountError;-><init>(Ljava/lang/String;ILcom/amazon/identity/kcpsdk/auth/PandaError;)V

    sput-object v0, Lcom/amazon/identity/kcpsdk/auth/AuthenticateAccountError;->AuthenticateAccountErrorInvalidValue:Lcom/amazon/identity/kcpsdk/auth/AuthenticateAccountError;

    .line 15
    new-instance v0, Lcom/amazon/identity/kcpsdk/auth/AuthenticateAccountError;

    sget-object v1, Lcom/amazon/identity/kcpsdk/auth/PandaError;->PandaErrorCredentialError:Lcom/amazon/identity/kcpsdk/auth/PandaError;

    const/4 v4, 0x2

    const-string v5, "AuthenticateAccountErrorCredentialError"

    invoke-direct {v0, v5, v4, v1}, Lcom/amazon/identity/kcpsdk/auth/AuthenticateAccountError;-><init>(Ljava/lang/String;ILcom/amazon/identity/kcpsdk/auth/PandaError;)V

    sput-object v0, Lcom/amazon/identity/kcpsdk/auth/AuthenticateAccountError;->AuthenticateAccountErrorCredentialError:Lcom/amazon/identity/kcpsdk/auth/AuthenticateAccountError;

    .line 16
    new-instance v0, Lcom/amazon/identity/kcpsdk/auth/AuthenticateAccountError;

    sget-object v1, Lcom/amazon/identity/kcpsdk/auth/PandaError;->PandaErrorServerError:Lcom/amazon/identity/kcpsdk/auth/PandaError;

    const/4 v5, 0x3

    const-string v6, "AuthenticateAccountErrorServerError"

    invoke-direct {v0, v6, v5, v1}, Lcom/amazon/identity/kcpsdk/auth/AuthenticateAccountError;-><init>(Ljava/lang/String;ILcom/amazon/identity/kcpsdk/auth/PandaError;)V

    sput-object v0, Lcom/amazon/identity/kcpsdk/auth/AuthenticateAccountError;->AuthenticateAccountErrorServerError:Lcom/amazon/identity/kcpsdk/auth/AuthenticateAccountError;

    .line 17
    new-instance v0, Lcom/amazon/identity/kcpsdk/auth/AuthenticateAccountError;

    sget-object v1, Lcom/amazon/identity/kcpsdk/auth/PandaError;->PandaErrorServiceUnavailable:Lcom/amazon/identity/kcpsdk/auth/PandaError;

    const/4 v6, 0x4

    const-string v7, "AuthenticateAccountErrorServiceUnavailable"

    invoke-direct {v0, v7, v6, v1}, Lcom/amazon/identity/kcpsdk/auth/AuthenticateAccountError;-><init>(Ljava/lang/String;ILcom/amazon/identity/kcpsdk/auth/PandaError;)V

    sput-object v0, Lcom/amazon/identity/kcpsdk/auth/AuthenticateAccountError;->AuthenticateAccountErrorServiceUnavailable:Lcom/amazon/identity/kcpsdk/auth/AuthenticateAccountError;

    .line 18
    new-instance v0, Lcom/amazon/identity/kcpsdk/auth/AuthenticateAccountError;

    sget-object v1, Lcom/amazon/identity/kcpsdk/auth/PandaError;->PandaErrorUnknown:Lcom/amazon/identity/kcpsdk/auth/PandaError;

    const/4 v7, 0x5

    const-string v8, "AuthenticateAccountErrorUnknown"

    invoke-direct {v0, v8, v7, v1}, Lcom/amazon/identity/kcpsdk/auth/AuthenticateAccountError;-><init>(Ljava/lang/String;ILcom/amazon/identity/kcpsdk/auth/PandaError;)V

    sput-object v0, Lcom/amazon/identity/kcpsdk/auth/AuthenticateAccountError;->AuthenticateAccountErrorUnknown:Lcom/amazon/identity/kcpsdk/auth/AuthenticateAccountError;

    .line 19
    new-instance v0, Lcom/amazon/identity/kcpsdk/auth/AuthenticateAccountError;

    sget-object v1, Lcom/amazon/identity/kcpsdk/auth/PandaError;->PandaErrorChallengeException:Lcom/amazon/identity/kcpsdk/auth/PandaError;

    const/4 v8, 0x6

    const-string v9, "AuthenticateAccountErrorChallengeException"

    invoke-direct {v0, v9, v8, v1}, Lcom/amazon/identity/kcpsdk/auth/AuthenticateAccountError;-><init>(Ljava/lang/String;ILcom/amazon/identity/kcpsdk/auth/PandaError;)V

    sput-object v0, Lcom/amazon/identity/kcpsdk/auth/AuthenticateAccountError;->AuthenticateAccountErrorChallengeException:Lcom/amazon/identity/kcpsdk/auth/AuthenticateAccountError;

    .line 20
    new-instance v0, Lcom/amazon/identity/kcpsdk/auth/AuthenticateAccountError;

    sget-object v1, Lcom/amazon/identity/kcpsdk/auth/PandaError;->PandaErrorForbidden:Lcom/amazon/identity/kcpsdk/auth/PandaError;

    const/4 v9, 0x7

    const-string v10, "AuthenticateAccountErrorForbidden"

    invoke-direct {v0, v10, v9, v1}, Lcom/amazon/identity/kcpsdk/auth/AuthenticateAccountError;-><init>(Ljava/lang/String;ILcom/amazon/identity/kcpsdk/auth/PandaError;)V

    sput-object v0, Lcom/amazon/identity/kcpsdk/auth/AuthenticateAccountError;->AuthenticateAccountErrorForbidden:Lcom/amazon/identity/kcpsdk/auth/AuthenticateAccountError;

    const/16 v1, 0x8

    new-array v1, v1, [Lcom/amazon/identity/kcpsdk/auth/AuthenticateAccountError;

    .line 11
    sget-object v10, Lcom/amazon/identity/kcpsdk/auth/AuthenticateAccountError;->AuthenticateAccountErrorMissingValue:Lcom/amazon/identity/kcpsdk/auth/AuthenticateAccountError;

    aput-object v10, v1, v2

    sget-object v2, Lcom/amazon/identity/kcpsdk/auth/AuthenticateAccountError;->AuthenticateAccountErrorInvalidValue:Lcom/amazon/identity/kcpsdk/auth/AuthenticateAccountError;

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/identity/kcpsdk/auth/AuthenticateAccountError;->AuthenticateAccountErrorCredentialError:Lcom/amazon/identity/kcpsdk/auth/AuthenticateAccountError;

    aput-object v2, v1, v4

    sget-object v2, Lcom/amazon/identity/kcpsdk/auth/AuthenticateAccountError;->AuthenticateAccountErrorServerError:Lcom/amazon/identity/kcpsdk/auth/AuthenticateAccountError;

    aput-object v2, v1, v5

    sget-object v2, Lcom/amazon/identity/kcpsdk/auth/AuthenticateAccountError;->AuthenticateAccountErrorServiceUnavailable:Lcom/amazon/identity/kcpsdk/auth/AuthenticateAccountError;

    aput-object v2, v1, v6

    sget-object v2, Lcom/amazon/identity/kcpsdk/auth/AuthenticateAccountError;->AuthenticateAccountErrorUnknown:Lcom/amazon/identity/kcpsdk/auth/AuthenticateAccountError;

    aput-object v2, v1, v7

    sget-object v2, Lcom/amazon/identity/kcpsdk/auth/AuthenticateAccountError;->AuthenticateAccountErrorChallengeException:Lcom/amazon/identity/kcpsdk/auth/AuthenticateAccountError;

    aput-object v2, v1, v8

    aput-object v0, v1, v9

    sput-object v1, Lcom/amazon/identity/kcpsdk/auth/AuthenticateAccountError;->$VALUES:[Lcom/amazon/identity/kcpsdk/auth/AuthenticateAccountError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/amazon/identity/kcpsdk/auth/PandaError;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/identity/kcpsdk/auth/PandaError;",
            ")V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26
    iput-object p3, p0, Lcom/amazon/identity/kcpsdk/auth/AuthenticateAccountError;->mBaseError:Lcom/amazon/identity/kcpsdk/auth/PandaError;

    return-void
.end method

.method public static fromPandaError(Lcom/amazon/identity/kcpsdk/auth/PandaError;)Lcom/amazon/identity/kcpsdk/auth/AuthenticateAccountError;
    .locals 5

    .line 42
    invoke-static {}, Lcom/amazon/identity/kcpsdk/auth/AuthenticateAccountError;->values()[Lcom/amazon/identity/kcpsdk/auth/AuthenticateAccountError;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 44
    iget-object v4, v3, Lcom/amazon/identity/kcpsdk/auth/AuthenticateAccountError;->mBaseError:Lcom/amazon/identity/kcpsdk/auth/PandaError;

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/identity/kcpsdk/auth/AuthenticateAccountError;
    .locals 1

    .line 11
    const-class v0, Lcom/amazon/identity/kcpsdk/auth/AuthenticateAccountError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/identity/kcpsdk/auth/AuthenticateAccountError;

    return-object p0
.end method

.method public static values()[Lcom/amazon/identity/kcpsdk/auth/AuthenticateAccountError;
    .locals 1

    .line 11
    sget-object v0, Lcom/amazon/identity/kcpsdk/auth/AuthenticateAccountError;->$VALUES:[Lcom/amazon/identity/kcpsdk/auth/AuthenticateAccountError;

    invoke-virtual {v0}, [Lcom/amazon/identity/kcpsdk/auth/AuthenticateAccountError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/identity/kcpsdk/auth/AuthenticateAccountError;

    return-object v0
.end method


# virtual methods
.method public getErrorCode()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/amazon/identity/kcpsdk/auth/AuthenticateAccountError;->mBaseError:Lcom/amazon/identity/kcpsdk/auth/PandaError;

    invoke-virtual {v0}, Lcom/amazon/identity/kcpsdk/auth/PandaError;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/identity/kcpsdk/auth/AuthenticateAccountError;->mBaseError:Lcom/amazon/identity/kcpsdk/auth/PandaError;

    invoke-virtual {v1}, Lcom/amazon/identity/kcpsdk/auth/PandaError;->getErrorString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
