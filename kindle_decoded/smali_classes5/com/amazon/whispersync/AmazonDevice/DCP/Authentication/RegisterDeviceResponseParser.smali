.class public Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceResponseParser;
.super Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;
.source "RegisterDeviceResponseParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser<",
        "Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final mParser:Lcom/amazon/whispersync/AmazonDevice/Common/XMLParser;

.field private mResponse:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceResponse;

.field private mResponseLength:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 28
    const-class v0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceResponseParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;-><init>(Ljava/lang/String;)V

    .line 30
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Common/XMLParser;

    invoke-direct {v0}, Lcom/amazon/whispersync/AmazonDevice/Common/XMLParser;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceResponseParser;->mParser:Lcom/amazon/whispersync/AmazonDevice/Common/XMLParser;

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceResponseParser;->mResponse:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceResponse;

    const-wide/16 v0, 0x0

    .line 32
    iput-wide v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceResponseParser;->mResponseLength:J

    return-void
.end method

.method private errorTypeFromFIRSError(Lcom/amazon/whispersync/AmazonDevice/Common/FIRSError;)Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceErrorType;
    .locals 1

    .line 182
    sget-object v0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceResponseParser$1;->$SwitchMap$com$AmazonDevice$Common$FIRSErrorType:[I

    invoke-virtual {p1}, Lcom/amazon/whispersync/AmazonDevice/Common/FIRSError;->getErrorType()Lcom/amazon/whispersync/AmazonDevice/Common/FIRSErrorType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 191
    sget-object p1, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceErrorType;->RegisterDeviceErrorTypeUnrecognized:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceErrorType;

    return-object p1

    .line 189
    :cond_0
    sget-object p1, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceErrorType;->RegisterDeviceErrorTypeDuplicateDeviceName:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceErrorType;

    return-object p1

    .line 187
    :cond_1
    sget-object p1, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceErrorType;->RegisterDeviceErrorTypeDeviceAlreadyRegistered:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceErrorType;

    return-object p1

    .line 185
    :cond_2
    sget-object p1, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceErrorType;->RegisterDeviceErrorTypeCustomerNotFound:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceErrorType;

    return-object p1
.end method

.method private errorTypeFromKindleWebserviceError(Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceError;)Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceErrorType;
    .locals 1

    .line 197
    sget-object v0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceResponseParser$1;->$SwitchMap$com$AmazonDevice$Common$KindleWebserviceErrorType:[I

    invoke-virtual {p1}, Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceError;->getErrorType()Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 204
    sget-object p1, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceErrorType;->RegisterDeviceErrorTypeUnrecognized:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceErrorType;

    return-object p1

    .line 202
    :cond_0
    sget-object p1, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceErrorType;->RegisterDeviceErrorTypeDuplicateDeviceName:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceErrorType;

    return-object p1

    .line 200
    :cond_1
    sget-object p1, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceErrorType;->RegisterDeviceErrorTypeDeviceAlreadyRegistered:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceErrorType;

    return-object p1
.end method

.method private errorTypeToString(Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceErrorType;)Ljava/lang/String;
    .locals 1

    .line 210
    sget-object v0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceResponseParser$1;->$SwitchMap$com$AmazonDevice$DCP$Authentication$RegisterDeviceErrorType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const-string p1, "Unrecognized"

    return-object p1

    :cond_0
    const-string p1, "Duplicate Device Name"

    return-object p1

    :cond_1
    const-string p1, "Device Already Registered"

    return-object p1

    :cond_2
    const-string p1, "Customer Not Found"

    return-object p1
.end method

.method private parseSuccessfulResponse(Lorg/w3c/dom/Document;)Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceResponse;
    .locals 17

    .line 84
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 85
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "response"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v2, "adp_token"

    .line 90
    invoke-static {v0, v2}, Lcom/amazon/whispersync/AmazonDevice/Common/XMLParserHelpers;->getFirstElementWithTag(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    const-string v3, "device_private_key"

    .line 91
    invoke-static {v0, v3}, Lcom/amazon/whispersync/AmazonDevice/Common/XMLParserHelpers;->getFirstElementWithTag(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    const-string v4, "name"

    .line 92
    invoke-static {v0, v4}, Lcom/amazon/whispersync/AmazonDevice/Common/XMLParserHelpers;->getFirstElementWithTag(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    const-string/jumbo v5, "user_device_name"

    .line 93
    invoke-static {v0, v5}, Lcom/amazon/whispersync/AmazonDevice/Common/XMLParserHelpers;->getFirstElementWithTag(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    const-string v6, "alias"

    .line 94
    invoke-static {v0, v6}, Lcom/amazon/whispersync/AmazonDevice/Common/XMLParserHelpers;->getFirstElementWithTag(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    const-string v7, "cookies"

    .line 95
    invoke-static {v0, v7}, Lcom/amazon/whispersync/AmazonDevice/Common/XMLParserHelpers;->getFirstElementWithTag(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v7

    const-string/jumbo v8, "store_authentication_cookie"

    .line 96
    invoke-static {v0, v8}, Lcom/amazon/whispersync/AmazonDevice/Common/XMLParserHelpers;->getFirstElementWithTag(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v8

    const-string/jumbo v9, "user_directed_id"

    .line 98
    invoke-static {v0, v9}, Lcom/amazon/whispersync/AmazonDevice/Common/XMLParserHelpers;->getFirstElementWithTag(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 100
    invoke-static {v2}, Lcom/amazon/whispersync/AmazonDevice/Common/XMLParserHelpers;->getTextContent(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v10

    .line 101
    invoke-static {v3}, Lcom/amazon/whispersync/AmazonDevice/Common/XMLParserHelpers;->getTextContent(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v12

    .line 103
    invoke-static {v4}, Lcom/amazon/whispersync/AmazonDevice/Common/XMLParserHelpers;->getTextContent(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v14

    .line 104
    invoke-static {v5}, Lcom/amazon/whispersync/AmazonDevice/Common/XMLParserHelpers;->getTextContent(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v11

    .line 105
    invoke-static {v6}, Lcom/amazon/whispersync/AmazonDevice/Common/XMLParserHelpers;->getTextContent(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v15

    .line 106
    invoke-static {v0}, Lcom/amazon/whispersync/AmazonDevice/Common/XMLParserHelpers;->getTextContent(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v0

    if-nez v12, :cond_1

    if-nez v14, :cond_1

    if-nez v11, :cond_1

    if-nez v10, :cond_1

    return-object v1

    .line 114
    :cond_1
    new-instance v1, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceResponse;

    const/16 v16, 0x0

    const/4 v13, 0x0

    move-object v9, v1

    invoke-direct/range {v9 .. v16}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceError;)V

    .line 122
    invoke-static {v8}, Lcom/amazon/whispersync/AmazonDevice/Common/XMLParserHelpers;->getTextContent(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceResponse;->setStoreAuthenticationCookie(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v1, v0}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceResponse;->setDirectedId(Ljava/lang/String;)V

    if-eqz v7, :cond_3

    .line 127
    invoke-interface {v7}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    const/4 v2, 0x0

    .line 129
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 131
    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 132
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    goto :goto_1

    .line 137
    :cond_2
    check-cast v3, Lorg/w3c/dom/Element;

    const-string/jumbo v4, "url"

    .line 139
    invoke-static {v3, v4}, Lcom/amazon/whispersync/AmazonDevice/Common/XMLParserHelpers;->getFirstElementWithTag(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    const-string/jumbo v5, "value"

    .line 140
    invoke-static {v3, v5}, Lcom/amazon/whispersync/AmazonDevice/Common/XMLParserHelpers;->getFirstElementWithTag(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 142
    invoke-static {v4}, Lcom/amazon/whispersync/AmazonDevice/Common/XMLParserHelpers;->getTextContent(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v4

    .line 143
    invoke-static {v3}, Lcom/amazon/whispersync/AmazonDevice/Common/XMLParserHelpers;->getTextContent(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v3

    .line 145
    new-instance v5, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/Cookie;

    invoke-direct {v5}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/Cookie;-><init>()V

    .line 146
    invoke-virtual {v5, v4}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/Cookie;->setUrl(Ljava/lang/String;)Z

    .line 147
    invoke-virtual {v5, v3}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/Cookie;->setValue(Ljava/lang/String;)Z

    .line 149
    invoke-virtual {v1, v5}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceResponse;->addCookie(Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/Cookie;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-object v1
.end method

.method private walk(Lorg/w3c/dom/Document;)Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceResponse;
    .locals 3

    .line 70
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceResponseParser;->parseSuccessfulResponse(Lorg/w3c/dom/Document;)Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceResponse;

    move-result-object v0

    if-nez v0, :cond_0

    .line 74
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceResponseParser;->parseErrorResponse(Lorg/w3c/dom/Document;)Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceResponse;

    move-result-object v0

    .line 77
    :cond_0
    iget-wide v1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceResponseParser;->mResponseLength:J

    long-to-int p1, v1

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceResponse;->setResponseLength(I)V

    return-object v0
.end method


# virtual methods
.method public getParsedResponse()Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceResponse;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceResponseParser;->mResponse:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceResponse;

    return-object v0
.end method

.method public bridge synthetic getParsedResponse()Ljava/lang/Object;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceResponseParser;->getParsedResponse()Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceResponse;

    move-result-object v0

    return-object v0
.end method

.method protected internalEndParse()V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceResponseParser;->mParser:Lcom/amazon/whispersync/AmazonDevice/Common/XMLParser;

    invoke-virtual {v0}, Lcom/amazon/whispersync/AmazonDevice/Common/XMLParser;->parseEndOfDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    if-nez v0, :cond_0

    .line 57
    sget-object v0, Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;->ParseErrorMalformedBody:Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;->setParseError(Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;)Z

    return-void

    .line 62
    :cond_0
    invoke-direct {p0, v0}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceResponseParser;->walk(Lorg/w3c/dom/Document;)Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceResponseParser;->mResponse:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceResponse;

    return-void
.end method

.method protected internalParseBodyChunk([BJ)V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceResponseParser;->mParser:Lcom/amazon/whispersync/AmazonDevice/Common/XMLParser;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/whispersync/AmazonDevice/Common/XMLParser;->parseChunk([BJ)Z

    move-result p1

    if-nez p1, :cond_0

    .line 46
    sget-object p1, Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;->ParseErrorMalformedBody:Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;->setParseError(Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;)Z

    .line 48
    :cond_0
    iget-wide v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceResponseParser;->mResponseLength:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceResponseParser;->mResponseLength:J

    return-void
.end method

.method parseErrorResponse(Lorg/w3c/dom/Document;)Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceResponse;
    .locals 10

    .line 158
    sget-object v0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceErrorType;->RegisterDeviceErrorTypeUnrecognized:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceErrorType;

    .line 162
    invoke-static {p1}, Lcom/amazon/whispersync/AmazonDevice/Common/FIRSErrorParser;->parseError(Lorg/w3c/dom/Document;)Lcom/amazon/whispersync/AmazonDevice/Common/FIRSError;

    move-result-object v1

    .line 163
    invoke-static {p1}, Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorParser;->parseError(Lorg/w3c/dom/Document;)Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceError;

    move-result-object p1

    if-eqz v1, :cond_0

    .line 167
    invoke-direct {p0, v1}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceResponseParser;->errorTypeFromFIRSError(Lcom/amazon/whispersync/AmazonDevice/Common/FIRSError;)Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceErrorType;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 171
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceResponseParser;->errorTypeFromKindleWebserviceError(Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceError;)Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceErrorType;

    move-result-object v0

    :cond_1
    :goto_0
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 174
    invoke-direct {p0, v0}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceResponseParser;->errorTypeToString(Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceErrorType;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v1

    const-string v1, "RegisterDeviceResponseParser: response received a %s error."

    invoke-static {v1, p1}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    new-instance v9, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceError;

    invoke-direct {v9, v0}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceError;-><init>(Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceErrorType;)V

    .line 177
    new-instance p1, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceResponse;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v9}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceError;)V

    return-object p1
.end method
