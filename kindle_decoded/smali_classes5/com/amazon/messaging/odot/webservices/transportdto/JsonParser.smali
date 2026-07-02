.class public Lcom/amazon/messaging/odot/webservices/transportdto/JsonParser;
.super Ljava/lang/Object;
.source "JsonParser.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private final mBytesToParse:Ljava/io/ByteArrayOutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lcom/amazon/messaging/odot/webservices/transportdto/JsonParser;

    invoke-static {v0}, Lcom/amazon/messaging/odot/util/OdotMessageUtil;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/messaging/odot/webservices/transportdto/JsonParser;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/JsonParser;->mBytesToParse:Ljava/io/ByteArrayOutputStream;

    return-void
.end method


# virtual methods
.method public parseChunk([BJ)Z
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/JsonParser;->mBytesToParse:Ljava/io/ByteArrayOutputStream;

    long-to-int p3, p2

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    const/4 p1, 0x1

    return p1
.end method

.method public parseEndOfDocument()Lorg/json/simple/JSONObject;
    .locals 4

    const-string v0, "Parsing failed becase of error: "

    .line 53
    :try_start_0
    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    iget-object v3, p0, Lcom/amazon/messaging/odot/webservices/transportdto/JsonParser;->mBytesToParse:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 54
    new-instance v2, Lorg/json/simple/parser/JSONParser;

    invoke-direct {v2}, Lorg/json/simple/parser/JSONParser;-><init>()V

    .line 55
    invoke-virtual {v2, v1}, Lorg/json/simple/parser/JSONParser;->parse(Ljava/io/Reader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/simple/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 59
    sget-object v2, Lcom/amazon/messaging/odot/webservices/transportdto/JsonParser;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/amazon/messaging/odot/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    .line 57
    sget-object v2, Lcom/amazon/messaging/odot/webservices/transportdto/JsonParser;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/amazon/messaging/odot/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v1, 0x0

    :goto_1
    return-object v1
.end method
