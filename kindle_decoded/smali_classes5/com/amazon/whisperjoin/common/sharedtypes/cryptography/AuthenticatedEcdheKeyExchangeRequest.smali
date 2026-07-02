.class public Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/AuthenticatedEcdheKeyExchangeRequest;
.super Ljava/lang/Object;
.source "AuthenticatedEcdheKeyExchangeRequest.java"


# instance fields
.field private final mDerEncodedProvisionerPublicKey:[B

.field private final mEcdsaSignature:[B


# direct methods
.method public constructor <init>([B[B)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/AuthenticatedEcdheKeyExchangeRequest;->mDerEncodedProvisionerPublicKey:[B

    .line 21
    array-length p1, p2

    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/AuthenticatedEcdheKeyExchangeRequest;->mEcdsaSignature:[B

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 36
    const-class v0, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/AuthenticatedEcdheKeyExchangeRequest;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 38
    :cond_1
    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/AuthenticatedEcdheKeyExchangeRequest;

    .line 40
    new-instance v0, Lorg/apache/commons/lang/builder/EqualsBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/AuthenticatedEcdheKeyExchangeRequest;->mDerEncodedProvisionerPublicKey:[B

    iget-object v2, p1, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/AuthenticatedEcdheKeyExchangeRequest;->mDerEncodedProvisionerPublicKey:[B

    .line 41
    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append([B[B)Lorg/apache/commons/lang/builder/EqualsBuilder;

    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/AuthenticatedEcdheKeyExchangeRequest;->mEcdsaSignature:[B

    iget-object p1, p1, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/AuthenticatedEcdheKeyExchangeRequest;->mEcdsaSignature:[B

    .line 42
    invoke-virtual {v0, v1, p1}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append([B[B)Lorg/apache/commons/lang/builder/EqualsBuilder;

    .line 43
    invoke-virtual {v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals()Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getDerEncodedProvisionerPublicKey()[B
    .locals 2

    .line 25
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/AuthenticatedEcdheKeyExchangeRequest;->mDerEncodedProvisionerPublicKey:[B

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public getEcdsaSignature()[B
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/AuthenticatedEcdheKeyExchangeRequest;->mEcdsaSignature:[B

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 48
    new-instance v0, Lorg/apache/commons/lang/builder/HashCodeBuilder;

    const/16 v1, 0x11

    const/16 v2, 0x25

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/lang/builder/HashCodeBuilder;-><init>(II)V

    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/AuthenticatedEcdheKeyExchangeRequest;->mDerEncodedProvisionerPublicKey:[B

    .line 49
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append([B)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/AuthenticatedEcdheKeyExchangeRequest;->mEcdsaSignature:[B

    .line 50
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append([B)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    .line 51
    invoke-virtual {v0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->toHashCode()I

    move-result v0

    return v0
.end method
