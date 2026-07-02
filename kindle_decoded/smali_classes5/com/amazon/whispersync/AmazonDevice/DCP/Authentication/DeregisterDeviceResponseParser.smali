.class public Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/DeregisterDeviceResponseParser;
.super Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;
.source "DeregisterDeviceResponseParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser<",
        "Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/DeregisterDeviceResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final mParser:Lcom/amazon/whispersync/AmazonDevice/Common/XMLParser;

.field private mResponse:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/DeregisterDeviceResponse;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    const-class v0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/DeregisterDeviceResponseParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;-><init>(Ljava/lang/String;)V

    .line 22
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Common/XMLParser;

    invoke-direct {v0}, Lcom/amazon/whispersync/AmazonDevice/Common/XMLParser;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/DeregisterDeviceResponseParser;->mParser:Lcom/amazon/whispersync/AmazonDevice/Common/XMLParser;

    return-void
.end method


# virtual methods
.method public getParsedResponse()Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/DeregisterDeviceResponse;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/DeregisterDeviceResponseParser;->mResponse:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/DeregisterDeviceResponse;

    return-object v0
.end method

.method public bridge synthetic getParsedResponse()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/DeregisterDeviceResponseParser;->getParsedResponse()Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/DeregisterDeviceResponse;

    move-result-object v0

    return-object v0
.end method

.method protected internalEndParse()V
    .locals 3

    .line 43
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/DeregisterDeviceResponseParser;->mParser:Lcom/amazon/whispersync/AmazonDevice/Common/XMLParser;

    invoke-virtual {v0}, Lcom/amazon/whispersync/AmazonDevice/Common/XMLParser;->parseEndOfDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    if-nez v0, :cond_0

    .line 46
    sget-object v0, Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;->ParseErrorMalformedBody:Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;->setParseError(Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;)Z

    return-void

    .line 50
    :cond_0
    new-instance v1, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/DeregisterDeviceResponse;

    invoke-direct {v1}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/DeregisterDeviceResponse;-><init>()V

    .line 51
    invoke-static {v0}, Lcom/amazon/whispersync/AmazonDevice/Common/FIRSErrorParser;->parseError(Lorg/w3c/dom/Document;)Lcom/amazon/whispersync/AmazonDevice/Common/FIRSError;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 55
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/DeregisterDeviceError;

    sget-object v2, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/DeregisterDeviceErrorType;->DeregisterDeviceErrorTypeFailed:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/DeregisterDeviceErrorType;

    invoke-direct {v0, v2}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/DeregisterDeviceError;-><init>(Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/DeregisterDeviceErrorType;)V

    .line 57
    invoke-virtual {v1, v0}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/DeregisterDeviceResponse;->setError(Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/DeregisterDeviceError;)V

    .line 60
    :cond_1
    iput-object v1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/DeregisterDeviceResponseParser;->mResponse:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/DeregisterDeviceResponse;

    return-void
.end method

.method protected internalParseBodyChunk([BJ)V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/DeregisterDeviceResponseParser;->mParser:Lcom/amazon/whispersync/AmazonDevice/Common/XMLParser;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/whispersync/AmazonDevice/Common/XMLParser;->parseChunk([BJ)Z

    move-result p1

    if-nez p1, :cond_0

    .line 36
    sget-object p1, Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;->ParseErrorMalformedBody:Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;->setParseError(Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;)Z

    :cond_0
    return-void
.end method
