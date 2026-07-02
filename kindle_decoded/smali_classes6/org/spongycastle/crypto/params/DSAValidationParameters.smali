.class public Lorg/spongycastle/crypto/params/DSAValidationParameters;
.super Ljava/lang/Object;
.source "DSAValidationParameters.java"


# instance fields
.field private counter:I

.field private seed:[B

.field private usageIndex:I


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 51
    instance-of v0, p1, Lorg/spongycastle/crypto/params/DSAValidationParameters;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 56
    :cond_0
    check-cast p1, Lorg/spongycastle/crypto/params/DSAValidationParameters;

    .line 58
    iget v0, p1, Lorg/spongycastle/crypto/params/DSAValidationParameters;->counter:I

    iget v2, p0, Lorg/spongycastle/crypto/params/DSAValidationParameters;->counter:I

    if-eq v0, v2, :cond_1

    return v1

    .line 63
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/params/DSAValidationParameters;->seed:[B

    iget-object p1, p1, Lorg/spongycastle/crypto/params/DSAValidationParameters;->seed:[B

    invoke-static {v0, p1}, Lorg/spongycastle/util/Arrays;->areEqual([B[B)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 2

    .line 45
    iget v0, p0, Lorg/spongycastle/crypto/params/DSAValidationParameters;->counter:I

    iget-object v1, p0, Lorg/spongycastle/crypto/params/DSAValidationParameters;->seed:[B

    invoke-static {v1}, Lorg/spongycastle/util/Arrays;->hashCode([B)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
