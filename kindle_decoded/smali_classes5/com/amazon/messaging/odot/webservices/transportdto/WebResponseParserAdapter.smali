.class public Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParserAdapter;
.super Ljava/lang/Object;
.source "WebResponseParserAdapter.java"

# interfaces
.implements Lcom/amazon/messaging/odot/webservices/transportdto/IWebResponseParser;


# instance fields
.field protected mParser:Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser;


# direct methods
.method public constructor <init>(Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParserAdapter;->mParser:Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser;

    return-void
.end method


# virtual methods
.method public beginParse(Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseHeaders;)V
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParserAdapter;->mParser:Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser;

    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {v0, p1}, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser;->beginParse(Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseHeaders;)V

    :cond_0
    return-void
.end method

.method public endParse()Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParserAdapter;->mParser:Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser;

    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {v0}, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser;->endParse()Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getParseError()Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParserAdapter;->mParser:Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser;

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {v0}, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser;->getParseError()Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getParsedResponse()Ljava/lang/Object;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParserAdapter;->mParser:Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser;

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {v0}, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser;->getParsedResponse()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public parseBodyChunk([BI)Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;
    .locals 3

    .line 22
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParserAdapter;->mParser:Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser;

    if-eqz v0, :cond_0

    int-to-long v1, p2

    .line 23
    invoke-virtual {v0, p1, v1, v2}, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser;->parseBodyChunk([BJ)Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public shouldParseBody()Z
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParserAdapter;->mParser:Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser;

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {v0}, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser;->shouldParseBody()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
