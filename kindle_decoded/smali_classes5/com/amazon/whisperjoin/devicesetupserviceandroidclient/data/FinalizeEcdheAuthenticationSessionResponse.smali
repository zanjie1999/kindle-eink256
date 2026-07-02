.class public Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FinalizeEcdheAuthenticationSessionResponse;
.super Ljava/lang/Object;
.source "FinalizeEcdheAuthenticationSessionResponse.java"


# instance fields
.field private final mSessionKeyDEREncoded:[B


# direct methods
.method public constructor <init>([B)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FinalizeEcdheAuthenticationSessionResponse;->mSessionKeyDEREncoded:[B

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 27
    const-class v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FinalizeEcdheAuthenticationSessionResponse;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 30
    :cond_1
    check-cast p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FinalizeEcdheAuthenticationSessionResponse;

    .line 31
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FinalizeEcdheAuthenticationSessionResponse;->mSessionKeyDEREncoded:[B

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FinalizeEcdheAuthenticationSessionResponse;->getSessionKeyDEREncoded()[B

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getSessionKeyDEREncoded()[B
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FinalizeEcdheAuthenticationSessionResponse;->mSessionKeyDEREncoded:[B

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 36
    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FinalizeEcdheAuthenticationSessionResponse;->mSessionKeyDEREncoded:[B

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
