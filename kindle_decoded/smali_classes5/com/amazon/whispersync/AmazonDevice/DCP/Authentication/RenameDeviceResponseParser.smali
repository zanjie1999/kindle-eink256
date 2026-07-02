.class public Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceResponseParser;
.super Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;
.source "RenameDeviceResponseParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser<",
        "Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final mParser:Lcom/amazon/whispersync/AmazonDevice/Common/XMLParser;

.field private mResponse:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceResponse;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    const-class v0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceResponseParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;-><init>(Ljava/lang/String;)V

    .line 23
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Common/XMLParser;

    invoke-direct {v0}, Lcom/amazon/whispersync/AmazonDevice/Common/XMLParser;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceResponseParser;->mParser:Lcom/amazon/whispersync/AmazonDevice/Common/XMLParser;

    return-void
.end method

.method private parseSuccessfulResponse(Lorg/w3c/dom/Document;)Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceResponse;
    .locals 4

    .line 74
    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 78
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "response"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_3

    :cond_0
    const-string v1, "error_code"

    .line 83
    invoke-static {p1, v1}, Lcom/amazon/whispersync/AmazonDevice/Common/XMLParserHelpers;->getFirstElementWithTag(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    const-string/jumbo v2, "text"

    .line 84
    invoke-static {p1, v2}, Lcom/amazon/whispersync/AmazonDevice/Common/XMLParserHelpers;->getFirstElementWithTag(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    .line 86
    invoke-static {v1}, Lcom/amazon/whispersync/AmazonDevice/Common/XMLParserHelpers;->getTextContent(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v1

    .line 87
    invoke-static {p1}, Lcom/amazon/whispersync/AmazonDevice/Common/XMLParserHelpers;->getTextContent(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object p1

    if-nez v1, :cond_1

    return-object v0

    .line 95
    :cond_1
    invoke-static {v1, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/StringConversionHelpers;->convertToInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 96
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 102
    :cond_2
    sget-object v2, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceErrorType;->RenameDeviceErrorTypeUnrecognized:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceErrorType;

    .line 103
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_4

    const/4 v3, 0x4

    if-eq v1, v3, :cond_3

    goto :goto_0

    .line 109
    :cond_3
    sget-object v2, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceErrorType;->RenameDeviceErrorTypeAlreadyUsed:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceErrorType;

    goto :goto_0

    .line 106
    :cond_4
    sget-object v2, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceErrorType;->RenameDeviceErrorTypeInvalidInput:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceErrorType;

    .line 115
    :goto_0
    new-instance v1, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceError;

    invoke-direct {v1, v2, p1}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceError;-><init>(Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceErrorType;Ljava/lang/String;)V

    .line 116
    new-instance p1, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceResponse;

    invoke-direct {p1, v0, v1}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceResponse;-><init>(Ljava/lang/String;Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceError;)V

    goto :goto_2

    .line 98
    :cond_5
    :goto_1
    new-instance v1, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceResponse;

    invoke-direct {v1, p1, v0}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceResponse;-><init>(Ljava/lang/String;Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceError;)V

    move-object p1, v1

    :goto_2
    return-object p1

    :cond_6
    :goto_3
    return-object v0
.end method

.method private walk(Lorg/w3c/dom/Document;)Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceResponse;
    .locals 2

    .line 61
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceResponseParser;->parseSuccessfulResponse(Lorg/w3c/dom/Document;)Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceResponse;

    move-result-object p1

    if-nez p1, :cond_0

    .line 64
    new-instance p1, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceError;

    sget-object v0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceErrorType;->RenameDeviceErrorTypeUnrecognized:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceErrorType;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceError;-><init>(Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceErrorType;Ljava/lang/String;)V

    .line 66
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceResponse;

    invoke-direct {v0, v1, p1}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceResponse;-><init>(Ljava/lang/String;Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceError;)V

    move-object p1, v0

    :cond_0
    return-object p1
.end method


# virtual methods
.method public getParsedResponse()Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceResponse;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceResponseParser;->mResponse:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceResponse;

    return-object v0
.end method

.method public bridge synthetic getParsedResponse()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceResponseParser;->getParsedResponse()Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceResponse;

    move-result-object v0

    return-object v0
.end method

.method protected internalEndParse()V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceResponseParser;->mParser:Lcom/amazon/whispersync/AmazonDevice/Common/XMLParser;

    invoke-virtual {v0}, Lcom/amazon/whispersync/AmazonDevice/Common/XMLParser;->parseEndOfDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    if-nez v0, :cond_0

    .line 47
    sget-object v0, Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;->ParseErrorMalformedBody:Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;->setParseError(Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;)Z

    return-void

    .line 52
    :cond_0
    invoke-direct {p0, v0}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceResponseParser;->walk(Lorg/w3c/dom/Document;)Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceResponse;

    move-result-object v0

    .line 53
    iput-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceResponseParser;->mResponse:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceResponse;

    return-void
.end method

.method protected internalParseBodyChunk([BJ)V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceResponseParser;->mParser:Lcom/amazon/whispersync/AmazonDevice/Common/XMLParser;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/whispersync/AmazonDevice/Common/XMLParser;->parseChunk([BJ)Z

    move-result p1

    if-nez p1, :cond_0

    .line 37
    sget-object p1, Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;->ParseErrorMalformedBody:Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;->setParseError(Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;)Z

    :cond_0
    return-void
.end method
