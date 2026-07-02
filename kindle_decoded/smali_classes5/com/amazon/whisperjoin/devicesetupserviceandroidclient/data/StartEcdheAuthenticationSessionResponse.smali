.class public Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/StartEcdheAuthenticationSessionResponse;
.super Ljava/lang/Object;
.source "StartEcdheAuthenticationSessionResponse.java"


# instance fields
.field private final mContinuationToken:Ljava/lang/String;

.field private final mEcdsaSignatureBase64Encoded:Ljava/lang/String;

.field private final mProvisionerEcdhePublicKeyPemEncoded:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/StartEcdheAuthenticationSessionResponse;->mContinuationToken:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/StartEcdheAuthenticationSessionResponse;->mProvisionerEcdhePublicKeyPemEncoded:Ljava/lang/String;

    .line 22
    iput-object p3, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/StartEcdheAuthenticationSessionResponse;->mEcdsaSignatureBase64Encoded:Ljava/lang/String;

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

    .line 63
    const-class v2, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/StartEcdheAuthenticationSessionResponse;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 66
    :cond_1
    check-cast p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/StartEcdheAuthenticationSessionResponse;

    .line 67
    iget-object v2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/StartEcdheAuthenticationSessionResponse;->mContinuationToken:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/StartEcdheAuthenticationSessionResponse;->mContinuationToken:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/StartEcdheAuthenticationSessionResponse;->mProvisionerEcdhePublicKeyPemEncoded:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/StartEcdheAuthenticationSessionResponse;->mProvisionerEcdhePublicKeyPemEncoded:Ljava/lang/String;

    .line 68
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/StartEcdheAuthenticationSessionResponse;->mEcdsaSignatureBase64Encoded:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/StartEcdheAuthenticationSessionResponse;->mEcdsaSignatureBase64Encoded:Ljava/lang/String;

    .line 69
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

.method public getContinuationToken()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/StartEcdheAuthenticationSessionResponse;->mContinuationToken:Ljava/lang/String;

    return-object v0
.end method

.method public getEcdsaSignatureBase64Encoded()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/StartEcdheAuthenticationSessionResponse;->mEcdsaSignatureBase64Encoded:Ljava/lang/String;

    return-object v0
.end method

.method public getProvisionerEcdhePublicKeyPemEncoded()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/StartEcdheAuthenticationSessionResponse;->mProvisionerEcdhePublicKeyPemEncoded:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 74
    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/StartEcdheAuthenticationSessionResponse;->mContinuationToken:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/StartEcdheAuthenticationSessionResponse;->mProvisionerEcdhePublicKeyPemEncoded:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/StartEcdheAuthenticationSessionResponse;->mEcdsaSignatureBase64Encoded:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 51
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/StartEcdheAuthenticationSessionResponse;->mContinuationToken:Ljava/lang/String;

    const-string v2, "mContinuationToken"

    .line 52
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/StartEcdheAuthenticationSessionResponse;->mProvisionerEcdhePublicKeyPemEncoded:Ljava/lang/String;

    const-string v2, "mProvisionerEcdhePublicKeyPemEncoded"

    .line 53
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/StartEcdheAuthenticationSessionResponse;->mEcdsaSignatureBase64Encoded:Ljava/lang/String;

    const-string v2, "mEcdsaSignatureBase64Encoded"

    .line 54
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 55
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
