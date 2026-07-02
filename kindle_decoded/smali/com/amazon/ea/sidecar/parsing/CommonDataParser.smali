.class public Lcom/amazon/ea/sidecar/parsing/CommonDataParser;
.super Ljava/lang/Object;
.source "CommonDataParser.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.ea.sidecar.parsing.CommonDataParser"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final parse(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/ea/sidecar/def/raw/RawSidecarMetadata;)Lcom/amazon/ea/sidecar/def/CommonData;
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 29
    :cond_0
    :try_start_0
    iget-object v1, p1, Lcom/amazon/ea/sidecar/def/raw/RawSidecarMetadata;->contentType:Lcom/amazon/kindle/krx/content/ContentType;

    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v2

    if-eq v1, v2, :cond_1

    return-object v0

    .line 33
    :cond_1
    iget-object v1, p1, Lcom/amazon/ea/sidecar/def/raw/RawSidecarMetadata;->asin:Ljava/lang/String;

    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return-object v0

    :cond_2
    const-wide/16 v1, -0x1

    .line 38
    iget-object v3, p1, Lcom/amazon/ea/sidecar/def/raw/RawSidecarMetadata;->embeddedId:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p1, Lcom/amazon/ea/sidecar/def/raw/RawSidecarMetadata;->embeddedId:Ljava/lang/String;

    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getGuid()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 39
    iget-wide v1, p1, Lcom/amazon/ea/sidecar/def/raw/RawSidecarMetadata;->erl:J

    :cond_3
    move-wide v2, v1

    .line 42
    new-instance p0, Lcom/amazon/ea/sidecar/def/CommonData;

    iget-object v4, p1, Lcom/amazon/ea/sidecar/def/raw/RawSidecarMetadata;->refTagSuffix:Ljava/lang/String;

    iget-wide v5, p1, Lcom/amazon/ea/sidecar/def/raw/RawSidecarMetadata;->timestamp:J

    iget-object v7, p1, Lcom/amazon/ea/sidecar/def/raw/RawSidecarMetadata;->fictionStatus:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/amazon/ea/sidecar/def/CommonData;-><init>(JLjava/lang/String;JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 44
    sget-object p1, Lcom/amazon/ea/sidecar/parsing/CommonDataParser;->TAG:Ljava/lang/String;

    const-string v1, "Failed to parse"

    invoke-static {p1, v1, p0}, Lcom/amazon/ea/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method
