.class public Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AuthenticatedResponseHandler;
.super Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;
.source "AuthenticatedResponseHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private mAuthSucceeded:Z

.field private mInnerParseError:Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

.field private final mNextParser:Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mOuterParseError:Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

.field private final mParser:Lcom/amazon/whispersync/AmazonDevice/Common/XMLParser;

.field private mShouldTryParsing:Z


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser<",
            "TT;>;)V"
        }
    .end annotation

    .line 29
    const-class v0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AuthenticatedResponseHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;-><init>(Ljava/lang/String;)V

    .line 31
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/Common/XMLParser;

    invoke-direct {v0}, Lcom/amazon/whispersync/AmazonDevice/Common/XMLParser;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AuthenticatedResponseHandler;->mParser:Lcom/amazon/whispersync/AmazonDevice/Common/XMLParser;

    .line 32
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AuthenticatedResponseHandler;->mNextParser:Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;

    .line 34
    sget-object p1, Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;->ParseErrorNoError:Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AuthenticatedResponseHandler;->mInnerParseError:Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    .line 35
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AuthenticatedResponseHandler;->mOuterParseError:Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    const/4 p1, 0x1

    .line 36
    iput-boolean p1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AuthenticatedResponseHandler;->mAuthSucceeded:Z

    return-void
.end method

.method private didAuthSucceed()Z
    .locals 4

    .line 172
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AuthenticatedResponseHandler;->mOuterParseError:Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;->ParseErrorNoError:Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    return v2

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AuthenticatedResponseHandler;->mParser:Lcom/amazon/whispersync/AmazonDevice/Common/XMLParser;

    invoke-virtual {v0}, Lcom/amazon/whispersync/AmazonDevice/Common/XMLParser;->parseEndOfDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    if-nez v0, :cond_1

    return v2

    .line 187
    :cond_1
    invoke-static {v0}, Lcom/amazon/whispersync/AmazonDevice/Common/FIRSErrorParser;->parseError(Lorg/w3c/dom/Document;)Lcom/amazon/whispersync/AmazonDevice/Common/FIRSError;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 188
    invoke-virtual {v1}, Lcom/amazon/whispersync/AmazonDevice/Common/FIRSError;->getErrorType()Lcom/amazon/whispersync/AmazonDevice/Common/FIRSErrorType;

    move-result-object v1

    sget-object v3, Lcom/amazon/whispersync/AmazonDevice/Common/FIRSErrorType;->FIRSErrorTypeInternalError:Lcom/amazon/whispersync/AmazonDevice/Common/FIRSErrorType;

    if-eq v1, v3, :cond_3

    :cond_2
    invoke-static {v0}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AuthenticatedResponseHandler;->isDMSError(Lorg/w3c/dom/Document;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "AuthenticatedResponseHandler: endParse: Server returned an authentication error. You can ignore any malformed response errors from the inner parser."

    .line 191
    invoke-static {v2, v1}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_4
    return v2
.end method

.method private static isDMSError(Lorg/w3c/dom/Document;)Z
    .locals 3

    .line 149
    invoke-interface {p0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 150
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Errors"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "Error"

    .line 155
    invoke-static {p0, v1}, Lcom/amazon/whispersync/AmazonDevice/Common/XMLParserHelpers;->getFirstElementWithTag(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    const-string v1, "Code"

    .line 161
    invoke-static {p0, v1}, Lcom/amazon/whispersync/AmazonDevice/Common/XMLParserHelpers;->getFirstElementWithTag(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p0

    if-nez p0, :cond_2

    return v0

    .line 167
    :cond_2
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DEVICE_MASTER_SERVICE_ERROR"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_3
    :goto_0
    return v0
.end method


# virtual methods
.method public authenticationSucceeded()Z
    .locals 1

    .line 47
    iget-boolean v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AuthenticatedResponseHandler;->mAuthSucceeded:Z

    return v0
.end method

.method public getCredentialErrorText()Ljava/lang/String;
    .locals 1

    .line 62
    invoke-virtual {p0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;->getWebResponseHeaders()Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseHeaders;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/CredentialStatusChecker;->getErrorText(Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseHeaders;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCredentialStatus()Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/CredentialStatus;
    .locals 1

    .line 52
    invoke-virtual {p0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;->getWebResponseHeaders()Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseHeaders;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/CredentialStatusChecker;->checkResponse(Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseHeaders;)Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/CredentialStatus;

    move-result-object v0

    return-object v0
.end method

.method public getCredentialWarningText()Ljava/lang/String;
    .locals 1

    .line 57
    invoke-virtual {p0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;->getWebResponseHeaders()Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseHeaders;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/CredentialStatusChecker;->getWarningText(Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseHeaders;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParsedResponse()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AuthenticatedResponseHandler;->mNextParser:Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 73
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;->getParsedResponse()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected internalBeginParse(Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseHeaders;)Z
    .locals 7

    .line 79
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AuthenticatedResponseHandler;->mNextParser:Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;->beginParse(Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseHeaders;)V

    .line 91
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseHeaders;->getStatusCode()J

    move-result-wide v0

    const-string v2, "content-type"

    .line 92
    invoke-virtual {p1, v2}, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseHeaders;->getHeaderByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-wide/16 v2, 0x1f4

    const/4 v4, 0x0

    const/4 v5, 0x1

    cmp-long v6, v0, v2

    if-eqz v6, :cond_2

    const-wide/16 v2, 0xc8

    cmp-long v6, v0, v2

    if-nez v6, :cond_1

    if-eqz p1, :cond_2

    const-string/jumbo v2, "text/xml"

    .line 96
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AuthenticatedResponseHandler;->mShouldTryParsing:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 101
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v4

    aput-object p1, v2, v5

    const-string p1, "AuthenticatedResponseHandler: beginParse: Response could be an authentication error. Will try to parse as an authentication error. Status Code: %d Content-Type: %s"

    invoke-static {p1, v2}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    return v5
.end method

.method protected internalEndParse()V
    .locals 2

    .line 133
    iget-boolean v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AuthenticatedResponseHandler;->mShouldTryParsing:Z

    if-eqz v0, :cond_0

    .line 135
    invoke-direct {p0}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AuthenticatedResponseHandler;->didAuthSucceed()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AuthenticatedResponseHandler;->mAuthSucceeded:Z

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AuthenticatedResponseHandler;->mInnerParseError:Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;->ParseErrorNoError:Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AuthenticatedResponseHandler;->mNextParser:Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;->shouldParseBody()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AuthenticatedResponseHandler;->mNextParser:Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;

    invoke-virtual {v0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;->endParse()Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AuthenticatedResponseHandler;->mInnerParseError:Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    .line 144
    :cond_1
    iget-boolean v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AuthenticatedResponseHandler;->mAuthSucceeded:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AuthenticatedResponseHandler;->mInnerParseError:Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AuthenticatedResponseHandler;->mOuterParseError:Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;->setParseError(Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;)Z

    return-void
.end method

.method protected internalParseBodyChunk([BJ)V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AuthenticatedResponseHandler;->mOuterParseError:Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;->ParseErrorNoError:Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AuthenticatedResponseHandler;->mShouldTryParsing:Z

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AuthenticatedResponseHandler;->mParser:Lcom/amazon/whispersync/AmazonDevice/Common/XMLParser;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/whispersync/AmazonDevice/Common/XMLParser;->parseChunk([BJ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    sget-object v0, Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;->ParseErrorMalformedBody:Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    iput-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AuthenticatedResponseHandler;->mOuterParseError:Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AuthenticatedResponseHandler;->mInnerParseError:Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;->ParseErrorNoError:Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AuthenticatedResponseHandler;->mNextParser:Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;->shouldParseBody()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AuthenticatedResponseHandler;->mNextParser:Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;->parseBodyChunk([BJ)Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AuthenticatedResponseHandler;->mInnerParseError:Lcom/amazon/whispersync/AmazonDevice/Common/ParseError;

    :cond_1
    return-void
.end method

.method public shouldParseBody()Z
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AuthenticatedResponseHandler;->mNextParser:Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;->shouldParseBody()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AuthenticatedResponseHandler;->mShouldTryParsing:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
