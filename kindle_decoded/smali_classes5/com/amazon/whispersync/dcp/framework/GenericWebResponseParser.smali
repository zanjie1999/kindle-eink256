.class public Lcom/amazon/whispersync/dcp/framework/GenericWebResponseParser;
.super Ljava/lang/Object;
.source "GenericWebResponseParser.java"

# interfaces
.implements Lcom/amazon/whispersync/AmazonDevice/Common/IWebResponseParser;


# instance fields
.field private mParseError:Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

.field private mResponse:Ljava/io/ByteArrayOutputStream;

.field private mResponseHeaders:Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseHeaders;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/GenericWebResponseParser;->mResponse:Ljava/io/ByteArrayOutputStream;

    .line 20
    sget-object v0, Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;->ParseErrorNoError:Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/GenericWebResponseParser;->mParseError:Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    return-void
.end method


# virtual methods
.method public beginParse(Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseHeaders;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/GenericWebResponseParser;->mResponseHeaders:Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseHeaders;

    return-void
.end method

.method public endParse()Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/GenericWebResponseParser;->mParseError:Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    return-object v0
.end method

.method public getParseError()Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/GenericWebResponseParser;->mParseError:Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    return-object v0
.end method

.method public bridge synthetic getParsedResponse()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/framework/GenericWebResponseParser;->getParsedResponse()[B

    move-result-object v0

    return-object v0
.end method

.method public getParsedResponse()[B
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/GenericWebResponseParser;->mResponse:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public getWebResponseHeaders()Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseHeaders;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/GenericWebResponseParser;->mResponseHeaders:Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseHeaders;

    return-object v0
.end method

.method public parseBodyChunk([BI)Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/GenericWebResponseParser;->mResponse:Ljava/io/ByteArrayOutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 33
    iget-object p1, p0, Lcom/amazon/whispersync/dcp/framework/GenericWebResponseParser;->mParseError:Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    return-object p1
.end method

.method public shouldParseBody()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
