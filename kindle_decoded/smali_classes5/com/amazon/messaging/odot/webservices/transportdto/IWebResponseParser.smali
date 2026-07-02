.class public interface abstract Lcom/amazon/messaging/odot/webservices/transportdto/IWebResponseParser;
.super Ljava/lang/Object;
.source "IWebResponseParser.java"


# virtual methods
.method public abstract beginParse(Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseHeaders;)V
.end method

.method public abstract endParse()Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;
.end method

.method public abstract getParseError()Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;
.end method

.method public abstract getParsedResponse()Ljava/lang/Object;
.end method

.method public abstract parseBodyChunk([BI)Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;
.end method

.method public abstract shouldParseBody()Z
.end method
