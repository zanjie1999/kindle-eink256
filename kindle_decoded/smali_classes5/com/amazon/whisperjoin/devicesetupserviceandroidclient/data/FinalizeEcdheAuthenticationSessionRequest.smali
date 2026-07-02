.class public Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FinalizeEcdheAuthenticationSessionRequest;
.super Ljava/lang/Object;
.source "FinalizeEcdheAuthenticationSessionRequest.java"


# instance fields
.field private final mAuthEcdheKeyExchangeResponse:[B

.field private final mContinuationToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 30
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FinalizeEcdheAuthenticationSessionRequest;->mContinuationToken:Ljava/lang/String;

    .line 31
    array-length p1, p2

    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FinalizeEcdheAuthenticationSessionRequest;->mAuthEcdheKeyExchangeResponse:[B

    return-void

    .line 26
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Key exchange response can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Continuation Token can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
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

    .line 56
    const-class v2, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FinalizeEcdheAuthenticationSessionRequest;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 59
    :cond_1
    check-cast p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FinalizeEcdheAuthenticationSessionRequest;

    .line 60
    iget-object v2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FinalizeEcdheAuthenticationSessionRequest;->mContinuationToken:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FinalizeEcdheAuthenticationSessionRequest;->mContinuationToken:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FinalizeEcdheAuthenticationSessionRequest;->mAuthEcdheKeyExchangeResponse:[B

    iget-object p1, p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FinalizeEcdheAuthenticationSessionRequest;->mAuthEcdheKeyExchangeResponse:[B

    .line 61
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

.method public getAuthEcdheKeyExchangeResponse()[B
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FinalizeEcdheAuthenticationSessionRequest;->mAuthEcdheKeyExchangeResponse:[B

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public getContinuationToken()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FinalizeEcdheAuthenticationSessionRequest;->mContinuationToken:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 66
    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FinalizeEcdheAuthenticationSessionRequest;->mContinuationToken:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FinalizeEcdheAuthenticationSessionRequest;->mAuthEcdheKeyExchangeResponse:[B

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 45
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FinalizeEcdheAuthenticationSessionRequest;->mContinuationToken:Ljava/lang/String;

    const-string v2, "mContinuationToken"

    .line 46
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/FinalizeEcdheAuthenticationSessionRequest;->mAuthEcdheKeyExchangeResponse:[B

    const-string v2, "mAuthEcdheKeyExchangeResponse"

    .line 47
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 48
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
