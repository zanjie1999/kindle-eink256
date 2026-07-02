.class public Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesResponseParser;
.super Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser;
.source "PostMessagesResponseParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser<",
        "Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private final mParser:Lcom/amazon/messaging/odot/webservices/transportdto/JsonParser;

.field private mResponse:Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesResponse;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const-class v0, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesResponseParser;

    invoke-static {v0}, Lcom/amazon/messaging/odot/util/OdotMessageUtil;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesResponseParser;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 25
    const-class v0, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesResponseParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser;-><init>(Ljava/lang/String;)V

    .line 27
    new-instance v0, Lcom/amazon/messaging/odot/webservices/transportdto/JsonParser;

    invoke-direct {v0}, Lcom/amazon/messaging/odot/webservices/transportdto/JsonParser;-><init>()V

    iput-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesResponseParser;->mParser:Lcom/amazon/messaging/odot/webservices/transportdto/JsonParser;

    return-void
.end method


# virtual methods
.method public getParsedResponse()Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesResponse;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesResponseParser;->mResponse:Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesResponse;

    return-object v0
.end method

.method public bridge synthetic getParsedResponse()Ljava/lang/Object;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesResponseParser;->getParsedResponse()Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesResponse;

    move-result-object v0

    return-object v0
.end method

.method public internalBeginParse(Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseHeaders;)Z
    .locals 6

    const-string v0, "Content-Type"

    .line 37
    invoke-virtual {p1, v0}, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseHeaders;->getHeaderByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-virtual {p1}, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseHeaders;->getStatusCode()J

    move-result-wide v1

    const-wide/16 v3, 0xc8

    cmp-long v5, v1, v3

    if-ltz v5, :cond_1

    const-wide/16 v3, 0x12c

    cmp-long v5, v1, v3

    if-ltz v5, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "application/json"

    .line 53
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 54
    sget-object p1, Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;->ParseErrorMalformedBody:Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;

    invoke-virtual {p0, p1}, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser;->setParseError(Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;)Z

    const-string p1, "PostMessagesResponseParser:  Unexpected response content type of %s."

    .line 55
    invoke-static {p1, v0}, Lcom/amazon/messaging/odot/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    :goto_0
    const-string v0, "Retry-After"

    .line 41
    invoke-virtual {p1, v0}, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseHeaders;->getHeaderByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "X-ADP-Call-After"

    .line 42
    invoke-virtual {p1, v3}, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseHeaders;->getHeaderByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 43
    invoke-static {v0}, Lcom/amazon/messaging/odot/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {p1}, Lcom/amazon/messaging/odot/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 46
    :cond_2
    iget-object v3, p0, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesResponseParser;->mResponse:Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesResponse;

    if-nez v3, :cond_3

    .line 47
    new-instance v3, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesResponse;

    invoke-direct {v3}, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesResponse;-><init>()V

    iput-object v3, p0, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesResponseParser;->mResponse:Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesResponse;

    .line 49
    :cond_3
    iget-object v3, p0, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesResponseParser;->mResponse:Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesResponse;

    invoke-virtual {v3, v1, v2}, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesResponse;->setStatusCode(J)V

    .line 50
    iget-object v1, p0, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesResponseParser;->mResponse:Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesResponse;

    invoke-virtual {v1, v0}, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesResponse;->setRetryAfter(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesResponseParser;->mResponse:Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesResponse;

    invoke-virtual {v0, p1}, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesResponse;->setCallAfter(Ljava/lang/String;)V

    goto :goto_2

    .line 44
    :cond_4
    :goto_1
    sget-object p1, Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;->ParseErrorHttpError:Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;

    invoke-virtual {p0, p1}, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser;->setParseError(Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;)Z

    :cond_5
    :goto_2
    const/4 p1, 0x1

    return p1
.end method

.method protected internalEndParse()V
    .locals 9

    .line 70
    const-class v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesResponseParser;->mResponse:Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesResponse;

    if-eqz v1, :cond_0

    return-void

    .line 74
    :cond_0
    iget-object v1, p0, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesResponseParser;->mParser:Lcom/amazon/messaging/odot/webservices/transportdto/JsonParser;

    invoke-virtual {v1}, Lcom/amazon/messaging/odot/webservices/transportdto/JsonParser;->parseEndOfDocument()Lorg/json/simple/JSONObject;

    move-result-object v1

    if-nez v1, :cond_1

    .line 77
    sget-object v0, Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;->ParseErrorMalformedBody:Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;

    invoke-virtual {p0, v0}, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser;->setParseError(Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;)Z

    .line 78
    sget-object v0, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesResponseParser;->TAG:Ljava/lang/String;

    const-string v1, "PostMessagesResponseParser:  Response couldn\'t be parsed.  Invalid JSON?"

    invoke-static {v0, v1}, Lcom/amazon/messaging/odot/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 82
    :cond_1
    new-instance v2, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesResponse;

    invoke-direct {v2}, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesResponse;-><init>()V

    iput-object v2, p0, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesResponseParser;->mResponse:Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesResponse;

    .line 83
    const-class v2, Lorg/json/simple/JSONArray;

    const-string/jumbo v3, "responses"

    invoke-static {v1, v3, v2}, Lcom/amazon/messaging/odot/webservices/transportdto/JsonHelpers;->getMemberAsClass(Lorg/json/simple/JSONObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/simple/JSONArray;

    .line 85
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_d

    if-nez v2, :cond_2

    goto/16 :goto_4

    :cond_2
    const/4 v1, 0x0

    .line 91
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_c

    .line 92
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-class v4, Lorg/json/simple/JSONObject;

    invoke-static {v3, v4}, Lcom/amazon/messaging/odot/webservices/transportdto/JsonHelpers;->castOrNull(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/simple/JSONObject;

    if-nez v3, :cond_3

    goto/16 :goto_2

    .line 97
    :cond_3
    new-instance v4, Lcom/amazon/messaging/odot/webservices/transportdto/MessageResponse;

    invoke-direct {v4}, Lcom/amazon/messaging/odot/webservices/transportdto/MessageResponse;-><init>()V

    const-string v5, "id"

    .line 99
    invoke-static {v3, v5, v0}, Lcom/amazon/messaging/odot/webservices/transportdto/JsonHelpers;->getMemberAsClass(Lorg/json/simple/JSONObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 100
    const-class v6, Ljava/lang/Number;

    const-string/jumbo v7, "status"

    invoke-static {v3, v7, v6}, Lcom/amazon/messaging/odot/webservices/transportdto/JsonHelpers;->getMemberAsClass(Lorg/json/simple/JSONObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    .line 101
    const-class v7, Ljava/lang/Boolean;

    const-string/jumbo v8, "retry"

    invoke-static {v3, v8, v7}, Lcom/amazon/messaging/odot/webservices/transportdto/JsonHelpers;->getMemberAsClass(Lorg/json/simple/JSONObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    if-eqz v5, :cond_b

    if-eqz v6, :cond_b

    if-nez v7, :cond_4

    goto/16 :goto_3

    .line 109
    :cond_4
    invoke-virtual {v4, v5}, Lcom/amazon/messaging/odot/webservices/transportdto/MessageResponse;->setId(Ljava/lang/String;)Z

    .line 110
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/amazon/messaging/odot/webservices/transportdto/MessageResponse;->setStatusCode(I)Z

    .line 111
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/amazon/messaging/odot/webservices/transportdto/MessageResponse;->setShouldRetry(Z)Z

    const-string/jumbo v5, "retryAfter"

    .line 113
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 114
    const-class v6, Ljava/lang/Number;

    invoke-static {v3, v5, v6}, Lcom/amazon/messaging/odot/webservices/transportdto/JsonHelpers;->getMemberAsClass(Lorg/json/simple/JSONObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    if-nez v5, :cond_5

    .line 116
    sget-object v0, Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;->ParseErrorMalformedBody:Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;

    invoke-virtual {p0, v0}, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser;->setParseError(Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;)Z

    .line 117
    sget-object v0, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesResponseParser;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PostMessagesResponseParser:  Type mismatch on retryAfter field in response #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/messaging/odot/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 120
    :cond_5
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Lcom/amazon/messaging/odot/webservices/transportdto/MessageResponse;->setRetryDelay(J)Z

    :cond_6
    const-string v5, "description"

    .line 123
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 124
    invoke-static {v3, v5, v0}, Lcom/amazon/messaging/odot/webservices/transportdto/JsonHelpers;->getMemberAsClass(Lorg/json/simple/JSONObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 125
    invoke-static {v3, v5}, Lcom/amazon/messaging/odot/webservices/transportdto/JsonHelpers;->isNull(Lorg/json/simple/JSONObject;Ljava/lang/String;)Z

    move-result v3

    if-nez v6, :cond_7

    if-nez v3, :cond_7

    .line 128
    sget-object v0, Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;->ParseErrorMalformedBody:Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;

    invoke-virtual {p0, v0}, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser;->setParseError(Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;)Z

    .line 129
    sget-object v0, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesResponseParser;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PostMessagesResponseParser:  Type mismatch on description field in response #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/messaging/odot/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_7
    if-eqz v3, :cond_8

    const-string v3, ""

    .line 134
    invoke-virtual {v4, v3}, Lcom/amazon/messaging/odot/webservices/transportdto/MessageResponse;->setDescription(Ljava/lang/String;)Z

    goto :goto_1

    .line 136
    :cond_8
    invoke-virtual {v4, v6}, Lcom/amazon/messaging/odot/webservices/transportdto/MessageResponse;->setDescription(Ljava/lang/String;)Z

    .line 140
    :cond_9
    :goto_1
    invoke-virtual {v4}, Lcom/amazon/messaging/odot/webservices/transportdto/MessageResponse;->isValid()Z

    move-result v3

    if-nez v3, :cond_a

    .line 141
    sget-object v0, Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;->ParseErrorMalformedBody:Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;

    invoke-virtual {p0, v0}, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser;->setParseError(Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;)Z

    .line 142
    sget-object v0, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesResponseParser;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PostMessagesResponseParser:  Invalid message after parsing response #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/messaging/odot/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 146
    :cond_a
    iget-object v3, p0, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesResponseParser;->mResponse:Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesResponse;

    invoke-virtual {v3, v4}, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesResponse;->addMessageResponse(Lcom/amazon/messaging/odot/webservices/transportdto/MessageResponse;)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 104
    :cond_b
    :goto_3
    sget-object v0, Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;->ParseErrorMalformedBody:Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;

    invoke-virtual {p0, v0}, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser;->setParseError(Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;)Z

    .line 105
    sget-object v0, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesResponseParser;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PostMessagesResponseParser:  Missing mandatory fields in response #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/messaging/odot/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    return-void

    .line 86
    :cond_d
    :goto_4
    sget-object v0, Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;->ParseErrorMalformedBody:Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;

    invoke-virtual {p0, v0}, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser;->setParseError(Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;)Z

    .line 87
    sget-object v0, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesResponseParser;->TAG:Ljava/lang/String;

    const-string v1, "PostMessagesResponseParser:  Expected single root array element \"responses\"."

    invoke-static {v0, v1}, Lcom/amazon/messaging/odot/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected internalParseBodyChunk([BJ)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesResponseParser;->mParser:Lcom/amazon/messaging/odot/webservices/transportdto/JsonParser;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/messaging/odot/webservices/transportdto/JsonParser;->parseChunk([BJ)Z

    move-result p1

    if-nez p1, :cond_0

    .line 64
    sget-object p1, Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;->ParseErrorMalformedBody:Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;

    invoke-virtual {p0, p1}, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser;->setParseError(Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;)Z

    :cond_0
    return-void
.end method
