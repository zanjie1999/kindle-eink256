.class public Lcom/amazon/messaging/odot/webservices/transportdto/AuthenticatedResponseHandler;
.super Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser;
.source "AuthenticatedResponseHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAuthSucceeded:Z

.field private mInnerParseError:Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;

.field private final mNextParser:Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mOuterParseError:Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;

.field private final mParser:Lcom/amazon/messaging/odot/webservices/transportdto/XMLParser;

.field private mShouldTryParsing:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const-class v0, Lcom/amazon/messaging/odot/webservices/transportdto/AuthenticatedResponseHandler;

    invoke-static {v0}, Lcom/amazon/messaging/odot/util/OdotMessageUtil;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/messaging/odot/webservices/transportdto/AuthenticatedResponseHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser<",
            "TT;>;)V"
        }
    .end annotation

    .line 29
    const-class v0, Lcom/amazon/messaging/odot/webservices/transportdto/AuthenticatedResponseHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser;-><init>(Ljava/lang/String;)V

    .line 31
    new-instance v0, Lcom/amazon/messaging/odot/webservices/transportdto/XMLParser;

    invoke-direct {v0}, Lcom/amazon/messaging/odot/webservices/transportdto/XMLParser;-><init>()V

    iput-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/AuthenticatedResponseHandler;->mParser:Lcom/amazon/messaging/odot/webservices/transportdto/XMLParser;

    .line 32
    iput-object p1, p0, Lcom/amazon/messaging/odot/webservices/transportdto/AuthenticatedResponseHandler;->mNextParser:Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser;

    .line 34
    sget-object p1, Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;->ParseErrorNoError:Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;

    iput-object p1, p0, Lcom/amazon/messaging/odot/webservices/transportdto/AuthenticatedResponseHandler;->mInnerParseError:Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;

    .line 35
    iput-object p1, p0, Lcom/amazon/messaging/odot/webservices/transportdto/AuthenticatedResponseHandler;->mOuterParseError:Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;

    const/4 p1, 0x1

    .line 36
    iput-boolean p1, p0, Lcom/amazon/messaging/odot/webservices/transportdto/AuthenticatedResponseHandler;->mAuthSucceeded:Z

    return-void
.end method

.method private didAuthSucceed()Z
    .locals 4

    .line 150
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/AuthenticatedResponseHandler;->mOuterParseError:Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;

    sget-object v1, Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;->ParseErrorNoError:Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    return v2

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/AuthenticatedResponseHandler;->mParser:Lcom/amazon/messaging/odot/webservices/transportdto/XMLParser;

    invoke-virtual {v0}, Lcom/amazon/messaging/odot/webservices/transportdto/XMLParser;->parseEndOfDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    if-nez v0, :cond_1

    return v2

    .line 163
    :cond_1
    invoke-static {v0}, Lcom/amazon/messaging/odot/webservices/transportdto/FIRSErrorParser;->parseError(Lorg/w3c/dom/Document;)Lcom/amazon/messaging/odot/webservices/transportdto/FIRSError;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 164
    invoke-virtual {v1}, Lcom/amazon/messaging/odot/webservices/transportdto/FIRSError;->getErrorType()Lcom/amazon/messaging/odot/webservices/transportdto/FIRSErrorType;

    move-result-object v1

    sget-object v3, Lcom/amazon/messaging/odot/webservices/transportdto/FIRSErrorType;->FIRSErrorTypeInternalError:Lcom/amazon/messaging/odot/webservices/transportdto/FIRSErrorType;

    if-eq v1, v3, :cond_3

    :cond_2
    invoke-static {v0}, Lcom/amazon/messaging/odot/webservices/transportdto/AuthenticatedResponseHandler;->isDMSError(Lorg/w3c/dom/Document;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 166
    :cond_3
    sget-object v0, Lcom/amazon/messaging/odot/webservices/transportdto/AuthenticatedResponseHandler;->TAG:Ljava/lang/String;

    const-string v1, "AuthenticatedResponseHandler: endParse: Server returned an authentication error. You can ignore any malformed response errors from the inner parser."

    invoke-static {v0, v1}, Lcom/amazon/messaging/odot/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_4
    return v2
.end method

.method private static isDMSError(Lorg/w3c/dom/Document;)Z
    .locals 3

    .line 131
    invoke-interface {p0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 132
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Errors"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "Error"

    .line 136
    invoke-static {p0, v1}, Lcom/amazon/messaging/odot/webservices/transportdto/XMLParserHelpers;->getFirstElementWithTag(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    const-string v1, "Code"

    .line 141
    invoke-static {p0, v1}, Lcom/amazon/messaging/odot/webservices/transportdto/XMLParserHelpers;->getFirstElementWithTag(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p0

    if-nez p0, :cond_2

    return v0

    .line 146
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

    .line 45
    iget-boolean v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/AuthenticatedResponseHandler;->mAuthSucceeded:Z

    return v0
.end method

.method public getParsedResponse()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/AuthenticatedResponseHandler;->mNextParser:Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 66
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser;->getParsedResponse()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected internalBeginParse(Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseHeaders;)Z
    .locals 7

    .line 71
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/AuthenticatedResponseHandler;->mNextParser:Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser;

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {v0, p1}, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser;->beginParse(Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseHeaders;)V

    .line 82
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseHeaders;->getStatusCode()J

    move-result-wide v0

    const-string v2, "content-type"

    .line 83
    invoke-virtual {p1, v2}, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseHeaders;->getHeaderByName(Ljava/lang/String;)Ljava/lang/String;

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

    .line 88
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
    iput-boolean v2, p0, Lcom/amazon/messaging/odot/webservices/transportdto/AuthenticatedResponseHandler;->mShouldTryParsing:Z

    if-eqz v2, :cond_3

    .line 91
    sget-object v2, Lcom/amazon/messaging/odot/webservices/transportdto/AuthenticatedResponseHandler;->TAG:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 93
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v4

    aput-object p1, v3, v5

    const-string p1, "AuthenticatedResponseHandler: beginParse: Response could be an authentication error. Will try to parse as an authentication error. Status Code: %d Content-Type: %s"

    .line 91
    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/amazon/messaging/odot/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return v5
.end method

.method protected internalEndParse()V
    .locals 2

    .line 118
    iget-boolean v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/AuthenticatedResponseHandler;->mShouldTryParsing:Z

    if-eqz v0, :cond_0

    .line 119
    invoke-direct {p0}, Lcom/amazon/messaging/odot/webservices/transportdto/AuthenticatedResponseHandler;->didAuthSucceed()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/AuthenticatedResponseHandler;->mAuthSucceeded:Z

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/AuthenticatedResponseHandler;->mInnerParseError:Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;

    sget-object v1, Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;->ParseErrorNoError:Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/AuthenticatedResponseHandler;->mNextParser:Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser;->shouldParseBody()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/AuthenticatedResponseHandler;->mNextParser:Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser;

    invoke-virtual {v0}, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser;->endParse()Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/AuthenticatedResponseHandler;->mInnerParseError:Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;

    .line 127
    :cond_1
    iget-boolean v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/AuthenticatedResponseHandler;->mAuthSucceeded:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/AuthenticatedResponseHandler;->mInnerParseError:Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/AuthenticatedResponseHandler;->mOuterParseError:Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser;->setParseError(Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;)Z

    return-void
.end method

.method protected internalParseBodyChunk([BJ)V
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/AuthenticatedResponseHandler;->mOuterParseError:Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;

    sget-object v1, Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;->ParseErrorNoError:Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/AuthenticatedResponseHandler;->mShouldTryParsing:Z

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/AuthenticatedResponseHandler;->mParser:Lcom/amazon/messaging/odot/webservices/transportdto/XMLParser;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/messaging/odot/webservices/transportdto/XMLParser;->parseChunk([BJ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    sget-object v0, Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;->ParseErrorMalformedBody:Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;

    iput-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/AuthenticatedResponseHandler;->mOuterParseError:Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/AuthenticatedResponseHandler;->mInnerParseError:Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;

    sget-object v1, Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;->ParseErrorNoError:Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/AuthenticatedResponseHandler;->mNextParser:Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser;->shouldParseBody()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/AuthenticatedResponseHandler;->mNextParser:Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser;->parseBodyChunk([BJ)Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/messaging/odot/webservices/transportdto/AuthenticatedResponseHandler;->mInnerParseError:Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;

    :cond_1
    return-void
.end method

.method public shouldParseBody()Z
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/AuthenticatedResponseHandler;->mNextParser:Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser;->shouldParseBody()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/AuthenticatedResponseHandler;->mShouldTryParsing:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
