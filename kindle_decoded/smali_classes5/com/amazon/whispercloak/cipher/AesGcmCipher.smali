.class public Lcom/amazon/whispercloak/cipher/AesGcmCipher;
.super Ljava/lang/Object;
.source "AesGcmCipher.java"


# static fields
.field private static final BITS_IN_BYTE:I = 0x8

.field private static final IV_SIZE_BYTES:I = 0x10

.field private static final KEY_SIZE_BYTES:I = 0x10

.field private static final MAC_SIZE_BITS:I = 0x80


# instance fields
.field private final mCipher:Lorg/spongycastle/crypto/modes/GCMBlockCipher;

.field private final mSecureRandom:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;

    new-instance v1, Lorg/spongycastle/crypto/engines/AESFastEngine;

    invoke-direct {v1}, Lorg/spongycastle/crypto/engines/AESFastEngine;-><init>()V

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lcom/amazon/whispercloak/cipher/AesGcmCipher;->mCipher:Lorg/spongycastle/crypto/modes/GCMBlockCipher;

    .line 29
    invoke-static {}, Lcom/amazon/whispercloak/random/SecureRandomProvider;->getInstance()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispercloak/cipher/AesGcmCipher;->mSecureRandom:Ljava/security/SecureRandom;

    return-void
.end method

.method private createIV()[B
    .locals 2

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 107
    iget-object v1, p0, Lcom/amazon/whispercloak/cipher/AesGcmCipher;->mSecureRandom:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object v0
.end method

.method private getCipherParameters([B[B[B)Lorg/spongycastle/crypto/params/AEADParameters;
    .locals 3

    .line 92
    array-length v0, p1

    const/16 v1, 0x10

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    :goto_0
    const/16 v0, 0x80

    if-nez p3, :cond_1

    .line 98
    new-instance p3, Lorg/spongycastle/crypto/params/AEADParameters;

    new-instance v1, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-direct {v1, p1}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-direct {p3, v1, v0, p2}, Lorg/spongycastle/crypto/params/AEADParameters;-><init>(Lorg/spongycastle/crypto/params/KeyParameter;I[B)V

    return-object p3

    .line 100
    :cond_1
    new-instance v1, Lorg/spongycastle/crypto/params/AEADParameters;

    new-instance v2, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-direct {v2, p1}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-direct {v1, v2, v0, p2, p3}, Lorg/spongycastle/crypto/params/AEADParameters;-><init>(Lorg/spongycastle/crypto/params/KeyParameter;I[B[B)V

    return-object v1
.end method


# virtual methods
.method public decrypt([BLcom/amazon/whispercloak/SecureMessage;)[B
    .locals 9

    .line 65
    iget-object v0, p0, Lcom/amazon/whispercloak/cipher/AesGcmCipher;->mCipher:Lorg/spongycastle/crypto/modes/GCMBlockCipher;

    invoke-virtual {p2}, Lcom/amazon/whispercloak/SecureMessage;->getIv()[B

    move-result-object v1

    invoke-virtual {p2}, Lcom/amazon/whispercloak/SecureMessage;->getAad()[B

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lcom/amazon/whispercloak/cipher/AesGcmCipher;->getCipherParameters([B[B[B)Lorg/spongycastle/crypto/params/AEADParameters;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 68
    invoke-virtual {p2}, Lcom/amazon/whispercloak/SecureMessage;->getCipherText()[B

    move-result-object p1

    .line 69
    invoke-virtual {p2}, Lcom/amazon/whispercloak/SecureMessage;->getMac()[B

    move-result-object p2

    .line 70
    array-length v0, p1

    array-length v2, p2

    add-int v6, v0, v2

    new-array v4, v6, [B

    .line 71
    array-length v0, p1

    invoke-static {p1, v1, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    array-length p1, p1

    array-length v0, p2

    invoke-static {p2, v1, v4, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    iget-object p1, p0, Lcom/amazon/whispercloak/cipher/AesGcmCipher;->mCipher:Lorg/spongycastle/crypto/modes/GCMBlockCipher;

    invoke-virtual {p1, v6}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->getOutputSize(I)I

    move-result p1

    .line 76
    new-array p1, p1, [B

    .line 78
    iget-object v3, p0, Lcom/amazon/whispercloak/cipher/AesGcmCipher;->mCipher:Lorg/spongycastle/crypto/modes/GCMBlockCipher;

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v7, p1

    invoke-virtual/range {v3 .. v8}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->processBytes([BII[BI)I

    move-result p2

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispercloak/cipher/AesGcmCipher;->mCipher:Lorg/spongycastle/crypto/modes/GCMBlockCipher;

    invoke-virtual {v0, p1, p2}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->doFinal([BI)I
    :try_end_0
    .catch Lorg/spongycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 84
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public encrypt([B[B)Lcom/amazon/whispercloak/SecureMessage;
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/whispercloak/cipher/AesGcmCipher;->encrypt([B[B[B)Lcom/amazon/whispercloak/SecureMessage;

    move-result-object p1

    return-object p1
.end method

.method public encrypt([B[B[B)Lcom/amazon/whispercloak/SecureMessage;
    .locals 7

    .line 37
    invoke-direct {p0}, Lcom/amazon/whispercloak/cipher/AesGcmCipher;->createIV()[B

    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/amazon/whispercloak/cipher/AesGcmCipher;->mCipher:Lorg/spongycastle/crypto/modes/GCMBlockCipher;

    invoke-direct {p0, p1, v0, p3}, Lcom/amazon/whispercloak/cipher/AesGcmCipher;->getCipherParameters([B[B[B)Lorg/spongycastle/crypto/params/AEADParameters;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 41
    iget-object p1, p0, Lcom/amazon/whispercloak/cipher/AesGcmCipher;->mCipher:Lorg/spongycastle/crypto/modes/GCMBlockCipher;

    array-length v1, p2

    invoke-virtual {p1, v1}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->getOutputSize(I)I

    move-result p1

    .line 42
    new-array p1, p1, [B

    .line 44
    iget-object v1, p0, Lcom/amazon/whispercloak/cipher/AesGcmCipher;->mCipher:Lorg/spongycastle/crypto/modes/GCMBlockCipher;

    array-length v4, p2

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v5, p1

    invoke-virtual/range {v1 .. v6}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->processBytes([BII[BI)I

    move-result p2

    .line 47
    :try_start_0
    iget-object v1, p0, Lcom/amazon/whispercloak/cipher/AesGcmCipher;->mCipher:Lorg/spongycastle/crypto/modes/GCMBlockCipher;

    invoke-virtual {v1, p1, p2}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->doFinal([BI)I

    move-result v1
    :try_end_0
    .catch Lorg/spongycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr p2, v1

    const/16 v1, 0x10

    sub-int/2addr p2, v1

    .line 54
    new-array v2, p2, [B

    new-array v3, v1, [B

    const/4 v4, 0x0

    .line 57
    invoke-static {p1, v4, v2, v4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 58
    invoke-static {p1, p2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    new-instance p1, Lcom/amazon/whispercloak/SecureMessage;

    invoke-direct {p1, v0, v2, v3, p3}, Lcom/amazon/whispercloak/SecureMessage;-><init>([B[B[B[B)V

    return-object p1

    :catch_0
    move-exception p1

    .line 49
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
