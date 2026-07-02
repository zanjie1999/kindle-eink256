.class public final Lcom/google/crypto/tink/integration/android/AndroidKeystoreAesGcm;
.super Ljava/lang/Object;
.source "AndroidKeystoreAesGcm.java"

# interfaces
.implements Lcom/google/crypto/tink/Aead;


# static fields
.field private static final IV_SIZE_IN_BYTES:I = 0xc

.field private static final MAX_WAIT_TIME_MILLISECONDS_BEFORE_RETRY:I = 0x64

.field private static final TAG:Ljava/lang/String; = "AndroidKeystoreAesGcm"

.field private static final TAG_SIZE_IN_BYTES:I = 0x10


# instance fields
.field private final key:Ljavax/crypto/SecretKey;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/security/KeyStore;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyId",
            "keyStore"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 58
    invoke-virtual {p2, p1, v0}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object p2

    check-cast p2, Ljavax/crypto/SecretKey;

    iput-object p2, p0, Lcom/google/crypto/tink/integration/android/AndroidKeystoreAesGcm;->key:Ljavax/crypto/SecretKey;

    if-eqz p2, :cond_0

    return-void

    .line 60
    :cond_0
    new-instance p2, Ljava/security/InvalidKeyException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Keystore cannot load the key with ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private decryptInternal([B[B)[B
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "ciphertext",
            "aad"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 107
    array-length v0, p1

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 110
    new-instance v0, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v1, 0x80

    const/4 v2, 0x0

    const/16 v3, 0xc

    invoke-direct {v0, v1, p1, v2, v3}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[BII)V

    const-string v1, "AES/GCM/NoPadding"

    .line 112
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v2, 0x2

    .line 113
    iget-object v4, p0, Lcom/google/crypto/tink/integration/android/AndroidKeystoreAesGcm;->key:Ljavax/crypto/SecretKey;

    invoke-virtual {v1, v2, v4, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 114
    invoke-virtual {v1, p2}, Ljavax/crypto/Cipher;->updateAAD([B)V

    .line 115
    array-length p2, p1

    sub-int/2addr p2, v3

    invoke-virtual {v1, p1, v3, p2}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object p1

    return-object p1

    .line 108
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "ciphertext too short"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private encryptInternal([B[B)[B
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "plaintext",
            "aad"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 79
    array-length v0, p1

    const v1, 0x7fffffe3

    if-gt v0, v1, :cond_0

    .line 82
    array-length v0, p1

    const/16 v1, 0xc

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x10

    new-array v0, v0, [B

    const-string v2, "AES/GCM/NoPadding"

    .line 83
    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v8

    const/4 v2, 0x1

    .line 84
    iget-object v3, p0, Lcom/google/crypto/tink/integration/android/AndroidKeystoreAesGcm;->key:Ljavax/crypto/SecretKey;

    invoke-virtual {v8, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 85
    invoke-virtual {v8, p2}, Ljavax/crypto/Cipher;->updateAAD([B)V

    const/4 v4, 0x0

    .line 86
    array-length v5, p1

    const/16 v7, 0xc

    move-object v2, v8

    move-object v3, p1

    move-object v6, v0

    .line 87
    invoke-virtual/range {v2 .. v7}, Ljavax/crypto/Cipher;->doFinal([BII[BI)I

    .line 89
    invoke-virtual {v8}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2, v0, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    .line 80
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "plaintext too long"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static sleep()V
    .locals 4

    .line 119
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double v0, v0, v2

    double-to-int v0, v0

    int-to-long v0, v0

    .line 121
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public decrypt([B[B)[B
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "ciphertext",
            "aad"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 97
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/google/crypto/tink/integration/android/AndroidKeystoreAesGcm;->decryptInternal([B[B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/security/ProviderException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 99
    :goto_0
    sget-object v1, Lcom/google/crypto/tink/integration/android/AndroidKeystoreAesGcm;->TAG:Ljava/lang/String;

    const-string v2, "encountered a potentially transient KeyStore error, will wait and retry"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    invoke-static {}, Lcom/google/crypto/tink/integration/android/AndroidKeystoreAesGcm;->sleep()V

    .line 101
    invoke-direct {p0, p1, p2}, Lcom/google/crypto/tink/integration/android/AndroidKeystoreAesGcm;->decryptInternal([B[B)[B

    move-result-object p1

    return-object p1
.end method

.method public encrypt([B[B)[B
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "plaintext",
            "aad"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 68
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/google/crypto/tink/integration/android/AndroidKeystoreAesGcm;->encryptInternal([B[B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/security/ProviderException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 70
    :goto_0
    sget-object v1, Lcom/google/crypto/tink/integration/android/AndroidKeystoreAesGcm;->TAG:Ljava/lang/String;

    const-string v2, "encountered a potentially transient KeyStore error, will wait and retry"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71
    invoke-static {}, Lcom/google/crypto/tink/integration/android/AndroidKeystoreAesGcm;->sleep()V

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/google/crypto/tink/integration/android/AndroidKeystoreAesGcm;->encryptInternal([B[B)[B

    move-result-object p1

    return-object p1
.end method
