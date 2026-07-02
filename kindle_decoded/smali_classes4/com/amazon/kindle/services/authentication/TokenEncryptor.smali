.class public Lcom/amazon/kindle/services/authentication/TokenEncryptor;
.super Ljava/lang/Object;
.source "TokenEncryptor.java"


# static fields
.field private static final EID_SECRET_KEY:Ljava/lang/String; = "some secret keya.("


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEncryptedDSN(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    const-string v0, "some secret keya.("

    .line 62
    invoke-static {p0, v0, p1}, Lcom/amazon/kindle/services/authentication/TokenEncryptor;->getEncryptedToken(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getEncryptedDeviceType(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    const-string v0, "some secret keya.("

    .line 52
    invoke-static {p0, v0, p1}, Lcom/amazon/kindle/services/authentication/TokenEncryptor;->getEncryptedToken(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getEncryptedToken(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5

    const-string v0, "UTF-8"

    .line 26
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 29
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_0

    .line 30
    aget-byte v3, p0, v1

    aget-byte v4, p1, v2

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p0, v1

    add-int/lit8 v2, v2, 0x1

    .line 31
    array-length v3, p1

    rem-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 36
    invoke-static {p0, p1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p0

    if-eqz p2, :cond_1

    .line 37
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 38
    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, p1

    :goto_1
    return-object p0

    :catch_0
    move-exception p0

    .line 41
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unexpected exception"

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
