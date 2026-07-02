.class public abstract Lcom/amazon/whispersync/AmazonDevice/Common/StandardWebRequestEngineCallback;
.super Lcom/amazon/whispersync/AmazonDevice/Common/WebRequestEngineCallback;
.source "StandardWebRequestEngineCallback.java"


# instance fields
.field private mResponseParser:Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequestEngineCallback;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/Common/StandardWebRequestEngineCallback;->mResponseParser:Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;

    return-void
.end method


# virtual methods
.method public abstract authenticationFailed()V
.end method

.method public bodyChunkReceived([BI)V
    .locals 3

    .line 28
    invoke-virtual {p0}, Lcom/amazon/whispersync/AmazonDevice/Common/StandardWebRequestEngineCallback;->shouldPassBodyChunks()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "bodyChunkReceived: could not parse body chunk since shouldPassBodyChunks is false."

    .line 30
    invoke-static {p2, p1}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Common/StandardWebRequestEngineCallback;->mResponseParser:Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;

    invoke-virtual {v0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;->getParseError()Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    move-result-object v0

    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;->ParseErrorNoError:Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    if-ne v0, v1, :cond_1

    .line 36
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Common/StandardWebRequestEngineCallback;->mResponseParser:Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;->parseBodyChunk([BJ)Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    :cond_1
    return-void
.end method

.method protected getResponseParser()Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Common/StandardWebRequestEngineCallback;->mResponseParser:Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;

    return-object v0
.end method

.method public headersReceived(Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseHeaders;)V
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Common/StandardWebRequestEngineCallback;->mResponseParser:Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;->beginParse(Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseHeaders;)V

    return-void
.end method

.method protected abstract internalRequestComplete()V
.end method

.method public abstract networkError()V
.end method

.method protected abstract parseError(Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;)V
.end method

.method public requestComplete()V
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Common/StandardWebRequestEngineCallback;->mResponseParser:Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;

    invoke-virtual {v0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;->getParseError()Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    move-result-object v0

    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;->ParseErrorNoError:Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    if-ne v0, v1, :cond_0

    .line 45
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Common/StandardWebRequestEngineCallback;->mResponseParser:Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;

    invoke-virtual {v0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;->endParse()Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Common/StandardWebRequestEngineCallback;->mResponseParser:Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;

    invoke-virtual {v0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;->getParseError()Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    move-result-object v0

    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;->ParseErrorNoError:Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    if-ne v0, v1, :cond_1

    .line 50
    invoke-virtual {p0}, Lcom/amazon/whispersync/AmazonDevice/Common/StandardWebRequestEngineCallback;->internalRequestComplete()V

    goto :goto_0

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Common/StandardWebRequestEngineCallback;->mResponseParser:Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;

    invoke-virtual {v0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;->getParseError()Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/StandardWebRequestEngineCallback;->parseError(Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;)V

    :goto_0
    return-void
.end method

.method protected setResponseParser(Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/Common/StandardWebRequestEngineCallback;->mResponseParser:Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;

    return-void
.end method

.method public shouldPassBodyChunks()Z
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Common/StandardWebRequestEngineCallback;->mResponseParser:Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;

    invoke-virtual {v0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;->shouldParseBody()Z

    move-result v0

    return v0
.end method
