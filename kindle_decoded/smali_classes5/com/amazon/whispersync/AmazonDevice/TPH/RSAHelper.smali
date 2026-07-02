.class public final Lcom/amazon/whispersync/AmazonDevice/TPH/RSAHelper;
.super Ljava/lang/Object;
.source "RSAHelper.java"


# static fields
.field private static final ALGORITHM:Ljava/lang/String; = "RSA"

.field private static final DECRYPT_CIPHER_BLOCK_SIZE:I = 0x80

.field private static final ENCRYPT_CIPHER_BLOCK_SIZE:I = 0x75

.field private static final PUBLIC_KEY_BYTES:[B

.field private static final TRANSFORMATION:Ljava/lang/String; = "RSA/ECB/PKCS1Padding"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa2

    new-array v0, v0, [B

    .line 32
    fill-array-data v0, :array_0

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/TPH/RSAHelper;->PUBLIC_KEY_BYTES:[B

    return-void

    :array_0
    .array-data 1
        0x30t
        -0x7ft
        -0x61t
        0x30t
        0xdt
        0x6t
        0x9t
        0x2at
        -0x7at
        0x48t
        -0x7at
        -0x9t
        0xdt
        0x1t
        0x1t
        0x1t
        0x5t
        0x0t
        0x3t
        -0x7ft
        -0x73t
        0x0t
        0x30t
        -0x7ft
        -0x77t
        0x2t
        -0x7ft
        -0x7ft
        0x0t
        -0x16t
        0x31t
        0x33t
        -0x29t
        -0x3ct
        -0x9t
        0x5ct
        -0x3dt
        0x25t
        -0x2at
        0x7ct
        -0x4bt
        -0x43t
        0x5at
        0x55t
        0x6dt
        -0x44t
        -0x3t
        -0x22t
        0x5ct
        0x5ft
        0x33t
        0x1dt
        -0x7ct
        0x1et
        -0x56t
        0x8t
        -0x30t
        0x51t
        -0xft
        -0x55t
        -0x7bt
        0x59t
        0x1at
        -0x58t
        -0x10t
        0x70t
        -0x2t
        0x74t
        0x21t
        -0x71t
        0x13t
        -0x41t
        -0x34t
        -0x39t
        0x39t
        0x3at
        -0x6ft
        0x6ft
        -0x73t
        0x2t
        0x14t
        -0x7ct
        0x16t
        -0x74t
        -0x6at
        0x3bt
        0x7dt
        0x56t
        -0xct
        0x63t
        0x17t
        0x2ct
        0x57t
        0x3t
        0x1at
        -0x1et
        -0x19t
        -0x17t
        -0x16t
        -0x64t
        -0x34t
        0x5dt
        0x69t
        -0x62t
        -0x32t
        -0x16t
        0x22t
        -0x40t
        0x4ct
        -0x1ct
        -0x59t
        0x1t
        -0x76t
        -0x4ct
        -0x16t
        -0x9t
        0x2ft
        0x71t
        0x3dt
        0x3et
        -0x4ft
        -0x8t
        -0x7et
        -0x53t
        0x74t
        -0x7et
        0x56t
        -0x28t
        0x26t
        0x3ct
        0x56t
        -0x2et
        -0x22t
        0x2bt
        0x2at
        -0x16t
        -0x13t
        -0x1at
        0x74t
        0x4et
        -0x3et
        -0x49t
        -0x22t
        -0x1ct
        0x1at
        -0x7bt
        -0x75t
        -0xft
        -0x3et
        -0x7at
        -0x39t
        -0x3ft
        -0x1at
        -0x4bt
        -0x1et
        -0x70t
        0x6bt
        0x2t
        0x3t
        0x1t
        0x0t
        0x1t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static choosePublicKey()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const-string/jumbo v0, "tph.public.key"

    const/4 v1, 0x0

    .line 149
    invoke-static {v0, v1}, Lcom/amazon/whispersync/AmazonDevice/Common/DynamicConfiguration;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 150
    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/TPH/RSAHelper;->PUBLIC_KEY_BYTES:[B

    if-eqz v0, :cond_0

    const-string v1, "UTF8"

    .line 153
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/Base64;->decodeBase64([B)[B

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method private static cipherBytes([BILjava/security/Key;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/AmazonDevice/TPH/RSAHelperException;
        }
    .end annotation

    .line 76
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 80
    invoke-static {}, Lcom/amazon/whispersync/AmazonDevice/TPH/RSAHelper;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v1

    .line 84
    :try_start_0
    invoke-virtual {v1, p1, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 85
    invoke-virtual {v1}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result p2

    const/4 v2, 0x0

    if-nez p2, :cond_1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    const/16 p1, 0x75

    const/16 p2, 0x75

    goto :goto_0

    :cond_0
    const/16 p1, 0x80

    const/16 p2, 0x80

    .line 93
    :cond_1
    :goto_0
    array-length p1, p0
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_3

    if-ge v2, p1, :cond_2

    add-int p1, v2, p2

    .line 98
    :try_start_1
    invoke-static {p0, v2, p1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_3

    move v2, p1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 112
    :try_start_2
    new-instance p1, Lcom/amazon/whispersync/AmazonDevice/TPH/RSAHelperException;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/amazon/whispersync/AmazonDevice/TPH/RSAHelperException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    move-exception p0

    .line 108
    new-instance p1, Lcom/amazon/whispersync/AmazonDevice/TPH/RSAHelperException;

    invoke-virtual {p0}, Ljavax/crypto/BadPaddingException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/amazon/whispersync/AmazonDevice/TPH/RSAHelperException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_2
    move-exception p0

    .line 104
    new-instance p1, Lcom/amazon/whispersync/AmazonDevice/TPH/RSAHelperException;

    invoke-virtual {p0}, Ljavax/crypto/IllegalBlockSizeException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/amazon/whispersync/AmazonDevice/TPH/RSAHelperException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_3

    .line 121
    :cond_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catch_3
    move-exception p0

    .line 119
    new-instance p1, Lcom/amazon/whispersync/AmazonDevice/TPH/RSAHelperException;

    invoke-virtual {p0}, Ljava/security/InvalidKeyException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/amazon/whispersync/AmazonDevice/TPH/RSAHelperException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static decryptWithPrivateKey([BLjava/security/PrivateKey;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/AmazonDevice/TPH/RSAHelperException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 69
    invoke-static {p0, v0, p1}, Lcom/amazon/whispersync/AmazonDevice/TPH/RSAHelper;->cipherBytes([BILjava/security/Key;)[B

    move-result-object p0

    return-object p0
.end method

.method public static decryptWithPublicKey([B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/AmazonDevice/TPH/RSAHelperException;
        }
    .end annotation

    .line 58
    invoke-static {}, Lcom/amazon/whispersync/AmazonDevice/TPH/RSAHelper;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {p0, v1, v0}, Lcom/amazon/whispersync/AmazonDevice/TPH/RSAHelper;->cipherBytes([BILjava/security/Key;)[B

    move-result-object p0

    return-object p0
.end method

.method public static encryptWithPrivateKey([BLjava/security/PrivateKey;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/AmazonDevice/TPH/RSAHelperException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 63
    invoke-static {p0, v0, p1}, Lcom/amazon/whispersync/AmazonDevice/TPH/RSAHelper;->cipherBytes([BILjava/security/Key;)[B

    move-result-object p0

    return-object p0
.end method

.method public static encryptWithPublicKey([B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/AmazonDevice/TPH/RSAHelperException;
        }
    .end annotation

    .line 53
    invoke-static {}, Lcom/amazon/whispersync/AmazonDevice/TPH/RSAHelper;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v1, v0}, Lcom/amazon/whispersync/AmazonDevice/TPH/RSAHelper;->cipherBytes([BILjava/security/Key;)[B

    move-result-object p0

    return-object p0
.end method

.method private static getCipher()Ljavax/crypto/Cipher;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/AmazonDevice/TPH/RSAHelperException;
        }
    .end annotation

    :try_start_0
    const-string v0, "RSA/ECB/PKCS1Padding"

    .line 163
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 172
    new-instance v1, Lcom/amazon/whispersync/AmazonDevice/TPH/RSAHelperException;

    invoke-virtual {v0}, Ljavax/crypto/NoSuchPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/amazon/whispersync/AmazonDevice/TPH/RSAHelperException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_1
    move-exception v0

    .line 168
    new-instance v1, Lcom/amazon/whispersync/AmazonDevice/TPH/RSAHelperException;

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/amazon/whispersync/AmazonDevice/TPH/RSAHelperException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static getPublicKey()Ljava/security/PublicKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/AmazonDevice/TPH/RSAHelperException;
        }
    .end annotation

    .line 129
    :try_start_0
    new-instance v0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-static {}, Lcom/amazon/whispersync/AmazonDevice/TPH/RSAHelper;->choosePublicKey()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    const-string v1, "RSA"

    .line 130
    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 131
    invoke-virtual {v1, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 143
    new-instance v1, Lcom/amazon/whispersync/AmazonDevice/TPH/RSAHelperException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/amazon/whispersync/AmazonDevice/TPH/RSAHelperException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_1
    move-exception v0

    .line 139
    new-instance v1, Lcom/amazon/whispersync/AmazonDevice/TPH/RSAHelperException;

    invoke-virtual {v0}, Ljava/security/spec/InvalidKeySpecException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/amazon/whispersync/AmazonDevice/TPH/RSAHelperException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_2
    move-exception v0

    .line 135
    new-instance v1, Lcom/amazon/whispersync/AmazonDevice/TPH/RSAHelperException;

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/amazon/whispersync/AmazonDevice/TPH/RSAHelperException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
