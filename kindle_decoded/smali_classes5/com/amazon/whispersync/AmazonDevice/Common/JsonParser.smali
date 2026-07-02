.class public Lcom/amazon/whispersync/AmazonDevice/Common/JsonParser;
.super Ljava/lang/Object;
.source "JsonParser.java"


# instance fields
.field private final mBytesToParse:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Common/JsonParser;->mBytesToParse:Ljava/io/ByteArrayOutputStream;

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/amazon/whispersync/org/json/simple/JSONObject;
    .locals 3

    :try_start_0
    const-string v0, "UTF-8"

    .line 27
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 29
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Common/JsonParser;

    invoke-direct {v0}, Lcom/amazon/whispersync/AmazonDevice/Common/JsonParser;-><init>()V

    .line 30
    array-length v1, p0

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Lcom/amazon/whispersync/AmazonDevice/Common/JsonParser;->parseChunk([BJ)Z

    .line 32
    invoke-virtual {v0}, Lcom/amazon/whispersync/AmazonDevice/Common/JsonParser;->parseEndOfDocument()Lcom/amazon/whispersync/org/json/simple/JSONObject;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "parse: Parse was unsuccesful because of an UnsupportedEncodingException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public parseChunk([BJ)Z
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Common/JsonParser;->mBytesToParse:Ljava/io/ByteArrayOutputStream;

    long-to-int p3, p2

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    const/4 p1, 0x1

    return p1
.end method

.method public parseEndOfDocument()Lcom/amazon/whispersync/org/json/simple/JSONObject;
    .locals 5

    const-string v0, "Parsing failed becase of error: "

    const/4 v1, 0x0

    .line 53
    :try_start_0
    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    iget-object v4, p0, Lcom/amazon/whispersync/AmazonDevice/Common/JsonParser;->mBytesToParse:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 54
    new-instance v3, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;

    invoke-direct {v3}, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;-><init>()V

    .line 55
    invoke-virtual {v3, v2}, Lcom/amazon/whispersync/org/json/simple/parser/JSONParser;->parse(Ljava/io/Reader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/whispersync/org/json/simple/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 63
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v2

    .line 59
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    const/4 v2, 0x0

    :goto_1
    return-object v2
.end method
