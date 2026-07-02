.class public Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/UnauthenticatedEcdheKeyExchangeResponse;
.super Ljava/lang/Object;
.source "UnauthenticatedEcdheKeyExchangeResponse.java"


# instance fields
.field private final mDerPublicKey:[B

.field private final mSecureMessage:Lcom/amazon/whispercloak/SecureMessage;


# direct methods
.method public constructor <init>([B)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/UnauthenticatedEcdheKeyExchangeResponse;->mDerPublicKey:[B

    const/4 p1, 0x0

    .line 19
    iput-object p1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/UnauthenticatedEcdheKeyExchangeResponse;->mSecureMessage:Lcom/amazon/whispercloak/SecureMessage;

    return-void
.end method

.method public constructor <init>([BLcom/amazon/whispercloak/SecureMessage;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/UnauthenticatedEcdheKeyExchangeResponse;->mDerPublicKey:[B

    .line 24
    iput-object p2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/UnauthenticatedEcdheKeyExchangeResponse;->mSecureMessage:Lcom/amazon/whispercloak/SecureMessage;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 43
    :cond_0
    instance-of v0, p1, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/UnauthenticatedEcdheKeyExchangeResponse;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 47
    :cond_1
    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/UnauthenticatedEcdheKeyExchangeResponse;

    .line 49
    new-instance v0, Lorg/apache/commons/lang/builder/EqualsBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/UnauthenticatedEcdheKeyExchangeResponse;->mDerPublicKey:[B

    iget-object v2, p1, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/UnauthenticatedEcdheKeyExchangeResponse;->mDerPublicKey:[B

    .line 50
    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append([B[B)Lorg/apache/commons/lang/builder/EqualsBuilder;

    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/UnauthenticatedEcdheKeyExchangeResponse;->mSecureMessage:Lcom/amazon/whispercloak/SecureMessage;

    iget-object p1, p1, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/UnauthenticatedEcdheKeyExchangeResponse;->mSecureMessage:Lcom/amazon/whispercloak/SecureMessage;

    .line 51
    invoke-virtual {v0, v1, p1}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang/builder/EqualsBuilder;

    .line 52
    invoke-virtual {v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals()Z

    move-result p1

    return p1
.end method

.method public getDerPublicKey()[B
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/UnauthenticatedEcdheKeyExchangeResponse;->mDerPublicKey:[B

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public getSecureMessage()Lcom/amazon/whispercloak/SecureMessage;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/UnauthenticatedEcdheKeyExchangeResponse;->mSecureMessage:Lcom/amazon/whispercloak/SecureMessage;

    return-object v0
.end method

.method public hasSecureMessage()Z
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/UnauthenticatedEcdheKeyExchangeResponse;->mSecureMessage:Lcom/amazon/whispercloak/SecureMessage;

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

    .line 57
    new-instance v0, Lorg/apache/commons/lang/builder/HashCodeBuilder;

    const/16 v1, 0x11

    const/16 v2, 0x25

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/lang/builder/HashCodeBuilder;-><init>(II)V

    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/UnauthenticatedEcdheKeyExchangeResponse;->mDerPublicKey:[B

    .line 58
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append([B)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/UnauthenticatedEcdheKeyExchangeResponse;->mSecureMessage:Lcom/amazon/whispercloak/SecureMessage;

    .line 59
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    .line 60
    invoke-virtual {v0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->toHashCode()I

    move-result v0

    return v0
.end method
