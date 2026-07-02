.class public Lcom/amazon/ea/sidecar/parsing/raw/RawSidecarMetadataParser;
.super Ljava/lang/Object;
.source "RawSidecarMetadataParser.java"


# direct methods
.method private static cdeTypeToContentType(Ljava/lang/String;)Lcom/amazon/kindle/krx/content/ContentType;
    .locals 1

    const-string v0, "EBOK"

    .line 75
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    sget-object p0, Lcom/amazon/kindle/krx/content/ContentType;->BOOK:Lcom/amazon/kindle/krx/content/ContentType;

    return-object p0

    :cond_0
    const-string v0, "EBSP"

    .line 77
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 78
    sget-object p0, Lcom/amazon/kindle/krx/content/ContentType;->BOOK_SAMPLE:Lcom/amazon/kindle/krx/content/ContentType;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/amazon/ea/sidecar/def/raw/RawSidecarMetadata;
    .locals 12

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "asin"

    .line 48
    invoke-static {p0, v1}, Lcom/amazon/ea/sidecar/parsing/ParsingUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    return-object v0

    :cond_1
    const-string v1, "embeddedID"

    .line 54
    invoke-static {p0, v1}, Lcom/amazon/ea/sidecar/parsing/ParsingUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "fictionStatus"

    .line 56
    invoke-static {p0, v1}, Lcom/amazon/ea/sidecar/parsing/ParsingUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v1, "contentType"

    .line 58
    invoke-static {p0, v1}, Lcom/amazon/ea/sidecar/parsing/ParsingUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/ea/sidecar/parsing/raw/RawSidecarMetadataParser;->cdeTypeToContentType(Ljava/lang/String;)Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v5

    if-nez v5, :cond_2

    return-object v0

    :cond_2
    const-string/jumbo v1, "refTagSuffix"

    .line 63
    invoke-static {p0, v1}, Lcom/amazon/ea/sidecar/parsing/ParsingUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_3

    return-object v0

    :cond_3
    const-wide/16 v0, -0x1

    const-string v2, "erl"

    .line 68
    invoke-virtual {p0, v2, v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string/jumbo v2, "timestamp"

    invoke-virtual {p0, v2, v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v9

    .line 71
    new-instance p0, Lcom/amazon/ea/sidecar/def/raw/RawSidecarMetadata;

    move-object v2, p0

    invoke-direct/range {v2 .. v11}, Lcom/amazon/ea/sidecar/def/raw/RawSidecarMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/content/ContentType;JLjava/lang/String;JLjava/lang/String;)V

    return-object p0
.end method
