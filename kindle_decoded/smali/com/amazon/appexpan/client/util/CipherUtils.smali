.class public Lcom/amazon/appexpan/client/util/CipherUtils;
.super Ljava/lang/Object;
.source "CipherUtils.java"


# static fields
.field private static final CHARSET:Ljava/nio/charset/Charset;

.field private static final CIPHER_ALGORITHM:Ljava/lang/String; = "AES"

.field private static SHARED_PREF_AES_KEY:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "com.amazon.appexpan.client.util.CipherUtils"

.field public static mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    .line 30
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/amazon/appexpan/client/util/CipherUtils;->CHARSET:Ljava/nio/charset/Charset;

    const-string v0, "AESEncryptionKey"

    .line 36
    sput-object v0, Lcom/amazon/appexpan/client/util/CipherUtils;->SHARED_PREF_AES_KEY:Ljava/lang/String;

    return-void
.end method

.method public static decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    .line 68
    :try_start_0
    invoke-static {v0}, Lcom/amazon/appexpan/client/util/CipherUtils;->getCipher(I)Ljavax/crypto/Cipher;

    move-result-object v0

    const/16 v1, 0x8

    .line 69
    invoke-static {p0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    .line 71
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    .line 73
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/amazon/appexpan/client/util/CipherUtils;->CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 77
    sget-object v0, Lcom/amazon/appexpan/client/util/CipherUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to decrypt data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/amazon/appexpan/client/AppExpanLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static encrypt(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 42
    sput-object p1, Lcom/amazon/appexpan/client/util/CipherUtils;->mContext:Landroid/content/Context;

    .line 43
    invoke-static {}, Lcom/amazon/appexpan/client/util/CipherUtils;->getEncodingStatus()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 47
    :try_start_0
    invoke-static {p1}, Lcom/amazon/appexpan/client/util/CipherUtils;->getCipher(I)Ljavax/crypto/Cipher;

    move-result-object p1

    .line 48
    sget-object v0, Lcom/amazon/appexpan/client/util/CipherUtils;->CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    const/16 p1, 0x8

    .line 50
    invoke-static {p0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 54
    sget-object p1, Lcom/amazon/appexpan/client/util/CipherUtils;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to encrypt data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/amazon/appexpan/client/AppExpanLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static generateAESkey()Ljava/security/Key;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 107
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const-string v1, "AES"

    .line 108
    invoke-static {v1}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v1

    const/16 v2, 0x100

    .line 109
    invoke-virtual {v1, v2, v0}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 110
    invoke-virtual {v1}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method

.method private static getAESkey()Ljava/lang/String;
    .locals 3

    .line 128
    sget-object v0, Lcom/amazon/appexpan/client/util/CipherUtils;->mContext:Landroid/content/Context;

    const-string v1, "app_expansion_properties"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 131
    sget-object v1, Lcom/amazon/appexpan/client/util/CipherUtils;->SHARED_PREF_AES_KEY:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getByteArray(Ljava/lang/String;)[B
    .locals 3

    if-eqz p0, :cond_0

    .line 139
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v0, ", "

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 140
    array-length v0, p0

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 141
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 143
    aget-object v2, p0, v1

    invoke-static {v2}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method

.method private static getCipher(I)Ljavax/crypto/Cipher;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 87
    invoke-static {}, Lcom/amazon/appexpan/client/util/CipherUtils;->getAESkey()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 89
    invoke-static {}, Lcom/amazon/appexpan/client/util/CipherUtils;->generateAESkey()Ljava/security/Key;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/appexpan/client/util/CipherUtils;->storeAESkey(Ljava/lang/String;)V

    :cond_0
    const-string v0, "AES"

    .line 92
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 93
    invoke-static {}, Lcom/amazon/appexpan/client/util/CipherUtils;->getKeySpec()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    return-object v0
.end method

.method private static getEncodingStatus()Z
    .locals 3

    .line 169
    sget-object v0, Lcom/amazon/appexpan/client/util/CipherUtils;->mContext:Landroid/content/Context;

    const-string v1, "app_expansion_properties"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "encodingStatus"

    const/4 v2, 0x1

    .line 172
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static getKeySpec()Ljavax/crypto/spec/SecretKeySpec;
    .locals 3

    .line 100
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {}, Lcom/amazon/appexpan/client/util/CipherUtils;->getAESkey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/appexpan/client/util/CipherUtils;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    const-string v2, "AES"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public static isEncryptionFunctional(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 0

    .line 154
    invoke-static {p0, p1}, Lcom/amazon/appexpan/client/util/CipherUtils;->encrypt(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 155
    invoke-static {p1}, Lcom/amazon/appexpan/client/util/CipherUtils;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 158
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static storeAESkey(Ljava/lang/String;)V
    .locals 3

    .line 117
    sget-object v0, Lcom/amazon/appexpan/client/util/CipherUtils;->mContext:Landroid/content/Context;

    const-string v1, "app_expansion_properties"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 120
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 121
    sget-object v1, Lcom/amazon/appexpan/client/util/CipherUtils;->SHARED_PREF_AES_KEY:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 122
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
