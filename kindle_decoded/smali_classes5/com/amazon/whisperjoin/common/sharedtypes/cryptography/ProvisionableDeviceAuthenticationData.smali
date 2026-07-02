.class public Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/ProvisionableDeviceAuthenticationData;
.super Ljava/lang/Object;
.source "ProvisionableDeviceAuthenticationData.java"


# instance fields
.field private final mCertificateChain:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field private final mSignature:[B


# direct methods
.method public constructor <init>(Ljava/util/List;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;[B)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/ProvisionableDeviceAuthenticationData;->mCertificateChain:Ljava/util/List;

    .line 22
    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/ProvisionableDeviceAuthenticationData;->mSignature:[B

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 37
    const-class v2, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/ProvisionableDeviceAuthenticationData;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 39
    :cond_1
    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/ProvisionableDeviceAuthenticationData;

    .line 41
    new-instance v2, Lorg/apache/commons/lang/builder/EqualsBuilder;

    invoke-direct {v2}, Lorg/apache/commons/lang/builder/EqualsBuilder;-><init>()V

    iget-object v3, p0, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/ProvisionableDeviceAuthenticationData;->mSignature:[B

    iget-object v4, p1, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/ProvisionableDeviceAuthenticationData;->mSignature:[B

    .line 42
    invoke-virtual {v2, v3, v4}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append([B[B)Lorg/apache/commons/lang/builder/EqualsBuilder;

    .line 43
    invoke-virtual {v2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/ProvisionableDeviceAuthenticationData;->mCertificateChain:Ljava/util/List;

    .line 45
    invoke-interface {v2}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v2

    iget-object p1, p1, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/ProvisionableDeviceAuthenticationData;->mCertificateChain:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, p1}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

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

.method public getCertificateChain()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/ProvisionableDeviceAuthenticationData;->mCertificateChain:Ljava/util/List;

    return-object v0
.end method

.method public getSignature()[B
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/ProvisionableDeviceAuthenticationData;->mSignature:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 50
    new-instance v0, Lorg/apache/commons/lang/builder/HashCodeBuilder;

    const/16 v1, 0x11

    const/16 v2, 0x25

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/lang/builder/HashCodeBuilder;-><init>(II)V

    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/ProvisionableDeviceAuthenticationData;->mCertificateChain:Ljava/util/List;

    .line 51
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/ProvisionableDeviceAuthenticationData;->mSignature:[B

    .line 52
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append([B)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    .line 53
    invoke-virtual {v0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->toHashCode()I

    move-result v0

    return v0
.end method
