.class public Lcom/amazon/whispersync/org/apache/commons/codec/binary/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getBytes(Ljava/lang/String;Ljava/nio/charset/Charset;)[B
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 53
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method

.method public static getBytesIso8859_1(Ljava/lang/String;)[B
    .locals 1

    .line 71
    sget-object v0, Lcom/amazon/whispersync/org/apache/commons/codec/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/StringUtils;->getBytes(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method

.method public static getBytesUnchecked(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 99
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 101
    invoke-static {p1, p0}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/StringUtils;->newIllegalStateException(Ljava/lang/String;Ljava/io/UnsupportedEncodingException;)Ljava/lang/IllegalStateException;

    move-result-object p0

    throw p0
.end method

.method public static getBytesUsAscii(Ljava/lang/String;)[B
    .locals 1

    .line 120
    sget-object v0, Lcom/amazon/whispersync/org/apache/commons/codec/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/StringUtils;->getBytes(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method

.method public static getBytesUtf16(Ljava/lang/String;)[B
    .locals 1

    .line 138
    sget-object v0, Lcom/amazon/whispersync/org/apache/commons/codec/Charsets;->UTF_16:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/StringUtils;->getBytes(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method

.method public static getBytesUtf16Be(Ljava/lang/String;)[B
    .locals 1

    .line 156
    sget-object v0, Lcom/amazon/whispersync/org/apache/commons/codec/Charsets;->UTF_16BE:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/StringUtils;->getBytes(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method

.method public static getBytesUtf16Le(Ljava/lang/String;)[B
    .locals 1

    .line 174
    sget-object v0, Lcom/amazon/whispersync/org/apache/commons/codec/Charsets;->UTF_16LE:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/StringUtils;->getBytes(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method

.method public static getBytesUtf8(Ljava/lang/String;)[B
    .locals 1

    .line 192
    sget-object v0, Lcom/amazon/whispersync/org/apache/commons/codec/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/StringUtils;->getBytes(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method

.method private static newIllegalStateException(Ljava/lang/String;Ljava/io/UnsupportedEncodingException;)Ljava/lang/IllegalStateException;
    .locals 2

    .line 197
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static newString([BLjava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 241
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 243
    invoke-static {p1, p0}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/StringUtils;->newIllegalStateException(Ljava/lang/String;Ljava/io/UnsupportedEncodingException;)Ljava/lang/IllegalStateException;

    move-result-object p0

    throw p0
.end method

.method private static newString([BLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 214
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static newStringIso8859_1([B)Ljava/lang/String;
    .locals 2

    .line 260
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/amazon/whispersync/org/apache/commons/codec/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static newStringUsAscii([B)Ljava/lang/String;
    .locals 2

    .line 276
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/amazon/whispersync/org/apache/commons/codec/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static newStringUtf16([B)Ljava/lang/String;
    .locals 2

    .line 292
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/amazon/whispersync/org/apache/commons/codec/Charsets;->UTF_16:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static newStringUtf16Be([B)Ljava/lang/String;
    .locals 2

    .line 308
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/amazon/whispersync/org/apache/commons/codec/Charsets;->UTF_16BE:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static newStringUtf16Le([B)Ljava/lang/String;
    .locals 2

    .line 324
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/amazon/whispersync/org/apache/commons/codec/Charsets;->UTF_16LE:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static newStringUtf8([B)Ljava/lang/String;
    .locals 1

    .line 340
    sget-object v0, Lcom/amazon/whispersync/org/apache/commons/codec/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/StringUtils;->newString([BLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
