.class public Lcom/amazon/identity/auth/device/lf;
.super Ljava/lang/Object;
.source "DCP"


# instance fields
.field private final mError:Lcom/amazon/identity/auth/device/api/MAPError;

.field private final mErrorMessage:Ljava/lang/String;

.field private final mLegacyErrorCode:I

.field private final mLegacyErrorMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/amazon/identity/auth/device/lf;->mError:Lcom/amazon/identity/auth/device/api/MAPError;

    .line 16
    iput-object p2, p0, Lcom/amazon/identity/auth/device/lf;->mErrorMessage:Ljava/lang/String;

    .line 17
    iput p3, p0, Lcom/amazon/identity/auth/device/lf;->mLegacyErrorCode:I

    .line 18
    iput-object p4, p0, Lcom/amazon/identity/auth/device/lf;->mLegacyErrorMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bE()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/amazon/identity/auth/device/lf;->mLegacyErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getError()Lcom/amazon/identity/auth/device/api/MAPError;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/amazon/identity/auth/device/lf;->mError:Lcom/amazon/identity/auth/device/api/MAPError;

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/amazon/identity/auth/device/lf;->mErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public ie()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/amazon/identity/auth/device/lf;->mLegacyErrorCode:I

    return v0
.end method
