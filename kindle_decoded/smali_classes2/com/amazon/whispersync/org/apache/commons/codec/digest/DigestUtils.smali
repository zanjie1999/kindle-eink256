.class public Lcom/amazon/whispersync/org/apache/commons/codec/digest/DigestUtils;
.super Ljava/lang/Object;
.source "DigestUtils.java"


# static fields
.field private static final STREAM_BUFFER_LENGTH:I = 0x400


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static digest(Ljava/security/MessageDigest;Ljava/io/InputStream;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    invoke-static {p0, p1}, Lcom/amazon/whispersync/org/apache/commons/codec/digest/DigestUtils;->updateDigest(Ljava/security/MessageDigest;Ljava/io/InputStream;)Ljava/security/MessageDigest;

    move-result-object p0

    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    return-object p0
.end method

.method public static getDigest(Ljava/lang/String;)Ljava/security/MessageDigest;
    .locals 1

    .line 68
    :try_start_0
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static getMd2Digest()Ljava/security/MessageDigest;
    .locals 1

    const-string v0, "MD2"

    .line 85
    invoke-static {v0}, Lcom/amazon/whispersync/org/apache/commons/codec/digest/DigestUtils;->getDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    return-object v0
.end method

.method public static getMd5Digest()Ljava/security/MessageDigest;
    .locals 1

    const-string v0, "MD5"

    .line 98
    invoke-static {v0}, Lcom/amazon/whispersync/org/apache/commons/codec/digest/DigestUtils;->getDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    return-object v0
.end method

.method public static getSha1Digest()Ljava/security/MessageDigest;
    .locals 1

    const-string v0, "SHA-1"

    .line 112
    invoke-static {v0}, Lcom/amazon/whispersync/org/apache/commons/codec/digest/DigestUtils;->getDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    return-object v0
.end method

.method public static getSha256Digest()Ljava/security/MessageDigest;
    .locals 1

    const-string v0, "SHA-256"

    .line 128
    invoke-static {v0}, Lcom/amazon/whispersync/org/apache/commons/codec/digest/DigestUtils;->getDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    return-object v0
.end method

.method public static getSha384Digest()Ljava/security/MessageDigest;
    .locals 1

    const-string v0, "SHA-384"

    .line 144
    invoke-static {v0}, Lcom/amazon/whispersync/org/apache/commons/codec/digest/DigestUtils;->getDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    return-object v0
.end method

.method public static getSha512Digest()Ljava/security/MessageDigest;
    .locals 1

    const-string v0, "SHA-512"

    .line 160
    invoke-static {v0}, Lcom/amazon/whispersync/org/apache/commons/codec/digest/DigestUtils;->getDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    return-object v0
.end method

.method public static getShaDigest()Ljava/security/MessageDigest;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 173
    invoke-static {}, Lcom/amazon/whispersync/org/apache/commons/codec/digest/DigestUtils;->getSha1Digest()Ljava/security/MessageDigest;

    move-result-object v0

    return-object v0
.end method

.method public static md2(Ljava/io/InputStream;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 199
    invoke-static {}, Lcom/amazon/whispersync/org/apache/commons/codec/digest/DigestUtils;->getMd2Digest()Ljava/security/MessageDigest;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/amazon/whispersync/org/apache/commons/codec/digest/DigestUtils;->digest(Ljava/security/MessageDigest;Ljava/io/InputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method public static md2(Ljava/lang/String;)[B
    .locals 0

    .line 211
    invoke-static {p0}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/StringUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/whispersync/org/apache/commons/codec/digest/DigestUtils;->md2([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static md2([B)[B
    .locals 1

    .line 185
    invoke-static {}, Lcom/amazon/whispersync/org/apache/commons/codec/digest/DigestUtils;->getMd2Digest()Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static md2Hex(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 237
    invoke-static {p0}, Lcom/amazon/whispersync/org/apache/commons/codec/digest/DigestUtils;->md2(Ljava/io/InputStream;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static md2Hex(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 249
    invoke-static {p0}, Lcom/amazon/whispersync/org/apache/commons/codec/digest/DigestUtils;->md2(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static md2Hex([B)Ljava/lang/String;
    .locals 0

    .line 223
    invoke-static {p0}, Lcom/amazon/whispersync/org/apache/commons/codec/digest/DigestUtils;->md2([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static md5(Ljava/io/InputStream;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 274
    invoke-static {}, Lcom/amazon/whispersync/org/apache/commons/codec/digest/DigestUtils;->getMd5Digest()Ljava/security/MessageDigest;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/amazon/whispersync/org/apache/commons/codec/digest/DigestUtils;->digest(Ljava/security/MessageDigest;Ljava/io/InputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method public static md5(Ljava/lang/String;)[B
    .locals 0

    .line 285
    invoke-static {p0}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/StringUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/whispersync/org/apache/commons/codec/digest/DigestUtils;->md5([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static md5([B)[B
    .locals 1

    .line 260
    invoke-static {}, Lcom/amazon/whispersync/org/apache/commons/codec/digest/DigestUtils;->getMd5Digest()Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static md5Hex(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 310
    invoke-static {p0}, Lcom/amazon/whispersync/org/apache/commons/codec/digest/DigestUtils;->md5(Ljava/io/InputStream;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static md5Hex(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 321
    invoke-static {p0}, Lcom/amazon/whispersync/org/apache/commons/codec/digest/DigestUtils;->md5(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static md5Hex([B)Ljava/lang/String;
    .locals 0

    .line 296
    invoke-static {p0}, Lcom/amazon/whispersync/org/apache/commons/codec/digest/DigestUtils;->md5([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static sha(Ljava/io/InputStream;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 350
    invoke-static {p0}, Lcom/amazon/whispersync/org/apache/commons/codec/digest/DigestUtils;->sha1(Ljava/io/InputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method public static sha(Ljava/lang/String;)[B
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 363
    invoke-static {p0}, Lcom/amazon/whispersync/org/apache/commons/codec/digest/DigestUtils;->sha1(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static sha([B)[B
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 334
    invoke-static {p0}, Lcom/amazon/whispersync/org/apache/commons/codec/digest/DigestUtils;->sha1([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static sha1(Ljava/io/InputStream;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 389
    invoke-static {}, Lcom/amazon/whispersync/org/apache/commons/codec/digest/DigestUtils;->getSha1Digest()Ljava/security/MessageDigest;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/amazon/whispersync/org/apache/commons/codec/digest/DigestUtils;->digest(Ljava/security/MessageDigest;Ljava/io/InputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method public static sha1(Ljava/lang/String;)[B
    .locals 0

    .line 400
    invoke-static {p0}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/StringUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/whispersync/org/apache/commons/codec/digest/DigestUtils;->sha1([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static sha1([B)[B
    .locals 1

    .line 375
    invoke-static {}, Lcom/amazon/whispersync/org/apache/commons/codec/digest/DigestUtils;->getSha1Digest()Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static sha1Hex(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 426
    invoke-static {p0}, Lcom/amazon/whispersync/org/apache/commons/codec/digest/DigestUtils;->sha1(Ljava/io/InputStream;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static sha1Hex(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 438
    invoke-static {p0}, Lcom/amazon/whispersync/org/apache/commons/codec/digest/DigestUtils;->sha1(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static sha1Hex([B)Ljava/lang/String;
    .locals 0

    .line 412
    invoke-static {p0}, Lcom/amazon/whispersync/org/apache/commons/codec/digest/DigestUtils;->sha1([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static sha256(Ljava/io/InputStream;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 470
    invoke-static {}, Lcom/amazon/whispersync/org/apache/commons/codec/digest/DigestUtils;->getSha256Digest()Ljava/security/MessageDigest;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/amazon/whispersync/org/apache/commons/codec/digest/DigestUtils;->digest(Ljava/security/MessageDigest;Ljava/io/InputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method public static sha256(Ljava/lang/String;)[B
    .locals 0

    .line 485
    invoke-static {p0}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/StringUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/whispersync/org/apache/commons/codec/digest/DigestUtils;->sha256([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static sha256([B)[B
    .locals 1

    .line 453
    invoke-static {}, Lcom/amazon/whispersync/org/apache/commons/codec/digest/DigestUtils;->getSha256Digest()Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static sha256Hex(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 517
    invoke-static {p0}, Lcom/amazon/whispersync/org/apache/commons/codec/digest/DigestUtils;->sha256(Ljava/io/InputStream;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static sha256Hex(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 532
    invoke-static {p0}, Lcom/amazon/whispersync/org/apache/commons/codec/digest/DigestUtils;->sha256(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static sha256Hex([B)Ljava/lang/String;
    .locals 0

    .line 500
    invoke-static {p0}, Lcom/amazon/whispersync/org/apache/commons/codec/digest/DigestUtils;->sha256([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static sha384(Ljava/io/InputStream;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 564
    invoke-static {}, Lcom/amazon/whispersync/org/apache/commons/codec/digest/DigestUtils;->getSha384Digest()Ljava/security/MessageDigest;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/amazon/whispersync/org/apache/commons/codec/digest/DigestUtils;->digest(Ljava/security/MessageDigest;Ljava/io/InputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method public static sha384(Ljava/lang/String;)[B
    .locals 0

    .line 579
    invoke-static {p0}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/StringUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/whispersync/org/apache/commons/codec/digest/DigestUtils;->sha384([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static sha384([B)[B
    .locals 1

    .line 547
    invoke-static {}, Lcom/amazon/whispersync/org/apache/commons/codec/digest/DigestUtils;->getSha384Digest()Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static sha384Hex(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 611
    invoke-static {p0}, Lcom/amazon/whispersync/org/apache/commons/codec/digest/DigestUtils;->sha384(Ljava/io/InputStream;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static sha384Hex(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 626
    invoke-static {p0}, Lcom/amazon/whispersync/org/apache/commons/codec/digest/DigestUtils;->sha384(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static sha384Hex([B)Ljava/lang/String;
    .locals 0

    .line 594
    invoke-static {p0}, Lcom/amazon/whispersync/org/apache/commons/codec/digest/DigestUtils;->sha384([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static sha512(Ljava/io/InputStream;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 658
    invoke-static {}, Lcom/amazon/whispersync/org/apache/commons/codec/digest/DigestUtils;->getSha512Digest()Ljava/security/MessageDigest;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/amazon/whispersync/org/apache/commons/codec/digest/DigestUtils;->digest(Ljava/security/MessageDigest;Ljava/io/InputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method public static sha512(Ljava/lang/String;)[B
    .locals 0

    .line 673
    invoke-static {p0}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/StringUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/whispersync/org/apache/commons/codec/digest/DigestUtils;->sha512([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static sha512([B)[B
    .locals 1

    .line 641
    invoke-static {}, Lcom/amazon/whispersync/org/apache/commons/codec/digest/DigestUtils;->getSha512Digest()Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static sha512Hex(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 705
    invoke-static {p0}, Lcom/amazon/whispersync/org/apache/commons/codec/digest/DigestUtils;->sha512(Ljava/io/InputStream;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static sha512Hex(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 720
    invoke-static {p0}, Lcom/amazon/whispersync/org/apache/commons/codec/digest/DigestUtils;->sha512(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static sha512Hex([B)Ljava/lang/String;
    .locals 0

    .line 688
    invoke-static {p0}, Lcom/amazon/whispersync/org/apache/commons/codec/digest/DigestUtils;->sha512([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static shaHex(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 749
    invoke-static {p0}, Lcom/amazon/whispersync/org/apache/commons/codec/digest/DigestUtils;->sha1Hex(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static shaHex(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 762
    invoke-static {p0}, Lcom/amazon/whispersync/org/apache/commons/codec/digest/DigestUtils;->sha1Hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static shaHex([B)Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 733
    invoke-static {p0}, Lcom/amazon/whispersync/org/apache/commons/codec/digest/DigestUtils;->sha1Hex([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static updateDigest(Ljava/security/MessageDigest;Ljava/io/InputStream;)Ljava/security/MessageDigest;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x400

    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 794
    invoke-virtual {p1, v1, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    :goto_0
    const/4 v4, -0x1

    if-le v3, v4, :cond_0

    .line 797
    invoke-virtual {p0, v1, v2, v3}, Ljava/security/MessageDigest;->update([BII)V

    .line 798
    invoke-virtual {p1, v1, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static updateDigest(Ljava/security/MessageDigest;Ljava/lang/String;)Ljava/security/MessageDigest;
    .locals 0

    .line 815
    invoke-static {p1}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/StringUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->update([B)V

    return-object p0
.end method

.method public static updateDigest(Ljava/security/MessageDigest;[B)Ljava/security/MessageDigest;
    .locals 0

    .line 776
    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->update([B)V

    return-object p0
.end method
