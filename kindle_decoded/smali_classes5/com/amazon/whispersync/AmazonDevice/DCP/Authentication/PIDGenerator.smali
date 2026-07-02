.class public final Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/PIDGenerator;
.super Ljava/lang/Object;
.source "PIDGenerator.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPid(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    const-string v2, "UTF-8"

    .line 28
    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    const-string v2, "SHA-256"

    .line 30
    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 32
    invoke-virtual {v2, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 34
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    .line 36
    invoke-static {p0}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/Hex;->encodeHex([B)[C

    move-result-object p0

    .line 37
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p0}, Ljava/lang/String;-><init>([C)V

    const/16 p0, 0x17

    const/16 v3, 0x1f

    .line 47
    invoke-virtual {v2, p0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-array p0, v1, [Ljava/lang/Object;

    const-string v1, "Can\'t get PID: unsupported encoding"

    .line 56
    invoke-static {v1, p0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception p0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    const-string p0, "SHA-256 algorithm does not exist.  PANICK!"

    .line 51
    invoke-static {p0, v2}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-object v0
.end method
