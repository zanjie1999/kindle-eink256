.class public Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/UnauthenticatedEcdheKeyExchangeRequest;
.super Ljava/lang/Object;
.source "UnauthenticatedEcdheKeyExchangeRequest.java"


# instance fields
.field private final mDerPublicKey:[B

.field private final mEcdsaSignature:[B


# direct methods
.method public constructor <init>([B)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/UnauthenticatedEcdheKeyExchangeRequest;->mDerPublicKey:[B

    const/4 p1, 0x0

    .line 18
    iput-object p1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/UnauthenticatedEcdheKeyExchangeRequest;->mEcdsaSignature:[B

    return-void
.end method

.method public constructor <init>([B[B)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/UnauthenticatedEcdheKeyExchangeRequest;->mDerPublicKey:[B

    .line 23
    array-length p1, p2

    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/UnauthenticatedEcdheKeyExchangeRequest;->mEcdsaSignature:[B

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 45
    :cond_0
    instance-of v0, p1, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/UnauthenticatedEcdheKeyExchangeRequest;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 49
    :cond_1
    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/UnauthenticatedEcdheKeyExchangeRequest;

    .line 51
    new-instance v0, Lorg/apache/commons/lang/builder/EqualsBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/UnauthenticatedEcdheKeyExchangeRequest;->mDerPublicKey:[B

    iget-object v2, p1, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/UnauthenticatedEcdheKeyExchangeRequest;->mDerPublicKey:[B

    .line 52
    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append([B[B)Lorg/apache/commons/lang/builder/EqualsBuilder;

    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/UnauthenticatedEcdheKeyExchangeRequest;->mEcdsaSignature:[B

    iget-object p1, p1, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/UnauthenticatedEcdheKeyExchangeRequest;->mEcdsaSignature:[B

    .line 53
    invoke-virtual {v0, v1, p1}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append([B[B)Lorg/apache/commons/lang/builder/EqualsBuilder;

    .line 54
    invoke-virtual {v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals()Z

    move-result p1

    return p1
.end method

.method public getDerPublicKey()[B
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/UnauthenticatedEcdheKeyExchangeRequest;->mDerPublicKey:[B

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public getEcdsaSignature()[B
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/UnauthenticatedEcdheKeyExchangeRequest;->mEcdsaSignature:[B

    if-eqz v0, :cond_0

    .line 36
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasEcdsaSignature()Z
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/UnauthenticatedEcdheKeyExchangeRequest;->mEcdsaSignature:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 59
    new-instance v0, Lorg/apache/commons/lang/builder/HashCodeBuilder;

    const/16 v1, 0x11

    const/16 v2, 0x25

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/lang/builder/HashCodeBuilder;-><init>(II)V

    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/UnauthenticatedEcdheKeyExchangeRequest;->mDerPublicKey:[B

    .line 60
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append([B)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/UnauthenticatedEcdheKeyExchangeRequest;->mEcdsaSignature:[B

    .line 61
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append([B)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    .line 62
    invoke-virtual {v0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->toHashCode()I

    move-result v0

    return v0
.end method
