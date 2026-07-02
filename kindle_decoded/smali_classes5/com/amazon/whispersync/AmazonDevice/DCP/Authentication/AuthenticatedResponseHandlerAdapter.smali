.class public Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AuthenticatedResponseHandlerAdapter;
.super Ljava/lang/Object;
.source "AuthenticatedResponseHandlerAdapter.java"

# interfaces
.implements Lcom/amazon/whispersync/AmazonDevice/Common/IWebResponseParser;


# instance fields
.field private mAuthResponseHandler:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AuthenticatedResponseHandler;

.field private mInnerResponseParser:Lcom/amazon/whispersync/AmazonDevice/Common/IWebResponseParser;


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/AmazonDevice/Common/IWebResponseParser;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AuthenticatedResponseHandlerAdapter;->mInnerResponseParser:Lcom/amazon/whispersync/AmazonDevice/Common/IWebResponseParser;

    .line 16
    new-instance p1, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AuthenticatedResponseHandler;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AuthenticatedResponseHandler;-><init>(Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;)V

    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AuthenticatedResponseHandlerAdapter;->mAuthResponseHandler:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AuthenticatedResponseHandler;

    return-void
.end method


# virtual methods
.method public authenticationSucceeded()Z
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AuthenticatedResponseHandlerAdapter;->mAuthResponseHandler:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AuthenticatedResponseHandler;

    invoke-virtual {v0}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AuthenticatedResponseHandler;->authenticationSucceeded()Z

    move-result v0

    return v0
.end method

.method public beginParse(Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseHeaders;)V
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AuthenticatedResponseHandlerAdapter;->mInnerResponseParser:Lcom/amazon/whispersync/AmazonDevice/Common/IWebResponseParser;

    if-eqz v0, :cond_0

    .line 24
    invoke-interface {v0, p1}, Lcom/amazon/whispersync/AmazonDevice/Common/IWebResponseParser;->beginParse(Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseHeaders;)V

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AuthenticatedResponseHandlerAdapter;->mAuthResponseHandler:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AuthenticatedResponseHandler;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;->beginParse(Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseHeaders;)V

    return-void
.end method

.method public endParse()Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AuthenticatedResponseHandlerAdapter;->mInnerResponseParser:Lcom/amazon/whispersync/AmazonDevice/Common/IWebResponseParser;

    if-eqz v0, :cond_0

    .line 49
    invoke-interface {v0}, Lcom/amazon/whispersync/AmazonDevice/Common/IWebResponseParser;->endParse()Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AuthenticatedResponseHandlerAdapter;->mAuthResponseHandler:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AuthenticatedResponseHandler;

    invoke-virtual {v0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;->endParse()Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    .line 52
    invoke-virtual {p0}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AuthenticatedResponseHandlerAdapter;->getParseError()Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    move-result-object v0

    return-object v0
.end method

.method public getCredentialErrorText()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AuthenticatedResponseHandlerAdapter;->mAuthResponseHandler:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AuthenticatedResponseHandler;

    invoke-virtual {v0}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AuthenticatedResponseHandler;->getCredentialErrorText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCredentialStatus()Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/CredentialStatus;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AuthenticatedResponseHandlerAdapter;->mAuthResponseHandler:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AuthenticatedResponseHandler;

    invoke-virtual {v0}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AuthenticatedResponseHandler;->getCredentialStatus()Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/CredentialStatus;

    move-result-object v0

    return-object v0
.end method

.method public getCredentialWarningText()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AuthenticatedResponseHandlerAdapter;->mAuthResponseHandler:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AuthenticatedResponseHandler;

    invoke-virtual {v0}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AuthenticatedResponseHandler;->getCredentialWarningText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParseError()Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AuthenticatedResponseHandlerAdapter;->mInnerResponseParser:Lcom/amazon/whispersync/AmazonDevice/Common/IWebResponseParser;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/whispersync/AmazonDevice/Common/IWebResponseParser;->getParseError()Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    move-result-object v0

    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;->ParseErrorNoError:Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    if-eq v0, v1, :cond_0

    .line 67
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AuthenticatedResponseHandlerAdapter;->mInnerResponseParser:Lcom/amazon/whispersync/AmazonDevice/Common/IWebResponseParser;

    invoke-interface {v0}, Lcom/amazon/whispersync/AmazonDevice/Common/IWebResponseParser;->getParseError()Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    move-result-object v0

    return-object v0

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AuthenticatedResponseHandlerAdapter;->mAuthResponseHandler:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AuthenticatedResponseHandler;

    invoke-virtual {v0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;->getParseError()Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    move-result-object v0

    return-object v0
.end method

.method public getParsedResponse()Ljava/lang/Object;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AuthenticatedResponseHandlerAdapter;->mInnerResponseParser:Lcom/amazon/whispersync/AmazonDevice/Common/IWebResponseParser;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 80
    :cond_0
    invoke-interface {v0}, Lcom/amazon/whispersync/AmazonDevice/Common/IWebResponseParser;->getParsedResponse()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public parseBodyChunk([BI)Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;
    .locals 3

    .line 32
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AuthenticatedResponseHandlerAdapter;->mInnerResponseParser:Lcom/amazon/whispersync/AmazonDevice/Common/IWebResponseParser;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/whispersync/AmazonDevice/Common/IWebResponseParser;->shouldParseBody()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AuthenticatedResponseHandlerAdapter;->mInnerResponseParser:Lcom/amazon/whispersync/AmazonDevice/Common/IWebResponseParser;

    invoke-interface {v0, p1, p2}, Lcom/amazon/whispersync/AmazonDevice/Common/IWebResponseParser;->parseBodyChunk([BI)Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AuthenticatedResponseHandlerAdapter;->mAuthResponseHandler:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AuthenticatedResponseHandler;

    invoke-virtual {v0}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AuthenticatedResponseHandler;->shouldParseBody()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AuthenticatedResponseHandlerAdapter;->mAuthResponseHandler:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AuthenticatedResponseHandler;

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;->parseBodyChunk([BJ)Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    .line 41
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AuthenticatedResponseHandlerAdapter;->getParseError()Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    move-result-object p1

    return-object p1
.end method

.method public shouldParseBody()Z
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AuthenticatedResponseHandlerAdapter;->mInnerResponseParser:Lcom/amazon/whispersync/AmazonDevice/Common/IWebResponseParser;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/whispersync/AmazonDevice/Common/IWebResponseParser;->shouldParseBody()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AuthenticatedResponseHandlerAdapter;->mAuthResponseHandler:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AuthenticatedResponseHandler;

    invoke-virtual {v0}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AuthenticatedResponseHandler;->shouldParseBody()Z

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
