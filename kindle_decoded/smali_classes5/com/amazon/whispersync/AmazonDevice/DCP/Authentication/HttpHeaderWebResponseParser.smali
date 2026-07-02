.class public Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/HttpHeaderWebResponseParser;
.super Ljava/lang/Object;
.source "HttpHeaderWebResponseParser.java"

# interfaces
.implements Lcom/amazon/whispersync/AmazonDevice/Common/IWebResponseParser;


# instance fields
.field private mParseError:Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    sget-object v0, Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;->ParseErrorNoError:Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    iput-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/HttpHeaderWebResponseParser;->mParseError:Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    return-void
.end method


# virtual methods
.method public beginParse(Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseHeaders;)V
    .locals 4

    .line 17
    invoke-virtual {p1}, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseHeaders;->getStatusCode()J

    move-result-wide v0

    const-wide/16 v2, 0xc8

    cmp-long p1, v0, v2

    if-ltz p1, :cond_0

    const-wide/16 v2, 0x12c

    cmp-long p1, v0, v2

    if-ltz p1, :cond_1

    .line 21
    :cond_0
    sget-object p1, Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;->ParseErrorHttpError:Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/HttpHeaderWebResponseParser;->mParseError:Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    :cond_1
    return-void
.end method

.method public endParse()Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/HttpHeaderWebResponseParser;->mParseError:Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    return-object v0
.end method

.method public getParseError()Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/HttpHeaderWebResponseParser;->mParseError:Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    return-object v0
.end method

.method public getParsedResponse()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public parseBodyChunk([BI)Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;
    .locals 0

    .line 46
    iget-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/HttpHeaderWebResponseParser;->mParseError:Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    return-object p1
.end method

.method public shouldParseBody()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
