.class public interface abstract Lcom/amazon/whispersync/AmazonDevice/Common/IWebResponseParser;
.super Ljava/lang/Object;
.source "IWebResponseParser.java"


# virtual methods
.method public abstract beginParse(Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseHeaders;)V
.end method

.method public abstract endParse()Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;
.end method

.method public abstract getParseError()Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;
.end method

.method public abstract getParsedResponse()Ljava/lang/Object;
.end method

.method public abstract parseBodyChunk([BI)Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;
.end method

.method public abstract shouldParseBody()Z
.end method
