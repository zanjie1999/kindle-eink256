.class public Lcom/amazon/messaging/odot/webservices/transportdto/AuthenticatedResponseHandlerAdapter;
.super Ljava/lang/Object;
.source "AuthenticatedResponseHandlerAdapter.java"

# interfaces
.implements Lcom/amazon/messaging/odot/webservices/transportdto/IWebResponseParser;


# instance fields
.field private mAuthResponseHandler:Lcom/amazon/messaging/odot/webservices/transportdto/AuthenticatedResponseHandler;

.field private mInnerResponseParser:Lcom/amazon/messaging/odot/webservices/transportdto/IWebResponseParser;


# direct methods
.method public constructor <init>(Lcom/amazon/messaging/odot/webservices/transportdto/IWebResponseParser;)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/amazon/messaging/odot/webservices/transportdto/AuthenticatedResponseHandlerAdapter;->mInnerResponseParser:Lcom/amazon/messaging/odot/webservices/transportdto/IWebResponseParser;

    .line 12
    new-instance p1, Lcom/amazon/messaging/odot/webservices/transportdto/AuthenticatedResponseHandler;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/amazon/messaging/odot/webservices/transportdto/AuthenticatedResponseHandler;-><init>(Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser;)V

    iput-object p1, p0, Lcom/amazon/messaging/odot/webservices/transportdto/AuthenticatedResponseHandlerAdapter;->mAuthResponseHandler:Lcom/amazon/messaging/odot/webservices/transportdto/AuthenticatedResponseHandler;

    return-void
.end method


# virtual methods
.method public authenticationSucceeded()Z
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/AuthenticatedResponseHandlerAdapter;->mAuthResponseHandler:Lcom/amazon/messaging/odot/webservices/transportdto/AuthenticatedResponseHandler;

    invoke-virtual {v0}, Lcom/amazon/messaging/odot/webservices/transportdto/AuthenticatedResponseHandler;->authenticationSucceeded()Z

    move-result v0

    return v0
.end method

.method public beginParse(Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseHeaders;)V
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/AuthenticatedResponseHandlerAdapter;->mInnerResponseParser:Lcom/amazon/messaging/odot/webservices/transportdto/IWebResponseParser;

    if-eqz v0, :cond_0

    .line 18
    invoke-interface {v0, p1}, Lcom/amazon/messaging/odot/webservices/transportdto/IWebResponseParser;->beginParse(Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseHeaders;)V

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/AuthenticatedResponseHandlerAdapter;->mAuthResponseHandler:Lcom/amazon/messaging/odot/webservices/transportdto/AuthenticatedResponseHandler;

    invoke-virtual {v0, p1}, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser;->beginParse(Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseHeaders;)V

    return-void
.end method

.method public endParse()Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/AuthenticatedResponseHandlerAdapter;->mInnerResponseParser:Lcom/amazon/messaging/odot/webservices/transportdto/IWebResponseParser;

    if-eqz v0, :cond_0

    .line 38
    invoke-interface {v0}, Lcom/amazon/messaging/odot/webservices/transportdto/IWebResponseParser;->endParse()Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/AuthenticatedResponseHandlerAdapter;->mAuthResponseHandler:Lcom/amazon/messaging/odot/webservices/transportdto/AuthenticatedResponseHandler;

    invoke-virtual {v0}, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser;->endParse()Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;

    .line 41
    invoke-virtual {p0}, Lcom/amazon/messaging/odot/webservices/transportdto/AuthenticatedResponseHandlerAdapter;->getParseError()Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;

    move-result-object v0

    return-object v0
.end method

.method public getParseError()Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/AuthenticatedResponseHandlerAdapter;->mInnerResponseParser:Lcom/amazon/messaging/odot/webservices/transportdto/IWebResponseParser;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/messaging/odot/webservices/transportdto/IWebResponseParser;->getParseError()Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;

    move-result-object v0

    sget-object v1, Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;->ParseErrorNoError:Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;

    if-eq v0, v1, :cond_0

    .line 53
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/AuthenticatedResponseHandlerAdapter;->mInnerResponseParser:Lcom/amazon/messaging/odot/webservices/transportdto/IWebResponseParser;

    invoke-interface {v0}, Lcom/amazon/messaging/odot/webservices/transportdto/IWebResponseParser;->getParseError()Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;

    move-result-object v0

    return-object v0

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/AuthenticatedResponseHandlerAdapter;->mAuthResponseHandler:Lcom/amazon/messaging/odot/webservices/transportdto/AuthenticatedResponseHandler;

    invoke-virtual {v0}, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser;->getParseError()Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;

    move-result-object v0

    return-object v0
.end method

.method public getParsedResponse()Ljava/lang/Object;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/AuthenticatedResponseHandlerAdapter;->mInnerResponseParser:Lcom/amazon/messaging/odot/webservices/transportdto/IWebResponseParser;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 64
    :cond_0
    invoke-interface {v0}, Lcom/amazon/messaging/odot/webservices/transportdto/IWebResponseParser;->getParsedResponse()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public parseBodyChunk([BI)Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;
    .locals 3

    .line 25
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/AuthenticatedResponseHandlerAdapter;->mInnerResponseParser:Lcom/amazon/messaging/odot/webservices/transportdto/IWebResponseParser;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/messaging/odot/webservices/transportdto/IWebResponseParser;->shouldParseBody()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/AuthenticatedResponseHandlerAdapter;->mInnerResponseParser:Lcom/amazon/messaging/odot/webservices/transportdto/IWebResponseParser;

    invoke-interface {v0, p1, p2}, Lcom/amazon/messaging/odot/webservices/transportdto/IWebResponseParser;->parseBodyChunk([BI)Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/AuthenticatedResponseHandlerAdapter;->mAuthResponseHandler:Lcom/amazon/messaging/odot/webservices/transportdto/AuthenticatedResponseHandler;

    invoke-virtual {v0}, Lcom/amazon/messaging/odot/webservices/transportdto/AuthenticatedResponseHandler;->shouldParseBody()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/AuthenticatedResponseHandlerAdapter;->mAuthResponseHandler:Lcom/amazon/messaging/odot/webservices/transportdto/AuthenticatedResponseHandler;

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser;->parseBodyChunk([BJ)Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;

    .line 32
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/messaging/odot/webservices/transportdto/AuthenticatedResponseHandlerAdapter;->getParseError()Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;

    move-result-object p1

    return-object p1
.end method

.method public shouldParseBody()Z
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/AuthenticatedResponseHandlerAdapter;->mInnerResponseParser:Lcom/amazon/messaging/odot/webservices/transportdto/IWebResponseParser;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/messaging/odot/webservices/transportdto/IWebResponseParser;->shouldParseBody()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/AuthenticatedResponseHandlerAdapter;->mAuthResponseHandler:Lcom/amazon/messaging/odot/webservices/transportdto/AuthenticatedResponseHandler;

    .line 47
    invoke-virtual {v0}, Lcom/amazon/messaging/odot/webservices/transportdto/AuthenticatedResponseHandler;->shouldParseBody()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
