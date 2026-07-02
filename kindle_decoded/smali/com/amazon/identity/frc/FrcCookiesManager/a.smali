.class public final Lcom/amazon/identity/frc/FrcCookiesManager/a;
.super Ljava/lang/Object;
.source "EncryptionHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.frc.FrcCookiesManager.a"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v0, "HmacSHA256"

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p0, :cond_0

    .line 82
    :try_start_0
    sget-object p0, Lcom/amazon/identity/frc/FrcCookiesManager/a;->TAG:Ljava/lang/String;

    const-string p1, "The input string should not be null!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 87
    sget-object p1, Lcom/amazon/identity/frc/FrcCookiesManager/a;->TAG:Ljava/lang/String;

    const-string v0, "Seed is null, cannot encrypt the input string! Just return the original string"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    .line 92
    :cond_1
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 93
    new-instance v5, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v5, v4}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    const-string v6, "UTF-8"

    .line 94
    invoke-virtual {p0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 95
    invoke-virtual {v5}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 96
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    const-string v4, "AES/CBC/PKCS5Padding"

    .line 99
    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v4

    const-string v5, "AES/CBC/PKCS7Padding"

    .line 100
    invoke-static {p1, v5}, Lcom/amazon/identity/frc/FrcCookiesManager/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Key;

    move-result-object v5

    .line 101
    invoke-virtual {v4, v2, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 102
    invoke-virtual {v4, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    .line 103
    invoke-virtual {v4}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v4

    .line 106
    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v5

    .line 107
    invoke-static {p1, v0}, Lcom/amazon/identity/frc/FrcCookiesManager/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Key;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 108
    invoke-virtual {v5, v4}, Ljavax/crypto/Mac;->update([B)V

    .line 109
    invoke-virtual {v5, p0}, Ljavax/crypto/Mac;->update([B)V

    .line 110
    invoke-virtual {v5}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object p1

    .line 119
    array-length v0, p0

    const/16 v5, 0x19

    add-int/2addr v0, v5

    new-array v0, v0, [B

    .line 120
    aput-byte v3, v0, v3

    const/16 v6, 0x8

    .line 121
    invoke-static {p1, v3, v0, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 p1, 0x9

    const/16 v6, 0x10

    .line 122
    invoke-static {v4, v3, v0, p1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 123
    array-length p1, p0

    invoke-static {p0, v3, v0, v5, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p0, 0x2

    .line 124
    invoke-static {v0, p0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 130
    :goto_0
    sget-object p1, Lcom/amazon/identity/frc/FrcCookiesManager/a;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "Exception happened when encrypting the string:%s"

    invoke-static {v0, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Key;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/UnsupportedEncodingException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    const-string v0, "PBKDF2WithHmacSHA1"

    .line 139
    invoke-static {v0}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v0

    .line 140
    new-instance v1, Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    const/16 v2, 0x3e8

    const/16 v3, 0x80

    invoke-direct {v1, p0, p1, v2, v3}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 141
    invoke-virtual {v0, v1}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object p0

    .line 144
    new-instance p1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p0

    const-string v0, "AES"

    invoke-direct {p1, p0, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object p1
.end method
