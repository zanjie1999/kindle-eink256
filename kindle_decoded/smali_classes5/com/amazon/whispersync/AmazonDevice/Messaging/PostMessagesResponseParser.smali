.class public Lcom/amazon/whispersync/AmazonDevice/Messaging/PostMessagesResponseParser;
.super Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;
.source "PostMessagesResponseParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser<",
        "Lcom/amazon/whispersync/AmazonDevice/Messaging/PostMessagesResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final mParser:Lcom/amazon/whispersync/AmazonDevice/Common/JsonParser;

.field private mResponse:Lcom/amazon/whispersync/AmazonDevice/Messaging/PostMessagesResponse;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    const-class v0, Lcom/amazon/whispersync/AmazonDevice/Messaging/PostMessagesResponseParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;-><init>(Ljava/lang/String;)V

    .line 26
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Common/JsonParser;

    invoke-direct {v0}, Lcom/amazon/whispersync/AmazonDevice/Common/JsonParser;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/PostMessagesResponseParser;->mParser:Lcom/amazon/whispersync/AmazonDevice/Common/JsonParser;

    return-void
.end method


# virtual methods
.method public getParsedResponse()Lcom/amazon/whispersync/AmazonDevice/Messaging/PostMessagesResponse;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/PostMessagesResponseParser;->mResponse:Lcom/amazon/whispersync/AmazonDevice/Messaging/PostMessagesResponse;

    return-object v0
.end method

.method public bridge synthetic getParsedResponse()Ljava/lang/Object;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lcom/amazon/whispersync/AmazonDevice/Messaging/PostMessagesResponseParser;->getParsedResponse()Lcom/amazon/whispersync/AmazonDevice/Messaging/PostMessagesResponse;

    move-result-object v0

    return-object v0
.end method

.method public internalBeginParse(Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseHeaders;)Z
    .locals 7

    const-string v0, "Content-Type"

    .line 38
    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseHeaders;->getHeaderByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-virtual {p1}, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseHeaders;->getStatusCode()J

    move-result-wide v1

    const/4 v3, 0x1

    const-wide/16 v4, 0xc8

    cmp-long v6, v1, v4

    if-ltz v6, :cond_1

    const-wide/16 v4, 0x12c

    cmp-long v6, v1, v4

    if-ltz v6, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "application/json"

    .line 58
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 60
    sget-object p1, Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;->ParseErrorMalformedBody:Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;->setParseError(Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;)Z

    new-array p1, v3, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const-string v0, "PostMessagesResponseParser:  Unexpected response content type of %s."

    .line 61
    invoke-static {v0, p1}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    :goto_0
    const-string v0, "Retry-After"

    .line 43
    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseHeaders;->getHeaderByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 44
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 50
    :cond_2
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/PostMessagesResponseParser;->mResponse:Lcom/amazon/whispersync/AmazonDevice/Messaging/PostMessagesResponse;

    if-nez v0, :cond_3

    .line 52
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Messaging/PostMessagesResponse;

    invoke-direct {v0}, Lcom/amazon/whispersync/AmazonDevice/Messaging/PostMessagesResponse;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/PostMessagesResponseParser;->mResponse:Lcom/amazon/whispersync/AmazonDevice/Messaging/PostMessagesResponse;

    .line 54
    :cond_3
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/PostMessagesResponseParser;->mResponse:Lcom/amazon/whispersync/AmazonDevice/Messaging/PostMessagesResponse;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/whispersync/AmazonDevice/Messaging/PostMessagesResponse;->setStatusCode(J)V

    .line 55
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/PostMessagesResponseParser;->mResponse:Lcom/amazon/whispersync/AmazonDevice/Messaging/PostMessagesResponse;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/AmazonDevice/Messaging/PostMessagesResponse;->setRetryAfter(Ljava/lang/String;)V

    goto :goto_2

    .line 46
    :cond_4
    :goto_1
    sget-object p1, Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;->ParseErrorHttpError:Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;->setParseError(Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;)Z

    :cond_5
    :goto_2
    return v3
.end method

.method protected internalEndParse()V
    .locals 11

    .line 79
    const-class v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/PostMessagesResponseParser;->mResponse:Lcom/amazon/whispersync/AmazonDevice/Messaging/PostMessagesResponse;

    if-eqz v1, :cond_0

    return-void

    .line 84
    :cond_0
    iget-object v1, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/PostMessagesResponseParser;->mParser:Lcom/amazon/whispersync/AmazonDevice/Common/JsonParser;

    invoke-virtual {v1}, Lcom/amazon/whispersync/AmazonDevice/Common/JsonParser;->parseEndOfDocument()Lcom/amazon/whispersync/org/json/simple/JSONObject;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 88
    sget-object v0, Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;->ParseErrorMalformedBody:Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;->setParseError(Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;)Z

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "PostMessagesResponseParser:  Response couldn\'t be parsed.  Invalid JSON?"

    .line 89
    invoke-static {v1, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 93
    :cond_1
    new-instance v3, Lcom/amazon/whispersync/AmazonDevice/Messaging/PostMessagesResponse;

    invoke-direct {v3}, Lcom/amazon/whispersync/AmazonDevice/Messaging/PostMessagesResponse;-><init>()V

    iput-object v3, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/PostMessagesResponseParser;->mResponse:Lcom/amazon/whispersync/AmazonDevice/Messaging/PostMessagesResponse;

    .line 94
    const-class v3, Lcom/amazon/whispersync/org/json/simple/JSONArray;

    const-string/jumbo v4, "responses"

    invoke-static {v1, v4, v3}, Lcom/amazon/whispersync/AmazonDevice/Common/JsonHelpers;->getMemberAsClass(Lcom/amazon/whispersync/org/json/simple/JSONObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/whispersync/org/json/simple/JSONArray;

    .line 96
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_d

    if-nez v3, :cond_2

    goto/16 :goto_4

    :cond_2
    const/4 v1, 0x0

    .line 103
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_c

    .line 105
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    const-class v6, Lcom/amazon/whispersync/org/json/simple/JSONObject;

    invoke-static {v5, v6}, Lcom/amazon/whispersync/AmazonDevice/Common/JsonHelpers;->castOrNull(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/whispersync/org/json/simple/JSONObject;

    if-nez v5, :cond_3

    goto/16 :goto_2

    .line 111
    :cond_3
    new-instance v6, Lcom/amazon/whispersync/AmazonDevice/Messaging/MessageResponse;

    invoke-direct {v6}, Lcom/amazon/whispersync/AmazonDevice/Messaging/MessageResponse;-><init>()V

    const-string v7, "id"

    .line 113
    invoke-static {v5, v7, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/JsonHelpers;->getMemberAsClass(Lcom/amazon/whispersync/org/json/simple/JSONObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 114
    const-class v8, Ljava/lang/Number;

    const-string/jumbo v9, "status"

    invoke-static {v5, v9, v8}, Lcom/amazon/whispersync/AmazonDevice/Common/JsonHelpers;->getMemberAsClass(Lcom/amazon/whispersync/org/json/simple/JSONObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    .line 115
    const-class v9, Ljava/lang/Boolean;

    const-string/jumbo v10, "retry"

    invoke-static {v5, v10, v9}, Lcom/amazon/whispersync/AmazonDevice/Common/JsonHelpers;->getMemberAsClass(Lcom/amazon/whispersync/org/json/simple/JSONObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    if-eqz v7, :cond_b

    if-eqz v8, :cond_b

    if-nez v9, :cond_4

    goto/16 :goto_3

    .line 124
    :cond_4
    invoke-virtual {v6, v7}, Lcom/amazon/whispersync/AmazonDevice/Messaging/MessageResponse;->setId(Ljava/lang/String;)Z

    .line 125
    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/amazon/whispersync/AmazonDevice/Messaging/MessageResponse;->setStatusCode(I)Z

    .line 126
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v6, v7}, Lcom/amazon/whispersync/AmazonDevice/Messaging/MessageResponse;->setShouldRetry(Z)Z

    const-string/jumbo v7, "retryAfter"

    .line 128
    invoke-virtual {v5, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 130
    const-class v8, Ljava/lang/Number;

    invoke-static {v5, v7, v8}, Lcom/amazon/whispersync/AmazonDevice/Common/JsonHelpers;->getMemberAsClass(Lcom/amazon/whispersync/org/json/simple/JSONObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    if-nez v7, :cond_5

    .line 133
    sget-object v0, Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;->ParseErrorMalformedBody:Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;->setParseError(Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;)Z

    new-array v0, v4, [Ljava/lang/Object;

    .line 134
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "PostMessagesResponseParser:  Type mismatch on retryAfter field in response #%d."

    invoke-static {v1, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 137
    :cond_5
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v6, v7, v8}, Lcom/amazon/whispersync/AmazonDevice/Messaging/MessageResponse;->setRetryDelay(J)Z

    :cond_6
    const-string v7, "description"

    .line 140
    invoke-virtual {v5, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 142
    invoke-static {v5, v7, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/JsonHelpers;->getMemberAsClass(Lcom/amazon/whispersync/org/json/simple/JSONObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 143
    invoke-static {v5, v7}, Lcom/amazon/whispersync/AmazonDevice/Common/JsonHelpers;->isNull(Lcom/amazon/whispersync/org/json/simple/JSONObject;Ljava/lang/String;)Z

    move-result v5

    if-nez v8, :cond_7

    if-nez v5, :cond_7

    .line 147
    sget-object v0, Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;->ParseErrorMalformedBody:Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;->setParseError(Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;)Z

    new-array v0, v4, [Ljava/lang/Object;

    .line 148
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "PostMessagesResponseParser:  Type mismatch on description field in response #%d."

    invoke-static {v1, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_7
    if-eqz v5, :cond_8

    const-string v5, ""

    .line 154
    invoke-virtual {v6, v5}, Lcom/amazon/whispersync/AmazonDevice/Messaging/MessageResponse;->setDescription(Ljava/lang/String;)Z

    goto :goto_1

    .line 158
    :cond_8
    invoke-virtual {v6, v8}, Lcom/amazon/whispersync/AmazonDevice/Messaging/MessageResponse;->setDescription(Ljava/lang/String;)Z

    .line 162
    :cond_9
    :goto_1
    invoke-virtual {v6}, Lcom/amazon/whispersync/AmazonDevice/Messaging/MessageResponse;->isValid()Z

    move-result v5

    if-nez v5, :cond_a

    .line 164
    sget-object v0, Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;->ParseErrorMalformedBody:Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;->setParseError(Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;)Z

    new-array v0, v4, [Ljava/lang/Object;

    .line 165
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "PostMessagesResponseParser:  Invalid message after parsing response #%d."

    invoke-static {v1, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 169
    :cond_a
    iget-object v5, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/PostMessagesResponseParser;->mResponse:Lcom/amazon/whispersync/AmazonDevice/Messaging/PostMessagesResponse;

    invoke-virtual {v5, v6}, Lcom/amazon/whispersync/AmazonDevice/Messaging/PostMessagesResponse;->addMessageResponse(Lcom/amazon/whispersync/AmazonDevice/Messaging/MessageResponse;)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 119
    :cond_b
    :goto_3
    sget-object v0, Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;->ParseErrorMalformedBody:Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;->setParseError(Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;)Z

    new-array v0, v4, [Ljava/lang/Object;

    .line 120
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "PostMessagesResponseParser:  Missing mandatory fields in response #%d."

    invoke-static {v1, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_c
    return-void

    .line 98
    :cond_d
    :goto_4
    sget-object v0, Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;->ParseErrorMalformedBody:Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;->setParseError(Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;)Z

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "PostMessagesResponseParser:  Expected single root array element \"responses\"."

    .line 99
    invoke-static {v1, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected internalParseBodyChunk([BJ)V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/PostMessagesResponseParser;->mParser:Lcom/amazon/whispersync/AmazonDevice/Common/JsonParser;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/whispersync/AmazonDevice/Common/JsonParser;->parseChunk([BJ)Z

    move-result p1

    if-nez p1, :cond_0

    .line 72
    sget-object p1, Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;->ParseErrorMalformedBody:Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;->setParseError(Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;)Z

    :cond_0
    return-void
.end method
