.class public Lorg/spongycastle/jcajce/provider/asymmetric/util/IESUtil;
.super Ljava/lang/Object;
.source "IESUtil.java"


# direct methods
.method public static guessParameterSpec(Lorg/spongycastle/crypto/engines/IESEngine;)Lorg/spongycastle/jce/spec/IESParameterSpec;
    .locals 4

    .line 10
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/IESEngine;->getCipher()Lorg/spongycastle/crypto/BufferedBlockCipher;

    move-result-object v0

    const/16 v1, 0x80

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 12
    new-instance p0, Lorg/spongycastle/jce/spec/IESParameterSpec;

    invoke-direct {p0, v2, v2, v1}, Lorg/spongycastle/jce/spec/IESParameterSpec;-><init>([B[BI)V

    return-object p0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/IESEngine;->getCipher()Lorg/spongycastle/crypto/BufferedBlockCipher;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/crypto/BufferedBlockCipher;->getUnderlyingCipher()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object v0

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "DES"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 15
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/IESEngine;->getCipher()Lorg/spongycastle/crypto/BufferedBlockCipher;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/crypto/BufferedBlockCipher;->getUnderlyingCipher()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object v0

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "RC2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 16
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/IESEngine;->getCipher()Lorg/spongycastle/crypto/BufferedBlockCipher;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/crypto/BufferedBlockCipher;->getUnderlyingCipher()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object v0

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "RC5-32"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 17
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/IESEngine;->getCipher()Lorg/spongycastle/crypto/BufferedBlockCipher;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/crypto/BufferedBlockCipher;->getUnderlyingCipher()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object v0

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "RC5-64"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 21
    :cond_1
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/IESEngine;->getCipher()Lorg/spongycastle/crypto/BufferedBlockCipher;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/crypto/BufferedBlockCipher;->getUnderlyingCipher()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object v0

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "SKIPJACK"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 23
    new-instance p0, Lorg/spongycastle/jce/spec/IESParameterSpec;

    const/16 v0, 0x50

    invoke-direct {p0, v2, v2, v0, v0}, Lorg/spongycastle/jce/spec/IESParameterSpec;-><init>([B[BII)V

    return-object p0

    .line 25
    :cond_2
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/IESEngine;->getCipher()Lorg/spongycastle/crypto/BufferedBlockCipher;

    move-result-object p0

    invoke-virtual {p0}, Lorg/spongycastle/crypto/BufferedBlockCipher;->getUnderlyingCipher()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object p0

    invoke-interface {p0}, Lorg/spongycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "GOST28147"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 27
    new-instance p0, Lorg/spongycastle/jce/spec/IESParameterSpec;

    const/16 v0, 0x100

    invoke-direct {p0, v2, v2, v0, v0}, Lorg/spongycastle/jce/spec/IESParameterSpec;-><init>([B[BII)V

    return-object p0

    .line 30
    :cond_3
    new-instance p0, Lorg/spongycastle/jce/spec/IESParameterSpec;

    invoke-direct {p0, v2, v2, v1, v1}, Lorg/spongycastle/jce/spec/IESParameterSpec;-><init>([B[BII)V

    return-object p0

    .line 19
    :cond_4
    :goto_0
    new-instance p0, Lorg/spongycastle/jce/spec/IESParameterSpec;

    const/16 v0, 0x40

    invoke-direct {p0, v2, v2, v0, v0}, Lorg/spongycastle/jce/spec/IESParameterSpec;-><init>([B[BII)V

    return-object p0
.end method
