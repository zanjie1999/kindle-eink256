.class public Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/WebResponseParserAdapter;
.super Ljava/lang/Object;
.source "WebResponseParserAdapter.java"

# interfaces
.implements Lcom/amazon/whispersync/AmazonDevice/Common/IWebResponseParser;


# instance fields
.field protected mParser:Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/WebResponseParserAdapter;->mParser:Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;

    return-void
.end method


# virtual methods
.method public beginParse(Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseHeaders;)V
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/WebResponseParserAdapter;->mParser:Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;

    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;->beginParse(Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseHeaders;)V

    :cond_0
    return-void
.end method

.method public endParse()Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/WebResponseParserAdapter;->mParser:Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {v0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;->endParse()Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getParseError()Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/WebResponseParserAdapter;->mParser:Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;->getParseError()Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getParsedResponse()Ljava/lang/Object;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/WebResponseParserAdapter;->mParser:Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;->getParsedResponse()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public parseBodyChunk([BI)Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;
    .locals 3

    .line 30
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/WebResponseParserAdapter;->mParser:Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;

    if-eqz v0, :cond_0

    int-to-long v1, p2

    .line 32
    invoke-virtual {v0, p1, v1, v2}, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;->parseBodyChunk([BJ)Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public shouldParseBody()Z
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/WebResponseParserAdapter;->mParser:Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {v0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;->shouldParseBody()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
