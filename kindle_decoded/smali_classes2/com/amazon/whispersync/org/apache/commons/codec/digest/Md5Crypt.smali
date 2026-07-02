.class public Lcom/amazon/whispersync/org/apache/commons/codec/digest/Md5Crypt;
.super Ljava/lang/Object;
.source "Md5Crypt.java"


# static fields
.field static final APR1_PREFIX:Ljava/lang/String; = "$apr1$"

.field private static final BLOCKSIZE:I = 0x10

.field static final MD5_PREFIX:Ljava/lang/String; = "$1$"

.field private static final ROUNDS:I = 0x3e8


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static apr1Crypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 95
    sget-object v0, Lcom/amazon/whispersync/org/apache/commons/codec/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/whispersync/org/apache/commons/codec/digest/Md5Crypt;->apr1Crypt([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static apr1Crypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 116
    sget-object v0, Lcom/amazon/whispersync/org/apache/commons/codec/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-static {p0, p1}, Lcom/amazon/whispersync/org/apache/commons/codec/digest/Md5Crypt;->apr1Crypt([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static apr1Crypt([B)Ljava/lang/String;
    .locals 2

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "$apr1$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x8

    invoke-static {v1}, Lcom/amazon/whispersync/org/apache/commons/codec/digest/B64;->getRandomSalt(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/amazon/whispersync/org/apache/commons/codec/digest/Md5Crypt;->apr1Crypt([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static apr1Crypt([BLjava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "$apr1$"

    if-eqz p1, :cond_0

    .line 82
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 85
    :cond_0
    invoke-static {p0, p1, v0}, Lcom/amazon/whispersync/org/apache/commons/codec/digest/Md5Crypt;->md5Crypt([BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static md5Crypt([B)Ljava/lang/String;
    .locals 2

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "$1$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x8

    invoke-static {v1}, Lcom/amazon/whispersync/org/apache/commons/codec/digest/B64;->getRandomSalt(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/amazon/whispersync/org/apache/commons/codec/digest/Md5Crypt;->md5Crypt([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static md5Crypt([BLjava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "$1$"

    .line 148
    invoke-static {p0, p1, v0}, Lcom/amazon/whispersync/org/apache/commons/codec/digest/Md5Crypt;->md5Crypt([BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static md5Crypt([BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    .line 162
    array-length v0, p0

    const/16 v1, 0x8

    const-string v2, "$"

    const/4 v3, 0x1

    if-nez p1, :cond_0

    .line 167
    invoke-static {v1}, Lcom/amazon/whispersync/org/apache/commons/codec/digest/B64;->getRandomSalt(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 169
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\\$"

    invoke-virtual {p2, v2, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "([\\.\\/a-zA-Z0-9]{1,8}).*"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 170
    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 171
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 174
    invoke-virtual {v4, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    .line 176
    :goto_0
    sget-object v4, Lcom/amazon/whispersync/org/apache/commons/codec/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    .line 178
    invoke-static {}, Lcom/amazon/whispersync/org/apache/commons/codec/digest/DigestUtils;->getMd5Digest()Ljava/security/MessageDigest;

    move-result-object v5

    .line 183
    invoke-virtual {v5, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 188
    sget-object v6, Lcom/amazon/whispersync/org/apache/commons/codec/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/security/MessageDigest;->update([B)V

    .line 193
    invoke-virtual {v5, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 198
    invoke-static {}, Lcom/amazon/whispersync/org/apache/commons/codec/digest/DigestUtils;->getMd5Digest()Ljava/security/MessageDigest;

    move-result-object v6

    .line 199
    invoke-virtual {v6, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 200
    invoke-virtual {v6, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 201
    invoke-virtual {v6, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 202
    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v7

    move v8, v0

    :goto_1
    const/16 v9, 0x10

    const/4 v10, 0x0

    if-lez v8, :cond_2

    if-le v8, v9, :cond_1

    goto :goto_2

    :cond_1
    move v9, v8

    .line 205
    :goto_2
    invoke-virtual {v5, v7, v10, v9}, Ljava/security/MessageDigest;->update([BII)V

    add-int/lit8 v8, v8, -0x10

    goto :goto_1

    .line 212
    :cond_2
    invoke-static {v7, v10}, Ljava/util/Arrays;->fill([BB)V

    :goto_3
    if-lez v0, :cond_4

    and-int/lit8 v8, v0, 0x1

    if-ne v8, v3, :cond_3

    .line 221
    aget-byte v8, v7, v10

    invoke-virtual {v5, v8}, Ljava/security/MessageDigest;->update(B)V

    goto :goto_4

    .line 223
    :cond_3
    aget-byte v8, p0, v10

    invoke-virtual {v5, v8}, Ljava/security/MessageDigest;->update(B)V

    :goto_4
    shr-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 231
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 232
    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    const/4 p2, 0x0

    :goto_5
    const/16 v2, 0x3e8

    if-ge p2, v2, :cond_9

    .line 239
    invoke-static {}, Lcom/amazon/whispersync/org/apache/commons/codec/digest/DigestUtils;->getMd5Digest()Ljava/security/MessageDigest;

    move-result-object v6

    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_5

    .line 241
    invoke-virtual {v6, p0}, Ljava/security/MessageDigest;->update([B)V

    goto :goto_6

    .line 243
    :cond_5
    invoke-virtual {v6, p1, v10, v9}, Ljava/security/MessageDigest;->update([BII)V

    .line 246
    :goto_6
    rem-int/lit8 v7, p2, 0x3

    if-eqz v7, :cond_6

    .line 247
    invoke-virtual {v6, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 250
    :cond_6
    rem-int/lit8 v7, p2, 0x7

    if-eqz v7, :cond_7

    .line 251
    invoke-virtual {v6, p0}, Ljava/security/MessageDigest;->update([B)V

    :cond_7
    if-eqz v2, :cond_8

    .line 255
    invoke-virtual {v6, p1, v10, v9}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_7

    .line 257
    :cond_8
    invoke-virtual {v6, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 259
    :goto_7
    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    .line 265
    :cond_9
    aget-byte p2, p1, v10

    const/4 v2, 0x6

    aget-byte v2, p1, v2

    const/16 v7, 0xc

    aget-byte v7, p1, v7

    const/4 v8, 0x4

    invoke-static {p2, v2, v7, v8, v0}, Lcom/amazon/whispersync/org/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    .line 266
    aget-byte p2, p1, v3

    const/4 v2, 0x7

    aget-byte v2, p1, v2

    const/16 v3, 0xd

    aget-byte v3, p1, v3

    invoke-static {p2, v2, v3, v8, v0}, Lcom/amazon/whispersync/org/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    const/4 p2, 0x2

    .line 267
    aget-byte v2, p1, p2

    aget-byte v1, p1, v1

    const/16 v3, 0xe

    aget-byte v3, p1, v3

    invoke-static {v2, v1, v3, v8, v0}, Lcom/amazon/whispersync/org/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    const/4 v1, 0x3

    .line 268
    aget-byte v1, p1, v1

    const/16 v2, 0x9

    aget-byte v2, p1, v2

    const/16 v3, 0xf

    aget-byte v3, p1, v3

    invoke-static {v1, v2, v3, v8, v0}, Lcom/amazon/whispersync/org/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    .line 269
    aget-byte v1, p1, v8

    const/16 v2, 0xa

    aget-byte v2, p1, v2

    const/4 v3, 0x5

    aget-byte v3, p1, v3

    invoke-static {v1, v2, v3, v8, v0}, Lcom/amazon/whispersync/org/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    const/16 v1, 0xb

    .line 270
    aget-byte v1, p1, v1

    invoke-static {v10, v10, v1, p2, v0}, Lcom/amazon/whispersync/org/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    .line 276
    invoke-virtual {v5}, Ljava/security/MessageDigest;->reset()V

    .line 277
    invoke-virtual {v6}, Ljava/security/MessageDigest;->reset()V

    .line 278
    invoke-static {p0, v10}, Ljava/util/Arrays;->fill([BB)V

    .line 279
    invoke-static {v4, v10}, Ljava/util/Arrays;->fill([BB)V

    .line 280
    invoke-static {p1, v10}, Ljava/util/Arrays;->fill([BB)V

    .line 282
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 172
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid salt value: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
