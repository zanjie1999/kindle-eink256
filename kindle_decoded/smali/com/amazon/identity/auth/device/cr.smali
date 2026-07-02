.class public Lcom/amazon/identity/auth/device/cr;
.super Ljava/lang/Object;
.source "DCP"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.cr"


# instance fields
.field private final iz:Ljavax/crypto/spec/SecretKeySpec;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 42
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/cr;->iz:Ljavax/crypto/spec/SecretKeySpec;

    return-void

    .line 40
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "encryption key was null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Lcom/amazon/identity/auth/device/ea;)Ljava/lang/String;
    .locals 5

    .line 47
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/ea;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/ea;->getDeviceSerialNumber()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    :try_start_0
    const-string v1, "PBKDF2WithHmacSHA1"

    .line 58
    invoke-static {v1}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v1

    .line 59
    new-instance v2, Ljavax/crypto/spec/PBEKeySpec;

    .line 60
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 61
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const/16 v3, 0x3e8

    const/16 v4, 0x80

    invoke-direct {v2, v0, p0, v3, v4}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 64
    invoke-virtual {v1, v2}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object p0

    .line 65
    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 69
    :catch_0
    sget-object p0, Lcom/amazon/identity/auth/device/cr;->TAG:Ljava/lang/String;

    const-string v0, "Could not generate a symmetric key with PBKDF2"

    invoke-static {p0, v0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :cond_0
    invoke-static {}, Lcom/amazon/identity/auth/device/cr;->co()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(ILjava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;)Ljavax/crypto/Cipher;
    .locals 1

    const/4 v0, 0x1

    .line 141
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amazon/identity/auth/device/cr;->a(ILjava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Z)Ljavax/crypto/Cipher;

    move-result-object p1

    return-object p1
.end method

.method private a(ILjava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Z)Ljavax/crypto/Cipher;
    .locals 6

    const-string v0, "AES/ECB/PKCS5Padding"

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    .line 149
    :try_start_0
    invoke-static {p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 150
    iget-object v3, p0, Lcom/amazon/identity/auth/device/cr;->iz:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v2, p1, v3, p3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 161
    sget-object v4, Lcom/amazon/identity/auth/device/cr;->TAG:Ljava/lang/String;

    const-string v5, "Android throws AssertionError: "

    invoke-static {v4, v5, v3}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz p4, :cond_0

    const-string p4, "AES"

    .line 162
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 165
    sget-object p2, Lcom/amazon/identity/auth/device/cr;->TAG:Ljava/lang/String;

    const-string v2, "Retrying creating cipher"

    invoke-static {p2, v2}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    sget-object p2, Lcom/amazon/identity/auth/device/cr;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    const/4 v3, 0x1

    aput-object p4, v2, v3

    const-string p4, "Retrying use a more specified mode %s, instead of %s"

    invoke-static {p4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {p2}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    move-object p2, v0

    const/4 p4, 0x0

    goto :goto_0

    :catch_1
    move-exception p1

    .line 154
    sget-object p2, Lcom/amazon/identity/auth/device/cr;->TAG:Ljava/lang/String;

    const-string p3, "Aborting cipher creation"

    invoke-static {p2, p3, p1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    return-object v2
.end method

.method public static a(Ljavax/crypto/Cipher;[BII)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 186
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v0
    :try_end_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 196
    sget-object p1, Lcom/amazon/identity/auth/device/cr;->TAG:Ljava/lang/String;

    const-string p2, "Encrypting / Decrypting failed with the given key. Aborting!"

    invoke-static {p1, p2, p0}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v0

    :catch_1
    move-exception p0

    .line 191
    sget-object p1, Lcom/amazon/identity/auth/device/cr;->TAG:Ljava/lang/String;

    const-string p2, "BadPaddingException occurs, MAP will handle it in upper level but won\'t cause a crash."

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    throw p0
.end method

.method public static co()Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string v0, "AES"

    .line 80
    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    const/16 v1, 0x80

    .line 81
    invoke-virtual {v0, v1}, Ljavax/crypto/KeyGenerator;->init(I)V

    .line 83
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 84
    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    const/4 v1, 0x0

    .line 88
    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 92
    :catch_0
    sget-object v0, Lcom/amazon/identity/auth/device/cr;->TAG:Ljava/lang/String;

    const-string v1, "Could not generate a symmetric key for algorithm AES"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public a([B[B)[B
    .locals 3

    .line 246
    :try_start_0
    array-length v0, p2

    const/16 v1, 0x10

    add-int/2addr v0, v1

    new-array v0, v0, [B

    const/4 v2, 0x0

    .line 247
    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 248
    array-length p1, p2

    invoke-static {p2, v2, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 252
    sget-object p2, Lcom/amazon/identity/auth/device/cr;->TAG:Ljava/lang/String;

    const-string v0, "Exception happended during concatenating the initialization vectors and the cipher text"

    invoke-static {p2, v0, p1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public b([B)[B
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "AES"

    .line 109
    invoke-direct {p0, v0, v2, v1}, Lcom/amazon/identity/auth/device/cr;->a(ILjava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v2, 0x0

    .line 113
    :try_start_0
    array-length v3, p1

    invoke-static {v0, p1, v2, v3}, Lcom/amazon/identity/auth/device/cr;->a(Ljavax/crypto/Cipher;[BII)[B

    move-result-object p1
    :try_end_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 117
    sget-object v0, Lcom/amazon/identity/auth/device/cr;->TAG:Ljava/lang/String;

    const-string v2, "BadPaddingException in encryption, should never happen."

    invoke-static {v0, v2, p1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1

    .line 106
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "dataToEncrypt is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c([B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "AES"

    .line 134
    invoke-direct {p0, v0, v2, v1}, Lcom/amazon/identity/auth/device/cr;->a(ILjava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x0

    .line 136
    array-length v2, p1

    invoke-static {v0, p1, v1, v2}, Lcom/amazon/identity/auth/device/cr;->a(Ljavax/crypto/Cipher;[BII)[B

    move-result-object p1

    return-object p1

    .line 131
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "dataToDecrypt is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d([B)[B
    .locals 4

    if-eqz p1, :cond_0

    .line 1232
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const/16 v1, 0x10

    new-array v1, v1, [B

    .line 1234
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 v0, 0x1

    .line 213
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const-string v3, "AES/CBC/PKCS7Padding"

    invoke-direct {p0, v0, v3, v2}, Lcom/amazon/identity/auth/device/cr;->a(ILjava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v2, 0x0

    .line 218
    :try_start_0
    array-length v3, p1

    invoke-static {v0, p1, v2, v3}, Lcom/amazon/identity/auth/device/cr;->a(Ljavax/crypto/Cipher;[BII)[B

    move-result-object p1
    :try_end_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    invoke-virtual {p0, v1, p1}, Lcom/amazon/identity/auth/device/cr;->a([B[B)[B

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 222
    sget-object v0, Lcom/amazon/identity/auth/device/cr;->TAG:Ljava/lang/String;

    const-string v1, "BadPaddingException in encryption, should never happen."

    invoke-static {v0, v1, p1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-array p1, v2, [Ljava/lang/String;

    const-string v0, "BadPaddingExceptionInEncryption"

    .line 223
    invoke-static {v0, p1}, Lcom/amazon/identity/auth/device/mn;->b(Ljava/lang/String;[Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 208
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "dataToEncrypt is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e([B)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    .line 268
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-direct {v1, p1, v2, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([BII)V

    const-string v2, "AES/CBC/PKCS7Padding"

    .line 269
    invoke-direct {p0, v0, v2, v1}, Lcom/amazon/identity/auth/device/cr;->a(ILjava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 273
    array-length v1, p1

    sub-int/2addr v1, v3

    invoke-static {v0, p1, v3, v1}, Lcom/amazon/identity/auth/device/cr;->a(Ljavax/crypto/Cipher;[BII)[B

    move-result-object p1

    return-object p1

    .line 265
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "dataToDecrypt is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
