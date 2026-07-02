.class public Lcom/amazon/messaging/odot/webservices/transportdto/StandardAmazonWebServiceCallback;
.super Ljava/lang/Object;
.source "StandardAmazonWebServiceCallback.java"

# interfaces
.implements Lcom/amazon/messaging/odot/webservices/transportdto/IAmazonWebServiceCallback;


# static fields
.field private static final MAX_RESPONSE_LOG_SIZE:I = 0x400

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mAuthRespHandler:Lcom/amazon/messaging/odot/webservices/transportdto/AuthenticatedResponseHandlerAdapter;

.field private mListener:Lcom/amazon/messaging/odot/webservices/transportdto/IAmazonWebserviceCallListener;

.field private mResponseParser:Lcom/amazon/messaging/odot/webservices/transportdto/IWebResponseParser;

.field private mResponseString:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    const-class v0, Lcom/amazon/messaging/odot/webservices/transportdto/StandardAmazonWebServiceCallback;

    invoke-static {v0}, Lcom/amazon/messaging/odot/util/OdotMessageUtil;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/messaging/odot/webservices/transportdto/StandardAmazonWebServiceCallback;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/messaging/odot/webservices/transportdto/IWebResponseParser;Lcom/amazon/messaging/odot/webservices/transportdto/IAmazonWebserviceCallListener;Z)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 25
    iput-object p2, p0, Lcom/amazon/messaging/odot/webservices/transportdto/StandardAmazonWebServiceCallback;->mListener:Lcom/amazon/messaging/odot/webservices/transportdto/IAmazonWebserviceCallListener;

    goto :goto_0

    .line 27
    :cond_0
    new-instance p2, Lcom/amazon/messaging/odot/webservices/transportdto/DefaultAmazonWebserviceCallListener;

    invoke-direct {p2}, Lcom/amazon/messaging/odot/webservices/transportdto/DefaultAmazonWebserviceCallListener;-><init>()V

    iput-object p2, p0, Lcom/amazon/messaging/odot/webservices/transportdto/StandardAmazonWebServiceCallback;->mListener:Lcom/amazon/messaging/odot/webservices/transportdto/IAmazonWebserviceCallListener;

    .line 30
    :goto_0
    iput-object p1, p0, Lcom/amazon/messaging/odot/webservices/transportdto/StandardAmazonWebServiceCallback;->mResponseParser:Lcom/amazon/messaging/odot/webservices/transportdto/IWebResponseParser;

    .line 31
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/amazon/messaging/odot/webservices/transportdto/StandardAmazonWebServiceCallback;->mResponseString:Ljava/lang/StringBuilder;

    if-eqz p3, :cond_1

    .line 34
    new-instance p1, Lcom/amazon/messaging/odot/webservices/transportdto/AuthenticatedResponseHandlerAdapter;

    iget-object p2, p0, Lcom/amazon/messaging/odot/webservices/transportdto/StandardAmazonWebServiceCallback;->mResponseParser:Lcom/amazon/messaging/odot/webservices/transportdto/IWebResponseParser;

    invoke-direct {p1, p2}, Lcom/amazon/messaging/odot/webservices/transportdto/AuthenticatedResponseHandlerAdapter;-><init>(Lcom/amazon/messaging/odot/webservices/transportdto/IWebResponseParser;)V

    iput-object p1, p0, Lcom/amazon/messaging/odot/webservices/transportdto/StandardAmazonWebServiceCallback;->mAuthRespHandler:Lcom/amazon/messaging/odot/webservices/transportdto/AuthenticatedResponseHandlerAdapter;

    .line 35
    iput-object p1, p0, Lcom/amazon/messaging/odot/webservices/transportdto/StandardAmazonWebServiceCallback;->mResponseParser:Lcom/amazon/messaging/odot/webservices/transportdto/IWebResponseParser;

    :cond_1
    return-void
.end method

.method private appendToResponseString([BI)V
    .locals 3

    .line 55
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/StandardAmazonWebServiceCallback;->mResponseString:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/16 v1, 0x400

    if-lt v0, v1, :cond_0

    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/StandardAmazonWebServiceCallback;->mResponseString:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/2addr v0, p2

    if-le v0, v1, :cond_1

    .line 61
    iget-object p2, p0, Lcom/amazon/messaging/odot/webservices/transportdto/StandardAmazonWebServiceCallback;->mResponseString:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    rsub-int p2, p2, 0x400

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/StandardAmazonWebServiceCallback;->mResponseString:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, p2}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private responseHasError(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    .line 101
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getError"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    .line 102
    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :catch_0
    return v1
.end method


# virtual methods
.method public onBodyChunkReceived([BI)V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/StandardAmazonWebServiceCallback;->mResponseParser:Lcom/amazon/messaging/odot/webservices/transportdto/IWebResponseParser;

    invoke-interface {v0}, Lcom/amazon/messaging/odot/webservices/transportdto/IWebResponseParser;->shouldParseBody()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/amazon/messaging/odot/webservices/transportdto/StandardAmazonWebServiceCallback;->appendToResponseString([BI)V

    .line 48
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/StandardAmazonWebServiceCallback;->mResponseParser:Lcom/amazon/messaging/odot/webservices/transportdto/IWebResponseParser;

    invoke-interface {v0, p1, p2}, Lcom/amazon/messaging/odot/webservices/transportdto/IWebResponseParser;->parseBodyChunk([BI)Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;

    goto :goto_0

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/StandardAmazonWebServiceCallback;->mListener:Lcom/amazon/messaging/odot/webservices/transportdto/IAmazonWebserviceCallListener;

    invoke-interface {v0, p1, p2}, Lcom/amazon/messaging/odot/webservices/transportdto/IAmazonWebserviceCallListener;->onDataReceived([BI)V

    :goto_0
    return-void
.end method

.method public onHeadersReceived(Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseHeaders;)V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/StandardAmazonWebServiceCallback;->mResponseParser:Lcom/amazon/messaging/odot/webservices/transportdto/IWebResponseParser;

    invoke-interface {v0, p1}, Lcom/amazon/messaging/odot/webservices/transportdto/IWebResponseParser;->beginParse(Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseHeaders;)V

    return-void
.end method

.method public onNetworkError()V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/StandardAmazonWebServiceCallback;->mListener:Lcom/amazon/messaging/odot/webservices/transportdto/IAmazonWebserviceCallListener;

    invoke-interface {v0}, Lcom/amazon/messaging/odot/webservices/transportdto/IAmazonWebserviceCallListener;->onNetworkFailure()V

    return-void
.end method

.method public onProgress(II)V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/StandardAmazonWebServiceCallback;->mListener:Lcom/amazon/messaging/odot/webservices/transportdto/IAmazonWebserviceCallListener;

    invoke-interface {v0, p1, p2}, Lcom/amazon/messaging/odot/webservices/transportdto/IAmazonWebserviceCallListener;->onProgress(II)V

    return-void
.end method

.method public onRequestComplete()V
    .locals 3

    .line 74
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/StandardAmazonWebServiceCallback;->mResponseParser:Lcom/amazon/messaging/odot/webservices/transportdto/IWebResponseParser;

    invoke-interface {v0}, Lcom/amazon/messaging/odot/webservices/transportdto/IWebResponseParser;->endParse()Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;

    .line 76
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/StandardAmazonWebServiceCallback;->mResponseParser:Lcom/amazon/messaging/odot/webservices/transportdto/IWebResponseParser;

    invoke-interface {v0}, Lcom/amazon/messaging/odot/webservices/transportdto/IWebResponseParser;->getParseError()Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;

    move-result-object v0

    sget-object v1, Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;->ParseErrorNoError:Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;

    if-eq v0, v1, :cond_0

    .line 77
    sget-object v0, Lcom/amazon/messaging/odot/webservices/transportdto/StandardAmazonWebServiceCallback;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/amazon/messaging/odot/webservices/transportdto/StandardAmazonWebServiceCallback;->mResponseString:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/messaging/odot/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/StandardAmazonWebServiceCallback;->mResponseParser:Lcom/amazon/messaging/odot/webservices/transportdto/IWebResponseParser;

    invoke-interface {v0}, Lcom/amazon/messaging/odot/webservices/transportdto/IWebResponseParser;->getParseError()Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;

    move-result-object v0

    .line 80
    iget-object v1, p0, Lcom/amazon/messaging/odot/webservices/transportdto/StandardAmazonWebServiceCallback;->mListener:Lcom/amazon/messaging/odot/webservices/transportdto/IAmazonWebserviceCallListener;

    invoke-interface {v1, v0}, Lcom/amazon/messaging/odot/webservices/transportdto/IAmazonWebserviceCallListener;->onParseError(Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;)V

    goto :goto_0

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/StandardAmazonWebServiceCallback;->mAuthRespHandler:Lcom/amazon/messaging/odot/webservices/transportdto/AuthenticatedResponseHandlerAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/amazon/messaging/odot/webservices/transportdto/AuthenticatedResponseHandlerAdapter;->authenticationSucceeded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/StandardAmazonWebServiceCallback;->mListener:Lcom/amazon/messaging/odot/webservices/transportdto/IAmazonWebserviceCallListener;

    invoke-interface {v0}, Lcom/amazon/messaging/odot/webservices/transportdto/IAmazonWebserviceCallListener;->onAuthenticationFailed()V

    goto :goto_0

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/StandardAmazonWebServiceCallback;->mResponseParser:Lcom/amazon/messaging/odot/webservices/transportdto/IWebResponseParser;

    invoke-interface {v0}, Lcom/amazon/messaging/odot/webservices/transportdto/IWebResponseParser;->getParsedResponse()Ljava/lang/Object;

    move-result-object v0

    .line 85
    invoke-direct {p0, v0}, Lcom/amazon/messaging/odot/webservices/transportdto/StandardAmazonWebServiceCallback;->responseHasError(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 86
    sget-object v1, Lcom/amazon/messaging/odot/webservices/transportdto/StandardAmazonWebServiceCallback;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/messaging/odot/webservices/transportdto/StandardAmazonWebServiceCallback;->mResponseString:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/messaging/odot/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :cond_2
    iget-object v1, p0, Lcom/amazon/messaging/odot/webservices/transportdto/StandardAmazonWebServiceCallback;->mListener:Lcom/amazon/messaging/odot/webservices/transportdto/IAmazonWebserviceCallListener;

    invoke-interface {v1, v0}, Lcom/amazon/messaging/odot/webservices/transportdto/IAmazonWebserviceCallListener;->onResponseComplete(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
