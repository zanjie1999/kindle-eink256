.class public Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/error/DSSServiceError;
.super Ljava/lang/Exception;
.source "DSSServiceError.java"


# static fields
.field public static final ERROR_403_FORBIDDEN:I = 0x193


# instance fields
.field private final mErrorCode:I

.field private final mErrorMessage:Ljava/lang/String;

.field private final mRetryCallAfterTimestampMs:Ljava/lang/Long;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/error/DSSServiceError;-><init>(ILjava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Long;)V
    .locals 2

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "An Error Occurred Making a called to DSS. HTTP Status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Message = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 23
    iput p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/error/DSSServiceError;->mErrorCode:I

    .line 24
    iput-object p2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/error/DSSServiceError;->mErrorMessage:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/error/DSSServiceError;->mRetryCallAfterTimestampMs:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 49
    const-class v2, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/error/DSSServiceError;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 52
    :cond_1
    check-cast p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/error/DSSServiceError;

    .line 53
    iget v2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/error/DSSServiceError;->mErrorCode:I

    iget v3, p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/error/DSSServiceError;->mErrorCode:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/error/DSSServiceError;->mErrorMessage:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/error/DSSServiceError;->mErrorMessage:Ljava/lang/String;

    .line 54
    invoke-static {v2, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getErrorCode()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/error/DSSServiceError;->mErrorCode:I

    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/error/DSSServiceError;->mErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getRetryCallAfterTimestampMs()Ljava/lang/Long;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/error/DSSServiceError;->mRetryCallAfterTimestampMs:Ljava/lang/Long;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 59
    iget v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/error/DSSServiceError;->mErrorCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/error/DSSServiceError;->mErrorMessage:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public is403Forbidden()Z
    .locals 2

    .line 41
    iget v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/error/DSSServiceError;->mErrorCode:I

    const/16 v1, 0x193

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
